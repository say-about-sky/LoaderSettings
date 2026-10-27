package com.saysky.longpressmovearmy;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerActiveEvent;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Value;
import aoc.kingdoms.lukasz.menusInGame.InGame_Event;

/**
 * 「启用快速国策」的执行端:找到当前打开的「开始国策」窗口,替玩家点掉确认。
 *
 * <p><b>两种"开始国策"流程(安卓 dex 逆向 + RainfallEvent 源码双重确认):</b></p>
 * <ol>
 *   <li><b>原版任务</b>:点国策树节点 → {@code MissionTree.runMission(_Civ)}:
 *       ①把任务挂成活动事件({@code addActiveEvent(999/1000, missionID, 0)});
 *       ②通过 {@code addSimpleTask} <b>延迟一步</b>构建并显示事件窗口 {@code InGame_Event};
 *       ③窗口里每个选项都是 {@code ButtonGame_Value} 的匿名子类,点它 = 执行
 *       {@code removeActiveEvent + takeMissionDecision(optionID)} 并关窗。
 *       → {@link #tryConfirmOpenMissionEvent()} 点掉确认选项。</li>
 *   <li><b>RainfallEvent 国策系统(暮色黄昏/世界大战等 MOD)</b>:任务带 {@code event.focusDura > 0}
 *       (有周期的国策)时,点节点弹的其实是 {@code InGame_StartFocus}「开始国策」窗口
 *       (MOD 的 ButtonMissionTree.actionElement 分支;窗口里 Cancel/Confirm 两个按钮,
 *       Confirm → {@code InGame_StartFocus.confirm()} → {@code rfEvent.focusData.startGoal(...)}
 *       + 刷新右侧信息面板 + 收起窗口)。此流程<b>不会</b>产生 999/1000 活动事件,窗口实例由
 *       {@code MenuProxy.getMenus().get(IN_GAME).get(IN_GAME_NUKES)} 槽位持有。
 *       → {@link #tryConfirmStartFocus()} 直接反射调 {@code confirm()}(public 方法)。</li>
 * </ol>
 *
 * <p>全程不读任何 txt/json 脚本:任务事件脚本只负责"挂载判断与收益",确认按钮是游戏 UI 本身。
 * 全部操作 try/catch,失败静默并写日志,绝不影响原生流程。</p>
 *
 * <p><b>安全性:</b>{@link #tryConfirmOpenMissionEvent()} 只对任务事件({@code eventType == 999/1000})
 * 生效,普通剧情事件(0~5)一律不碰;多选项时找"确认/开始/接受"字样的那个,找不准就什么都不做。
 * {@link #tryConfirmStartFocus()} 只认 {@code InGame_StartFocus} 类名的可见窗口。</p>
 */
public final class QuickMissionConfirm {

    private static final String TAG = "QuickActions";
    /** 事件窗口的运行时类名(安卓/PC 同名)。 */
    private static final String EVENT_MENU_CLASS = "aoc.kingdoms.lukasz.menusInGame.InGame_Event";
    /** 国策(任务)树页面类名。 */
    private static final String TREE_MENU_CLASS = "aoc.kingdoms.lukasz.menusInGame.InGame_MissionTree";
    /** 「任务」列表页面类名(在那里点任务也会弹同一个窗口)。 */
    private static final String LIST_MENU_CLASS = "aoc.kingdoms.lukasz.menusInGame.InGame_Missions";
    /** RainfallEvent 国策系统的「开始国策」窗口类名(暮色黄昏/世界大战等 MOD 的带周期国策用)。 */
    private static final String START_FOCUS_MENU_CLASS = "aoc.kingdoms.lukasz.menusInGame.InGame_StartFocus";

    /** 任务事件的类型:全局任务 / 场景任务(见 MissionTree.MISSION_TYPE_ID(_CIV))。 */
    private static final int MISSION_TYPE_ID = 999;
    private static final int MISSION_TYPE_ID_CIV = 1000;

    /** {@link #tryConfirmOpenMissionEvent()} 的返回值:没有可确认的弹窗(可能还没出现)。 */
    public static final int CONFIRM_NONE = 0;
    /** 返回值:已点掉确认。 */
    public static final int CONFIRM_DONE = 1;
    /** 返回值:弹窗在,但不能自动确认(多选项/认不准/按钮是灰的)→ 什么也不做,交还原生。 */
    public static final int CONFIRM_SKIP = 2;

    /** 多选项时,认为"这是确认"的字样。 */
    private static final String[] CONFIRM_WORDS = {
            "确认", "確定", "确定", "开始", "開始", "接受", "启动", "啟動",
            "ok", "confirm", "yes", "start", "accept"
    };
    /** 多选项时,明确不当确认的字样。 */
    private static final String[] CANCEL_WORDS = {
            "取消", "关闭", "關閉", "cancel", "close"
    };

