package aoc.kingdoms.lukasz.jakowski.Renderer;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import java.util.List;

/** 编译桩:仅用于 javac(不进 dex)。 */
public class Renderer {
    public static ShaderProgram shaderDefault;
    public static ShaderProgram shaderAlpha_Pattern;
    public static List<BitmapFont> fontMain;
    /** Current language charset: every character the fonts were baked for. */
    public static String charset;
    public static com.badlogic.gdx.utils.viewport.Viewport viewport;

    public static void drawBoxCorner(SpriteBatch oSB, int nPosX, int nPosY, int nWidth, int nHeight) {
    }

    public static void drawBox_EDGE_TOP_LR(SpriteBatch oSB, int imageID, int nPosX, int nPosY, int nWidth, int nHeight, boolean flipY) {
    }
}
