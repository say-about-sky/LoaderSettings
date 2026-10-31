package com.saysky.ui.kit;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.MenuElement;

/**
 * Inserts a block of kit elements into <b>someone else's</b> native page and keeps it
 * mounted (self-healing).
 *
 * <h3>Implementation note</h3>
 * <p>The mounting algorithm is a 1:1 port of the proven v1 engine
 * ({@code com.saysky.ui.UiEngine.place/layoutUpdate/enforce}), because that is the only
 * variant that behaves correctly on the shipped packages:</p>
 * <ul>
 *   <li>the row goes <b>directly below the anchor row</b> (or above it), and every element
 *       of the same column below that point is shifted down by {@code blockHeight + 2*PADDING}
 *       — appending at the "column bottom" instead lands outside the drawn panel;</li>
 *   <li>the panel grows through the page's <b>own</b> {@code iHeight} for FIT pages
 *       (main menu draws its panel from a private field), otherwise through the base
 *       {@code Menu.iHeight}, and only then through {@code iMaxSliderPositionY} +
 *       {@code scrollableY} (SCROLL);</li>
 *   <li>our elements are marked visible/in-view every frame, and
 *       {@code Menu.updateMenuElements_IsInView()} is never called on the page;</li>
 *   <li>the language charset is never touched (packages such as Polaris fix fonts
 *       themselves; writing {@code charset} breaks their text).</li>
 * </ul>
 *
 * <pre>{@code
 * Ui.mount("my.plugin", Pages.SETTINGS, "Back")
 *   .add(new UiButton("My row", 0).onClick(() -> Ui.toast("ok")));
 * }</pre>
 */
public final class UiMount {

    /** Extra anchor mode: the loader host's own row (gear + "附加包"). */
    private static final int ANCHOR_LOADER = 3;

    private static final List<UiMount> ALL = new CopyOnWriteArrayList<UiMount>();
    private static final int MAX_INSTANCES = 2;
    private static final long LOADER_WAIT_MS = 1500L;

    private static final Map<Menu, Boolean> GROWN = new WeakHashMap<Menu, Boolean>();
    private static final Map<Menu, Long> FIRST_SEEN = new HashMap<Menu, Long>();
    private static long tickNo;

    /* ------------------------------------------------------------------
     * Polaris main-menu slide-in
     *
     * MainMenu.draw() has a whitelist called `buttonElementIDs`: only those elements are
     * moved by its animation. It is NOT used here: the shipped condition never starts the
     * animation (an end-timestamp is compared against 100), so joining the whitelist only
     * makes the page apply a one-off `posX -= 2*iXPos` to our rows. We instead re-derive
     * the geometry from the anchor every frame (see frameTick), which is animation-agnostic
     * and cannot drift.
     * ------------------------------------------------------------------ */

    private final String pluginId;
    private final UiPage page;
    private final String anchorText;
    private int anchorMode = UiPage.ANCHOR_TEXT;
    private boolean below = true;
    private int kind = UiMenu.SCROLL;

    private final List<MenuElement> block = new ArrayList<MenuElement>();
    private final List<RowFactory> factories = new ArrayList<RowFactory>();
    /** Element ids we pushed into {@code MainMenu.buttonElementIDs} (for clean removal). */
    private final List<Integer> slideIds = new ArrayList<Integer>();

    /* Absolute positioning baseline captured at mount time: every enforce() re-derives our
       row geometry from the *current* anchor rect plus this baseline, so whatever the page
       does to the anchor (animation, relayout) we follow it exactly, with no drift — a
       delta mirror would accumulate rounding error and fight the correction. */
    private MenuElement refAnchor;
    private int refAnchorY;
    private int[] baseY;
    private volatile boolean removed;
    private Menu lastMenu;
    private boolean warned;
    private boolean group;
    private Block provider;

    /** Lazily supplies the block (called on the GL thread when the page is first found). */
    public interface Block {
        /** @param target the native menu the block is about to be inserted into */
        List<MenuElement> build(Menu target);
    }

