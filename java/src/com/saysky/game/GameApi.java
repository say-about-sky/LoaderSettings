package com.saysky.game;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;

import aoc.kingdoms.lukasz.events.Event;
import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.menusInGame.InGame_Console;

/**
 * LoaderSettings runtime API (plain Java, no WebView needed).
 *
 * <h3>事件接口（2026-10-30 重定义）</h3>
 * <pre>
 * 事件（原版 event 目录）：
 *   event(id)               全局：原版 game/events/**、当前剧本 .../events/**，以及插件自己的 resources/event/
 *   findEvent(id, path)     指定 path（目录）下的 event 目录
 * 任务事件（missionsEvents 目录）：
 *   missionsEvent(id)       全局：game/missions/missionsEvents/、当前剧本 .../missions/missionsEvents/、插件 resources/missions/missionsEvents/
 *   findMissionsEvent(id, path)  指定 path（目录）下的 MissionsEvent 目录
 * </pre>
 *
 * <p>四个接口都是「查找定位 → 载入（注册进原版事件表）→ 触发」；未读档返回
 * {@code rejected: no active save}，目录/文件不存在只返回 {@code rejected: not found ...}，
 * 解析失败只写日志与控制台，任何情况都不抛异常。</p>
 *
 * <h3>path 前缀 {@code <game>}</h3>
 * <p>{@code path} 支持用 {@code <game>} 显式声明「这是游戏内部资源目录」，按 APK/游戏根
 * 的真实布局书写，例如 {@code <game>/assets/game/events}、
 * {@code <game>/assets/map/Earth3/scenarios/TheGreatWar}。前缀会被归一化成资源内路径
 * （上面的例子 → {@code game/events} / {@code map/Earth3/scenarios/TheGreatWar}），
 * 与 {@code Event.txt} 里引用资源的方式一致。</p>
 *
 * <h3>控制台 / 状态</h3>
 * <pre>
 * GameApi.console("gold 100");  // 支持 "gold 100" 与 "gold=100"
 * GameApi.status();
 * </pre>
 */
public final class GameApi {

    public static final String VERSION = "1.2.1";

    /**
     * path 前缀：显式声明「游戏内部资源目录」。写 {@code <game>/assets/game/events} 时
     * 等价于 {@code game/events}（{@code assets} 是 APK 内资源根，{@code <game>} 是游戏根）。
     */
    public static final String GAME_PREFIX = "<game>";

    /** Same probe order as the pack's console bridge: scenario, base, global, siege... */
    private static final int[] EVENT_TYPES = { 3, 0, 5, 2, 4, 1 };

    private static final String[] EVENT_LIST_NAMES = { "eventsScenario", "events",
            "eventsGlobalScenario", "eventsGlobal", "eventsSiegeScenario", "eventsSiege" };

    private GameApi() {
    }

    /* --------------------------------------------------------------- state */

