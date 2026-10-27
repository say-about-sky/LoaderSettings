package com.saysky.longpressmovearmy;

/**
 * 长按检测共享状态。
 *
 * 独立于 Mixin 类存放,供缝合进游戏类后的回调代码引用(与 PolarisCore 的实践一致)。
 */
public final class LongPressState {
    /** 本次按下的时间戳(毫秒)。 */
    public static long downTime = 0L;
    /** 按下时的屏幕坐标。 */
    public static int downX = 0;
    public static int downY = 0;
    /** 本次按下是否参与长按判定(出现第二根手指 / 缩放手势 / 框选手势时置 false)。 */
    public static boolean valid = false;
    /**
     * 本次按下过程中手指距离按下点的<b>最大</b>位移(像素)。
     *
     * 用最大位移而不是“抬起点与按下点的距离”,否则“拖出去再拖回来”(净位移≈0)
     * 会被当成没动过,从而误判为长按。
     */
    public static float maxMovePx = 0f;

    /** 本次按下是否就是「双击的第二下」(反转模式下用它触发移动军队)。 */
    public static boolean secondTapTouch = false;

    private LongPressState() {
    }
}
