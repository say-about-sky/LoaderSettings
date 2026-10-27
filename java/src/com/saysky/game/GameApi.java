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
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.menusInGame.InGame_Console;

/**
 * LoaderSettings runtime API (java, no WebView needed) - public facade for hot plugins.
 *
 * <p>Package {@code com.saysky.game} ships inside the patch dex and is also exported in
 * {@code LoaderSettings/out/ui-api.jar}, so a hot plugin can call it with plain Java code:</p>
 *
 * <pre>
 * // 1) 控制台：与原版 InGame_Console 完全同一条命令通道
 * GameApi.console("gold 100");
 *
 * // 2) 触发游戏自带 txt 事件
 * GameApi.event("germany.1");
 *
 * // 3) 载入插件自己的事件文件（任意路径，或限定在某个目录内）
 * GameApi.loadEventFile(new File(ctx.dataDir(), "event/event_demo.txt"));
 * GameApi.loadEventFile(ctx.dataDir(), "event/event_demo.txt");
 *
 * // 4) 状态
 * boolean playing = GameApi.inGame();
 * String info = GameApi.status();   // inGame=true civ=GER(id=12) gold=1234 ...
 * </pre>
 *
 * <p>Threading: everything that touches the game is posted to the GL thread with
 * {@code Gdx.app.postRunnable}; the methods return immediately with {@code queued(...)} or
 * {@code rejected: ...}. Nothing is executed while no save is loaded.</p>
 */
public final class GameApi {

    public static final String VERSION = "1.0.0";

    /** Same probe order as the pack's console bridge: scenario, base, global, siege... */
    private static final int[] EVENT_TYPES = { 3, 0, 5, 2, 4, 1 };

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

    /** Snapshot of the player civ, e.g. {@code inGame=true civ=GER(id=12) gold=1234 legacy=..}. */
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

    /**
     * Sends one vanilla console command (e.g. {@code gold 100}).
     * Command names and amounts come from {@code GameValues.console.CONSOLE_COMMAND_*}.
     *
     * @return {@code queued(console): ...} or {@code rejected: ...}
     */
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

    /**
     * The vanilla parser splits the input on {@code '='} ({@code gold=100}), not on spaces.
     * Accept {@code "gold 100"} as well by turning the first space into {@code '='}.
     */
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

    /* -------------------------------------------------------------- events */

