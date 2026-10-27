package com.badlogic.gdx.math;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class Vector2 {
    public float x;
    public float y;

    public Vector2 set(float x, float y) {
        this.x = x;
        this.y = y;
        return this;
    }
}
