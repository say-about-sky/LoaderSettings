package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.textures.Image;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class Province {
    public int iCenterShiftX;
    public int iCenterShiftY;

    public boolean getBelowZero() {
        return false;
    }

    public boolean isOccupied() {
        return false;
    }

    public int getCivID() {
        return 0;
    }

    public int getArmySize() {
        return 0;
    }

    public ArmyDivision getArmy(int i) {
        return null;
    }

    public Image getProvinceBG() {
        return null;
    }

    public int getTranslateProvincePosX() {
        return 0;
    }

    public int getMinX() {
        return 0;
    }

    public int getMinY() {
        return 0;
    }

    public float getSiegeProgress() {
        return 0.0f;
    }

    public boolean getDrawProvince() {
        return false;
    }

    public boolean getFogDrawArmy() {
        return false;
    }
}
