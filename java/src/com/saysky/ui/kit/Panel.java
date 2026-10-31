package com.saysky.ui.kit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Declares the page a declarative UI class belongs to.
 *
 * <pre>{@code
 * @Panel(Pages.SETTINGS)                      // below "Back"
 * @Panel(value = Pages.SETTINGS, anchor = "Back")
 * @Panel(value = "aoc.kingdoms.lukasz.menus.MainMenu", anchor = "LoadGame", below = false)
 * public final class MySettingsUi { ... }
 * }</pre>
 *
 * <p>Rows are generated in declaration order from the annotated fields/methods:
 * {@link RowToggle}, {@link RowSlider}, {@link RowText}, {@link RowTitle},
 * {@link RowLine} and {@link RowButton}.</p>
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface Panel {

    /** Page id ({@code Pages.*}) or a fully qualified game menu class name. */
    String value();

    /** Anchor text; empty = first element of the page. */
    String anchor() default "";

    /** {@code true}: rows go below the anchor, {@code false}: above it. */
    boolean below() default true;

    /** Anchor mode: 0 = text, 1 = first element, 2 = last element. */
    int mode() default 0;

    /** Layout kind: 0 = FIT, 1 = SCROLL, 2 = FIXED. */
    int kind() default 1;
}
