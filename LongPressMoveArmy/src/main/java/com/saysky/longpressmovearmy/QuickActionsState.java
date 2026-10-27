package com.saysky.longpressmovearmy;

import java.util.List;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Touch;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Preferences;
import com.saysky.longpressmovearmy.ui.QuickActionsPanel;

/**
 * 「启用快捷操作」开关 + 手势状态的共享状态。
 *
 * <p>本类<b>不是</b> Mixin 类(不会被并入游戏类),因此可以安全地使用静态字段与初始化。</p>
 *
 * <h3>总开关</h3>
 * 「启用快捷操作」是本插件自己的持久化开关(默认关),状态<b>只</b>由「长按顶部按钮 1 秒」弹出的面板切换
 * (见 {@code QuickActionsPanel})。顶部按钮的<b>点按保留原版行为</b>:点一下 = 武装一次"一次性框选"
 * ({@code Touch.selectArmiesMode},原生逻辑自行消费与高亮,见 {@code MixinTouch.actionDown} 的原版分支)。
 *
 * <p>1.3.0 曾用"快速双击按钮"切换总开关,但双击的第二下会被原版"取消框选"逻辑吃掉、还会与菜单按压
 * 状态互相干扰(实测双击不生效),1.4.0 起已移除 —— 开关只在面板里切换。</p>
 *
 * <h3>两套手势 + 反转开关</h3>
 * <pre>
 *          「长按」(450ms 不动)          「双击 + 按住」
 *  默认    移动军队到该点                框选(第二下按住 120ms 后拖)
 *  反转    框选(先按住 450ms 再拖)      移动军队到该点(不拖动)
 * </pre>
 * 反转开关由「长按顶部按钮 1 秒」弹出的面板切换(见 {@code QuickActionsPanel})。
 *
 * <h3>启用快速国策(可选,默认关)</h3>
 * 打开后在国策(任务)树/列表上<b>轻点一次</b>某个国策 → 原生弹出"开始国策"窗口;
 * 弹窗出现后,<b>再点一次同一个国策</b>(同一位置、{@code MISSION_CONFIRM_WINDOW_MS} 毫秒内)
 * = 直接点掉窗口里的确认按钮 —— 不需要手速很快的双击(实测点国策会让页面关闭/刷新,
 * 快速双击的第二下根本赶不上)。两种窗口都支持:RainfallEvent MOD 的「开始国策」窗口
 * ({@code InGame_StartFocus},带周期国策,反射调其 public 的 {@code confirm()})与
 * 原版任务事件窗口({@code InGame_Event},999/1000 活动事件)。
 * 实现:见 {@code QuickMissionConfirm};任务脚本只负责"挂载判断与收益",全程不读任何 txt/json。
 *
 * <h3>计时方式(两种情况区别对待)</h3>
 * <ul>
 *   <li><b>地图手势</b>(轻点/双击/长按/框选)全部在<b>触摸事件回调</b>里判定,时间取输入事件的时间戳
 *       → 与实际手指动作一致,与帧率无关,后期卡顿也不会漂;</li>
 *   <li><b>顶部按钮的 1 秒</b>只能<b>每帧轮询</b>(靠 {@code ButtonTopOutliner.drawText}),所以改成
 *       <b>按游戏帧时间(raw delta)累加 + 提前一帧判定</b>:后期卡顿导致单帧变长时,
 *       实际按住时长也会落在 [1s - 一帧, 1s] 内,而不会变成"要按 1 秒多"。</li>
 * </ul>
 *
 * <p>框选本身完全走游戏原生机制:写 {@code MapTouchManager.iSelectBox*} + {@code selectMode},
 * 由游戏每帧 {@code drawSelectMode} 绘制、{@code actionUpSelectMode} 结算。</p>
 */
public final class QuickActionsState {

    private static final String TAG = "QuickActions";

    /**
     * 构建标记:会出现在按钮提示文字、面板与诊断 Toast 里。
     *
     * <p>真机上看到的就是这个标记 —— 如果手机上没看到新标记,说明手机上跑的还是旧的补丁 dex
     * (说明 dex 没重新合并进 APK,而不是代码没生效)。</p>
     */
    public static final String BUILD_TAG = "1.4.4";

    /**
     * 调试输出总开关(1.4.4 起恢复默认关闭)。
     *
     * <p>关闭时:不弹游戏提示框、按钮提示里也不附带诊断行,但日志仍会照写。
     * 以后真机上出了问题想排查时,把这里改成 {@code true} 重新打包即可 ——
     * 按住顶部按钮就能看到「当前按住时长/位移」与「上一次抬起的完整判定结论」。</p>
     * <p>⚠ 注意:{@code false} 时 javac 会把 {@code if (DEBUG_OUTPUT)} 分支整个消除,
     * 调试弹窗相关代码不会进 dex;排查完记得改回 {@code false} 再出正式版。</p>
     */
    public static final boolean DEBUG_OUTPUT = false;

    private static final String PREF_NAME = "saysky_quick_actions";
    private static final String PREF_KEY_ENABLED = "enabled";
    private static final String PREF_KEY_INVERTED = "inverted";
    private static final String PREF_KEY_QUICK_MISSION = "quickMission";

    // ------------------------------------------------------------------
    // 判定常量(手感不对?调这几个)
    // ------------------------------------------------------------------
    /** 一次「轻点」的最大按住时长(毫秒)。 */
    private static final long TAP_MAX_MS = 260L;
    /** 一次「轻点」允许的手指位移(像素)。 */
    private static final int TAP_SLOP_PX = 24;
    /** 两次轻点之间的最大间隔(毫秒);贴近安卓系统自己的双击超时,容得下手慢一点。 */
    private static final long DOUBLE_TAP_MS = 240L;
    /** 双击两下的最大间距(像素):双击总是落在同一点附近,超出即视为两次独立点击。 */
    private static final int DOUBLE_TAP_SLOP_PX = 120;
    /**
     * "压住第一下点击"的等待时长(毫秒)。
     *
     * <p>反转模式下已选中军队时:第一次轻点的原生点击会先压住这么久,等第二下不来再补发。
     * 这个值直接等于"对象切换要多等多久",所以刻意取得比双击识别窗口短得多 ——
     * 代价是:捏得慢于它的双击会被当成"两次普通点击"(第一下正常选对象,不移动军队)。</p>
     */
    private static final long DEFER_CLICK_MS = 130L;
    /** 「双击第二下」按住多久才进入框选(毫秒)。 */
    private static final long BOX_HOLD_MS = 120L;
    /** 选框最小边长(像素):小于此值视为"没拖动",撤销选框。 */
    private static final int MIN_BOX_PX = 12;
    /** 「长按」阈值(毫秒):按住这么久且没拖动 → 移动军队。 */
    private static final long LONG_PRESS_MS = 450L;
    /**
     * 长按判定允许的最大偏移(像素);超过即视为拖动地图/框选。
     *
     * <p>⚙ 真机上手指长按不可能完全静止(实测手抖可达几十像素),阈值太小会变成"按了不动"；
     * 100px ≈ 1~1.5cm,既容忍手抖,又能把"滑出去看地图"挡在外面。</p>
     */
    private static final float LONG_PRESS_MAX_MOVE_PX = 100f;
    /**
     * 反转模式下开始「按住拖动框选」所需的最小偏移(像素)。
     *
     * <p>⚙ 必须大于手抖范围:否则长按时的轻微漂移会被当成"开始框选",
     * 而开始框选会 {@link #cancelLongPress()} → 长按移动就永远不会触发(实测踩到的坑)。</p>
     */
    private static final float BOX_DRAG_MIN_PX = 60f;
    /** 顶部按钮需要按住多久才弹出设置面板(毫秒)。 */
    private static final long BUTTON_HOLD_MS = 1000L;
    /**
     * 「启用快速国策」:"再点一次同一个国策"算作确认的时间窗口(毫秒)。
     *
     * <p>不需要快速双击 —— 实测点国策会让页面关闭/刷新,第二下赶不上 240ms 的双击窗口;
     * 这里给足时间(弹窗出现后再点一下即可),同时用"同一位置"约束防误确认。</p>
     */
    private static final long MISSION_CONFIRM_WINDOW_MS = 4000L;
    /**
     * 「启用快速国策」:第二下点击之后,等待"开始国策"弹窗出现的最大重试帧数。
     *
     * <p>游戏是"延迟一步"弹窗的({@code MissionTree.runMission} 走了 {@code addSimpleTask},
     * 弹窗要过一两帧才出现);若第二下比弹窗快,先吞掉这次点击,接下来几帧里补点确认。</p>
     */
    private static final int MISSION_CONFIRM_RETRY_FRAMES = 30;

