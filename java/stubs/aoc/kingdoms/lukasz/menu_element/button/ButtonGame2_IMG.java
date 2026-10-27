package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.menu_element.MenuElement;

public class ButtonGame2_IMG extends MenuElement {

    public int imgID;

    public ButtonGame2_IMG(String sText, int fontID, int iTextPositionX, int iPosX, int iPosY, int nWidth, boolean isClickable, int imgID) {
        this.imgID = imgID;
    }

    public ButtonGame2_IMG(String sText, int fontID, int iTextPositionX, int iPosX, int iPosY, int nWidth, boolean isClickable, int btnH, int imgID) {
        this.imgID = imgID;
    }
}
