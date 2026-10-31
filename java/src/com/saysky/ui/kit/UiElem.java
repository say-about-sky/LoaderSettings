package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.MenuElement;

/**
 * Fluent handle shared by every kit element.
 *
 * <p>Implementations are always real game elements (they extend the vanilla class), so
 * {@link #element()} returns the same object as {@code this} and the entire native API
 * stays reachable. Nothing is hidden or re-modelled: the kit only adds convenience.</p>
 *
 * @param <T> the concrete kit type, so chains keep their type (e.g. {@code UiButton})
 */
public interface UiElem<T extends UiElem<T>> {

    /** The underlying native element ({@code this} for kit elements). */
    MenuElement element();

    /** Concrete self type (avoids unchecked casts in the fluent API). */
    T self();

    default T at(int x, int y) {
        element().setPosX(x);
        element().setPosY(y);
        return self();
    }

    default T move(int dx, int dy) {
        element().setPosX(element().getPosX() + dx);
        element().setPosY(element().getPosY() + dy);
        return self();
    }

    default T size(int w, int h) {
        element().setWidth(w);
        element().setHeight(h);
        return self();
    }

    default T width(int w) {
        element().setWidth(w);
        return self();
    }

    default T height(int h) {
        element().setHeight(h);
        return self();
    }

    default T visible(boolean v) {
        element().setVisible(v);
        return self();
    }

    default T clickable(boolean c) {
        element().setClickable(c);
        return self();
    }

    default T text(String s) {
        element().setText(s);
        return self();
    }

    /** Attaches a tooltip; {@code null} clears it. */
    default T tooltip(Hover hover) {
        element().menuElementHover = hover == null ? null : hover.build();
        return self();
    }

    /** Escape hatch for any native element that is not a kit type. */
    static MenuElement raw(Object element) {
        return element instanceof MenuElement ? (MenuElement) element : null;
    }
}
