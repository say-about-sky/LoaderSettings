package com.badlogic.gdx.graphics.g2d;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class BitmapFontCache {
    public void clear() {
    }

    public void setColor(float r, float g, float b, float a) {
    }

    /** 该重载才会使用 cache 的当前颜色(见 gdx 源码 addText(CharSequence,...))。 */
    public GlyphLayout addText(CharSequence str, float x, float y) {
        return null;
    }

    public void draw(Batch batch) {
    }
}
