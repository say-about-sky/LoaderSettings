package com.saysky.ui.kit;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.MenuElement;

/**
 * Reflection bridge to the parts of the native menu model that are private
 * ({@code MenuManager.menus}, {@code Menu.menuElements}, {@code Menu.iMenuElementsSize}).
 *
 * <p>Everything is cached and guarded: a failure returns null/0 and logs once, it never
 * propagates into the game loop.</p>
 */
final class UiRef {

    private static Field fMenus;
    private static Field fElements;
    private static Field fCount;
    private static Field fViewId;
    private static Field fScrollMax;
    private static Field fScrollableY;
    private static Field fScrollableX;
    private static boolean elementsWarned;
    private static boolean menusWarned;

    private UiRef() {
    }

    /* --------------------------------------------------------- views/menus */

    static Field field(Class<?> owner, String name) throws NoSuchFieldException {
        Field f = owner.getDeclaredField(name);
        f.setAccessible(true);
        return f;
    }

    @SuppressWarnings("unchecked")
    static List<List<Menu>> views() {
        try {
            if (fMenus == null) {
                fMenus = field(MenuManager.class, "menus");
            }
            Object all = Game.menuManager == null ? null : fMenus.get(Game.menuManager);
            if (all instanceof List) {
                return (List<List<Menu>>) all;
            }
        } catch (Throwable t) {
            if (!menusWarned) {
                menusWarned = true;
                UiLog.e("views() failed", t);
            }
        }
        return null;
    }

    static List<Menu> view(int index) {
        List<List<Menu>> all = views();
        if (all == null || index < 0 || index >= all.size()) {
            return null;
        }
        return all.get(index);
    }

    /** Index of the currently shown view, or -1. */
    static int currentView() {
        try {
            if (Game.menuManager == null) {
                return -1;
            }
            List<Menu> active = Game.menuManager.getActiveMenu();
            if (active == null) {
                return -1;
            }
            List<List<Menu>> all = views();
            if (all != null) {
                for (int i = 0; i < all.size(); i++) {
                    if (all.get(i) == active) {
                        return i;
                    }
                }
            }
            if (fViewId == null) {
                fViewId = field(MenuManager.class, "viewID");
            }
            return fViewId.getInt(Game.menuManager);
        } catch (Throwable ignored) {
            return -1;
        }
    }

    /** Last value seen by {@link #viewChanged()}. */
    private static int lastViewSeen = Integer.MIN_VALUE;

    /**
     * True once each time the visible view changes (view switch, returning to the main
     * menu, loading a save…). Pages are rebuilt on those transitions, so the mount engine
     * uses it to sweep immediately instead of waiting for its periodic pass.
     */
    static boolean viewChanged() {
        int v = currentView();
        if (v != lastViewSeen) {
            lastViewSeen = v;
            return true;
        }
        return false;
    }

    /** Every menu instance of every view (identity-deduplicated). */
    static List<Menu> allMenus() {
        List<Menu> out = new ArrayList<Menu>();
        List<List<Menu>> all = views();
        if (all == null) {
            return out;
        }
        for (int v = 0; v < all.size(); v++) {
            List<Menu> list = all.get(v);
            if (list == null) {
                continue;
            }
            for (int i = 0; i < list.size(); i++) {
                Menu m = list.get(i);
                if (m != null && !containsIdentity(out, m)) {
                    out.add(m);
                }
            }
        }
        return out;
    }

    /* ------------------------------------------------------------- elements */

    @SuppressWarnings("unchecked")
    static List<MenuElement> elements(Menu menu) {
        try {
            if (fElements == null) {
                fElements = field(Menu.class, "menuElements");
            }
            Object list = fElements.get(menu);
            if (list instanceof List) {
                return (List<MenuElement>) list;
            }
        } catch (Throwable t) {
            if (!elementsWarned) {
                elementsWarned = true;
                UiLog.e("elements() failed", t);
            }
        }
        return null;
    }

    /**
     * Syncs {@code Menu.iMenuElementsSize} with the real list size.
     * Vanilla {@code Menu.drawMenuElements} iterates this counter, not {@code list.size()}.
     */
    static void syncSize(Menu menu) {
        try {
            List<MenuElement> els = elements(menu);
            if (els == null) {
                return;
            }
            if (fCount == null) {
                fCount = field(Menu.class, "iMenuElementsSize");
            }
            fCount.setInt(menu, els.size());
        } catch (Throwable t) {
            if (!elementsWarned) {
                elementsWarned = true;
                UiLog.e("syncSize failed", t);
            }
        }
    }

