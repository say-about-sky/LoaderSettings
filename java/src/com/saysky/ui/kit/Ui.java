package com.saysky.ui.kit;

import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;

/**
 * Entry point of the UI kit.
 *
 * <p>Two layers, both 1:1 with the game:</p>
 * <ol>
 *   <li><b>命令式</b> — build real native elements/menus:
 *       {@link #menu(String, String, int, int, int, int)}, {@link #button}, {@link #toggle},
 *       {@link #slider}, {@link #text}, {@link #heading}, {@link #desc}, {@link #iconButton},
 *       {@link #pie}, {@link #custom}, {@link #overlay}, {@link #mount}.</li>
 *   <li><b>声明式</b> — annotate a class and let the kit build+mount it:
 *       {@link #bind(Object)} with {@code @UiPanel/@UiButton/@UiToggle/@UiSlider/@UiText}.</li>
 * </ol>
 *
 * <p>Call {@link #install()} once from {@code HotPlugin.init}; it is idempotent and starts
 * the per-frame maintenance loop (mount self-healing, declarative refresh).</p>
 */
public final class Ui {

    private static volatile boolean driverStarted;
    private static volatile long frame;

    /** Tasks waiting for the font bake to finish (see {@link #onReady(Runnable)}). */
    private static final java.util.List<Runnable> READY_QUEUE =
            java.util.Collections.synchronizedList(new java.util.ArrayList<Runnable>());

    private Ui() {
    }

    /* -------------------------------------------------------------- lifecycle */

    /**
     * True once Polaris finished baking its fonts ({@code InitGame} step 5).
     *
     * <p>Creating a native control before that is unsafe: {@code ButtonGame2} caches the
     * font index it is given at construction time, and during cold start those indices
     * still point at the temporary {@code loadFont(font, "A")} placeholder from
     * {@code AA_Game.create()} — the row then renders with a letters-only font for the
     * rest of the session. Always check this (or use {@link #onReady}) before building
     * elements.</p>
     */
    public static boolean ready() {
        return UiFont.ready();
    }

    /**
     * Runs {@code task} on the GL thread once {@link #ready()} is true.
     *
     * <p>This is the safe place for plugins that must build native elements themselves
     * (instead of the deferred {@code UiMount.addRow}/{@code UiMount.block} factories).
     * Resource overrides, config loading and data parsing do <b>not</b> belong here —
     * they are supposed to run early, in {@code HotPlugin.init}.</p>
     */
    public static void onReady(Runnable task) {
        if (task == null) {
            return;
        }
        if (ready()) {
            post(task);
            return;
        }
        READY_QUEUE.add(task);
        install();
    }

    /** Drains {@link #onReady} tasks; called from {@link #loop()} on the GL thread. */
    private static void flushReady() {
        while (true) {
            Runnable r = null;
            synchronized (READY_QUEUE) {
                if (!READY_QUEUE.isEmpty()) {
                    r = READY_QUEUE.remove(0);
                }
            }
            if (r == null) {
                return;
            }
            try {
                r.run();
            } catch (Throwable t) {
                UiLog.e("onReady task failed", t);
            }
        }
    }

    /** Starts the maintenance loop (safe to call many times, from any thread). */
    public static void install() {
        if (driverStarted) {
            return;
        }
        synchronized (Ui.class) {
            if (driverStarted) {
                return;
            }
            try {
                if (Gdx.app == null) {
                    UiLog.w("install: Gdx.app is null, will retry on first tick request");
                    return;
                }
                driverStarted = true;
                Gdx.app.postRunnable(new Runnable() {
                    @Override
                    public void run() {
                        loop();
                    }
                });
                UiLog.i("kit installed");
            } catch (Throwable t) {
                UiLog.e("install failed", t);
                driverStarted = false;
            }
        }
    }

    private static void loop() {
        frame++;
        try {
            // Font gate: the hot loader starts before Polaris bakes its fonts, and creating
            // native controls during that window corrupts CFG.FONT_* (see UiFont.ready()).
            // Until the bake is done we only spin, never create or mount anything.
            if (!UiFont.ready()) {
                if (frame % 120 == 0L) {
                    UiLog.i("kit waiting for fonts (frame=" + frame + ")");
                }
                repost();
                return;
            }
            flushReady();
            // Every frame: the mount engine re-derives each row from its anchor and corrects
            // any drift. Sweeping every 2nd frame (plus immediately on view changes) keeps a
            // rebuilt page from animating in without us.
            UiMount.tick();
            UiDecl.tick(frame);
        } catch (Throwable t) {
            UiLog.e("loop failed", t);
        }
        repost();
    }

    private static void repost() {
        try {
            if (Gdx.app != null) {
                Gdx.app.postRunnable(new Runnable() {
                    @Override
                    public void run() {
                        loop();
                    }
                });
            } else {
                driverStarted = false;
            }
        } catch (Throwable t) {
            driverStarted = false;
            UiLog.e("loop re-post failed", t);
        }
    }

    public static long frames() {
        return frame;
    }

