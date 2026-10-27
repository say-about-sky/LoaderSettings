package com.saysky.web;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.viewport.Viewport;

/**
 * Android implementation: <b>multiple reusable WebView sessions</b> on top of native
 * game menus, plus pooling and low-memory reclamation.
 *
 * <p>Core = the system {@code android.webkit.WebView} (Chromium/V8). One WebView per
 * open popup; closed popups release their WebView into a small idle pool so opening a
 * new page reuses the already-warm engine instead of creating another one.</p>
 *
 * <p>Thread rules:</p>
 * <ul>
 *   <li>onFrame / Menu APIs: GL (game) thread.</li>
 *   <li>WebView creation / layout / loadUrl / reload / destroy: Android UI thread.</li>
 *   <li>JS bridge calls: JavaBridge thread (bridge posts back to the game thread).</li>
 * </ul>
 */
public final class WebCoreAndroid {

    /** How many popups may be visible at the same time (oldest is closed beyond this). */
    private static final int MAX_OPEN_SESSIONS = 3;
    /** Warm WebViews kept for reuse after a popup closes. */
    private static final int MAX_IDLE_WEBVIEWS = 1;
    /** Closed session records kept for fast reopen (menus are hidden, not removed). */
    private static final int MAX_KEPT_SESSIONS = 8;

    private static final Handler UI = new Handler(Looper.getMainLooper());
    private static final Map<String, Session> SESSIONS = new ConcurrentHashMap<String, Session>();
    /** Idle WebViews; only touched on the UI thread (idleCount mirrors it for status()). */
    private static final List<WebView> IDLE = new ArrayList<WebView>();
    private static volatile int idleCount;

    private static volatile Activity activity;
    private static volatile View glView;
    private static volatile TouchBlocker blocker;
    private static volatile boolean blockerShown;
    private static volatile int blockerSig;
    private static volatile boolean lifecycleRegistered;
    private static volatile WeakHashMap<Activity, Boolean> trimRegistered =
            new WeakHashMap<Activity, Boolean>();
    private static volatile boolean webFailureLogged;
    private static volatile boolean destroying;

    private WebCoreAndroid() {
    }

    /** One Web popup: native menu + its own WebView (pooled when closed). */
    private static final class Session {
        final String key;
        final String pluginId;
        final String entry;
        final String title;
        volatile WebDialogMenu menu;
        volatile WebView web;
        volatile boolean pageLoaded;
        volatile boolean webShown;
        volatile boolean closed = true;
        volatile long lastUse;
        volatile int view = -1;
        volatile int lastVp = Integer.MIN_VALUE;
        volatile int lastMenuX = Integer.MIN_VALUE;
        volatile int lastMenuY = Integer.MIN_VALUE;
        volatile int lastMenuW = -1;
        volatile int lastMenuH = -1;
        volatile int[] lastRect = new int[]{Integer.MIN_VALUE, Integer.MIN_VALUE, -1, -1};

        Session(String key, String pluginId, String entry, String title) {
            this.key = key;
            this.pluginId = pluginId;
            this.entry = entry;
            this.title = title;
        }
    }

    /* ------------------------------------------------------------ lifecycle */

    public static void ensureStarted() {
        Object app = Gdx.app;
        if (!(app instanceof Activity)) {
            throw new IllegalStateException("Gdx.app is not an Activity");
        }
        final Activity a = (Activity) app;
        if (activity == a) {
            return;
        }
        if (activity != null) {
            WebCore.log("android: activity changed, recycling web resources");
            destroyAllAsync();
        }
        activity = a;
        registerActivityCallbacks(a);
        UI.post(new Runnable() {
            @Override
            public void run() {
                if (activity != a) {
                    return;
                }
                try {
                    View root = a.getWindow().getDecorView();
                    glView = findSurfaceView(root);
                    WebCore.log("android: glView="
                            + (glView == null ? "null" : glView.getClass().getName()));
                } catch (Throwable t) {
                    WebCore.log("android: find glView failed: " + t);
                }
            }
        });
    }

