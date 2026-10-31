package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Space;

/** Native vertical spacer ({@code Space}). */
public final class UiSpace extends Space implements UiElem<UiSpace> {

    public UiSpace(int x, int y, int height) {
        super(x, y, height);
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiSpace self() {
        return this;
    }
}
