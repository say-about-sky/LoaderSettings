package com.saysky.ui.kit;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

import aoc.kingdoms.lukasz.menu_element.MenuElement;

/**
 * Declarative layer: turns annotated fields/methods of a {@link Panel} class into native
 * rows and mounts them on the declared page.
 *
 * <p>Field widgets are bound <b>by reference</b> — the annotation writes straight into
 * your field, so no extra glue code is needed:</p>
 *
 * <pre>{@code
 * @Panel(Pages.SETTINGS)
 * public final class MySettings {
 *     @RowTitle  String general = "General";
 *     @RowToggle(label = "Enable")  private boolean enabled = true;
 *     @RowSlider(label = "Port", min = 1024, max = 9000) private int port = 8080;
 *     @RowText   String status = "idle";        // mutable: shown live
 *
 *     @RowButton(label = "Apply")
 *     void apply() { ... }
 * }
 * // HotPlugin.init:   Ui.bind(new MySettings());
 * }</pre>
 */
final class UiDecl {

    private interface Refresh {
        void apply(long frame);
    }

    private static final class Binding {
        final Object owner;
        final String pluginId;
        final UiMount mount;
        final List<Refresh> refreshers = new ArrayList<Refresh>();

        Binding(Object owner, String pluginId, UiMount mount) {
            this.owner = owner;
            this.pluginId = pluginId;
            this.mount = mount;
        }
    }

    private static final List<Binding> ALL = new ArrayList<Binding>();
    private static final Map<Object, Binding> BY_OWNER = new IdentityHashMap<Object, Binding>();

    private UiDecl() {
    }

    /* ------------------------------------------------------------------ bind */

    static int bind(final Object owner) {
        if (owner == null) {
            return 0;
        }
        synchronized (ALL) {
            if (BY_OWNER.containsKey(owner)) {
                return 0;
            }
        }
        Class<?> type = owner.getClass();
        Panel panel = type.getAnnotation(Panel.class);
        if (panel == null) {
            UiLog.w("bind: @Panel missing on " + type.getName());
            return 0;
        }

        List<MenuElement> rows = new ArrayList<MenuElement>();
        List<Refresh> refreshers = new ArrayList<Refresh>();

        Field[] fields = type.getDeclaredFields();
        for (int i = 0; i < fields.length; i++) {
            Field f = fields[i];
            if (Modifier.isStatic(f.getModifiers())) {
                continue;
            }
            f.setAccessible(true);
            if (f.isAnnotationPresent(RowLine.class)) {
                RowLine line = f.getAnnotation(RowLine.class);
                int h = line.height() > 0 ? line.height() : Theme.padding() * 2;
                rows.add(new UiEmpty(0, 0, 0, h));
            } else if (f.isAnnotationPresent(RowToggle.class)) {
                addToggle(owner, f, f.getAnnotation(RowToggle.class), rows);
            } else if (f.isAnnotationPresent(RowSlider.class)) {
                addSlider(owner, f, f.getAnnotation(RowSlider.class), rows);
            } else if (f.isAnnotationPresent(RowText.class)) {
                addText(owner, f, f.getAnnotation(RowText.class), rows, refreshers);
            } else if (f.isAnnotationPresent(RowTitle.class)) {
                addTitle(owner, f, f.getAnnotation(RowTitle.class), rows, refreshers);
            }
        }

        Method[] methods = type.getDeclaredMethods();
        for (int i = 0; i < methods.length; i++) {
            Method m = methods[i];
            m.setAccessible(true);
            if (m.isAnnotationPresent(RowButton.class)) {
                addButton(owner, m, m.getAnnotation(RowButton.class), rows);
            } else if (m.isAnnotationPresent(RowText.class) && m.getParameterTypes().length == 0) {
                addTextMethod(owner, m, m.getAnnotation(RowText.class), rows, refreshers);
            } else if (m.isAnnotationPresent(RowTitle.class) && m.getParameterTypes().length == 0) {
                addTitleMethod(owner, m, m.getAnnotation(RowTitle.class), rows, refreshers);
            }
        }

        if (rows.isEmpty()) {
            UiLog.w("bind: no rows on " + type.getName());
            return 0;
        }

        final String pluginId = type.getName();
        String anchor = panel.anchor();
        UiMount mount = anchor == null || anchor.length() == 0
                ? UiMount.onFirst(pluginId, panel.value())
                : UiMount.on(pluginId, panel.value(), anchor);
        if (anchor != null && anchor.length() > 0) {
            mount.anchorMode(panel.mode());
        }
        mount.kind(panel.kind());
        if (!panel.below()) {
            mount.above();
        }
        mount.addAll(rows);

        Binding binding = new Binding(owner, pluginId, mount);
        binding.refreshers.addAll(refreshers);
        synchronized (ALL) {
            ALL.add(binding);
            BY_OWNER.put(owner, binding);
        }
        for (int i = 0; i < refreshers.size(); i++) {
            refreshers.get(i).apply(0L);
        }
        UiLog.i("declared panel bound: " + type.getSimpleName() + " rows=" + rows.size()
                + " page=" + panel.value());
        return rows.size();
    }

