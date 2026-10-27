package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.List;

/**
 * 设置 -> 地图 子页构建器(Java 版)。
 * 布局照抄原版 Settings_UIScale;由 smali 侧 initMapPage() 调用 build() 后自行 initMenu。
 */
public final class Settings_MapUI {
    public static int iMenuWidth = 0;
    public static int iMenuHeight = 0;

    /** 进页前 SETTINGS_MENU_DRAW_TIMES 的原值(退出子页时还原)。 */
    private static boolean savedDrawTimes = false;
    private static boolean drawTimesSuppressed = false;

    /** 地图子页不显示渲染计时调试面板(与 UI比例 等独立子页一致)。 */
    private static void suppressDebugPanel() {
        if (GameValues.value == null) {
            return;
        }
        if (!drawTimesSuppressed) {
            savedDrawTimes = GameValues.value.SETTINGS_MENU_DRAW_TIMES;
            drawTimesSuppressed = true;
        }
        GameValues.value.SETTINGS_MENU_DRAW_TIMES = false;
    }

    /** 离开子页时把调试面板开关恢复原样。 */
    public static void restoreDebugPanel() {
        if (GameValues.value == null || !drawTimesSuppressed) {
            return;
        }
        GameValues.value.SETTINGS_MENU_DRAW_TIMES = savedDrawTimes;
        drawTimesSuppressed = false;
    }

    public static List<MenuElement> build() {
        suppressDebugPanel();
        ArrayList<MenuElement> menuElements = new ArrayList<MenuElement>();
        int paddingLeft = CFG.PADDING * 2 + Images.boxTitleBORDERWIDTH;
        int menuWidth = ImageManager.getImage(Images.title600).getWidth();
        int menuY = ImageManager.getImage(Images.topStats).getHeight() + CFG.PADDING * 2 + ImageManager.getImage(Images.title600).getHeight();
        int buttonY = CFG.PADDING * 2;
        int rowWidth = CFG.LEFT_MENU_WIDTH2 - paddingLeft * 2;
        menuElements.add(new Settings_MapBack(Game.lang.get("Back"), 1, -1, paddingLeft, buttonY, rowWidth, true, CFG.BUTTON_HEIGHT2));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING * 2;
        menuElements.add(new Settings_MapOption("\u539f\u7248\u5730\u56fe", CFG.FONT_REGULAR, -1, paddingLeft, buttonY, rowWidth, true, CFG.BUTTON_HEIGHT, 0));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;
        menuElements.add(new Settings_MapOption("\u4f2a3D\u5730\u56fe", CFG.FONT_REGULAR, -1, paddingLeft, buttonY, rowWidth, true, CFG.BUTTON_HEIGHT, 1));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;
        menuElements.add(new Settings_MapOption("\u5173\u95ed\u5730\u56fe", CFG.FONT_REGULAR, -1, paddingLeft, buttonY, rowWidth, true, CFG.BUTTON_HEIGHT, 2));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;
        // 原生标题栏分隔:占领显示
        int titleHeight = CFG.TEXT_HEIGHT + CFG.PADDING * 6;
        menuElements.add(new Text_Title("\u5360\u9886\u663e\u793a", -1, paddingLeft, buttonY, rowWidth, titleHeight));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;
        // 占领进度滤镜开关:用省份颜色+斜线蒙版替代原版圆形图标与进度条
        menuElements.add(new Settings_MapToggle("\u5360\u9886\u8fdb\u5ea6\u663e\u793a", CFG.FONT_REGULAR, -1, paddingLeft, buttonY, rowWidth, true, CFG.BUTTON_HEIGHT, Game.settingsManager.SIEGE_TINT, Settings_MapToggle.SETTING_SIEGE_TINT));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;
        // 百分比标签开关(仅在新占领显示启用时生效)
        menuElements.add(new Settings_MapToggle("\u542f\u7528\u767e\u5206\u6bd4\u663e\u793a", CFG.FONT_REGULAR, -1, paddingLeft, buttonY, rowWidth, true, CFG.BUTTON_HEIGHT, Game.settingsManager.SIEGE_PERCENT, Settings_MapToggle.SETTING_SIEGE_PERCENT));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;
        // 原生拖动条:百分比数字的明暗微调(-100=压暗中,0=自动对比,+100=提亮)
        int grayValue = Math.round(Game.settingsManager.SIEGE_PERCENT_GRAY * 100.0f);
        if (grayValue < -100) {
            grayValue = -100;
        }
        if (grayValue > 100) {
            grayValue = 100;
        }
        menuElements.add(new Settings_MapGraySlider("\u6570\u5b57\u660e\u6697", paddingLeft, buttonY, rowWidth, CFG.BUTTON_HEIGHT4, -100, 100, grayValue));
        buttonY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;
        int tMenuHeight = Math.min(buttonY, CFG.GAME_HEIGHT - menuY * 2 - CFG.PADDING * 2);
        menuElements.add(new Empty(0, 0, menuWidth, Math.max(buttonY, tMenuHeight)));
        iMenuWidth = menuWidth;
        iMenuHeight = tMenuHeight;
        return menuElements;
    }
}