    /** 「启用快捷操作」按钮的运行时类名(安卓端;见 {@link #isQuickButton})。 */
    private static final String QUICK_BUTTON_CLASS = "aoc.kingdoms.lukasz.menusInGame.InGame$14";
    /** 兜底:凡 {@code InGame$N} 且图标为 outliner 的按钮也认。 */
    private static final String IN_GAME_BUTTON_PREFIX = "aoc.kingdoms.lukasz.menusInGame.InGame$";
    private static final int OUTLINER_IMAGE_ID = Images.outliner;

    // ------------------------------------------------------------------
    // 地图手势状态
    // ------------------------------------------------------------------
    /** 上一次「轻点」抬起的时间戳/位置,0 表示没有待用的轻点。 */
    private static long lastTapUpTime = 0L;
    private static int lastTapUpX = 0;
    private static int lastTapUpY = 0;
    /** 本次按下时间与位置。 */
    private static long downTime = 0L;
    private static int downX = 0;
    private static int downY = 0;
    /** 本次按下是否真正落在游戏地图上(未被菜单吃掉)。 */
    private static boolean mapDown = false;
    /** 已识别为「双击的第二下」,正等待按满时间进入框选。 */
    private static boolean pendingBox = false;
    /** 反转模式下:本次普通触摸按住够久即可升级为框选。 */
    private static boolean invertedBoxCandidate = false;
    /** 当前这次框选由本插件手势发起(用于结束时的收尾判定)。 */
    private static boolean boxOwned = false;
    /** 上一次抬起是否算「轻点」(供「压住原生点击」判断用)。 */
    private static boolean lastUpWasTap = false;

    // ------------------------------------------------------------------
    // 「压住第一下原生点击」(反转模式 + 已选中军队时)
    //
    // 反转模式下「双击第二下按住」= 移动军队。但双击的**第一下**会被游戏原有逻辑当成普通点击执行,
    // 而普通点击会重新选中对象(点到没军队的地块 → activeArmySize 变 0)→ 第二下的移动就失效了。
    // 解法(标准的单击/双击消歧):选中军队时,把第一下的原生点击**压住一个双击窗口**:
    //   窗口内来了第二下 → 丢弃这次点击(选中不被改);没来 → 原样补发(普通单击只晚 200ms)。
    // 只在「反转 + 安卓 + 开关开 + 游戏中 + 已选中军队」时介入。
    // ------------------------------------------------------------------
    private static boolean pendingClick = false;
    private static long pendingClickTime = 0L;
    private static int pendingClickX = 0;
    private static int pendingClickY = 0;
    private static int pendingClickButton = 0;
    /** 刚刚补发过的那次点击:说明这次"双击"慢到第一下已经生效,第二下就不再用于移动军队。 */
    private static boolean clickDelivered = false;

    // ------------------------------------------------------------------
    // 顶部按钮「长按 1 秒」状态
    //
    // 这个判定是**每帧轮询**的(在 ButtonTopOutliner.drawText 里查),所以计时不能直接用
    // System.currentTimeMillis():后期卡顿时单帧变长(比如一帧 200ms),轮询就会"错过"
    // 精确的 1 秒点,表现为要按住超过 1 秒才弹面板。
    // 改为:①按**游戏帧时间**(raw delta 累加)计时;②判定时提前一帧
    // (elapsed + 本帧时长 >= 阈值即认定),于是实际按住时长落在
    // [阈值 - 一帧, 阈值] 区间内 —— 无论帧快帧慢都不会超过阈值。
    // ------------------------------------------------------------------
    private static boolean menuPressActive = false;
    /** 已按住多久(秒),按游戏帧时间累加。 */
    private static float menuPressElapsed = 0f;
    /** 最近一次"按帧计时"所用的帧号 + 该帧时长(两个 Hook 共用一个帧基准)。 */
    private static long clockFrameStamp = -1L;
    private static float lastFrameSeconds = 0f;
    private static int menuPressX = 0;
    private static int menuPressY = 0;
    /**
     * 本次触摸是否已被本插件「整段吞掉」(长按按钮开面板 / 点面板外关面板)。
     *
     * <p>吞掉的必须是**整段**手势(按下 + 移动 + 抬起):只吞抬起的话,按下时没调到
     * {@code MapTouchManager.actionDown},而后续 {@code actionMove} 却会传给地图 ——
     * 地图的平移锚点(`iStartMovePosX/Y`)还停在**上一次**手势的位置,
     * 于是第一次移动就按"旧锚点 → 当前位置"的大位移平移地图,表现为视角跳变。</p>
     *
     * <p>自愈:每次主手指按下开头会先清掉它(即使某次抬起事件丢失,也不会永久卡死)。</p>
     */
    private static boolean swallowGesture = false;

    // ------------------------------------------------------------------
    // 「启用快速国策」的"再点一次"状态
    //
    // 国策(任务)树上:轻点一次 = 原生(弹出"开始国策"窗口);弹窗出现后,再点一次同一个国策
    // (同一位置、4 秒内)= 替玩家点掉窗口里的确认按钮。
    // 武装条件:那一次轻点必须"干净"(没拖动、没长按)且发生在国策界面上 ——
    // 拖动是在滚动国策树,不能算数。
    // ------------------------------------------------------------------
    /** 记录中:本次手势可能成为"点开某个国策的那一下"。 */
    private static boolean missionTracking = false;
    private static long missionTapDownTime = 0L;
    private static int missionTapDownX = 0;
    private static int missionTapDownY = 0;
    private static boolean missionTapMoved = false;
    /** 本次按下时,国策(任务)界面是否开着(决定这次干净轻点会不会武装)。 */
    private static boolean missionTapOnUi = false;
    /** 武装点:上一次"国策界面上的干净轻点"的位置/时间;"再点一次"(同位置、窗口内)即确认。 */
    private static boolean missionArmed = false;
    private static long missionArmedTime = 0L;
    private static int missionArmedX = 0;
    private static int missionArmedY = 0;
    /** 武装后是否见过"开始国策"弹窗:弹窗开过又关了(玩家自己点了选项)→ 解除武装,避免留下死区。 */
    private static boolean missionSawPopup = false;
    /** "再点一次"已确认、正在等"开始国策"弹窗出现的剩余重试帧数。 */
    private static int missionConfirmRetryFrames = 0;

