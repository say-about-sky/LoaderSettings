package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;

/** Native editor/settings row button ({@code ButtonMain}). */
public final class UiMainButton extends ButtonMain implements UiElem<UiMainButton> {

    private Runnable click;

    public UiMainButton(String text, int width) {
        this(text, Theme.fontRegular(), Theme.padding() * 4, 0, 0, width, true);
    }

    public UiMainButton(String text, int fontId, int textPositionX, int x, int y, int width, boolean clickable) {
        super(text, fontId, textPositionX, x, y, width, clickable);
    }

    public UiMainButton onClick(Runnable action) {
        this.click = action;
        return this;
    }

    @Override
    public void actionElement() {
        if (click != null) {
            try {
                click.run();
            } catch (Throwable t) {
                UiLog.e("main button click failed", t);
            }
        }
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiMainButton self() {
        return this;
    }
}
