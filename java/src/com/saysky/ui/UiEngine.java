package com.saysky.ui;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2_IMG;
import com.saysky.ui.api.CustomPage;
import com.saysky.ui.api.IconButtonSpec;
import com.saysky.ui.api.PageSpec;
import com.saysky.ui.api.Pages;
import com.saysky.ui.api.TextButtonSpec;
import com.saysky.ui.api.UiPage;

/**
 * Mounting engine for plugin page buttons.
 *
 * <p>All geometry work is done here: find the page menu instance, resolve the anchor
 * row, shift the rows below it, grow the panel / extend the scroll range, add the
 * native button and keep it mounted. Plugins only describe <i>what</i> they want
 * ({@link TextButtonSpec}) and <i>where</i> ({@link PageSpec}).</p>
 */
final class UiEngine {

    private static final long LOADER_WAIT_MS = 1500L;
    private static final int MAX_INSTANCES_PER_PAGE = 2;

    private static final Map<String, UiPage> PAGES = new java.util.concurrent.ConcurrentHashMap<String, UiPage>();
    private static final Map<String, CustomPage> CUSTOM = new java.util.concurrent.ConcurrentHashMap<String, CustomPage>();
    private static final Map<String, Menu> OPEN = new java.util.concurrent.ConcurrentHashMap<String, Menu>();
    private static final List<Entry> ENTRIES = new java.util.concurrent.CopyOnWriteArrayList<Entry>();
    private static final Map<String, Entry> BY_KEY = new java.util.concurrent.ConcurrentHashMap<String, Entry>();
    private static final Map<MenuElement, Entry> OURS = new IdentityHashMap<MenuElement, Entry>();
    private static final WeakHashMap<Menu, MountState> STATES = new WeakHashMap<Menu, MountState>();
    private static final Map<String, Long> FIRST_SEEN = new HashMap<String, Long>();
    private static final Map<String, Field> FIELDS = new HashMap<String, Field>();

    private static long lastTickMs;
    private static boolean tickStarted;

    static {
        List<PageSpec> all = Pages.all();
        for (int i = 0; i < all.size(); i++) {
            PAGES.put(all.get(i).id(), all.get(i));
        }
    }
    private UiEngine() {
    }

    /* ------------------------------------------------------------------ API */

    static void addPage(UiPage page) {
        if (page == null || page.id() == null) {
            return;
        }
        PAGES.put(page.id(), page);
        UiLog.i("page registered: " + page.id() + " -> " + page.className());
    }

    static void addCustomPage(CustomPage page) {
        if (page == null || page.id() == null) {
            return;
        }
        CUSTOM.put(page.id(), page);
        PAGES.put(page.id(), page);
        UiLog.i("custom page registered: " + page.id() + " rows=" + page.rows().size());
    }

    /** Opens a page: a custom page (native menu owned by the host) or a built-in view page. */
    static boolean openPage(String pageId) {
        if (pageId == null || Game.menuManager == null) {
            return false;
        }
        CustomPage custom = CUSTOM.get(pageId);
        if (custom != null) {
            return openCustomPage(custom);
        }
        UiPage page = PAGES.get(pageId);
        if (page == null) {
            UiLog.i("openPage: unknown page " + pageId);
            return false;
        }
        String view = page.viewName();
        if (view == null) {
            UiLog.i("openPage: page " + pageId + " is a sub-panel (no View name)");
            return false;
        }
        try {
            Class<?> viewClass = Class.forName("aoc.kingdoms.lukasz.menu.View");
            Object value = viewClass.getMethod("valueOf", String.class).invoke(null, view);
            hideOpenCustomPages();
            Game.menuManager.setViewID((aoc.kingdoms.lukasz.menu.View) value);
            UiLog.i("openPage: " + pageId + " -> View." + view);
            return true;
        } catch (Throwable t) {
            UiLog.i("openPage failed (" + pageId + "): " + t);
            return false;
        }
    }

    /** Navigating to a built-in view: hide custom pages so they do not float above the main menu. */
    private static void hideOpenCustomPages() {
        for (Menu menu : OPEN.values()) {
            try {
                menu.setVisible(false);
            } catch (Throwable ignored) {
            }
        }
    }

    static void closePage(String pageId) {
        Menu menu = pageId == null ? null : OPEN.get(pageId);
        if (menu != null) {
            try {
                menu.actionCloseMenu();
            } catch (Throwable ignored) {
                menu.setVisible(false);
            }
            UiLog.i("closePage: " + pageId);
        }
    }

