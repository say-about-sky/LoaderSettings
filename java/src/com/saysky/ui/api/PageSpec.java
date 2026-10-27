package com.saysky.ui.api;

/**
 * Describes one game page (menu) that plugins may extend.
 *
 * <p>A page is identified by the exact game menu class name. The host mounts plugin
 * buttons into <b>that</b> menu instance, so a page descriptor also declares how the
 * host should find the insertion row and how the page layout must be updated.</p>
 *
 * <p>Built-in descriptors live in {@link Pages}; plugins may add their own with
 * {@code com.saysky.ui.UiHost.addPage(...)}.</p>
 */
public class PageSpec extends UiPage {

    private final String id;
    private final String className;
    private final int kind;
    private final int anchorMode;
    private final String anchorText;
    private final boolean above;
    private final String viewName;

    /**
     * Usable by plugins and by the host; most plugins use {@link #fit}, {@link #scroll}
     * or {@link #fixed} (or derive from {@link UiPage} directly).
     */
    public PageSpec(String id, String className, int kind, int anchorMode, String anchorText, boolean above) {
        this(id, className, kind, anchorMode, anchorText, above, null);
    }

    public PageSpec(String id, String className, int kind, int anchorMode, String anchorText,
                    boolean above, String viewName) {
        this.id = id;
        this.className = className;
        this.kind = kind;
        this.anchorMode = anchorMode;
        this.anchorText = anchorText;
        this.above = above;
        this.viewName = viewName;
    }

    /** Copy with a {@code View} constant name, used by {@code UiHost.openPage(id)}. */
    public PageSpec withView(String viewName) {
        return new PageSpec(id, className, kind, anchorMode, anchorText, above, viewName);
    }

    public static PageSpec fit(String id, String className, int anchorMode, String anchorText, boolean above) {
        return new PageSpec(id, className, KIND_FIT, anchorMode, anchorText, above);
    }

    public static PageSpec scroll(String id, String className, int anchorMode, String anchorText, boolean above) {
        return new PageSpec(id, className, KIND_SCROLL, anchorMode, anchorText, above);
    }

    public static PageSpec fixed(String id, String className, int anchorMode, String anchorText, boolean above) {
        return new PageSpec(id, className, KIND_FIXED, anchorMode, anchorText, above);
    }

    @Override
    public String id() {
        return id;
    }

    @Override
    public String className() {
        return className;
    }

    @Override
    public int kind() {
        return kind;
    }

    @Override
    public int anchorMode() {
        return anchorMode;
    }

    /** Language key (e.g. {@code "Back"}), resolved with {@code Game.lang.get(...)} at runtime. */
    @Override
    public String anchorText() {
        return anchorText;
    }

    /** Insert above the anchor element instead of below it. */
    @Override
    public boolean above() {
        return above;
    }

    @Override
    public String viewName() {
        return viewName;
    }
}
