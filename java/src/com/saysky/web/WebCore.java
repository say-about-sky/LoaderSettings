package com.saysky.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * LoaderSettings WebUI public facade.
 *
 * <p>Hot plugins call these static methods through reflection (no compile dependency):</p>
 *
 * <pre>
 * Class&lt;?&gt; web = Class.forName("com.saysky.web.WebCore");
 * web.getMethod("registerPlugin", String.class, String.class, String.class)
 *    .invoke(null, id, webDir, "index.html");
 * web.getMethod("addMainMenuButton", String.class, String.class, String.class, String.class)
 *    .invoke(null, id, "Web UI", "index.html", "Web UI Demo");
 * </pre>
 */
public final class WebCore {

    public static final String VERSION = "1.0.0";
    public static final String TAG = "AOH3Web";

    /** 一个已注册的 Web 插件。 */
    public static final class PluginInfo {
        public final String id;
        public final File webDir;
        /** Plugin-owned resources directory (parent of web/); cache is kept under it. */
        public final File dataDir;
        public final String entry;
        public volatile boolean dirty;

        PluginInfo(String id, File webDir, String entry) {
            this.id = id;
            this.webDir = webDir;
            this.dataDir = webDir == null ? null : webDir.getParentFile();
            this.entry = entry;
        }
    }

    /** 主菜单按钮请求。 */
    public static final class ButtonRequest {
        public final String pluginId;
        public final String text;
        public final String entry;
        public final String title;

        ButtonRequest(String pluginId, String text, String entry, String title) {
            this.pluginId = pluginId;
            this.text = text;
            this.entry = entry;
            this.title = title;
        }
    }

    private static final Map<String, PluginInfo> PLUGINS = new ConcurrentHashMap<String, PluginInfo>();
    private static final Map<String, ButtonRequest> BUTTONS = new ConcurrentHashMap<String, ButtonRequest>();

    private static volatile boolean tickStarted;
    private static volatile String lastError = "";
    private static volatile boolean androidMissingLogged;

    private WebCore() {
    }

    public static String version() {
        return VERSION;
    }

    public static boolean available() {
        return true;
    }

    public static String lastError() {
        return lastError;
    }

    /* ------------------------------------------------------------- plugins */

    public static void registerPlugin(String id, String webDirPath, String entry) {
        if (id == null || id.length() == 0 || webDirPath == null || webDirPath.length() == 0) {
            return;
        }
        String e = (entry == null || entry.length() == 0) ? "index.html" : entry;
        File dir = new File(webDirPath);
        PluginInfo old = PLUGINS.get(id);
        if (old != null && old.webDir.getAbsolutePath().equals(dir.getAbsolutePath())
                && old.entry.equals(e)) {
            log("registerPlugin: already registered " + id);
            ensureTick();
            return;
        }
        PLUGINS.put(id, new PluginInfo(id, dir, e));
        if (old != null) {
            WebFileWatcher.stop(id);
        }
        WebFileWatcher.watch(id, dir);
        log("registerPlugin id=" + id + " dir=" + dir.getAbsolutePath() + " entry=" + e);
        ensureTick();
    }

    public static void addMainMenuButton(String id, String text, String entry, String title) {
        if (id == null || id.length() == 0) {
            return;
        }
        PluginInfo p = PLUGINS.get(id);
        if (p == null) {
            log("addMainMenuButton: plugin not registered: " + id);
            return;
        }
        String e = (entry == null || entry.length() == 0) ? p.entry : entry;
        String t = (title == null || title.length() == 0) ? "Web UI" : title;
        final String s = (text == null || text.length() == 0) ? "Web UI" : text;
        BUTTONS.put(id, new ButtonRequest(id, s, e, t));
        log("addMainMenuButton id=" + id + " text=" + s);
        // Single UI path: the main-menu row is mounted by com.saysky.ui.UiHost, the same
        // engine every hot plugin uses for its own pages/buttons.
        final String pid = id;
        final String fEntry = e;
        final String fTitle = t;
        com.saysky.ui.UiHost.addButton(id, new com.saysky.ui.api.TextButtonSpec() {
            @Override
            public String pageId() {
                return com.saysky.ui.api.Pages.MAIN_MENU.id();
            }

            @Override
            public String label() {
                return s;
            }

            @Override
            public void onClick() {
                WebCore.openDialog(pid, fEntry, fTitle);
            }
        });
        ensureTick();
    }

    public static void removePlugin(String id) {
        if (id == null) {
            return;
        }
        PLUGINS.remove(id);
        BUTTONS.remove(id);
        try {
            com.saysky.ui.UiHost.removePlugin(id);
        } catch (Throwable ignored) {
        }
        try {
            WebCoreAndroid.closePlugin(id);
        } catch (Throwable ignored) {
        }
        WebFileWatcher.stop(id);
        log("removePlugin " + id);
    }

