package com.saysky.siegetint;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData4;
import aoc.kingdoms.lukasz.textures.Image;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import java.util.List;

/**
 * 围攻(占领进度)滤镜。
 *
 * <p>原版在省份中心绘制「堡垒图标 + 蓝色进度条」;本类改为:</p>
 * <ul>
 *   <li>用<b>即将占领该省的文明颜色</b>给被围攻省份铺一层斜线蒙版(与占领完成后的省图层同色);</li>
 *   <li>透明度 = siegeProgress(0..1)线性加深,随地图省份透明度缩放;</li>
 *   <li>斜线蒙版用于区分「占领中」与「已占领」(已占领为原版平铺色块);</li>
 *   <li>完全由 SiegeManager.lProvinces / ProvinceData4.isUnderSiege 每帧驱动,
 *       围攻结束或取消时当帧消失,不缓存任何状态。</li>
 * </ul>
 *
 * <p>关闭滤镜开关(SettingsManager.SIEGE_TINT=false)时不绘制滤镜,
 * 由 {@link #drawSiege} 转回原版图标与进度条;百分比标签由
 * SettingsManager.SIEGE_PERCENT 单独控制(仅滤镜开启时生效)。</p>
 */
public final class SiegeTint {
    /** 斜线图集边长(像素)。必须能被 STRIPE_PERIOD 整除,保证平铺无缝。 */
    private static final int TEX_SIZE = 64;
    /** 斜线周期(纹理内像素)。 */
    private static final int STRIPE_PERIOD = 32;
    /** 斜线线宽(纹理内像素)。 */
    private static final int STRIPE_BAND = 11;
    /** 一整张纹理在地图坐标里的边长(地图像素),决定条纹疏密。 */
    private static final float TILE_MAP_PX = 40.0f;
    /** 进度 1.0 时的额外加深倍率(条纹覆盖率约 1/3,需要补偿观感)。 */
    private static final float ALPHA_BOOST = 2.2f;
    private static final float ALPHA_MAX = 0.9f;
    /** 刚开战时 progress=0(要等首个日结算才增长),给一个淡色下限避免完全没有提示。 */
    private static final float PROGRESS_FLOOR = 0.15f;

    /**
     * 百分比文字:0..100 的字符串与排版按需缓存,避免每帧分配/重复排版。
     *
     * <p>为了在「大量围攻」时把绘制成本从 O(省份数) 压到 O(字号档数),文字高度被量化成
     * 若干档(TIER_HEIGHT),每档×百分比只预算文字宽高用于居中;绘制时把所有标签
     * 塞进同一个 BitmapFontCache 一次性提交(阴影 + 主文字各一遍)。</p>
     *
     * <p><b>彩色怎么生效</b>:该 gdx 的 {@code addText(GlyphLayout,x,y)} 用 layout 自带的
     * {@code colors} 着色(忽略 cache 颜色),而 {@code addText(CharSequence,x,y)} 才会用
     * <b>cache.setColor()</b> 设置的颜色 —— 所以这里走后者。</p>
     */
    private static final int PERCENT_COUNT = 101;
    private static final String[] PERCENT_TEXT = new String[PERCENT_COUNT];
    /** 字号档位:文字高度(地图像素),从近景大省到远景小省。 */
    private static final float[] TIER_HEIGHT = {15.0f, 21.0f, 29.0f, 39.0f, 52.0f};
    private static final int TIER_COUNT = TIER_HEIGHT.length;
    /** 每档的阴影偏移(地图像素),按档位预计算。 */
    private static final float[] TIER_SHADOW = new float[TIER_COUNT];
    /** [档位][百分比] 的文字宽高(仅用于居中,颜色不受它影响)。 */
    private static final float[][] TEXT_W = new float[TIER_COUNT][PERCENT_COUNT];
    private static final float[][] TEXT_H = new float[TIER_COUNT][PERCENT_COUNT];
    /** 各档对应的字体 data.scale(绘制时需临时套用,否则文字大小会变成 1.0)。 */
    private static final float[] TIER_SCALE = new float[TIER_COUNT];
    private static BitmapFont labelFont;
    private static boolean metricsReady;

