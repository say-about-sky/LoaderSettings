package com.saysky.ui;

import java.text.SimpleDateFormat;
import java.util.Date;

/** Logcat + {@code <external>/hotplugins/ui.log}. */
final class UiLog {

    private static final String TAG = "AOH3UI";
    private static final SimpleDateFormat TIME = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");

    private UiLog() {
    }

    static void i(String message) {
        if (message == null) {
            return;
        }
        try {
            android.util.Log.i(TAG, message);
        } catch (Throwable ignored) {
            System.out.println("[" + TAG + "] " + message);
        }
        try {
            com.badlogic.gdx.files.FileHandle fh =
                    com.badlogic.gdx.Gdx.files.external("hotplugins/ui.log");
            if (fh.length() > 512L * 1024L) {
                fh.writeString("", false);
            }
            fh.writeString(TIME.format(new Date()) + "  " + message + "\n", true);
        } catch (Throwable ignored) {
        }
    }
}
