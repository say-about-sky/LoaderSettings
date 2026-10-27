package com.badlogic.gdx.graphics;

/** 编译用桩：运行时解析到真实 libGDX 类（不进 dex）。 */
public class Texture {
    public enum TextureFilter {
        Nearest,
        Linear,
        MipMap,
        MipMapNearestNearest,
        MipMapLinearNearest,
        MipMapNearestLinear,
        MipMapLinearLinear
    }

    public enum TextureWrap {
        MirroredRepeat,
        ClampToEdge,
        Repeat
    }

    public Texture(Pixmap pixmap) {
    }

    public void setFilter(TextureFilter minFilter, TextureFilter magFilter) {
    }

    public void setWrap(TextureWrap u, TextureWrap v) {
    }

    public void bind(int unit) {
    }

    public void dispose() {
    }
}
