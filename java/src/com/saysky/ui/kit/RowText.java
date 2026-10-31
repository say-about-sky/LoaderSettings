package com.saysky.ui.kit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * A read-only text row.
 *
 * <p>On a field: the field value is shown (and refreshed, so a mutable {@code String}
 * field or a counter updates live). On a no-argument method returning {@code String}:
 * the method is called on refresh.</p>
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.METHOD})
public @interface RowText {

    /** Optional prefix, e.g. {@code "Status: "}. */
    String prefix() default "";

    /** Row width; 0 = panel row width. */
    int width() default 0;

    /** Refresh interval in frames; 0 = every frame is overkill, default 15. */
    int every() default 15;
}
