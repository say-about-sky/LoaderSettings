package com.saysky.longpressmovearmy.mixin;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Touch;
import com.saysky.longpressmovearmy.QuickActionsState;
import com.saysky.longpressmovearmy.SafeLog;
import com.saysky.longpressmovearmy.ui.QuickActionsPanel;
import team.rainfall.finality.luminosity2.CallbackInfo;
import team.rainfall.finality.luminosity2.annotations.Inject;
import team.rainfall.finality.luminosity2.annotations.Mixin;

/**
 * 触摸事件入口(安卓端「单指双击后按住框选」的实现)。
 *
 * <p><b>为什么改 {@code Touch}:</b>luminosity2 的 Mixin 会把整个目标类替换成「PC game.jar 的版本 + 我们的改动」,
 * 因此只能改<b>安卓与 PC 逐字节一致</b>的类。经逐方法(含指令数)比对,
 * {@code Touch}、{@code MapTouchManager}、{@code ButtonTopOutliner} 一致;
 * 而 {@code AA_Game$1}(keyDown 被改)、{@code InGame$13}(安卓另有一个同名不同义的按钮)都<b>不能</b>碰。</p>
 *
 * <p><b>做了什么:</b></p>
 * <ul>
 *   <li>{@link #actionDown} ①保留原版「点一下按钮武装的一次性框选」分支({@code Touch.selectArmiesMode}
 *       原样消费 —— 习惯原版的玩家体验与原生完全一致);②国策页上快速双击时接管
 *       (见 {@link QuickActionsState#onMissionConfirmDown});③其余地图按下走我们的快捷手势状态机,同时记录轻点用于双击判定;</li>
 *   <li>{@link #actionMove(int, int, int)} 覆盖:轻点两下、第二下按满 {@code 120ms} 后,
 *       直接进入游戏<b>原生</b>的单指框选({@code iSelectBox*} + {@code selectMode}),
 *       之后选框由游戏自己的 {@code MapTouchManager.actionMove} 维护;</li>
 *   <li>{@code actionUp} 注入:记录轻点;若这次框选几乎没拖动则撤销选框,把这一下交还原生(等同普通双击)。</li>
 * </ul>
 *
 * <p>另外:任何"第二根手指"活动(按下或移动)都会取消本次长按判定 ——
 * 否则"选中军队后双指缩放"会被当成按住不动,从而误触军队移动。双指缩放本身完全不碰(保持原生)。</p>
 */
@Mixin(mixinClass = "aoc.kingdoms.lukasz.jakowski.Touch")
public class MixinTouch {

    /**
     * 覆盖 {@code Touch.actionDown}:
     * ①保留原版「点一下按钮武装的一次性框选」分支(适配习惯原版操作的玩家);
     * ②其余地图按下走我们的快捷手势状态机。
     */
    protected final void actionDown(int nPosX, int nPosY, int nPointer, int button) {
        if (nPointer != 0) {
            try {
                QuickActionsState.onOtherPointerDown();
            } catch (Throwable ignored) {
            }
            return;
        }
        // 新的按下:先清掉上一次的「整段吞掉」标记(抬起事件丢失时也能自愈)
        try {
            QuickActionsState.onPrimaryDown();
        } catch (Throwable ignored) {
        }
        // 「修改快捷方式」面板开着时:点面板外面 = 关闭面板,
        // 并把这一次触摸**整段**吞掉(含移动/抬起),不能只吞抬起 —— 否则移动会传给地图
        // (按下时没调 MapTouchManager.actionDown,地图平移锚点还是旧值 → 视角跳变)
        try {
            if (QuickActionsPanel.closeIfOutside(nPosX, nPosY)) {
                QuickActionsState.swallowGesture();
                return;
            }
        } catch (Throwable ignored) {
        }
        // 启用快速国策:在国策(任务)树/列表上再点一次同一国策 = 直接点掉"开始国策"窗口里的确认按钮。
        // 必须在 menuManager 分发之前:国策页面的点击会被菜单吃掉,但我们得先看到这两下。
        try {
            if (QuickActionsState.onMissionConfirmDown(nPosX, nPosY)) {
                return;
            }
        } catch (Throwable t) {
            SafeLog.e("QuickActions: onMissionConfirmDown", t);
        }
        if (Game.menuManager.actionDown(nPosX, nPosY)) {
            try {
                // 按下没落到地图上(被顶部/其它按钮吃掉):登记「可能是长按了快捷按钮」
                QuickActionsState.onMenuDown(nPosX, nPosY);
            } catch (Throwable ignored) {
            }
            return;
        }
        // ① 原版行为:点一下按钮武装的"一次性框选" → 下一次在地图上按下即开始框选,并消费这个标记
        // (习惯原版操作的玩家:点按钮 → 拖出选框,与原生完全一致)
        try {
            if (Touch.selectArmiesMode) {
                Game.mapTouchManager.iSelectBoxX = nPosX;
                Game.mapTouchManager.iSelectBoxY = nPosY;
                Game.mapTouchManager.iSelectBoxWidth = 1;
                Game.mapTouchManager.iSelectBoxHeight = 1;
                Game.mapTouchManager.selectMode = true;
                Touch.selectArmiesMode = false;
                QuickActionsState.onNativeOneShotBox();
                return;
            }
        } catch (Throwable ignored) {
        }
        try {
            QuickActionsState.onMapDown(nPosX, nPosY);
        } catch (Throwable t) {
            SafeLog.e("QuickActions: actionDown", t);
        }
        Game.mapTouchManager.actionDown(nPosX, nPosY, nPointer, button);
    }