    // ------------------------------------------------------------------
    // 持久化
    // ------------------------------------------------------------------
    private static Boolean enabledCache = null;
    private static Boolean quickMissionCache = null;
    private static boolean invertedCacheLoaded = false;
    private static Boolean invertedCache = null;

    private QuickActionsState() {
    }

    // ==================================================================
    // 开关
    // ==================================================================

    public static boolean isDesktop() {
        try {
            return CFG.isDesktop();
        } catch (Throwable ignored) {
            return true;
        }
    }

    /**
     * 「启用快捷操作」是否打开 —— 这是本插件自己的状态(不再占用 {@code Touch.selectArmiesMode},
     * 后者已经还给原版的"一次性框选"语义)。
     */
    public static boolean isEnabled() {
        if (enabledCache == null) {
            enabledCache = Boolean.valueOf(readPrefBool(PREF_KEY_ENABLED, false));
        }
        return enabledCache.booleanValue();
    }

    /** 切换/设置快捷操作总开关(持久保存)。 */
    public static void setEnabled(boolean value) {
        enabledCache = Boolean.valueOf(value);
        writePrefBool(PREF_KEY_ENABLED, value);
        SafeLog.d(TAG + ": 启用快捷操作 -> " + (value ? "开" : "关"));
    }

    /** 长按是否生效:桌面端始终生效;安卓端由开关决定。 */
    public static boolean isLongPressEnabled() {
        return isDesktop() || isEnabled();
    }

    /** 手势类功能(框选)当前是否可用(安卓端 + 开关打开 + 在地图交互状态)。 */
    public static boolean isBoxSelectUsable() {
        return !isDesktop() && isEnabled() && canInteract();
    }

    /** 「反转框选与移动」是否打开。 */
    public static boolean isInverted() {
        if (!invertedCacheLoaded) {
            invertedCacheLoaded = true;
            invertedCache = Boolean.valueOf(readPrefBool(PREF_KEY_INVERTED, false));
        }
        return invertedCache.booleanValue();
    }

    public static void setInverted(boolean value) {
        invertedCacheLoaded = true;
        invertedCache = Boolean.valueOf(value);
        writePrefBool(PREF_KEY_INVERTED, value);
        SafeLog.d(TAG + ": 反转框选与移动 -> " + (value ? "开" : "关"));
    }

    private static boolean canInteract() {
        try {
            return Game.menuManager.getInGame() && !Game.chooseProvinceMode;
        } catch (Throwable ignored) {
            return false;
        }
    }

    /**
     * 每帧一次的开关同步(由 {@code MapTouchManager.drawSelectMode} 的注入调用,该函数游戏每帧都调):
     * 首次调用把持久化的值写回 {@link Touch#selectArmiesMode};之后观察按钮的切换并持久化。
     */
    public static void tick() {
        updateFrameClock(); // 每帧一次:记录本帧的游戏时长,并给“按钮按住”计时
        replayPendingClickIfDue(); // 每帧一次:双击窗口过了就补发压住的地图点击
        tickMissionConfirmRetry(); // 每帧一次:国策"再点一次"后弹窗晚一帧出现的话,补点确认
        tickMissionArmedCheck(); // 每帧一次(仅武装期间):弹窗开过又关了 → 解除武装
    }

    // ==================================================================
    // 顶部按钮:点一下 = 原版一次性框选(点按完全保留原生行为)
    //
    // 总开关已改为「长按 1 秒」面板里切换(见下面"长按1秒"部分);这里只剩提示文案与
    // "点一下按钮武装的一次性框选"的状态登记。
    // ==================================================================

    /** 本次按下走的是"按钮点一下武装的原版一次性框选":清掉我们自己的手势状态。 */
    public static void onNativeOneShotBox() {
        onOtherPointerDown();     // 清候选/长按/轻点状态(原版框选不需要我们插手)
    }

    /** 按钮提示里的交互说明(常显)。 */
    public static String guideLineTap() {
        return "点一下:原版一次性框选(下次按下地图即开始)";
    }

    public static String guideLineHold() {
        return "长按 1 秒:打开设置面板(开关在里面)";
    }

    /** 「启用快速国策」打开时的提示行。 */
    public static String guideLineQuickMission() {
        return "国策(任务):点开后,再点一次同一个国策 = 直接确认";
    }

    // ==================================================================
    // 启用快速国策:再点一次同一国策 = 点掉"开始国策"弹窗里的确认按钮
    // ==================================================================

    /** 「启用快速国策」是否打开(默认关,持久保存)。 */
    public static boolean isQuickMissionEnabled() {
        if (quickMissionCache == null) {
            quickMissionCache = Boolean.valueOf(readPrefBool(PREF_KEY_QUICK_MISSION, false));
        }
        return quickMissionCache.booleanValue();
    }

    /** 切换/设置「启用快速国策」(持久保存)。 */
    public static void setQuickMission(boolean value) {
        quickMissionCache = Boolean.valueOf(value);
        writePrefBool(PREF_KEY_QUICK_MISSION, value);
        SafeLog.d(TAG + ": 启用快速国策 -> " + (value ? "开" : "关"));
    }

    /** 快速国策当前可否使用(安卓端 + 开关打开)。 */
    public static boolean isQuickMissionUsable() {
        return !isDesktop() && isQuickMissionEnabled();
    }

