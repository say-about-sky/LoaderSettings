package com.saysky.web;

import java.io.File;

import com.saysky.game.GameApi;

/**
 * Web-facing adapter for {@link GameApi}: only adds the plugin-resources lookup used by the
 * global searches, so JS and plain-Java plugins behave identically.
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

    /** 全局：所有 event 目录 + 本插件 {@code resources/event/}。 */
    public static String event(String pluginId, String eventId) {
        return GameApi.event(eventId, pluginDir(pluginId));
    }

    /** 指定 path（目录）下的 event 目录。 */
    public static String findEvent(String eventId, String path) {
        return GameApi.findEvent(eventId, path);
    }

    /** 全局：所有 MissionsEvent 目录 + 本插件 {@code resources/missions/missionsEvents/}。 */
    public static String missionsEvent(String pluginId, String eventId) {
        return GameApi.missionsEvent(eventId, pluginDir(pluginId));
    }

    /** 指定 path（目录）下的 MissionsEvent 目录。 */
    public static String findMissionsEvent(String eventId, String path) {
        return GameApi.findMissionsEvent(eventId, path);
    }

    public static String loadExtraEvents() {
        return GameApi.loadExtraEvents();
    }

    private static File pluginDir(String pluginId) {
        return WebCore.pluginDataDir(pluginId);
    }
}
