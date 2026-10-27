package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;

/** 设置页里的「地图」导航行:点击进入地图子页。 */
public class Settings_MapOpen extends ButtonGame2 {
    public Settings_MapOpen(String sText, int fontID, int iTextPositionX, int iPosX, int iPosY, int nWidth, boolean isClickable, int nHeight) {
        super(sText, fontID, iTextPositionX, iPosX, iPosY, nWidth, isClickable, nHeight);
    }

    @Override
    public void actionElement() {
        Settings_Menu.MAP_PAGE = true;
        Game.menuManager.setViewID(View.SETTINGS);
    }
}
