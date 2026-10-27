package com.saysky.lateperf;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;

/**
 * 行军线绘制用的对象池。
 *
 * <p>原版 {@code MoveUnits.draw()} / {@code draw_Ally()} 每帧、每条行军线都会
 * {@code new Array<Vector2>()} 并逐点 {@code new Vector2(x,y)}；
 * 后期盟友几十支军队同时行军时，每帧会产生上千个临时对象 → GC 抖动 + 局部卡顿。</p>
 *
 * <p>{@link #buf()} 返回可复用的 {@code Array}（会 clear），{@link #vec(float, float)}
 * 返回池中复用的 {@code Vector2}（索引自增）。ShapeDrawer 在 path() 内同步消费这些点，
 * 不会保留引用，因此可安全复用。</p>
 */
public final class PathPool {
    private static final Array<Vector2> PATH = new Array<Vector2>();
    private static final Array<Vector2> POOL = new Array<Vector2>();
    private static int idx = 0;

    private PathPool() {
    }

    /** 取本帧/本条线的路径数组（已清空），并复位点索引。 */
    public static Array<Vector2> buf() {
        PATH.clear();
        idx = 0;
        return PATH;
    }

    /** 取一个池化点（自动按需扩容）。 */
    public static Vector2 vec(float x, float y) {
        if (idx >= POOL.size) {
            POOL.add(new Vector2());
        }
        Vector2 v = POOL.get(idx);
        idx++;
        v.set(x, y);
        return v;
    }
}
