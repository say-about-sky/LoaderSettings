package com.badlogic.gdx.graphics.g2d;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class BitmapFont {
    public BitmapFontData getData() {
        return null;
    }

    public BitmapFontCache getCache() {
        return null;
    }

    public static class BitmapFontData {
        public float scaleX = 1.0f;
        public float scaleY = 1.0f;

        public void setScale(float scale) {
        }

        public void setScale(float scaleX, float scaleY) {
        }
    }
}
