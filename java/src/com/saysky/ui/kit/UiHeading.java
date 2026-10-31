package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;

/** Native section header with an optional right-hand value ({@code Text_Title_v2_TextLR}). */
public final class UiHeading extends Text_Title_v2_TextLR implements UiElem<UiHeading> {

    public UiHeading(String title, int width) {
        this(title, "", 0, 0, width);
    }

    public UiHeading(String title, String right, int x, int y, int width) {
        super(title, Theme.fontBold(), Theme.padding() * 4, x, y, width,
                Theme.textHeight() + Theme.padding() * 4, right);
    }

    /** Updates the right-hand value (native {@code setText2}, no relayout). */
    public UiHeading right(String right) {
        setText2(right);
        return this;
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiHeading self() {
        return this;
    }
}
