package com.saysky.longpressmovearmy.mixin;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import team.rainfall.finality.luminosity2.CallbackInfo;
import team.rainfall.finality.luminosity2.annotations.Inject;
import team.rainfall.finality.luminosity2.annotations.Mixin;

import java.lang.reflect.Method;

import com.saysky.longpressmovearmy.LongPressState;
import com.saysky.longpressmovearmy.QuickActionsState;
import com.saysky.longpressmovearmy.SafeLog;

/**
 * 长按地块移动军队(对标电脑版右键操作)。
 *
 * <p>原理:游戏在 {@code MapTouchManager.actionUp} 中,对鼠标右键(button==1)
 * 且已选中军队({@code Game.activeArmySize > 0})的情况会调用
 * {@code Game.gameActiveProvince.setProvinceID_PPM(...)} 执行"军队走向该地块"。
 * 触摸屏没有右键,本插件把"长按地块"翻译成同样的调用:</p>
 *
 * <ul>
 *   <li>{@code actionDown}:记录按下时间与坐标(仅主手指 pointer==0 参与;第二根手指出现则取消);</li>
 *   <li>{@code actionUp}:按住时长 ≥ 450ms 且位移 &lt; 50px 视为长按;长按且已选中军队时,
 *       调用游戏自带的移动入口并结束本次触摸处理(不影响短按、拖动地图、双指缩放);
 *       顺带补调原逻辑尾部的扩展钩子,保证其它插件与滚动手势结算不受影响。</li>
 * </ul>
 *
 * <p>原有的"行进"按钮流程(chooseProvinceMode)与其它操作完全不受影响。</p>
 *
 * <p><b>开关门控:</b>本功能受「启用快捷操作」开关控制({@link QuickActionsState#isLongPressEnabled()})——
 * 安卓端开关关闭时,这里的所有注入点都直接返回,长按行为与原生完全一致;
 * 桌面端没有该开关,等同于始终启用(与旧版一致)。</p>
 *
 * <p><b>每帧开关同步:</b>{@code drawSelectMode} 是游戏每帧都会调用的渲染函数(且名称在本类中唯一),
 * 借它调用 {@link QuickActionsState#tick()},把持久化的开关值写回游戏字段并回写用户切换。</p>
 */
@Mixin(mixinClass = "aoc.kingdoms.lukasz.map.map.MapTouchManager")
public class MixinMapTouchManager {

    /** 反射缓存的 MapScroll#startScrollingTheMap(protected,需反射调用)。 */
    private static Method scrollMethod = null;

    /** 每帧一次的开关同步(见类注释;drawSelectMode 在本类中名称唯一,可安全注入 HEAD)。 */
    @Inject(methodName = "drawSelectMode")
    protected final void lpm$drawSelectMode(SpriteBatch oSB, CallbackInfo callbackInfo) {
        QuickActionsState.tick();
    }

    @Inject(methodName = "actionDown")
    protected final void lpm$actionDown(int nPosX, int nPosY, int nPointer, int button, CallbackInfo callbackInfo) {
        // 「启用快捷操作」关闭时(安卓端)完全走原生逻辑,不做长按判定
        if (!QuickActionsState.isLongPressEnabled()) {
            LongPressState.valid = false;
            return;
        }
        // 注意:不要因为「双击第二下(pendingBox)」就不武装长按 ——
        // 默认模式下框选必须靠拖动触发(进入框选时会 cancelLongPress),
        // 而"不拖动"的那次抬起恰好就是移动军队。
        if (nPointer == 0) {
            LongPressState.downTime = System.currentTimeMillis();
            LongPressState.downX = nPosX;
            LongPressState.downY = nPosY;
            LongPressState.valid = true;
        } else {
            // 第二根手指按下(缩放/双指操作),本次不参与长按判定
            LongPressState.valid = false;
        }
    }

    @Inject(methodName = "actionUp", returnWithValue = true)
    protected final void lpm$actionUp(int nPosX, int nPosY, int nPointer, int button, CallbackInfo callbackInfo) {
        boolean valid = LongPressState.valid;
        LongPressState.valid = false;
        if (!valid || nPointer != 0) {
            return;
        }
        long duration = System.currentTimeMillis() - LongPressState.downTime;
        // 先把需要的状态取到局部变量(判定函数不再读共享字段:曾因"先清零再读"导致永不移动)
        boolean secondTap = LongPressState.secondTapTouch;
        float maxMove = LongPressState.maxMovePx;
        boolean inverted = QuickActionsState.isInverted();
        boolean canMove = valid && nPointer == 0
                && QuickActionsState.canMoveArmyAt(duration, QuickActionsState.isLongPressEnabled(), inverted, secondTap);
        // 诊断(默认关闭):记录结论并可选弹 Toast —— 写在按钮的按住提示里,真机排查用
        if (QuickActionsState.DEBUG_OUTPUT) {
            QuickActionsState.recordVerdict(valid, nPointer, duration, canMove);
            if (duration >= 300L && maxMove <= 100f) {
                QuickActionsState.toast(QuickActionsState.verdictLine());
            }
        }
        if (!canMove) {
            // 反转模式下"按了够久且全程没拖动"的抬起:既不是框选(框选必须拖动)、
            // 也不是移动(移动要双击第二下)→ 把这一下整段吃掉,
            // 避免松手时被游戏当成普通点击而选中地块。拖动过(平移地图)的不受影响。
            if (inverted && valid && nPointer == 0
                    && duration >= 400L && maxMove <= 100f && !secondTap) {
                callbackInfo.cancel();
            }
            return; // 短按 / 拖动过(平移地图或框选) / 开关关:保持原行为
        }
        try {
            // 与电脑版右键移动军队的判定完全一致:游戏中、非"行进选目标"模式、有选中军队
            if (Game.menuManager.getInGame()
                    && !Game.chooseProvinceMode
                    && Game.activeArmySize > 0) {
                // 游戏自带的"右键移动军队"入口(自动处理行军、取消移动、整编/入侵模式等)
                Game.gameActiveProvince.setProvinceID_PPM(nPosX, nPosY);
                SafeLog.d("LongPressMoveArmy: long-press move triggered at (" + nPosX + "," + nPosY + ")");
                if (QuickActionsState.DEBUG_OUTPUT) {
                    QuickActionsState.toast("移动军队 \u2192 (" + nPosX + "," + nPosY + ")");
                }
                // 补调原 actionUp 尾部钩子:其它插件的触摸扩展点
                try {
                    if (ProvinceTouchExtraAction.actionUp_ExtraAction != null) {
                        ProvinceTouchExtraAction.actionUp_ExtraAction.extraAction(nPosX, nPosY, nPointer, button);
                    }
                } catch (Throwable ignored) {
                }
                // 补调地图滚动手势结算(无位移时仅复位内部记录,不产生惯性)
                try {
                    if (scrollMethod == null) {
                        scrollMethod = Game.mapScroll.getClass().getDeclaredMethod("startScrollingTheMap");
                        scrollMethod.setAccessible(true);
                    }
                    if (!Game.mapScale.getScaleMode() && !Game.mapCoords.disableMovingMap) {
                        scrollMethod.invoke(Game.mapScroll);
                    }
                } catch (Throwable ignored) {
                }
                // 本次触摸已完成移动操作,不再执行原本的点击逻辑
                callbackInfo.cancel();
            }
        } catch (Throwable t) {
            SafeLog.e("LongPressMoveArmy error", t);
        }
    }
}