    /**
     * Lazily builds <b>one</b> row. Use it instead of {@link #add(MenuElement)} for every
     * element that is a native game control: creating such a control before the game has
     * baked its fonts (plugin {@code init} runs very early) makes the vanilla font setup
     * skip the language charset, which shows up as "missing Chinese" until the plugin is
     * disabled again.
     */
    public interface RowFactory {
        MenuElement create(Menu target);
    }

    private UiMount(String pluginId, UiPage page, String anchorText) {
        this.pluginId = pluginId;
        this.page = page;
        this.anchorText = anchorText;
    }

    public static UiMount on(String pluginId, String pageIdOrClass, String anchorText) {
        UiMount m = new UiMount(pluginId, UiPage.of(pageIdOrClass), anchorText);
        ALL.add(m);
        UiLog.i("mount registered: plugin=" + pluginId + " page=" + pageIdOrClass
                + " anchor=" + anchorText);
        return m;
    }

    public static UiMount onFirst(String pluginId, String pageIdOrClass) {
        UiMount m = new UiMount(pluginId, UiPage.of(pageIdOrClass), null);
        m.anchorMode = UiPage.ANCHOR_FIRST;
        ALL.add(m);
        UiLog.i("mount registered: plugin=" + pluginId + " page=" + pageIdOrClass + " anchor=first");
        return m;
    }

    /* ------------------------------------------------------------------ API */

    public UiMount add(MenuElement element) {
        if (element != null) {
            block.add(element);
        }
        return this;
    }

    public UiMount addAll(List<? extends MenuElement> elements) {
        if (elements != null) {
            for (int i = 0; i < elements.size(); i++) {
                add(elements.get(i));
            }
        }
        return this;
    }

    /** Keeps the block's own relative geometry instead of stacking it in one column. */
    public UiMount group() {
        this.group = true;
        return this;
    }

    public UiMount block(Block builder) {
        this.provider = builder;
        return this;
    }

    /** Defers row creation until the page is found (see {@link RowFactory}). */
    public UiMount addRow(RowFactory factory) {
        if (factory != null) {
            factories.add(factory);
        }
        return this;
    }

    public UiMount above() {
        this.below = false;
        return this;
    }

    public UiMount anchorMode(int mode) {
        this.anchorMode = mode;
        return this;
    }

    /** {@link UiMenu#FIT} / {@link UiMenu#SCROLL} / {@link UiMenu#FIXED}. */
    public UiMount kind(int kind) {
        this.kind = kind;
        return this;
    }

    public List<MenuElement> elements() {
        return block;
    }

    public String pluginId() {
        return pluginId;
    }

    public void remove() {
        removed = true;
        /* take our elements out of every live instance, otherwise a hot reload keeps
           stacking duplicate rows (and the element counter keeps growing) */
        try {
            List<Menu> list = page.instances();
            for (int i = 0; i < list.size(); i++) {
                Menu menu = list.get(i);
                if (menu == null) {
                    continue;
                }
                List<MenuElement> els = UiRef.elements(menu);
                if (els == null) {
                    continue;
                }
                boolean changed = false;
                for (int k = els.size() - 1; k >= 0; k--) {
                    if (UiRef.containsIdentity(block, els.get(k))) {
                        els.remove(k);
                        changed = true;
                    }
                }
                if (changed) {
                    UiRef.syncSize(menu);
                }
            }
        } catch (Throwable t) {
            UiLog.e("mount remove failed", t);
        }
        for (int i = 0; i < block.size(); i++) {
            try {
                block.get(i).setVisible(false);
            } catch (Throwable ignored) {
            }
        }
        block.clear();
        factories.clear();
        ALL.remove(this);
    }

    public static void removePlugin(String pluginId) {
        for (int i = ALL.size() - 1; i >= 0; i--) {
            if (ALL.get(i).pluginId != null && ALL.get(i).pluginId.equals(pluginId)) {
                ALL.get(i).remove();
            }
        }
        UiLog.i("mounts removed for plugin " + pluginId);
    }