    /** True when a save is loaded and the player civ exists. */
    public static boolean inGame() {
        try {
            return Game.player != null && Game.player.iCivID > 0
                    && Game.getCiv(Game.player.iCivID) != null;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Snapshot of the player civ. */
    public static String status() {
        try {
            if (!inGame()) {
                return "inGame=false";
            }
            Civilization c = Game.getCiv(Game.player.iCivID);
            return "inGame=true civ=" + c.getCivTag() + "(id=" + Game.player.iCivID + ")"
                    + " gold=" + ((long) c.fGold)
                    + " legacy=" + ((long) c.fLegacy)
                    + " manpower=" + ((long) c.fManpower)
                    + " diplo=" + ((long) c.fDiplomacy)
                    + " events=" + sizeOf(0) + "/" + sizeOf(1) + "/" + sizeOf(2)
                    + "/" + sizeOf(3) + "/" + sizeOf(4) + "/" + sizeOf(5);
        } catch (Throwable t) {
            return "inGame=? (" + t + ")";
        }
    }

    private static int sizeOf(int type) {
        List<Event> list = listOf(type);
        return list == null ? -1 : list.size();
    }

    /* ------------------------------------------------------------- console */

    /** Sends one vanilla console command ({@code gold=100}, {@code gold 100}, ...). */
    public static String console(final String command) {
        if (command == null || command.trim().length() == 0) {
            return "rejected: empty command";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        final String cmd = normalizeConsole(command);
        if (!post(new Runnable() {
            @Override
            public void run() {
                try {
                    InGame_Console.execute(cmd);
                } catch (Throwable t) {
                    log("console failed (" + cmd + "): " + t);
                }
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(console): " + cmd;
    }

    /** The vanilla parser splits on {@code '='}; accept {@code "gold 100"} as well. */
    private static String normalizeConsole(String command) {
        String s = command.trim();
        if (s.indexOf('=') >= 0) {
            return s;
        }
        int sp = -1;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == ' ' || c == '\t') {
                sp = i;
                break;
            }
        }
        if (sp <= 0) {
            return s;
        }
        String tail = s.substring(sp + 1).trim();
        if (tail.length() == 0) {
            return s.substring(0, sp);
        }
        return s.substring(0, sp) + "=" + tail;
    }

    /* -------------------------------------------------- events: global APIs */

    /** 全局查找所有 event 目录并触发（不含插件目录；Web 侧会自动带上插件 resources/event）。 */
    public static String event(String eventId) {
        return event(eventId, (File) null);
    }

    /**
     * 全局查找所有 event 目录（原版 + 当前剧本 + 可选插件目录）→ 载入 → 触发。
     *
     * @param pluginResourcesDir 可空；不为空时额外搜索 {@code <dir>/event/}
     */
    public static String event(String eventId, File pluginResourcesDir) {
        final String id = trim(eventId);
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        if (findIndexAny(id) >= 0) {
            return fireWithSource(id, null);
        }
        List<String> dirs = new ArrayList<String>();
        addDir(dirs, "game/events");
        addDir(dirs, "game/events/common");
        addDir(dirs, "game/events/siege");
        addDir(dirs, "game/events/global");
        addScenarioEventDirs(dirs);
        if (pluginResourcesDir != null) {
            addDir(dirs, new File(pluginResourcesDir, "event").getAbsolutePath());
        }
        String found = searchEventFile(id, dirs);
        return fireWithSource(id, found);
    }

    /**
     * 指定 path（目录）下的 event 目录：查找 → 载入 → 触发。
     *
     * <p>{@code path} 可以是资源内路径（{@code game/events}）、游戏根形式
     * （{@code <game>/assets/game/events}）、剧本目录，或单个 {@code .txt} 文件。</p>
     */
    public static String findEvent(String eventId, String path) {
        final String id = trim(eventId);
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        if (findIndexAny(id) >= 0) {
            return fireWithSource(id, null);
        }
        List<String> dirs = eventDirsFromPath(path);
        String found = searchEventFile(id, dirs);
        if (found == null) {
            return "rejected: not found '" + id + "' under " + describePath(path);
        }
        return fireWithSource(id, found);
    }

    /** 全局查找所有 MissionsEvent 目录并触发。 */
    public static String missionsEvent(String eventId) {
        return missionsEvent(eventId, (File) null);
    }

    /**
     * 全局查找所有 MissionsEvent 目录（{@code game/missions/missionsEvents}、当前剧本
     * {@code .../missions/missionsEvents}，可选插件目录）→ 载入 → 触发。
     */
    public static String missionsEvent(String eventId, File pluginResourcesDir) {
        final String id = trim(eventId);
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        if (findIndexAny(id) >= 0) {
            return fireWithSource(id, null);
        }
        List<String> dirs = new ArrayList<String>();
        addDir(dirs, "game/missions/missionsEvents");
        addScenarioMissionDirs(dirs);
        if (pluginResourcesDir != null) {
            addDir(dirs, new File(pluginResourcesDir, "missions/missionsEvents").getAbsolutePath());
        }
        String found = searchEventFile(id, dirs);
        return fireWithSource(id, found);
    }

    /**
     * 指定 path（目录）下的 MissionsEvent 目录：查找 → 载入 → 触发。
     *
     * <p>{@code path} 支持与 {@link #findEvent(String, String)} 相同的写法，例如
     * {@code game/missions}、{@code <game>/assets/game/missions/missionsEvents}、
     * {@code <game>/assets/map/Earth3/scenarios/TheGreatWar} 或单个 {@code .txt}。</p>
     */
    public static String findMissionsEvent(String eventId, String path) {
        final String id = trim(eventId);
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        if (findIndexAny(id) >= 0) {
            return fireWithSource(id, null);
        }
        List<String> dirs = missionsDirsFromPath(path);
        String found = searchEventFile(id, dirs);
        if (found == null) {
            return "rejected: not found '" + id + "' under " + describePath(path);
        }
        return fireWithSource(id, found);
    }

    /* ------------------------------------------------- events: helpers */

    /** Registers {@code lines} (if given) then fires {@code id}. GL thread. */
    private static String fireWithSource(final String id, final String sourcePath) {
        final String[] lines;
        if (sourcePath == null) {
            lines = null;
        } else {
            lines = readAssetLines(sourcePath);
            if (lines == null) {
                return "rejected: unreadable " + sourcePath;
            }
        }
        if (!post(new Runnable() {
            @Override
            public void run() {
                try {
                    if (findIndexAny(id) < 0 && lines != null) {
                        registerLines(lines, sourcePath);
                    }
                    if (findIndexAny(id) < 0) {
                        String msg = "event not found: " + id
                                + (sourcePath == null ? "" : " @ " + sourcePath);
                        InGame_Console.addMessage(msg);
                        log(msg);
                        return;
                    }
                    String r = fireEvent(id);
                    log(r);
                    InGame_Console.addMessage(r);
                } catch (Throwable t) {
                    log("event failed (" + id + "): " + t);
                    InGame_Console.addMessage("event failed: " + id);
                }
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(event): " + id + (sourcePath == null ? "" : " @ " + sourcePath);
    }

    private static List<String> eventDirsFromPath(String path) {
        List<String> out = new ArrayList<String>();
        String p = normalizePath(path);
        if (p.length() == 0) {
            addDir(out, "game/events");
            addDir(out, "game/events/common");
            addDir(out, "game/events/siege");
            addDir(out, "game/events/global");
            addScenarioEventDirs(out);
            return out;
        }
        if (p.toLowerCase().endsWith(".txt")) {
            addDir(out, parentOf(p));
            return out;
        }
        String lower = p.toLowerCase();
        if (lower.endsWith("/events") || lower.equals("events")) {
            addDir(out, p);
        } else {
            addDir(out, p + "/events");
        }
        addDir(out, p + "/events");
        addDir(out, p + "/events/common");
        addDir(out, p + "/events/siege");
        addDir(out, p + "/events/global");
        // 允许直接指向 common/siege/global
        addDir(out, p);
        return out;
    }

    private static List<String> missionsDirsFromPath(String path) {
        List<String> out = new ArrayList<String>();
        String p = normalizePath(path);
        if (p.length() == 0) {
            addDir(out, "game/missions/missionsEvents");
            addScenarioMissionDirs(out);
            return out;
        }
        if (p.toLowerCase().endsWith(".txt")) {
            addDir(out, parentOf(p));
            return out;
        }
        String lower = p.toLowerCase();
        if (lower.endsWith("/missions/missionsevents") || lower.endsWith("/missionsevents")) {
            addDir(out, p);
        }
        addDir(out, p + "/missions/missionsEvents");
        addDir(out, p + "/missionsEvents");
        addDir(out, p);
        return out;
    }

    private static void addScenarioEventDirs(List<String> dirs) {
        try {
            String base = scenarioBase();
            addDir(dirs, base + "events");
            addDir(dirs, base + "events/common");
            addDir(dirs, base + "events/siege");
            addDir(dirs, base + "events/global");
        } catch (Throwable ignored) {
        }
    }

    private static void addScenarioMissionDirs(List<String> dirs) {
        try {
            String base = scenarioBase();
            addDir(dirs, base + "missions/missionsEvents");
            addDir(dirs, base + "missionsEvents");
        } catch (Throwable ignored) {
        }
    }

    private static String scenarioBase() {
        return "map/" + Game.map.getFile_ActiveMap_Path()
                + "scenarios/" + EventsManager.loadScenarioEventsTag + "/";
    }

    /** First asset path (dir + file) whose {@code id=} matches. */
    private static String searchEventFile(String id, List<String> dirs) {
        for (int d = 0; d < dirs.size(); d++) {
            String dir = dirs.get(d);
            FileHandle[] files;
            try {
                FileHandle fh = FileManager.loadFile(dir + "/");
                if (fh == null || !fh.exists() || !fh.isDirectory()) {
                    continue;
                }
                files = fh.list();
            } catch (Throwable t) {
                continue;
            }
            if (files == null) {
                continue;
            }
            for (int i = 0; i < files.length; i++) {
                FileHandle f = files[i];
                try {
                    if (f == null || f.isDirectory()) {
                        continue;
                    }
                    String name = f.name();
                    if (name == null) {
                        continue;
                    }
                    String lower = name.toLowerCase();
                    if (!lower.endsWith(".txt") || lower.startsWith("list_")) {
                        continue;
                    }
                    String fid = firstId(f.readString().split("\\r?\\n"));
                    if (fid != null && (fid.equals(id) || fid.equalsIgnoreCase(id))) {
                        return dir + "/" + name;
                    }
                } catch (Throwable ignored) {
                }
            }
        }
        return null;
    }

    private static void addDir(List<String> dirs, String dir) {
        if (dir == null) {
            return;
        }
        String d = trimSlashes(dir);
        if (d.length() == 0) {
            return;
        }
        if (!dirs.contains(d)) {
            dirs.add(d);
        }
    }

    private static String trimSlashes(String s) {
        if (s == null) {
            return "";
        }
        String p = s.trim().replace('\\', '/');
        while (p.endsWith("/")) {
            p = p.substring(0, p.length() - 1);
        }
        while (p.startsWith("/")) {
            p = p.substring(1);
        }
        return p;
    }

    /**
     * 归一化 path。支持 {@code <game>} 前缀：显式声明「游戏内部资源目录」，按游戏根/APK
     * 真实布局书写，例如 {@code <game>/assets/game/events} → {@code game/events}、
     * {@code <game>/assets/map/Earth3/scenarios/X} → {@code map/Earth3/scenarios/X}。
     *
     * <p>不写前缀时按资源内路径理解（与 {@code Event.txt} 一致）；绝对路径（插件目录）原样保留。</p>
     */
    public static String normalizePath(String path) {
        String p = trimSlashes(path);
        if (p.length() == 0) {
            return "";
        }
        String lower = p.toLowerCase();
        if (!lower.equals(GAME_PREFIX) && !lower.startsWith(GAME_PREFIX + "/")) {
            return p;
        }
        p = trimSlashes(p.substring(GAME_PREFIX.length()));
        // <game> 指向游戏根；资源实际都在 assets 下（APK 内 assets/，桌面上即游戏根）
        while (p.length() > 0) {
            String l = p.toLowerCase();
            if (l.equals("assets")) {
                return "";
            }
            if (!l.startsWith("assets/")) {
                break;
            }
            p = trimSlashes(p.substring("assets".length()));
        }
        return p;
    }

    /** 报错用：保留用户原写法，并在归一化后不同时附上资源内路径。 */
    private static String describePath(String path) {
        String raw = path == null ? "" : trimSlashes(path);
        if (raw.length() == 0) {
            return "(empty path)";
        }
        String norm = normalizePath(raw);
        if (norm.length() == 0) {
            return raw + " (游戏资源根)";
        }
        if (!norm.equals(raw)) {
            return raw + " -> " + norm;
        }
        return raw;
    }

    private static String parentOf(String p) {
        int i = p.lastIndexOf('/');
        return i <= 0 ? p : p.substring(0, i);
    }

    private static String trim(String s) {
        return s == null ? "" : s.trim();
    }

    /* -------------------------------------------------- events: internals */

    private static String[] readAssetLines(String path) {
        try {
            FileHandle fh = FileManager.loadFile(trimSlashes(path));
            if (fh == null || !fh.exists() || fh.isDirectory()) {
                return null;
            }
            return fh.readString().split("\\r?\\n");
        } catch (Throwable t) {
            return null;
        }
    }

    /** Parses + registers one event txt (GL thread only). Never throws. */
    private static void registerLines(String[] lines, String tag) {
        try {
            String id = firstId(lines);
            if (id != null && findIndexAny(id) >= 0) {
                return;
            }
            if (!hasOption(lines)) {
                log("event rejected (no option_btn): " + tag);
                InGame_Console.addMessage("event rejected (no option_btn): " + tag);
                return;
            }
            Event e = EventsManager.loadEvent(0, ensureTriggers(lines));
            if (e == null || e.id == null) {
                log("event rejected by parser: " + tag);
                InGame_Console.addMessage("event rejected (needs trigger): " + tag);
                return;
            }
            log("event registered " + e.id + " @ " + tag);
            InGame_Console.addMessage("event loaded: " + tag + " (" + e.id + ")");
        } catch (Throwable t) {
            log("event register failed (" + tag + "): " + t);
        }
    }

    /**
     * {@code Event.addEvent()} drops events without any trigger; inject an always-true one.
     */
    private static String[] ensureTriggers(String[] lines) {
        for (int i = 0; i < lines.length; i++) {
            String s = lines[i] == null ? "" : lines[i].trim();
            if (s.startsWith("trigger_")) {
                return lines;
            }
        }
        String[] out = new String[lines.length + 4];
        out[0] = "trigger_and";
        out[1] = "next_and";
        out[2] = "random_chance=100";
        out[3] = "trigger_and_end";
        System.arraycopy(lines, 0, out, 4, lines.length);
        log("event: no trigger block, injected random_chance=100");
        return out;
    }

    private static boolean hasOption(String[] lines) {
        for (int i = 0; i < lines.length; i++) {
            String s = lines[i] == null ? "" : lines[i].trim();
            if (s.equals("option_btn")) {
                return true;
            }
        }
        return false;
    }

    private static String firstId(String[] lines) {
        for (int i = 0; i < lines.length; i++) {
            String s = lines[i] == null ? "" : lines[i].trim();
            if (s.startsWith("id=")) {
                return s.substring(3).trim();
            }
        }
        return null;
    }

    private static String fireEvent(String id) {
        final int civID = Game.player.iCivID;
        for (int i = 0; i < EVENT_TYPES.length; i++) {
            final int type = EVENT_TYPES[i];
            final List<Event> list = listOf(type);
            final int index = findIndex(list, id);
            if (index < 0) {
                continue;
            }
            final Event e = list.get(index);
            EventsManager.updateRandomProvinceID(civID);
            e.runPreprocessor(civID);
            Game.player.addActiveEvent(type, index, 0);
            // The pause menu (Esc) freezes the game loop and sits above the event menu, so leave it.
            try {
                Game.menuManager.setVisibleInGame_Escape(false);
            } catch (Throwable ignored) {
            }
            // Show on the next frame: rebuilding menus in the middle of a command leaves half-built lists.
            post(new Runnable() {
                @Override
                public void run() {
                    try {
                        Game.menuManager.rebuildInGame_Right();
                        Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
                        if (!Game.menuManager.getVisibleInGame_Event()) {
                            Game.menuManager.rebuildInGame_Event(e, type, index);
                            Game.soundsManager.playSound(SoundsManager.EVENT);
                        }
                    } catch (Throwable t) {
                        log("event display failed (" + id + "): " + t);
                    }
                }
            });
            return "event " + id + " type=" + type + " index=" + index;
        }
        return "event not found: " + id;
    }

    private static List<Event> listOf(int type) {
        switch (type) {
            case 0:
                return EventsManager.events;
            case 1:
                return EventsManager.eventsSiege;
            case 2:
                return EventsManager.eventsGlobal;
            case 3:
                return EventsManager.eventsScenario;
            case 4:
                return EventsManager.eventsSiegeScenario;
            case 5:
                return EventsManager.eventsGlobalScenario;
            default:
                return null;
        }
    }

    private static int findIndex(List<Event> list, String id) {
        if (list == null) {
            return -1;
        }
        for (int i = 0; i < list.size(); i++) {
            Event e = list.get(i);
            if (e != null && e.id != null && e.id.equals(id)) {
                return i;
            }
        }
        for (int i = 0; i < list.size(); i++) {
            Event e = list.get(i);
            if (e != null && e.id != null && e.id.equalsIgnoreCase(id)) {
                return i;
            }
        }
        return -1;
    }

    private static int findIndexAny(String id) {
        for (int i = 0; i < EVENT_TYPES.length; i++) {
            int idx = findIndex(listOf(EVENT_TYPES[i]), id);
            if (idx >= 0) {
                return idx;
            }
        }
        return -1;
    }

    /** True when an event with this id is already registered (in any of the six lists). */
    public static boolean hasEvent(String eventId) {
        return eventId != null && findIndexAny(eventId.trim()) >= 0;
    }

    /* ------------------------------------------------- compatibility APIs */

    /** 兼容：只查六张表，不加载。 */
    public static String findEventInTables(String eventId) {
        String id = trim(eventId);
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        int total = 0;
        for (int t = 0; t < EVENT_TYPES.length; t++) {
            List<Event> list = listOf(EVENT_TYPES[t]);
            if (list == null) {
                continue;
            }
            total += list.size();
            int idx = findIndex(list, id);
            if (idx >= 0) {
                return EVENT_LIST_NAMES[t] + "(index=" + idx + "): " + id;
            }
        }
        return "not found: " + id + " (searched " + total + " events)";
    }

    /** 兼容：六表摘要 / 子串搜索。 */
    public static String findEvents(String query) {
        String q = query == null ? "" : query.trim().toLowerCase();
        StringBuilder sb = new StringBuilder();
        int hits = 0;
        for (int t = 0; t < EVENT_TYPES.length; t++) {
            List<Event> list = listOf(EVENT_TYPES[t]);
            int size = list == null ? -1 : list.size();
            StringBuilder sample = new StringBuilder();
            int shown = 0;
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    Event e = list.get(i);
                    if (e == null || e.id == null) {
                        continue;
                    }
                    boolean match = q.length() == 0 || e.id.toLowerCase().contains(q);
                    if (!match) {
                        continue;
                    }
                    if (q.length() == 0 ? shown >= 6 : hits >= 20) {
                        continue;
                    }
                    if (sample.length() > 0) {
                        sample.append(',');
                    }
                    sample.append(e.id);
                    shown++;
                    if (q.length() > 0) {
                        hits++;
                    }
                }
            }
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(EVENT_LIST_NAMES[t]).append('(').append(size).append(')');
            if (sample.length() > 0) {
                sb.append(": ").append(sample);
            }
        }
        if (q.length() > 0 && hits == 0) {
            sb.append("\nno match for '").append(query).append('\'');
        }
        return sb.toString();
    }

    /** 兼容：只注册一个事件 txt（不触发）。 */
    public static String loadEventFile(File file) {
        if (file == null) {
            return "rejected: null file";
        }
        if (!file.isFile()) {
            return "rejected: not found " + file.getPath();
        }
        String text = readText(file);
        if (text == null) {
            return "rejected: read failed " + file.getName();
        }
        return loadEventText(text.split("\\r?\\n"), file.getPath());
    }

    /** 兼容：只注册 {@code baseDir/relPath}（拒绝越界），不触发。 */
    public static String loadEventFile(File baseDir, String relPath) {
        if (baseDir == null) {
            return "rejected: null base dir";
        }
        if (relPath == null || relPath.trim().length() == 0) {
            return "rejected: empty path";
        }
        File f = resolveInside(baseDir, relPath.trim());
        if (f == null) {
            return "rejected: path escapes base dir";
        }
        if (!f.isFile()) {
            return "rejected: not found " + relPath;
        }
        return loadEventFile(f);
    }

    /** 兼容：只注册行数组（不触发）。 */
    public static String loadEventText(final String[] lines, final String label) {
        if (lines == null || lines.length < 2) {
            return "rejected: empty event text";
        }
        final String tag = (label == null || label.length() == 0) ? "inline" : label;
        final String[] prepared = ensureTriggers(lines);
        if (!hasOption(prepared)) {
            return "rejected: no option_btn block (an event needs >=1 option)";
        }
        if (!post(new Runnable() {
            @Override
            public void run() {
                registerLines(prepared, tag);
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(eventFile): " + tag;
    }

    /** 兼容：批量扫描 game/missions/missionsEvents + 当前剧本目录。 */
    public static String loadExtraEvents() {
        final List<String[]> payload = new ArrayList<String[]>();
        int scanned = 0;
        List<String> dirs = new ArrayList<String>();
        addDir(dirs, "game/missions/missionsEvents");
        addScenarioMissionDirs(dirs);
        addDir(dirs, "game/events");
        addDir(dirs, "game/events/common");
        addDir(dirs, "game/events/siege");
        addDir(dirs, "game/events/global");
        addScenarioEventDirs(dirs);
        for (int d = 0; d < dirs.size(); d++) {
            FileHandle[] files;
            try {
                FileHandle fh = FileManager.loadFile(dirs.get(d) + "/");
                if (fh == null || !fh.exists() || !fh.isDirectory()) {
                    continue;
                }
                files = fh.list();
            } catch (Throwable t) {
                continue;
            }
            if (files == null) {
                continue;
            }
            for (int i = 0; i < files.length; i++) {
                FileHandle f = files[i];
                try {
                    if (f == null || f.isDirectory()) {
                        continue;
                    }
                    String name = f.name();
                    if (name == null) {
                        continue;
                    }
                    String lower = name.toLowerCase();
                    if (!lower.endsWith(".txt") || lower.startsWith("list_")) {
                        continue;
                    }
                    scanned++;
                    String[] lines = f.readString().split("\\r?\\n");
                    if (firstId(lines) == null) {
                        continue;
                    }
                    payload.add(ensureTriggers(lines));
                } catch (Throwable ignored) {
                }
            }
        }
        final int total = payload.size();
        final int fScanned = scanned;
        if (!post(new Runnable() {
            @Override
            public void run() {
                int ok = 0;
                for (int i = 0; i < total; i++) {
                    try {
                        String id = firstId(payload.get(i));
                        if (id != null && findIndexAny(id) >= 0) {
                            continue;
                        }
                        if (!hasOption(payload.get(i))) {
                            continue;
                        }
                        Event e = EventsManager.loadEvent(0, payload.get(i));
                        if (e != null && e.id != null) {
                            ok++;
                        }
                    } catch (Throwable ignored) {
                    }
                }
                String msg = "extra events: loaded=" + ok + " scanned=" + fScanned;
                log(msg);
                InGame_Console.addMessage(msg);
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(extraEvents): candidates=" + total + " scanned=" + scanned;
    }

    /* ------------------------------------------------------------ internals */

    private static boolean post(Runnable r) {
        try {
            if (Gdx.app == null) {
                return false;
            }
            Gdx.app.postRunnable(r);
            return true;
        } catch (Throwable t) {
            log("postRunnable failed: " + t);
            return false;
        }
    }

    private static void log(String s) {
        try {
            android.util.Log.i("AOH3Game", s);
        } catch (Throwable ignored) {
        }
    }

    private static File resolveInside(File base, String relPath) {
        try {
            String r = relPath.replace('\\', '/');
            while (r.startsWith("/")) {
                r = r.substring(1);
            }
            if (r.length() == 0 || r.contains("..")) {
                return null;
            }
            String canonBase = base.getCanonicalPath();
            File f = new File(base, r);
            String canon = f.getCanonicalPath();
            if (!canon.startsWith(canonBase + File.separator)) {
                return null;
            }
            return f;
        } catch (Throwable t) {
            return null;
        }
    }

    private static String readText(File f) {
        try {
            long len = f.length();
            if (len <= 0 || len > 1024L * 1024L) {
                return null;
            }
            byte[] b = new byte[(int) len];
            java.io.InputStream in = new java.io.FileInputStream(f);
            try {
                int off = 0;
                while (off < b.length) {
                    int n = in.read(b, off, b.length - off);
                    if (n <= 0) {
                        break;
                    }
                    off += n;
                }
            } finally {
                in.close();
            }
            return new String(b, "UTF-8");
        } catch (Throwable t) {
            return null;
        }
    }
}
