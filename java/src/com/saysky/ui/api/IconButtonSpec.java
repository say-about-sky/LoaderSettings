package com.saysky.ui.api;

/**
 * Icon button base: same placement rules as {@link TextButtonSpec}, rendered with the
 * native {@code ButtonGame2_IMG} look.
 *
 * <p>{@link #icon()} is a logical name resolved by the host against the game's
 * {@code Images} class, e.g. {@code "settings"}, {@code "development"},
 * {@code "encyclopedia"}, {@code "x"}, {@code "technology2"}, {@code "world"},
 * {@code "time"}, {@code "gold"}, {@code "outliner"}.</p>
 */
public abstract class IconButtonSpec extends TextButtonSpec {

    /** Logical icon name (see class docs). Unknown names fall back to "settings". */
    public abstract String icon();

    @Override
    public String label() {
        return "";
    }
}