    public static int count() {
        return ALL.size();
    }

    /** Moves our rows to {@code rect} horizontally and keeps their vertical offset from the
     *  anchor captured at mount time. */
    private void applyGeometry(int[] rect, int anchorY) {
        if (baseY == null || baseY.length != block.size()) {
            return;
        }
        int dy = anchorY - refAnchorY;
        int x = rect[0];
        int w = rect[1];
        boolean fixX = !group && w >= 16;
        for (int i = 0; i < block.size(); i++) {
            MenuElement e = block.get(i);
            try {
                if (fixX && (e.getPosX() != x || e.getWidth() != w)) {
                    e.setPosX(x);
                    e.setWidth(w);
                }
                int y = baseY[i] + dy;
                if (e.getPosY() != y) {
                    e.setPosY(y);
                }
                e.setVisible(true);
                e.setIsInView(true);
            } catch (Throwable ignored) {
            }
        }
    }

    /* ---------------------------------------------------------------- tick */

    static void tick() {
        if (ALL.isEmpty() || Game.menuManager == null) {
            return;
        }
        // Belt and braces: never create rows before Polaris finished baking fonts
        // (creating native controls earlier corrupts CFG.FONT_* — see UiFont.ready()).
        if (!UiFont.ready()) {
            return;
        }
        tickNo++;
        /* Rows must appear within a frame or two of a page being (re)built, otherwise the
           page's own entry animation is already halfway through when we show up — that is
           the "stiff / lagging behind" feeling. A view switch or a stale instance forces an
           immediate sweep; otherwise we sweep every 2nd frame and only run the cheap
           fastPath in between. */
        boolean discovery = tickNo % 2 == 0L || UiRef.viewChanged();
        for (int i = 0; i < ALL.size(); i++) {
            UiMount m = ALL.get(i);
            if (m == null || m.removed) {
                continue;
            }
            try {
                if (!discovery) {
                    m.fastPath();
                    continue;
                }
                /* Discovery frames sweep ALL instances on purpose. The old code skipped
                   the sweep whenever fastPath() found the previous menu still holding our
                   block — so after the game rebuilt MainMenu ("刷新主菜单") we kept
                   enforcing the dead instance and the row never appeared on the new one. */
                List<Menu> list = m.page.instances();
                int mounted = 0;
                /* Newest instance first: when the game rebuilds a page (\"刷新主菜单\") the new
                   object is appended, so a forward scan with MAX_INSTANCES would keep feeding
                   the stale instances and never reach the live one. */
                for (int j = list.size() - 1; j >= 0 && mounted < MAX_INSTANCES; j--) {
                    Menu menu = list.get(j);
                    if (menu == null) {
                        continue;
                    }
                    if (m.mountOn(menu)) {
                        mounted++;
                    }
                }
            } catch (Throwable t) {
                UiLog.e("mount tick failed (" + m.pluginId + ")", t);
            }
        }
    }

    /** Every-frame upkeep: keep the block where it belongs (x/width) and visible. */
    private boolean fastPath() {
        Menu menu = lastMenu;
        if (menu == null) {
            return false;
        }
        try {
            // A hidden menu means the page was rebuilt/dismissed: drop the shortcut so the
            // next discovery frame mounts onto the live instance instead.
            if (!menu.getVisible()) {
                lastMenu = null;
                return false;
            }
        } catch (Throwable ignored) {
            lastMenu = null;
            return false;
        }
        List<MenuElement> els = UiRef.elements(menu);
        if (els == null || !UiRef.containsIdentity(els, block.get(0))) {
            lastMenu = null;
            return false;
        }
        enforce(menu, els);
        return true;
    }

    private void once(String msg) {
        if (!warned) {
            warned = true;
            UiLog.w(msg);
        }
    }

    /* ------------------------------------------------------------- mounting */

