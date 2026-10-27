package com.badlogic.gdx;

/** 编译用桩：运行时解析到真实 libGDX 类（不进 dex）。 */
public class Files {
    public com.badlogic.gdx.files.FileHandle external(String path) {
        return new com.badlogic.gdx.files.FileHandle();
    }

    public com.badlogic.gdx.files.FileHandle local(String path) {
        return new com.badlogic.gdx.files.FileHandle();
    }

    public com.badlogic.gdx.files.FileHandle internal(String path) {
        return new com.badlogic.gdx.files.FileHandle();
    }
}
