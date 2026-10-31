package com.saysky.ui.kit;

import java.util.ArrayList;
import java.util.List;

import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Color;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Space;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import com.badlogic.gdx.graphics.Color;

/**
 * Tooltip builder, 1:1 with the native hover model
 * ({@code MenuElement_Hover} / {@code MenuElement_HoverElement} / {@code Type_*}).
 *
 * <p>One builder instance == one tooltip. Calls append parts to the <b>current row</b>;
 * {@link #next()} starts a new row (rows are what vanillas call
 * {@code MenuElement_HoverElement}). {@link #line()} and {@link #space()} are
 * single-part rows by convention, exactly like vanilla code does.</p>
 *
 * <pre>{@code
 * Hover h = Hover.create()
 *     .title("My Panel")
 *     .next().desc("Long explanation that wraps automatically…")
 *     .next().line()
 *     .next().text("Status: ").text("OK", Colors.HOVER_POSITIVE);
 * }</pre>
 */
public final class Hover {

    private final List<MenuElement_HoverElement> rows = new ArrayList<MenuElement_HoverElement>();
    private List<MenuElement_HoverElement_Type> row = new ArrayList<MenuElement_HoverElement_Type>();

    private Hover() {
    }

    public static Hover create() {
        return new Hover();
    }

    /** Compact one-liner tooltip. */
    public static Hover of(String text) {
        return create().text(text);
    }

    /* ---------------------------------------------------------------- rows */

    /** Closes the current row and starts a new one. */
    public Hover next() {
        flush();
        return this;
    }

    private void flush() {
        if (!row.isEmpty()) {
            rows.add(new MenuElement_HoverElement(row));
            row = new ArrayList<MenuElement_HoverElement_Type>();
        }
    }

    /* ---------------------------------------------------------------- parts */

    /** Gold title bar (the usual first row of a vanilla tooltip). */
    public Hover title(String text) {
        row.add(new MenuElement_HoverElement_Type_TextTitle_BG(text, Theme.fontBold(), Colors.HOVER_GOLD));
        return this;
    }

    public Hover titleCentered(String text) {
        row.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(text, Theme.fontBold(), Colors.HOVER_GOLD));
        return this;
    }

    public Hover text(String text) {
        row.add(new MenuElement_HoverElement_Type_Text(text, Theme.fontRegular(), Colors.HOVER_LEFT));
        return this;
    }

    public Hover text(String text, Color color) {
        row.add(new MenuElement_HoverElement_Type_Text(text, Theme.fontRegular(), color));
        return this;
    }

    /** Word-wrapped paragraph. */
    public Hover desc(String text) {
        row.add(new MenuElement_HoverElement_Type_Text_Desc(text, Theme.fontSmall(), Colors.HOVER_RIGHT));
        return this;
    }

    public Hover line() {
        row.add(new MenuElement_HoverElement_Type_Line());
        return this;
    }

    public Hover blank() {
        row.add(new MenuElement_HoverElement_Type_Space());
        return this;
    }

    /** Small colour chip (side/bonus indicator). */
    public Hover color(Color color) {
        row.add(new MenuElement_HoverElement_Type_Color(color));
        return this;
    }

    public Hover icon(int imageId) {
        row.add(new MenuElement_HoverElement_Type_Image(imageId));
        return this;
    }

    public Hover iconTitle(int imageId) {
        row.add(new MenuElement_HoverElement_Type_ImageTitle_BG(imageId, Theme.padding(), 0));
        return this;
    }

    public Hover civFlag(int civId) {
        row.add(new MenuElement_HoverElement_Type_Flag(civId, Theme.padding(), 0));
        return this;
    }

    /** "label: value" row with an icon, the most common stats line. */
    public Hover stat(String label, String value, int imageId, Color valueColor) {
        row.add(new MenuElement_HoverElement_Type_Button_TextBonus(
                label, value, imageId, Theme.fontRegular(), Theme.fontRegular(), Colors.HOVER_LEFT, valueColor));
        return this;
    }

    /** Escape hatch: any native hover part. */
    public Hover part(MenuElement_HoverElement_Type part) {
        if (part != null) {
            row.add(part);
        }
        return this;
    }

    /* ---------------------------------------------------------------- build */

    public MenuElement_Hover build() {
        try {
            flush();
            return new MenuElement_Hover(new ArrayList<MenuElement_HoverElement>(rows));
        } catch (Throwable t) {
            UiLog.e("Hover.build failed", t);
            return null;
        }
    }
}
