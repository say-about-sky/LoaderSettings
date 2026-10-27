package com.saysky.web;

import java.util.ArrayList;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.textures.Images;

/**
 * Native popup frame: a real game Menu with a title bar and the engine's close (X) button.
 * The WebView is positioned over the menu's content area, so the title/X stay visible.
 */
public final class WebDialogMenu extends Menu {

    private final String pluginId;
    private final String entry;
    private final String title;

    public WebDialogMenu(String title, String pluginId, String entry) {
        this(title, pluginId, entry, 0, 0, -1, -1);
    }

    /**
     * @param x      content box left (game units), {@code x < 0} = auto center/cascade
     * @param y      content box top, {@code y < 0} = auto
     * @param w      content width, {@code <= 0} = auto
     * @param h      content height, {@code <= 0} = auto
     */
    public WebDialogMenu(String title, String pluginId, String entry,
                         int x, int y, int w, int h) {
        this.title = (title == null || title.length() == 0) ? "Web UI" : title;
        this.pluginId = pluginId == null ? "" : pluginId;
        this.entry = (entry == null || entry.length() == 0) ? "index.html" : entry;

        boolean custom = x >= 0 && y >= 0 && w > 0 && h > 0;
        if (!custom) {
            w = (int) (CFG.GAME_WIDTH * 0.86f);
            h = (int) (CFG.GAME_HEIGHT * 0.76f);
        }
        if (w > CFG.GAME_WIDTH - CFG.PADDING * 2) {
            w = CFG.GAME_WIDTH - CFG.PADDING * 2;
        }
        if (w < 320) {
            w = Math.min(320, CFG.GAME_WIDTH - CFG.PADDING * 2);
        }
        MenuTitleIMG titleImg = new MenuTitleIMG(this.title, true, false, Images.title1Red);
        int titleHeight = titleImg.getHeight();
        if (!custom) {
            x = (CFG.GAME_WIDTH - w) / 2;
            y = (CFG.GAME_HEIGHT - h) / 2;
        }
        if (x < 0) {
            x = (CFG.GAME_WIDTH - w) / 2;
        }
        if (y < titleHeight + CFG.PADDING * 2) {
            y = titleHeight + CFG.PADDING * 2;
        }
        if (x + w > CFG.GAME_WIDTH - CFG.PADDING * 2) {
            x = Math.max(CFG.PADDING * 2, CFG.GAME_WIDTH - CFG.PADDING * 2 - w);
        }
        if (y + h > CFG.GAME_HEIGHT - CFG.PADDING * 2) {
            h = CFG.GAME_HEIGHT - CFG.PADDING * 2 - y;
        }
        if (h < 180) {
            h = Math.max(120, Math.min(180, CFG.GAME_HEIGHT - y));
        }

        ArrayList<MenuElement> elements = new ArrayList<MenuElement>();
        elements.add(new Empty(0, 0, w, h));
        initMenu(titleImg, x, y, w, h, elements, true, true);
    }

    public boolean matches(String pluginId, String entry, String title) {
        return eq(this.pluginId, pluginId)
                && eq(this.entry, entry)
                && eq(this.title, (title == null || title.length() == 0) ? "Web UI" : title);
    }

    /** Stable identity used as the WebView session key (geometry-aware). */
    public String key() {
        return pluginId + "|" + entry + "|" + getPosX() + "," + getPosY()
                + "," + getWidth() + "," + getHeight();
    }

    private static boolean eq(String a, String b) {
        return a == null ? b == null : a.equals(b);
    }

    @Override
    public void actionCloseMenu() {
        super.actionCloseMenu();
        WebCoreAndroid.onMenuClosed(this);
    }

    @Override
    public void setVisible(boolean visible) {
        boolean was = getVisible();
        super.setVisible(visible);
        if (was && !visible) {
            WebCoreAndroid.onMenuClosed(this);
        }
    }
}
