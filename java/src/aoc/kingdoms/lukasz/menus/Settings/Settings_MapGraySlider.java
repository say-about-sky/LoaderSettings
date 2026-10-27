package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu_element.Slider;

/**
 * 地图设置子页的原生滑块:百分比数字的明暗微调。
 * 范围 -100..100;0 = 按滤镜色自动拉开对比(亮底压暗/暗底提亮),
 * 负数继续压暗、正数向白提亮。拖动时实时生效;离开地图页时由 Settings_MapBack 统一写盘。
 */
public class Settings_MapGraySlider extends Slider {
    private final String sLabel;
    private String sDrawText;

    public Settings_MapGraySlider(String sText, int iPosX, int iPosY, int iWidth, int iHeight, int iMin, int iMax, int iCurrent) {
        super(sText, iPosX, iPosY, iWidth, iHeight, iMin, iMax, iCurrent);
        this.sLabel = sText;
        updateDrawText();
        updateTextWidth();
    }

    private void updateDrawText() {
        int value = getCurrent();
        sDrawText = sLabel + ": " + (value > 0 ? "+" : "") + value;
    }

    @Override
    public void actionElement() {
        Game.settingsManager.SIEGE_PERCENT_GRAY = getCurrent() / 100.0f;
        updateDrawText();
        updateTextWidth();
    }

    @Override
    public String getDrawText() {
        return sDrawText == null ? "" : sDrawText;
    }

    @Override
    public boolean getScrollable() {
        return false;
    }
}
