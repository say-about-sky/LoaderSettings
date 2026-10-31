package com.saysky.ui.kit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/** An empty spacer row inside a {@link Panel}. */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface RowLine {

    /** Spacer height; 0 = {@code padding * 2}. */
    int height() default 0;
}
