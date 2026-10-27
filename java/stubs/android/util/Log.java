package android.util;

/** 编译桩:仅用于 javac(不进 dex);运行时解析到 android.util.Log。 */
public final class Log {
    public static int i(String tag, String msg) {
        return 0;
    }

    public static int w(String tag, String msg) {
        return 0;
    }
}
