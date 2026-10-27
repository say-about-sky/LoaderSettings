package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class SpriteBatch implements Batch {
    public void setShader(ShaderProgram shader) {
    }

    public Color getColor() {
        return null;
    }

    public void setColor(Color color) {
    }

    public void setColor(float r, float g, float b, float a) {
    }

    public void flush() {
    }
}
