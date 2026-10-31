package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2_IMG;

/** Native icon row button ({@code ButtonGame2_IMG}). */
public final class UiIconButton extends ButtonGame2_IMG implements UiElem<UiIconButton> {

    private Runnable click;

    public UiIconButton(String text, String icon, int width) {
        this(text, icon, Theme.fontRegular(), -1, 0, 0, width, true);
    }

    public UiIconButton(String text, String icon, int fontId, int textPositionX,
                        int x, int y, int width, boolean clickable) {
        super(text, fontId, textPositionX, x, y, width, clickable, Theme.icon(icon));
    }

    public UiIconButton onClick(Runnable action) {
        this.click = action;
        return this;
    }

    @Override
    public void actionElement() {
        if (click != null) {
            try {
                click.run();
            } catch (Throwable t) {
                UiLog.e("icon button click failed", t);
            }
        }
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiIconButton self() {
        return this;
    }
}
