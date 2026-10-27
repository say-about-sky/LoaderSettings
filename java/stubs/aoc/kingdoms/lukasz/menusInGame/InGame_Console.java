package aoc.kingdoms.lukasz.menusInGame;

/** 编译桩:仅用于 javac(不进 dex)。控制台补丁后 execute_Vanilla 由 smali 侧提供。 */
public class InGame_Console {
    public static final void addMessage(String sMessage) {
    }

    /** 原版命令入口（补丁只在方法头插钩子，本体保留）。 */
    public static final void execute(String sCommand) {
    }

    public static final void execute_Vanilla(String sCommand) {
    }
}