    /**
     * 主手指按下时的国策侧处理(必须在菜单分发之前调用:国策页面的点击会被菜单吃掉,但我们得先看到)。
     *
     * @return true = 这次触摸已由我们处理(调用方应吞掉:不再分发给菜单/地图)
     */
    public static boolean onMissionConfirmDown(int x, int y) {
        boolean onUi = QuickMissionConfirm.isMissionUiVisible();
        int decision = onMissionDownAt(x, y, System.currentTimeMillis(), onUi, isQuickMissionUsable());
        if (decision != 1) {
            return false;
        }
        // "再点一次同一个国策":立刻试着替玩家点掉「开始国策」类弹窗的确认。
        // 先试 RainfallEvent MOD 的「开始国策」窗口(InGame_StartFocus,带周期国策专用),
        // 再试原版任务事件窗口(InGame_Event,999/1000 活动事件)。
        int result = QuickMissionConfirm.tryConfirmStartFocus();
        if (result == QuickMissionConfirm.CONFIRM_DONE) {
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            swallowGesture();
            toast("国策:已确认(开始国策)");
            return true;
        }
        if (result == QuickMissionConfirm.CONFIRM_SKIP) {
            // 窗口在,但这次不动它(confirm() 调不动,比如版本差异)→ 交还原生,别再拦这一下
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            toast("国策:开始窗口无法自动确认,交还原生");
            return false;
        }
        result = QuickMissionConfirm.tryConfirmOpenMissionEvent();
        if (result == QuickMissionConfirm.CONFIRM_DONE) {
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            swallowGesture();
            toast("国策:已确认(事件弹窗)");
            return true;
        }
        if (result == QuickMissionConfirm.CONFIRM_SKIP) {
            // 弹窗在,但这次不动它(多选项/认不准/按钮是灰的)→ 交还原生,别再拦这一下
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            toast("国策:弹窗无法自动确认,交还原生");
            return false;
        }
        // CONFIRM_NONE:弹窗还没出现。任务刚真的挂上了(hasActiveMissionEvent)→ 弹窗马上就来:
        // 先吞掉这次点击、接下来几帧里补点确认;否则(比如点了不可用的国策只弹了报错)交还原生
        if (QuickMissionConfirm.hasActiveMissionEvent()) {
            swallowGesture();
            toast("国策:弹窗未出现,稍后补点");
            return true;
        }
        missionConfirmRetryFrames = 0;
        toast("国策:没有任务挂起,交还原生");
        return false;
    }

    /**
     * 国策"再点一次"判定内核(纯逻辑,便于单测;不碰游戏类)。
     *
     * @param uiContext 本次按下时国策(任务)界面是否开着(记录给"这次轻点会不会武装"用)
     * @param usable    功能是否可用(安卓端 + 开关打开)
     * @return 0 = 普通按下(开始记账);1 = 命中"再点一次同一个国策"(调用方应尝试"点确认")
     */
    public static int onMissionDownAt(int x, int y, long now, boolean uiContext, boolean usable) {
        if (!usable) {
            resetMissionTap();
            return 0;
        }
        if (missionArmed && now - missionArmedTime > MISSION_CONFIRM_WINDOW_MS) {
            clearMissionArmed(); // 窗口过期,自动解除武装
        }
        if (missionArmed && isMissionConfirmTap(missionArmedTime, now, missionArmedX, missionArmedY, x, y)) {
            // "再点一次同一个国策" → 交给调用方去点确认(弹窗晚一帧的兑底由重试机制负责)
            missionConfirmRetryFrames = MISSION_CONFIRM_RETRY_FRAMES;
            return 1;
        }
        // 普通按下:记账;抬起时若为"国策界面上的干净轻点",就把这里武装成新的"同一个国策"
        missionTracking = true;
        missionTapDownTime = now;
        missionTapDownX = x;
        missionTapDownY = y;
        missionTapMoved = false;
        missionTapOnUi = uiContext;
        return 0;
    }

    /** 这次按下是不是"再点一次同一个国策"(纯函数,便于单测):在窗口内 + 落点够近。 */
    public static boolean isMissionConfirmTap(long armedTime, long now, int armedX, int armedY, int x, int y) {
        return now - armedTime <= MISSION_CONFIRM_WINDOW_MS
                && Math.abs(x - armedX) <= DOUBLE_TAP_SLOP_PX
                && Math.abs(y - armedY) <= DOUBLE_TAP_SLOP_PX;
    }

    /** 国策侧单指移动:拖过(滚动国策树)就不再算"轻点"。 */
    public static void onMissionMove(int x, int y) {
        if (!missionTracking || missionTapMoved) {
            return;
        }
        if (Math.abs(x - missionTapDownX) > TAP_SLOP_PX || Math.abs(y - missionTapDownY) > TAP_SLOP_PX) {
            missionTapMoved = true;
        }
    }

    /** 主手指抬起(国策侧):国策界面上的干净轻点 → 武装成"可以再点一次确认"的那个国策。 */
    public static void onMissionUp(int x, int y) {
        onMissionUpAt(x, y, System.currentTimeMillis());
    }

    /** 同 {@link #onMissionUp},但可指定时间戳(便于单测)。 */
    public static void onMissionUpAt(int x, int y, long now) {
        if (!missionTracking) {
            return;
        }
        missionTracking = false;
        boolean clean = !missionTapMoved
                && Math.abs(x - missionTapDownX) <= TAP_SLOP_PX
                && Math.abs(y - missionTapDownY) <= TAP_SLOP_PX
                && now - missionTapDownTime <= TAP_MAX_MS;
        if (clean && missionTapOnUi) {
            missionArmed = true;
            missionArmedTime = now;
            missionArmedX = missionTapDownX;
            missionArmedY = missionTapDownY;
            missionSawPopup = false;
            toast("国策:已武装,再点一次=确认"); // 仅调试开关打开时
        }
        missionTapOnUi = false;
    }

    /**
     * 每帧一次:"再点一次国策"之后,弹窗可能"晚一帧"才出现 —— 在接下来几帧里补点确认。
     * (由 {@link #tick()} 调用;成功/无法确认/超时即结束。)
     */
    public static void tickMissionConfirmRetry() {
        if (missionConfirmRetryFrames <= 0) {
            return;
        }
        // 先试 MOD 的「开始国策」窗口,再试原版任务事件窗口(与按下时的尝试顺序一致)
        int result = QuickMissionConfirm.tryConfirmStartFocus();
        if (result == QuickMissionConfirm.CONFIRM_DONE) {
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            toast("国策:补点确认成功");
            return;
        }
        if (result == QuickMissionConfirm.CONFIRM_SKIP) {
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            return;
        }
        result = QuickMissionConfirm.tryConfirmOpenMissionEvent();
        if (result == QuickMissionConfirm.CONFIRM_DONE) {
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            toast("国策:补点确认成功");
            return;
        }
        if (result == QuickMissionConfirm.CONFIRM_SKIP) {
            missionConfirmRetryFrames = 0;
            clearMissionArmed();
            return;
        }
        missionConfirmRetryFrames--;
    }

    /**
     * 每帧一次(仅在武装期间):弹窗开过又关了(比如玩家自己点了选项)→ 解除武装,
     * 避免之后点到同一位置的点击被误当成"再点一次"而吞掉。
     */
    public static void tickMissionArmedCheck() {
        if (!missionArmed) {
            return;
        }
        long now = System.currentTimeMillis();
        if (now - missionArmedTime > MISSION_CONFIRM_WINDOW_MS) {
            clearMissionArmed();
            return;
        }
        if (QuickMissionConfirm.isMissionWindowVisible()) {
            missionSawPopup = true;
        } else if (missionSawPopup) {
            clearMissionArmed();
            toast("国策:武装解除(弹窗已关)");
        }
    }

    /** 当前是否有"等弹窗出现"的快速确认重试(调试/单测用)。 */
    public static boolean isMissionConfirmPending() {
        return missionConfirmRetryFrames > 0;
    }

    /** 当前是否有"再点一次即可确认"的武装点(调试/单测用)。 */
    public static boolean isMissionArmed() {
        return missionArmed;
    }

    /** 解除武装(确认完成 / 弹窗关掉 / 认不准时调用)。 */
    public static void clearMissionArmed() {
        missionArmed = false;
        missionArmedTime = 0L;
        missionSawPopup = false;
    }

