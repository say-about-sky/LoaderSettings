package com.saysky.hotvar;

import java.lang.reflect.Method;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.civilization.Civilization;

/**
 * HotVarApi —— 事件触发器桥（补丁 dex 侧，热插件通过反射注册）。
 *
 * <p>游戏里 {@code has_variable} / {@code has_variable_not} / {@code has_variable_civ} 三个触发器
 * 原本只查 {@link Civilization#eventsDataVariables} 列表里"字符串是否存在"。本类让任何热插件注册一个
 * 「前缀 → 求值器」，触发器命中前缀时改为实时回调插件，于是事件文本里可以直接写：</p>
 *
 * <pre>
 *   has_variable=zparty:support:mon:gt:0.50
 *   has_variable=zparty:ruling:mon
 *   has_variable_civ=GER=zparty:support:mon:ge:0.25
 * </pre>
 *
 * <p>没注册任何前缀 / 前缀没命中 / 插件抛异常时，一律回退原版行为（查变量列表），
 * 所以不装本补丁、或本补丁存在但没有插件使用时，游戏行为完全不变。</p>
 *
 * <p>热插件不需要编译依赖：用反射注册即可（handler 有 {@code boolean test(String,int)} 方法就行，
 * 或者直接实现 {@link Provider}）：</p>
 *
 * <pre>
 *   Class&lt;?&gt; hv = Class.forName("com.saysky.hotvar.HotVars");
 *   hv.getMethod("register", String.class, Object.class).invoke(null, "zparty:", handler);
 * </pre>
 *
 * <p>线程：{@link #register} 可在任意线程调用（插件 init 常在后台线程）；
 * {@link #has} 只在游戏线程被调用。</p>
 */
public final class HotVars {
    /** 求值器（可选实现；不实现时用反射调用同名方法）。 */
    public interface Provider {
        /**
         * @param var   完整触发器字符串（含前缀，如 {@code zparty:support:mon:gt:0.5}）
         * @param civID 当前被检查的文明 ID（{@code has_variable_civ} 时为目标文明）
         * @return 条件是否成立
         */
        boolean test(String var, int civID);
    }

    private static final String TAG = "hotvar";

    private static final class Entry {
        final String prefix;
        final Provider provider;
        final Object handler;
        final Method method;

        Entry(String prefix, Provider provider, Object handler, Method method) {
            this.prefix = prefix;
            this.provider = provider;
            this.handler = handler;
            this.method = method;
        }
    }

    /** 已注册前缀（按长度降序，长前缀优先）。空数组 = 无人注册 = 零开销。 */
    private static volatile Entry[] entries = new Entry[0];

    private HotVars() {
    }

    /* ------------------------------------------------------------- registry */

    /**
     * 注册（或替换）一个前缀对应的求值器。
     *
     * @param prefix  触发器前缀，例如 {@code "zparty:"}
     * @param handler 实现了 {@link Provider} 的对象，或任意有 {@code boolean test(String,int)} 方法的对象
     */
    public static synchronized void register(String prefix, Object handler) {
        if (prefix == null || prefix.length() == 0 || handler == null) return;
        Provider provider = null;
        Method method = null;
        if (handler instanceof Provider) {
            provider = (Provider) handler;
        } else {
            try {
                method = handler.getClass().getMethod("test", String.class, Integer.TYPE);
                method.setAccessible(true);
            } catch (Throwable t) {
                log("register failed: " + handler.getClass().getName() + " has no test(String,int)");
                return;
            }
        }
        Entry[] cur = entries;
        Entry[] next = new Entry[cur.length + 1];
        int n = 0;
        for (int i = 0; i < cur.length; i++) {
            if (cur[i].prefix.equals(prefix)) continue;
            next[n++] = cur[i];
        }
        next[n++] = new Entry(prefix, provider, handler, method);
        Entry[] trimmed = new Entry[n];
        System.arraycopy(next, 0, trimmed, 0, n);
        /* longer prefix wins: stable insertion sort (array is tiny) */
        for (int i = 1; i < n; i++) {
            Entry e = trimmed[i];
            int j = i - 1;
            while (j >= 0 && trimmed[j].prefix.length() < e.prefix.length()) {
                trimmed[j + 1] = trimmed[j];
                j--;
            }
            trimmed[j + 1] = e;
        }
        entries = trimmed;
        log("registered '" + prefix + "' <- " + handler.getClass().getName() + " (" + n + " prefix(es))");
    }

