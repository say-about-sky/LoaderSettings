package com.saysky.ui.kit;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import com.badlogic.gdx.graphics.g2d.BitmapFont;

/**
 * Font diagnosis for kit text.
 *
 * <h3>How the game (and Polaris) handles CJK</h3>
 * <ol>
 *   <li>{@code InitGame} does {@code Renderer.clearFonts()}, then
 *       {@code Renderer.charset = Game.lang.get("charset")}, then a fixed sequence of
 *       {@code Renderer.loadFont(font, charset, size)} calls;</li>
 *   <li>{@code Renderer.loadFont} passes that string as
 *       {@code FreeTypeFontParameter.characters} — <b>only characters listed in the
 *       charset are rasterised</b>. The .ttf/.otf only supplies the outlines;</li>
 *   <li>therefore "missing Chinese" means either the character is absent from the baked
 *       charset, or the font file has no outline for it. Polaris solves it statically:
 *       a full CJK font ({@code NotoSansCJKkr-Regular.otf}) plus a complete
 *       {@code charset=} line (≈1785 chars) in {@code game/languages/Bundle_cn_sp.properties};</li>
 *   <li>there is no runtime "add glyph" API — the charset must be complete <b>before</b>
 *       that bake sequence runs (that is what the loader's {@code CharsetFix} tries to do).</li>
 * </ol>
 *
 * <p>This class only <b>reports</b> which of the two cases applies, so the fix can be
 * targeted (append to the language charset, or supply a font that has the glyph).
 * It never writes to the charset.</p>
 */
final class UiFont {

    private static boolean probed;

    private UiFont() {
    }

    /** Logs, once, why the given text may render with holes. */
    static void probe(String sample) {
        if (probed || sample == null || sample.length() == 0) {
            return;
        }
        probed = true;
        try {
            String charset = Renderer.charset;
            BitmapFont font = null;
            try {
                if (Renderer.fontMain != null && CFG.FONT_REGULAR >= 0
                        && CFG.FONT_REGULAR < Renderer.fontMain.size()) {
                    font = Renderer.fontMain.get(CFG.FONT_REGULAR);
                }
            } catch (Throwable ignored) {
            }

            StringBuilder sb = new StringBuilder("font probe: charsetLen=");
            sb.append(charset == null ? -1 : charset.length());
            sb.append(" sample='").append(sample).append('\'');
            for (int i = 0; i < sample.length(); i++) {
                char c = sample.charAt(i);
                if (c < 128) {
                    continue;
                }
                boolean inCharset = charset != null && charset.indexOf(c) >= 0;
                boolean hasGlyph = false;
                try {
                    hasGlyph = font != null && font.getData() != null
                            && font.getData().getGlyph(c) != null;
                } catch (Throwable ignored) {
                }
                sb.append(' ').append(c).append("(U+")
                        .append(Integer.toHexString(c).toUpperCase()).append(")=cs:")
                        .append(inCharset ? 'y' : 'n').append(",glyph:")
                        .append(hasGlyph ? 'y' : 'n');
            }
            sb.append(" | cs:y+glyph:n => font has no outline; cs:n => charset too short");
            UiLog.i(sb.toString());
        } catch (Throwable t) {
            UiLog.e("font probe failed", t);
        }
    }

    /** Convenience: probes the current language bundle text (diagnostic only). */
    static void probeLanguage() {
        if (probed || Game.lang == null) {
            return;
        }
        try {
            probe(Game.lang.get("Continue"));
        } catch (Throwable ignored) {
        }
    }

    /**
     * True only after {@code InitGame} has finished baking the two main fonts
     * (step 1 = {@code FONT_BOLD}, step 5 = {@code FONT_REGULAR}).
     *
     * <p>WHY THIS EXISTS: the hot loader cold-starts <b>before</b> Polaris finishes
     * {@code InitGame.initGame()}, and plugin {@code init} runs on a background thread.
     * Creating any native control ({@code ButtonGame2} caches its {@code iFontID} at
     * construction) while the GL thread is inside {@code clearFonts()/loadFont()} reads a
     * half-built font table — {@code CFG.FONT_BOLD} can end up pointing at the temporary
     * {@code loadFont(font, "A")} placeholder from {@code AA_Game.create()}. Result: every
     * label in the game renders with a letters-only font, i.e. "all Chinese disappeared",
     * permanently, for that session.</p>
     *
     * <p>So instead of moving the font bake (impossible: it is an {@code iStepID} state
     * machine coupled to {@code GameValues.init()} and it calls {@code clearFonts()} twice),
     * we hold the kit back until the bake is done. Fail-open: if reflection/fields blow up
     * we do not want to freeze the UI forever.</p>
     */
    static boolean ready() {
        try {
            if (Renderer.fontMain == null || Renderer.fontMain.size() <= 0) {
                return false;
            }
            // CFG.FONT_BOLD is 0 right after step 1; require the regular font too (step 5),
            // so both buttons and body text have a valid, baked font index.
            return CFG.FONT_REGULAR > 0;
        } catch (Throwable t) {
            return true;
        }
    }
}
