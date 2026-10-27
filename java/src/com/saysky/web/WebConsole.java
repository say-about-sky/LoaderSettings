package com.saysky.web;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.menusInGame.InGame_Console;

/**
 * Console bridge (patched into InGame_Console.execute).
 *
 * <pre>
 * web help
 * web open &lt;pluginId&gt; [entry] [title]
 * web reload [pluginId]
 * web close
 * web status
 *
 * gold 100          (or gold=100)  -> adds exactly 100 gold
 * legacy 50 / manpower 1000 / diplomacy 20 / advantage 5
 * </pre>
 *
 * Anything else is left to the vanilla command engine: the patch only injects a head hook
 * into {@code InGame_Console.execute}, so the original body (and every pack-specific class
 * it references) keeps running untouched.
 */
public final class WebConsole {

    private WebConsole() {
    }

    /**
     * Called from the head of {@code InGame_Console.execute} (injected by the LoaderSettings patch).
     *
     * @return {@code true} when the command was handled here (the caller returns early),
     *         {@code false} to let the vanilla command engine run unchanged.
     */
    public static boolean handle(String command) {
        try {
            if (command == null) {
                return false;
            }
            String text = command.trim();
            if (text.length() == 0) {
                return false;
            }
            String[] parts = text.split("\\s+");
            if (parts.length > 0 && "web".equalsIgnoreCase(parts[0])) {
                InGame_Console.addMessage("#" + command);
                run(parts);
                return true;
            }
            if (applyNumericConsole(text)) {
                InGame_Console.addMessage("#" + command);
                return true;
            }
            return false;
        } catch (Throwable t) {
            WebCore.log("console error: " + t);
            // never fall through with a half-handled command
            return true;
        }
    }

    /**
     * The vanilla console only knows the fixed default amount ("gold" adds CONSOLE_GOLD, e.g. 500)
     * and has no argument parsing at all. Support {@code gold=100} and {@code gold 100} here so the
     * in-game console and {@code GameApi.console} behave the same on every pack.
     */
    private static boolean applyNumericConsole(String command) {
        String name;
        String raw;
        int eq = command.indexOf('=');
        if (eq > 0) {
            name = command.substring(0, eq).trim();
            raw = command.substring(eq + 1).trim();
        } else {
            int sp = -1;
            for (int i = 0; i < command.length(); i++) {
                char c = command.charAt(i);
                if (c == ' ' || c == '\t') {
                    sp = i;
                    break;
                }
            }
            if (sp <= 0) {
                return false;
            }
            name = command.substring(0, sp).trim();
            raw = command.substring(sp + 1).trim();
        }
        if (name.length() == 0 || raw.length() == 0) {
            return false;
        }
        float v;
        try {
            v = Float.parseFloat(raw);
        } catch (Throwable t) {
            return false;
        }
        try {
            if (Game.player == null || Game.player.iCivID <= 0) {
                return false;
            }
            Civilization civ = Game.getCiv(Game.player.iCivID);
            if (civ == null) {
                return false;
            }
            GameValues.GameValue_Console c = GameValues.console;
            if (c == null) {
                return false;
            }
            String label;
            if (eqName(name, c.CONSOLE_COMMAND_GOLD)) {
                civ.fGold += v;
                label = " Gold added";
            } else if (eqName(name, c.CONSOLE_COMMAND_LEGACY)) {
                civ.fLegacy += v;
                label = " Legacy added";
            } else if (eqName(name, c.CONSOLE_COMMAND_MANPOWER)) {
                civ.fManpower += v;
                label = " Manpower added";
            } else if (eqName(name, c.CONSOLE_COMMAND_DIPLOMACY)) {
                civ.fDiplomacy += v;
                label = " Diplomacy Points added";
            } else if (eqName(name, c.CONSOLE_COMMAND_ADVANTAGE)) {
                civ.setAdvantagePoints(civ.getAdvantagePoints() + (int) v);
                label = " Advantage points added";
            } else {
                return false;
            }
            InGame_Console.addMessage(civ.getCivName() + ": " + formatNumber(v) + label);
            return true;
        } catch (Throwable t) {
            WebCore.log("console numeric failed (" + command + "): " + t);
            return false;
        }
    }

    private static boolean eqName(String a, String b) {
        return b != null && b.length() > 0 && a.equalsIgnoreCase(b);
    }

    private static String formatNumber(float v) {
        if (v == Math.rint(v) && Math.abs(v) < 1e9f) {
            return String.valueOf((long) v);
        }
        return String.valueOf(v);
    }

    private static void run(String[] parts) {
        String sub = parts.length > 1 ? parts[1].toLowerCase() : "help";
        if ("help".equals(sub)) {
            InGame_Console.addMessage("web help");
            InGame_Console.addMessage("web open <pluginId> [entry] [title]");
            InGame_Console.addMessage("web reload [pluginId]");
            InGame_Console.addMessage("web close");
            InGame_Console.addMessage("web status");
            return;
        }
        if ("open".equals(sub)) {
            if (parts.length < 3) {
                InGame_Console.addMessage("usage: web open <pluginId> [entry] [title]");
                return;
            }
            String entry = parts.length > 3 ? parts[3] : null;
            String title = parts.length > 4 ? parts[4] : null;
            WebCore.openDialog(parts[2], entry, title);
            InGame_Console.addMessage("web open: " + parts[2]);
            return;
        }
        if ("reload".equals(sub)) {
            String id = parts.length > 2 ? parts[2] : null;
            WebCore.reload(id);
            InGame_Console.addMessage("web reload: " + (id == null ? "(current)" : id));
            return;
        }
        if ("close".equals(sub)) {
            WebCore.closeDialog();
            InGame_Console.addMessage("web close");
            return;
        }
        if ("status".equals(sub)) {
            InGame_Console.addMessage(WebCore.status());
            return;
        }
        InGame_Console.addMessage("unknown web command: " + sub);
    }
}
