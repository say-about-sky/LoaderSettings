package com.saysky.ui.kit;

import java.util.function.BooleanSupplier;
import java.util.function.Consumer;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;

/**
 * Native checkbox row ({@code ButtonGame2} with {@code checkBox = true}).
 *
 * <p>The state lives outside the element: give it a getter and a setter and the kit
 * draws the vanilla check mark for you.</p>
 */
public final class UiToggle extends ButtonGame2 implements UiElem<UiToggle> {

    private final BooleanSupplier getter;
    private final Consumer<Boolean> setter;
    private Runnable after;

    public UiToggle(String text, int width, BooleanSupplier getter, Consumer<Boolean> setter) {
        super(text, Theme.fontRegular(), -1, 0, 0, width, true, true);
        this.getter = getter;
        this.setter = setter;
    }

    /** Called after every toggle (refresh dependent labels, persist, …). */
    public UiToggle onChanged(Runnable action) {
        this.after = action;
        return this;
    }

    public boolean isOn() {
        try {
            return getter != null && getter.getAsBoolean();
        } catch (Throwable t) {
            return false;
        }
    }

    @Override
    public boolean getCheckboxState() {
        return isOn();
    }

    @Override
    public void actionElement() {
        boolean next = !isOn();
        try {
            if (setter != null) {
                setter.accept(Boolean.valueOf(next));
            }
            if (after != null) {
                after.run();
            }
        } catch (Throwable t) {
            UiLog.e("toggle failed", t);
        }
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiToggle self() {
        return this;
    }
}
