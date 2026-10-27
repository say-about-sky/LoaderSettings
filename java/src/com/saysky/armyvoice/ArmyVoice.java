package com.saysky.armyvoice;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import com.badlogic.gdx.files.FileHandle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Army click voice resolver.
 *
 * Lookup order (first hit wins), each tier is a folder under assets/audio/sfx/ :
 *   1) army_click/<civTag>            (also realTag, and <tag>/i fallback to lower/upper case)
 *   2) army_religions/<religionName>  (fallback: religion index)
 *   3) army_culture/<cultureGroup>    (fallback: group index)
 *   4) army_default
 *   5) army_click/default  |  army_click/common      (legacy compatibility)
 *   6) vanilla SoundsManager.playSelectedArmy()
 *
 * Every folder holds 0.ogg .. 9.ogg (contiguous from 0, stop at first missing file),
 * matching the original ArmyClickSoundManager convention.
 *
 * This class is compiled into the patch dex; ArmyClickSoundManager.playForCiv(int)
 * is rewritten by smali into a single invoke-static forwarding here.
 */
public final class ArmyVoice {

    /** Same cap as the original manager: files 0..9 inside one folder. */
    public static final int MAX_SOUNDS = 10;

    /** Same anti-exhaustion throttle as the original manager (120 ms). */
    private static final long MIN_GAP_MS = 120L;

    private static final String SFX_ROOT = "audio/sfx/";

    private static final String TIER_CIV = "army_click";
    private static final String TIER_RELIGION = "army_religions";
    private static final String TIER_CULTURE = "army_culture";
    private static final String TIER_DEFAULT = "army_default";

    private static final HashMap<String, Entry> CACHE = new HashMap<String, Entry>();

    /**
     * 资源代际：只有「全部重载」(宿主 rescanResources) 或外部显式调用 invalidate() 才会自增。
     * 平时 playForCiv 只做一次 volatile 读，零磁盘/零反射开销。
     */
    private static volatile int GENERATION = 0;

    /**
     * 重建预算：重载后再次点到的目录会重新 addSoundSFX（SoundsManager.lSounds 只增不减，无法回收），
     * 用完预算后沿用旧列表，避免反复「全部重载」把内存撑大。首次加载不计入。
     */
    private static final int MAX_RELOADS = 32;
    private static int reloadCount = 0;

    private static String fileExtension;
    private static long lastPlayTime = 0L;

    /** 目录缓存条目：音效 ID 列表 + 生成它的资源代际。 */
    private static final class Entry {
        final List<Integer> ids;
        final int gen;

        Entry(List<Integer> ids, int gen) {
            this.ids = ids;
            this.gen = gen;
        }
    }

    private static boolean religionsLoaded = false;
    private static List<String> RELIGION_NAMES = new ArrayList<String>();

    private static boolean culturesLoaded = false;
    private static List<String> CULTURE_NAMES = new ArrayList<String>();

    private ArmyVoice() {
    }

    // ------------------------------------------------------------------ entry

    public static void playForCiv(int civID) {
        long now = CFG.currentTimeMillis;
        if (now - lastPlayTime < MIN_GAP_MS) {
            return;
        }
        lastPlayTime = now;

        int id = -1;
        try {
            id = resolve(civID);
        } catch (Throwable ignored) {
            id = -1;
        }

        SoundsManager sm = Game.soundsManager;
        if (sm == null) {
            return;
        }
        try {
            if (id >= 0) {
                sm.playSound(id);
                return;
            }
            sm.playSelectedArmy();
        } catch (Throwable ignored) {
        }
    }

    // ---------------------------------------------------------------- resolve

    private static int resolve(int civID) {
        String tag = null;
        String realTag = null;
        int religionID = -1;
        int cultureID = -1;

        if (civID >= 0) {
            Civilization civ = Game.getCiv(civID);
            if (civ != null) {
                tag = safe(civ.getCivTag());
                realTag = safe(civ.realTag);
                try {
                    religionID = civ.getReligionID();
                } catch (Throwable ignored) {
                    religionID = -1;
                }
                cultureID = civ.iGroupID;
            }
        }

        // 1) exact civ tag
        int id = pickKey(TIER_CIV, tag);
        if (id < 0 && realTag != null && !realTag.equals(tag)) {
            id = pickKey(TIER_CIV, realTag);
        }
        if (id >= 0) {
            return id;
        }

        // 2) religion (name first, then numeric index)
        if (religionID >= 0) {
            id = pickIndexed(TIER_RELIGION, religionID, religionNames());
            if (id >= 0) {
                return id;
            }
        }

        // 3) culture group (name first, then numeric index)
        if (cultureID >= 0) {
            id = pickIndexed(TIER_CULTURE, cultureID, cultureNames());
            if (id >= 0) {
                return id;
            }
        }

        // 4) default tiers
        id = pickFolder(TIER_DEFAULT);
        if (id < 0) {
            id = pickFolder(TIER_CIV + "/default");
        }
        if (id < 0) {
            id = pickFolder(TIER_CIV + "/common");
        }
        return id;
    }

    private static int pickIndexed(String tier, int index, List<String> names) {
        if (names != null && index >= 0 && index < names.size()) {
            int id = pickKey(tier, names.get(index));
            if (id >= 0) {
                return id;
            }
        }
        return pickKey(tier, String.valueOf(index));
    }