    private boolean mountOn(Menu menu) {
        List<MenuElement> els = UiRef.elements(menu);
        if (els == null) {
            return false;
        }
        if (!ensureBlock(menu)) {
            return false;
        }
        if (UiRef.containsIdentity(els, block.get(0))) {
            lastMenu = menu;
            enforce(menu, els);
            return true;
        }

        MenuElement anchor = anchorFor(els, menu);
        if (anchor == null) {
            once("mount skipped: no anchor on " + page.className()
                    + " (anchor='" + anchorText + "')");
            return false;
        }
        if (anchorMode == ANCHOR_LOADER && !isLoaderElement(anchor)) {
            Long first = FIRST_SEEN.get(menu);
            long now = System.currentTimeMillis();
            if (first == null) {
                FIRST_SEEN.put(menu, Long.valueOf(now));
                return false;
            }
            if (now - first.longValue() < LOADER_WAIT_MS) {
                return false; // wait for the loader row
            }
        }

        int[] rect = rowRectFor(els, anchor, menu.getWidth());
        int rowX = rect[0];
        int rowW = rect[1];
        int anchorBottom = rect[2];
        if (rowW < 16) {
            rowX = Theme.padding() * 2;
            rowW = Math.max(80, menu.getWidth() - Theme.padding() * 4);
        }

        // ---- measure the block
        int minX = Integer.MAX_VALUE;
        int minY = Integer.MAX_VALUE;
        int maxBottom = Integer.MIN_VALUE;
        for (int i = 0; i < block.size(); i++) {
            MenuElement e = block.get(i);
            if (e.getHeight() <= 0) {
                e.setHeight(Theme.buttonHeight());
            }
            minX = Math.min(minX, e.getPosX());
            minY = Math.min(minY, e.getPosY());
            maxBottom = Math.max(maxBottom, e.getPosY() + e.getHeight());
        }
        int blockHeight;
        if (group && minX != Integer.MAX_VALUE) {
            blockHeight = maxBottom - minY;
        } else {
            int total = 0;
            for (int i = 0; i < block.size(); i++) {
                total += block.get(i).getHeight() + Theme.padding();
            }
            blockHeight = Math.max(0, total - Theme.padding());
        }
        int delta = blockHeight + Theme.padding() * 2;

        // ---- where the block goes (v1: directly below/above the anchor row)
        int insertY;
        if (below) {
            insertY = anchorBottom + Theme.padding() * 2;
            shift(els, rowX, rowW, insertY - 2, delta, false);
        } else {
            insertY = Math.max(Theme.padding(), anchor.getPosY() - delta);
            shift(els, rowX, rowW, insertY, delta, true);
        }

        // ---- place the block
        if (group && minX != Integer.MAX_VALUE) {
            int dx = rowX - minX;
            int dy = insertY - minY;
            for (int i = 0; i < block.size(); i++) {
                MenuElement e = block.get(i);
                e.setPosX(Math.max(0, e.getPosX() + dx));
                e.setPosY(Math.max(0, e.getPosY() + dy));
                if (e.getWidth() <= 0) {
                    e.setWidth(rowW);
                }
            }
        } else {
            int y = insertY;
            for (int i = 0; i < block.size(); i++) {
                MenuElement e = block.get(i);
                e.setPosX(rowX);
                e.setWidth(rowW);
                e.setPosY(y);
                y += e.getHeight() + Theme.padding();
            }
        }
        for (int i = 0; i < block.size(); i++) {
            MenuElement e = block.get(i);
            e.setVisible(true);
            e.setIsInView(true);
            els.add(e);
        }
        UiRef.syncSize(menu);
        layoutUpdate(menu, delta, els);
        lastMenu = menu;
        /* Baseline for the per-frame absolute re-derivation. */
        refAnchor = anchor;
        refAnchorY = anchor.getPosY();
        baseY = new int[block.size()];
        for (int i = 0; i < block.size(); i++) {
            baseY[i] = block.get(i).getPosY();
        }
        UiFont.probe(block.get(0).getText());
        UiLog.i("mounted " + page.className()
                + (anchor == null ? "" : " anchor=" + anchor.getText())
                + " row=" + rowX + "," + insertY + " " + rowW + "x" + blockHeight
                + " delta=" + delta + " list=" + els.size()
                + " menuH=" + menu.getHeight() + (group ? " group" : " stacked"));
        return true;
    }

