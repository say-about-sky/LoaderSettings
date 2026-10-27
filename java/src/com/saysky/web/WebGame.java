package com.saysky.web;

import java.io.File;

import com.saysky.game.GameApi;

/**
 * Web-facing adapter for the shared runtime API (package {@code com.saysky.game}).
 *
 * <p>Only adds the "path is relative to this plugin's resources dir" resolution the JS bridge
 * needs; everything else is a straight delegation so non-Web plugins get identical behaviour.</p>
 */
public final class WebGame {

    private WebGame() {
    }

    public static boolean inGame() {
        return GameApi.inGame();
    }

    public static String status() {
        return GameApi.status();
    }

    public static String console(String command) {
        return GameApi.console(command);
    }

    /** Normal event: {@code relPath} (plugin resources) is loaded first when the id is unknown. */
    public static String event(String pluginId, String eventId, String relPath) {
        File file = null;
        if (relPath != null && relPath.trim().length() > 0) {
            File base = WebCore.pluginDataDir(pluginId);
            if (base == null) {
                return "rejected: plugin not registered";
            }
            file = resolveInside(base, relPath.trim());
            if (file == null) {
                return "rejected: path escapes plugin dir";
            }
            if (!file.isFile()) {
                return "rejected: not found " + relPath;
            }
        }
        return GameApi.event(eventId, file);
    }

    public static String missionsEvent(String eventId, String assetPath) {
        return GameApi.missionsEvent(eventId, assetPath);
    }

    public static String findEvent(String eventId) {
        return GameApi.findEvent(eventId);
    }

    public static String findMissionsEvent(String eventId) {
        return GameApi.findMissionsEvent(eventId);
    }

    public static String loadExtraEvents() {
        return GameApi.loadExtraEvents();
    }

    private static File resolveInside(File base, String rel) {
        try {
            String r = rel.replace('\\', '/');
            while (r.startsWith("/")) {
                r = r.substring(1);
            }
            if (r.length() == 0 || r.contains("..")) {
                return null;
            }
            String canonBase = base.getCanonicalPath();
            File f = new File(base, r);
            String canon = f.getCanonicalPath();
            if (!canon.startsWith(canonBase + File.separator)) {
                return null;
            }
            return f;
        } catch (Throwable t) {
            return null;
        }
    }
}
