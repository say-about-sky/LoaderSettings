package com.saysky.ui.api;

import java.util.ArrayList;
import java.util.List;

/**
 * A brand-new native page owned by a plugin.
 *
 * <p>The host builds a real game {@code Menu} (native panel + title + close X) from this
 * descriptor, opens it with {@code UiHost.openPage(id)} and renders one native row per
 * {@link Row}. Rows may run code or <b>navigate</b> to another page
 * ({@link #link(String, String)}).</p>
 *
 * <pre>{@code
 * CustomPage page = new CustomPage("webdemo.page", "Web UI")
 *         .text("Open web page", () -> openWeb())
 *         .icon("development", () -> openWeb())
 *         .link("Settings", Pages.SETTINGS.id());
 * UiHost.addCustomPage(page);
 * // from any button:
 * UiHost.openPage("webdemo.page");
 * }</pre>
 */
public final class CustomPage extends UiPage {

    /** Marker returned by {@link #className()}; the menu class is provided by the host. */
    public static final String CUSTOM_CLASS = "@custom";

    /** One row of the custom page. */
    public static final class Row {
        private final String label;
        private final String icon;
        private final String targetPageId;
        private final Runnable action;
        private final int height;

        public Row(String label, Runnable action) {
            this(label, null, null, action, 0);
        }

        public Row(String label, Runnable action, int height) {
            this(label, null, null, action, height);
        }

        public Row(String label, String icon, Runnable action) {
            this(label, icon, null, action, 0);
        }

        /** Navigation row: clicking jumps to {@code targetPageId}. */
        public Row(String label, String targetPageId) {
            this(label, null, targetPageId, null, 0);
        }

        private Row(String label, String icon, String targetPageId, Runnable action, int height) {
            this.label = label == null ? "" : label;
            this.icon = icon;
            this.targetPageId = targetPageId;
            this.action = action;
            this.height = height;
        }

        public String label() {
            return label;
        }

        /** Logical icon name, or {@code null} for a text-only row. */
        public String icon() {
            return icon;
        }

        /** Page id to navigate to, or {@code null}. */
        public String targetPageId() {
            return targetPageId;
        }

        public Runnable action() {
            return action;
        }

        /** Row height, {@code 0} = default. */
        public int height() {
            return height;
        }
    }

    private final String id;
    private final String title;
    private final List<Row> rows = new ArrayList<Row>();

    public CustomPage(String id, String title) {
        this.id = id;
        this.title = title == null ? "" : title;
    }

    public CustomPage text(String label, Runnable onClick) {
        rows.add(new Row(label, onClick));
        return this;
    }

    public CustomPage text(String label, Runnable onClick, int height) {
        rows.add(new Row(label, onClick, height));
        return this;
    }

    public CustomPage icon(String icon, Runnable onClick) {
        rows.add(new Row("", icon, onClick));
        return this;
    }

    /** Adds a navigation row that opens {@code targetPageId} (custom or built-in page). */
    public CustomPage link(String label, String targetPageId) {
        rows.add(new Row(label, targetPageId));
        return this;
    }

    public String title() {
        return title;
    }

    public List<Row> rows() {
        return rows;
    }

    @Override
    public String id() {
        return id;
    }

    @Override
    public String className() {
        return CUSTOM_CLASS;
    }

    @Override
    public int kind() {
        return KIND_FIT;
    }

    @Override
    public int anchorMode() {
        return ANCHOR_LAST;
    }
}