    /** Try raw key, then lower-case, then upper-case folder names. */
    private static int pickKey(String tier, String key) {
        String k = safe(key);
        if (k == null) {
            return -1;
        }
        int id = pickFolder(tier + "/" + k);
        if (id >= 0) {
            return id;
        }
        String lower = k.toLowerCase(java.util.Locale.US);
        if (!lower.equals(k)) {
            id = pickFolder(tier + "/" + lower);
            if (id >= 0) {
                return id;
            }
        }
        String upper = k.toUpperCase(java.util.Locale.US);
        if (!upper.equals(k) && !upper.equals(lower)) {
            id = pickFolder(tier + "/" + upper);
        }
        return id;
    }

    private static int pickFolder(String relDir) {
        List<Integer> list = load(relDir);
        if (list == null || list.isEmpty()) {
            return -1;
        }
        int size = list.size();
        int idx = 0;
        try {
            if (Game.oR != null) {
                idx = Game.oR.nextInt(size);
            } else {
                idx = (int) (System.nanoTime() % size);
            }
        } catch (Throwable ignored) {
            idx = 0;
        }
        if (idx < 0 || idx >= size) {
            idx = 0;
        }
        Integer v = list.get(idx);
        return v == null ? -1 : v.intValue();
    }

    // ----------------------------------------------------------------- loader

    private static List<Integer> load(String relDir) {
        int gen = GENERATION;
        Entry e = CACHE.get(relDir);
        if (e != null) {
            if (e.gen == gen) {
                return e.ids;
            }
            if (reloadCount >= MAX_RELOADS) {
                return e.ids;                   // 预算用完：沿用旧内容
            }
            reloadCount++;
            log("reload " + relDir + " (gen " + e.gen + " -> " + gen + ")");
        }
        List<Integer> ids = scan(relDir);
        CACHE.put(relDir, new Entry(ids, gen));
        return ids;
    }

    /** 磁盘扫描 + 加载音频（0..MAX_SOUNDS-1，遇缺即停）。 */
    private static List<Integer> scan(String relDir) {
        List<Integer> out = new ArrayList<Integer>();
        String ext = extension();
        for (int i = 0; i < MAX_SOUNDS; i++) {
            String file = relDir + "/" + i + "." + ext;
            if (!existsSFX(file)) {
                break;
            }
            SoundsManager sm = Game.soundsManager;
            if (sm == null) {
                break;
            }
            int id = sm.addSoundSFX(file);
            if (id >= 0) {
                out.add(Integer.valueOf(id));
            }
        }
        return out;
    }

    private static String extension() {
        if (fileExtension == null) {
            try {
                fileExtension = SoundsManager.getFileExtension();
            } catch (Throwable ignored) {
                fileExtension = null;
            }
            if (fileExtension == null || fileExtension.length() == 0) {
                fileExtension = "ogg";
            }
        }
        return fileExtension;
    }

    private static boolean existsSFX(String file) {
        try {
            return FileManager.loadFile(SFX_ROOT + file).exists();
        } catch (Throwable ignored) {
            return false;
        }
    }

    // ------------------------------------------------- external hot reload

    /**
     * 外部资源更新入口（「全部重载」）：只推进代际，不扫描、不清表、不加载音频。
     *
     * <p>被点到的目录会在下一次 playForCiv 时按需重扫；没被点到的目录完全不产生成本，
     * 因此对游戏帧没有任何周期性开销。宿主 ColdBootstrap.rescanResources() 通过反射调用；
     * 未安装该补丁 dex 时静默跳过。</p>
     */
    public static void invalidate() {
        GENERATION++;
        log("invalidate gen=" + GENERATION + " cached=" + CACHE.size());
    }

    private static void log(String m) {
        try {
            CFG.LOG("[armyvoice] " + m);
        } catch (Throwable ignored) {
        }
    }

    // ------------------------------------------------------- name tables

    private static List<String> religionNames() {
        if (religionsLoaded) {
            return RELIGION_NAMES;
        }
        religionsLoaded = true;
        try {
            String text = readText("game/Religions.json");
            if (text != null) {
                RELIGION_NAMES = extractNames(text);
            }
        } catch (Throwable ignored) {
        }
        return RELIGION_NAMES;
    }

    private static List<String> cultureNames() {
        if (culturesLoaded) {
            return CULTURE_NAMES;
        }
        culturesLoaded = true;
        try {
            String text = readText("game/groups/civsGroups.txt");
            if (text != null) {
                List<String> out = new ArrayList<String>();
                String[] parts = text.split(";");
                for (int i = 0; i < parts.length; i++) {
                    String s = parts[i] == null ? null : parts[i].trim();
                    if (s != null && s.length() > 0) {
                        out.add(s);
                    }
                }
                CULTURE_NAMES = out;
            }
        } catch (Throwable ignored) {
        }
        return CULTURE_NAMES;
    }

    /** Pull the original (untranslated) "Name" values out of Religions.json. */
    private static List<String> extractNames(String text) {
        List<String> out = new ArrayList<String>();
        try {
            Pattern p = Pattern.compile("(?m)^\\s*Name\\s*:\\s*\"?([^,\"\\r\\n]+)\"?\\s*,?");
            Matcher m = p.matcher(text);
            while (m.find()) {
                String s = m.group(1) == null ? null : m.group(1).trim();
                if (s != null && s.length() > 0) {
                    out.add(s);
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    private static String readText(String path) {
        try {
            FileHandle fh = FileManager.loadFile(path);
            if (fh == null) {
                return null;
            }
            return fh.readString();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String safe(String s) {
        if (s == null) {
            return null;
        }
        String t = s.trim();
        return t.length() == 0 ? null : t;
    }
}