    public static PluginInfo plugin(String id) {
        return id == null ? null : PLUGINS.get(id);
    }

    /** Plugin-owned resources directory (cache root lives below it). */
    static File pluginDataDir(String id) {
        PluginInfo p = id == null ? null : PLUGINS.get(id);
        return p == null ? null : p.dataDir;
    }

    public static List<PluginInfo> plugins() {
        return new ArrayList<PluginInfo>(PLUGINS.values());
    }

    public static List<ButtonRequest> buttons() {
        return new ArrayList<ButtonRequest>(BUTTONS.values());
    }

    public static boolean isDirty(String id) {
        PluginInfo p = PLUGINS.get(id);
        return p != null && p.dirty;
    }

    /* ------------------------------------------------------------- actions */

    public static void openDialog(String pluginId, String entry, String title) {
        try {
            WebCoreAndroid.openDialog(pluginId, entry, title);
        } catch (Throwable t) {
            fail("openDialog", t);
        }
    }

    /**
     * Opens a second/third popup at an explicit content rect (game units), so several
     * plugin pages can be shown at the same time. Same plugin+entry+rect reuses the
     * existing popup.
     */
    public static void openDialogAt(String pluginId, String entry, String title,
                                    int x, int y, int width, int height) {
        try {
            WebCoreAndroid.openDialogAt(pluginId, entry, title, x, y, width, height);
        } catch (Throwable t) {
            fail("openDialogAt", t);
        }
    }

    public static void closeDialog() {
        try {
            WebCoreAndroid.closeDialog();
        } catch (Throwable t) {
            fail("closeDialog", t);
        }
    }

    /** null / 空串 = 重载当前页面。 */
    public static void reload(String pluginId) {
        if (pluginId != null && pluginId.length() > 0) {
            PluginInfo p = PLUGINS.get(pluginId);
            if (p != null) {
                p.dirty = true;
            }
        }
        try {
            WebCoreAndroid.reload(pluginId);
        } catch (Throwable t) {
            fail("reload", t);
        }
    }

    public static void toast(String message) {
        try {
            WebCoreAndroid.toast(message);
        } catch (Throwable t) {
            fail("toast", t);
        }
    }

    public static String status() {
        StringBuilder sb = new StringBuilder();
        sb.append("WebUI ").append(VERSION)
                .append(" plugins=").append(PLUGINS.size())
                .append(" buttons=").append(BUTTONS.size());
        try {
            sb.append(" surface=").append(WebCoreAndroid.status());
        } catch (Throwable t) {
            sb.append(" surface=unavailable");
        }
        if (lastError.length() > 0) {
            sb.append(" err=").append(lastError);
        }
        return sb.toString();
    }

    /* --------------------------------------------------------- file watch */

    static void onPluginFilesChanged(String id) {
        PluginInfo p = PLUGINS.get(id);
        if (p == null) {
            return;
        }
        p.dirty = true;
        log("files changed: " + id);
        try {
            WebCoreAndroid.reload(id);
        } catch (Throwable t) {
            fail("reload on change", t);
        }
    }

    /* -------------------------------------------------------------- tick */

    private static void ensureTick() {
        if (tickStarted) {
            return;
        }
        try {
            Class.forName("com.saysky.web.WebCoreAndroid");
        } catch (Throwable t) {
            if (!androidMissingLogged) {
                androidMissingLogged = true;
                log("Android WebView implementation unavailable (desktop?)");
            }
            return;
        }
        tickStarted = true;
        try {
            if (com.badlogic.gdx.Gdx.app == null) {
                tickStarted = false;
                return;
            }
            com.badlogic.gdx.Gdx.app.postRunnable(new Runnable() {
                @Override
                public void run() {
                    tick();
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
            fail("start tick", t);
        }
    }

    static void tick() {
        try {
            WebCoreAndroid.onFrame();
        } catch (Throwable t) {
            fail("tick", t);
        }
    }

    /* -------------------------------------------------------------- misc */

    static void log(String message) {
        if (message == null) {
            return;
        }
        try {
            android.util.Log.i(TAG, message);
        } catch (Throwable ignored) {
            System.out.println("[" + TAG + "] " + message);
        }
        appendLogFile(message);
    }

    /** Appends to &lt;external&gt;/hotplugins/webui.log so UI geometry can be checked without adb. */
    private static void appendLogFile(String message) {
        try {
            com.badlogic.gdx.files.FileHandle fh = com.badlogic.gdx.Gdx.files.external("hotplugins/webui.log");
            if (fh.length() > 512L * 1024L) {
                fh.writeString("", false);
            }
            fh.writeString(new java.text.SimpleDateFormat("MM-dd HH:mm:ss.SSS")
                    .format(new java.util.Date()) + "  " + message + "\n", true);
        } catch (Throwable ignored) {
        }
    }

    private static void fail(String where, Throwable t) {
        String m = where + ": " + t;
        lastError = m;
        log(m);
    }
}