    /** Fires the txt event with this id (any of the six event lists) for the player civ. */
    public static String event(final String eventId) {
        if (eventId == null || eventId.trim().length() == 0) {
            return "rejected: empty event id";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        final String id = eventId.trim();
        if (!post(new Runnable() {
            @Override
            public void run() {
                try {
                    String r = fireEvent(id);
                    log("event " + r);
                    InGame_Console.addMessage(r);
                } catch (Throwable t) {
                    log("event failed (" + id + "): " + t);
                }
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(event): " + id;
    }

    /** Loads an event txt from an absolute/relative file path (no directory restriction). */
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

    /**
     * Loads {@code baseDir/relPath} while enforcing that the resolved file stays inside
     * {@code baseDir} (rejects {@code ..}, absolute paths and symlink escapes).
     */
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
        String text = readText(f);
        if (text == null) {
            return "rejected: read failed " + relPath;
        }
        return loadEventText(text.split("\\r?\\n"), relPath.trim());
    }

    /** Loads already-split event lines (same format as {@code game/events/common/*.txt}). */
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
                try {
                    String id = firstId(prepared);
                    if (id != null && findIndexAny(id) >= 0) {
                        log("eventFile " + tag + " already loaded (" + id + ")");
                        return;
                    }
                    Event e = EventsManager.loadEvent(0, prepared);
                    if (e == null || e.id == null) {
                        // Event.addEvent() requires >=1 trigger and >=1 option.
                        log("eventFile " + tag + " rejected by parser");
                        InGame_Console.addMessage("event rejected: " + tag + " (needs trigger + option)");
                        return;
                    }
                    log("eventFile " + tag + " -> id=" + e.id);
                    InGame_Console.addMessage("event loaded: " + tag + " (" + e.id + ")");
                } catch (Throwable t) {
                    log("eventFile failed (" + tag + "): " + t);
                }
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(eventFile): " + tag;
    }

    /**
     * {@code Event.addEvent()} drops events without any trigger, which is very easy to hit when a
     * plugin authors its own txt. Add an always-true trigger block when the file has none.
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
        log("eventFile: no trigger block, injected random_chance=100");
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

    /**
     * Search event ids across the six lists.
     *
     * <p>Empty query = summary: {@code list(size): id1,id2,...} (first ids per list), which is the
     * fastest way to find out which ids actually exist on this install.</p>
     */
    public static String findEvents(String query) {
        String q = query == null ? "" : query.trim().toLowerCase();
        String[] names = EVENT_LIST_NAMES;
        StringBuilder sb = new StringBuilder();
        int hits = 0;
        for (int t = 0; t < EVENT_TYPES.length; t++) {
            int type = EVENT_TYPES[t];
            List<Event> list = listOf(type);
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
            sb.append(names[t]).append('(').append(size).append(')');
            if (sample.length() > 0) {
                sb.append(": ").append(sample);
            }
        }
        if (q.length() > 0 && hits == 0) {
            sb.append("\nno match for '").append(query).append('\'');
        }
        return sb.toString();
    }

    /** True when an event with this id is already registered (in any of the six lists). */
    public static boolean hasEvent(String eventId) {
        return eventId != null && findIndexAny(eventId.trim()) >= 0;
    }

    /* ------------------------------------------- split API: normal vs mission events */

    private static final String[] EVENT_LIST_NAMES = { "eventsScenario", "events",
            "eventsGlobalScenario", "eventsGlobal", "eventsSiegeScenario", "eventsSiege" };

    /**
     * Fires a normal event by id. {@code file} is optional: when the id is not registered yet and a
     * file is given, that txt is parsed and registered first.
     *
     * @return {@code queued(event): id} / {@code rejected: ...}
     */
    public static String event(final String eventId, final File file) {
        final String id = eventId == null ? "" : eventId.trim();
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        final String[] lines;
        if (file != null) {
            String text = readText(file);
            if (text == null) {
                return "rejected: read failed " + file.getPath();
            }
            lines = text.split("\\r?\\n");
        } else {
            lines = null;
        }
        if (!post(new Runnable() {
            @Override
            public void run() {
                try {
                    if (findIndexAny(id) < 0 && lines != null) {
                        registerLines(lines, file.getPath());
                    }
                    if (findIndexAny(id) < 0) {
                        InGame_Console.addMessage("event not found: " + id);
                        return;
                    }
                    String r = fireEvent(id);
                    log("event " + r);
                    InGame_Console.addMessage(r);
                } catch (Throwable t) {
                    log("event failed (" + id + "): " + t);
                    InGame_Console.addMessage("event failed: " + id);
                }
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(event): " + id;
    }

    /** Searches the six vanilla event tables. */
    public static String findEvent(String eventId) {
        String id = eventId == null ? "" : eventId.trim();
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

    /**
     * Fires a <b>mission event</b> (files under the extra folders).
     *
     * @param assetPath game asset path such as
     *   {@code game/missions/missionsEvents/administrative_buildings.txt} or
     *   {@code map/<map>scenarios/<scenario>/missions/missionsEvents/x.txt};
     *   empty = locate by id inside the extra folders
     */
    public static String missionsEvent(String eventId, String assetPath) {
        final String id = eventId == null ? "" : eventId.trim();
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        if (!inGame()) {
            return "rejected: no active save";
        }
        String path = assetPath == null ? "" : assetPath.trim();
        if (path.length() == 0) {
            path = findMissionsEventPath(id);
            if (path == null) {
                return "rejected: missions event not found: " + id;
            }
        }
        final String[] lines = readAssetLines(path);
        if (lines == null) {
            return "rejected: asset not readable " + path;
        }
        final String used = path;
        if (!post(new Runnable() {
            @Override
            public void run() {
                try {
                    registerLines(lines, used);
                    if (findIndexAny(id) < 0) {
                        InGame_Console.addMessage("missions event not parsed: " + id + " @ " + used);
                        return;
                    }
                    String r = fireEvent(id);
                    log("missions event " + r);
                    InGame_Console.addMessage(r);
                } catch (Throwable t) {
                    log("missions event failed (" + id + "): " + t);
                    InGame_Console.addMessage("missions event failed: " + id);
                }
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(missionsEvent): " + id + " @ " + used;
    }

    /** Finds a mission event id in the extra folders; returns matching asset paths. */
    public static String findMissionsEvent(String eventId) {
        String id = eventId == null ? "" : eventId.trim();
        if (id.length() == 0) {
            return "rejected: empty event id";
        }
        StringBuilder sb = new StringBuilder();
        int scanned = 0;
        List<String> dirs = extraEventDirs();
        for (int d = 0; d < dirs.size(); d++) {
            String dir = dirs.get(d);
            FileHandle[] files;
            try {
                FileHandle fh = FileManager.loadFile(dir);
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
                    String fid = firstId(f.readString().split("\\r?\\n"));
                    if (fid != null && (fid.equals(id) || fid.equalsIgnoreCase(id))) {
                        if (sb.length() > 0) {
                            sb.append('\n');
                        }
                        sb.append(dir).append(name);
                    }
                } catch (Throwable ignored) {
                }
            }
        }
        return sb.length() > 0 ? sb.toString()
                : "not found: " + id + " (scanned " + scanned + " mission event files)";
    }

    private static String findMissionsEventPath(String id) {
        String r = findMissionsEvent(id);
        if (r.startsWith("not found:") || r.startsWith("rejected:")) {
            return null;
        }
        int nl = r.indexOf('\n');
        String p = nl < 0 ? r : r.substring(0, nl);
        return p.trim().length() == 0 ? null : p.trim();
    }

    private static String[] readAssetLines(String path) {
        try {
            FileHandle fh = FileManager.loadFile(path);
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
     * Loads events from the game's additional event folders (missions / scenario event folders),
     * so ids that only live there can be fired too. Missing folders are simply skipped.
     *
     * <pre>
     * game/missions/missionsEvents
     * map/&lt;map&gt;scenarios/&lt;scenario&gt;/events[/common|/siege|/global]
     * map/&lt;map&gt;scenarios/&lt;scenario&gt;/missions/missionsEvents
     * </pre>
     *
     * @return {@code queued(extraEvents): scanned=.. candidates=..} (details go to the log/console)
     */
    public static String loadExtraEvents() {
        final List<String[]> payload = new ArrayList<String[]>();
        int scanned = 0;
        int unsupported = 0;
        List<String> dirs = extraEventDirs();
        for (int d = 0; d < dirs.size(); d++) {
            String dir = dirs.get(d);
            FileHandle[] files;
            try {
                FileHandle fh = FileManager.loadFile(dir);
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
                        unsupported++;
                        continue;
                    }
                    payload.add(ensureTriggers(lines));
                } catch (Throwable t) {
                    unsupported++;
                }
            }
        }
        final int fScanned = scanned;
        final int fUnsupported = unsupported;
        final int total = payload.size();
        if (!post(new Runnable() {
            @Override
            public void run() {
                int ok = 0;
                int dup = 0;
                int rejected = 0;
                for (int i = 0; i < total; i++) {
                    String[] lines = payload.get(i);
                    try {
                        String id = firstId(lines);
                        if (id != null && findIndexAny(id) >= 0) {
                            dup++;
                            continue;
                        }
                        if (!hasOption(lines)) {
                            rejected++;
                            continue;
                        }
                        Event e = EventsManager.loadEvent(0, lines);
                        if (e != null && e.id != null) {
                            ok++;
                        } else {
                            rejected++;
                        }
                    } catch (Throwable t) {
                        rejected++;
                    }
                }
                String msg = "extra events: loaded=" + ok + " dup=" + dup + " rejected=" + rejected
                        + " scanned=" + fScanned + " unsupported=" + fUnsupported;
                log(msg);
                InGame_Console.addMessage(msg);
            }
        })) {
            return "rejected: game thread unavailable";
        }
        return "queued(extraEvents): scanned=" + scanned + " candidates=" + total;
    }

    /** The extra folders, computed for the map/scenario that is currently loaded. */
    public static List<String> extraEventDirs() {
        List<String> dirs = new ArrayList<String>();
        dirs.add("game/missions/missionsEvents/");
        try {
            String base = "map/" + Game.map.getFile_ActiveMap_Path()
                    + "scenarios/" + EventsManager.loadScenarioEventsTag + "/";
            dirs.add(base + "events/");
            dirs.add(base + "events/common/");
            dirs.add(base + "events/siege/");
            dirs.add(base + "events/global/");
            dirs.add(base + "missions/missionsEvents/");
        } catch (Throwable ignored) {
        }
        return dirs;
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

    private static String firstId(String[] lines) {
        for (int i = 0; i < lines.length; i++) {
            String s = lines[i] == null ? "" : lines[i].trim();
            if (s.startsWith("id=")) {
                return s.substring(3).trim();
            }
        }
        return null;
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
