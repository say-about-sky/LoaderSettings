package com.saysky.ui.kit;

import java.lang.reflect.Method;

/**
 * Kit logging.
 *
 * <p>On Android {@code adb logcat} is not always available, so the primary sink is the
 * loader host's {@code SafeLog}, which mirrors everything into
 * {@code hotplugins/hotloader.log}. {@code android.util.Log} is only a fallback for
 * environments without the host (and it never throws).</p>
 *
 * <p>Every kit line is prefixed with {@code AOH3UI: } so it can be grepped in the log file.</p>
 */
public final class UiLog {

    public static final String TAG = "AOH3UI";

    private static volatile boolean enabled = true;

    private static Method safeI;
    private static Method safeE;
    private static boolean safeTried;
    private static boolean safeOk;

    private UiLog() {
    }

    public static void setEnabled(boolean on) {
        enabled = on;
    }

    public static boolean enabled() {
        return enabled;
    }

    public static void i(String msg) {
        write('i', msg, null);
    }

    public static void w(String msg) {
        write('w', msg, null);
    }

    public static void e(String msg, Throwable t) {
        write('e', msg, t);
    }

    private static void write(char level, String msg, Throwable t) {
        if (!enabled || msg == null) {
            return;
        }
        String line = TAG + ": " + (level == 'w' ? "WARN " : "") + (level == 'e' ? "ERROR " : "") + msg;
        if (safeLog(level, line, t)) {
            return;
        }
        try {
            if (level == 'e') {
                android.util.Log.w(TAG, msg + ": " + t);
            } else if (level == 'w') {
                android.util.Log.w(TAG, msg);
            } else {
                android.util.Log.i(TAG, msg);
            }
        } catch (Throwable ignored) {
        }
    }

    /**
     * Writes through the loader host's SafeLog (→ {@code hotplugins/hotloader.log}).
     * Resolved reflectively so the kit also works where the host is absent.
     */
    private static boolean safeLog(char level, String line, Throwable t) {
        try {
            if (!safeTried) {
                safeTried = true;
                try {
                    Class<?> c = Class.forName("com.saysky.hotplugloader.SafeLog");
                    safeI = c.getMethod("i", String.class);
                    safeE = c.getMethod("e", String.class, Throwable.class);
                    safeOk = true;
                } catch (Throwable ignored) {
                    safeOk = false;
                }
            }
            if (!safeOk) {
                return false;
            }
            if (level == 'e') {
                safeE.invoke(null, line, t);
            } else {
                safeI.invoke(null, line);
            }
            return true;
        } catch (Throwable ignored) {
            safeOk = false;
            return false;
        }
    }
}
