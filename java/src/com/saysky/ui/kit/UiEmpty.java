package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;

/** Native invisible spacer that participates in the layout ({@code Empty}). */
public final class UiEmpty extends Empty implements UiElem<UiEmpty> {

    public UiEmpty(int x, int y, int width, int height) {
        super(x, y, width, height);
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiEmpty self() {
        return this;
    }
}
