package com.saysky.missionopt;

import java.util.ArrayList;
import java.util.List;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.Json;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Missions.Mission;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;

/**
 * MissionLazyLoad —— 剧本国家任务图「按需解码」。
 *
 * <p>原版 {@code MissionTree.loadMissions_Civs()} 会在加载剧本时把**所有国家**的任务图
 * 一次性 {@code loadTexture()} 解码（暮色黄昏 4.1k 张 / 300MB+ RGBA），单步阻塞数分钟。</p>
 *
 * <p>本类把工作拆成三段：</p>
 * <ol>
 *   <li>{@link #indexCiv(int)}：只维护 {@code MissionTree.missionImagesNamesCivs} 与
 *       {@code Mission.ImageID} 的对应关系（纯内存操作，无 IO）；</li>
 *   <li>{@link #get(int)}：首次真正需要绘制时解码纹理，并按原版四级路径回落，结果缓存回
 *       {@code MissionTree.missionImagesCivs}（列表按 id 补 null 占位）；</li>
 *   <li>{@link #disposeCivs()}：切剧本时释放已解码纹理（容忍 null 占位）。</li>
 * </ol>
 *
 * <p>{@code MissionTree} 中对应方法被替换成一行转发（见 MissionLazyLoad\patches），
 * 消费端 {@code ButtonMissionTreeCiv.drawButtonBG} / {@code rfEvent.utils.MissionUtil}
 * 直接调用 {@link #get(int)}。</p>
 */
public final class MissionLazy {

    private static final String CIV_MISSIONS_IMAGES = "missions/missionsImages/";
    private static final String GAME_MISSIONS_IMAGES = "game/missions/missionsImages/";

    private MissionLazy() {
    }

    /** 按原版顺序为单个国家建立 name → ImageID 索引；不解码任何纹理。 */
    public static void indexCiv(int civID) {
        Civilization civ = Game.getCiv(civID);
        if (civ == null) {
            return;
        }
        List names = MissionTree.missionImagesNamesCivs;
        List missions = civ.lMissions;
        if (names == null || missions == null) {
            return;
        }
        for (int i = 0; i < civ.iMissionsSize && i < missions.size(); i++) {
            Mission mission = (Mission) missions.get(i);
            if (mission == null) {
                continue;
            }
            String name = mission.ImageName;
            int found = -1;
            for (int j = names.size() - 1; j >= 0; j--) {
                if (equalsNullable((String) names.get(j), name)) {
                    found = j;
                    break;
                }
            }
            if (found >= 0) {
                mission.ImageID = found;
            } else {
                names.add(name);
                mission.ImageID = names.size() - 1;
            }
        }
    }

    /**
     * 取第 {@code imageID} 张国家任务图；未解码时现解码并缓存。
     * 返回 null 表示 id 越界（调用方已有 try/catch）。
     */
    public static Image get(int imageID) {
        if (imageID < 0) {
            return null;
        }
        List images = MissionTree.missionImagesCivs;
        List names = MissionTree.missionImagesNamesCivs;
        if (images == null || names == null || imageID >= names.size()) {
            return null;
        }
        while (images.size() <= imageID) {
            images.add(null);
        }
        Image cached = (Image) images.get(imageID);
        if (cached != null) {
            return cached;
        }
        Image loaded = new Image(
                ImageManager.loadTexture(resolvePath((String) names.get(imageID))),
                Texture.TextureFilter.Linear,
                Texture.TextureWrap.ClampToEdge);
        images.set(imageID, loaded);
        return loaded;
    }

    /** 释放所有已解码的国家任务图纹理；列表里的 null 占位直接跳过。 */
    public static void disposeCivs() {
        List images = MissionTree.missionImagesCivs;
        List names = MissionTree.missionImagesNamesCivs;
        if (images != null) {
            for (int i = images.size() - 1; i >= 0; i--) {
                Image image = (Image) images.get(i);
                if (image != null) {
                    image.getTexture().dispose();
                }
            }
            images.clear();
        }
        if (names != null) {
            names.clear();
        }
    }

    /** 与 MissionTree.loadMissionsImagesCiv 完全一致的查找顺序。 */
    private static String resolvePath(String name) {
        String scenarioBase = "map/" + Game.map.getFile_ActiveMap_Path()
                + "scenarios/" + EventsManager.loadScenarioEventsTag + "/" + CIV_MISSIONS_IMAGES;
        String shortPath = CFG.getRescouresPath_Short();
        String shortHPath = CFG.getRescouresPath_Short_H();

        String path = scenarioBase + shortPath + name;
        if (FileManager.loadFile(path).exists()) {
            return path;
        }
        path = scenarioBase + shortHPath + name;
        if (FileManager.loadFile(path).exists()) {
            return path;
        }
        path = GAME_MISSIONS_IMAGES + shortPath + name;
        if (FileManager.loadFile(path).exists()) {
            return path;
        }
        return GAME_MISSIONS_IMAGES + shortHPath + name;
    }

