package com.saysky.longpressmovearmy;

import team.rainfall.finality.FinalityLogger;

/**
 * 永不抛出的日志包装。
 *
 * <p>注入到游戏逻辑里的代码必须绝对不抛异常,连日志本身失败也不行
 * (例如日志系统尚未初始化)。此类把一切异常/错误吞掉。</p>
 */
public final class SafeLog {

    private SafeLog() {
    }

    public static void e(String message, Throwable t) {
        try {
            FinalityLogger.error(message, t);
        } catch (Throwable ignored) {
        }
    }

    public static void i(String message) {
        try {
            FinalityLogger.info(message);
        } catch (Throwable ignored) {
        }
    }

    public static void d(String message) {
        try {
            FinalityLogger.debug(message);
        } catch (Throwable ignored) {
        }
    }
}
