package com.saysky.longpressmovearmy.ui;

import java.util.ArrayList;
import java.util.List;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.textures.Images;
import com.saysky.longpressmovearmy.QuickActionsState;
import com.saysky.longpressmovearmy.SafeLog;

/**
 * 「修改快捷方式」设置面板(长按顶部按钮 1 秒后弹出,显示在按钮下方)。
 *
 * <p>完全用游戏自带的 UI 组件搭:</p>
 * <ul>
 *   <li>面板本身 = 游戏原生 {@link Menu} + {@link MenuTitle}(和设置界面同款标题栏与边框);</li>
 *   <li>开关行 = 原生 {@link ButtonGame2} 的 checkbox 行(与「设置 → 边缘滚动」同款:
 *       左侧一条绿/红渐变表示开/关),共三行:「启用快捷操作」「启用快速国策」「反转框选与移动」,
 *       状态由 {@link QuickActionsState} 提供,点击切换。</li>
 * </ul>
 *
 * <p>面板被放进「当前视图的菜单列表」末尾(用 {@code MenuManager.addNextMenuToView} 占一个自己的槽位),
 * 因此不会和游戏自己的弹出菜单抢位置;点面板外任意处即关闭。</p>
 */
public class QuickActionsPanel extends Menu {

    private static final String TAG = "QuickActions";

    /** 面板标题。 */
    public static final String TITLE = "修改快捷方式";
    /** 总开关行文案。 */
    public static final String ROW_ENABLE = "启用快捷操作";
    /** 快速国策行文案。 */
    public static final String ROW_QUICK_MISSION = "启用快速国策";
    /** 开关行文案。 */
    public static final String ROW_INVERT = "反转框选与移动";

    private static QuickActionsPanel instance = null;
    private static int slotIndex = -1;

    /** 面板宽度(与按钮保持同一量级)。 */
    public static int panelWidth() {
        return CFG.BUTTON_WIDTH * 2;
    }

    private QuickActionsPanel(int posX, int posY) {
        ArrayList<MenuElement> menuElements = new ArrayList<MenuElement>();
        int paddingLeft = CFG.PADDING * 2 + Images.boxTitleBORDERWIDTH;
        int menuWidth = panelWidth();

        int rowY = CFG.PADDING;
        menuElements.add(new ButtonGame2(ROW_ENABLE, CFG.FONT_REGULAR, -1, paddingLeft, rowY,
                menuWidth - paddingLeft * 2, true, CFG.BUTTON_HEIGHT, true) {

            @Override
            public boolean getCheckboxState() {
                return QuickActionsState.isEnabled();
            }

            @Override
            public void actionElement() {
                QuickActionsState.setEnabled(!QuickActionsState.isEnabled());
            }
        });
        rowY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;

        menuElements.add(new ButtonGame2(ROW_QUICK_MISSION, CFG.FONT_REGULAR, -1, paddingLeft, rowY,
                menuWidth - paddingLeft * 2, true, CFG.BUTTON_HEIGHT, true) {

            @Override
            public boolean getCheckboxState() {
                return QuickActionsState.isQuickMissionEnabled();
            }

            @Override
            public void actionElement() {
                QuickActionsState.setQuickMission(!QuickActionsState.isQuickMissionEnabled());
            }
        });
        rowY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;

        menuElements.add(new ButtonGame2(ROW_INVERT, CFG.FONT_REGULAR, -1, paddingLeft, rowY,
                menuWidth - paddingLeft * 2, true, CFG.BUTTON_HEIGHT, true) {

            @Override
            public boolean getCheckboxState() {
                return QuickActionsState.isInverted();
            }

            @Override
            public void actionElement() {
                QuickActionsState.setInverted(!QuickActionsState.isInverted());
            }
        });
        rowY += menuElements.get(menuElements.size() - 1).getHeight() + CFG.PADDING;

        initMenu(new MenuTitleIMG(TITLE, false, false, Images.title500),
                posX, posY, menuWidth, rowY, menuElements, true, false);
    }

    /**
     * 在按钮下方弹出面板(右边缘与按钮对齐,自动避免超出屏幕)。
     *
     * @param buttonX 按钮屏幕坐标
     * @param buttonY 按钮屏幕坐标
     * @param buttonW 按钮宽
     * @param buttonH 按钮高
     */
    public static void open(int buttonX, int buttonY, int buttonW, int buttonH) {
        try {
            int width = panelWidth();
            int posX = buttonX + buttonW - width;
            if (posX + width > CFG.GAME_WIDTH - CFG.PADDING) {
                posX = CFG.GAME_WIDTH - CFG.PADDING - width;
            }
            if (posX < CFG.PADDING) {
                posX = CFG.PADDING;
            }
            int posY = buttonY + buttonH + CFG.PADDING;

            QuickActionsPanel panel = new QuickActionsPanel(posX, posY);
            List<Menu> menus = Game.menuManager.getActiveMenu();
            if (slotIndex < 0 || slotIndex >= menus.size()) {
                slotIndex = Game.menuManager.addNextMenuToView(Game.menuManager.IN_GAME, panel);
            } else {
                menus.set(slotIndex, panel);
            }
            instance = panel;
            panel.setVisible(true);
            SafeLog.d(TAG + ": 已弹出设置面板");
            QuickActionsState.toast("面板已打开 · " + QuickActionsState.BUILD_TAG); // 仅调试开关打开时真的弹
        } catch (Throwable t) {
            SafeLog.e(TAG + ": 打开设置面板失败", t);
        }
    }

    /** 面板当前是否可见。 */
    public static boolean isOpen() {
        try {
            return instance != null && instance.getVisible();
        } catch (Throwable ignored) {
            return false;
        }
    }

    /** 该点是否落在面板之外。 */
    public static boolean isOutside(int x, int y) {
        try {
            QuickActionsPanel panel = instance;
            if (panel == null || !panel.getVisible()) {
                return false;
            }
            return x < panel.getPosX() || x > panel.getPosX() + panel.getWidth()
                    || y < panel.getPosY() || y > panel.getPosY() + panel.getHeight();
        } catch (Throwable ignored) {
            return false;
        }
    }

    /** 关闭面板。 */
    public static void close() {
        try {
            if (instance != null) {
                instance.setVisible(false);
            }
        } catch (Throwable ignored) {
        }
    }

    /** 若该点在面板外,则关闭面板并返回 true(调用方应吞掉这次点击)。 */
    public static boolean closeIfOutside(int x, int y) {
        if (isOpen() && isOutside(x, y)) {
            close();
            return true;
        }
        return false;
    }
}
