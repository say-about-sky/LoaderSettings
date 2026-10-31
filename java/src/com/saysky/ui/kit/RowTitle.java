package com.saysky.ui.kit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * A section header row. On a no-argument method returning {@code String} the header text
 * is refreshed from the method; on a field the field value is used.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.METHOD})
public @interface RowTitle {

    /** Optional right-hand value (static). */
    String right() default "";
}
