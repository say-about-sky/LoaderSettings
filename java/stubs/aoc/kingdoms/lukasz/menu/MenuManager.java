package aoc.kingdoms.lukasz.menu;

import java.util.List;

import aoc.kingdoms.lukasz.events.Event;

public class MenuManager {
    public int MAINMENU = -1;

    public void setViewID(View eView) {
    }

    public int getViewID() {
        return 0;
    }

    public int getViewID(View eView) {
        return 0;
    }

    public void setViewIDWithoutAnimation(View eView) {
    }

    public void addToast_Error(String sText) {
    }

    public void addToast(String sText, int iFontID) {
    }

    public final int getActiveMenuElementID() {
        return -1;
    }

    public final boolean getInGame() {
        return false;
    }

    public void addToast(String sText) {
    }

    public final int addNextMenuToView(int toView, Menu menu) {
        return 0;
    }

    public final void setOrderOfMenu(int menuID) {
    }

    public final List<Menu> getActiveMenu() {
        return null;
    }

    public final void rebuildInGame_Right() {
    }

    public final boolean getVisibleInGame_Event() {
        return false;
    }

    public final void rebuildInGame_Event(Event event, int eventType, int eventID) {
    }

    public final void setVisibleInGame_Escape(boolean visible) {
    }
}
