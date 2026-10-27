package aoc.kingdoms.lukasz.jakowski;

/** 编译桩:仅用于让补丁类通过 javac(不进 dex)。真实类在游戏包内。 */
public class GameValues {
    public static GameValue value;
    public static GameValue_GameUpdate gameUpdate;
    public static GameValue_Console console;

    public static class GameValue {
        public boolean SETTINGS_MENU_DRAW_TIMES;
    }

    /** 对应包内 GameValues$GameValue_GameUpdate(只声明用到的字段)。 */
    public static class GameValue_GameUpdate {
        public int GAME_UPDATE_MINIMAP;
    }

    /** 对应包内 GameValues$GameValue_Console(控制台命令名/默认数值)。 */
    public static class GameValue_Console {
        public String CONSOLE_COMMAND_GOLD;
        public String CONSOLE_COMMAND_LEGACY;
        public String CONSOLE_COMMAND_MANPOWER;
        public String CONSOLE_COMMAND_NUKE;
        public String CONSOLE_COMMAND_KILL_RULER;
        public String CONSOLE_COMMAND_EXPLODE;
        public String CONSOLE_COMMAND_ADVANTAGE;
        public String CONSOLE_COMMAND_DIPLOMACY;
        public float CONSOLE_GOLD;
        public float CONSOLE_LEGACY;
        public float CONSOLE_MANPOWER;
        public int CONSOLE_ADVANTAGE;
        public float CONSOLE_DIPLOMACY;
    }
}