    /** 清掉国策"再点一次"的全部临时状态(等待中的重试与武装都会被取消)。 */
    public static void resetMissionTap() {
        missionTracking = false;
        missionTapMoved = false;
        missionTapOnUi = false;
        missionConfirmRetryFrames = 0;
        clearMissionArmed();
    }

    private static Preferences preferences() {
        if (Gdx.app == null) {
            return null;
        }
        return Gdx.app.getPreferences(PREF_NAME);
    }

    private static boolean readPrefBool(String key, boolean def) {
        try {
            Preferences prefs = preferences();
            return prefs != null && prefs.getBoolean(key, def);
        } catch (Throwable ignored) {
            return def;
        }
    }

    private static void writePrefBool(String key, boolean value) {
        try {
            Preferences prefs = preferences();
            if (prefs != null) {
                prefs.putBoolean(key, value);
                prefs.flush();
            }
        } catch (Throwable ignored) {
        }
    }

    // ==================================================================
    // 真机可见诊断:用游戏自带的提示框(红色文字 + 小图标,和「要求未满足」同款)
    // ==================================================================

    /**
     * 在屏幕上弹一条游戏自带的提示(仅调试开关打开时)。
     *
     * <p>用 {@code Game.menuManager.addToast_Error(text, Images.missions)} —— 与任务系统
     * 自己弹「要求未满足」用的是同一个提示框;日志同时照写。</p>
     *
     * <p>⚠ 不要用安卓系统 Toast:部分系统会限制/静默失败,真机排查靠不住(实测踩过);
     * 也用不到任何安卓反射。</p>
     */
    public static void toast(String text) {
        if (!DEBUG_OUTPUT || text == null) {
            return;
        }
        try {
            Game.menuManager.addToast_Error(text, Images.missions);
        } catch (Throwable ignored) {
        }
        SafeLog.d("QuickActions: " + text.replace('\n', ' '));
    }

    // ==================================================================
    // 帧计时(按游戏帧时间算,而不是墙上时钟)
    // ==================================================================

    /**
     * 每帧只累加一次的游戏时间。
     *
     * <p>两个 Hook 都会调它({@link #tick()} 与 {@link #onButtonFrame})——它们可能在同一帧里都跑,
     * 所以用帧号去重;无论谁先到,本帧的游戏时长都会记到 {@link #lastFrameSeconds}。</p>
     */
    private static void updateFrameClock() {
        try {
            long frameId = Gdx.graphics.getFrameId();
            if (frameId == clockFrameStamp) {
                return; // 同一帧,已计过
            }
            clockFrameStamp = frameId;
            lastFrameSeconds = frameSeconds();
        } catch (Throwable ignored) {
            lastFrameSeconds = 0f;
        }
        if (menuPressActive) {
            menuPressElapsed += lastFrameSeconds;
        }
    }

    /** 本帧花了多久(秒)。用 raw delta:不被 libGDX 的平滑均摊影响,最能反映"这一帧多长"。 */
    private static float frameSeconds() {
        try {
            float delta = Gdx.graphics.getRawDeltaTime();
            if (!(delta > 0f)) {
                delta = Gdx.graphics.getDeltaTime();
            }
            return delta > 0f ? delta : 0f;
        } catch (Throwable ignored) {
            return 0f;
        }
    }

    // ==================================================================
    // 地图手势
    // ==================================================================

    /** 主手指按下且落在游戏地图上(未被菜单吃掉)。 */
    public static void onMapDown(int x, int y) {
        onMapDownAt(x, y, System.currentTimeMillis(), isBoxSelectUsable(), isInverted());
    }

    /**
     * 同 {@link #onMapDown},但把门控与时间戳作为参数传入(内核逻辑,便于单测)。
     *
     * @param usable   当前平台/开关是否允许框选
     * @param inverted 是否处于「反转框选与移动」模式
     */
    public static void onMapDownAt(int x, int y, long now, boolean usable, boolean inverted) {
        mapDown = true;
        pendingBox = false;
        invertedBoxCandidate = false;
        boxOwned = false;
        lastUpWasTap = false;
        downTime = now;
        downX = x;
        downY = y;
        LongPressState.maxMovePx = 0f; // 重置长按判定的"最大偏移"统计

        boolean armed = usable && lastTapUpTime > 0L && now - lastTapUpTime <= DOUBLE_TAP_MS
                && Math.abs(x - lastTapUpX) <= DOUBLE_TAP_SLOP_PX
                && Math.abs(y - lastTapUpY) <= DOUBLE_TAP_SLOP_PX;
        lastTapUpTime = 0L; // 用掉即清,避免三连点连锁
        // 反转模式下还要求"这一下够快":若第一下的点击已经补发(选中可能已被改掉),
        // 就不把第二下当成"移动军队"的手势 —— 避免慢双击变成"先选对象又行军"的怪行为
        LongPressState.secondTapTouch = movableDoubleTap(armed, inverted, clickDelivered);
        clickDelivered = false; // 本次按下用掉即清
        if (armed) {
            // 确认是双击:丢掉上一下压住的地图点击(保住军队选中,第二下的移动才有效)
            dropPendingClick();
        }
        // 默认模式:框选靠"双击第二下 + 拖动"(普通按住得留给平移/移动)
        // 反转模式:框选靠"普通按住 + 拖动",双击第二下留给"移动军队"
        if (inverted) {
            pendingBox = false;
            invertedBoxCandidate = usable && !armed;
        } else {
            pendingBox = armed;
            invertedBoxCandidate = false;
        }
    }

    /** 按下被菜单吃掉:清掉地图手势状态,并登记"可能是长按了顶部按钮"。 */
    public static void onMenuDown(int x, int y) {
        mapDown = false;
        pendingBox = false;
        invertedBoxCandidate = false;
        lastUpWasTap = false;
        LongPressState.secondTapTouch = false;
        lastTapUpTime = 0L;
        cancelLongPress();
        dropPendingClick(); // 用户去点了别的 UI → 丢掉还压着的地图点击
        LongPressState.downTime = 0L; // 清掉陈旧的长按计时(否则提示里会显示上一次地图按下的数据)
        LongPressState.maxMovePx = 0f;

        menuPressActive = true;
        menuPressElapsed = 0f;
        menuPressX = x;
        menuPressY = y;
    }

    /** 第二根手指按下(缩放等):放弃本次单指手势(含长按判定)。 */
    public static void onOtherPointerDown() {
        mapDown = false;
        pendingBox = false;
        invertedBoxCandidate = false;
        boxOwned = false;
        lastUpWasTap = false;
        LongPressState.secondTapTouch = false;
        lastTapUpTime = 0L;
        dropPendingClick();
        cancelLongPress();
    }

    /**
     * 单指移动时统计最大偏移(长按判定用):避免"拖出去再拖回来"被当成没动过。
     *
     * <p>基准点用本类自己记录的按下位置(每次地图按下都会更新),不依赖长按模块是否已初始化。</p>
     */
    public static void onMapMove(int x, int y) {
        updateMaxMove(x, y);
    }

