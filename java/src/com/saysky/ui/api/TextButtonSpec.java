package com.saysky.ui.api;

/**
 * Base class for plugin text buttons bound to a game page.
 *
 * <p><b>Rule:</b> to add UI to a game page a hot plugin must derive from this class
 * (or {@link IconButtonSpec}) and override {@link #pageId()}, {@link #label()} and
 * (usually) {@link #onClick()}. The host owns all geometry: it creates the native
 * {@code ButtonGame2}, inserts it into the right page instance, shifts the rows below,
 * grows the panel or the scroll range, marks it visible and keeps it mounted when the
 * page is rebuilt.</p>
 *
 * <p>Everything here is game-free: a plugin only needs {@code LoaderSettings/out/ui-api.jar}
 * on its compile classpath.</p>
 */
public abstract class TextButtonSpec {

    /** Built-in id from {@link Pages} (or a page registered with UiHost.addPage). */
    public abstract String pageId();

    /** Button text (empty for icon-only buttons). */
    public abstract String label();

    /** Called on the GL thread when the player clicks the button. */
    public void onClick() {
    }

    /** Optional hover text; {@code null} disables the tooltip. */
    public String tooltip() {
        return null;
    }

    /** Row height; {@code 0} = engine default ({@code CFG.BUTTON_HEIGHT}). */
    public int height() {
        return 0;
    }

    /**
     * Preferred row width; {@code 0} = use the anchor row width.
     *
     * <p>When a positive width is wider than the page's row, the host widens the whole menu
     * (and the rows of that column) so nothing is clipped.</p>
     */
    public int width() {
        return 0;
    }
}
