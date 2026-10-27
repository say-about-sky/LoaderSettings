.class public Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;
    }
.end annotation


# static fields
.field public static BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color; = null

.field public static BOX_CORNER_TIME:J = 0x0L

.field public static BOX_CORNER_TIMER:J = 0x0L

.field public static final LOADING_CHANGE_TEXT_TIME:I = 0xfa0

.field public static boxBGExtraY:I

.field public static camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public static charset:Ljava/lang/String;

.field public static drawArmyInProvince:Z

.field public static drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public static fontBorder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public static fontBorderSize:I

.field public static fontMain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public static fontMainSize:I

.field public static glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

.field public static iBoxCornerX:I

.field public static iLoadingTextWidth:I

.field public static loadingTime:J

.field private static numOfScissors:I

.field public static oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field public static peekBounds:Lcom/badlogic/gdx/math/Rectangle;

.field public static pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

.field public static sLoadingText:Ljava/lang/String;

.field public static shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderBlackWhite:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderDefault_FBO:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderTime:F

.field public static shaderTime2:F

.field public static shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

.field public static simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;",
            ">;"
        }
    .end annotation
.end field

.field public static simpleTasks_ArmyWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;",
            ">;"
        }
    .end annotation
.end field

.field public static final textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

.field public static uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

.field public static updateBackgroundColor:Z