    public static void post(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        try {
            if (Gdx.app != null) {
                Gdx.app.postRunnable(runnable);
            }
        } catch (Throwable t) {
            UiLog.e("post failed", t);
        }
    }

    public static void log(String msg) {
        UiLog.i(msg);
    }

    /* ------------------------------------------------------------------ toast */

    public static void toast(String text) {
        try {
            if (Game.menuManager != null) {
                Game.menuManager.addToast(text);
            }
        } catch (Throwable t) {
            UiLog.e("toast failed", t);
        }
    }

    public static void toastError(String text) {
        try {
            if (Game.menuManager != null) {
                Game.menuManager.addToast_Error(text);
            }
        } catch (Throwable t) {
            toast(text);
        }
    }

    /* ------------------------------------------------------------ factories */

    public static Hover hover() {
        return Hover.create();
    }

    public static UiMenu menu(String id, String title, int x, int y, int width, int height) {
        return new UiMenu(id, title, x, y, width, height);
    }

    public static UiMenu panel(String title, int width) {
        int w = Math.min(width <= 0 ? Theme.leftMenuWidth() : width, Theme.gameWidth() - Theme.padding() * 3);
        int x = (Theme.gameWidth() - w) / 2;
        int y = Theme.titleHeight() + Theme.padding() * 2;
        /* Start at "title only": sync() grows the panel to the content height. A fixed
           half-screen height left a big empty area under the last button. */
        int h = Theme.titleHeight() + Theme.padding() * 3;
        return new UiMenu("panel", title, x, y, w, h);
    }

    public static UiOverlay overlay(String id) {
        return UiOverlay.fullscreen(id);
    }

    public static UiButton button(String text, int width) {
        return new UiButton(text, width <= 0 ? Theme.leftMenuWidth() - Theme.padding() * 2 : width);
    }

    public static UiMainButton mainButton(String text, int width) {
        return new UiMainButton(text, width <= 0 ? Theme.leftMenuWidth() - Theme.padding() * 2 : width);
    }

    public static UiIconButton iconButton(String text, String icon, int width) {
        return new UiIconButton(text, icon, width <= 0 ? Theme.leftMenuWidth() - Theme.padding() * 2 : width);
    }

    public static UiToggle toggle(String text, int width, BooleanSupplier getter, Consumer<Boolean> setter) {
        return new UiToggle(text, width <= 0 ? Theme.leftMenuWidth() - Theme.padding() * 2 : width, getter, setter);
    }

    public static UiToggle toggle(String text, int width, final boolean[] state) {
        return new UiToggle(text, width <= 0 ? Theme.leftMenuWidth() - Theme.padding() * 2 : width,
                new BooleanSupplier() {
                    @Override
                    public boolean getAsBoolean() {
                        return state.length > 0 && state[0];
                    }
                },
                new Consumer<Boolean>() {
                    @Override
                    public void accept(Boolean value) {
                        if (state.length > 0) {
                            state[0] = value != null && value.booleanValue();
                        }
                    }
                });
    }

    public static UiSliderX slider(String label, int width, int min, int max, int value, IntConsumer onChange) {
        UiSliderX s = new UiSliderX(label, width <= 0 ? Theme.leftMenuWidth() - Theme.padding() * 2 : width,
                min, max, value);
        return onChange == null ? s : s.onChange(onChange);
    }

    public static UiText text(String text, int width) {
        return new UiText(text, width);
    }

    public static UiHeading heading(String title, int width) {
        return new UiHeading(title, width);
    }

    public static UiDesc desc(String text, int width) {
        return new UiDesc(text, 0, 0, width);
    }

    public static UiIcon icon(String name, int size) {
        return new UiIcon(name, size);
    }

    public static UiSpace space(int height) {
        return new UiSpace(0, 0, height);
    }

    public static UiPie pie(int width, int height, float[] values, Color[] colors) {
        return new UiPie(0, 0, width, height, values, colors);
    }

    public static UiCustom custom(int width, int height) {
        return new UiCustom(0, 0, width, height);
    }

    /* --------------------------------------------------------------- mounting */

    public static UiMount mount(String pluginId, String pageIdOrClass, String anchorText) {
        install();
        return UiMount.on(pluginId, pageIdOrClass, anchorText);
    }

    public static UiMount mountFirst(String pluginId, String pageIdOrClass) {
        install();
        return UiMount.onFirst(pluginId, pageIdOrClass);
    }

    public static UiPage page(String pageIdOrClass) {
        return UiPage.of(pageIdOrClass);
    }

    public static void unmountPlugin(String pluginId) {
        UiMount.removePlugin(pluginId);
        UiDecl.unbind(pluginId);
    }

    /** Wraps any native element in the fluent handle. */
    public static MenuElement raw(MenuElement element) {
        return element;
    }

    /* ------------------------------------------------------------ declarative */

    /**
     * Scans {@code owner} for kit annotations and builds + mounts the described panel.
     *
     * @return number of created elements
     */
    public static int bind(Object owner) {
        install();
        return UiDecl.bind(owner);
    }

    public static void unbind(Object owner) {
        UiDecl.unbind(owner);
    }
}
