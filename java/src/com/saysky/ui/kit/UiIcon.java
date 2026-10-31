package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.Icon;

/** Native clickable icon ({@code Icon}); pass {@code Theme.icon("name")} or a raw Images id. */
public final class UiIcon extends Icon implements UiElem<UiIcon> {

    private Runnable click;

    public UiIcon(String icon, int size) {
        this(Theme.icon(icon), 0, 0, size, size, 0);
    }

    public UiIcon(int imageId, int x, int y, int width, int height, int id) {
        super(imageId, x, y, width, height, id);
    }

    public UiIcon onClick(Runnable action) {
        this.click = action;
        return this;
    }

    @Override
    public void actionElement() {
        if (click != null) {
            try {
                click.run();
            } catch (Throwable t) {
                UiLog.e("icon click failed", t);
            }
        }
    }

    @Override
    public aoc.kingdoms.lukasz.menu_element.MenuElement element() {
        return this;
    }

    @Override
    public UiIcon self() {
        return this;
    }
}
