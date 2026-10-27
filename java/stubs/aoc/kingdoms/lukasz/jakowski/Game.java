package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.jakowski.setting.SettingsManager;
import aoc.kingdoms.lukasz.jakowski.Player.Player;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.map.Map;
import aoc.kingdoms.lukasz.map.map.MapBG;
import aoc.kingdoms.lukasz.map.map.MapCoords;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData4;
import aoc.kingdoms.lukasz.menu.MenuManager;

public class Game {
    public static MenuManager menuManager;
    public static Player player;
    public static SettingsManager settingsManager;
    public static LanguageManager lang;
    public static SoundsManager soundsManager;
    public static java.util.Random oR;
    public static Map map;
    public static MapBG mapBG;
    public static MapCoords mapCoords;
    public static MapScale mapScale;
    public static boolean FOG_OF_WAR;

    public static Province getProvince(int id) {
        return null;
    }

    public static ProvinceData getProvinceData(int id) {
        return null;
    }

    public static ProvinceData4 getProvinceData4(int id) {
        return null;
    }

    public static Civilization getCiv(int i) {
        return null;
    }

    public static int getCivID(String civTag) {
        return -1;
    }

    public static int getCivsSize() {
        return 0;
    }

    public static void saveSettings() {
    }
}