.field public static viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# instance fields
.field public oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 499
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    .line 736
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    .line 744
    const/4 v2, 0x0

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 802
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3d507c85    # 0.0509f

    const v4, 0x3df8d4fe    # 0.1215f

    const v5, 0x3e44b5dd    # 0.1921f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 803
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    .line 891
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    .line 975
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    .line 1055
    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    .line 1056
    const-wide/16 v2, 0x0

    sput-wide v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIME:J

    .line 1057
    const-wide/16 v4, 0x38

    sput-wide v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIMER:J

    .line 1298
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    .line 1303
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->charset:Ljava/lang/String;

    .line 1305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    .line 1306
    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    .line 1310
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    .line 1311
    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorderSize:I

    .line 1594
    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    .line 1791
    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    .line 1792
    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    .line 1794
    sput-wide v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadingTime:J

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "nGameWidth"    # I
    .param p2, "nGameHeight"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sput p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 100
    sput p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 104
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/FitViewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/viewport/FitViewport;-><init>(FFLcom/badlogic/gdx/graphics/Camera;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 107
    new-instance v0, Laoc/kingdoms/lukasz/utilities/FPS;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/utilities/FPS;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

    .line 109
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 110
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->buildPix_IMG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    .line 111
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->buildPix()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pix2:I

    .line 112
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 113
    new-instance v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    .line 115
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadShaders()V

    .line 116
    return-void
.end method

.method public static addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .locals 1
    .param p0, "newTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 894
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    return-void

    .line 898
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    return-void
.end method

.method public static addSimpleTask_ArmyWidth(Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;)V
    .locals 1
    .param p0, "newTask"    # Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    .line 936
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    return-void

    .line 940
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    return-void
.end method

.method public static final clearFonts()V
    .locals 3

    .line 1314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    if-ge v0, v1, :cond_0

    .line 1315
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 1316
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1319
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    .line 1320
    return-void
.end method

.method public static final clearUnclearedScissors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 739
    nop

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    if-lez v0, :cond_0

    .line 740
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    .line 742
    :cond_0
    return-void
.end method

.method public static final clipViewPeek()V
    .locals 1

    .line 749
    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->peekScissors()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 754
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final clipViewPeek_Add(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 759
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clearUnclearedScissors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 761
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 763
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 769
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 790
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    .line 792
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 794
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 798
    :goto_0
    return-void
.end method

.method public static final clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z
    .locals 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I

    .line 774
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 775
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 777
    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    .line 779
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 780
    .end local v0    # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    :catch_0
    move-exception v0

    .line 781
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 784
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static final drawBlueBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I

    .line 1170
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1171
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1172
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1173
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1174
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1175
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1177
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1178
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p2, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1179
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1181
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1182
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1183
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1185
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1186
    return-void
.end method

.method public static final drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "fAlpha"    # F

    .line 1083
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxEdge:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1084
    return-void
.end method

.method public static final drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fAlpha"    # F

    .line 1087
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 1088
    .local v8, "iHCeil":I
    div-int/lit8 v9, p5, 0x2

    .line 1092
    .local v9, "iHFloor":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    .line 1094
    .local v10, "img":Laoc/kingdoms/lukasz/textures/Image;
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1096
    .end local p4    # "nWidth":I
    .local v11, "nWidth":I
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1097
    add-int v0, p2, v11

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 1098
    add-int v3, p3, v8

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, v11, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move v2, p2

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1099
    add-int v0, p2, v11

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    add-int v3, p3, v8

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1101
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1102
    return-void
.end method

.method public static final drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V
    .locals 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "img"    # Laoc/kingdoms/lukasz/textures/Image;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fAlpha"    # F

    .line 1105
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 1106
    .local v8, "iHCeil":I
    div-int/lit8 v9, p5, 0x2

    .line 1110
    .local v9, "iHFloor":I
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move v1, p4

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1112
    .end local p4    # "nWidth":I
    .local v10, "nWidth":I
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, v10, v0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1113
    add-int v0, p2, v10

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 1114
    add-int v3, p3, v8

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, v10, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v2, p2

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1115
    add-int v0, p2, v10

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    add-int v3, p3, v8

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1117
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1118
    return-void
.end method

.method public static final drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "fAlpha"    # F

    .line 1189
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1190
    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v0, p1, p3

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v9, p2, 0x1

    add-int/lit8 v11, p4, -0x2

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1191
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0x2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1192
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x1

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1194
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1195
    return-void
.end method

.method public static final drawBoxBOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fAlpha"    # F

    .line 1156
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1157
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v0, p2, p4

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v10, v0, v1

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v9, p0

    move/from16 v11, p3

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1159
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1160
    return-void
.end method

.method public static final drawBoxBOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V
    .locals 10
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "img"    # Laoc/kingdoms/lukasz/textures/Image;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fAlpha"    # F

    .line 1163
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v5, p4, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1164
    add-int v0, p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    const/4 v9, 0x1

    move-object v2, p1

    move-object v3, p0

    move v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1166
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1167
    return-void
.end method

.method public static final drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I

    .line 1000
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1002
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLinePix:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1004
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v1, p1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1005
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v4, p2, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1007
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p1, v0

    add-int v4, p2, p4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1008
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    add-int v4, p2, p4

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1010
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p1, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1011
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1013
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v4, p2, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1014
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v4, p2, p4

    sget v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1016
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1017
    return-void
.end method

.method public static final drawBoxCorner2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I

    .line 1061
    move-object v10, p0

    move/from16 v11, p4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1062
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    add-int v3, p2, v11

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1063
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v2, p1, p3

    add-int v3, p2, v11

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1065
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIME:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIMER:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1066
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIME:J

    .line 1068
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    .line 1071
    :cond_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v3, p2, v11

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    neg-int v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIZZ)V

    .line 1073
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1074
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v2, p1, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p3, v1

    move-object v1, p0

    move v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1075
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v6, v6, v6, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1076
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v2, p1, v1

    int-to-float v1, v11

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int v3, p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p3, v1

    div-int/lit8 v5, v11, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1077
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v2, p1, v1

    int-to-float v1, v11

    div-float/2addr v1, v6

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int v3, p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p3, v1

    div-int/lit8 v5, v11, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1078
    return-void
.end method

.method public static final drawBoxCornerAlpha(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I

    .line 1020
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLinePix:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1022
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v1, p1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1023
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v4, p2, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1025
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p1, v0

    add-int v4, p2, p4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1026
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    add-int v4, p2, p4

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1028
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p1, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1029
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1031
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v4, p2, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1032
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v4, p2, p4

    sget v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1034
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1035
    return-void
.end method

.method public static final drawBoxCornerEmpty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I

    .line 1038
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1040
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v1, p1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1041
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v4, p2, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1043
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p1, v0

    add-int v4, p2, p4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1044
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    add-int v4, p2, p4

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 1046
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p1, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1047
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p1, p3

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1049
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v4, p2, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1050
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v4, p2, p4

    sget v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1052
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1053
    return-void
.end method

.method public static final drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "fAlpha"    # F

    .line 1215
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxEdge:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 1216
    return-void
.end method

.method public static final drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fAlpha"    # F

    .line 1219
    move-object v8, p0

    move/from16 v9, p5

    int-to-float v0, v9

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v10, v2

    .line 1220
    .local v10, "iHCeil":I
    int-to-float v0, v9

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v11, v0

    .line 1222
    .local v11, "iHFloor":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1223
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, p2, p4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 1224
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v3, p3, v10

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p2

    move v5, v11

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1225
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, p2, p4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    add-int v3, p3, v10

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1227
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, p6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1228
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->noise:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1230
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1231
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v4, p4, -0x2

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1232
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v2, p2, 0x1

    add-int v1, p3, v9

    add-int/lit8 v3, v1, -0x2

    add-int/lit8 v4, p4, -0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1238
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1239
    return-void
.end method

.method public static final drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1198
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1199
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1200
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, p2, p4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1201
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1202
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1203
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p2, p4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1205
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1206
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v5, 0x1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1207
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p1, p3

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, p4, -0x2

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1208
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, p4, -0x2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1209
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x1

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1211
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1212
    return-void
.end method

.method public static final drawBoxProgress(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIII)V
    .locals 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "img"    # Laoc/kingdoms/lukasz/textures/Image;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "maxWidth"    # I

    .line 1121
    move v8, p4

    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v9, v0, 0x2

    .line 1122
    .local v9, "iHCeil":I
    div-int/lit8 v10, p5, 0x2

    .line 1126
    .local v10, "iHFloor":I
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v8, :cond_0

    .line 1127
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1128
    add-int v3, p3, v9

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v5, v10

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, v8, v0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1132
    add-int v0, p2, v8

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 1133
    add-int v3, p3, v9

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, v8, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v2, p2

    move v5, v10

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1134
    add-int v0, p2, v8

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    add-int v3, p3, v9

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1137
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1138
    return-void
.end method

.method public static final drawBoxTOP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fAlpha"    # F

    .line 1142
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1143
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    add-int v0, p2, p4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v7, v0, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    const/4 v11, 0x1

    move-object v6, p0

    move v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 1145
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1146
    return-void
.end method

.method public static final drawBoxTOP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "img"    # Laoc/kingdoms/lukasz/textures/Image;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "fAlpha"    # F

    .line 1149
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v5, p4, v0

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1150
    add-int v0, p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p1

    move-object v3, p0

    move v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 1152
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1153
    return-void
.end method

.method public static final drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V
    .locals 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "flipX"    # Z
    .param p7, "flipY"    # Z

    .line 1252
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1253
    return-void
.end method

.method public static final drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    .locals 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I

    .line 1242
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1243
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    add-int v0, p2, p4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v7, v0, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    const/4 v11, 0x1

    move-object v6, p0

    move v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 1244
    return-void
.end method

.method public static final drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V
    .locals 15
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "flipY"    # Z

    .line 1247
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1248
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    add-int v0, p2, p4

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v9, v0, v1

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    const/4 v13, 0x1

    move-object v8, p0

    move/from16 v10, p3

    move/from16 v12, p5

    move/from16 v14, p6

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1249
    return-void
.end method

.method public static final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "iX"    # I
    .param p2, "iY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "iTranslateX"    # I
    .param p6, "iTranslateY"    # I

    .line 1853
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v2, p1, p5

    add-int v3, p2, p6

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 1854
    return-void
.end method

.method public static final drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I

    .line 978
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE1:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE1:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE1:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 979
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v10, 0x1

    move-object v6, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 980
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 981
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v8, p2, 0x1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 982
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 983
    return-void
.end method

.method public static final drawLineShape(IIII)V
    .locals 5
    .param p0, "iX"    # I
    .param p1, "iY"    # I
    .param p2, "iX2"    # I
    .param p3, "iY2"    # I

    .line 669
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    int-to-float v1, p0

    neg-int v2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    neg-int v4, p3

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFF)V

    .line 670
    return-void
.end method

.method public static drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "iTranslateX"    # I
    .param p2, "iTranslateY"    # I
    .param p3, "nProgress"    # F

    .line 187
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v7, 0x2

    mul-int/2addr v1, v7

    add-int v8, v0, v1

    .line 188
    .local v8, "nHeight":I
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0xfa0

    sub-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadingTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 190
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->iLoading_NumOfTexts:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    .line 191
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadingTime:J

    .line 192
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 193
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 194
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    .line 195
    invoke-static {}, Lteam/rainfall/fontFix/Config;->getConfig()Lteam/rainfall/fontFix/config/PolarisConfigData;

    move-result-object v1

    iget-boolean v1, v1, Lteam/rainfall/fontFix/config/PolarisConfigData;->changeBGinInitGame:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-static {}, Laoc/kingdoms/lukasz/menus/InitGame;->loadBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :cond_0
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Lteam/rainfall/fontFix/Config;->getGradientConfig()Lteam/rainfall/fontFix/config/GradientConfig;

    move-result-object v0

    iget v0, v0, Lteam/rainfall/fontFix/config/GradientConfig;->loading:I

    const v9, 0x3f266666    # 0.65f

    const/4 v10, 0x0

    if-ge v0, v7, :cond_2

    .line 203
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 204
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int v4, v0, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v6, v0, v2

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 206
    :cond_2
    invoke-static {}, Lteam/rainfall/fontFix/Config;->getGradientConfig()Lteam/rainfall/fontFix/config/GradientConfig;

    move-result-object v0

    iget v0, v0, Lteam/rainfall/fontFix/config/GradientConfig;->loading:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 207
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v10, v10, v10, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 208
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/2addr v0, v7

    add-int/2addr v0, p1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    div-int/2addr v2, v7

    sub-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v6, v0, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 209
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 210
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, 0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 211
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 213
    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 214
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/2addr v0, v7

    add-int/2addr v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    div-int/2addr v1, v7

    sub-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x8

    sub-int v5, v0, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOGO:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOGO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOGO:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v10, 0x3f400000    # 0.75f

    invoke-direct {v6, v0, v1, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p0, p1, v5, v6}, Lteam/rainfall/loading/LoadingQuoteRenderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;)V

    .line 215
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 216
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/2addr v1, v7

    add-int/2addr v1, p1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v7

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v2, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0xe

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 217
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 218
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/2addr v0, v7

    add-int/2addr v0, p1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v7

    sub-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xe

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 219
    return-void