    private static boolean equalsNullable(String a, String b) {
        return a == null ? b == null : a.equals(b);
    }

    // ------------------------------------------------------------------
    // #64：逐个国家加载（MissionTree.loadMissions_Civs 的替代实现）
    // ------------------------------------------------------------------

    private static final String GAME_EVENTS = "game/missions/missionsEvents/";

    /**
     * 等价于 MissionTree.loadMissions_Civs()：
     * 逐个国家读取任务 JSON 与事件文件（每个 civ 保持原顺序），
     * 再按 civID 升序合并回 Civilization.lMissions，最后按原逻辑倒序建图片索引。
     *
     * <p>只走单线程：实测（Windows/JDK11，4,882 条任务）单线程约 1.3s，4 线程反而 2.5s
     * （任务粒度小、分配密集，线程/GC 开销更大），所以不再保留并行分支。</p>
     */
    public static void loadCivs() {
        long t0 = System.currentTimeMillis();
        disposeCivs();

        final int civsSize = Game.getCivsSize();
        final String base = "map/" + Game.map.getFile_ActiveMap_Path()
                + "scenarios/" + EventsManager.loadScenarioEventsTag + "/missions/";

        List<Integer> withMissions = new ArrayList<Integer>();
        int missionCount = 0;
        int civsWithJson = 0;

        for (int civID = 1; civID < civsSize; civID++) {
            CivMissions r = parseCiv(civID, base);
            if (r == null) {
                continue;
            }
            for (int k = 0; k < r.errors.size(); k++) {
                logError((String) r.errors.get(k));
            }
            if (!r.hasJson) {
                continue;
            }
            civsWithJson++;
            missionCount += mergeCiv(r);
            withMissions.add(Integer.valueOf(r.civID));
        }

        for (int i = withMissions.size() - 1; i >= 0; i--) {
            MissionTree.loadMissionsImagesCiv(withMissions.get(i).intValue());
        }

        CFG.LOG("[missionlazy] loadCivs civs=" + civsWithJson
                + " missions=" + missionCount
                + " ms=" + (System.currentTimeMillis() - t0));
    }

    /** 把 worker 解析结果写回 Civilization（主线程，保持原顺序）。返回合并的任务数。 */
    private static int mergeCiv(CivMissions r) {
        Civilization civ = Game.getCiv(r.civID);
        if (civ == null) {
            return 0;
        }
        civ.lMissions.clear();
        for (int k = 0; k < r.missions.size(); k++) {
            Mission m = (Mission) r.missions.get(k);
            m.Name = Game.lang.get(m.Name);
            civ.lMissions.add(m);
        }
        civ.iMissionsSize = civ.lMissions.size();
        return civ.lMissions.size();
    }

    /** 单个国家的完整解析（纯读取，不碰其它 civ 的可变状态）。 */
    private static CivMissions parseCiv(int civID, String base) {
        CivMissions result = new CivMissions(civID);
        try {
            Civilization civ = Game.getCiv(civID);
            if (civ == null) {
                return result;
            }
            FileHandle file = FileManager.loadFile(base + civ.getCivTag() + ".json");
            if (!file.exists()) {
                file = FileManager.loadFile(base + civ.realTag + ".json");
                if (!file.exists()) {
                    return result;
                }
            }
            result.hasJson = true;

            String content = file.readString();
            Json json = new Json();
            json.setElementType(MissionTree.ConfigMissionsData.class, "Mission", Mission.class);
            MissionTree.ConfigMissionsData data =
                    json.fromJson(MissionTree.ConfigMissionsData.class, content);
            if (data == null || data.Mission == null) {
                return result;
            }

            for (int i = 0; i < data.Mission.size(); i++) {
                Mission mission = (Mission) data.Mission.get(i);
                try {
                    FileHandle ev = FileManager.loadFile(base + "missionsEvents/" + mission.MissionEvent);
                    if (!ev.exists()) {
                        ev = FileManager.loadFile(GAME_EVENTS + mission.MissionEvent);
                    }
                    mission.event = EventsManager.loadEvent(999, ev.readString().split("\\r?\\n"));
                    result.missions.add(mission);
                } catch (Exception ex) {
                    result.errors.add("civ " + civID + " / " + mission.MissionEvent + " -> " + ex);
                }
            }
        } catch (Exception ex) {
            result.errors.add("civ " + civID + " -> " + ex);
        }
        return result;
    }

    private static void logError(String msg) {
        try {
            CFG.LOG("[missionlazy] " + msg);
        } catch (Throwable ignored) {
            // 日志失败不影响加载
        }
    }

    private static final class CivMissions {
        final int civID;
        final List missions = new ArrayList();
        final List errors = new ArrayList();
        boolean hasJson;

        CivMissions(int civID) {
            this.civID = civID;
        }
    }
}