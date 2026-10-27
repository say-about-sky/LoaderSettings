package com.saysky.ui.api;

/**
 * Base class for a game page descriptor.
 *
 * <p><b>Rule:</b> a page that is not covered by {@link Pages} must be described by
 * deriving from this class (or by using the {@link PageSpec} convenience implementation),
 * then registered with {@code com.saysky.ui.UiHost.addPage(...)}. Buttons may only be
 * bound to a registered page id.</p>
 *
 * <p>The descriptor answers three questions:</p>
 * <ol>
 *   <li><b>Which menu?</b> - {@link #className()} must be the exact game menu class.</li>
 *   <li><b>Where is the insertion row?</b> - {@link #anchorMode()}, {@link #anchorText()},
 *       {@link #above()}.</li>
 *   <li><b>How must the layout react?</b> - {@link #kind()}.</li>
 * </ol>
 */
public abstract class UiPage {

    /** Content fits: grow the visible panel height (MainMenu style). */
    public static final int KIND_FIT = 0;
    /** Long content: extend the scroll range, grow the panel only when there is room. */
    public static final int KIND_SCROLL = 1;
    /** Full-screen / map page: insert next to the anchor only. */
    public static final int KIND_FIXED = 2;

    /** Anchor = bottom-most row of the dominant content column. */
    public static final int ANCHOR_AUTO = 0;
    /** Anchor = element whose text equals the localized string of {@link #anchorText()}. */
    public static final int ANCHOR_TEXT = 1;
    /** Anchor = first drawable element of the page. */
    public static final int ANCHOR_FIRST = 2;
    /** Anchor = last drawable element of the page. */
    public static final int ANCHOR_LAST = 3;
    /** Anchor = HotPluginLoader row (gear + "附加包"); falls back to {@link #anchorText()}. */
    public static final int ANCHOR_LOADER = 4;

    /** Stable id used by {@link TextButtonSpec#pageId()}. */
    public abstract String id();

    /** Exact game menu class name, e.g. {@code aoc.kingdoms.lukasz.menus.MainMenu}. */
    public abstract String className();

    /** One of {@link #KIND_FIT}, {@link #KIND_SCROLL}, {@link #KIND_FIXED}. */
    public abstract int kind();

    /** One of the {@code ANCHOR_*} constants. */
    public abstract int anchorMode();

    /** Language key resolved with {@code Game.lang.get(...)} for {@link #ANCHOR_TEXT}. */
    public String anchorText() {
        return null;
    }

    /** Insert above the anchor element instead of below it. */
    public boolean above() {
        return false;
    }

    /**
     * Optional {@code aoc.kingdoms.lukasz.menu.View} constant name used by
     * {@code UiHost.openPage(id)} navigation, e.g. {@code "SETTINGS"}.
     * {@code null} = the page is a sub-panel and cannot be opened by view id.
     */
    public String viewName() {
        return null;
    }
}
