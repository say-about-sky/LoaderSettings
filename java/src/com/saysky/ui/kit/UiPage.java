package com.saysky.ui.kit;

import java.util.ArrayList;
import java.util.List;

import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.MenuElement;

/**
 * A handle on an <b>existing</b> game page (someone else's {@code Menu} instance).
 *
 * <p>Used by {@link UiMount} to insert plugin elements into vanilla pages. Page instances
 * are looked up by exact class name across all views, so it also survives view switches
 * and page rebuilds (each rebuild creates a new instance, which is re-found here).</p>
 */
public final class UiPage {

    /** Anchor by the element's text ({@code getText()} value). */
    public static final int ANCHOR_TEXT = 0;
    /** Anchor by first element. */
    public static final int ANCHOR_FIRST = 1;
    /** Anchor by last element. */
    public static final int ANCHOR_LAST = 2;

    private final String className;

    private UiPage(String className) {
        this.className = className;
    }

    /** Accepts a short page id ({@link Pages}) or a fully qualified menu class name. */
    public static UiPage of(String pageIdOrClass) {
        return new UiPage(Pages.resolve(pageIdOrClass));
    }

    public static UiPage ofClass(String className) {
        return new UiPage(className);
    }

    public String className() {
        return className;
    }

    /** Every live instance, current view first. */
    public List<Menu> instances() {
        List<Menu> out = new ArrayList<Menu>();
        if (className == null) {
            return out;
        }
        List<Menu> all = UiRef.allMenus();
        int current = UiRef.currentView();
        List<Menu> currentMenus = UiRef.view(current);
        if (currentMenus != null) {
            for (int i = 0; i < currentMenus.size(); i++) {
                Menu m = currentMenus.get(i);
                if (m != null && className.equals(m.getClass().getName())) {
                    out.add(m);
                }
            }
        }
        for (int i = 0; i < all.size(); i++) {
            Menu m = all.get(i);
            if (m != null && className.equals(m.getClass().getName()) && !UiRef.containsIdentity(out, m)) {
                out.add(m);
            }
        }
        return out;
    }

    /** The page instance that is most likely on screen (current view, else first visible). */
    public Menu menu() {
        List<Menu> list = instances();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getVisible()) {
                return list.get(i);
            }
        }
        return list.isEmpty() ? null : list.get(0);
    }

    public boolean exists() {
        return !instances().isEmpty();
    }

    public List<MenuElement> elements() {
        Menu m = menu();
        return m == null ? null : UiRef.elements(m);
    }

    /** Resolves the anchor element of a menu instance (never throws). */
    public static MenuElement anchor(Menu menu, String anchorText, int mode) {
        List<MenuElement> els = UiRef.elements(menu);
        if (els == null || els.isEmpty()) {
            return null;
        }
        if (mode == ANCHOR_FIRST) {
            return els.get(0);
        }
        if (mode == ANCHOR_LAST) {
            return els.get(els.size() - 1);
        }
        String wanted = anchorText == null ? null : anchorText.trim();
        for (int i = 0; i < els.size(); i++) {
            if (matches(els.get(i), wanted, true)) {
                return els.get(i);
            }
        }
        for (int i = 0; i < els.size(); i++) {
            if (matches(els.get(i), wanted, false)) {
                return els.get(i);
            }
        }
        return null;
    }

    private static boolean matches(MenuElement e, String wanted, boolean exact) {
        if (e == null || wanted == null || wanted.length() == 0) {
            return false;
        }
        String text;
        try {
            text = e.getText();
        } catch (Throwable t) {
            return false;
        }
        if (text == null) {
            return false;
        }
        return exact ? wanted.equals(text) : text.toLowerCase().contains(wanted.toLowerCase());
    }

    /* ------------------------------------------------------- real row geometry */

    /**
     * True when the element is a title bar / full-width band rather than a normal
     * content row. Vanilla pages start with such a band, so it must never be used as the
     * column geometry for inserted rows.
     */
    public static boolean titleLike(MenuElement e, int menuWidth) {
        if (e == null) {
            return true;
        }
        String cls = e.getClass().getName();
        if (cls.indexOf("Title") >= 0) {
            return true;
        }
        return menuWidth > 0 && e.getWidth() >= menuWidth - 2;
    }

    /**
     * The "real" row column: the {@code (x, width)} pair used by most content rows of the
     * page (vanilla buttons are inset by {@code paddingLeft} and share one width).
     *
     * @return {@code {x, width}} or {@code null} when the page has no content row
     */
    public static int[] dominantRow(List<MenuElement> els, int menuWidth) {
        if (els == null || els.isEmpty()) {
            return null;
        }
        java.util.HashMap<String, Integer> votes = new java.util.HashMap<String, Integer>();
        java.util.HashMap<String, int[]> rects = new java.util.HashMap<String, int[]>();
        String best = null;
        int bestVotes = 0;
        for (int i = 0; i < els.size(); i++) {
            MenuElement e = els.get(i);
            if (e == null || titleLike(e, menuWidth) || e.getWidth() < 64 || e.getHeight() <= 0) {
                continue;
            }
            String key = e.getPosX() + ":" + e.getWidth();
            Integer n = votes.get(key);
            int v = n == null ? 1 : n.intValue() + 1;
            votes.put(key, Integer.valueOf(v));
            if (!rects.containsKey(key)) {
                rects.put(key, new int[]{e.getPosX(), e.getWidth()});
            }
            if (v > bestVotes) {
                bestVotes = v;
                best = key;
            } else if (v == bestVotes && best != null) {
                int[] a = rects.get(key);
                int[] b = rects.get(best);
                if (a != null && b != null && a[1] > b[1]) {
                    best = key;
                }
            }
        }
        return best == null ? null : rects.get(best);
    }

    /**
     * The element that the dominant row refers to: first one when inserting below,
     * last one when inserting above.
     */
    public static MenuElement dominantRowAnchor(List<MenuElement> els, int menuWidth, boolean first) {
        int[] rect = dominantRow(els, menuWidth);
        if (rect == null) {
            return null;
        }
        MenuElement found = null;
        for (int i = 0; i < els.size(); i++) {
            MenuElement e = els.get(i);
            if (e == null || titleLike(e, menuWidth) || e.getWidth() < 64) {
                continue;
            }
            if (e.getPosX() == rect[0] && e.getWidth() == rect[1]) {
                found = e;
                if (first) {
                    return e;
                }
            }
        }
        return found;
    }
}
