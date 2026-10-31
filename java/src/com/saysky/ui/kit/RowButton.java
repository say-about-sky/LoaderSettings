package com.saysky.ui.kit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * A clickable row: annotate a no-argument method of the {@link Panel} class.
 *
 * <pre>{@code
 * @RowButton(label = "Open web UI", icon = "development")
 * void openWeb() { ... }
 * }</pre>
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface RowButton {

    /** Button text. */
    String label();

    /** Optional icon name from {@code Images} (empty = text only). */
    String icon() default "";

    /** Row width; 0 = panel row width. */
    int width() default 0;

    /** Row height; 0 = native button height. */
    int height() default 0;

    /** Tooltip text; empty = no tooltip. */
    String tooltip() default "";
}