.end method

.method public static final drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "flipX"    # Z

    .line 986
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sub-int v6, p4, v0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 987
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v0, p2, p4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 988
    return-void
.end method

.method public static final drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V
    .locals 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "flipX"    # Z
    .param p6, "imageIDTop"    # I
    .param p7, "imageIDBot"    # I

    .line 991
    invoke-static/range {p6 .. p6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 992
    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v0, p2, p4

    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v11, v0, v1

    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v13

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v12, p3

    move/from16 v14, p5

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 993
    return-void
.end method

.method public static final drawMenusBoxTopOnly(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZI)V
    .locals 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "flipX"    # Z
    .param p6, "imageIDTop"    # I

    .line 996
    invoke-static {p6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 997
    return-void
.end method

.method public static final drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I

    .line 966
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 967
    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v0, p2, p4

    add-int/lit8 v9, v0, -0x1

    const/4 v11, 0x1

    move-object v7, p0

    move v8, p1

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 969
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, p4, -0x2

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 970
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v2, p1, p3

    move v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 971
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontScale"    # F
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I
    .param p6, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1491
    if-eqz p2, :cond_0

    .line 1492
    :try_start_0
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    .line 1494
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1495
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float v1, p4

    neg-int v2, p5

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 1497
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1499
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1501
    :cond_0
    :goto_0
    nop

    .line 1502
    :goto_1
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1476
    if-eqz p2, :cond_0

    .line 1477
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1478
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float v1, p3

    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1480
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1482
    :cond_0
    :goto_0
    nop

    .line 1483
    :goto_1
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontScale"    # F
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1486
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V

    .line 1487
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1471
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1472
    return-void
.end method

.method public static final declared-synchronized drawTextBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;II)V
    .locals 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nFontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1676
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1679
    .local v1, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    if-eqz p2, :cond_0

    .line 1680
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 1682
    .local v2, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    int-to-float v3, p3

    neg-int v4, p4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 1684
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1686
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, p0, p2, v5, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1691
    .end local v2    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1692
    throw v2

    .line 1688
    :catch_0
    move-exception v2

    .line 1691
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1692
    nop

    .line 1693
    monitor-exit v0

    return-void

    .line 1675
    .end local v1    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "nFontID":I
    .end local p2    # "sText":Ljava/lang/String;
    .end local p3    # "nPosX":I
    .end local p4    # "nPosY":I
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "rotate"    # F

    .line 1572
    if-eqz p2, :cond_0

    .line 1573
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 1576
    .local v0, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 1577
    .local v1, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 1578
    int-to-float v2, p3

    neg-int v3, p4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 1580
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1582
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1583
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p0, p2, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    nop

    .end local v1    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1588
    throw v1

    .line 1584
    :catch_0
    move-exception v1

    .line 1587
    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1588
    nop

    .line 1590
    .end local v0    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    return-void
.end method

.method public static final drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "rotate"    # F

    .line 1568
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 1569
    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nFontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "rotate"    # F

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1597
    if-eqz p2, :cond_0

    .line 1598
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1601
    .local v1, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 1603
    .local v2, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 1604
    int-to-float v3, p3

    neg-int v4, p4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 1606
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1608
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1609
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, p0, p2, v5, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1613
    .end local v2    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1614
    throw v2

    .line 1610
    :catch_0
    move-exception v2

    .line 1613
    :goto_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1614
    goto :goto_1

    .line 1596
    .end local v1    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "nFontID":I
    .end local p2    # "sText":Ljava/lang/String;
    .end local p3    # "nPosX":I
    .end local p4    # "nPosY":I
    .end local p5    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local p6    # "rotate":F
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 1616
    .restart local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1    # "nFontID":I
    .restart local p2    # "sText":Ljava/lang/String;
    .restart local p3    # "nPosX":I
    .restart local p4    # "nPosY":I
    .restart local p5    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local p6    # "rotate":F
    :cond_0
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    .locals 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nFontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "mx4Font"    # Lcom/badlogic/gdx/math/Matrix4;

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1663
    if-eqz p2, :cond_0

    .line 1664
    int-to-float v1, p3

    neg-int v2, p4

    int-to-float v2, v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p5, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 1666
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1668
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, p0, p2, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1662
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "nFontID":I
    .end local p2    # "sText":Ljava/lang/String;
    .end local p3    # "nPosX":I
    .end local p4    # "nPosY":I
    .end local p5    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 1670
    .restart local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1    # "nFontID":I
    .restart local p2    # "sText":Ljava/lang/String;
    .restart local p3    # "nPosX":I
    .restart local p4    # "nPosY":I
    .restart local p5    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1672
    :cond_0
    :goto_0
    nop

    .line 1673
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IIF)V
    .locals 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nFontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "rotate"    # F

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1642
    if-eqz p2, :cond_0

    .line 1644
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 1646
    .local v1, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 1647
    int-to-float v2, p3

    neg-int v3, p4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 1649
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1651
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p0, p2, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    nop

    .end local v1    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_0

    .line 1641
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "nFontID":I
    .end local p2    # "sText":Ljava/lang/String;
    .end local p3    # "nPosX":I
    .end local p4    # "nPosY":I
    .end local p5    # "rotate":F
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 1652
    .restart local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1    # "nFontID":I
    .restart local p2    # "sText":Ljava/lang/String;
    .restart local p3    # "nPosX":I
    .restart local p4    # "nPosY":I
    .restart local p5    # "rotate":F
    :catch_0
    move-exception v1

    .line 1658
    :cond_0
    :goto_0
    nop

    .line 1659
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nFontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "rotate"    # F

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1620
    if-eqz p2, :cond_0

    .line 1622
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 1624
    .local v1, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 1625
    int-to-float v2, p3

    neg-int v3, p4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 1627
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1629
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1630
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p0, p2, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    nop

    .end local v1    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_0

    .line 1619
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "nFontID":I
    .end local p2    # "sText":Ljava/lang/String;
    .end local p3    # "nPosX":I
    .end local p4    # "nPosY":I
    .end local p5    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local p6    # "rotate":F
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 1631
    .restart local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1    # "nFontID":I
    .restart local p2    # "sText":Ljava/lang/String;
    .restart local p3    # "nPosX":I
    .restart local p4    # "nPosY":I
    .restart local p5    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local p6    # "rotate":F
    :catch_0
    move-exception v1

    .line 1637
    :cond_0
    :goto_0
    nop

    .line 1638
    monitor-exit v0

    return-void