    static boolean containsIdentity(List<?> list, Object o) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i) == o) {
                return true;
            }
        }
        return false;
    }

    /**
     * Extends the native vertical scroll range so content below the visible panel stays
     * reachable. This is the safe alternative to calling {@code updateScrollable()} on
     * someone else's menu (which marks edge elements as overflow and breaks full-screen
     * pages).
     */
    static void extendScrollRange(Menu menu, int contentBottom) {
        try {
            if (fScrollMax == null) {
                fScrollMax = field(Menu.class, "iMaxSliderPositionY");
            }
            int current = fScrollMax.getInt(menu);
            if (contentBottom > current) {
                fScrollMax.setInt(menu, contentBottom);
            }
            if (fScrollableY == null) {
                fScrollableY = field(Menu.class, "scrollableY");
            }
            fScrollableY.setBoolean(menu, true);
        } catch (Throwable t) {
            if (!elementsWarned) {
                elementsWarned = true;
                UiLog.e("extendScrollRange failed", t);
            }
        }
    }

    /* ------------------------------------------------------- full-screen pages */
    /**
     * True for menus that fill the screen (main menu, in-game map pages): their
     * {@code getHeight()} is {@code CFG.GAME_HEIGHT}, so they must never be turned into
     * scrollable menus, and their visible panel height lives in their own field.
     *
     * <p>Note the second condition: merely being tall is not enough. {@code InGame_Escape}
     * clamps its own height to {@code GAME_HEIGHT - titleHeight - menuY - 2*PADDING}, i.e.
     * it can come very close to full screen, yet it <b>must</b> keep the scrollbar behaviour
     * (extra rows scroll, the panel itself does not grow). Only a page that declares its own
     * {@code iHeight} (and therefore paints its panel from it) takes the grow path.</p>
     */
    static boolean fullscreen(Menu menu) {
        int gh = aoc.kingdoms.lukasz.jakowski.CFG.GAME_HEIGHT;
        if (gh <= 0 || menu == null) {
            return false;
        }
        if (menu.getHeight() < gh - Math.max(8, Theme.padding() * 2)) {
            return false;
        }
        return ownIntField(menu, "iHeight") != null || menu.getHeight() >= gh;
    }

    /**
     * Height of the <b>visible panel</b>. Some pages (e.g. {@code MainMenu}) draw their own
     * panel from a private {@code iHeight} field while the base class stays full-screen, so
     * growing {@code Menu.getHeight()} has no visual effect there.
     */
    static int panelHeight(Menu menu) {
        Integer own = ownIntField(menu, "iHeight");
        return own != null ? own.intValue() : menu.getHeight();
    }

    /** Grows the visible panel by {@code dy} (own field when the page has one). */
    static void growPanel(Menu menu, int dy) {
        if (dy <= 0) {
            return;
        }
        try {
            if (ownIntField(menu, "iHeight") != null) {
                setOwnIntField(menu, "iHeight", panelHeight(menu) + dy);
                return;
            }
            menu.setHeight(menu.getHeight() + dy);
        } catch (Throwable t) {
            UiLog.e("growPanel failed", t);
        }
    }

    /**
     * Keeps a full-screen page not scrollable. Vanilla computes this once in
     * {@code initMenu()}; appending rows makes edge elements overflow, and a single
     * recompute ({@code updateScrollable}) would make the whole page follow the drag.
     */
    static void pinNotScrollable(Menu menu) {
        try {
            if (fScrollableX == null) {
                fScrollableX = field(Menu.class, "scrollableX");
            }
            if (fScrollableX.getBoolean(menu)) {
                fScrollableX.setBoolean(menu, false);
            }
            if (fScrollableY == null) {
                fScrollableY = field(Menu.class, "scrollableY");
            }
            if (fScrollableY.getBoolean(menu)) {
                fScrollableY.setBoolean(menu, false);
            }
        } catch (Throwable t) {
            if (!elementsWarned) {
                elementsWarned = true;
                UiLog.e("pinNotScrollable failed", t);
            }
        }
    }

    private static Integer ownIntField(Menu menu, String name) {
        if (menu == null) {
            return null;
        }
        try {
            Field f = menu.getClass().getDeclaredField(name);
            if (f.getType() != Integer.TYPE) {
                return null;
            }
            f.setAccessible(true);
            return Integer.valueOf(f.getInt(menu));
        } catch (Throwable t) {
            return null;
        }
    }

    private static void setOwnIntField(Menu menu, String name, int value) {
        try {
            Field f = menu.getClass().getDeclaredField(name);
            f.setAccessible(true);
            f.setInt(menu, value);
        } catch (Throwable t) {
            UiLog.e("setOwnIntField failed", t);
        }
    }

    /* ------------------------------------------------- generic field access */

    /** Reads an {@code int} declared on the menu class itself, or {@code null}. */
    static Integer ownInt(Menu menu, String name) {
        return ownIntField(menu, name);
    }

    static void setOwnInt(Menu menu, String name, int value) {
        setOwnIntField(menu, name, value);
    }

    /** Reads an {@code int} from the first class in the hierarchy that declares it. */
    static int getInt(Menu menu, String name, int def) {
        if (menu == null) {
            return def;
        }
        try {
            for (Class<?> c = menu.getClass(); c != null; c = c.getSuperclass()) {
                try {
                    Field f = c.getDeclaredField(name);
                    if (f.getType() != Integer.TYPE) {
                        return def;
                    }
                    f.setAccessible(true);
                    return f.getInt(menu);
                } catch (NoSuchFieldException ignored) {
                }
            }
        } catch (Throwable t) {
            UiLog.e("getInt failed: " + name, t);
        }
        return def;
    }

    /** Writes an {@code int} to the first class in the hierarchy that declares it. */
    static void setInt(Menu menu, String name, int value) {
        if (menu == null) {
            return;
        }
        try {
            for (Class<?> c = menu.getClass(); c != null; c = c.getSuperclass()) {
                try {
                    Field f = c.getDeclaredField(name);
                    if (f.getType() != Integer.TYPE) {
                        return;
                    }
                    f.setAccessible(true);
                    f.setInt(menu, value);
                    return;
                } catch (NoSuchFieldException ignored) {
                }
            }
            UiLog.w("setInt: field not found " + name + " on " + menu.getClass().getName());
        } catch (Throwable t) {
            UiLog.e("setInt failed: " + name, t);
        }
    }

    static void setBool(Menu menu, String name, boolean value) {
        if (menu == null) {
            return;
        }
        try {
            for (Class<?> c = menu.getClass(); c != null; c = c.getSuperclass()) {
                try {
                    Field f = c.getDeclaredField(name);
                    if (f.getType() != Boolean.TYPE) {
                        return;
                    }
                    f.setAccessible(true);
                    f.setBoolean(menu, value);
                    return;
                } catch (NoSuchFieldException ignored) {
                }
            }
        } catch (Throwable t) {
            UiLog.e("setBool failed: " + name, t);
        }
    }
}