    /**
     * 覆盖 {@code Touch.actionMove(int,int,int)}(单指移动):必要时把这次手势升级成原生框选。
     */
    protected final void actionMove(int nPosX, int nPosY, int nPointer) {
        if (nPointer != 0) {
            // 第二根手指在移动 → 这是多指手势(缩放等),绝对不算长按
            try {
                QuickActionsState.cancelLongPress();
            } catch (Throwable ignored) {
            }
            return;
        }
        // 本次触摸已被整段吞掉(关面板 / 长按开面板):移动也不要给地图,
        // 否则会因为缺少对应的 actionDown 让地图按旧锚点平移(视角跳变)
        try {
            if (QuickActionsState.isSwallowingGesture()) {
                return;
            }
        } catch (Throwable ignored) {
        }
        // 国策侧:拖过(滚动国策树)就不再算"轻点",配对双击时会被排除
        try {
            QuickActionsState.onMissionMove(nPosX, nPosY);
        } catch (Throwable ignored) {
        }
        boolean startedBox = false;
        try {
            startedBox = QuickActionsState.tryStartBoxSelect(nPosX, nPosY);
        } catch (Throwable t) {
            SafeLog.e("QuickActions: startBoxSelect", t);
        }
        if (startedBox) {
            // selectMode 已开,这一步会让游戏把选框更新到当前手指位置(不会平移地图)
            Game.mapTouchManager.actionMove(nPosX, nPosY, nPointer);
            return;
        }
        try {
            // 统计单指拖动过程中的最大偏移(长按判定用)
            QuickActionsState.onMapMove(nPosX, nPosY);
        } catch (Throwable ignored) {
        }
        if (QuickActionsState.shouldBlockMapPan()) {
            // 反转模式:已经按住够久了 → 这次手势是"按住框选",不要再平移地图
            // (否则框选开始时视角已经被最初那段拖动带偏了)
            Game.menuManager.actionMove(nPosX, nPosY);
            return;
        }
        if (!Game.menuManager.actionMove(nPosX, nPosY)) {
            Game.mapTouchManager.actionMove(nPosX, nPosY, nPointer);
        }
    }

    /**
     * {@code Touch.actionUp}:在原生结算选框之前记录轻点 / 收拾过小的选框;
     * 若刚用「长按按钮」打开了设置面板,则吞掉这次抬起(避免按钮再被当成一次点击而被切回去)。
     */
    @Inject(methodName = "actionUp", returnWithValue = true)
    protected final void qa$actionUp(int nPosX, int nPosY, int nPointer, int button, CallbackInfo callbackInfo) {
        try {
            if (QuickActionsState.consumeSwallowedUp(nPointer)) {
                callbackInfo.cancel();
                return;
            }
            QuickActionsState.onAnyUp(nPointer);
            if (nPointer == 0) {
                // 国策侧:干净的轻点才登记为"双击的第一下"
                // (顶部按钮不再需要抬起接管 —— 它的点按完全走原生:武装一次性框选)
                QuickActionsState.onMissionUp(nPosX, nPosY);
            }
            QuickActionsState.onMapUp(nPointer, nPosX, nPosY);
            // 反转模式 + 已选中军队:压住这一下原生地图点击(它可能是双击的第一下,
            // 立刻执行会重新选中对象 → 第二下的移动军队失效)
            if (QuickActionsState.deferMapClick(nPointer, nPosX, nPosY, button)) {
                callbackInfo.cancel();
                return;
            }
        } catch (Throwable t) {
            SafeLog.e("QuickActions: actionUp", t);
        }
    }
}
