package com.saysky.web;

import android.webkit.JavascriptInterface;

/**
 * JS bridge exposed as {@code window.AOH3}.
 * Every method runs on the WebView JavaBridge thread; game calls are posted back.
 */
public final class WebBridge {

    /** Session key of the WebView that owns this bridge (empty = legacy/global). */
    private final String sessionKey;

    public WebBridge() {
        this("");
    }

    public WebBridge(String sessionKey) {
        this.sessionKey = sessionKey == null ? "" : sessionKey;
    }

    @JavascriptInterface
    public String version() {
        return WebCore.VERSION;
    }

    /** Bottom-screen game toast (native Toast, not a browser alert). */
    @JavascriptInterface
    public void toast(String message) {
        WebCore.toast(message);
    }

    @JavascriptInterface
    public void log(String message) {
        WebCore.log("[js] " + message);
    }

    @JavascriptInterface
    public void close() {
        WebCoreAndroid.closeDialog(sessionKey);
    }

    @JavascriptInterface
    public void reload() {
        WebCoreAndroid.reloadSession(sessionKey);
    }

    @JavascriptInterface
    public String session() {
        return sessionKey;
    }

    @JavascriptInterface
    public String status() {
        return WebCore.status();
    }

    /**
     * Sends one vanilla console command (e.g. {@code gold 100}).
     * Refused with {@code rejected: no active save} unless a save is loaded.
     */
    @JavascriptInterface
    public String game(String command) {
        return WebGame.console(command);
    }

    /**
     * Fires a <b>normal</b> event by id.
     *
     * @param eventId  event id (the {@code id=...} value, not the file name)
     * @param path     optional path relative to this plugin's resources dir
     *                 (e.g. {@code event/event_demo.txt}); loaded first when the id is unknown
     */
    @JavascriptInterface
    public String event(String eventId, String path) {
        String r = eventResult(WebGame.event(pluginId(), eventId, path), eventId);
        return r;
    }

    /** Searches the six vanilla event tables. */
    @JavascriptInterface
    public String findEvent(String eventId) {
        return WebGame.findEvent(eventId);
    }

    /**
     * Fires a <b>mission event</b> (files under the extra folders).
     *
     * @param assetPath game asset path, e.g.
     *                  {@code game/missions/missionsEvents/administrative_buildings.txt};
     *                  empty = locate the file by id
     */
    @JavascriptInterface
    public String missionsEvent(String eventId, String assetPath) {
        return eventResult(WebGame.missionsEvent(eventId, assetPath), eventId);
    }

    /** Finds a mission event id under the extra folders (returns asset paths). */
    @JavascriptInterface
    public String findMissionsEvent(String eventId) {
        return WebGame.findMissionsEvent(eventId);
    }

    /** Loads every txt found in the extra folders (optional convenience). */
    @JavascriptInterface
    public String loadExtraEvents() {
        return WebGame.loadExtraEvents();
    }

    /** {@code inGame=true civ=GER(id=12) gold=1234 ...} */
    @JavascriptInterface
    public String gameStatus() {
        return WebGame.status();
    }

    /**
     * A WebView is an Android view above the GL surface, so the native event popup would be hidden
     * behind it; close this dialog as soon as the event is queued.
     */
    private String eventResult(String result, String eventId) {
        if (result != null && result.startsWith("queued")) {
            try {
                WebCore.toast("event: " + eventId);
            } catch (Throwable ignored) {
            }
            WebCoreAndroid.closeDialog(sessionKey);
        }
        return result;
    }

    private String pluginId() {
        String key = sessionKey == null ? "" : sessionKey;
        int i = key.indexOf('|');
        return i < 0 ? key : key.substring(0, i);
    }
}
