package com.saysky.ui;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/**
 * Resolves logical icon names ("settings", "development", ...) to the game's
 * {@code Images} int constants. Kept out of the public API so plugins do not need
 * game classes on their compile classpath.
 */
final class UiIcons {

    private static final Map<String, Field> CACHE = new HashMap<String, Field>();
    private static final String IMAGES = "aoc.kingdoms.lukasz.textures.Images";
    private static final String[] FALLBACKS = {
            "settings", "x", "development", "world", "time"
    };

    private UiIcons() {
    }

    static int resolve(String name) {
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
            synchronized (CACHE) {
                f = CACHE.get(name);
                if (f == null) {
                    Class<?> c = Class.forName(IMAGES);
                    f = c.getField(name);
                    CACHE.put(name, f);
                }
            }
            return f.getInt(null);
        } catch (Throwable ignored) {
            return -1;
        }
    }
}
