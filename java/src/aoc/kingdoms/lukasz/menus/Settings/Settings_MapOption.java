package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;

/** 地图子页选项按钮:0=原版地图 1=伪3D地图 2=关闭地图。 */
public class Settings_MapOption extends ButtonGame2 {
    public int iMapMode;

    public Settings_MapOption(String sText, int fontID, int iTextPositionX, int iPosX, int iPosY, int nWidth, boolean isClickable, int nHeight, int iMapMode) {
        // 同原版 Settings_UIScale:checkBox=true 会按选中态染色(当前项绿色、未选中红色)
        super(sText, fontID, iTextPositionX, iPosX, iPosY, nWidth, isClickable, nHeight, Game.settingsManager.MAP_MODE == iMapMode);
        this.iMapMode = iMapMode;
    }

    @Override
    public void actionElement() {
        // 静态应用:仅保存设置,重启游戏后生效(运行时开关在 Game.loadSettings 里按 MAP_MODE 计算)
        Game.settingsManager.MAP_MODE = this.iMapMode;
        Game.saveSettings();
        Settings_MapUI.restoreDebugPanel();
        Settings_Menu.MAP_PAGE = false;
        Game.menuManager.setViewID(View.SETTINGS);
        Game.menuManager.addToast("\u91cd\u542f\u6e38\u620f\u751f\u6548");
    }
}
