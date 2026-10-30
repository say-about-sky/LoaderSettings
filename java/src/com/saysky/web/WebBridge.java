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
     * 全局触发：在**所有** event 目录（原版 {@code game/events/**}、当前剧本的
     * {@code .../events/**}，以及本插件 {@code resources/event/}）里按 id 查找，
     * 找到就载入并触发。
     */
    @JavascriptInterface
    public String event(String eventId) {
        return eventResult(WebGame.event(pluginId(), eventId), eventId);
    }

    /** 指定 path（目录）下的 event 目录：按 id 查找 → 载入 → 触发。 */
    @JavascriptInterface
    public String findEvent(String eventId, String path) {
        return eventResult(WebGame.findEvent(eventId, path), eventId);
    }

    /**
     * 全局触发任务事件：在**所有** MissionsEvent 目录（{@code game/missions/missionsEvents}、
     * 当前剧本 {@code .../missions/missionsEvents}、本插件 {@code resources/missions/missionsEvents}）
     * 里按 id 查找 → 载入 → 触发。
     */
    @JavascriptInterface
    public String missionsEvent(String eventId) {
        return eventResult(WebGame.missionsEvent(pluginId(), eventId), eventId);
    }

    /** 指定 path（目录）下的 MissionsEvent 目录：按 id 查找 → 载入 → 触发。 */
    @JavascriptInterface
    public String findMissionsEvent(String eventId, String path) {
        return eventResult(WebGame.findMissionsEvent(eventId, path), eventId);
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
