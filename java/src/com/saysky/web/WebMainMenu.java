package com.saysky.web;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.textures.Images;

/**
 * Injects one native button into the main menu (same approach as the HotPluginLoader
 * MainMenuMount: append element, shift the rows below, pin scroll flags, self-heal).
 */
public final class WebMainMenu {

    private static final Map<String, Field> FIELDS = new HashMap<String, Field>();
    /** How long we wait for the HotPluginLoader row before falling back to LoadGame. */
    private static final long LOADER_WAIT_MS = 1500L;
    /** Menus whose own iHeight we already grew (never grow twice on repair). */
    private static final Map<Menu, Boolean> GROWN = new java.util.WeakHashMap<Menu, Boolean>();
    private static long firstTickMs;
    private static Menu lastTop;

    private WebMainMenu() {
    }

    private static boolean isMainMenu(Menu m) {
        return m != null && "aoc.kingdoms.lukasz.menus.MainMenu".equals(m.getClass().getName());
    }

    private static List<Menu> collectMainMenus(List<Menu> active) {
        ArrayList<Menu> out = new ArrayList<Menu>();
        if (active != null) {
            for (int i = 0; i < active.size(); i++) {
                Menu m = active.get(i);
                if (isMainMenu(m)) {
                    out.add(m);
                }
            }
        }
        return out;
    }