    private boolean ensureBlock(Menu menu) {
        if (!block.isEmpty()) {
            return true;
        }
        Block builder = provider;
        if (builder != null) {
            try {
                List<MenuElement> built = builder.build(menu);
                if (built != null) {
                    block.addAll(built);
                }
            } catch (Throwable t) {
                UiLog.e("mount block builder failed", t);
            }
        }
        for (int i = 0; i < factories.size(); i++) {
            try {
                MenuElement e = factories.get(i).create(menu);
                if (e != null) {
                    block.add(e);
                }
            } catch (Throwable t) {
                UiLog.e("mount row factory failed", t);
            }
        }
        return !block.isEmpty();
    }

    /** Keeps geometry in sync with the anchor row and re-asserts visibility. */
    private void enforce(Menu menu, List<MenuElement> els) {
        try {
            MenuElement anchor = anchorFor(els, menu);
            if (anchor != null) {
                applyGeometry(rowRectFor(els, anchor, menu.getWidth()), anchor.getPosY());
            }
            UiRef.syncSize(menu);
            for (int i = 0; i < block.size(); i++) {
                MenuElement e = block.get(i);
                e.setVisible(true);
                e.setIsInView(true);
            }
        } catch (Throwable t) {
            UiLog.e("enforce failed", t);
        }
    }

    /* -------------------------------------------------------------- anchors */

    private MenuElement anchorFor(List<MenuElement> els, Menu menu) {
        switch (anchorMode) {
            case UiPage.ANCHOR_FIRST:
                return firstDrawable(els);
            case UiPage.ANCHOR_LAST:
                return lastDrawable(els);
            case ANCHOR_LOADER: {
                MenuElement loader = findLoaderRow(els);
                return loader != null ? loader : byText(els, anchorText);
            }
            default: {
                MenuElement byTextHit = byText(els, anchorText);
                if (byTextHit != null) {
                    return byTextHit;
                }
                /* Localized UI: "Back"/"LoadGame" never match. On a full-screen page (main
                   menu) the loader row is the only sane anchor: while it does not exist yet
                   we must NOT insert anything (the loader host will shift the same rows, a
                   second shift breaks the page). Elsewhere use the bottom row of the real
                   button column. */
                if (UiRef.fullscreen(menu)) {
                    return findLoaderRow(els);
                }
                return dominantBottom(els);
            }
        }
    }