    private QuickMissionConfirm() {
    }

    /** 国策(任务)树/列表页面当前是否打开(用于"第一下按在国策界面上"的判断)。 */
    public static boolean isMissionUiVisible() {
        try {
            List<Menu> menus = Game.menuManager.getActiveMenu();
            for (int i = 0; i < menus.size(); i++) {
                Menu menu = menus.get(i);
                if (menu == null || !menu.getVisible()) {
                    continue;
                }
                String name = menu.getClass().getName();
                if (TREE_MENU_CLASS.equals(name) || LIST_MENU_CLASS.equals(name)) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    /** 当前是否有"开始国策"类窗口开着(原版任务事件 999/1000,或 MOD 的「开始国策」窗口)。 */
    public static boolean isMissionWindowVisible() {
        return findVisibleMissionEvent() != null || findVisibleStartFocus() != null;
    }

    /**
     * 当前是否已有任务事件被挂到玩家身上(点开国策后立即挂上;弹窗消失/已决策时移除)。
     *
     * <p>用途:"再点一次"发生时弹窗还没出现 —— 用它区分"弹窗马上就来(吞掉这次点击、稍后补点确认)"
     * 与"这次点击其实没成功(比如条件不满足只弹了报错,交还原生处理)"。</p>
     */
    public static boolean hasActiveMissionEvent() {
        try {
            List<PlayerActiveEvent> events = Game.player.playerData.activeEvents;
            for (int i = 0; i < events.size(); i++) {
                PlayerActiveEvent event = events.get(i);
                if (event == null) {
                    continue;
                }
                if (event.eventType == MISSION_TYPE_ID || event.eventType == MISSION_TYPE_ID_CIV) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    /**
     * 若"开始国策"窗口正开着(任务事件),点掉它的确认选项。
     *
     * @return {@link #CONFIRM_NONE} = 没有可确认的弹窗(可能还没出现);
     *         {@link #CONFIRM_DONE} = 已点掉确认;
     *         {@link #CONFIRM_SKIP} = 弹窗在但不能自动确认(多选项/认不准/按钮灰)→ 不要拦这次点击
     */
    public static int tryConfirmOpenMissionEvent() {
        try {
            Menu menu = findVisibleMissionEvent();
            if (menu == null) {
                return CONFIRM_NONE;
            }
            MenuElement target = pickConfirmOption(menu);
            if (target == null) {
                return CONFIRM_SKIP;
            }
            target.actionElement();
            SafeLog.d(TAG + ": 快速确认国策 -> 已点掉事件窗口的确认选项");
            return CONFIRM_DONE;
        } catch (Throwable t) {
            SafeLog.e(TAG + ": 快速确认国策失败", t);
            return CONFIRM_SKIP;
        }
    }

    /**
     * 若 RainfallEvent(暮色黄昏/世界大战等 MOD)的「开始国策」窗口正开着,替玩家触发它的确认。
     *
     * <p>该窗口的 Confirm 按钮动作就是 {@code confirm()}(源码与安卓 dex 均为 PUBLIC):
     * {@code rfEvent.focusData.startGoal(iCivID, goalID)} + 刷新右侧信息面板 + 收起窗口。
     * 直接反射调用与手点按钮等价(只少了一声按钮音效)。</p>
     *
     * @return {@link #CONFIRM_NONE} = 窗口没开;{@link #CONFIRM_DONE} = 已触发确认;
     *         {@link #CONFIRM_SKIP} = 窗口在但调用失败(版本差异等)→ 不要拦这次点击
     */
    public static int tryConfirmStartFocus() {
        try {
            Menu menu = findVisibleStartFocus();
            if (menu == null) {
                return CONFIRM_NONE;
            }
            Method confirm = menu.getClass().getMethod("confirm");
            confirm.invoke(menu);
            SafeLog.d(TAG + ": 快速确认国策 -> 已触发「开始国策」窗口 confirm()");
            return CONFIRM_DONE;
        } catch (Throwable t) {
            SafeLog.e(TAG + ": 快速确认国策(开始国策窗口)失败", t);
            return CONFIRM_SKIP;
        }
    }

    /** 找当前可见的「开始国策」窗口(MOD 的 InGame_StartFocus;没有则 null)。 */
    private static Menu findVisibleStartFocus() {
        // ①主路径:RainfallEvent 把该窗口放在 MenuProxy 管理的菜单表里
        //   (源码:ButtonMissionTree.actionElement → MenuProxy.getMenus().get(IN_GAME).set(IN_GAME_NUKES, w))
        try {
            Class<?> proxyClass = Class.forName("team.rainfall.rfEvent.utils.MenuProxy");
            Method getMenus = proxyClass.getMethod("getMenus");
            List<?> groups = (List<?>) getMenus.invoke(null);
            if (groups != null) {
                for (int g = 0; g < groups.size(); g++) {
                    Object group = groups.get(g);
                    if (!(group instanceof List)) {
                        continue;
                    }
                    List<?> menus = (List<?>) group;
                    for (int i = 0; i < menus.size(); i++) {
                        Object candidate = menus.get(i);
                        if (candidate instanceof Menu && isStartFocusMenu((Menu) candidate)) {
                            return (Menu) candidate;
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
            // 没装 RainfallEvent(或工具类路径变了):走下面的后备
        }
        // ②后备:扫一遍当前活动菜单集合(防御性写法,正常走不到)
        try {
            List<Menu> menus = Game.menuManager.getActiveMenu();
            for (int i = 0; i < menus.size(); i++) {
                Menu menu = menus.get(i);
                if (menu != null && isStartFocusMenu(menu)) {
                    return menu;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /** 这个菜单是不是显示中的「开始国策」窗口。 */
    private static boolean isStartFocusMenu(Menu menu) {
        try {
            return menu.getVisible() && START_FOCUS_MENU_CLASS.equals(menu.getClass().getName());
        } catch (Throwable ignored) {
            return false;
        }
    }

    /** 找当前可见的任务事件窗口(没有则 null)。 */
    private static Menu findVisibleMissionEvent() {
        try {
            if (!isMissionEventOpen()) {
                return null;
            }
            List<Menu> menus = Game.menuManager.getActiveMenu();
            for (int i = 0; i < menus.size(); i++) {
                Menu menu = menus.get(i);
                if (menu == null || !menu.getVisible()) {
                    continue;
                }
                if (EVENT_MENU_CLASS.equals(menu.getClass().getName())) {
                    return menu;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /** 当前显示的是不是"任务事件"(999/1000);普通剧情事件返回 false。 */
    private static boolean isMissionEventOpen() {
        int type = InGame_Event.eventType;
        return type == MISSION_TYPE_ID || type == MISSION_TYPE_ID_CIV;
    }

    /** 从事件窗口的菜单元素里挑出"确认"选项按钮。 */
    private static MenuElement pickConfirmOption(Menu menu) {
        ArrayList<MenuElement> options = new ArrayList<MenuElement>();
        int size = menu.getMenuElementsSize();
        for (int i = 0; i < size; i++) {
            MenuElement element = menu.getMenuElement(i);
            if (isOptionButton(element)) {
                options.add(element);
            }
        }
        if (options.isEmpty()) {
            return null;
        }
        if (options.size() == 1) {
            // 绝大多数任务事件只有一个选项(那个按钮就是"确认")
            return clickableOrNull(options.get(0));
        }
        // 多选项(分支选择):找"确认/开始/接受"字样的那个;找不准就放弃,别替玩家做选择
        for (int i = 0; i < options.size(); i++) {
            String text = safeText(options.get(i));
            if (text == null) {
                continue;
            }
            String lower = text.toLowerCase();
            if (containsAny(lower, CANCEL_WORDS)) {
                continue;
            }
            if (containsAny(lower, CONFIRM_WORDS)) {
                return clickableOrNull(options.get(i));
            }
        }
        return null;
    }

    /** 事件窗口里的"选项按钮":InGame_Event 的匿名内部类(同时也是 ButtonGame_Value 子类)。 */
    private static boolean isOptionButton(MenuElement element) {
        if (element == null) {
            return false;
        }
        try {
            if (!element.getVisible()) {
                return false;
            }
            if (element.getClass().getName().startsWith(EVENT_MENU_CLASS + "$")) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        return element instanceof ButtonGame_Value;
    }

    /** 按钮可点击吗(个别确认按钮条件不足时是灰的);查不到就当可以,不挡路。 */
    private static MenuElement clickableOrNull(MenuElement element) {
        try {
            Method method = element.getClass().getMethod("getClickable");
            Object result = method.invoke(element);
            if (result instanceof Boolean && !((Boolean) result).booleanValue()) {
                return null;
            }
        } catch (Throwable ignored) {
        }
        return element;
    }

    private static String safeText(MenuElement element) {
        try {
            return element.getText();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static boolean containsAny(String text, String[] words) {
        for (int i = 0; i < words.length; i++) {
            if (text.contains(words[i])) {
                return true;
            }
        }
        return false;
    }
}
