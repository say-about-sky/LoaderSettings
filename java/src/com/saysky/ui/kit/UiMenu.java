package com.saysky.ui.kit;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.MenuElement;

/**
 * A real native {@code Menu} owned by a plugin.
 *
 * <p>It is not a wrapper: it <b>is</b> a game menu, so {@code MenuManager} draws it,
 * hit-tests it, scrolls it and stacks it exactly like a vanilla page. The kit only adds
 * list bookkeeping (the pitfall that makes hand-made menus invisible:
 * {@code iMenuElementsSize} is a separate field, not {@code list.size()}).</p>
 *
 * <pre>{@code
 * UiMenu panel = new UiMenu("demo", "Demo", 300, 200);
 * panel.add(new UiHeading("General", 260).at(10, 10));
 * panel.add(new UiButton("Click me", 260).at(10, 60).onClick(() -> Ui.toast("hi")));
 * panel.show();
 * }</pre>
 */
public class UiMenu extends Menu {

    /** Grow the visible panel when content fits (main-menu style). */
    public static final int FIT = 0;
    /** Grow the panel if possible, otherwise extend the scroll range. */
    public static final int SCROLL = 1;
    /** Never touch panel height or scroll range (full-screen pages). */
    public static final int FIXED = 2;

    private final String id;
    private final List<MenuElement> contents = new ArrayList<MenuElement>();
    private final int kind;
    private int openIndex = -1;

    public UiMenu(String id, String title, int x, int y, int width, int height) {
        this(id, title, x, y, width, height, SCROLL);
    }

    public UiMenu(String id, String title, int x, int y, int width, int height, int kind) {
        super();
        this.id = id == null ? "menu" : id;
        this.kind = kind;
        MenuTitle t = title == null ? null : new MenuTitle(title, 1.0f, Theme.titleHeight(), false, true);
        /* closeable = (title != null): a titled menu gets the native X in the title bar
           (Menu.endClip -> drawCloseButton, MenuManager hit-tests it). Without it a panel
           can never be dismissed — that was the "Web UI 面板关不掉" bug. */
        initMenu(t, x, y, width, height, contents, true, false, t != null, false);
    }

    public String id() {
        return id;
    }

    /** Live list — the same object the native {@code Menu} iterates. */
    public List<MenuElement> elements() {
        return contents;
    }

    public UiMenu add(MenuElement element) {
        if (element != null && !UiRef.containsIdentity(contents, element)) {
            contents.add(element);
            sync();
        }
        return this;
    }

    public UiMenu addAll(MenuElement... elements) {
        if (elements != null) {
            addAll(Arrays.asList(elements));
        }
        return this;
    }

    public UiMenu addAll(List<? extends MenuElement> elements) {
        if (elements != null) {
            for (int i = 0; i < elements.size(); i++) {
                MenuElement e = elements.get(i);
                if (e != null && !UiRef.containsIdentity(contents, e)) {
                    contents.add(e);
                }
            }
            sync();
        }
        return this;
    }

    public UiMenu remove(MenuElement element) {
        if (element != null) {
            for (int i = 0; i < contents.size(); i++) {
                if (contents.get(i) == element) {
                    contents.remove(i);
                    sync();
                    break;
                }
            }
        }
        return this;
    }

    public UiMenu clear() {
        contents.clear();
        sync();
        return this;
    }

    /**
     * Syncs the native bookkeeping after a structural change: element count, per-element
     * {@code isInView}, and the panel/scroll range decision.
     *
     * <p>Safe to call as often as you like; it is O(elements).</p>
     */
    public UiMenu sync() {
        try {
            UiRef.syncSize(this);
            /* Self-painted elements (overlays, HUDs) are often created with zero geometry:
               MenuElement.isInView is geometry based, so such an element would never be
               drawn. Fill the menu area for them before the in-view pass. */
            for (int i = 0; i < contents.size(); i++) {
                MenuElement e = contents.get(i);
                if (e == null) {
                    continue;
                }
                if (e.getWidth() <= 0) {
                    e.setWidth(Math.max(1, getWidth()));
                }
                if (e.getHeight() <= 0) {
                    e.setHeight(kind == FIXED ? Math.max(1, getHeight()) : Theme.buttonHeight());
                }
                if (e.getPosX() < 0) {
                    e.setPosX(0);
                }
                if (e.getPosY() < 0) {
                    e.setPosY(0);
                }
            }
            updateMenuElements_IsInView();
            int contentBottom = contentBottom();
            if (kind == FIT) {
                if (contentBottom + Theme.padding() > getHeight()) {
                    setHeight(contentBottom + Theme.padding());
                }
            } else if (kind == SCROLL) {
                int wanted = contentBottom + Theme.padding();
                if (wanted > getHeight()) {
                    if (getPosY() + wanted <= Theme.gameHeight() - Theme.padding()) {
                        setHeight(wanted);
                        /* Growing the panel after the in-view pass leaves every element
                           "out of view" and keeps a stale scroll range around. */
                        UiRef.setBool(this, "scrollableY", false);
                        UiRef.setBool(this, "scrollableX", false);
                        UiRef.setInt(this, "iMaxSliderPositionY", wanted);
                        updateMenuElements_IsInView();
                    } else {
                        UiRef.extendScrollRange(this, wanted);
                    }
                }
            }
        } catch (Throwable t) {
            UiLog.e("menu sync failed (" + id + ")", t);
        }
        return this;
    }