    private MenuElement byText(List<MenuElement> els, String text) {
        if (text == null || text.length() == 0) {
            return null;
        }
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (!drawable(el)) {
                continue;
            }
            String t = textOf(el);
            if (text.equals(t) || (t != null && t.toLowerCase().contains(text.toLowerCase()))) {
                return el;
            }
        }
        return null;
    }

    private MenuElement firstDrawable(List<MenuElement> els) {
        for (int i = 0; i < els.size(); i++) {
            if (drawable(els.get(i))) {
                return els.get(i);
            }
        }
        return null;
    }

    private MenuElement lastDrawable(List<MenuElement> els) {
        for (int i = els.size() - 1; i >= 0; i--) {
            MenuElement el = els.get(i);
            if (drawable(el) && !isEmptyElement(el)) {
                return el;
            }
        }
        return null;
    }

    /** Bottom-most element of the most common button column (v1 ANCHOR_AUTO). */
    private MenuElement dominantBottom(List<MenuElement> els) {
        Map<Integer, Integer> counts = new HashMap<Integer, Integer>();
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (!drawable(el) || isEmptyElement(el)) {
                continue;
            }
            if (el.getWidth() < 48 || el.getHeight() < 24) {
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

    private boolean drawable(MenuElement el) {
        if (el == null || UiRef.containsIdentity(block, el)) {
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
            return w < Theme.gameWidth() - 4 || h < Theme.gameHeight() - 4;
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
     * Row rect for the plugin row.
     *
     * @return {@code {x, width, bottom}}
     */
    private int[] rowRectFor(List<MenuElement> els, MenuElement anchor, int menuWidth) {
        /* The loader row is the host's two controls (gear + "附加包") on one line. When the
           anchor IS that row, take the whole-line union even if the caller used a text
           anchor: otherwise the plugin row is only as wide as the text button and leaves a
           conspicuous gap where the gear sits. */
        if (anchorMode == ANCHOR_LOADER || isLoaderElement(anchor)) {
            int[] loader = loaderRowRect(els);
            if (loader != null) {
                return loader;
            }
        } else if (isTitleElement(anchor, menuWidth)) {
            int[] d = dominantRowRect(els, menuWidth);
            if (d != null) {
                return d;
            }
        }
        return new int[]{anchor.getPosX(), anchor.getWidth(),
                anchor.getPosY() + anchor.getHeight()};
    }

    /** Geometry-only candidate test (used for the dominant row of a column). */
    private static boolean isRowCandidate(MenuElement el, int menuWidth) {
        if (el == null) {
            return false;
        }
        try {
            if (!el.getVisible()) {
                return false;
            }
            int w = el.getWidth();
            int h = el.getHeight();
            if (w < 16 || h < 8) {
                return false;
            }
            return w < Theme.gameWidth() - 4 || h < Theme.gameHeight() - 4;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean isTitleElement(MenuElement el, int menuWidth) {
        if (el == null) {
            return false;
        }
        for (Class<?> c = el.getClass(); c != null; c = c.getSuperclass()) {
            if (c.getName().indexOf("Title") >= 0) {
                return true;
            }
        }
        return menuWidth > 0 && el.getWidth() >= menuWidth - 1;
    }

    private static int[] dominantRowRect(List<MenuElement> els, int menuWidth) {
        Map<Long, int[]> stats = new HashMap<Long, int[]>();
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (!isRowCandidate(el, menuWidth)) {
                continue;
            }
            int x = el.getPosX();
            int w = el.getWidth();
            if (w < 16 || (menuWidth > 0 && w >= menuWidth - 1)) {
                continue;
            }
            long key = ((long) x << 32) ^ (w & 0xffffffffL);
            int[] s = stats.get(Long.valueOf(key));
            int bottom = el.getPosY() + el.getHeight();
            if (s == null) {
                stats.put(Long.valueOf(key), new int[]{1, x, w, bottom});
            } else {
                s[0]++;
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

    /**
     * Rect of the loader row = the anchor ({@code 附加包}) plus every element that overlaps it
     * vertically, so the gear icon on its left is included in the x/width union even though it
     * is a plain {@code ButtonGame2_IMG} that {@link #isLoaderElement} does not match.
     */
    private int[] loaderRowRect(List<MenuElement> els) {
        MenuElement anchor = findLoaderRow(els);
        if (anchor == null) {
            return null;
        }
        int top = anchor.getPosY();
        int anchorBottom = top + anchor.getHeight();
        int x1 = Integer.MAX_VALUE;
        int x2 = Integer.MIN_VALUE;
        int bottom = anchorBottom;
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (el == null || el.getWidth() <= 0) {
                continue;
            }
            if (UiRef.containsIdentity(block, el)) {
                continue;
            }
            int t = el.getPosY();
            int b = t + el.getHeight();
            if (b <= top || t >= anchorBottom) {
                continue; // not on the same visual row
            }
            if (el.getPosX() < x1) {
                x1 = el.getPosX();
            }
            if (el.getPosX() + el.getWidth() > x2) {
                x2 = el.getPosX() + el.getWidth();
            }
            if (b > bottom) {
                bottom = b;
            }
        }
        if (x1 != Integer.MAX_VALUE && x2 > x1) {
            return new int[]{x1, x2 - x1, bottom};
        }
        return new int[]{anchor.getPosX(), anchor.getWidth(), anchorBottom};
    }

    /**
     * Is this element part of the hot loader's own row (gear + "附加包")?
     *
     * <p>Only the text or the host's own classes count. Do <b>not</b> match the class
     * {@code ButtonGame2_IMG}: the main menu has several icon buttons of that exact class
     * (gear, the pin next to "退出游戏", the graph icon), so matching it made
     * {@link #findLoaderRow} pick the <b>bottom-most</b> icon button of the whole page and the
     * plugin row landed below the panel ("3D 调试" under 「退出游戏」).</p>
     */
    private static boolean isLoaderElement(MenuElement el) {
        if (el == null) {
            return false;
        }
        if ("\u9644\u52a0\u5305".equals(textOf(el))) {
            return true;
        }
        for (Class<?> c = el.getClass(); c != null; c = c.getSuperclass()) {
            if (c.getName().startsWith("com.saysky.hotplugloader.")) {
                return true;
            }
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

    private static String textOf(MenuElement el) {
        try {
            return el.getText();
        } catch (Throwable t) {
            return null;
        }
    }

    /* --------------------------------------------------------------- layout */

    private void shift(List<MenuElement> els, int rowX, int rowW, int fromY, int delta, boolean includeOurs) {
        for (int i = 0; i < els.size(); i++) {
            MenuElement el = els.get(i);
            if (el == null) {
                continue;
            }
            if (!includeOurs && UiRef.containsIdentity(block, el)) {
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
        return x + w > rowX - Theme.padding() && x < rowX + rowW + Theme.padding();
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

    /**
     * Panel growth / scroll extension.
     *
     * <p><b>Full-screen pages go through the FIT path even when the caller asked for
     * SCROLL.</b> Their {@code getHeight()} is {@code CFG.GAME_HEIGHT}, so the old SCROLL
     * branch could never grow them and instead set {@code scrollableY = true} — that is
     * exactly what made the whole main menu follow the drag ("滚动主菜单时全体图标跟随上移")
     * and leave the plugin row outside the drawn panel. The visible panel of such pages lives
     * in their own {@code iHeight} field ({@code MainMenu}), which is what we grow now.</p>
     */
    private void layoutUpdate(Menu menu, int delta, List<MenuElement> els) {
        if (kind == UiMenu.FIXED) {
            return;
        }
        boolean fullscreen = UiRef.fullscreen(menu);
        boolean grown = GROWN.containsKey(menu);
        if (kind == UiMenu.FIT || fullscreen) {
            if (!grown) {
                int before = UiRef.panelHeight(menu);
                UiRef.growPanel(menu, delta);
                GROWN.put(menu, Boolean.TRUE);
                UiLog.i("panel height " + before + " -> " + UiRef.panelHeight(menu)
                        + (fullscreen ? " (fullscreen)" : ""));
            }
            UiRef.setBool(menu, "scrollableX", false);
            UiRef.setBool(menu, "scrollableY", false);
            if (fullscreen) {
                // A stale scroll range lets the drag handler take the page over again.
                UiRef.setInt(menu, "iMaxSliderPositionY", Math.max(UiRef.panelHeight(menu), maxBottom(els)));
            }
            return;
        }
        // SCROLL = "keep the page frame, add a scrollbar". Never grow the panel here:
        //   * InGame_Escape clamps its own height to GAME_HEIGHT - titleHeight - menuY - 2P
        //     and paints its panel from getHeight(), so growing it makes the pause menu
        //     "unfold in one go" instead of scrolling;
        //   * ordinary pages already ship their own scroll range, and a taller frame than
        //     the game designed for can push rows under the screen edge.
        // Pages that really do want to grow use FIT (or are MainMenu-like → fullscreen).
        int height = menu.getHeight();
        int contentBottom = maxBottom(els);
        int max = UiRef.getInt(menu, "iMaxSliderPositionY", height);
        if (contentBottom > max) {
            UiRef.setInt(menu, "iMaxSliderPositionY", contentBottom);
        }
        if (contentBottom > height) {
            UiRef.setBool(menu, "scrollableY", true);
            UiLog.i("scroll range " + height + " -> " + contentBottom + " (panel kept)");
        }
    }
}
