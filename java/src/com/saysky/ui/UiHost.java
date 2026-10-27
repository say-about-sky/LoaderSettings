package com.saysky.ui;

import com.saysky.ui.api.CustomPage;
import com.saysky.ui.api.TextButtonSpec;
import com.saysky.ui.api.UiPage;

/**
 * Public entry point of the LoaderSettings UI API.
 *
 * <p>Hot plugins must derive from {@link TextButtonSpec} / {@code IconButtonSpec}
 * (see {@code LoaderSettings/out/ui-api.jar}) and call
 * {@link #addButton(String, TextButtonSpec)} from {@code HotPlugin.init}.
 * Geometry, row shifting, panel growth / scroll extension and remounting are handled
 * by the host.</p>
 *
 * <p>Reflection-friendly for plugins that do not compile against the API jar:
 * {@code Class.forName("com.saysky.ui.UiHost").getMethod("addButton", String.class, TextButtonSpec.class)}
 * still needs a spec instance, so such plugins should use the API jar.</p>
 */
public final class UiHost {

    private UiHost() {
    }

    /** Registers a custom page descriptor (derive from {@link UiPage} or use PageSpec). */
    public static void addPage(UiPage page) {
        UiEngine.addPage(page);
    }

    /** Registers a plugin-owned native page (see {@link CustomPage}). */
    public static void addCustomPage(CustomPage page) {
        UiEngine.addCustomPage(page);
    }

    /**
     * Navigation entry point: opens a custom page (native menu created by the host) or
     * switches to a built-in page that has a {@code View} name (settings, editor,
     * load game, hall of fame, new game, scenarios, campaign, main menu).
     * Call it from {@link TextButtonSpec#onClick()} or from a {@link CustomPage.Row}.
     */
    public static boolean openPage(String pageId) {
        return UiEngine.openPage(pageId);
    }

    /** Closes a custom page opened by {@link #openPage(String)}. */
    public static void closePage(String pageId) {
        UiEngine.closePage(pageId);
    }

    /** Adds (or updates) one button for the given plugin. */
    public static void addButton(String pluginId, TextButtonSpec spec) {
        UiEngine.addButton(pluginId, spec);
    }

    /** Hides and unregisters all buttons of a plugin (hot reload / disable). */
    public static void removePlugin(String pluginId) {
        UiEngine.removePlugin(pluginId);
    }

    /** Forces a re-check of every mount (after a resource/hot reload). */
    public static void invalidate() {
        UiEngine.invalidate();
    }

    /** Diagnostics, e.g. {@code pages=11 buttons=2}. */
    public static String status() {
        return UiEngine.status();
    }

    /** Called by the frame tick; safe to call more than once per frame. */
    public static void tick() {
        UiEngine.tick();
    }
}