    /**
     * 取消本次长按判定。
     *
     * <p>两指手势(缩放等)自始至终都不应该触发"长按移动军队":一是第二根手指按下/移动时直接取消,
     * 二是判定改用"最大偏移",避免捏合时主手指净位移刚好很小的情形误触发。</p>
     */
    public static void cancelLongPress() {
        LongPressState.valid = false;
    }

    /** 是否正等待「双击第二下按满时间」进入框选(默认模式)。 */
    public static boolean isPendingBox() {
        return pendingBox;
    }

    /**
     * 这次移动是否应该"不要再平移地图"(交给长按框选)。
     *
     * <p>反转模式下,按下后按住 ≥{@code LONG_PRESS_MS} 就说明这次是"按住框选"而不是"直接拖动平移":
     * 之后的移动不应该再平移地图 —— 否则等到位移达到 {@code BOX_DRAG_MIN_PX} 真正开始框选时,
     * 视角已经被最初那段拖动带偏了(实测:长按框选时视角会移动一小段)。</p>
     *
     * <p>不影响正常平移:按住时间不足时(或按满前就拖开、候选已作废时)照旧平移。</p>
     */
    public static boolean shouldBlockMapPan() {
        return shouldBlockMapPanAt(System.currentTimeMillis());
    }

    /** 同 {@link #shouldBlockMapPan} ,但把时间戳作为参数传入(便于单测)。 */
    public static boolean shouldBlockMapPanAt(long now) {
        return invertedBoxCandidate && now - downTime >= LONG_PRESS_MS;
    }

    /** 当前是否正在由本插件手势进行框选。 */
    public static boolean isBoxSelecting() {
        return boxOwned;
    }

    /**
     * 抬起时是否应该"移动军队到该点"。
     *
     * <p><b>默认模式</b>:按住 ≥ {@code LONG_PRESS_MS} 且<b>全程没拖动</b>(最大偏移 ≤
     * {@code LONG_PRESS_MAX_MOVE_PX})→ 移动。框选必须靠拖动触发,所以"没拖动"天然排除框选。</p>
     *
     * <p><b>反转模式</b>:必须是<b>双击的第二下</b>,且没拖动 —— <b>不要求按住</b>。
     * 原因:安卓上游戏自己的双击是"缩放复位"({@code MapScale} + 设置项
     * {@code ENABLE_DOUBLE_CLICK_TO_RESET_MAP_SCALE},安卓强制启用),而反转模式把这个手势
     * 交给"移动军队";要求按住会让"双击"变得很难用(实测:用户第二下轻点一下就松手,
     * 数据 dur=42 → 失败)。选中军队时我们接管双击,没选军队时仍旧走游戏原生的缩放复位。</p>
     */
    public static boolean canMoveArmy(long durationMs) {
        return canMoveArmyAt(durationMs, isLongPressEnabled(), isInverted(), LongPressState.secondTapTouch);
    }

    /**
     * 同 {@link #canMoveArmy} ,但把门控/模式/双击标记作为参数传入(内核逻辑,便于单测)。
     *
     * <p>⚠ 本方法<b>不读取任何共享状态字段</b>:{@code valid}/{@code secondTapTouch} 都由调用方
     * 先取到局部变量再传进来 —— 否则"先清零再判定"会让结果永远为 false(实测踩过的致命坑)。</p>
     */
    public static boolean canMoveArmyAt(long durationMs, boolean enabled, boolean inverted, boolean secondTap) {
        if (!enabled) {
            return false;
        }
        // 拖动过 = 平移地图 / 框选,不移动军队
        if (LongPressState.maxMovePx > LONG_PRESS_MAX_MOVE_PX) {
            return false;
        }
        if (inverted) {
            return secondTap; // 反转:双击(第二下不必按住)
        }
        return durationMs >= LONG_PRESS_MS; // 默认:长按
    }

    /**
     * 单指移动时调用:判定是否要开始框选。
     *
     * @return {@code true} 表示本帧起已进入原生单指框选(锚点=按下的位置)
     */
    public static boolean tryStartBoxSelect(int x, int y) {
        return tryStartBoxSelectAt(x, y, System.currentTimeMillis());
    }

    /** 同 {@link #tryStartBoxSelect} ,但可指定时间戳(便于单测)。 */
    public static boolean tryStartBoxSelectAt(int x, int y, long now) {
        // 先用当前位置刷新"最大偏移":移动事件一帧可能只来一次,判定要用最新数据
        updateMaxMove(x, y);

        if (pendingBox) {
            if (now - downTime < BOX_HOLD_MS) {
                if (Math.abs(x - downX) > TAP_SLOP_PX || Math.abs(y - downY) > TAP_SLOP_PX) {
                    pendingBox = false; // 还没按满时间就拖开了 → 放弃,走原生平移
                }
                return false;
            }
            pendingBox = false;
            return startBox();
        }

        if (invertedBoxCandidate) {
            if (now - downTime >= LONG_PRESS_MS) {
                // ⚠ 只有"真的拖了"才进框选:长按时的轻微手抖不算
                // (若在这里无条件 startBox,会 cancelLongPress → 长按移动永远失效)
                if (LongPressState.maxMovePx >= BOX_DRAG_MIN_PX) {
                    invertedBoxCandidate = false;
                    return startBox();
                }
                return false;
            }
            if (LongPressState.maxMovePx > TAP_SLOP_PX) {
                invertedBoxCandidate = false; // 按满时间之前就拖开 → 当作普通平移
            }
        }
        return false;
    }

    /** 用当前位置刷新最大偏移(与 {@link #onMapMove} 同一套逻辑,供"该不该开始框选"用)。 */
    private static void updateMaxMove(int x, int y) {
        float dx = x - downX;
        float dy = y - downY;
        float distance = (float) Math.sqrt(dx * dx + dy * dy);
        if (distance > LongPressState.maxMovePx) {
            LongPressState.maxMovePx = distance;
        }
    }

    /** 进入游戏原生的单指框选(锚点 = 这次按下的位置)。 */
    private static boolean startBox() {
        boxOwned = true;
        cancelLongPress(); // 本次触摸不再参与长按移动
        try {
            Game.mapTouchManager.iSelectBoxX = downX;
            Game.mapTouchManager.iSelectBoxY = downY;
            Game.mapTouchManager.iSelectBoxWidth = 1;
            Game.mapTouchManager.iSelectBoxHeight = 1;
            Game.mapTouchManager.selectMode = true;
            Game.setCursorDrag();
        } catch (Throwable ignored) {
        }
        return true;
    }

    /** 手指抬起(在 {@code Touch.actionUp} 的开头调用,此时原生还没结算选框)。 */
    public static void onMapUp(int pointer, int x, int y) {
        onMapUpAt(pointer, x, y, System.currentTimeMillis());
    }

