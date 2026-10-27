package com.saysky.ui.api;

import java.util.ArrayList;
import java.util.List;

/**
 * Built-in descriptors for the game's main pages.
 *
 * <p>Every descriptor binds to the exact game menu class and tells the host how the
 * page's layout is updated when a plugin row is inserted:</p>
 * <ul>
 *   <li>{@link PageSpec#KIND_FIT} - the visible panel is grown (main menu).</li>
 *   <li>{@link PageSpec#KIND_SCROLL} - the scroll range is extended and the panel is
 *       grown only when it still fits on screen.</li>
 *   <li>{@link PageSpec#KIND_FIXED} - full-screen page: the row is inserted next to an
 *       existing button (above it by default) and nothing else moves.</li>
 * </ul>
 */
public final class Pages {

    /** 主菜单（继续 / 新的游戏 / 战役 / 载入游戏 / 编辑器 / 设置 / 退出）。 */
    public static final PageSpec MAIN_MENU = PageSpec.fit(
            "main",
            "aoc.kingdoms.lukasz.menus.MainMenu",
            PageSpec.ANCHOR_LOADER, "LoadGame", false).withView("MAINMENU");

    /** 设置页面（含影像/音频/游戏等分页）。 */
    public static final PageSpec SETTINGS = PageSpec.scroll(
            "settings",
            "aoc.kingdoms.lukasz.menus.Settings.Settings_Menu",
            PageSpec.ANCHOR_TEXT, "Back", false).withView("SETTINGS");

    /** 编辑器主页面（左侧按钮列表）。 */
    public static final PageSpec EDITOR = PageSpec.scroll(
            "editor",
            "aoc.kingdoms.lukasz.menusEditor.Editor",
            PageSpec.ANCHOR_TEXT, "Back", false).withView("EDITOR");

    /** 名人堂 / 统计数据页面。 */
    public static final PageSpec HALL_OF_FAME = PageSpec.scroll(
            "halloffame",
            "aoc.kingdoms.lukasz.menus.MainMenu_Stats",
            PageSpec.ANCHOR_TEXT, "Close", true).withView("MAINMENU_STATS");

    /** 载入游戏页面（存档列表）。 */
    public static final PageSpec LOAD_GAME = PageSpec.scroll(
            "loadgame",
            "aoc.kingdoms.lukasz.menus.Menu_LoadGames_List",
            PageSpec.ANCHOR_TEXT, "Back", false).withView("LOAD_GAMES_LIST");

    /** 战役页面（竖版）。 */
    public static final PageSpec CAMPAIGN = PageSpec.fixed(
            "campaign",
            "aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Vertical",
            PageSpec.ANCHOR_TEXT, "Back", true).withView("SCENARIOS_CAMPAIGN");

    /** 战役页面（横版，宽屏设备）。 */
    public static final PageSpec CAMPAIGN_HORIZONTAL = PageSpec.fixed(
            "campaign_wide",
            "aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Horizontal",
            PageSpec.ANCHOR_TEXT, "Back", true).withView("SCENARIOS_CAMPAIGN");

    /** 新的游戏页面（文明选择 / PLAY 页面）。 */
    public static final PageSpec NEW_GAME = PageSpec.fixed(
            "newgame",
            "aoc.kingdoms.lukasz.menus.NewGame.NewGame",
            PageSpec.ANCHOR_TEXT, "Back", true).withView("NEW_GAME");

    /** 剧本设置页面（新游戏右侧设置面板）。 */
    public static final PageSpec SCENARIO_SETUP = PageSpec.scroll(
            "scenarioconfig",
            "aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings",
            PageSpec.ANCHOR_FIRST, null, true);

    /** 百科全书页面（游戏内）。 */
    public static final PageSpec ENCYCLOPEDIA = PageSpec.scroll(
            "encyclopedia",
            "aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia",
            PageSpec.ANCHOR_FIRST, null, false);

    /** 剧本列表页面（New Game 入口）。 */
    public static final PageSpec SCENARIOS = PageSpec.scroll(
            "scenarios",
            "aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios",
            PageSpec.ANCHOR_AUTO, null, false).withView("SCENARIOS");

    /**
     * 游戏内暂停菜单（Esc）。行插在标题下方、`ReturnToGame` 上方；
     * 只有进入存档后才存在，主菜单下不会挂载。
     */
    public static final PageSpec PAUSE = PageSpec.scroll(
            "pause",
            "aoc.kingdoms.lukasz.menusInGame.InGame_Escape",
            PageSpec.ANCHOR_FIRST, null, false).withView("IN_GAME");

    private static final List<PageSpec> ALL = new ArrayList<PageSpec>();

    static {
        ALL.add(MAIN_MENU);
        ALL.add(SETTINGS);
        ALL.add(EDITOR);
        ALL.add(HALL_OF_FAME);
        ALL.add(LOAD_GAME);
        ALL.add(CAMPAIGN);
        ALL.add(CAMPAIGN_HORIZONTAL);
        ALL.add(NEW_GAME);
        ALL.add(SCENARIO_SETUP);
        ALL.add(ENCYCLOPEDIA);
        ALL.add(SCENARIOS);
        ALL.add(PAUSE);
    }

    private Pages() {
    }

    public static List<PageSpec> all() {
        return new ArrayList<PageSpec>(ALL);
    }
}