    /** Bottom edge of the content, in menu coordinates. */
    public int contentBottom() {
        int max = 0;
        for (int i = 0; i < contents.size(); i++) {
            MenuElement e = contents.get(i);
            int bottom = e.getPosY() + e.getHeight();
            if (bottom > max) {
                max = bottom;
            }
        }
        return max;
    }

    /** Vertically stacks the given elements top-down starting at {@code y}, returns the next y. */
    public static int stack(List<? extends MenuElement> elements, int x, int y, int width) {
        int cy = y;
        for (int i = 0; i < elements.size(); i++) {
            MenuElement e = elements.get(i);
            if (e == null) {
                continue;
            }
            if (width > 0 && e.getWidth() <= 0) {
                e.setWidth(width);
            }
            e.setPosX(e.getPosX() == 0 ? x : e.getPosX());
            e.setPosY(cy);
            cy += e.getHeight() + Theme.padding();
        }
        return cy;
    }

    /* ------------------------------------------------------------ lifecycle */

    /** Adds this menu on top of the current view and shows it. */
    public boolean show() {
        return show(UiRef.currentView());
    }

    /**
     * Adds this menu on top of an explicit view ({@code MenuManager.IN_GAME}, `MAINMENU`,
     * …) and shows it. Use this for overlays that must live in a view that is not the one
     * currently displayed (an in-game overlay mounted from the main menu).
     */
    public boolean show(int viewIndex) {
        try {
            if (Game.menuManager == null) {
                return false;
            }
            ensureBounds();
            int view = viewIndex;
            if (view < 0) {
                view = UiRef.currentView();
            }
            if (view < 0) {
                UiLog.w("show: no valid view for " + id);
                return false;
            }
            if (openIndex >= 0) {
                List<Menu> list = UiRef.view(view);
                if (list != null && openIndex < list.size() && list.get(openIndex) == this) {
                    setVisible(true);
                    Game.menuManager.setOrderOfMenu(openIndex);
                    return true;
                }
            }
            openIndex = Game.menuManager.addNextMenuToView(view, this);
            Game.menuManager.setOrderOfMenu(openIndex);
            setVisible(true);
            UiLog.i("menu shown: " + id + " view=" + view + " index=" + openIndex);
            return true;
        } catch (Throwable t) {
            UiLog.e("show failed (" + id + ")", t);
            return false;
        }
    }

    public void hide() {
        try {
            setVisible(false);
        } catch (Throwable ignored) {
        }
    }

    /**
     * Re-initialises the menu geometry (same element list, same title).
     * Used when a menu was built before {@code CFG.GAME_WIDTH/HEIGHT} were available.
     */
    protected final void applyBounds(int x, int y, int width, int height) {
        try {
            MenuTitle t = getTitle();
            initMenu(t, x, y, width, height, contents, true, false, t != null, false);
        } catch (Throwable t) {
            UiLog.e("applyBounds failed (" + id + ")", t);
        }
    }

    /** Rebuilds 0/1-size menus with the real screen size (hot plugins load very early). */
    protected final void ensureBounds() {
        if (getWidth() > 1 && getHeight() > 1) {
            return;
        }
        applyBounds(0, 0, Theme.gameWidth(), Theme.gameHeight());
        UiLog.i("bounds rebuilt: " + id + " -> " + getWidth() + "x" + getHeight());
    }

    public boolean shown() {
        try {
            return getVisible();
        } catch (Throwable t) {
            return false;
        }
    }
}