    /** 注销前缀；传 {@code null}/空串 = 清空全部。 */
    public static synchronized void unregister(String prefix) {
        if (prefix == null || prefix.length() == 0) {
            entries = new Entry[0];
            return;
        }
        Entry[] cur = entries;
        Entry[] next = new Entry[cur.length];
        int n = 0;
        for (int i = 0; i < cur.length; i++) {
            if (cur[i].prefix.equals(prefix)) continue;
            next[n++] = cur[i];
        }
        Entry[] trimmed = new Entry[n];
        System.arraycopy(next, 0, trimmed, 0, n);
        entries = trimmed;
    }

    /** 当前注册的前缀，逗号分隔（给插件做状态日志用）。 */
    public static String prefixes() {
        Entry[] e = entries;
        if (e.length == 0) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < e.length; i++) {
            if (i > 0) sb.append(',');
            sb.append(e[i].prefix);
        }
        return sb.toString();
    }

    /* --------------------------------------------------------------- 求值点 */

    /**
     * 供补丁后的触发器调用：先问插件，没人认领就回退原版变量列表。
     *
     * @param civID 文明 ID
     * @param var   触发器字符串原样
     */
    public static boolean has(int civID, String var) {
        Boolean r = eval(civID, var);
        if (r != null) return r.booleanValue();
        try {
            Civilization c = Game.getCiv(civID);
            return c != null && c.eventsDataVariables != null && c.eventsDataVariables.hasVariable(var);
        } catch (Throwable t) {
            return false;
        }
    }

    /** {@code has_variable_civ=<CivTag>=<var>} 用：先把 CivTag 解成文明 ID。 */
    public static boolean hasCivTag(String civTag, String var) {
        int civID;
        try {
            civID = Game.getCivID(civTag);
        } catch (Throwable t) {
            return false;
        }
        if (civID <= 0) return false;
        return has(civID, var);
    }

    /**
     * {@code has_variable_civ} 的 fall-through 入口：只问插件，插件不认领时返回 {@code null}，
     * 让补丁注入的头部钩子落空、继续跑原版本体。
     */
    public static Boolean evalCivTag(String civTag, String var) {
        if (entries.length == 0 || var == null) return null;
        int civID;
        try {
            civID = Game.getCivID(civTag);
        } catch (Throwable t) {
            return null;
        }
        if (civID <= 0) return null;
        return eval(civID, var);
    }

    /** 仅问插件；{@code null} = 没有插件认领这个字符串。 */
    public static Boolean eval(int civID, String var) {
        Entry[] e = entries;
        if (e.length == 0 || var == null) return null;
        for (int i = 0; i < e.length; i++) {
            if (!var.startsWith(e[i].prefix)) continue;
            try {
                if (e[i].provider != null) return Boolean.valueOf(e[i].provider.test(var, civID));
                Object r = e[i].method.invoke(e[i].handler, var, Integer.valueOf(civID));
                return Boolean.valueOf(r instanceof Boolean && ((Boolean) r).booleanValue());
            } catch (Throwable t) {
                log("provider '" + e[i].prefix + "' failed on " + var + ": " + t);
                return null; /* 出问题就回退原版 */
            }
        }
        return null;
    }

    private static void log(String s) {
        try {
            android.util.Log.i(TAG, s);
        } catch (Throwable ignored) {
        }
    }
}