    /**
     * 单帧标签收集缓冲:一次遍历同时完成滤镜与标签,避免重复查省/查围攻状态。
     * 超过容量时只画前 MAX_LABELS 个(视口内正常远达不到)。
     */
    private static final int MAX_LABELS = 192;
    private static final int[] LBL_TIER = new int[MAX_LABELS];
    private static final int[] LBL_PERCENT = new int[MAX_LABELS];
    private static final float[] LBL_X = new float[MAX_LABELS];
    private static final float[] LBL_Y = new float[MAX_LABELS];
    /** 文字颜色 = 占领者文明色(RGB 全保留),亮度由 SETTING 滑块控制。 */
    private static final float[] LBL_R = new float[MAX_LABELS];
    private static final float[] LBL_G = new float[MAX_LABELS];
    private static final float[] LBL_B = new float[MAX_LABELS];
    private static int labelCount;

    private static final Color TINT_COLOR = new Color(1.0f, 1.0f, 1.0f, 1.0f);
    /** 目标文字高度 = 省份短边 × 比例,再就近量化到 TIER_HEIGHT 档位。 */
    private static final float TEXT_SIZE_RATIO = 0.16f;
    /** 文字在屏幕上的最小高度(像素);低于此值不画(远景大量小省会糊成一片)。 */
    private static final float MIN_SCREEN_TEXT_PX = 9.0f;
    /** 文字颜色与滤镜底色的亮度差(亮底压暗/暗底提亮都用它)。 */
    private static final float TEXT_CONTRAST = 0.35f;

    /**
     * 文明色缓存(按省份 ID 直接索引):把 findBesiegerCiv + 外交查询从「每帧每省」降到
     * 「进度变化 / TTL 到期时」,围攻省数量再大也只是查数组。
     */
    private static final int COLOR_CACHE_CAP = 16384;
    private static final int COLOR_CACHE_TTL = 20;
    private static final int[] CC_FRAME = new int[COLOR_CACHE_CAP];
    private static final float[] CC_PROGRESS = new float[COLOR_CACHE_CAP];
    private static final float[] CC_R = new float[COLOR_CACHE_CAP];
    private static final float[] CC_G = new float[COLOR_CACHE_CAP];
    private static final float[] CC_B = new float[COLOR_CACHE_CAP];
    private static int frameStamp = 1000;

    private static Image stripeImage;
    private static boolean stripeTried;

    static {
        for (int t = 0; t < TIER_COUNT; t++) {
            float s = TIER_HEIGHT[t] * 0.06f;
            TIER_SHADOW[t] = s < 1.0f ? 1.0f : s;
        }
    }

    private SiegeTint() {
    }

    /** 滤镜开关;settingsManager 尚未初始化时按开启处理。 */
    public static boolean isFilterEnabled() {
        try {
            return Game.settingsManager == null || Game.settingsManager.SIEGE_TINT;
        } catch (Throwable t) {
            return true;
        }
    }

    /** 百分比标签开关;settingsManager 尚未初始化时按开启处理。 */
    public static boolean isPercentEnabled() {
        try {
            return Game.settingsManager == null || Game.settingsManager.SIEGE_PERCENT;
        } catch (Throwable t) {
            return true;
        }
    }

    /**
     * SiegeManager.drawSiege 的转发目标(像素通道,在部队/兵牌之后)。
     * 开启时仅隐藏原版图标(滤镜/百分比已在 ProvinceDraw.drawOccupiedProvinces 的地图通道绘制),
     * 关闭时调用原版实现(原名已改为 drawSiege_Vanilla)。
     */
    public static void drawSiege(SpriteBatch oSB, float fAlpha, int iProvinceID) {
        if (isFilterEnabled()) {
            try {
                oSB.setColor(1.0f, 1.0f, 1.0f, 1.0f);
            } catch (Throwable ignored) {
            }
            return;
        }
        try {
            SiegeManager.drawSiege_Vanilla(oSB, fAlpha, iProvinceID);
        } catch (Throwable t) {
            CFG.exceptionStack(t);
        }
    }

