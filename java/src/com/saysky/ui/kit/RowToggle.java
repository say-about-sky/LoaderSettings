package com.saysky.ui.kit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * A checkbox row bound to a {@code boolean} field.
 *
 * <pre>{@code
 * @RowToggle(label = "Enable web server")
 * private boolean enabled = true;
 * }</pre>
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface RowToggle {

    /** Row text. */
    String label();

    /** Row width; 0 = panel row width. */
    int width() default 0;

    /** Tooltip text; empty = no tooltip. */
    String tooltip() default "";
}