    private static void registerActivityCallbacks(final Activity a) {
        try {
            Application app = a.getApplication();
            if (!lifecycleRegistered && app != null) {
                lifecycleRegistered = true;
                app.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
                    @Override
                    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                    }

                    @Override
                    public void onActivityStarted(Activity activity) {
                    }

                    @Override
                    public void onActivityResumed(Activity activity) {
                    }

                    @Override
                    public void onActivityPaused(Activity activity) {
                    }

                    @Override
                    public void onActivityStopped(Activity activity) {
                    }

                    @Override
                    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
                    }

                    @Override
                    public void onActivityDestroyed(Activity destroyed) {
                        if (destroyed != null && destroyed == activity) {
                            WebCore.log("android: host activity destroyed, releasing web resources");
                            activity = null;
                            glView = null;
                            destroyAllAsync();
                        }
                    }
                });
            }
        } catch (Throwable t) {
            WebCore.log("android: register lifecycle failed: " + t);
        }
        try {
            synchronized (trimRegistered) {
                if (trimRegistered.containsKey(a)) {
                    return;
                }
                trimRegistered.put(a, Boolean.TRUE);
            }
            a.registerComponentCallbacks(new ComponentCallbacks2() {
                @Override
                public void onTrimMemory(int level) {
                    WebCoreAndroid.onTrimMemory(level);
                }

                @Override
                public void onLowMemory() {
                    WebCoreAndroid.onLowMemory();
                }

                @Override
                public void onConfigurationChanged(Configuration newConfig) {
                }
            });
        } catch (Throwable t) {
            WebCore.log("android: register trim callbacks failed: " + t);
        }
    }

    /** Called every rendered frame on the GL thread. */
    public static void onFrame() {
        if (activity == null) {
            try {
                ensureStarted();
            } catch (Throwable t) {
                return;
            }
        }
        if (activity == null) {
            return;
        }
        try {
            com.saysky.ui.UiHost.tick();
        } catch (Throwable t) {
            WebCore.log("ui tick failed: " + t);
        }
        syncSurface();
    }

    /* ---------------------------------------------------------- memory trim */

    /** ComponentCallbacks2.onTrimMemory → drop warm WebViews and caches. */
    static void onTrimMemory(int level) {
        boolean severe = level >= ComponentCallbacks2.TRIM_MEMORY_MODERATE
                || level == ComponentCallbacks2.TRIM_MEMORY_UI_HIDDEN;
        if (!severe) {
            return;
        }
        WebCore.log("android: onTrimMemory " + level + " (idle=" + idleCount + ")");
        UI.post(new Runnable() {
            @Override
            public void run() {
                while (!IDLE.isEmpty()) {
                    destroyWebView(IDLE.remove(0));
                }
                idleCount = 0;
                for (Session s : SESSIONS.values()) {
                    WebView w = s.web;
                    if (w != null) {
                        try {
                            w.clearCache(false);
                        } catch (Throwable ignored) {
                        }
                    }
                }
            }
        });
    }

    static void onLowMemory() {
        WebCore.log("android: onLowMemory");
        onTrimMemory(ComponentCallbacks2.TRIM_MEMORY_MODERATE);
    }

    /** Releases everything bound to the current Activity (called on activity destroy). */
    private static void destroyAllAsync() {
        destroying = true;
        final List<Session> all = new ArrayList<Session>(SESSIONS.values());
        for (int i = 0; i < all.size(); i++) {
            Session s = all.get(i);
            s.closed = true;
            try {
                if (s.menu != null) {
                    s.menu.setVisible(false);
                }
            } catch (Throwable ignored) {
            }
        }
        UI.post(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < all.size(); i++) {
                    WebView w = all.get(i).web;
                    all.get(i).web = null;
                    destroyWebView(w);
                }
                while (!IDLE.isEmpty()) {
                    destroyWebView(IDLE.remove(0));
                }
                idleCount = 0;
                TouchBlocker b = blocker;
                blocker = null;
                blockerShown = false;
                if (b != null) {
                    View bv = b;
                    ViewGroup p = (ViewGroup) bv.getParent();
                    if (p != null) {
                        p.removeView(b);
                    }
                }
                SESSIONS.clear();
                destroying = false;
                WebCore.log("android: all web resources released");
            }
        });
    }

    /* --------------------------------------------------------------- dialog */

    public static void openDialog(final String pluginId, final String entry, final String title) {
        openDialog(pluginId, entry, title, -1, -1, -1, -1);
    }

    /** Opens a popup at an explicit content rect (game units); useful for multiple windows. */
    public static void openDialogAt(final String pluginId, final String entry, final String title,
                                    final int x, final int y, final int w, final int h) {
        openDialog(pluginId, entry, title, x, y, w, h);
    }

    private static void openDialog(final String pluginId, final String entry, final String title,
                                   final int rx, final int ry, final int rw, final int rh) {
        if (Gdx.app == null) {
            return;
        }
        Gdx.app.postRunnable(new Runnable() {
            @Override
            public void run() {
                openOnGameThread(pluginId, entry, title, rx, ry, rw, rh);
            }
        });
    }

    private static void openOnGameThread(String pluginId, String entry, String title,
                                         int rx, int ry, int rw, int rh) {
        WebCore.PluginInfo p = WebCore.plugin(pluginId);
        if (p == null) {
            WebCore.log("openDialog: unknown plugin " + pluginId);
            return;
        }
        String e = (entry == null || entry.length() == 0) ? p.entry : entry;
        String t = (title == null || title.length() == 0) ? "Web UI" : title;
        boolean custom = rx >= 0 && ry >= 0 && rw > 0 && rh > 0;
        String key = keyOf(pluginId, e, custom ? rx : -1, custom ? ry : -1, rw, rh);

        List<Menu> active = activeMenu();
        int view = WebMainMenu.currentViewIndex();
        if (view < 0) {
            view = Game.menuManager == null ? -1 : Game.menuManager.MAINMENU;
        }
        if (view < 0 || Game.menuManager == null) {
            WebCore.log("openDialog: no active view");
            return;
        }

        Session s = SESSIONS.get(key);
        if (s != null && s.menu != null && s.view == view) {
            s.closed = false;
            s.lastUse = System.currentTimeMillis();
            s.menu.setVisible(true);
            raiseSession(s, active);
            if (s.web == null) {
                attachSessionAsync(s, true);
            } else {
                bringWebToFront(s);
                if (!s.pageLoaded) {
                    loadPageAsync(s);
                }
            }
            WebCore.log("openDialog: reuse " + key + " rect=" + s.menu.getPosX() + ","
                    + s.menu.getPosY() + " " + s.menu.getWidth() + "x" + s.menu.getHeight());
            return;
        }

        if (s != null) {
            // Same page opened in another view: drop the old record and rebuild.
            dropSession(s);
        }
        closeOldestVisibleIfNeeded();

        Session ns = new Session(key, pluginId, e, t);
        ns.view = view;
        int csx = rx;
        int csy = ry;
        int csw = rw;
        int csh = rh;
        if (!custom) {
            // Cascade auto popups so several plugin pages stay distinguishable.
            int step = Math.max(CFG.PADDING * 4, 8);
            int n = openVisibleCount() % 3;
            csw = (int) (CFG.GAME_WIDTH * 0.86f);
            csh = (int) (CFG.GAME_HEIGHT * 0.76f);
            csx = (CFG.GAME_WIDTH - csw) / 2 + n * step;
            csy = (CFG.GAME_HEIGHT - csh) / 2 + n * step;
        }
        WebDialogMenu m = new WebDialogMenu(t, pluginId, e, csx, csy, csw, csh);
        try {
            int idx = Game.menuManager.addNextMenuToView(view, m);
            Game.menuManager.setOrderOfMenu(idx);
        } catch (Throwable ex) {
            WebCore.log("openDialog: add menu failed: " + ex);
            return;
        }
        ns.menu = m;
        ns.closed = false;
        ns.lastUse = System.currentTimeMillis();
        SESSIONS.put(key, ns);
        trimSessions();
        WebCore.log("openDialog " + pluginId + "/" + e + " view=" + view
                + " rect=" + m.getPosX() + "," + m.getPosY() + " " + m.getWidth() + "x" + m.getHeight());
        attachSessionAsync(ns, true);
    }

    private static void raiseSession(Session s, List<Menu> active) {
        try {
            if (active != null && s.menu != null) {
                int idx = indexOfIdentity(active, s.menu);
                if (idx >= 0) {
                    Game.menuManager.setOrderOfMenu(idx);
                }
            }
        } catch (Throwable ignored) {
        }
        bringWebToFront(s);
    }

    private static void closeOldestVisibleIfNeeded() {
        int open = openVisibleCount();
        if (open < MAX_OPEN_SESSIONS) {
            return;
        }
        Session oldest = null;
        for (Session s : SESSIONS.values()) {
            if (!s.closed && s.menu != null && s.menu.getVisible()) {
                if (oldest == null || s.lastUse < oldest.lastUse) {
                    oldest = s;
                }
            }
        }
        if (oldest != null) {
            WebCore.log("closeOldestVisible: " + oldest.key);
            closeSession(oldest);
        }
    }

    private static int openVisibleCount() {
        int open = 0;
        for (Session s : SESSIONS.values()) {
            if (!s.closed && s.menu != null && s.menu.getVisible()) {
                open++;
            }
        }
        return open;
    }

    private static void trimSessions() {
        if (SESSIONS.size() <= MAX_KEPT_SESSIONS) {
            return;
        }
        Session oldest = null;
        for (Session s : SESSIONS.values()) {
            if (s.closed && (oldest == null || s.lastUse < oldest.lastUse)) {
                oldest = s;
            }
        }
        if (oldest != null) {
            SESSIONS.remove(oldest.key);
            dropSession(oldest);
        }
    }

    /** Closes the top-most popup (JS {@code AOH3.close()} without a session key). */
    public static void closeDialog() {
        if (Gdx.app == null) {
            return;
        }
        Gdx.app.postRunnable(new Runnable() {
            @Override
            public void run() {
                Session top = topVisibleSession();
                if (top != null) {
                    closeSession(top);
                }
            }
        });
    }

    /** Closes one popup by session key (used by the per-WebView JS bridge). */
    public static void closeDialog(final String sessionKey) {
        if (sessionKey == null || sessionKey.length() == 0) {
            closeDialog();
            return;
        }
        if (Gdx.app == null) {
            return;
        }
        Gdx.app.postRunnable(new Runnable() {
            @Override
            public void run() {
                Session s = SESSIONS.get(sessionKey);
                if (s != null) {
                    closeSession(s);
                }
            }
        });
    }

    /** Closes every popup of a plugin (plugin disable / hot reload teardown). */
    static void closePlugin(String pluginId) {
        if (pluginId == null) {
            return;
        }
        for (Session s : SESSIONS.values()) {
            if (pluginId.equals(s.pluginId)) {
                closeSession(s);
            }
        }
    }

    private static Session topVisibleSession() {
        Session best = null;
        int bestIndex = Integer.MAX_VALUE;
        List<Menu> active = activeMenu();
        for (Session s : SESSIONS.values()) {
            if (s.closed || s.menu == null || !s.menu.getVisible()) {
                continue;
            }
            int idx = active == null ? -1 : indexOfIdentity(active, s.menu);
            if (idx >= 0) {
                if (idx < bestIndex) {
                    bestIndex = idx;
                    best = s;
                }
            } else if (best == null || s.lastUse > best.lastUse) {
                best = s;
            }
        }
        return best;
    }

    private static void closeSession(Session s) {
        if (s == null || s.closed || destroying) {
            return;
        }
        s.closed = true;
        s.lastUse = System.currentTimeMillis();
        try {
            if (s.menu != null) {
                s.menu.setVisible(false);
            }
        } catch (Throwable ignored) {
        }
        hideWeb(s);
        WebCore.log("dialog closed: " + s.key);
        releaseWebAsync(s);
    }

    private static void dropSession(Session s) {
        if (s == null) {
            return;
        }
        s.closed = true;
        try {
            if (s.menu != null) {
                s.menu.setVisible(false);
            }
        } catch (Throwable ignored) {
        }
        releaseWebAsync(s);
    }

    static void onMenuClosed(WebDialogMenu m) {
        if (m == null) {
            return;
        }
        for (Session s : SESSIONS.values()) {
            if (s.menu == m) {
                closeSession(s);
                return;
            }
        }
    }

    public static void reload(String pluginId) {
        for (Session s : SESSIONS.values()) {
            if (pluginId == null || pluginId.length() == 0 || pluginId.equals(s.pluginId)) {
                reloadSessionInternal(s);
            }
        }
    }

    public static void reloadSession(String sessionKey) {
        Session s = sessionKey == null ? null : SESSIONS.get(sessionKey);
        if (s != null) {
            reloadSessionInternal(s);
        }
    }

    private static void reloadSessionInternal(Session s) {
        if (s == null) {
            return;
        }
        s.pageLoaded = false;
        UI.post(new Runnable() {
            @Override
            public void run() {
                WebView w = s.web;
                if (w == null) {
                    if (!s.closed) {
                        attachSessionAsync(s, true);
                    }
                    return;
                }
                try {
                    w.clearCache(true);
                } catch (Throwable ignored) {
                }
                w.reload();
                WebCore.log("reload page " + s.key);
            }
        });
    }

    public static String status() {
        int open = 0;
        StringBuilder keys = new StringBuilder();
        for (Session s : SESSIONS.values()) {
            if (!s.closed && s.menu != null && s.menu.getVisible()) {
                open++;
            }
            if (keys.length() > 0) {
                keys.append(',');
            }
            keys.append(s.key).append(s.closed ? "(closed)" : (s.menu != null && s.menu.getVisible() ? "(open)" : "(hidden)"));
        }
        return "open=" + open + " sessions=" + SESSIONS.size() + " idle=" + idleCount
                + " keys=[" + keys + "]";
    }

    /* ---------------------------------------------------------------- toast */

    public static void toast(final String message) {
        if (message == null || Gdx.app == null) {
            return;
        }
        Gdx.app.postRunnable(new Runnable() {
            @Override
            public void run() {
                try {
                    if (Game.menuManager != null) {
                        Game.menuManager.addToast(message);
                    }
                } catch (Throwable t) {
                    WebCore.log("toast failed: " + t);
                }
            }
        });
    }

    /* ---------------------------------------------------------- web layout */

    private static void attachSessionAsync(final Session s, final boolean load) {
        UI.post(new Runnable() {
            @Override
            public void run() {
                Activity a = activity;
                if (a == null || s.closed || s.menu == null) {
                    return;
                }
                ensureBlockerOnUi(a);
                WebView w = acquireWebViewOnUi(a);
                if (w == null) {
                    return;
                }
                s.web = w;
                s.lastRect = new int[]{Integer.MIN_VALUE, Integer.MIN_VALUE, -1, -1};
                s.webShown = false;
                s.pageLoaded = false;
                configureWebView(w, s);
                if (load) {
                    loadPageOnUi(s);
                }
            }
        });
    }

    private static void loadPageAsync(final Session s) {
        UI.post(new Runnable() {
            @Override
            public void run() {
                loadPageOnUi(s);
            }
        });
    }

    private static void loadPageOnUi(Session s) {
        WebView w = s.web;
        if (w == null) {
            return;
        }
        try {
            WebCore.PluginInfo p = WebCore.plugin(s.pluginId);
            if (p == null) {
                WebCore.log("loadPage: plugin gone " + s.pluginId);
                return;
            }
            File page = new File(p.webDir, s.entry);
            String url = Uri.fromFile(page).toString();
            s.pageLoaded = false;
            WebCore.log("loadUrl " + url + " (" + s.key + ")");
            w.loadUrl(url);
        } catch (Throwable t) {
            WebCore.log("loadPage failed: " + t);
        }
    }

    /** GL thread: keep every visible session's WebView over its native dialog content. */
    private static void syncSurface() {
        List<Menu> active = activeMenu();
        List<int[]> passThrough = new ArrayList<int[]>();
        int vpSig = viewportSig();
        for (Session s : SESSIONS.values()) {
            WebDialogMenu m = s.menu;
            if (m == null || s.closed || !m.getVisible() || active == null || !active.contains(m)) {
                hideWeb(s);
                continue;
            }
            int[] r;
            boolean need = s.lastVp != vpSig
                    || s.lastMenuX != m.getPosX() || s.lastMenuY != m.getPosY()
                    || s.lastMenuW != m.getWidth() || s.lastMenuH != m.getHeight()
                    || s.lastRect[2] <= 0;
            if (need) {
                r = mapRect(m.getPosX(), m.getPosY(), m.getWidth(), m.getHeight());
                if (r != null) {
                    s.lastVp = vpSig;
                    s.lastMenuX = m.getPosX();
                    s.lastMenuY = m.getPosY();
                    s.lastMenuW = m.getWidth();
                    s.lastMenuH = m.getHeight();
                }
            } else {
                r = s.lastRect;
            }
            if (r == null) {
                hideWeb(s);
                continue;
            }
            int titleHeight = 0;
            try {
                titleHeight = m.getTitle() == null ? 0 : m.getTitle().getHeight();
            } catch (Throwable ignored) {
            }
            int titlePx = Math.round(titleHeight * (r[3] / (float) Math.max(1, m.getHeight())));
            passThrough.add(new int[]{r[0], r[1] - titlePx, r[2], r[3] + titlePx});
            if (sameRect(s.lastRect, r)) {
                showWeb(s);
                continue;
            }
            s.lastRect = r;
            final Session fs = s;
            final int[] rr = r;
            UI.post(new Runnable() {
                @Override
                public void run() {
                    WebView w = fs.web;
                    if (w == null || fs.closed) {
                        return;
                    }
                    ViewGroup.LayoutParams lp = w.getLayoutParams();
                    if (lp instanceof FrameLayout.LayoutParams) {
                        FrameLayout.LayoutParams f = (FrameLayout.LayoutParams) lp;
                        f.leftMargin = rr[0];
                        f.topMargin = rr[1];
                        f.width = rr[2];
                        f.height = rr[3];
                        w.setLayoutParams(f);
                    }
                }
            });
        }
        updateBlocker(passThrough);
    }

    private static boolean sameRect(int[] a, int[] b) {
        return a != null && b != null
                && a[0] == b[0] && a[1] == b[1] && a[2] == b[2] && a[3] == b[3];
    }

    private static void showWeb(final Session s) {
        if (s.webShown || s.closed || s.web == null) {
            return;
        }
        s.webShown = true;
        UI.post(new Runnable() {
            @Override
            public void run() {
                WebView w = s.web;
                if (w != null && s.webShown) {
                    w.setFocusable(true);
                    w.setFocusableInTouchMode(true);
                    w.setVisibility(View.VISIBLE);
                    // only when visible: gives <input> elements the IME, and keeps focus
                    // off the GL surface while the dialog is modal
                    boolean focused = false;
                    try {
                        focused = w.requestFocus();
                        if (!focused) {
                            focused = w.requestFocusFromTouch();
                        }
                    } catch (Throwable ignored) {
                    }
                    WebCore.log("webview shown, requestFocus=" + focused);
                }
            }
        });
    }

    private static void hideWeb(final Session s) {
        if (!s.webShown) {
            return;
        }
        s.webShown = false;
        UI.post(new Runnable() {
            @Override
            public void run() {
                WebView w = s.web;
                if (w != null && !s.webShown) {
                    w.setVisibility(View.GONE);
                    releaseFocus(w);
                }
            }
        });
    }

    /**
     * A focused WebView keeps the IME bound to itself, which makes the game's own text input
     * (libGDX on-screen keyboard) stop working. Clearing focus when hidden fixes that, but the
     * view must stay focusable/touch-focusable so HTML inputs still raise the IME when shown again.
     */
    private static void releaseFocus(WebView w) {
        if (w == null) {
            return;
        }
        try {
            w.clearFocus();
        } catch (Throwable ignored) {
        }
        try {
            Activity a = activity;
            if (a != null) {
                InputMethodManager imm = (InputMethodManager) a.getSystemService(Context.INPUT_METHOD_SERVICE);
                if (imm != null) {
                    imm.hideSoftInputFromWindow(w.getWindowToken(), 0);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            if (glView != null) {
                glView.requestFocus();
            }
        } catch (Throwable ignored) {
        }
        WebCore.log("webview focus released");
    }

    private static void bringWebToFront(final Session s) {
        if (s == null) {
            return;
        }
        UI.post(new Runnable() {
            @Override
            public void run() {
                WebView w = s.web;
                if (w != null) {
                    w.bringToFront();
                }
            }
        });
    }

    private static void updateBlocker(List<int[]> rects) {
        boolean any = rects != null && !rects.isEmpty();
        TouchBlocker b = blocker;
        if (b == null) {
            return;
        }
        int sig = signature(rects);
        if (any == blockerShown && sig == blockerSig) {
            return;
        }
        blockerShown = any;
        blockerSig = sig;
        final boolean show = any;
        final List<int[]> copy = new ArrayList<int[]>(rects == null ? new ArrayList<int[]>() : rects);
        UI.post(new Runnable() {
            @Override
            public void run() {
                TouchBlocker bl = blocker;
                if (bl == null) {
                    return;
                }
                bl.setRects(copy);
                bl.setVisibility(show ? View.VISIBLE : View.GONE);
            }
        });
    }

    private static int signature(List<int[]> rects) {
        int h = 17;
        if (rects != null) {
            for (int i = 0; i < rects.size(); i++) {
                int[] r = rects.get(i);
                if (r == null) {
                    continue;
                }
                h = h * 31 + r[0];
                h = h * 31 + r[1];
                h = h * 31 + r[2];
                h = h * 31 + r[3];
            }
        }
        return h;
    }

    private static boolean isMenuActive(WebDialogMenu m) {
        List<Menu> active = activeMenu();
        return active != null && active.contains(m);
    }

    private static List<Menu> activeMenu() {
        try {
            return Game.menuManager == null ? null : Game.menuManager.getActiveMenu();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static int indexOfIdentity(List<Menu> list, Menu menu) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i) == menu) {
                return i;
            }
        }
        return -1;
    }

    /* --------------------------------------------------------- coordinates */

    private static int viewportSig() {
        try {
            View gl = glView;
            if (gl == null && activity != null) {
                gl = activity.getWindow().getDecorView();
            }
            int w = gl == null ? 0 : gl.getWidth();
            int h = gl == null ? 0 : gl.getHeight();
            int vw = 0;
            int vh = 0;
            Viewport vp = Renderer.viewport;
            if (vp != null) {
                vw = vp.getScreenWidth();
                vh = vp.getScreenHeight();
            }
            return (((w * 31 + h) * 31 + vw) * 31 + vh) * 31
                    + CFG.GAME_WIDTH * 3 + CFG.GAME_HEIGHT;
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static int[] mapRect(int gx, int gy, int gw, int gh) {        View gl = glView;
        if (gl == null && activity != null) {
            gl = activity.getWindow().getDecorView();
        }
        if (gl == null || gl.getWidth() <= 0 || gl.getHeight() <= 0) {
            return null;
        }
        if (CFG.GAME_WIDTH <= 0 || CFG.GAME_HEIGHT <= 0) {
            return null;
        }
        int[] loc = new int[2];
        try {
            gl.getLocationOnScreen(loc);
        } catch (Throwable t) {
            loc[0] = 0;
            loc[1] = 0;
        }
        float vx = 0.0f;
        float vy = 0.0f;
        float vw = gl.getWidth();
        float vh = gl.getHeight();
        try {
            Viewport vp = Renderer.viewport;
            if (vp != null && vp.getScreenWidth() > 0 && vp.getScreenHeight() > 0) {
                vx = vp.getScreenX();
                vy = vp.getScreenY();
                vw = vp.getScreenWidth();
                vh = vp.getScreenHeight();
            }
        } catch (Throwable ignored) {
        }
        float sx = vw / (float) CFG.GAME_WIDTH;
        float sy = vh / (float) CFG.GAME_HEIGHT;
        int x = Math.round(loc[0] + vx + gx * sx);
        int top = Math.round(loc[1] + (gl.getHeight() - vy - vh));
        int y = Math.round(top + gy * sy);
        int w = Math.max(1, Math.round(gw * sx));
        int h = Math.max(1, Math.round(gh * sy));
        return new int[]{x, y, w, h};
    }

    /* ------------------------------------------------------------- webview */

    private static void ensureBlockerOnUi(Activity a) {
        if (blocker != null) {
            return;
        }
        try {
            TouchBlocker b = new TouchBlocker(a);
            FrameLayout.LayoutParams blp = new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.MATCH_PARENT);
            a.addContentView(b, blp);
            b.setVisibility(View.GONE);
            blocker = b;
        } catch (Throwable t) {
            WebCore.log("create blocker failed: " + t);
        }
    }

    /** Pops a warm WebView or creates one; UI thread only. */
    private static WebView acquireWebViewOnUi(Activity a) {
        while (!IDLE.isEmpty()) {
            WebView w = IDLE.remove(IDLE.size() - 1);
            idleCount = IDLE.size();
            try {
                w.removeJavascriptInterface("AOH3");
            } catch (Throwable ignored) {
            }
            try {
                w.removeJavascriptInterface("AOHCache");
            } catch (Throwable ignored) {
            }
            w.setVisibility(View.GONE);
            return w;
        }
        return createWebViewOnUi(a);
    }
    private static WebView createWebViewOnUi(Activity a) {
        try {
            WebView w = new WebView(a);
            w.setBackgroundColor(Color.rgb(0x12, 0x18, 0x21));
            WebSettings s = w.getSettings();
            s.setJavaScriptEnabled(true);
            s.setDomStorageEnabled(true);
            s.setAllowFileAccess(true);
            s.setAllowContentAccess(true);
            try {
                s.setAllowFileAccessFromFileURLs(true);
            } catch (Throwable ignored) {
            }
            try {
                s.setAllowUniversalAccessFromFileURLs(true);
            } catch (Throwable ignored) {
            }
            s.setCacheMode(WebSettings.LOAD_DEFAULT);
            s.setSupportZoom(false);
            s.setBuiltInZoomControls(false);
            w.setFocusable(true);
            w.setFocusableInTouchMode(true);
            w.setHorizontalScrollBarEnabled(false);
            w.setVerticalScrollBarEnabled(false);
            try {
                WebView.setWebContentsDebuggingEnabled(true);
            } catch (Throwable ignored) {
            }
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(1, 1);
            lp.leftMargin = -10000;
            lp.topMargin = -10000;
            a.addContentView(w, lp);
            w.setVisibility(View.GONE);
            WebCore.log("webview created");
            return w;
        } catch (Throwable t) {
            if (!webFailureLogged) {
                webFailureLogged = true;
                WebCore.log("create webview failed: " + t);
            }
            return null;
        }
    }

    /** Binds clients + JS bridge of one session to a (possibly pooled) WebView. */
    private static void configureWebView(final WebView w, final Session s) {
        try {
            w.setWebViewClient(new WebViewClient() {
                @Override
                @SuppressWarnings("deprecation")
                public boolean shouldOverrideUrlLoading(WebView view, String url) {
                    return !(url != null && url.startsWith("file://"));
                }

                @Override
                public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
                    try {
                        if (request == null) {
                            return null;
                        }
                        Uri u = request.getUrl();
                        if (u == null) {
                            return null;
                        }
                        String scheme = u.getScheme();
                        if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                            return null;
                        }
                        return WebCache.intercept(s.pluginId, u.toString());
                    } catch (Throwable t) {
                        WebCore.log("intercept failed (" + s.key + "): " + t);
                        return null;
                    }
                }

                @Override
                public void onPageFinished(WebView view, String url) {
                    s.pageLoaded = true;
                    WebCore.log("pageFinished " + s.key + " " + url);
                }

                @Override
                @SuppressWarnings("deprecation")
                public void onReceivedError(WebView view, int errorCode,
                                            String description, String failingUrl) {
                    WebCore.log("pageError " + s.key + " " + errorCode + " " + description + " " + failingUrl);
                }
            });
            w.setWebChromeClient(new WebChromeClient() {
                @Override
                public boolean onConsoleMessage(ConsoleMessage cm) {
                    if (cm != null) {
                        WebCore.log("console " + cm.message() + " @" + cm.lineNumber());
                    }
                    return true;
                }
            });
            w.addJavascriptInterface(new WebBridge(s.key), "AOH3");
            w.addJavascriptInterface(new WebCacheBridge(s.key), "AOHCache");
        } catch (Throwable t) {
            WebCore.log("configure webview failed: " + t);
        }
    }

    private static void releaseWebAsync(final Session s) {
        UI.post(new Runnable() {
            @Override
            public void run() {
                WebView w = s.web;
                s.web = null;
                s.webShown = false;
                if (w == null) {
                    return;
                }
                try {
                    w.stopLoading();
                    w.loadUrl("about:blank");
                    w.clearHistory();
                    w.clearCache(false);
                } catch (Throwable ignored) {
                }
                try {
                    w.removeJavascriptInterface("AOH3");
                } catch (Throwable ignored) {
                }
                try {
                    w.removeJavascriptInterface("AOHCache");
                } catch (Throwable ignored) {
                }
                releaseFocus(w);
                w.setVisibility(View.GONE);
                IDLE.add(w);
                idleCount = IDLE.size();
                while (IDLE.size() > MAX_IDLE_WEBVIEWS) {
                    destroyWebView(IDLE.remove(0));
                    idleCount = IDLE.size();
                }
            }
        });
    }

    private static void destroyWebView(WebView w) {
        if (w == null) {
            return;
        }
        try {
            ViewGroup p = (ViewGroup) w.getParent();
            if (p != null) {
                p.removeView(w);
            }
        } catch (Throwable ignored) {
        }
        try {
            w.stopLoading();
            w.loadUrl("about:blank");
            w.clearHistory();
            w.removeAllViews();
            w.destroy();
        } catch (Throwable ignored) {
        }
    }

    private static View findSurfaceView(View v) {
        if (v == null) {
            return null;
        }
        if (v instanceof SurfaceView) {
            return v;
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                View r = findSurfaceView(g.getChildAt(i));
                if (r != null) {
                    return r;
                }
            }
        }
        return null;
    }

    private static String keyOf(String pluginId, String entry) {
        return (pluginId == null ? "" : pluginId) + "|" + (entry == null ? "" : entry);
    }

    private static String keyOf(String pluginId, String entry, int x, int y, int w, int h) {
        String base = keyOf(pluginId, entry);
        if (x >= 0 && y >= 0 && w > 0 && h > 0) {
            return base + "|" + x + "," + y + "," + w + "," + h;
        }
        return base;
    }

    /**
     * Full-screen transparent layer below all WebViews: touches outside every visible
     * dialog are swallowed, while the title/X area is passed through to the game.
     */
    private static final class TouchBlocker extends View {
        private volatile List<int[]> rects = new ArrayList<int[]>();

        TouchBlocker(Activity activity) {
            super(activity);
        }

        void setRects(List<int[]> rects) {
            this.rects = rects == null ? new ArrayList<int[]>() : rects;
        }

        @Override
        public void setVisibility(int visibility) {
            super.setVisibility(visibility);
        }

        @Override
        public boolean onTouchEvent(MotionEvent event) {
            if (event == null) {
                return false;
            }
            if (event.getActionMasked() != MotionEvent.ACTION_DOWN) {
                return true;
            }
            int rx = (int) event.getRawX();
            int ry = (int) event.getRawY();
            List<int[]> rs = rects;
            for (int i = 0; i < rs.size(); i++) {
                int[] r = rs.get(i);
                if (r != null && rx >= r[0] && rx < r[0] + r[2] && ry >= r[1] && ry < r[1] + r[3]) {
                    return false; // dialog frame/title: let the game handle it (close X)
                }
            }
            return true;
        }
    }
}