    static void unbind(Object owner) {
        Binding b;
        synchronized (ALL) {
            b = BY_OWNER.remove(owner);
            if (b != null) {
                ALL.remove(b);
            }
        }
        if (b != null) {
            b.mount.remove();
            UiLog.i("declared panel unbound: " + b.owner.getClass().getSimpleName());
        }
    }

    static void unbind(String pluginId) {
        List<Binding> dead = new ArrayList<Binding>();
        synchronized (ALL) {
            for (int i = 0; i < ALL.size(); i++) {
                if (ALL.get(i).pluginId.equals(pluginId)) {
                    dead.add(ALL.get(i));
                }
            }
            for (int i = 0; i < dead.size(); i++) {
                ALL.remove(dead.get(i));
                BY_OWNER.remove(dead.get(i).owner);
            }
        }
        for (int i = 0; i < dead.size(); i++) {
            dead.get(i).mount.remove();
        }
    }

    /* ---------------------------------------------------------------- tick */

    static void tick(long frame) {
        synchronized (ALL) {
            if (ALL.isEmpty()) {
                return;
            }
            for (int i = 0; i < ALL.size(); i++) {
                Binding b = ALL.get(i);
                for (int j = 0; j < b.refreshers.size(); j++) {
                    try {
                        b.refreshers.get(j).apply(frame);
                    } catch (Throwable t) {
                        UiLog.e("declared refresh failed", t);
                    }
                }
            }
        }
    }

    /* -------------------------------------------------------------- builders */

    private static void addToggle(final Object owner, final Field f, RowToggle a, List<MenuElement> rows) {
        if (f.getType() != Boolean.TYPE && f.getType() != Boolean.class) {
            UiLog.w("RowToggle on non-boolean field " + f.getName());
            return;
        }
        UiToggle el = new UiToggle(a.label(), a.width(),
                new java.util.function.BooleanSupplier() {
                    @Override
                    public boolean getAsBoolean() {
                        try {
                            return f.getBoolean(owner);
                        } catch (Throwable t) {
                            return false;
                        }
                    }
                },
                new java.util.function.Consumer<Boolean>() {
                    @Override
                    public void accept(Boolean value) {
                        try {
                            f.setBoolean(owner, value != null && value.booleanValue());
                        } catch (Throwable t) {
                            UiLog.e("RowToggle write failed", t);
                        }
                    }
                });
        if (a.tooltip().length() > 0) {
            el.tooltip(Hover.of(a.tooltip()));
        }
        rows.add(el);
    }

    private static void addSlider(final Object owner, final Field f, RowSlider a, List<MenuElement> rows) {
        if (f.getType() != Integer.TYPE && f.getType() != Integer.class) {
            UiLog.w("RowSlider on non-int field " + f.getName());
            return;
        }
        int value;
        try {
            value = f.getInt(owner);
        } catch (Throwable t) {
            value = a.min();
        }
        final String label = a.label();
        UiSliderX el = new UiSliderX(label + ": " + value, a.width(), a.min(), a.max(), value);
        el.setText(label + ": " + value);
        el.onChange(new java.util.function.IntConsumer() {
            @Override
            public void accept(int v) {
                try {
                    f.setInt(owner, v);
                } catch (Throwable t) {
                    UiLog.e("RowSlider write failed", t);
                }
                el.setText(label + ": " + v);
            }
        });
        rows.add(el);
    }

