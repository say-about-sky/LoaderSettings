package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;

/** 地图子页「返回」按钮。 */
public class Settings_MapBack extends ButtonGame2 {
    public Settings_MapBack(String sText, int fontID, int iTextPositionX, int iPosX, int iPosY, int nWidth, boolean isClickable, int nHeight) {
        super(sText, fontID, iTextPositionX, iPosX, iPosY, nWidth, isClickable, nHeight);
    }

    @Override
    public void actionElement() {
        Settings_MapUI.restoreDebugPanel();
        // 灰度滑块值是拖动时实时生效的，离开地图页时统一持久化（避免拖动中反复写盘）
        Game.saveSettings();
        Settings_Menu.MAP_PAGE = false;
        Game.menuManager.setViewID(View.SETTINGS);
    }
}
