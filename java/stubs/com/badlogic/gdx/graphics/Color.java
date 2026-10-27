package com.badlogic.gdx.graphics;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class Color {
    public float r;
    public float g;
    public float b;
    public float a;

    public Color() {
    }

    public Color(float r, float g, float b, float a) {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }
}
