package aoc.kingdoms.lukasz.events;

import java.util.List;

/** 编译用桩：字段/方法签名必须与包内真实类一致（不进 dex）。 */
public class EventsManager {
    public static String loadScenarioEventsTag = "";

    public static List<Event> events;
    public static List<Event> eventsSiege;
    public static List<Event> eventsGlobal;
    public static List<Event> eventsScenario;
    public static List<Event> eventsSiegeScenario;
    public static List<Event> eventsGlobalScenario;

    public static Event loadEvent(int eventsType, String[] sSplit) {
        return null;
    }

    public static Event getActiveEvent(int id, int eventType) {
        return null;
    }

    public static final void updateRandomProvinceID(int iCivID) {
    }
}
