package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/**
 * Native standard row button ({@code ButtonGame2}) with lambda callbacks.
 *
 * <p>Identical look and geometry to a vanilla menu row; adds
 * {@link #onClick}/{@link #onRightClick}/{@link #onHover}.</p>
 */
public final class UiButton extends ButtonGame2 implements UiElem<UiButton> {

    private Runnable click;
    private Runnable rightClick;
    private Runnable hoverIn;
    private Runnable hoverOut;
    private boolean drawWarned;

    public UiButton(String text, int width) {
        this(text, Theme.fontRegular(), -1, 0, 0, width, true);
    }

    public UiButton(String text, int fontId, int textPositionX, int x, int y, int width, boolean clickable) {
        super(text, fontId, textPositionX, x, y, width, clickable);
    }

    public UiButton onClick(Runnable action) {
        this.click = action;
        return this;
    }

    public UiButton onRightClick(Runnable action) {
        this.rightClick = action;
        return this;
    }

    public UiButton onHover(Runnable enter, Runnable exit) {
        this.hoverIn = enter;
        this.hoverOut = exit;
        return this;
    }

    @Override
    public void actionElement() {
        if (click != null) {
            try {
                click.run();
            } catch (Throwable t) {
                UiLog.e("button click failed", t);
            }
        }
    }

    /**
     * The vanilla draw loop swallows per-element exceptions ({@code CFG.exceptionStack}),
     * which looks exactly like "the row is mounted but nothing is drawn". Log the first
     * failure so the real cause is visible in logcat.
     */
    @Override
    public void draw(SpriteBatch oSB, int iTranslateX, int iTranslateY, boolean isActive, boolean scrollableY) {
        try {
            super.draw(oSB, iTranslateX, iTranslateY, isActive, scrollableY);
        } catch (Throwable t) {
            if (!drawWarned) {
                drawWarned = true;
                UiLog.e("UiButton.draw failed text='" + getText() + "' pos="
                        + getPosX() + "," + getPosY() + " " + getWidth() + "x" + getHeight(), t);
            }
        }
    }

    @Override
    public void actionElementPPM() {
        if (rightClick != null) {
            try {
                rightClick.run();
            } catch (Throwable t) {
                UiLog.e("button right-click failed", t);
            }
        }
    }

    @Override
    public void setIsHovered(boolean isHovered) {
        boolean was = getIsHovered();
        super.setIsHovered(isHovered);
        try {
            if (!was && isHovered && hoverIn != null) {
                hoverIn.run();
            } else if (was && !isHovered && hoverOut != null) {
                hoverOut.run();
            }
        } catch (Throwable t) {
            UiLog.e("button hover failed", t);
        }
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiButton self() {
        return this;
    }
}
