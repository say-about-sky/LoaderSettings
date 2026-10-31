package com.saysky.ui.kit;

import java.util.function.IntConsumer;

import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Slider;

/** Native slider ({@code Slider}) with a value callback. */
public final class UiSliderX extends Slider implements UiElem<UiSliderX> {

    private IntConsumer onChange;

    public UiSliderX(String label, int width, int min, int max, int current) {
        super(label, 0, 0, width, Theme.buttonHeight(), min, max, current);
    }

    public UiSliderX onChange(IntConsumer listener) {
        this.onChange = listener;
        return this;
    }

    private void fire() {
        if (onChange != null) {
            try {
                onChange.accept(getCurrent());
            } catch (Throwable t) {
                UiLog.e("slider callback failed", t);
            }
        }
    }

    @Override
    public void updateSlider(int nPosX) {
        super.updateSlider(nPosX);
        fire();
    }

    @Override
    public void actionElement() {
        super.actionElement();
        fire();
    }

    @Override
    public MenuElement element() {
        return this;
    }

    @Override
    public UiSliderX self() {
        return this;
    }
}