    /** 同 {@link #onMapUp} ,但可指定时间戳(便于单测)。 */
    public static void onMapUpAt(int pointer, int x, int y, long now) {
        if (pointer != 0) {
            onOtherPointerDown();
            return;
        }

        if (boxOwned) {
            if (Math.abs(x - downX) < MIN_BOX_PX && Math.abs(y - downY) < MIN_BOX_PX) {
                // 几乎没拖动 → 撤销选框,把这一下交还给原生(等同一次普通双击)
                try {
                    Game.mapTouchManager.selectMode = false;
                    Game.setCursorDefault();
                } catch (Throwable ignored) {
                }
            }
            boxOwned = false;
            pendingBox = false;
            invertedBoxCandidate = false;
            LongPressState.secondTapTouch = false;
            lastUpWasTap = false;
            mapDown = false;
            return; // 本插件手势触发的这一次抬起,不作为新的「轻点」
        }

        boolean tap = mapDown
                && !LongPressState.secondTapTouch // 双击的第二下之后不再记新轻点
                && now - downTime <= TAP_MAX_MS
                && Math.abs(x - downX) <= TAP_SLOP_PX
                && Math.abs(y - downY) <= TAP_SLOP_PX;
        mapDown = false;
        pendingBox = false;
        invertedBoxCandidate = false;
        // ⚠ 不要在这里清 LongPressState.secondTapTouch:本方法在 Touch.actionUp 开头(HEAD)跑,
        // 而"该不该移动军队"是紧接着在 MapTouchManager.actionUp 里判定的 ——
        // 提前清掉会让"反转模式:双击第二下按住"永远判不出来。
        // 它由下一次按下(onMapDownAt)或菜单/第二根手指重新赋值,不会残留。
        lastTapUpTime = tap ? now : 0L;
        lastTapUpX = x;
        lastTapUpY = y;
        lastUpWasTap = tap;
    }

    // ==================================================================
    // 压住第一下原生点击(反转模式 + 已选中军队)
    // ==================================================================

    /**
     * 这一拍抬起是否应该把**原生地图点击压住**(返回 true 时调用方要 cancel 掉这次 up)。
     *
     * <p>这一下可能是「双击移动军队」的第一下:若立刻执行原生点击,选中对象会被改掉
     * (点到没军队的地块 → activeArmySize 变 0)→ 第二下的移动失效。</p>
     */
    public static boolean deferMapClick(int pointer, int x, int y, int button) {
        if (pointer != 0 || !lastUpWasTap) {
            return false;
        }
        if (isDesktop() || !isEnabled() || !isInverted() || !canInteract()) {
            return false;
        }
        boolean hasArmy;
        try {
            hasArmy = Game.activeArmySize > 0;
        } catch (Throwable t) {
            return false;
        }
        return deferMapClickAt(x, y, button, hasArmy);
    }

    /** 同 {@link #deferMapClick} ,但把门控作为参数传入(内核逻辑,便于单测)。 */
    public static boolean deferMapClickAt(int x, int y, int button, boolean allowed) {
        if (!allowed) {
            return false;
        }
        pendingClick = true;
        pendingClickTime = System.currentTimeMillis();
        pendingClickX = x;
        pendingClickY = y;
        pendingClickButton = button;
        SafeLog.d(TAG + ": 压住原生地图点击(等双击窗口,保住军队选中)");
        return true;
    }

    /**
     * 这次"第二次轻点"能否用于移动军队(纯函数,便于单测)。
     *
     * <p>反转模式下必须是双击的第二下,<b>而且第一下的点击没被补发过</b> ——
     * 补发意味着这次双击慢于 {@link #DEFER_CLICK_MS},第一下的点击已经生效(选中被改),
     * 此时再移动军队就会移错对象;那就让它当两次普通点击好了。</p>
     */
    public static boolean movableDoubleTap(boolean armed, boolean inverted, boolean clickDelivered) {
        return armed && !(inverted && clickDelivered);
    }

    /** 当前是否压着一次还没补发的地图点击(单测/调试用)。 */
    public static boolean isClickDeferred() {
        return pendingClick;
    }

    /** 每帧一次:等待窗口 ({@link #DEFER_CLICK_MS}) 过了还没等到第二下 → 把压住的点击原样补发。 */
    public static void replayPendingClickIfDue() {
        if (!pendingClick || System.currentTimeMillis() - pendingClickTime < DEFER_CLICK_MS) {
            return;
        }
        int x = pendingClickX;
        int y = pendingClickY;
        int button = pendingClickButton;
        pendingClick = false;
        clickDelivered = true; // 紧接着的"第二下"不再当作移动军队手势
        try {
            // 与原生 Touch.actionUp 的顺序一致(点击 → 清理模式 → 清理悬停)
            if (!Game.menuManager.actionUp(x, y, 0, button)) {
                Game.mapTouchManager.actionUp(x, y, 0, button);
            }
            Touch.resetAllModes();
            if (!CFG.isDesktop()) {
                Game.hoverManager.resetHoverActive_Menu();
            }
            SafeLog.d(TAG + ": 补发地图点击 (" + x + "," + y + ")");
        } catch (Throwable t) {
            SafeLog.e(TAG + ": 补发地图点击失败", t);
        }
    }

    /** 丢掉压住的点击(已确认是双击 / 用户去点了别的 UI)。 */
    private static void dropPendingClick() {
        if (pendingClick) {
            pendingClick = false;
            SafeLog.d(TAG + ": 丢弃压住的地图点击(已确认双击,保住军队选中)");
        }
    }

    // ==================================================================
    // 顶部按钮「长按 1 秒」→ 弹出设置面板
    // ==================================================================

    /** 任意手指抬起时调用:结束"按钮长按"登记。 */
    public static void onAnyUp(int pointer) {
        if (pointer == 0) {
            menuPressActive = false;
            menuPressElapsed = 0f;
        }
    }

    /**
     * 由 {@code MixinButtonTopOutliner} 在按钮绘制时每帧调用一次:
     * 判断「按住这个按钮 1 秒」是否成立,成立则弹出设置面板。
     */
    public static void onButtonFrame(Object button, int imageID, int posX, int posY, int width, int height) {
        if (isDesktop() || !menuPressActive || swallowGesture) {
            return;
        }
        if (!isQuickButton(button, imageID)) {
            return;
        }
        // 按帧累加按住时长(与 tick() 共用帧基准,每帧只加一次)
        updateFrameClock();
        try {
            if (!Gdx.input.isTouched(0)) {
                menuPressActive = false;
                return;
            }
        } catch (Throwable ignored) {
        }
        // 提前一帧判定:把"下一帧大概要花的时间"算进去,于是实际按住时长落在
        // [阈值 - 一帧, 阈值] 内 —— 后期卡顿(单帧变长)也不会出现"要按住超过 1 秒"的情况。
        if (!holdReached(menuPressElapsed, lastFrameSeconds)) {
            return;
        }
        // 到点了:确认按下的那一点确实落在这个按钮上
        // (元素坐标是相对菜单原点的,和游戏自己的命中判定一样要加上菜单位置)
        int[] offset = findMenuOffset(button);
        int offsetX = offset == null ? 0 : offset[0];
        int offsetY = offset == null ? 0 : offset[1];
        if (menuPressX < posX + offsetX || menuPressX > posX + offsetX + width
                || menuPressY < posY + offsetY || menuPressY > posY + offsetY + height) {
            menuPressActive = false; // 按住的是别的元素 → 放弃
            return;
        }
        menuPressActive = false;
        menuPressElapsed = 0f;
        swallowGesture = true;
        QuickActionsPanel.open(posX + offsetX, posY + offsetY, width, height);
    }

