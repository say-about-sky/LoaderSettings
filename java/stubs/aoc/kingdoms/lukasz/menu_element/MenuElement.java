package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;

public class MenuElement {
    public MenuElement_Hover menuElementHover;

    protected MenuElement() {
    }

    public int getHeight() {
        return 0;
    }

    public int getPosX() {
        return 0;
    }

    public int getPosY() {
        return 0;
    }

    public int getWidth() {
        return 0;
    }

    public final void setPosX(int iPosX) {
    }

    public void setWidth(int iWidth) {
    }

    public final void setPosY(int iPosY) {
    }

    public final void setHeight(int iHeight) {
    }

    public final void setIsInView(boolean isInView) {
    }

    public boolean getVisible() {
        return true;
    }

    public void setVisible(boolean isVisible) {
    }

    public String getText() {
        return "";
    }

    public void setText(String sText) {
    }

    public void setText2(String sText) {
    }

    public void setCheckboxState(boolean state) {
    }

    public boolean getCheckboxState() {
        return false;
    }

    public void actionElement() {
    }

    public void actionElementPPM() {
    }

    public void buildElementHover() {
    }

    public void resetElementHover() {
    }

    public boolean getClickable() {
        return true;
    }

    public final void setClickable(boolean isClickable) {
    }

    public final boolean getIsInView() {
        return false;
    }

    public boolean getIsHovered() {
        return false;
    }

    public void setIsHovered(boolean isHovered) {
    }

    public void updateHovered() {
    }

    public void updateHover(int nPosX, int nPosY, int menuPosX, int menuPosY) {
    }

    public void draw(com.badlogic.gdx.graphics.g2d.SpriteBatch oSB, int iTranslateX, int iTranslateY) {
    }

    public void draw(com.badlogic.gdx.graphics.g2d.SpriteBatch oSB, int iTranslateX, int iTranslateY, boolean isActive, boolean scrollableY) {
    }

    public void updateSlider(int nPosX) {
    }

    public void updateLanguage() {
    }

    public void dispose() {
    }

    public int getSFX() {
        return 0;
    }

    public boolean canBeHovered() {
        return true;
    }
}
