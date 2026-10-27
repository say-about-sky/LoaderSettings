package aoc.kingdoms.lukasz.map;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.List;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class SiegeManager {
    public static List<Integer> lProvinces;
    public static int iProvincesSize;

    /** 原版 drawSiege(已在补丁里改名),关闭滤镜开关时调用。 */
    public static void drawSiege_Vanilla(SpriteBatch oSB, float fAlpha, int iProvinceID) {
    }
}
