package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;

/**
 * 地图设置子页的布尔开关行:点击立即切换并保存(无需重启)。
 * 文本形如「占领进度显示: 开/关」,按钮底色按选中态显示绿/红。
 */
public class Settings_MapToggle extends ButtonGame2 {
    /** 占领进度滤镜(省份颜色+斜线蒙版)。 */
    public static final int SETTING_SIEGE_TINT = 0;
    /** 占领百分比标签。 */
    public static final int SETTING_SIEGE_PERCENT = 1;

    private final String sLabel;
    private final int iSetting;

    public Settings_MapToggle(String sText, int fontID, int iTextPositionX, int iPosX, int iPosY, int nWidth, boolean isClickable, int nHeight, boolean checked, int iSetting) {
        super(withState(sText, checked), fontID, iTextPositionX, iPosX, iPosY, nWidth, isClickable, nHeight, checked);
        this.sLabel = sText;
        this.iSetting = iSetting;
    }

    private static String withState(String sText, boolean on) {
        return sText + ": " + (on ? "\u5f00" : "\u5173");
    }

    private boolean currentValue() {
        if (iSetting == SETTING_SIEGE_PERCENT) {
            return Game.settingsManager.SIEGE_PERCENT;
        }
        return Game.settingsManager.SIEGE_TINT;
    }

    private void setValue(boolean on) {
        if (iSetting == SETTING_SIEGE_PERCENT) {
            Game.settingsManager.SIEGE_PERCENT = on;
        } else {
            Game.settingsManager.SIEGE_TINT = on;
        }
    }

    @Override
    public void actionElement() {
        boolean on = !currentValue();
        setValue(on);
        Game.saveSettings();
        setCheckboxState(on);
        setText(withState(sLabel, on));
    }
}