    /**
     * 找出按钮所属菜单的位置(元素坐标相对菜单原点;与游戏自己的命中判定一致)。
     *
     * <p>只在「长按满 1 秒」那一刻调用一次,不做每帧扫描。</p>
     */
    private static int[] findMenuOffset(Object button) {
        try {
            List<Menu> menus = Game.menuManager.getActiveMenu();
            for (int m = 0; m < menus.size(); m++) {
                Menu menu = menus.get(m);
                if (menu == null) {
                    continue;
                }
                int size = menu.getMenuElementsSize();
                for (int i = 0; i < size; i++) {
                    if (menu.getMenuElement(i) == button) {
                        return new int[]{menu.getPosX(), menu.getPosY()};
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    // ==================================================================
    // 判定结论(供按钮提示显示:真机上按住按钮就能看到上一次的结果)
    // ==================================================================

    private static String lastVerdict = "(还没有长按记录)";
    private static String lastLive = "";

    /**
     * 记录一次「抬起时的移动判定」结果({@code MixinMapTouchManager.lpm$actionUp} 调用)。
     *
     * <p>真机上拿不到日志,所以把结论存成字符串、显示在「启用快捷操作」按钮的按住提示里:
     * 按住按钮不动就能看到 {@link #verdictLine()}。</p>
     */
    public static void recordVerdict(boolean valid, int pointer, long durationMs, boolean move) {
        if (!DEBUG_OUTPUT) {
            return;
        }
        try {
            int army = Game.activeArmySize;
            boolean inGame = Game.menuManager.getInGame();
            boolean chooseProvince = Game.chooseProvinceMode;
            boolean inverted = isInverted();
            boolean enabled = isLongPressEnabled();
            lastVerdict = "上次: dur=" + durationMs
                    + " mv=" + ((int) LongPressState.maxMovePx)
                    + " dbl=" + (LongPressState.secondTapTouch ? 1 : 0)
                    + " inv=" + (inverted ? 1 : 0) + " en=" + (enabled ? 1 : 0)
                    + " | valid=" + (valid ? 1 : 0) + " ptr=" + pointer
                    + " ig=" + (inGame ? 1 : 0) + " cp=" + (chooseProvince ? 1 : 0)
                    + " army=" + army + " => move=" + (move ? 1 : 0);
            SafeLog.d("LongPressMoveArmy: " + lastVerdict);
        } catch (Throwable t) {
            lastVerdict = "上次记录失败: " + t;
        }
    }

    /** 当前手势对照说明(显示在按钮提示里,避免"没反应"时不明所以)。 */
    public static String modeLine() {
        return isInverted()
                ? "反转模式:双击=移动军队 · 长按拖动=框选"
                : "默认模式:长按=移动军队 · 双击按住=框选";
    }

    /** 上一次长按抬起的判定结论(显示在按钮提示里)。 */
    public static String verdictLine() {
        return lastVerdict;
    }

    /** 调试用:快速国策状态行。 */
    public static String missionLine() {
        return "快速国策:" + (isQuickMissionEnabled() ? "开" : "关")
                + " 武装=" + (missionArmed ? 1 : 0)
                + " 国策界面=" + (QuickMissionConfirm.isMissionUiVisible() ? 1 : 0)
                + " 弹窗=" + (QuickMissionConfirm.isMissionWindowVisible() ? 1 : 0);
    }

    /** 当前按着时的实时状态(按住按钮时看这个:能看到自己的手抖位移有多少)。 */
    public static String livePressLine() {
        try {
            if (LongPressState.downTime <= 0L || !LongPressState.valid) {
                return "当前: 无正在判定的地图长按"; // 按下被菜单吃掉/已抬起时不要显示陈年数据
            }
            long dur = System.currentTimeMillis() - LongPressState.downTime;
            lastLive = "当前: 按住 " + dur + "ms 位移 " + ((int) LongPressState.maxMovePx)
                    + "px 阈值=" + (int) LONG_PRESS_MS + "ms/" + (int) LONG_PRESS_MAX_MOVE_PX + "px";
            return lastLive;
        } catch (Throwable ignored) {
            return "当前: ?";
        }
    }

    /**
     * 传入的按钮是否就是「启用快捷操作」那个按钮。
     *
     * <p>安卓端它是 {@code aoc.kingdoms.lukasz.menusInGame.InGame$14}(继承 {@code ButtonTopOutliner});
     * 这里再兜一层:凡 {@code InGame$N} 且图标是 outliner 的按钮也算。</p>
     */
    public static boolean isQuickButton(Object button, int imageID) {
        try {
            String name = button.getClass().getName();
            if (QUICK_BUTTON_CLASS.equals(name)) {
                return true;
            }
            return name.startsWith(IN_GAME_BUTTON_PREFIX) && imageID == OUTLINER_IMAGE_ID;
        } catch (Throwable ignored) {
            return false;
        }
    }

    /**
     * 「按住够久了没」的阈值判定(纯函数,便于单测)。
     *
     * <p>已累加的游戏时间 + <b>本帧时长</b> ≥ 阈值 即成立 —— 提前一帧,使实际按住时长
     * 落在 {@code [阈值 - 一帧, 阈值]} 区间内:帧越快越贴近 1 秒,帧慢了就提前一点点,
     * <b>永远不会超过 1 秒</b>。</p>
     *
     * @param elapsedSeconds 已按住时长(按游戏帧时间累加,秒)
     * @param frameSeconds   本帧的时长(秒)
     */
    public static boolean holdReached(float elapsedSeconds, float frameSeconds) {
        float frame = frameSeconds > 0f ? frameSeconds : 0f;
        return (elapsedSeconds + frame) * 1000f >= BUTTON_HOLD_MS;
    }

    /**
     * 主手指刚刚按下时调用:清掉上一次的「整段吞掉」标记。
     *
     * <p>只清标记,不做其它判断 —— 这样即使某次抬起事件丢失,下一次按下也能自愈。</p>
     */
    public static void onPrimaryDown() {
        swallowGesture = false;
        replayPendingClickIfDue(); // 兜底:万一每帧 tick 没跑,别让点击一直压着
    }

    /** 本次触摸是否已被整段吞掉(此时移动也不要传给地图)。 */
    public static boolean isSwallowingGesture() {
        return swallowGesture;
    }

    /** 把本次触摸整段吞掉(含后续的移动与抬起)。 */
    public static void swallowGesture() {
        swallowGesture = true;
        menuPressActive = false;
        menuPressElapsed = 0f;
        dropPendingClick();
    }

    /** 抬起时若需要吞掉(本按下已被整段吞掉),返回 true 并清理。 */
    public static boolean consumeSwallowedUp(int pointer) {
        if (pointer != 0 || !swallowGesture) {
            return false;
        }
        swallowGesture = false;
        menuPressActive = false;
        menuPressElapsed = 0f;
        try {
            Touch.resetAllModes();
        } catch (Throwable ignored) {
        }
        try {
            if (!CFG.isDesktop()) {
                Game.hoverManager.resetHoverActive_Menu();
            }
        } catch (Throwable ignored) {
        }
        return true;
    }
}
