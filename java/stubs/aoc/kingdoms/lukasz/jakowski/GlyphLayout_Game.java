package aoc.kingdoms.lukasz.jakowski;

import com.badlogic.gdx.graphics.g2d.BitmapFont;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class GlyphLayout_Game {
    public float width;
    public float height;

    public GlyphLayout_Game() {
    }

    public boolean setText(BitmapFont font, CharSequence str) {
        return false;
    }
}