    private static boolean openCustomPage(CustomPage page) {
        if (Game.menuManager == null) {
            return false;
        }
        int view = currentViewIndex();
        if (view < 0) {
            // Fallback: MenuManager.viewID is authoritative even if the identity scan fails.
            view = getIntObject(Game.menuManager, MenuManager.class, "viewID", -1);
        }
        if (view < 0) {
            UiLog.i("openPage: no active view for " + page.id());
            return false;
        }
        List<Menu> active = menusOfView(view);
        Menu existing = OPEN.get(page.id());
        if (existing != null && active != null) {
            int idx = indexOfIdentity(active, existing);
            if (idx >= 0) {
                existing.setVisible(true);
                Game.menuManager.setOrderOfMenu(idx);
                UiLog.i("openPage: reuse custom " + page.id() + " id=" + idx);
                return true;
            }
        }
        Menu menu;
        try {
            menu = buildCustomMenu(page);
        } catch (Throwable t) {
            UiLog.i("openPage: build failed for " + page.id() + ": " + t);
            return false;
        }
        int idx = Game.menuManager.addNextMenuToView(view, menu);
        Game.menuManager.setOrderOfMenu(idx);
        OPEN.put(page.id(), menu);
        UiLog.i("openPage: new custom " + page.id() + " view=" + view + " id=" + idx);
        return true;
    }

    private static Menu buildCustomMenu(CustomPage page) {
        List<MenuElement> els = new ArrayList<MenuElement>();
        int padding = CFG.PADDING * 2;
        int rowH = CFG.BUTTON_HEIGHT;
        int titleH = Math.max(CFG.TEXT_HEIGHT + CFG.PADDING * 4, CFG.BUTTON_HEIGHT2);
        int width = Math.min(CFG.GAME_WIDTH - padding * 3,
                Math.max(CFG.LEFT_MENU_WIDTH, CFG.GAME_WIDTH / 3));
        if (width < 160) {
            width = Math.max(160, CFG.GAME_WIDTH - padding * 3);
        }
        List<CustomPage.Row> rows = page.rows();
        int contentH = padding;
        for (int i = 0; i < rows.size(); i++) {
            int h = rows.get(i).height() > 0 ? rows.get(i).height() : rowH;
            contentH += h + padding;
        }
        if (contentH < rowH + padding) {
            contentH = rowH + padding;
        }
        int maxH = CFG.GAME_HEIGHT - titleH - padding * 2;
        if (contentH > maxH) {
            contentH = Math.max(rowH + padding, maxH);
        }
        int x = (CFG.GAME_WIDTH - width) / 2;
        int y = (CFG.GAME_HEIGHT - (contentH + titleH)) / 2 + titleH;
        if (y < titleH + CFG.PADDING) {
            y = titleH + CFG.PADDING;
        }

        int rowY = padding;
        for (int i = 0; i < rows.size(); i++) {
            final CustomPage.Row row = rows.get(i);
            int h = row.height() > 0 ? row.height() : rowH;
            MenuElement el;
            if (row.icon() != null) {
                el = new ButtonGame2_IMG(row.label(), CFG.FONT_REGULAR, -1, padding, rowY,
                        width - padding * 2, true, UiIcons.resolve(row.icon())) {
                    @Override
                    public void actionElement() {
                        runRow(page, row);
                    }
                };
            } else {
                el = new ButtonGame2(row.label(), CFG.FONT_REGULAR, -1, padding, rowY,
                        width - padding * 2, true) {
                    @Override
                    public void actionElement() {
                        runRow(page, row);
                    }
                };
            }
            el.setHeight(h);
            els.add(el);
            rowY += h + padding;
        }
        return new CustomMenu(page.id(), page.title(), titleH, x, y, width, contentH, els);
    }

    private static void runRow(CustomPage page, CustomPage.Row row) {
        try {
            if (row.targetPageId() != null && row.targetPageId().length() > 0) {
                openPage(row.targetPageId());
                return;
            }
            if (row.action() != null) {
                row.action().run();
            }
        } catch (Throwable t) {
            UiLog.i("custom row failed (" + page.id() + "): " + t);
        }
    }

