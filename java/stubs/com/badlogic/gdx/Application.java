package com.badlogic.gdx;

/** 编译桩:仅用于 javac(不进 dex)。 */
public interface Application {
    void postRunnable(Runnable runnable);
}
