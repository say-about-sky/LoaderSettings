package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/**
 * Fully custom element: you paint it, the vanilla input pipeline still hit-tests it.
 *
 * <p>Because it lives in a real {@code Menu}, hover / click / drag / scroll ranges are
 * handled by {@code MenuManager} exactly like for vanilla elements.</p>
 */
public final class UiCustom extends MenuElement implements UiElem<UiCustom> {

    public interface Painter {
        void draw(UiCustom self, SpriteBatch sb, int translateX, int translateY,
                  boolean isActive, boolean scrollableY);
    }

    private Painter painter;
    private Runnable click;
    private Runnable rightClick;

    public UiCustom(int x, int y, int width, int height) {
        super();
        setPosX(x);
        setPosY(y);
        setWidth(width);
        setHeight(height);
    }

    public UiCustom paint(Painter painter) {
        this.painter = painter;
        return this;
    }

    public UiCustom onClick(Runnable action) {
        this.click = action;
        return this;
    }

    public UiCustom onRightClick(Runnable action) {
        this.rightClick = action;
        return this;
    }

    @Override
    public void draw(SpriteBatch oSB, int translateX, int translateY, boolean isActive, boolean scrollableY) {
        if (painter == null) {
            return;
        }
        try {
            painter.draw(this, oSB, translateX, translateY, isActive, scrollableY);
        } catch (Throwable t) {
            UiLog.e("custom paint failed", t);
        }
    }

    @Override
    public void actionElement() {
        if (click != null) {
            try {
                click.run();
            } catch (Throwable t) {
                UiLog.e("custom click failed", t);
            }
        }
    }

    @Override
    public void actionElementPPM() {
        if (rightClick != null) {
            try {
                rightClick.run();
            } catch (Throwable t) {
                UiLog.e("custom right-click failed", t);
            }
        }
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiCustom self() {
        return this;
    }
}