    /** Active-view menus for a page: custom pages use their opened instance, others use the class index. */
    private static List<Menu> menusFor(UiPage page, Map<String, List<Menu>> index) {
        if (page instanceof CustomPage) {
            Menu menu = OPEN.get(page.id());
            if (menu == null || !menu.getVisible()) {
                return null;
            }
            List<Menu> one = new ArrayList<Menu>(1);
            one.add(menu);
            return one;
        }
        return index.get(page.className());
    }

    private static int indexOfIdentity(List<Menu> list, Menu menu) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i) == menu) {
                return i;
            }
        }
        return -1;
    }

    @SuppressWarnings("unchecked")
    private static List<Menu> menusOfView(int view) {
        try {
            Object all = field(MenuManager.class, "menus").get(Game.menuManager);
            if (all instanceof List) {
                List<List<Menu>> views = (List<List<Menu>>) all;
                if (view >= 0 && view < views.size()) {
                    return views.get(view);
                }
            }
        } catch (Throwable t) {
            UiLog.i("menusOfView failed: " + t);
        }
        return null;
    }

    static int currentViewIndex() {
        try {
            List<Menu> active = Game.menuManager == null ? null : Game.menuManager.getActiveMenu();
            if (active == null) {
                return -1;
            }
            Object all = field(MenuManager.class, "menus").get(Game.menuManager);
            if (all instanceof List) {
                List<?> views = (List<?>) all;
                for (int i = 0; i < views.size(); i++) {
                    if (views.get(i) == active) {
                        return i;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return -1;
    }

    static void addButton(String pluginId, TextButtonSpec spec) {
        if (spec == null || spec.pageId() == null) {
            return;
        }
        UiPage page = PAGES.get(spec.pageId());
        if (page == null) {
            UiLog.i("addButton: unknown page '" + spec.pageId() + "' (plugin " + pluginId + ")");
            return;
        }
        String key = keyOf(pluginId, spec);
        Entry e = BY_KEY.get(key);
        if (e == null) {
            Entry created = new Entry(key, pluginId, spec, page);
            Entry prev = BY_KEY.putIfAbsent(key, created);
            if (prev == null) {
                ENTRIES.add(created);
                UiLog.i("button registered: " + key + " on " + page.className());
            } else {
                e = prev;
            }
        }
        if (e != null) {
            e.spec = spec;
            e.removed = false;
            e.page = page;
            if (e.element != null) {
                applyText(e);
            }
        }
        ensureTick();
    }

    static void removePlugin(String pluginId) {
        for (int i = 0; i < ENTRIES.size(); i++) {
            Entry e = ENTRIES.get(i);
            if (e.pluginId.equals(pluginId)) {
                e.removed = true;
                if (e.element != null) {
                    try {
                        e.element.setVisible(false);
                    } catch (Throwable ignored) {
                    }
                }
            }
        }
    }

    static void invalidate() {
        FIRST_SEEN.clear();
        UiLog.i("invalidate (remount allowed)");
    }

    static String status() {
        return "pages=" + PAGES.size() + " buttons=" + ENTRIES.size();
    }

    /* ------------------------------------------------------------- tick */

    static void ensureTick() {
        if (tickStarted) {
            return;
        }
        try {
            if (com.badlogic.gdx.Gdx.app == null) {
                return;
            }
            tickStarted = true;
            com.badlogic.gdx.Gdx.app.postRunnable(new Runnable() {
                @Override
                public void run() {
                    try {
                        tick();
                    } catch (Throwable t) {
                        UiLog.i("tick failed: " + t);
                    }
                    try {
                        if (com.badlogic.gdx.Gdx.app != null) {
                            com.badlogic.gdx.Gdx.app.postRunnable(this);
                        }
                    } catch (Throwable ignored) {
                    }
                }
            });
        } catch (Throwable t) {
            tickStarted = false;
            UiLog.i("ensureTick failed: " + t);
        }
    }

    static void tick() {
        if (ENTRIES.isEmpty()) {
            return;
        }
        long now = System.currentTimeMillis();
        if (lastTickMs != 0L && now - lastTickMs < 8L) {
            return;
        }
        lastTickMs = now;
        if (Game.menuManager == null) {
            return;
        }
        Map<String, List<Menu>> index = indexMenus();
        for (int i = 0; i < ENTRIES.size(); i++) {
            Entry e = ENTRIES.get(i);
            if (e.removed) {
                continue;
            }
            UiPage page = PAGES.get(e.spec.pageId());
            if (page == null) {
                continue;
            }
            e.page = page;
            List<Menu> menus = menusFor(page, index);
            if (menus == null || menus.isEmpty()) {
                continue;
            }
            int max = Math.min(menus.size(), MAX_INSTANCES_PER_PAGE);
            for (int j = 0; j < max; j++) {
                try {
                    mountOrEnforce(menus.get(j), e, page, now);
                } catch (Throwable t) {
                    UiLog.i("mount failed on " + page.id() + ": " + t);
                }
            }
        }
    }

    /* ------------------------------------------------------------ mounting */

    private static void mountOrEnforce(Menu menu, Entry e, UiPage page, long now) {
        List<MenuElement> els = elements(menu);
        if (els == null) {
            return;
        }
        if (e.element != null && containsIdentity(els, e.element)) {
            enforce(menu, els, e, page);
            return;
        }
        MenuElement anchor = findAnchor(els, page);
        if (anchor == null) {
            return;
        }
        if (page.anchorMode() == UiPage.ANCHOR_LOADER && !isLoaderElement(anchor)) {
            long first = firstSeen(page.id(), now);
            if (now - first < LOADER_WAIT_MS) {
                return; // wait for HotPluginLoader's row
            }
        }
        place(menu, els, e, page, anchor);
    }

    private static void place(Menu menu, List<MenuElement> els, Entry e, UiPage page, MenuElement anchor) {
        MountState st = state(menu);
        int h = e.spec.height() > 0 ? e.spec.height() : CFG.BUTTON_HEIGHT;
        int delta = h + CFG.PADDING * 2;

        int[] rect = rowRectFor(els, anchor, page, menu.getWidth());
        int rowX = rect[0];
        int rowW = rect[1];
        if (rowW < 16) {
            rowX = CFG.PADDING * 2;
            rowW = Math.max(CFG.BUTTON_WIDTH, CFG.GAME_WIDTH / 3);
        }

        int wantW = e.spec.width();
        if (wantW > rowW) {
            int grow = wantW - rowW;
            int oldW = menu.getWidth();
            if (menu.setWidth(oldW + grow)) {
                int newW = menu.getWidth();
                grow = newW - oldW;
                if (grow > 0) {
                    for (int i = 0; i < els.size(); i++) {
                        MenuElement el = els.get(i);
                        if (el != null && el.getPosX() == rowX && el.getWidth() == rowW) {
                            el.setWidth(rowW + grow);
                        }
                    }
                    rowW += grow;
                    UiLog.i("widen " + menu.getClass().getSimpleName() + " " + oldW + " -> " + newW
                            + " (" + page.id() + ")");
                }
            } else {
                UiLog.i("widen refused by " + menu.getClass().getSimpleName() + " (" + page.id() + ")");
            }
        }

        boolean above = page.above();
        int insertY;
        if (above) {
            MenuElement top = st.ours.isEmpty() ? anchor : st.ours.get(0);
            insertY = Math.max(CFG.PADDING, top.getPosY() - delta);
            shift(els, rowX, rowW, insertY, delta, true);
        } else {
            MenuElement bottom = st.ours.isEmpty() ? anchor : st.ours.get(st.ours.size() - 1);
            int baseBottom = st.ours.isEmpty() ? rect[2] : bottom.getPosY() + bottom.getHeight();
            insertY = baseBottom + CFG.PADDING * 2;
            shift(els, rowX, rowW, insertY - 2, delta, false);
        }

        if (e.element == null) {
            e.element = createElement(e);
        }
        applyText(e);
        e.element.setPosX(rowX);
        e.element.setPosY(insertY);
        e.element.setWidth(rowW);
        e.element.setHeight(h);
        e.element.setVisible(true);
        e.element.setIsInView(true);

        els.add(e.element);
        st.ours.add(e.element);
        OURS.put(e.element, e);
        setInt(menu, Menu.class, "iMenuElementsSize", els.size());

        layoutUpdate(menu, st, page, delta, els);
        UiLog.i("mounted '" + e.spec.label() + "' on " + page.id()
                + " menu=" + System.identityHashCode(menu)
                + " anchor=" + describe(anchor)
                + " row=" + rowX + "," + insertY + " " + rowW + "x" + h
                + (above ? " (above)" : " (below)"));
    }

    private static MenuElement createElement(final Entry e) {
        if (e.spec instanceof IconButtonSpec) {
            int img = UiIcons.resolve(((IconButtonSpec) e.spec).icon());
            return new ButtonGame2_IMG("", CFG.FONT_REGULAR, -1, 0, 0, 1, true, img) {
                @Override
                public void actionElement() {
                    fire(e);
                }
            };
        }
        return new ButtonGame2("", CFG.FONT_REGULAR, -1, 0, 0, 1, true) {
            @Override
            public void actionElement() {
                fire(e);
            }
        };
    }

    private static void fire(Entry e) {
        try {
            UiLog.i("click " + e.key + " on " + e.page.id() + " rect=" + e.element.getPosX() + ","
                    + e.element.getPosY() + " " + e.element.getWidth() + "x" + e.element.getHeight());
            e.spec.onClick();
            UiLog.i("click done " + e.key);
        } catch (Throwable t) {
            UiLog.i("onClick failed (" + e.key + "): " + t);
        }
    }

    private static void applyText(Entry e) {
        if (e.element instanceof ButtonGame2) {
            try {
                ((ButtonGame2) e.element).setText(e.spec.label());
            } catch (Throwable ignored) {
            }
        }
    }

    private static void enforce(Menu menu, List<MenuElement> els, Entry e, UiPage page) {
        MenuElement anchor = findAnchor(els, page);
        if (anchor != null) {
            int[] rect = rowRectFor(els, anchor, page, menu.getWidth());
            int rowX = rect[0];
            int rowW = rect[1];
            if (rowW >= 16 && (e.element.getPosX() != rowX || e.element.getWidth() != rowW)) {
                e.element.setPosX(rowX);
                e.element.setWidth(rowW);
                UiLog.i("repair x/w " + rowX + " " + rowW + " (" + page.id() + ")");
            }
            if (page.anchorMode() == UiPage.ANCHOR_LOADER && isLoaderElement(anchor)) {
                int y = rect[2] + CFG.PADDING * 2;
                if (e.element.getPosY() != y) {
                    e.element.setPosY(y);
                    UiLog.i("repair y -> " + y + " (" + page.id() + ")");
                }
            }
        }
        setInt(menu, Menu.class, "iMenuElementsSize", els.size());
    }

    /* ------------------------------------------------------------- layout */

    private static void layoutUpdate(Menu menu, MountState st, UiPage page, int delta, List<MenuElement> els) {
        if (page.kind() == UiPage.KIND_FIT) {
            if (!st.grown) {
                Integer own = getOwnInt(menu, "iHeight");
                if (own != null) {
                    setOwnInt(menu, "iHeight", own.intValue() + delta);
                    UiLog.i("panel height " + own + " -> " + (own.intValue() + delta));
                } else {
                    int oldHeight = menu.getHeight();
                    setInt(menu, Menu.class, "iHeight", oldHeight + delta);
                    UiLog.i("panel(base) height " + oldHeight + " -> " + (oldHeight + delta));
                }
                st.grown = true;
            }
            setBoolean(menu, "scrollableX", false);
            setBoolean(menu, "scrollableY", false);
            return;
        }
        if (page.kind() == UiPage.KIND_SCROLL) {
            int height = menu.getHeight();
            if (!st.grown && menu.getPosY() + height + delta <= CFG.GAME_HEIGHT - CFG.PADDING) {
                setInt(menu, Menu.class, "iHeight", height + delta);
                height += delta;
                st.grown = true;
                UiLog.i("panel height grown to " + height);
            }
            int contentBottom = maxBottom(els);
            int max = getInt(menu, Menu.class, "iMaxSliderPositionY", contentBottom);
            if (contentBottom > max) {
                setInt(menu, Menu.class, "iMaxSliderPositionY", contentBottom);
            }
            if (contentBottom > height) {
                setBoolean(menu, "scrollableY", true);
            }
            return;
        }
        // KIND_FIXED: the anchor row was shifted (when there was room); the panel is
        // a full-screen menu, so nothing else to update.
    }

    private static void shift(List<MenuElement> els, int rowX, int rowW, int fromY, int delta, boolean includeOurs) {
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (el == null) {
                continue;
            }
            if (!includeOurs && OURS.containsKey(el)) {
                continue;
            }
            if (el.getPosY() < fromY - 2) {
                continue;
            }
            if (!overlapsX(el, rowX, rowW)) {
                continue;
            }
            el.setPosY(el.getPosY() + delta);
        }
    }

    private static boolean overlapsX(MenuElement el, int rowX, int rowW) {
        int x = el.getPosX();
        int w = el.getWidth();
        if (w <= 0) {
            return false;
        }
        return x + w > rowX - CFG.PADDING && x < rowX + rowW + CFG.PADDING;
    }

    private static int maxBottom(List<MenuElement> els) {
        int bottom = 0;
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (el == null) {
                continue;
            }
            int b = el.getPosY() + el.getHeight();
            if (b > bottom) {
                bottom = b;
            }
        }
        return bottom;
    }

    /* ------------------------------------------------------------- anchors */

    static MenuElement findAnchor(List<MenuElement> els, UiPage page) {
        switch (page.anchorMode()) {
            case UiPage.ANCHOR_LOADER: {
                MenuElement loader = findLoaderRow(els);
                if (loader != null) {
                    return loader;
                }
                return byLang(els, page.anchorText());
            }
            case UiPage.ANCHOR_TEXT:
                return byLang(els, page.anchorText());
            case UiPage.ANCHOR_FIRST:
                return firstDrawable(els);
            case UiPage.ANCHOR_LAST:
                return lastDrawable(els);
            default:
                return dominantBottom(els);
        }
    }

    private static MenuElement byLang(List<MenuElement> els, String key) {
        String text = lang(key);
        if (text == null || text.length() == 0) {
            return null;
        }
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (el == null || OURS.containsKey(el)) {
                continue;
            }
            if (text.equals(textOf(el))) {
                return el;
            }
        }
        return null;
    }

    private static MenuElement firstDrawable(List<MenuElement> els) {
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (drawable(el)) {
                return el;
            }
        }
        return null;
    }

    private static MenuElement lastDrawable(List<MenuElement> els) {
        for (int i = els.size() - 1; i >= 0; i--) {
            MenuElement el = els.get(i);
            if (drawable(el) && !isEmptyElement(el)) {
                return el;
            }
        }
        return null;
    }

    private static MenuElement dominantBottom(List<MenuElement> els) {
        Map<Integer, Integer> counts = new HashMap<Integer, Integer>();
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (!drawable(el) || isEmptyElement(el)) {
                continue;
            }
            if (el.getWidth() < CFG.BUTTON_HEIGHT || el.getHeight() < CFG.BUTTON_HEIGHT2) {
                continue;
            }
            Integer key = Integer.valueOf(el.getPosX());
            Integer c = counts.get(key);
            counts.put(key, Integer.valueOf(c == null ? 1 : c.intValue() + 1));
        }
        int bestX = Integer.MIN_VALUE;
        int bestCount = 0;
        for (Map.Entry<Integer, Integer> en : counts.entrySet()) {
            if (en.getValue().intValue() > bestCount) {
                bestCount = en.getValue().intValue();
                bestX = en.getKey().intValue();
            }
        }
        MenuElement best = null;
        if (bestX != Integer.MIN_VALUE) {
            for (int i = 0; i < els.size(); i++) {
                MenuElement el = els.get(i);
                if (!drawable(el) || el.getPosX() != bestX) {
                    continue;
                }
                if (best == null || el.getPosY() + el.getHeight() > best.getPosY() + best.getHeight()) {
                    best = el;
                }
            }
        }
        return best != null ? best : lastDrawable(els);
    }

    private static boolean drawable(MenuElement el) {
        if (el == null || OURS.containsKey(el)) {
            return false;
        }
        try {
            if (!el.getVisible()) {
                return false;
            }
            int w = el.getWidth();
            int h = el.getHeight();
            if (w < 8 || h < 8) {
                return false;
            }
            // Skip full-screen backgrounds/containers.
            return w < CFG.GAME_WIDTH - 4 || h < CFG.GAME_HEIGHT - 4;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean isEmptyElement(MenuElement el) {
        String n = el.getClass().getName();
        return "aoc.kingdoms.lukasz.menu_element.Empty".equals(n)
                || "aoc.kingdoms.lukasz.menu_element.MenuElement_Empty".equals(n);
    }

    /**
     * Row rect used for the plugin row: the whole loader row (gear + "\u9644\u52a0\u5305")
     * when the anchor is the loader row, otherwise the anchor button itself.
     *
     * @return {@code {x, width, bottom}}
     */
    /**
     * Row rect used for the plugin row: the whole loader row (gear + "\u9644\u52a0\u5305") when the anchor is the loader row,
     * otherwise the anchor button itself - except when the anchor is a title/full-width element:
     * then the dominant button row of the column is used (otherwise the plugin row would be wider
     * than every real button, which looks broken on e.g. the pause menu).
     *
     * @return {@code {x, width, bottom}}
     */
    private static int[] rowRectFor(List<MenuElement> els, MenuElement anchor, UiPage page, int menuWidth) {
        if (page.anchorMode() != UiPage.ANCHOR_LOADER && isTitleElement(anchor, menuWidth)) {
            int[] d = dominantRowRect(els, menuWidth);
            if (d != null) {
                return d;
            }
        }
        return rowRect(els, anchor, page);
    }

    private static boolean isTitleElement(MenuElement el, int menuWidth) {
        if (el == null) {
            return false;
        }
        Class<?> c = el.getClass();
        while (c != null) {
            if (c.getName().indexOf("Title") >= 0) {
                return true;
            }
            c = c.getSuperclass();
        }
        return menuWidth > 0 && el.getWidth() >= menuWidth - 1;
    }

    /** Most common {@code (posX, width)} pair among real rows, ignoring full-width titles. */
    private static int[] dominantRowRect(List<MenuElement> els, int menuWidth) {
        Map<Long, int[]> stats = new HashMap<Long, int[]>(); // key -> {count, x, w, bottom}
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (!drawable(el)) {
                continue;
            }
            int x = el.getPosX();
            int w = el.getWidth();
            if (w < 16 || (menuWidth > 0 && w >= menuWidth - 1)) {
                continue;
            }
            long key = ((long) x << 32) ^ (w & 0xffffffffL);
            int[] s = stats.get(Long.valueOf(key));
            if (s == null) {
                stats.put(Long.valueOf(key), new int[]{1, x, w, el.getPosY() + el.getHeight()});
            } else {
                s[0]++;
                int bottom = el.getPosY() + el.getHeight();
                if (bottom > s[3]) {
                    s[3] = bottom;
                }
            }
        }
        int[] best = null;
        for (int[] s : stats.values()) {
            if (best == null || s[0] > best[0] || (s[0] == best[0] && s[2] > best[2])) {
                best = s;
            }
        }
        return best == null ? null : new int[]{best[1], best[2], best[3]};
    }

    private static int[] rowRect(List<MenuElement> els, MenuElement anchor, UiPage page) {
        if (page.anchorMode() == UiPage.ANCHOR_LOADER) {
            int x1 = Integer.MAX_VALUE;
            int x2 = Integer.MIN_VALUE;
            int bottom = Integer.MIN_VALUE;
            for (int i = 0; i < els.size(); i++) {
                MenuElement el = els.get(i);
                if (!isLoaderElement(el) || el.getWidth() <= 0) {
                    continue;
                }
                if (el.getPosX() < x1) {
                    x1 = el.getPosX();
                }
                if (el.getPosX() + el.getWidth() > x2) {
                    x2 = el.getPosX() + el.getWidth();
                }
                if (el.getPosY() + el.getHeight() > bottom) {
                    bottom = el.getPosY() + el.getHeight();
                }
            }
            if (x1 != Integer.MAX_VALUE && x2 > x1) {
                return new int[]{x1, x2 - x1, bottom};
            }
        }
        return new int[]{anchor.getPosX(), anchor.getWidth(), anchor.getPosY() + anchor.getHeight()};
    }

    /* -------------------------------------------------------------- loader */

    static boolean isLoaderElement(MenuElement el) {
        if (el == null) {
            return false;
        }
        if ("\u9644\u52a0\u5305".equals(textOf(el))) {
            return true;
        }
        Class<?> c = el.getClass();
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

    private static MenuElement findLoaderRow(List<MenuElement> els) {
        MenuElement best = null;
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (!isLoaderElement(el)) {
                continue;
            }
            if (best == null || el.getPosY() > best.getPosY()) {
                best = el;
            }
        }
        return best;
    }

    private static long firstSeen(String pageId, long now) {
        Long v = FIRST_SEEN.get(pageId);
        if (v == null) {
            FIRST_SEEN.put(pageId, Long.valueOf(now));
            return now;
        }
        return v.longValue();
    }

    /* ------------------------------------------------------------ helpers */

    private static String keyOf(String pluginId, TextButtonSpec spec) {
        String icon = spec instanceof IconButtonSpec ? ((IconButtonSpec) spec).icon() : "";
        return pluginId + "|" + spec.pageId() + "|" + spec.label() + "|" + icon;
    }

    private static final class Entry {
        final String key;
        final String pluginId;
        TextButtonSpec spec;
        UiPage page;
        MenuElement element;
        boolean removed;

        Entry(String key, String pluginId, TextButtonSpec spec, UiPage page) {
            this.key = key;
            this.pluginId = pluginId;
            this.spec = spec;
            this.page = page;
        }
    }

    private static final class MountState {
        final List<MenuElement> ours = new ArrayList<MenuElement>();
        boolean grown;
    }

    private static MountState state(Menu menu) {
        MountState st = STATES.get(menu);
        if (st == null) {
            st = new MountState();
            STATES.put(menu, st);
        }
        return st;
    }

    private static boolean containsIdentity(List<MenuElement> els, MenuElement el) {
        for (int i = 0; i < els.size(); i++) {
            if (els.get(i) == el) {
                return true;
            }
        }
        return false;
    }

    private static String lang(String key) {
        if (key == null) {
            return null;
        }
        try {
            return Game.lang == null ? key : Game.lang.get(key);
        } catch (Throwable ignored) {
            return key;
        }
    }

    private static String textOf(MenuElement el) {
        try {
            return el.getText();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String describe(MenuElement el) {
        if (el == null) {
            return "-";
        }
        try {
            String t = textOf(el);
            return "[" + el.getClass().getSimpleName()
                    + (t == null || t.length() == 0 ? "" : ":" + t)
                    + " " + el.getPosX() + "," + el.getPosY()
                    + " " + el.getWidth() + "x" + el.getHeight() + "]";
        } catch (Throwable ignored) {
            return "[?]";
        }
    }

    @SuppressWarnings("unchecked")
    private static Map<String, List<Menu>> indexMenus() {
        Map<String, List<Menu>> out = new HashMap<String, List<Menu>>();
        List<List<Menu>> views = menusAll();
        IdentityHashMap<Menu, Boolean> seen = new IdentityHashMap<Menu, Boolean>();
        for (int i = 0; i < views.size(); i++) {
            List<Menu> list = views.get(i);
            if (list == null) {
                continue;
            }
            for (int j = 0; j < list.size(); j++) {
                Menu m = list.get(j);
                if (m == null || seen.containsKey(m)) {
                    continue;
                }
                seen.put(m, Boolean.TRUE);
                String cn = m.getClass().getName();
                List<Menu> l = out.get(cn);
                if (l == null) {
                    l = new ArrayList<Menu>();
                    out.put(cn, l);
                }
                l.add(m);
            }
        }
        return out;
    }

    @SuppressWarnings("unchecked")
    private static List<List<Menu>> menusAll() {
        List<List<Menu>> out = new ArrayList<List<Menu>>();
        try {
            List<Menu> active = Game.menuManager == null ? null : Game.menuManager.getActiveMenu();
            if (active != null) {
                out.add(active);
            }
            Object all = field(MenuManager.class, "menus").get(Game.menuManager);
            if (all instanceof List) {
                List<List<Menu>> views = (List<List<Menu>>) all;
                for (int i = 0; i < views.size(); i++) {
                    if (views.get(i) != null && views.get(i) != active) {
                        out.add(views.get(i));
                    }
                }
            }
        } catch (Throwable t) {
            UiLog.i("menusAll failed: " + t);
        }
        return out;
    }

    @SuppressWarnings("unchecked")
    private static List<MenuElement> elements(Menu menu) {
        try {
            Object o = field(Menu.class, "menuElements").get(menu);
            return o instanceof List ? (List<MenuElement>) o : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Integer getOwnInt(Menu menu, String name) {
        try {
            return Integer.valueOf(field(menu.getClass(), name).getInt(menu));
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static int getIntObject(Object target, Class<?> owner, String name, int def) {
        try {
            return field(owner, name).getInt(target);
        } catch (Throwable ignored) {
            return def;
        }
    }

    private static void setOwnInt(Menu menu, String name, int value) {
        try {
            field(menu.getClass(), name).setInt(menu, value);
        } catch (Throwable ignored) {
        }
    }

    private static int getInt(Menu menu, Class<?> owner, String name, int def) {
        try {
            return field(owner, name).getInt(menu);
        } catch (Throwable ignored) {
            return def;
        }
    }

    private static void setInt(Menu menu, Class<?> owner, String name, int value) {
        try {
            field(owner, name).setInt(menu, value);
        } catch (Throwable ignored) {
        }
    }

    private static void setBoolean(Menu menu, String name, boolean value) {
        try {
            field(Menu.class, name).setBoolean(menu, value);
        } catch (Throwable ignored) {
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