    /**
     * 由 ProvinceDraw.drawOccupiedProvinces 末尾调用。
     * 位于省份填色之后、部队与城市之前,因此滤镜不会盖住兵模与兵牌。
     */
    public static void drawAll(SpriteBatch oSB) {
        if (oSB == null) {
            return;
        }
        List<Integer> list = SiegeManager.lProvinces;
        int n = SiegeManager.iProvincesSize;
        if (list == null || n <= 0) {
            return;
        }
        boolean filter = isFilterEnabled();
        boolean labels = filter && isPercentEnabled() && prepareTextMetrics();
        ShaderProgram shader = Renderer.shaderAlpha_Pattern;
        boolean canTint = filter && shader != null && ensureStripe();
        if (!canTint && !labels) {
            return;
        }

        // 循环外取一次(原来每省各 try/catch 取一遍)
        float extraScale = 1.0f;
        try {
            extraScale = Game.mapBG.iMapExtraScale;
        } catch (Throwable ignored) {
        }
        if (extraScale <= 0.0f) {
            extraScale = 1.0f;
        }

        float alphaMax = 0.0f;
        if (canTint) {
            float baseAlpha = 0.4f;
            try {
                baseAlpha = ProvinceDraw.getProvinceAlpha()
                        * (1.0f + Game.settingsManager.PROVINCE_OCCUPIED_ALPHA_EXTRA);
            } catch (Throwable ignored) {
            }
            if (baseAlpha > 0.002f) {
                alphaMax = Math.min(ALPHA_MAX, baseAlpha * ALPHA_BOOST);
            }
            if (alphaMax <= 0.002f) {
                canTint = false;
            }
        }

        boolean fogOfWar = false;
        try {
            fogOfWar = Game.FOG_OF_WAR;
        } catch (Throwable ignored) {
        }

        float grayBias = 0.0f;
        float mapScale = 1.0f;
        if (labels) {
            try {
                grayBias = Game.settingsManager.SIEGE_PERCENT_GRAY;
            } catch (Throwable ignored) {
            }
            if (grayBias < -1.0f) {
                grayBias = -1.0f;
            }
            if (grayBias > 1.0f) {
                grayBias = 1.0f;
            }
            try {
                mapScale = Game.mapScale.getCurrentScale();
            } catch (Throwable ignored) {
            }
            if (!(mapScale > 0.02f)) {
                mapScale = 1.0f;
            }        }

        frameStamp++;
        labelCount = 0;

        float saveR = 1.0f;
        float saveG = 1.0f;
        float saveB = 1.0f;
        float saveA = 1.0f;
        try {
            Color batchColor = oSB.getColor();
            if (batchColor != null) {
                saveR = batchColor.r;
                saveG = batchColor.g;
                saveB = batchColor.b;
                saveA = batchColor.a;
            }
        } catch (Throwable ignored) {
        }

        boolean shaderChanged = false;
        try {
            for (int i = 0; i < n; i++) {
                try {
                    Integer boxed = list.get(i);
                    if (boxed == null) {
                        continue;
                    }
                    int provinceID = boxed.intValue();
                    Province province = Game.getProvince(provinceID);
                    if (province == null || !province.getDrawProvince()) {
                        continue;
                    }
                    if (fogOfWar && !province.getFogDrawArmy()) {
                        continue;
                    }
                    ProvinceData4 data4 = Game.getProvinceData4(provinceID);
                    if (data4 != null && !data4.isUnderSiege()) {
                        continue;
                    }
                    Image provinceBG = province.getProvinceBG();
                    if (provinceBG == null) {
                        continue;
                    }
                    int w = (int) (provinceBG.getWidth() * extraScale);
                    int h = (int) (provinceBG.getHeight() * extraScale);
                    if (w <= 0 || h <= 0) {
                        continue;
                    }
                    float progress = province.getSiegeProgress();
                    if (!(progress > 0.0f)) {
                        progress = 0.0f;
                    } else if (progress > 1.0f) {
                        progress = 1.0f;
                    }

                    // 文明色:滤镜与百分比共用一次解析,并按省份缓存(见 resolveColor)
                    if (canTint || labels) {
                        resolveColor(provinceID, province, progress);
                    }

                    if (canTint) {
                        Texture texture = provinceBG.getTexture();
                        if (texture != null) {
                            float ramp = PROGRESS_FLOOR + (1.0f - PROGRESS_FLOOR) * progress;
                            float alpha = ramp * alphaMax;
                            if (alpha > 0.002f) {
                                int x = province.getTranslateProvincePosX() + province.getMinX();
                                int y = Game.mapCoords.getPosY() + province.getMinY();
                                if (!shaderChanged) {
                                    oSB.setShader(shader);
                                    shaderChanged = true;
                                }
                                shader.setUniformf("u_maskScale", Math.max(1.0f, w / TILE_MAP_PX));
                                shader.setUniformf("u_maskScaleY", Math.max(1.0f, h / TILE_MAP_PX));
                                texture.bind(1);
                                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                                TINT_COLOR.a = alpha;
                                oSB.setColor(TINT_COLOR);
                                stripeImage.draw(oSB, x, y, w, h);
                                oSB.flush();
                            }
                        }
                    }

                    if (labels && labelCount < MAX_LABELS) {
                        addLabel(province, w, h, progress, mapScale, grayBias);
                    }
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable t) {
            CFG.exceptionStack(t);
        } finally {
            if (shaderChanged) {
                try {
                    oSB.setShader(Renderer.shaderDefault);
                } catch (Throwable ignored) {
                }
            }
            try {
                oSB.setColor(saveR, saveG, saveB, saveA);
            } catch (Throwable ignored) {
            }
        }

        // 标签在滤镜恢复默认 shader 之后一次性提交(见 flushLabels)
        if (labels && labelCount > 0) {
            try {
                flushLabels(oSB);
            } catch (Throwable t) {
                CFG.exceptionStack(t);
            }
        }
    }

    /**
     * 收集一个百分比标签:只做纯算数 + 数组写入,不碰 GL/字体,成本常量级;
     * 真正提交由 {@link #flushLabels} 一次性完成。
     */
    private static void addLabel(Province province, int w, int h, float progress, float mapScale, float grayBias) {
        int percent = Math.max(0, Math.min(100, (int) (progress * 100.0f + 0.5f)));
        int tier = tierFor(Math.min(w, h) * TEXT_SIZE_RATIO);
        // 屏幕上太小就跳过:远景几十个小省的数字既看不清,又要白烧顶点
        if (TIER_HEIGHT[tier] * mapScale < MIN_SCREEN_TEXT_PX) {
            return;
        }
        float textW = TEXT_W[tier][percent];
        float textH = TEXT_H[tier][percent];
        if (textW <= 0.0f || textH <= 0.0f) {
            return;
        }

        // 文字颜色 = 占领色(保色相),亮度自动与滤镜底色拉开一档(亮底压暗 / 暗底提亮),
        // 滑块再微调(±1 ≈ ±0.5 亮度);压暗按比例缩放、提亮向白混合。
        float cr = TINT_COLOR.r;
        float cg = TINT_COLOR.g;
        float cb = TINT_COLOR.b;
        float lum = 0.299f * cr + 0.587f * cg + 0.114f * cb;
        float target = (lum > 0.5f ? lum - TEXT_CONTRAST : lum + TEXT_CONTRAST) + grayBias * 0.5f;
        target = Math.max(0.08f, Math.min(0.95f, target));
        if (target > lum) {
            float t = Math.min(1.0f, (target - lum) / Math.max(0.001f, 1.0f - lum));
            cr += (1.0f - cr) * t;
            cg += (1.0f - cg) * t;
            cb += (1.0f - cb) * t;
        } else if (lum > 0.001f) {
            float k = target / lum;
            cr *= k;
            cg *= k;
            cb *= k;
        } else {
            cr = target;
            cg = target;
            cb = target;
        }
        cr = Math.max(0.0f, Math.min(1.0f, cr));
        cg = Math.max(0.0f, Math.min(1.0f, cg));
        cb = Math.max(0.0f, Math.min(1.0f, cb));

        float centerX = province.getTranslateProvincePosX() + province.iCenterShiftX;
        float centerY = Game.mapCoords.getPosY() + province.iCenterShiftY;
        LBL_X[labelCount] = centerX - textW * 0.5f;
        // 字体基线向上生长(调用时传 -y),所以基线 = 中心 + 半高 才是垂直居中
        LBL_Y[labelCount] = centerY + textH * 0.5f;
        LBL_TIER[labelCount] = tier;
        LBL_PERCENT[labelCount] = percent;
        LBL_R[labelCount] = cr;
        LBL_G[labelCount] = cg;
        LBL_B[labelCount] = cb;
        labelCount++;
    }

    /**
     * 一次性提交本帧所有标签。
     *
     * <p>阴影与主文字都塞进同一个 BitmapFontCache:同字体纹理,整批只产生一次
     * (按字体页数计数的少量)draw call。</p>
     *
     * <p><b>为何用 addText(CharSequence,x,y)</b>:gdx 的 addText(GlyphLayout,x,y) 从
     * layout 自带的 colors 取色(忽略 cache 颜色),而 addText(CharSequence,...) 才会用
     * cache.setColor() 设置的颜色 —— 后者是官方可用路径。</p>
     */
    private static void flushLabels(SpriteBatch oSB) {
        BitmapFont font = labelFont;
        if (font == null) {
            labelCount = 0;
            return;
        }
        BitmapFontCache cache = font.getCache();
        if (cache == null) {
            labelCount = 0;
            return;
        }
        cache.clear();
        BitmapFont.BitmapFontData data = null;
        float oldScaleX = 1.0f;
        float oldScaleY = 1.0f;
        try {
            data = font.getData();
            if (data != null) {
                oldScaleX = data.scaleX;
                oldScaleY = data.scaleY;
            }
            // 按档位分组:同一档只需设一次字体 scale,且同档文字仍能 batch 在同一 cache 里
            for (int t = 0; t < TIER_COUNT; t++) {
                if (data != null) {
                    data.setScale(TIER_SCALE[t]);
                }
                // 阴影(半透黑)
                cache.setColor(0.0f, 0.0f, 0.0f, 0.6f);
                for (int i = 0; i < labelCount; i++) {
                    if (LBL_TIER[i] != t) {
                        continue;
                    }
                    float s = TIER_SHADOW[t];
                    cache.addText(percentText(LBL_PERCENT[i]), LBL_X[i] + s, -(LBL_Y[i] + s));
                }
                // 主文字(逐省颜色 = 占领色,改颜色只改 cache 的 Color,不触发 flush)
                for (int i = 0; i < labelCount; i++) {
                    if (LBL_TIER[i] != t) {
                        continue;
                    }
                    cache.setColor(LBL_R[i], LBL_G[i], LBL_B[i], 1.0f);
                    cache.addText(percentText(LBL_PERCENT[i]), LBL_X[i], -LBL_Y[i]);
                }
            }
            cache.draw(oSB);
        } finally {
            if (data != null) {
                try {
                    data.setScale(oldScaleX, oldScaleY);
                } catch (Throwable ignored) {
                }
            }
            cache.clear();
            labelCount = 0;
        }
    }

    /** 目标高度就近落档(档位有限才能把文字批成少量 draw call)。 */
    private static int tierFor(float targetHeight) {
        for (int t = 0; t < TIER_COUNT; t++) {
            if (targetHeight <= TIER_HEIGHT[t]) {
                return t;
            }
        }
        return TIER_COUNT - 1;
    }

    /**
     * 预算各档位下 0..100% 的文字宽高(仅用于居中)并记录字体 scale。
     * 只在字体对象变化(语言/UI 比例重载)时重建一次;临时改 data.scale 后立刻还原。
     */
    private static boolean prepareTextMetrics() {
        BitmapFont font = null;
        try {
            if (Renderer.fontMain != null && CFG.FONT_BOLD >= 0 && CFG.FONT_BOLD < Renderer.fontMain.size()) {
                font = Renderer.fontMain.get(CFG.FONT_BOLD);
            }
        } catch (Throwable ignored) {
        }
        if (font == null) {
            return false;
        }
        if (font == labelFont) {
            return metricsReady;
        }
        labelFont = font;
        metricsReady = false;
        try {
            BitmapFont.BitmapFontData data = font.getData();
            if (data == null) {
                return false;
            }
            float oldScaleX = data.scaleX;
            float oldScaleY = data.scaleY;
            try {
                data.setScale(1.0f);
                GlyphLayout layout = new GlyphLayout();
                layout.setText(font, percentText(100));
                float base = layout.height;
                if (!(base > 0.5f)) {
                    base = 20.0f;
                }
                for (int t = 0; t < TIER_COUNT; t++) {
                    float scale = Math.max(0.15f, Math.min(4.0f, TIER_HEIGHT[t] / base));
                    TIER_SCALE[t] = scale;
                    data.setScale(scale);
                    for (int p = 0; p < PERCENT_COUNT; p++) {
                        layout.setText(font, percentText(p));
                        TEXT_W[t][p] = layout.width;
                        TEXT_H[t][p] = layout.height;
                    }
                }
                metricsReady = true;
            } finally {
                data.setScale(oldScaleX, oldScaleY);
            }
        } catch (Throwable ignored) {
            metricsReady = false;
        }
        return metricsReady;
    }

    private static String percentText(int percent) {
        String text = PERCENT_TEXT[percent];
        if (text == null) {
            text = percent + "%";
            PERCENT_TEXT[percent] = text;
        }
        return text;
    }

    /**
     * 即将占领该省的文明 = 省内「非控制者」部队中兵力最大者(优先取正在交战的)。
     * 与 {@code Province.occupyProvince()} 的 bestCivID 规则同源,保证颜色与占领后的省图层一致。
     *
     * <p>注意:不能用 {@code province.isOccupied()} 选 target —— 它等价于
     * {@code getOccupiedByCivID() != 0},叛军占领(-1)时会把 -1 传给 isAtWar。</p>
     */
    private static int findBesiegerCiv(Province province, int controller) {
        int bestWarCiv = -1;
        int bestWarArmy = -1;
        int bestAnyCiv = -1;
        int bestAnyArmy = -1;
        try {
            int armySize = province.getArmySize();
            for (int i = 0; i < armySize; i++) {
                ArmyDivision army = province.getArmy(i);
                if (army == null || army.civID <= 0 || army.civID == controller) {
                    continue;
                }
                if (army.iArmy > bestAnyArmy) {
                    bestAnyCiv = army.civID;
                    bestAnyArmy = army.iArmy;
                }
                if (army.iArmy > bestWarArmy && isAtWarSafe(controller, army.civID)) {
                    bestWarCiv = army.civID;
                    bestWarArmy = army.iArmy;
                }
            }
        } catch (Throwable ignored) {
        }
        return bestWarCiv > 0 ? bestWarCiv : bestAnyCiv;
    }

    /** 外交数据异常时按「交战」处理,避免因 mod 自定义外交而取不到颜色。 */
    private static boolean isAtWarSafe(int civA, int civB) {
        try {
            return DiplomacyManager.isAtWar(civA, civB);
        } catch (Throwable t) {
            return true;
        }
    }

    /**
     * 解析省份的滤镜/文字颜色(写入共享的 TINT_COLOR.r/g/b,a 由调用方决定)。
     *
     * <p>findBesiegerCiv 要遍历省内部队并做外交判定;大量围攻时每帧每省各算一次会很浪费。
     * 这里按省份 ID 用数组缓存:进度不变且未超过 TTL 时直接复用,进度一跳变立刻重算,
     * 因此占领者变化(换部队)最迟一个 TTL 内也会跟上。</p>
     */
    private static void resolveColor(int provinceID, Province province, float progress) {
        if (provinceID >= 0 && provinceID < COLOR_CACHE_CAP) {
            int age = frameStamp - CC_FRAME[provinceID];
            if (age >= 0 && age <= COLOR_CACHE_TTL && CC_PROGRESS[provinceID] == progress) {
                TINT_COLOR.r = CC_R[provinceID];
                TINT_COLOR.g = CC_G[provinceID];
                TINT_COLOR.b = CC_B[provinceID];
                return;
            }
            computeColor(provinceID, province);
            CC_FRAME[provinceID] = frameStamp;
            CC_PROGRESS[provinceID] = progress;
            CC_R[provinceID] = TINT_COLOR.r;
            CC_G[provinceID] = TINT_COLOR.g;
            CC_B[provinceID] = TINT_COLOR.b;
            return;
        }
        computeColor(provinceID, province);
    }

    private static void computeColor(int provinceID, Province province) {
        int occupied = 0;
        try {
            ProvinceData data = Game.getProvinceData(provinceID);
            if (data != null) {
                occupied = data.getOccupiedByCivID();
            }
        } catch (Throwable ignored) {
        }
        int owner = 0;
        try {
            owner = province.getCivID();
        } catch (Throwable ignored) {
        }
        int controller = occupied > 0 ? occupied : owner;

        // 优先取省内敌部队中兵力最大者(与 occupyProvince 同源),再退占领者/所有者。
        int civID = findBesiegerCiv(province, controller);
        if (civID <= 0) {
            civID = controller;
        }
        TINT_COLOR.a = 1.0f;
        if (civID <= 0 || !applyCivColor(civID)) {
            applyWarColor();
        }
        guardAgainstWhite();
    }

    private static void applyWarColor() {
        float r = 0.7f;
        float g = 0.7f;
        float b = 0.7f;
        try {
            Color war = DiplomacyManager.COLOR_WAR;
            if (war != null) {
                r = war.r;
                g = war.g;
                b = war.b;
            }
        } catch (Throwable ignored) {
        }
        TINT_COLOR.r = r;
        TINT_COLOR.g = g;
        TINT_COLOR.b = b;
    }

    /** 纯白几乎总是「没取到颜色」,换成战争色;战争色也白就用中灰。 */
    private static void guardAgainstWhite() {
        if (!(TINT_COLOR.r > 0.9f && TINT_COLOR.g > 0.9f && TINT_COLOR.b > 0.9f)) {
            return;
        }
        applyWarColor();
        if (TINT_COLOR.r > 0.9f && TINT_COLOR.g > 0.9f && TINT_COLOR.b > 0.9f) {
            TINT_COLOR.r = 0.7f;
            TINT_COLOR.g = 0.7f;
            TINT_COLOR.b = 0.7f;
        }
    }

    /** 把文明颜色写进 TINT_COLOR;成功返回 true。 */
    private static boolean applyCivColor(int civID) {
        try {
            Civilization civ = Game.getCiv(civID);
            if (civ != null) {
                TINT_COLOR.r = civ.getR();
                TINT_COLOR.g = civ.getG();
                TINT_COLOR.b = civ.getB();
                return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    /** 首次绘制时生成斜线蒙版图集;失败则本次会话不显示滤镜。 */
    private static boolean ensureStripe() {
        if (stripeImage != null) {
            return true;
        }
        if (stripeTried) {
            return false;
        }
        stripeTried = true;
        try {
            Pixmap pixmap = new Pixmap(TEX_SIZE, TEX_SIZE, Pixmap.Format.RGBA8888);
            pixmap.setColor(0.0f, 0.0f, 0.0f, 0.0f);
            pixmap.fill();
            pixmap.setColor(1.0f, 1.0f, 1.0f, 1.0f);
            for (int y = 0; y < TEX_SIZE; y++) {
                for (int x = 0; x < TEX_SIZE; x++) {
                    if ((x + y) % STRIPE_PERIOD < STRIPE_BAND) {
                        pixmap.drawPixel(x, y);
                    }
                }
            }
            Texture texture = new Texture(pixmap);
            texture.setFilter(Texture.TextureFilter.Nearest, Texture.TextureFilter.Nearest);
            texture.setWrap(Texture.TextureWrap.Repeat, Texture.TextureWrap.Repeat);
            pixmap.dispose();
            stripeImage = new Image(texture, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
            return true;
        } catch (Throwable t) {
            CFG.exceptionStack(t);
            return false;
        }
    }
}
