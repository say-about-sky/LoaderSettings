package aoc.kingdoms.lukasz.menu;

import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.List;

public class Menu {
    public Menu() {
    }

    public void draw(SpriteBatch oSB, int iTranslateX, int iTranslateY, boolean menuIsActive, Status titleStatus) {
    }

    protected final void initMenu(MenuTitle menuTitle, int iPosX, int iPosY, int iWidth, int iHeight, List<MenuElement> menuElements, boolean visible, boolean closeable) {
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

    /** Real signature: {@code public boolean setWidth(int)} (may refuse/clamp). */
    public boolean setWidth(int iWidth) {
        return false;
    }

    public int getHeight() {
        return 0;
    }

    public int getMenuPosX() {
        return 0;
    }

    public int getMenuPosY() {
        return 0;
    }

    public boolean getVisible() {
        return true;
    }

    public void setVisible(boolean visible) {
    }

    public MenuTitle getTitle() {
        return null;
    }

    public void actionCloseMenu() {
    }
}
