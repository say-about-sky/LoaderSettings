package com.saysky.longpressmovearmy.mixin;

import java.util.ArrayList;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.saysky.longpressmovearmy.QuickActionsState;
import com.saysky.longpressmovearmy.SafeLog;
import team.rainfall.finality.luminosity2.CallbackInfo;
import team.rainfall.finality.luminosity2.annotations.Inject;
import team.rainfall.finality.luminosity2.annotations.Mixin;
import team.rainfall.finality.luminosity2.utils.InjectPosition;

/**
 * 顶部「启用快捷操作」按钮的附加行为(该按钮在安卓端是 {@code InGame$14},继承本类,且未覆写这两个方法)。
 *
 * <ul>
 *   <li>{@code drawText} 每帧都会被调用 → 借它实现「按住按钮 1 秒」的计时与弹出设置面板
 *       ({@link QuickActionsState#onButtonFrame});</li>
 *   <li>{@code buildElementHover} → 把按住按钮时显示的提示文案换掉(原版是「选择多个军队」)。
 *       提示里带上「长按 1 秒打开设置」,顺便告诉玩家新功能怎么进。</li>
 * </ul>
 *
 * <p>本类刻意 {@code extends ButtonTopOutliner},以便直接读 {@code imageID} 与
 * {@code getPosX()/getWidth()} 等成员;luminosity2 会把本类方法并入目标类并把 owner 重写为目标类。</p>
 */
@Mixin(mixinClass = "aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner")
public class MixinButtonTopOutliner extends ButtonTopOutliner {

    /** 按住按钮时显示的提示(单行,避免依赖更多 Hover 元件类型)。 */
    private static final String HOVER_TEXT = "启用快捷操作 · 长按 1 秒打开设置";
    /** 仅用于通过编译(超类无无参构造);本类不会被实例化。 */
    private MixinButtonTopOutliner() {
        super(0, 0);
    }

    /** 每帧一次:检测「按住按钮 1 秒」并弹出设置面板;顺便刷新按钮矩形供抬起判定。 */
    @Inject(methodName = "drawText", position = InjectPosition.RETURN)
    protected final void qa$drawText(SpriteBatch oSB, int iTranslateX, int iTranslateY, boolean isActive,
                                     CallbackInfo callbackInfo) {
        try {
            QuickActionsState.onButtonFrame(this, this.imageID,
                    this.getPosX(), this.getPosY(), this.getWidth(), this.getHeight());
            if (QuickActionsState.isQuickButton(this, this.imageID)) {
                drawQuickActionsHighlight(oSB, iTranslateX, iTranslateY);
            }
        } catch (Throwable t) {
            SafeLog.e("QuickActions: onButtonFrame", t);
        }
    }

    /**
     * 快捷操作开关打开时,把按钮图标再画一遍(金色半透明)—— 效果与原版"框选已武装"的金色高亮一致,
     * 让玩家一眼看出快捷操作到底开着没有。
     */
    private void drawQuickActionsHighlight(SpriteBatch oSB, int iTranslateX, int iTranslateY) {
        if (!QuickActionsState.isEnabled()) {
            return;
        }
        try {
            Image img = ImageManager.getImage(this.imageID);
            oSB.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.375f));
            img.draw(oSB, this.getPosX() + iTranslateX + this.getWidth() / 2 - img.getWidth() / 2,
                    this.getPosY() + iTranslateY + this.getHeight() / 2 - img.getHeight() / 2);
            oSB.setColor(Color.WHITE);
        } catch (Throwable ignored) {
        }
    }

    /** 替换「按住按钮」时显示的提示文案。 */
    @Inject(methodName = "buildElementHover", returnWithValue = true)
    protected final void qa$buildElementHover(CallbackInfo callbackInfo) {
        try {
            if (CFG.isDesktop() || !QuickActionsState.isQuickButton(this, this.imageID)) {
                return; // 桌面端 / 其它同基类按钮:保持原生提示
            }
            ArrayList<MenuElement_HoverElement> nElements = new ArrayList<MenuElement_HoverElement>();
            ArrayList<MenuElement_HoverElement_Type> nData = new ArrayList<MenuElement_HoverElement_Type>();
            nData.add(new MenuElement_HoverElement_Type_TextTitle_BG(
                    HOVER_TEXT + (QuickActionsState.DEBUG_OUTPUT ? " · " + QuickActionsState.BUILD_TAG : ""),
                    CFG.FONT_BOLD, Colors.HOVER_GOLD));
            nElements.add(new MenuElement_HoverElement(nData));
            // 交互说明(常显:两拨玩家都能看懂按钮怎么用)
            nElements.add(hoverRow(QuickActionsState.guideLineTap()));
            nElements.add(hoverRow(QuickActionsState.guideLineHold()));
            if (QuickActionsState.isQuickMissionEnabled()) {
                nElements.add(hoverRow(QuickActionsState.guideLineQuickMission()));
            }
            if (QuickActionsState.DEBUG_OUTPUT) {
                // 真机诊断(默认关闭):按住按钮可看到手势对照与判定结果
                nElements.add(hoverRow(QuickActionsState.modeLine()));
                nElements.add(hoverRow(QuickActionsState.livePressLine()));
                nElements.add(hoverRow(QuickActionsState.verdictLine()));
                nElements.add(hoverRow(QuickActionsState.missionLine()));
            }
            this.menuElementHover = new MenuElement_Hover(nElements, true);
            callbackInfo.cancel();
        } catch (Throwable t) {
            SafeLog.e("QuickActions: button hover", t);
        }
    }

    /** 组装一行普通文本的悬停内容。 */
    private static MenuElement_HoverElement hoverRow(String text) {
        ArrayList<MenuElement_HoverElement_Type> nData = new ArrayList<MenuElement_HoverElement_Type>();
        nData.add(new MenuElement_HoverElement_Type_Text(text));
        return new MenuElement_HoverElement(nData);
    }
}
