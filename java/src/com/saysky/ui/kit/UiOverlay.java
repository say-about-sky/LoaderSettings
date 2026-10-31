package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.menu_element.Status;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/**
 * Full-screen (or freely placed) overlay: a native {@code Menu} that is painted by the
 * plugin instead of by vanilla elements.
 *
 * <p>Because it is a real menu stacked on the current view, vanilla input handling still
 * applies: elements you add get hover/click/drag for free, and the overlay sits above the
 * page underneath. Nothing outside the overlay is blocked unless you add an element that
 * covers it.</p>
 *
 * <pre>{@code
 * UiOverlay hud = UiOverlay.fullscreen("hud")
 *     .paint((self, sb, tx, ty) -> { ... draw with sb ... });
 * hud.add(new UiButton("X", 40).at(20, 20).onClick(hud::hide));
 * hud.show();
 * }</pre>
 */
public final class UiOverlay extends UiMenu {

    public interface Paint {
        void draw(UiOverlay self, SpriteBatch sb, int translateX, int translateY);
    }

    private Paint paint;

    public UiOverlay(String id, int x, int y, int width, int height) {
        super(id, null, x, y, width, height, FIXED);
    }

    /** Overlay covering the whole screen, anchored at 0,0. */
    public static UiOverlay fullscreen(String id) {
        return new UiOverlay(id, 0, 0, Theme.gameWidth(), Theme.gameHeight());
    }

    public UiOverlay paint(Paint painter) {
        this.paint = painter;
        return this;
    }

    @Override
    public void draw(SpriteBatch oSB, int translateX, int translateY, boolean menuIsActive, Status titleStatus) {
        if (paint != null) {
            try {
                paint.draw(this, oSB, translateX, translateY);
            } catch (Throwable t) {
                UiLog.e("overlay paint failed (" + id() + ")", t);
            }
        }
        super.draw(oSB, translateX, translateY, menuIsActive, titleStatus);
    }
}
