package com.saysky.ui.kit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * A slider row bound to an {@code int} field.
 *
 * <pre>{@code
 * @RowSlider(label = "Port", min = 1024, max = 9000)
 * private int port = 8080;
 * }</pre>
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface RowSlider {

    /** Row text. */
    String label();

    int min() default 0;

    int max() default 100;

    /** Row width; 0 = panel row width. */
    int width() default 0;
}
