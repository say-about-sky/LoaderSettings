package com.badlogic.gdx.graphics;

/** 编译桩:仅用于 javac(不进 dex)。 */
public interface GL20 {
    int GL_TEXTURE0 = 0x84C0;

    void glActiveTexture(int texture);
}
