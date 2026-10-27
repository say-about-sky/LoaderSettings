package aoc.kingdoms.lukasz.jakowski.Missions;

import java.util.ArrayList;
import java.util.List;

/** 编译用桩：字段签名必须与包内真实类一致（不进 dex）。 */
public class MissionTree {
    public static List missionImagesCivs;
    public static List missionImagesNamesCivs;

    public static void loadMissionsImagesCiv(int civID) {
    }

    /** MissionTree 的内部配置类（字段类型与包内一致：ArrayList）。 */
    public static class ConfigMissionsData {
        public ArrayList Mission;
    }
}
