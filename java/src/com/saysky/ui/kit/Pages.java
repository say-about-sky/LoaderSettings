package com.saysky.ui.kit;

import java.util.HashMap;
import java.util.Map;

/**
 * Built-in page ids → native menu class names (same table the previous API used, so
 * existing page ids keep working).
 */
public final class Pages {

    public static final String MAIN = "main";
    public static final String SETTINGS = "settings";
    public static final String EDITOR = "editor";
    public static final String HALL_OF_FAME = "halloffame";
    public static final String LOAD_GAME = "loadgame";
    public static final String CAMPAIGN = "campaign";
    public static final String CAMPAIGN_WIDE = "campaign_wide";
    public static final String NEW_GAME = "newgame";
    public static final String SCENARIO_SETUP = "scenarioconfig";
    public static final String ENCYCLOPEDIA = "encyclopedia";
    public static final String SCENARIOS = "scenarios";
    public static final String PAUSE = "pause";
    public static final String GOVERNMENT = "government";
    public static final String CIV_GOVERNMENT = "civ_government";
    public static final String COURTYARD = "court";

    private static final Map<String, String> CLASSES = new HashMap<String, String>();

    static {
        put(MAIN, "aoc.kingdoms.lukasz.menus.MainMenu");
        put(SETTINGS, "aoc.kingdoms.lukasz.menus.Settings.Settings_Menu");
        put(EDITOR, "aoc.kingdoms.lukasz.menusEditor.Editor");
        put(HALL_OF_FAME, "aoc.kingdoms.lukasz.menus.MainMenu_Stats");
        put(LOAD_GAME, "aoc.kingdoms.lukasz.menus.Menu_LoadGames_List");
        put(CAMPAIGN, "aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Vertical");
        put(CAMPAIGN_WIDE, "aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Horizontal");
        put(NEW_GAME, "aoc.kingdoms.lukasz.menus.NewGame.NewGame");
        put(SCENARIO_SETUP, "aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings");
        put(ENCYCLOPEDIA, "aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia");
        put(SCENARIOS, "aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios");
        put(PAUSE, "aoc.kingdoms.lukasz.menusInGame.InGame_Escape");
        put(GOVERNMENT, "aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government");
        put(CIV_GOVERNMENT, "aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government");
        put(COURTYARD, "aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court");
    }

    private Pages() {
    }

    private static void put(String id, String className) {
        CLASSES.put(id, className);
    }

    /** Short id → class name; unknown values are returned unchanged (treated as a class name). */
    public static String resolve(String pageIdOrClass) {
        if (pageIdOrClass == null) {
            return null;
        }
        String key = pageIdOrClass.trim();
        String mapped = CLASSES.get(key.toLowerCase());
        return mapped == null ? key : mapped;
    }

    /** Registers (or overrides) a page id mapping at runtime. */
    public static void register(String id, String className) {
        if (id != null && className != null) {
            CLASSES.put(id.toLowerCase(), className);
        }
    }
}
