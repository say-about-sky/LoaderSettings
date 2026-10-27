package aoc.kingdoms.lukasz.menu_element;

/** 编译桩:仅用于 javac(不进 dex)。原生滑块。 */
public class Slider extends MenuElement {
    public Slider(String sText, int iPosX, int iPosY, int iWidth, int iHeight, int iMin, int iMax, int iCurrent) {
    }

    public final int getCurrent() {
        return 0;
    }

    public String getDrawText() {
        return "";
    }

    public final void updateTextWidth() {
    }

    public boolean getScrollable() {
        return false;
    }
}
