package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;

/** Native static text ({@code Text_Static}). */
public final class UiText extends Text_Static implements UiElem<UiText> {

    public UiText(String text, int width) {
        this(text, Theme.fontRegular(), 0, 0, 0, width);
    }

    public UiText(String text, int fontId, int textPositionX, int x, int y, int width) {
        super(text, fontId, textPositionX, x, y, width, Theme.textHeight());
    }

    public UiText(String text, int fontId, int textPositionX, int x, int y, int width, int height) {
        super(text, fontId, textPositionX, x, y, width, height);
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiText self() {
        return this;
    }
}
