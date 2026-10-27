package com.badlogic.gdx.files;

/** 编译用桩：运行时解析到真实 libGDX 类（不进 dex）。 */
public class FileHandle {
    public boolean exists() {
        return false;
    }

    public boolean isDirectory() {
        return false;
    }

    public FileHandle[] list() {
        return new FileHandle[0];
    }

    public String name() {
        return "";
    }

    public String readString() {
        return "";
    }

    public long length() {
        return 0L;
    }

    public void writeString(String string, boolean append) {
    }
}
