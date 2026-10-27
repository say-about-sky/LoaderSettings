package aoc.kingdoms.lukasz.map.civilization;

import com.badlogic.gdx.graphics.Color;
import java.util.List;

/** 编译用桩：字段签名必须与包内真实类一致（不进 dex）。 */
public class Civilization {
    public List lMissions;
    public int iMissionsSize;
    public String realTag;
    public int iGroupID = 0;
    public float fGold = 0.0f;
    public float fLegacy = 0.0f;
    public double fManpower = 0.0;
    public float fDiplomacy = 0.0f;
    public CivilizationEventsData_Variables eventsDataVariables;

    public String getCivTag() {
        return "";
    }

    public String getCivName() {
        return "";
    }

    public int getAdvantagePoints() {
        return 0;
    }

    public void setAdvantagePoints(int i) {
    }

    public int getReligionID() {
        return 0;
    }

    public Color getColor(float alpha) {
        return new Color(1.0f, 1.0f, 1.0f, alpha);
    }

    public float getR() {
        return 1.0f;
    }

    public float getG() {
        return 1.0f;
    }

    public float getB() {
        return 1.0f;
    }
}
