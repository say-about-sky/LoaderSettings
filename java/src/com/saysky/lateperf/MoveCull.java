package com.saysky.lateperf;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import aoc.kingdoms.lukasz.map.province.Province;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/**
 * 盟友行军线的**视口剔除**包装。
 *
 * <p>原版 {@code ProvinceDraw.drawMoveUnits_Just()} 会把所有盟友/附庸的路线都交给
 * {@code MoveUnits.draw_Ally()}（每条线每帧都要建路径 + 三角化）。后期盟友多、军队多时，
 * 绝大多数线根本不在屏幕里，纯浪费。这里按「路线控制点（起点/下一段/终点）」算屏幕包围盒，
 * 只画与视口相交的线。</p>
 *
 * <p><b>只包盟友/附庸</b>：玩家自己的行军线永远直接画（{@code draw()}），不做任何剔除。</p>
 *
 * <p>坐标与原版完全同源（见 {@code MoveUnits.buildLine()} / {@code draw_Ally()}）：
 * <pre>
 *   controlX = province.iCenterShiftX  (+ (-mapBG.width) 当 centerShiftX &gt; width/2)
 *   controlY = -province.iCenterShiftY
 *   screenX  = (controlX + mapCoords.getPosX() + mapBG.getWidth()) * nScale
 *   screenY  = (controlY - mapCoords.getPosY()) * nScale
 * </pre>
 * 视口按 {@code CFG.GAME_WIDTH/HEIGHT * nScale} 估算并外扩，任何异常/取不到省/
 * 跨日界线（isBelowZero）都 fail-open 照常绘制。</p>
 */
public final class MoveCull {
    /** 统计(由 LatePerf.statsText 读取后清零):绘制过的线条数 / 总数。 */
    static int totalSum = 0;
    static int drawnSum = 0;

    /** 视口外扩比例(相对视口长边)：覆盖样条外扩、线宽与长路段的弯曲。 */
    private static final float MARGIN_PERC = 0.25f;
    /** 外扩下限(px)。 */
    private static final float MARGIN_MIN = 128f;

    private static float bbMinX;
    private static float bbMaxX;
    private static float bbMinY;
    private static float bbMaxY;

    private MoveCull() {
    }

    public static void drawAlly(MoveUnits mu, SpriteBatch oSB, float nScale) {
        try {
            totalSum++;
            if (!visible(mu, nScale)) {
                return;
            }
            drawnSum++;
        } catch (Throwable t) {
            // 判定异常 → 照常绘制(fail-open)
        }
        try {
            mu.draw_Ally(oSB, nScale);
        } catch (Throwable ignored) {
        }
    }

    static void resetCounters() {
        totalSum = 0;
        drawnSum = 0;
    }

    /** 盟友路线是否可能出现在视口内(包围盒相交判定)。 */
    private static boolean visible(MoveUnits mu, float nScale) {
        if (mu == null || mu.isBelowZero || !(nScale > 0f)) {
            return true;   // 跨日界线路线会做环绕偏移；缩放异常 → 放行
        }
        try {
            int w = Game.mapBG.getWidth();
            if (w <= 0) {
                return true;
            }
            float ox = Game.mapCoords.getPosX();
            float oy = Game.mapCoords.getPosY();
            bbMinX = Float.MAX_VALUE;
            bbMaxX = -Float.MAX_VALUE;
            bbMinY = Float.MAX_VALUE;
            bbMaxY = -Float.MAX_VALUE;
            // 路线控制点：起点 / 当前下一段 / 最终终点(首尾都取，避免只判一条支线)
            if (!acc(mu.getFromProvinceID(), ox, oy, w, nScale)
                    || !acc(mu.getToProvinceID(), ox, oy, w, nScale)
                    || !acc(mu.getToProvinceLastID(), ox, oy, w, nScale)) {
                return true;   // 取不到省 → 放行
            }
            float vw = CFG.GAME_WIDTH * nScale;
            float vh = CFG.GAME_HEIGHT * nScale;
            if (!(vw > 0f) || !(vh > 0f)) {
                return true;
            }
            float margin = Math.max(MARGIN_MIN, Math.max(vw, vh) * MARGIN_PERC);
            if (bbMaxX < -margin || bbMinX > vw + margin) {
                return false;
            }
            if (bbMaxY < -margin || bbMinY > vh + margin) {
                return false;
            }
            return true;
        } catch (Throwable t) {
            return true;
        }
    }

    /** 把一个省的控制点换算成屏幕坐标并累加到包围盒；省不存在返回 false。 */
    private static boolean acc(int provinceID, float ox, float oy, int w, float nScale) {
        Province p = Game.getProvince(provinceID);
        if (p == null) {
            return false;
        }
        float px = p.iCenterShiftX;
        if (px > w * 0.5f && !p.getBelowZero()) {
            px -= w;   // 与 buildLine 的跨日界线环绕偏移一致
        }
        float sx = (px + ox + w) * nScale;
        float sy = (-p.iCenterShiftY - oy) * nScale;
        if (sx < bbMinX) {
            bbMinX = sx;
        }
        if (sx > bbMaxX) {
            bbMaxX = sx;
        }
        if (sy < bbMinY) {
            bbMinY = sy;
        }
        if (sy > bbMaxY) {
            bbMaxY = sy;
        }
        return true;
    }
}
