package com.saysky.ui;

import java.util.List;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/**
 * Host-created native menu used by {@link com.saysky.ui.api.CustomPage}.
 * It is a normal game {@code Menu}: title (with engine close X) + content rows + panel
 * background, so it stacks on top of the current page in the active view.
 */
final class CustomMenu extends Menu {

    final String pageId;

    CustomMenu(String pageId, String title, int titleHeight,
               int x, int y, int width, int height, List<MenuElement> elements) {
        this.pageId = pageId;
        initMenu(new MenuTitle(title, 1.0f, titleHeight, false, false),
                x, y, width, height, elements, true, true);
    }

    @Override
    public void draw(SpriteBatch oSB, int iTranslateX, int iTranslateY, boolean menuIsActive, Status titleStatus) {
        try {
            int titleH = getTitle() == null ? 0 : getTitle().getHeight();
            Renderer.drawBoxCorner(oSB, getPosX() + iTranslateX, getPosY() - titleH + iTranslateY,
                    getWidth(), getHeight() + titleH);
            Renderer.drawBox_EDGE_TOP_LR(oSB, Images.mainBox,
                    getPosX() + iTranslateX, getPosY() + iTranslateY, getWidth(), getHeight(), true);
        } catch (Throwable ignored) {
        }
        super.draw(oSB, iTranslateX, iTranslateY, menuIsActive, titleStatus);
    }
}
