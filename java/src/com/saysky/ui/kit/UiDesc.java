package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc_Simple;

/** Native word-wrapped description block ({@code Text_Desc_Simple}). */
public final class UiDesc extends Text_Desc_Simple implements UiElem<UiDesc> {

    public UiDesc(String text, int x, int y, int width) {
        super(text, x, y, width, Theme.fontSmall());
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiDesc self() {
        return this;
    }
}