    private static void addText(Object owner, final Field f, final RowText a, List<MenuElement> rows,
                                List<Refresh> refreshers) {
        final String prefix = a.prefix();
        String initial = prefix + read(f, owner);
        final UiText el = new UiText(initial, a.width());
        final int every = a.every() <= 0 ? 15 : a.every();
        refreshers.add(new Refresh() {
            private String last = null;

            @Override
            public void apply(long frame) {
                if (frame % every != 0L) {
                    return;
                }
                String now = prefix + read(f, ownerAt());
                if (!now.equals(last)) {
                    last = now;
                    el.setText(now);
                }
            }

            private Object ownerAt() {
                return owner;
            }
        });
        rows.add(el);
    }

    private static void addTextMethod(final Object owner, final Method m, final RowText a,
                                      List<MenuElement> rows, List<Refresh> refreshers) {
        if (m.getReturnType() != String.class) {
            UiLog.w("RowText method must return String: " + m.getName());
            return;
        }
        final String prefix = a.prefix();
        final UiText el = new UiText(prefix + call(m, owner), a.width());
        final int every = a.every() <= 0 ? 15 : a.every();
        refreshers.add(new Refresh() {
            private String last = null;

            @Override
            public void apply(long frame) {
                if (frame % every != 0L) {
                    return;
                }
                String now = prefix + call(m, owner);
                if (!now.equals(last)) {
                    last = now;
                    el.setText(now);
                }
            }
        });
        rows.add(el);
    }

    private static void addTitle(Object owner, Field f, RowTitle a, List<MenuElement> rows,
                                 List<Refresh> refreshers) {
        final UiHeading el = new UiHeading(read(f, owner), a.right(), 0, 0, 0);
        refreshTitle(el, read(f, owner), a.right());
        rows.add(el);
    }

    private static void addTitleMethod(final Object owner, final Method m, final RowTitle a,
                                       List<MenuElement> rows, List<Refresh> refreshers) {
        if (m.getReturnType() != String.class) {
            UiLog.w("RowTitle method must return String: " + m.getName());
            return;
        }
        final UiHeading el = new UiHeading(call(m, owner), a.right(), 0, 0, 0);
        refreshers.add(new Refresh() {
            private String last = null;

            @Override
            public void apply(long frame) {
                if (frame % 30 != 0L) {
                    return;
                }
                String now = call(m, owner);
                if (!now.equals(last)) {
                    last = now;
                    refreshTitle(el, now, a.right());
                }
            }
        });
        rows.add(el);
    }

    private static void refreshTitle(UiHeading el, String title, String right) {
        try {
            el.setText(title);
            if (right != null && right.length() > 0) {
                el.right(right);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void addButton(final Object owner, final Method m, RowButton a, List<MenuElement> rows) {
        if (m.getParameterTypes().length != 0) {
            UiLog.w("RowButton method must take no arguments: " + m.getName());
            return;
        }
        MenuElement el;
        if (a.icon() != null && a.icon().length() > 0) {
            el = new UiIconButton(a.label(), a.icon(), a.width())
                    .onClick(invoker(m, owner));
        } else {
            el = new UiButton(a.label(), a.width())
                    .onClick(invoker(m, owner));
        }
        if (a.height() > 0) {
            el.setHeight(a.height());
        }
        if (a.tooltip() != null && a.tooltip().length() > 0) {
            el.menuElementHover = Hover.of(a.tooltip()).build();
        }
        rows.add(el);
    }

    private static Runnable invoker(final Method m, final Object owner) {
        return new Runnable() {
            @Override
            public void run() {
                try {
                    m.invoke(owner);
                } catch (Throwable t) {
                    UiLog.e("RowButton '" + m.getName() + "' failed", t);
                }
            }
        };
    }

    /* --------------------------------------------------------------- helpers */

    private static String read(Field f, Object owner) {
        try {
            Object v = f.get(owner);
            return v == null ? "" : String.valueOf(v);
        } catch (Throwable t) {
            return "";
        }
    }

    private static String call(Method m, Object owner) {
        try {
            Object v = m.invoke(owner);
            return v == null ? "" : String.valueOf(v);
        } catch (Throwable t) {
            return "";
        }
    }
}
