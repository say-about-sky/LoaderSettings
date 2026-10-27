package com.saysky.lateperf;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import android.util.Log;

/**
 * LateGamePerf —— 游戏侧后期卡顿补丁(LoaderSettings 第三子工程)。
 *
 * <p>当前做两件事:</p>
 * <ol>
 *   <li><b>小地图重建节流</b>:原版整合包把 {@code GAME_UPDATE_MINIMAP} 设成 1 →
 *       每天 {@code MapBG.drawMinimapTexture_Generate()} 做整张 glReadPixels 回读 +
 *       全图省份重绘 + 新建 Texture。这里强制最低 {@link #MIN_MINIMAP_DAYS} 天一次
 *       (即使配置被改回 1 也生效)。</li>
 *   <li><b>日结算耗时诊断</b>:{@code GameThread.updateMinimap()} 记起点,
 *       {@code SaveGameManager.autosave()}(日结算末尾)记终点;超过
 *       {@link #SLOW_TICK_MS} 打一条 logcat(tag=lateperf)。</li>
 * </ol>
 *
 * <p>所有入口都吞异常:补丁类任何情况下都不能影响游戏主流程。</p>
 */
public final class LatePerf {
    /** 小地图最低重建间隔(天)。7 = 每周一次;配置更大时以配置为准。 */
    public static final int MIN_MINIMAP_DAYS = 7;
    /** 日结算超过该毫秒数才单独打日志。 */
    public static final long SLOW_TICK_MS = 150L;
    /** 统计汇总输出间隔(天)。 */
    public static final int SUMMARY_EVERY = 300;

    private static long tickStartNanos = 0L;
    private static long ticks = 0L;
    private static long slowTicks = 0L;
    private static long sumTickMs = 0L;
    private static long maxTickMs = 0L;

    private LatePerf() {
    }

    /** 替代 GameThread.updateMinimap():节流 + 记录日结算起点。 */
    public static void updateMinimap() {
        tickStartNanos = System.nanoTime();
        try {
            int every = GameValues.gameUpdate.GAME_UPDATE_MINIMAP;
            if (every < MIN_MINIMAP_DAYS) {
                every = MIN_MINIMAP_DAYS;
            }
            if (Game_Calendar.TURN_ID % every == 0) {
                Game.mapBG.requestToDisposeMinimap = true;
            }
        } catch (Throwable t) {
            // 配置读取失败时退回固定间隔,保证小地图仍会更新
            try {
                if ((Game_Calendar.TURN_ID % MIN_MINIMAP_DAYS) == 0) {
                    Game.mapBG.requestToDisposeMinimap = true;
                }
            } catch (Throwable ignored) {
                // 任何异常都不影响游戏
            }
        }
    }

    /** GameThread 日结算末尾(SaveGameManager.autosave 入口)调用。 */
    public static void onDayTickEnd() {
        try {
            if (tickStartNanos == 0L) {
                return;
            }
            long ms = (System.nanoTime() - tickStartNanos) / 1000000L;
            tickStartNanos = 0L;
            ticks++;
            sumTickMs += ms;
            if (ms > maxTickMs) {
                maxTickMs = ms;
            }
            if (ms >= SLOW_TICK_MS) {
                slowTicks++;
                Log.i("lateperf", "day tick " + ms + "ms (turn=" + Game_Calendar.TURN_ID
                        + ", slow=" + slowTicks + "/" + ticks + ", max=" + maxTickMs + "ms)");
            } else if ((ticks % SUMMARY_EVERY) == 0L) {
                Log.i("lateperf", "day tick avg=" + (sumTickMs / ticks) + "ms max=" + maxTickMs
                        + "ms slow=" + slowTicks + "/" + ticks);
            }
        } catch (Throwable ignored) {
            // 任何异常都不影响游戏
        }
    }

    /** 供热插件(G3DArmy)反射读取的诊断串;读取后清零盟友行军线计数。 */
    public static String statsText() {
        try {
            long avg = ticks > 0L ? (sumTickMs / ticks) : 0L;
            String s = "dayTick avg=" + avg + "ms max=" + maxTickMs + "ms slow=" + slowTicks
                    + "/" + ticks + " allyLine=" + MoveCull.drawnSum + "/" + MoveCull.totalSum;
            MoveCull.resetCounters();
            return s;
        } catch (Throwable t) {
            return null;
        }
    }
}