.end method

.method public static drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 50
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float v1, p3

    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    nop

    .line 56
    :goto_1
    return-void
.end method

.method public static drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 42
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 43
    return-void
.end method

.method public static drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "rotate"    # F

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 81
    .local v0, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 82
    .local v1, "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 83
    int-to-float v2, p3

    neg-int v3, p4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 84
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 85
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f333333    # 0.7f

    invoke-direct {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, p0, p2, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    nop

    .end local v1    # "mx4Font":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 92
    throw v1

    .line 89
    :catch_0
    move-exception v1

    .line 91
    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 92
    nop

    .line 95
    .end local v0    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    return-void
.end method

.method public static drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "rotate"    # F

    .line 74
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 75
    return-void
.end method

.method public static drawTextWithShadowScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "fScale"    # F

    .line 60
    if-eqz p2, :cond_0

    .line 61
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 62
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float v1, p3

    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 66
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    nop

    .line 71
    :goto_1
    return-void
.end method

.method public static final drawText_Cache(ILjava/lang/String;II)V
    .locals 3
    .param p0, "fontID"    # I
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 1455
    if-eqz p1, :cond_0

    .line 1456
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    int-to-float v1, p2

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1460
    :cond_0
    :goto_0
    nop

    .line 1461
    :goto_1
    return-void
.end method

.method public static final drawText_CacheBegin(ILcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p0, "fontID"    # I
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1448
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 1450
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1451
    return-void
.end method

.method public static final drawText_CacheEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 1
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fontID"    # I

    .line 1464
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 1465
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 1466
    return-void
.end method

.method public static final getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 8
    .param p0, "iOld"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "iNew"    # Lcom/badlogic/gdx/graphics/Color;

    .line 1287
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 1289
    .local v0, "tA":F
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v0

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v5, v1, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v6, v1, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v1, v7

    mul-float/2addr v6, v1

    div-float/2addr v6, v0

    add-float/2addr v5, v6

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v2
.end method

.method public static final getColorStep(IIII)F
    .locals 3
    .param p0, "iOld"    # I
    .param p1, "iNew"    # I
    .param p2, "iColorStepID"    # I
    .param p3, "numOfSteps"    # I

    .line 1266
    int-to-float v0, p0

    sub-int v1, p1, p0

    mul-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;
    .locals 6
    .param p0, "iOld"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "iNew"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "iColorStepID"    # I
    .param p3, "numOfSteps"    # I
    .param p4, "fAlpha"    # F

    .line 1270
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 1271
    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v2, v2, v3

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 1272
    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v3, v3, v4

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    mul-float/2addr v3, v4

    int-to-float v4, p3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 1273
    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v4, v4, v5

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v4, v5

    int-to-float v5, p3

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 1270
    return-object v0
.end method

.method public static final getColorStep_WithAlpha(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;II)Lcom/badlogic/gdx/graphics/Color;
    .locals 7
    .param p0, "iOld"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "iNew"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "iColorStepID"    # I
    .param p3, "numOfSteps"    # I

    .line 1278
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 1279
    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v2, v2, v3

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 1280
    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v3, v3, v4

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    mul-float/2addr v3, v4

    int-to-float v4, p3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 1281
    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v4, v4, v5

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v4, v5

    int-to-float v5, p3

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 1282
    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v5, v5, v6

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v5, v6

    int-to-float v6, p2

    mul-float/2addr v5, v6

    int-to-float v6, p3

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 1278
    return-object v0
.end method

.method public static final getDarker(II)I
    .locals 2
    .param p0, "iColor"    # I
    .param p1, "iMod"    # I

    .line 1258
    const/4 v0, 0x0

    sub-int v1, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static final getDarker(Lcom/badlogic/gdx/graphics/Color;IF)Lcom/badlogic/gdx/graphics/Color;
    .locals 7
    .param p0, "nColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "iMod"    # I
    .param p2, "nAlpha"    # F

    .line 1262
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    int-to-float v3, p1

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v4, v2

    int-to-float v5, p1

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v5, v2

    int-to-float v6, p1

    sub-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v4, v2, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static final getHover_ExtraPosX()I
    .locals 1

    .line 88
    const/16 v0, 0x19

    return v0
.end method

.method public static final getHover_ExtraPosY()I
    .locals 1

    .line 92
    const/16 v0, 0x1e

    return v0
.end method

.method public static final getTextHeight(Ljava/lang/String;)I
    .locals 1
    .param p0, "sText"    # Ljava/lang/String;

    .line 1709
    const/4 v0, 0x0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextHeight(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final declared-synchronized getTextHeight(Ljava/lang/String;I)I
    .locals 3
    .param p0, "sText"    # Ljava/lang/String;
    .param p1, "fontID"    # I

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1713
    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 1715
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1716
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int v2, v2

    monitor-exit v0

    return v2

    .line 1712
    .end local v1    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .end local p0    # "sText":Ljava/lang/String;
    .end local p1    # "fontID":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getTextWidth(Ljava/lang/String;)I
    .locals 1
    .param p0, "sText"    # Ljava/lang/String;

    .line 1698
    const/4 v0, 0x0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final declared-synchronized getTextWidth(Ljava/lang/String;I)I
    .locals 3
    .param p0, "sText"    # Ljava/lang/String;
    .param p1, "fontID"    # I

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1702
    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 1704
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1705
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int v2, v2

    monitor-exit v0

    return v2

    .line 1701
    .end local v1    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .end local p0    # "sText":Ljava/lang/String;
    .end local p1    # "fontID":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getText_WidthHeight(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 1
    .param p0, "sText"    # Ljava/lang/String;

    .line 1720
    const/4 v0, 0x0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getText_WidthHeight(Ljava/lang/String;I)Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    move-result-object v0

    return-object v0
.end method

.method public static final getText_WidthHeight(Ljava/lang/String;F)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 1
    .param p0, "sText"    # Ljava/lang/String;
    .param p1, "fFontScale"    # F

    .line 1732
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getText_WidthHeight(Ljava/lang/String;IF)Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized getText_WidthHeight(Ljava/lang/String;I)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 5
    .param p0, "sText"    # Ljava/lang/String;
    .param p1, "fontID"    # I

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1724
    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 1726
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1728
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/XY;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 1723
    .end local v1    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .end local p0    # "sText":Ljava/lang/String;
    .end local p1    # "fontID":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized getText_WidthHeight(Ljava/lang/String;IF)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 5
    .param p0, "sText"    # Ljava/lang/String;
    .param p1, "fontID"    # I
    .param p2, "fFontScale"    # F

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1736
    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 1738
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1740
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/XY;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 1735
    .end local v1    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .end local p0    # "sText":Ljava/lang/String;
    .end local p1    # "fontID":I
    .end local p2    # "fFontScale":F
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadFont(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "sFont"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-float v0, v0

    .line 114
    .local v0, "texSize":F
    const v1, 0x3f2aaaab

    mul-float/2addr v1, v0

    const/high16 v2, 0x44800000    # 1024.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 115
    .local v1, "texSize2":I
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 116
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->getDI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    invoke-static {}, Lteam/rainfall/fontFix/Config;->getConfig()Lteam/rainfall/fontFix/config/PolarisConfigData;

    move-result-object v2

    iget-boolean v2, v2, Lteam/rainfall/fontFix/config/PolarisConfigData;->extendCharset:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x2000

    goto :goto_0

    :cond_0
    const/16 v2, 0x1000

    :goto_0
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 120
    :cond_1
    if-gez p2, :cond_2

    .line 121
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->DEFAULT_FONT_SIZE:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 125
    :cond_2
    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v2, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    goto :goto_1

    .line 126
    .end local v2    # "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "var5":Ljava/lang/Exception;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v4, "game/fonts/Roboto-Bold.ttf"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v2, v3

    .line 130
    .local v2, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    :goto_1
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 132
    .local v3, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->getDI()Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    iput-object p1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 134
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    goto :goto_2

    .line 136
    :cond_3
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!.?"

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 137
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 139
    :goto_2
    const/4 v4, 0x6

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 140
    const-string v4, "FontColor"

    invoke-static {v4}, Lteam/rainfall/fontFix/FontFix;->readFontColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 141
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 142
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 143
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sput v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    .line 145
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->getDI()Z

    move-result v4

    if-nez v4, :cond_4

    .line 146
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    .line 148
    :cond_4
    return-void
.end method

.method public static final loadFontArmy_GlyphLayout(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "sFont"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .line 1349
    const/4 v0, 0x0

    .line 1351
    .local v0, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    if-gez p2, :cond_0

    .line 1352
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->DEFAULT_FONT_SIZE:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v1, v2

    float-to-int p2, v1

    .line 1356
    :cond_0
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1359
    goto :goto_0

    .line 1357
    :catch_0
    move-exception v1

    .line 1358
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v3, "game/fonts/Roboto-Bold.ttf"

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v0, v2

    .line 1361
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 1363
    .local v1, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 1364
    const/4 v2, 0x6

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 1365
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 1366
    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 1367
    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 1369
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 1370
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    .line 1371
    return-void
.end method

.method public static loadFontBorder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "sFont"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-float v0, v0

    .line 152
    .local v0, "texSize":F
    const v1, 0x3f2aaaab

    mul-float/2addr v1, v0

    const/high16 v2, 0x44800000    # 1024.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 153
    .local v1, "texSize2":I
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 154
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1000

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 158
    .local v2, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    :try_start_0
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game/fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, "var4":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v5, "game/fonts/Roboto-Bold.ttf"

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v2, v4

    .line 163
    .end local v3    # "var4":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 164
    .local v3, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 165
    iput-object p1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 166
    iput-boolean v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    goto :goto_1

    .line 168
    :cond_1
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!.?"

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 169
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 171
    :goto_1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_SIZE:I

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 172
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_R:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_G:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_B:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_A:F

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 173
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 174
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 175
    iput-boolean v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    .line 176
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_R:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_G:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_B:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_A:F

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    .line 177
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    int-to-float v4, v4

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    .line 178
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sput v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorderSize:I

    .line 180
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setFixedWidthGlyphs(Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    .line 184
    :cond_2
    return-void
.end method

.method public static final loadFontBorder2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "sFont"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 1443
    return-void
.end method

.method public static final declared-synchronized loadFont_UpdateTextHeight()V
    .locals 4

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1374
    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 1376
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890"

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1377
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v2, v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    .line 1379
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateArmyHeight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    monitor-exit v0

    return-void

    .line 1373
    .end local v1    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized loadFont_UpdateTextHeightSmall()V
    .locals 4

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    .line 1383
    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 1385
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890"

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 1386
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v2, v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    monitor-exit v0

    return-void

    .line 1382
    .end local v1    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final loadShaders()V
    .locals 17

    .line 119
    const-string v0, "game/shader/default_vertex.glsl"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "defaultVertex":Ljava/lang/String;
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "game/shader/default_fragment.glsl"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 122
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "game/shader/blackWhite_fragment.glsl"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlackWhite:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 123
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "game/shader/water_fragment.glsl"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 125
    const-string v1, "#ifdef GL_ES\n    precision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\n\nvoid main() {\nvec4 mask = texture2D(u_texture, v_texCoords);\n    gl_FragColor = vec4(v_color.rgb, v_color.a * mask.a);\n}"

    .line 138
    .local v1, "defaultFragment_Province":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 140
    const-string v2, "#ifdef GL_ES\n    precision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\n\nvoid main() {\n   gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n   gl_FragColor.rgb *= glFragColor.a;\n}"

    .line 153
    .local v2, "defaultFragment_FBO":Ljava/lang/String;
    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v3, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault_FBO:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 155
    const-string v3, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nvoid main()    \n{\n vec4 mask = texture2D(u_texture2, v_texCoords);\n gl_FragColor = vec4(mask.rgb, mask.a * (v_color.a * texture2D(u_texture, v_texCoords).a));\n}"

    .line 168
    .local v3, "flagFragment":Ljava/lang/String;
    const-string v4, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    .line 184
    .local v4, "vertexShader":Ljava/lang/String;
    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v5, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 186
    const/4 v5, 0x0

    sput-boolean v5, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 187
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 188
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v7, "u_texture"

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 189
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v8, "u_texture2"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 191
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "game/shader/alpha_shader.glsl"

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v4, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 193
    sput-boolean v5, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 194
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 195
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 196
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 197
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_useMask"

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v6, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 198
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v12, "u_maskScale"

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v6, v12, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 199
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v14, "u_maskOffset"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 201
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v16, "game/shader/alpha_shader_pattern.glsl"

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v4, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 203
    sput-boolean v5, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 204
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 205
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 206
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 207
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 208
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v12, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 209
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 212
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v15, "game/shader/map_overlay_fragment.glsl"

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v4, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 214
    sput-boolean v5, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 215
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 216
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 217
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 218
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 219
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v12, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 220
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 222
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v15, "game/shader/map_overlay_sea_fragment.glsl"

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v4, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 224
    sput-boolean v5, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 225
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 226
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 227
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 228
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 229
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v12, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 230
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15, v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 233
    const-string v6, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP\n#endif\n\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\n\n\nuniform sampler2D u_texture;\nuniform float time;\nuniform vec2 resolution;\n\n\nconst float PI = 3.1415;\n// \u901f\u5ea6\nconst float speed = 0.025;\nconst float speed_x = 0.05;\nconst float speed_y = 0.05;\n\n// \u6298\u5c04\u89d2\nconst float emboss = 0.3; \t\t// \u51f9\u51f8\u5f3a\u5ea6\nconst float intensity = 2.4;\t// \u5f3a\u5ea6\nconst int steps = 8;  \t\t\t// \u6ce2\u7eb9\u5bc6\u5ea6\nconst float frequency = 4.0;  \t// \u9891\u7387\nconst float angle = 7.0;\n\nconst float delta = 50.0;  \t\t// \u589e\u5e45\uff08\u8d8a\u5c0f\u8d8a\u6fc0\u70c8\uff09\nconst float intence = 200.0;   \t// \u660e\u6697\u5f3a\u5ea6\n\n// \u9ad8\u5149\nconst float reflectionCutOff = 0.012;\nconst float reflectionIntence = 80000.0;\n\nfloat col(vec2 coord)\n{\n    float delta_theta = 2.0 * PI / angle;\n    float col = 0.0;\n    float theta = 0.0;\n    for (int i = 0; i < steps; i++)\n    {\n        vec2 adjc = coord;\n        theta = delta_theta * float(i);\n        adjc.x += cos(theta)*time*speed + time * speed_x;\n        adjc.y -= sin(theta)*time*speed - time * speed_y;\n        col = col + cos((adjc.x * cos(theta) -\n            adjc.y * sin(theta)) * frequency) * intensity;\n    }\n    return cos(col);\n}\n\n\nvoid main()\n{\n    vec2 p = v_texCoords, c1 = p, c2 = p;\n    float cc1 = col(c1);\n\n    c2.x += resolution.x/delta;\n    float dx = emboss*(cc1-col(c2))/delta;\n\n    c2.x = p.x;\n    c2.y += resolution.y/delta;\n    float dy = emboss*(cc1-col(c2))/delta;\n    c1.x = c1.x +dx;\n    c1.y =  c1.y+dy;\n\n    float alpha = 1.0+dot(dx,dy)*intence;\n\n\n    vec4 col = texture2D(u_texture,c1);\n    col *= alpha;\n    gl_FragColor =  col;\n}"

    .line 309
    .local v6, "testFragment":Ljava/lang/String;
    new-instance v15, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v15, v0, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 311
    const-string v6, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP\n#endif\n\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\n\n\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nuniform float time;\nuniform vec2 resolution;\nuniform float u_maskScale;\nuniform float u_maskScaleY;\nuniform float u_useMask;\nuniform vec2 u_maskOffset;\n\n\nconst float PI = 3.1415;\n// \u901f\u5ea6\nconst float speed = 0.03;\nconst float speed_x = 0.06;\nconst float speed_y = 0.06;\n\n// \u6298\u5c04\u89d2\nconst float emboss = 0.3; \t\t// \u51f9\u51f8\u5f3a\u5ea6\nconst float intensity = 2.4;\t// \u5f3a\u5ea6\nconst int steps = 8;  \t\t\t// \u6ce2\u7eb9\u5bc6\u5ea6\nconst float frequency = 4.0;  \t// \u9891\u7387\nconst float angle = 7.0;\n\nconst float delta = 50.0;  \t\t// \u589e\u5e45\uff08\u8d8a\u5c0f\u8d8a\u6fc0\u70c8\uff09\nconst float intence = 200.0;   \t// \u660e\u6697\u5f3a\u5ea6\n\n// \u9ad8\u5149\nconst float reflectionCutOff = 0.012;\nconst float reflectionIntence = 80000.0;\n\nfloat col(vec2 coord)\n{\n    float delta_theta = 2.0 * PI / angle;\n    float col = 0.0;\n    float theta = 0.0;\n    for (int i = 0; i < steps; i++)\n    {\n        vec2 adjc = coord;\n        theta = delta_theta * float(i);\n        adjc.x += cos(theta)*time*speed + time * speed_x;\n        adjc.y -= sin(theta)*time*speed - time * speed_y;\n        col = col + cos((adjc.x * cos(theta) -\n            adjc.y * sin(theta)) * frequency) * intensity;\n    }\n    return cos(col);\n}\n\n\nvoid main()\n{\n    vec2 p = v_texCoords, c1 = p, c2 = p;\n    float cc1 = col(c1);\n\n    c2.x += resolution.x/delta;\n    float dx = emboss*(cc1-col(c2))/delta;\n\n    c2.x = p.x;\n    c2.y += resolution.y/delta;\n    float dy = emboss*(cc1-col(c2))/delta;\n    c1.x = c1.x +dx;\n    c1.y =  c1.y+dy;\n\n    float alpha = 1.0+dot(dx,dy)*intence;\n\n\n    vec4 col = texture2D(u_texture,c1);\n vec2 newCoords = vec2(v_texCoords.x * u_maskScale, v_texCoords.y * u_maskScaleY);\n vec4 mask = vec4(1.0, 1.0, 1.0, 1.0); \n\tmask = texture2D(u_texture2, v_texCoords);\n  gl_FragColor = vec4(col.rgb, mask.a * col.a);\n}"

    .line 393
    new-instance v15, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v15, v0, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 395
    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 396
    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v7, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 397
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v5, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 398
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 399
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v5, v12, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 400
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v7, 0x0

    invoke-virtual {v5, v14, v7, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 402
    const-string v5, "#ifdef GL_ES\nprecision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nuniform sampler2D u_texture;\nuniform float outlineSize;\nuniform vec3 outlineColor;\nuniform vec2 textureSize;\n\nconst float PI = 0.01745329252;\n\n\nint getIsStrokeWithAngel(float angel)\n{\n    int stroke = 0;\n    float rad = angel * PI;\n    vec2 unit = 1.0 / textureSize.xy;\n    vec2 offset = vec2(outlineSize * cos(rad) * unit.x, outlineSize * sin(rad) * unit.y);\n    float a = texture2D(u_texture, v_texCoords + offset).a;\n    if (a >= 0.5)\n    {\n        stroke = 1;\n    }\n    return stroke;\n}\n\nvoid main()\n{\n    vec4 myC = texture2D(u_texture, v_texCoords);\n    if (myC.a >= 0.5)\n    {\n        gl_FragColor = v_color * myC;\n        return;\n    }\n\n    int strokeCount = 0;\n    strokeCount += getIsStrokeWithAngel(0.0);\n    strokeCount += getIsStrokeWithAngel(30.0);\n    strokeCount += getIsStrokeWithAngel(60.0);\n    strokeCount += getIsStrokeWithAngel(90.0);\n    strokeCount += getIsStrokeWithAngel(120.0);\n    strokeCount += getIsStrokeWithAngel(150.0);\n    strokeCount += getIsStrokeWithAngel(180.0);\n    strokeCount += getIsStrokeWithAngel(210.0);\n    strokeCount += getIsStrokeWithAngel(240.0);\n    strokeCount += getIsStrokeWithAngel(270.0);\n    strokeCount += getIsStrokeWithAngel(300.0);\n    strokeCount += getIsStrokeWithAngel(330.0);\n\n    if (strokeCount > 0)\n    {\n        myC.rgb = outlineColor;\n        myC.a = 1.0;\n    }\n\n    gl_FragColor = v_color * myC;\n}"

    .line 464
    .end local v6    # "testFragment":Ljava/lang/String;
    .local v5, "testFragment":Ljava/lang/String;
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v6, v0, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 466
    const-string v5, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 v_texCoords;\nvarying vec4 v_color;\nuniform float widthStep;\nuniform float heightStep;\nuniform float strength;\nuniform sampler2D u_texture;\nconst float blurRadius = 5.0;\nconst float blurPixels = (blurRadius * 2.0 + 1.0) * (blurRadius * 2.0 + 1.0);\n\nvoid main()\n{\n    vec4 v = texture2D(u_texture, v_texCoords);\n    vec3 sumColor = vec3(0.0, 0.0, 0.0);\n    for(float fy = -blurRadius; fy <= blurRadius; ++fy)\n    {\n        for(float fx = -blurRadius; fx <= blurRadius; ++fx)\n        {\n            vec2 coord = vec2(fx * widthStep, fy * heightStep);\n            sumColor += texture2D(u_texture, v_texCoords + coord).rgb;\n        }\n    }\n    gl_FragColor = vec4(mix(v.rgb, sumColor / blurPixels, strength), v.a*v_color.a);\n}"

    .line 493
    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v6, v0, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 494
    return-void
.end method

.method private final renderUI()V
    .locals 2

    .line 572
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 577
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    if-lez v0, :cond_0

    .line 578
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawKeyboardText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 584
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/utilities/FPS;->drawFPS(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 585
    return-void
.end method

.method private final renderer_SetToCurrentScale()V
    .locals 6

    .line 676
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    const/high16 v5, 0x3e400000    # 0.1875f

    mul-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v5, v4

    div-float/2addr v3, v5

    neg-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_TILT_RUNTIME:Z

    if-eqz v5, :cond_tilt_off_1

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object v0

    const/4 v1, 0x5

    aget v2, v0, v1

    move v5, v2

    mul-float/2addr v5, v3

    const/4 v1, 0x7

    aput v5, v0, v1

    sub-float/2addr v2, v5

    const/4 v1, 0x5

    aput v2, v0, v1

    const/16 v1, 0xe

    sub-float/2addr v2, v2

    aput v2, v0, v1

    :cond_tilt_off_1
    nop

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 682
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 687
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final renderer_SetToCurrentScale2()V
    .locals 6

    .line 707
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    const/high16 v5, 0x3e400000    # 0.1875f

    mul-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v5, v4

    div-float/2addr v3, v5

    neg-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_TILT_RUNTIME:Z

    if-eqz v5, :cond_tilt_off_2

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object v0

    const/4 v1, 0x5

    aget v2, v0, v1

    move v5, v2

    mul-float/2addr v5, v3

    const/4 v1, 0x7

    aput v5, v0, v1

    sub-float/2addr v2, v5

    const/4 v1, 0x5

    .line 710
    aput v2, v0, v1

    const/16 v1, 0xe

    sub-float/2addr v2, v2

    aput v2, v0, v1

    :cond_tilt_off_2
    nop

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 718
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final renderer_resetScale()V
    .locals 4

    .line 691
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 692
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 693
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 694
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 695
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 696
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 697
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 701
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final renderer_resetScale2()V
    .locals 4

    .line 722
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 723
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 724
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 725
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 726
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 732
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final resetFontScale()V
    .locals 3

    .line 1752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    if-ge v0, v1, :cond_0

    .line 1753
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1755
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static final setBlackWhite(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 607
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlackWhite:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 608
    return-void
.end method

.method public static final setFontScale(F)V
    .locals 2
    .param p0, "fontScale"    # F

    .line 1746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    if-ge v0, v1, :cond_0

    .line 1747
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1749
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static final setShaderBlur(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 645
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 647
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "widthStep"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 648
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "heightStep"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 649
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "strength"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 650
    return-void
.end method

.method public static final setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 603
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 604
    return-void
.end method

.method public static final setShaderOutline(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 653
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 656
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "outlineColor"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 657
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "outlineSize"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 658
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const-string v4, "textureSize"

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 660
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 662
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 664
    :cond_0
    return-void
.end method

.method public static final setShaderWater(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 611
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime:F

    .line 612
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 613
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    .line 614
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_amount"

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 615
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_speed"

    const v2, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 617
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_py"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 618
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_px"

    const v2, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 624
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_time"

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 625
    return-void
.end method

.method public static final setShaderWater2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 628
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    .line 629
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 631
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "time"

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 632
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    .line 633
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 632
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    .line 634
    return-void
.end method

.method public static final setShaderWater3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 637
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 639
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "time"

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 640
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    .line 641
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 640
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    .line 642
    return-void
.end method

.method private final updateBackgroundColor()V
    .locals 10

    .line 814
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    if-eqz v0, :cond_2

    .line 815
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    .line 817
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 818
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v0, v5, v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v4, v5, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v3, v5, v3

    invoke-direct {v1, v0, v4, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_0

    .line 820
    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 821
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    aget v1, v1, v4

    sub-float/2addr v1, v2

    .line 822
    .local v1, "numOfSteps":F
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    sub-float/2addr v5, v2

    .line 824
    .local v5, "currentStep":F
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 825
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v0, v8, v0

    invoke-static {v7, v0, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 826
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v4, v8, v4

    invoke-static {v7, v4, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 827
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v3, v8, v3

    invoke-static {v7, v3, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v3

    invoke-direct {v6, v0, v4, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 829
    .end local v1    # "numOfSteps":F
    .end local v5    # "currentStep":F
    goto/16 :goto_0

    .line 831
    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I

    sub-int/2addr v5, v4

    aget v1, v1, v5

    sub-float v1, v2, v1

    .line 832
    .restart local v1    # "numOfSteps":F
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    sub-float v5, v2, v5

    .line 834
    .restart local v5    # "currentStep":F
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 835
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v0, v8, v0

    invoke-static {v7, v0, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 836
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v4, v8, v4

    invoke-static {v7, v4, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 837
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v3, v8, v3

    invoke-static {v7, v3, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v3

    invoke-direct {v6, v0, v4, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 841
    .end local v1    # "numOfSteps":F
    .end local v5    # "currentStep":F
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected final clearScreen()V
    .locals 5

    .line 806
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor()V

    .line 807
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 809
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 810
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 811
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 101
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 103
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final drawKeyboardText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 588
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->info:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;->DESKTOP_KEYBOARD_DRAW_EXTRA_TEXT:Z

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v0

    .line 591
    .local v0, "textW":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v7, v1, v2

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 593
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 595
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 597
    .end local v0    # "textW":I
    :cond_1
    return-void
.end method

.method public final drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIF)V
    .locals 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "fAngle"    # F

    .line 953
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    .line 958
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 953
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 961
    return-void
.end method

.method public final drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nPosX2"    # I
    .param p5, "nPosY2"    # I

    .line 946
    sub-int v0, p4, p2

    sub-int v1, p4, p2

    mul-int/2addr v0, v1

    sub-int v1, p3, p5

    sub-int v2, p3, p5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 947
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    sub-int v0, p3, p5

    int-to-double v0, v0

    neg-int v2, p2

    add-int/2addr v2, p4

    int-to-double v2, v2

    .line 948
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v7, v0

    .line 946
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIF)V

    .line 950
    return-void
.end method

.method public inject$render(Lteam/rainfall/finality/luminosity2/CallbackInfo;)V
    .locals 1
    .param p1, "callbackInfo"    # Lteam/rainfall/finality/luminosity2/CallbackInfo;
    .annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Inject;
        methodName = "render"
    .end annotation

    .line 37
    sget-object v0, Lteam/rainfall/fontFix/utils/MusicPool;->POOL:Lteam/rainfall/fontFix/utils/MusicPool;

    invoke-virtual {v0}, Lteam/rainfall/fontFix/utils/MusicPool;->refresh()V

    .line 38
    return-void
.end method

.method public render()V
    .locals 3

    new-instance v0, Lteam/rainfall/finality/luminosity2/CallbackInfo;

    invoke-direct {v0}, Lteam/rainfall/finality/luminosity2/CallbackInfo;-><init>()V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->inject$render(Lteam/rainfall/finality/luminosity2/CallbackInfo;)V

    move-object v0, p0

    .line 503
    .local v0, "this":Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;
    :try_start_0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 508
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clearScreen()V

    .line 510
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_SetToCurrentScale()V

    .line 512
    :try_start_1
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 513
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/Map;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 516
    goto :goto_1

    .line 514
    :catch_1
    move-exception v1

    .line 515
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 521
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawCurrentScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 523
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale2()V

    .line 524
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawWithoutScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 526
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_SetToCurrentScale2()V

    .line 531
    :try_start_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 534
    goto :goto_2

    .line 532
    :catch_2
    move-exception v1

    .line 533
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 537
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 540
    goto :goto_3

    .line 538
    :catch_3
    move-exception v1

    .line 539
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 541
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_3
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale()V

    .line 544
    :try_start_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 547
    goto :goto_4

    .line 545
    :catch_4
    move-exception v1

    .line 546
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 550
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderUI()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 553
    goto :goto_5

    .line 551
    :catch_5
    move-exception v1

    .line 552
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 558
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 561
    goto :goto_6

    .line 559
    :catch_6
    move-exception v1

    .line 560
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 564
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 567
    goto :goto_7

    .line 565
    :catch_7
    move-exception v1

    .line 566
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 568
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method public final resetFontMainScale()V
    .locals 1

    .line 1758
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontMainScale(F)V

    .line 1759
    return-void
.end method

.method public resize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1773
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 1774
    return-void
.end method

.method public final setFontMainScale(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .line 1762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontMainScale(FI)V

    .line 1763
    return-void
.end method

.method public final setFontMainScale(FI)V
    .locals 1
    .param p1, "fontScale"    # F
    .param p2, "fontID"    # I

    .line 1766
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1767
    return-void
.end method

.method public update()V
    .locals 3

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 849
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateSimpleTask()V

    .line 851
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->update()V

    .line 853
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->update()V

    .line 855
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/utilities/FPS;->countFPS()V

    .line 860
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ambienceManager:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->update()V

    .line 862
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->update()V

    .line 864
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->updateKeyboardVerticalLine()V

    .line 867
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 868
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->update()V

    .line 869
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 873
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 871
    :catch_0
    move-exception v1

    .line 872
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 876
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 877
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->update()V

    .line 878
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 876
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 882
    .end local v0    # "i":I
    :cond_1
    goto :goto_3

    .line 880
    :catch_1
    move-exception v0

    .line 881
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 885
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->updateSteam_runCallbacks()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 888
    goto :goto_4

    .line 886
    :catch_2
    move-exception v0

    .line 887
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 889
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