    /**
     * The visible MainMenu that is highest in MenuManager.orderOfMenu.
     * Multiple MainMenu instances can coexist on Android after a rebuild; injecting
     * into the wrong instance leaves the button outside the visible panel.
     */
    @SuppressWarnings("unchecked")
    private static Menu topMainMenu(List<Menu> active, List<Menu> mainMenus) {
        try {
            Object orderObj = field(MenuManager.class, "orderOfMenu").get(Game.menuManager);
            List<List<Integer>> allOrder = (List<List<Integer>>) orderObj;
            int view = currentViewIndex();
            if (view >= 0 && view < allOrder.size()) {
                List<Integer> order = allOrder.get(view);
                for (int i = 0; i < order.size(); i++) {
                    int id = order.get(i).intValue();
                    if (id < 0 || id >= active.size()) {
                        continue;
                    }
                    Menu m = active.get(id);
                    if (m != null && mainMenus.contains(m) && m.getVisible()) {
                        return m;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        for (int i = mainMenus.size() - 1; i >= 0; i--) {
            if (mainMenus.get(i).getVisible()) {
                return mainMenus.get(i);
            }
        }
        return mainMenus.isEmpty() ? null : mainMenus.get(mainMenus.size() - 1);
    }

    private static List<Menu> activeMenu() {
        try {
            return Game.menuManager == null ? null : Game.menuManager.getActiveMenu();
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** Index of the current view in MenuManager.menus (reflection; -1 if unknown). */
    @SuppressWarnings("unchecked")
    static int currentViewIndex() {
        try {
            List<Menu> active = activeMenu();
            if (active == null) {
                return -1;
            }
            Object menus = field(MenuManager.class, "menus").get(Game.menuManager);
            List<List<Menu>> all = (List<List<Menu>>) menus;
            for (int i = 0; i < all.size(); i++) {
                if (all.get(i) == active) {
                    return i;
                }
            }
        } catch (Throwable ignored) {
        }
        return -1;
    }

    /** Called every frame; injects into every MainMenu instance and shows the button only on the top one. */
    public static void tick() {
        List<WebCore.ButtonRequest> requests = WebCore.buttons();
        if (requests.isEmpty()) {
            return;
        }
        List<Menu> active = activeMenu();
        List<Menu> mainMenus = collectMainMenus(active);
        if (mainMenus.isEmpty()) {
            return;
        }
        Menu top = topMainMenu(active, mainMenus);
        if (top != lastTop) {
            lastTop = top;
            firstTickMs = System.currentTimeMillis();
        }
        for (int i = 0; i < mainMenus.size(); i++) {
            Menu menu = mainMenus.get(i);
            List<MenuElement> elements = elements(menu);
            if (elements == null || elements.isEmpty()) {
                continue;
            }
            boolean isTop = menu == top;
            for (int j = 0; j < requests.size(); j++) {
                WebCore.ButtonRequest request = requests.get(j);
                MenuElement existing = findByText(elements, request.text);
                if (existing != null) {
                    try {
                        existing.setVisible(isTop);
                        if (isTop) {
                            existing.setIsInView(true);
                            enforceGeometry(menu, elements, existing);
                        }
                    } catch (Throwable ignored) {
                    }
                    continue;
                }
                if (isTop) {
                    inject(menu, request, elements, requests);
                    WebCore.log("main menu button mounted: " + request.text);
                }
            }
        }
    }

    private static boolean inject(Menu menu, final WebCore.ButtonRequest request,
                                  List<MenuElement> elements, List<WebCore.ButtonRequest> requests) {
        try {
            if (elements == null || elements.isEmpty() || findByText(elements, request.text) != null) {
                return true;
            }

            /* The HotPluginLoader mounts its gear + "附加包" row a few frames after the
             * MainMenu appears. Injecting before that creates a button that sits on the
             * very same row (loadGame.bottom + padding == loader row) and double-shifts
             * every row below -> the empty gap seen on device. Wait for it. */
            MenuElement loaderRow = findLoaderRow(elements);
            MenuElement loadGame = findByText(elements, lang("LoadGame"));
            if (loaderRow == null && firstTickMs != 0L
                    && System.currentTimeMillis() - firstTickMs < LOADER_WAIT_MS) {
                return false;
            }

            int[] row = rowRect(elements, loaderRow, loadGame);
            if (row == null) {
                WebCore.log("inject: no usable anchor (loader=" + (loaderRow != null)
                        + " loadGame=" + (loadGame != null) + ")");
                return false;
            }
            final int rowX = row[0];
            final int rowW = row[1];
            final int anchorBottom = row[2];
            final int rowY = anchorBottom + CFG.PADDING * 2;

            WebCore.log("inject menu=" + System.identityHashCode(menu)
                    + " menuPos=" + menu.getMenuPosX() + "," + menu.getMenuPosY()
                    + " loader=" + describe(loaderRow)
                    + " loadGame=" + describe(loadGame)
                    + " row=" + rowX + "," + rowY + " " + rowW + "x" + CFG.BUTTON_HEIGHT);
            final String pluginId = request.pluginId;
            final String entry = request.entry;
            final String title = request.title;
            ButtonGame2 button = new ButtonGame2(request.text, CFG.FONT_REGULAR, -1,
                    rowX, rowY, rowW, true) {
                @Override
                public void actionElement() {
                    WebCore.openDialog(pluginId, entry, title);
                }
            };

            int delta = button.getHeight() + CFG.PADDING * 2;
            int minX = rowX - CFG.PADDING * 3;
            int maxX = rowX + rowW + CFG.PADDING * 3;
            for (int i = 0; i < elements.size(); i++) {
                MenuElement e = elements.get(i);
                if (e == loaderRow || (loaderRow != null && isLoaderElement(e))) {
                    continue;
                }
                if (e.getPosY() >= anchorBottom - 2
                        && e.getPosX() >= minX
                        && e.getPosX() <= maxX) {
                    e.setPosY(e.getPosY() + delta);
                }
            }
            elements.add(button);
            setInt(menu, "iMenuElementsSize", elements.size());
            try {
                button.setVisible(true);
            } catch (Throwable ignored) {
            }
            button.setIsInView(true);

            // Never call updateScrollable()/updateMenuElements_IsInView() on the main menu:
            // it would make the whole panel scrollable or mark vanilla elements invisible.
            setBoolean(menu, "scrollableX", false);
            setBoolean(menu, "scrollableY", false);

            /* MainMenu declares its own iHeight (the visible panel box). Menu.iHeight is
             * the full-screen menu height and must NOT be grown. Grow it only once per
             * menu instance: a later repair must not add another empty row. */
            if (!GROWN.containsKey(menu)) {
                Integer ownHeight = getOwnInt(menu, "iHeight");
                if (ownHeight != null) {
                    setOwnInt(menu, "iHeight", ownHeight.intValue() + delta);
                    GROWN.put(menu, Boolean.TRUE);
                    WebCore.log("panel height " + ownHeight + " -> " + (ownHeight.intValue() + delta));
                } else {
                    Integer baseHeight = getBaseInt(menu, "iHeight");
                    if (baseHeight != null) {
                        setInt(menu, "iHeight", baseHeight.intValue() + delta);
                        GROWN.put(menu, Boolean.TRUE);
                        WebCore.log("base panel height " + baseHeight + " -> " + (baseHeight.intValue() + delta));
                    }
                }
            }
            WebCore.log("mounted button=" + describe(button) + " textW=" + button.getTextWidth());
            dump(elements);
            return true;
        } catch (Throwable t) {
            WebCore.log("main menu inject failed: " + t);
            return false;
        }
    }

    /**
     * Repairs a button that was mounted before the loader row existed: the loader row
     * now provides the real in-panel rect, so simply move our button into the extra row
     * below it (the rows below were already shifted twice: once by us, once by loader).
     */
    private static void enforceGeometry(Menu menu, List<MenuElement> elements, MenuElement button) {
        MenuElement loaderRow = findLoaderRow(elements);
        if (loaderRow == null) {
            return;
        }
        int[] row = rowRect(elements, loaderRow, null);
        if (row == null) {
            return;
        }
        int y = row[2] + CFG.PADDING * 2;
        if (button.getPosY() != y) {
            button.setPosY(y);
            WebCore.log("repair y " + describe(button) + " -> " + y);
        }
        if (button.getPosX() != row[0] || button.getWidth() != row[1]) {
            button.setPosX(row[0]);
            button.setWidth(row[1]);
            WebCore.log("repair x/w " + row[0] + " " + row[1]);
        }
    }

    /* ------------------------------------------------------------ helpers */

    private static String lang(String key) {
        try {
            return Game.lang == null ? key : Game.lang.get(key);
        } catch (Throwable ignored) {
            return key;
        }
    }

    private static MenuElement findByText(List<MenuElement> elements, String text) {
        if (text == null || text.length() == 0) {
            return null;
        }
        for (int i = 0; i < elements.size(); i++) {
            if (text.equals(textOf(elements.get(i)))) {
                return elements.get(i);
            }
        }
        return null;
    }

    /** True for the HotPluginLoader row (gear icon + "附加包"). */
    private static boolean isLoaderElement(MenuElement e) {
        if (e == null) {
            return false;
        }
        if ("\u9644\u52a0\u5305".equals(textOf(e))) {
            return true;
        }
        Class<?> c = e.getClass();
        while (c != null) {
            String n = c.getName();
            if (n.startsWith("com.saysky.hotplugloader.")) {
                return true;
            }
            if ("aoc.kingdoms.lukasz.menu_element.button.ButtonGame2_IMG".equals(n)) {
                return true;
            }
            c = c.getSuperclass();
        }
        return false;
    }

    private static MenuElement findLoaderRow(List<MenuElement> elements) {
        MenuElement best = null;
        for (int i = 0; i < elements.size(); i++) {
            MenuElement e = elements.get(i);
            if (!isLoaderElement(e)) {
                continue;
            }
            if (best == null || e.getPosY() > best.getPosY()) {
                best = e;
            }
        }
        return best;
    }

    /**
     * Resolves the row rect (x, width, bottom) our button must use.
     * Priority: loader row (real, visible in-panel rect) &gt; LoadGame &gt; title panel.
     * Never derives X from an instance that is not the one we are drawing.
     */
    private static int[] rowRect(List<MenuElement> elements, MenuElement loaderRow, MenuElement loadGame) {
        if (loaderRow != null) {
            int x1 = Integer.MAX_VALUE;
            int x2 = Integer.MIN_VALUE;
            int bottom = Integer.MIN_VALUE;
            for (int i = 0; i < elements.size(); i++) {
                MenuElement e = elements.get(i);
                if (!isLoaderElement(e)) {
                    continue;
                }
                int x = e.getPosX();
                int w = e.getWidth();
                if (w <= 0) {
                    continue;
                }
                if (x < x1) {
                    x1 = x;
                }
                if (x + w > x2) {
                    x2 = x + w;
                }
                if (e.getPosY() + e.getHeight() > bottom) {
                    bottom = e.getPosY() + e.getHeight();
                }
            }
            if (x1 != Integer.MAX_VALUE && x2 > x1) {
                return new int[]{x1, x2 - x1, bottom};
            }
        }
        if (loadGame != null && loadGame.getWidth() > 16) {
            return new int[]{loadGame.getPosX(), loadGame.getWidth(),
                    loadGame.getPosY() + loadGame.getHeight()};
        }
        MenuElement panel = findPanel(elements);
        if (panel != null) {
            int padding = Images.boxTitleBORDERWIDTH + CFG.PADDING * 2 + CFG.PADDING / 2;
            if (panel.getWidth() > padding * 2 + 16) {
                return new int[]{panel.getPosX() + padding, panel.getWidth() - padding * 2,
                        panel.getPosY() + panel.getHeight()};
            }
        }
        return null;
    }

    private static MenuElement findPanel(List<MenuElement> elements) {
        MenuElement panel = findBySuperClass(elements,
                "aoc.kingdoms.lukasz.menu_element.button.ButtonMainTitle");
        if (panel == null && !elements.isEmpty()) {
            panel = elements.get(0);
        }
        return panel;
    }

    private static MenuElement findBySuperClass(List<MenuElement> elements, String className) {
        for (int i = 0; i < elements.size(); i++) {
            MenuElement e = elements.get(i);
            if (e == null) {
                continue;
            }
            Class<?> c = e.getClass().getSuperclass();
            while (c != null) {
                if (className.equals(c.getName())) {
                    return e;
                }
                c = c.getSuperclass();
            }
        }
        return null;
    }

    private static String textOf(MenuElement element) {
        try {
            return element.getText();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String describe(MenuElement e) {
        if (e == null) {
            return "-";
        }
        try {
            String text = textOf(e);
            return "[" + e.getClass().getSimpleName()
                    + (text == null ? "" : ":" + text)
                    + " " + e.getPosX() + "," + e.getPosY()
                    + " " + e.getWidth() + "x" + e.getHeight() + "]";
        } catch (Throwable ignored) {
            return "[?]";
        }
    }

    /** Compact per-element dump, append to hotplugins/webui.log for on-device debugging. */
    private static void dump(List<MenuElement> elements) {
        try {
            StringBuilder sb = new StringBuilder("elements(").append(elements.size()).append("):");
            int max = Math.min(elements.size(), 48);
            for (int i = 0; i < max; i++) {
                sb.append(' ').append(i).append('=').append(describe(elements.get(i)));
            }
            WebCore.log(sb.toString());
        } catch (Throwable ignored) {
        }
    }

    @SuppressWarnings("unchecked")
    private static List<MenuElement> elements(Menu menu) {
        try {
            Field f = field(Menu.class, "menuElements");
            return (List<MenuElement>) f.get(menu);
        } catch (Throwable t) {
            return null;
        }
    }

    private static Integer getOwnInt(Menu menu, String name) {
        try {
            return Integer.valueOf(field(menu.getClass(), name).getInt(menu));
        } catch (NoSuchFieldException e) {
            return null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static void setOwnInt(Menu menu, String name, int value) {
        try {
            field(menu.getClass(), name).setInt(menu, value);
        } catch (Throwable ignored) {
        }
    }

    private static Integer getBaseInt(Menu menu, String name) {
        try {
            return Integer.valueOf(field(Menu.class, name).getInt(menu));
        } catch (NoSuchFieldException e) {
            return null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static void setInt(Menu menu, String name, int value) throws IllegalAccessException {
        try {
            field(Menu.class, name).setInt(menu, value);
        } catch (NoSuchFieldException ignored) {
        }
    }

    private static void setBoolean(Menu menu, String name, boolean value) throws IllegalAccessException {
        try {
            field(Menu.class, name).setBoolean(menu, value);
        } catch (NoSuchFieldException ignored) {
        }
    }

    private static Field field(Class<?> owner, String name) throws NoSuchFieldException {
        String key = owner.getName() + "#" + name;
        synchronized (FIELDS) {
            Field f = FIELDS.get(key);
            if (f != null) {
                return f;
            }
            f = owner.getDeclaredField(name);
            f.setAccessible(true);
            FIELDS.put(key, f);
            return f;
        }
    }
}
