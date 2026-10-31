package com.saysky.ui.kit;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import aoc.kingdoms.lukasz.jakowski.CFG;

/**
 * 1:1 view of the native layout constants ({@code CFG}) plus icon-name lookup.
 *
 * <p>These are the same numbers the vanilla pages use, so kit-built panels look
 * identical to the base game.</p>
 */
public final class Theme {

    private static final Map<String, Field> ICONS = new HashMap<String, Field>();
    private static final String IMAGES = "aoc.kingdoms.lukasz.textures.Images";
    private static final String[] FALLBACKS = {"settings", "x", "world", "time"};
    private static boolean fontWarned;

    private Theme() {
    }

    /* ------------------------------------------------------------ geometry */

    public static int padding() {
        return Math.max(2, CFG.PADDING);
    }

    public static int buttonHeight() {
        return CFG.BUTTON_HEIGHT > 0 ? CFG.BUTTON_HEIGHT : 68;
    }

    public static int buttonHeight2() {
        return CFG.BUTTON_HEIGHT2 > 0 ? CFG.BUTTON_HEIGHT2 : buttonHeight();
    }

    public static int buttonHeight4() {
        return CFG.BUTTON_HEIGHT4 > 0 ? CFG.BUTTON_HEIGHT4 : buttonHeight();
    }

    public static int textHeight() {
        return CFG.TEXT_HEIGHT > 0 ? CFG.TEXT_HEIGHT : 18;
    }

    /** Height of a native title bar ({@code MenuTitle} default look). */
    public static int titleHeight() {
        return Math.max(textHeight() + padding() * 4, buttonHeight2());
    }

    public static int gameWidth() {
        return CFG.GAME_WIDTH;
    }

    public static int gameHeight() {
        return CFG.GAME_HEIGHT;
    }

    public static int leftMenuWidth() {
        return CFG.LEFT_MENU_WIDTH > 0 ? CFG.LEFT_MENU_WIDTH : Math.max(220, CFG.GAME_WIDTH / 3);
    }

    /* ---------------------------------------------------------------- font */

    public static int fontRegular() {
        warnIfNotReady("fontRegular");
        return CFG.FONT_REGULAR;
    }

    public static int fontBold() {
        warnIfNotReady("fontBold");
        return CFG.FONT_BOLD;
    }

    /**
     * Diagnoses the #1 cause of "all Chinese vanished": an element was constructed while
     * {@code InitGame} had not baked the real fonts yet, so it cached the index of the
     * temporary {@code loadFont(font, "A")} placeholder. {@code ButtonGame2} keeps that
     * index forever. Behaviour is unchanged on purpose — only the log helps.
     */
    private static void warnIfNotReady(String what) {
        if (fontWarned) {
            return;
        }
        try {
            if (!UiFont.ready()) {
                fontWarned = true;
                UiLog.w("Theme." + what + " used before fonts are baked - the element keeps a"
                        + " wrong font index; build elements in UiMount.addRow/Ui.block or"
                        + " Ui.onReady instead of HotPlugin.init");
            }
        } catch (Throwable ignored) {
        }
    }

    public static int fontSmall() {
        return CFG.FONT_REGULAR_SMALL;
    }

    /* ---------------------------------------------------------------- icons */

    /** Resolves a logical icon name to the native {@code Images} id (never throws). */
    public static int icon(String name) {
        int id = lookup(name);
        if (id >= 0) {
            return id;
        }
        for (int i = 0; i < FALLBACKS.length; i++) {
            id = lookup(FALLBACKS[i]);
            if (id >= 0) {
                return id;
            }
        }
        return 0;
    }

    private static int lookup(String name) {
        if (name == null || name.length() == 0) {
            return -1;
        }
        try {
            Field f;
            synchronized (ICONS) {
                f = ICONS.get(name);
                if (f == null) {
                    Class<?> c = Class.forName(IMAGES);
                    f = c.getField(name);
                    ICONS.put(name, f);
                }
            }
            return f.getInt(null);
        } catch (Throwable t) {
            return -1;
        }
    }
}
