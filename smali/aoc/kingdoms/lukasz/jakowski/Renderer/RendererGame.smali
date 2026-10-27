.class public Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;
.super Ljava/lang/Object;
.source "RendererGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;
    }
.end annotation


# static fields
.field public static animationNukes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;",
            ">;"
        }
    .end annotation
.end field

.field public static iAnimationNukesSize:I

.field public static rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I

    .line 32
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0
    .param p0, "x0"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 25
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->defaultDrawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public static final addNuke(I)V
    .locals 2
    .param p0, "iProvinceID"    # I

    .line 555
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I

    .line 557
    return-void
.end method

.method private static final defaultDrawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 575
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmyAlpha()V

    .line 576
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 578
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 580
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;->drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 582
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawMapModeDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 590
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 591
    return-void
.end method

.method private static final drawCapitalFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 604
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v6

    .line 605
    .local v6, "nPosX":I
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v7

    .line 607
    .local v7, "nPosY":I
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 609
    const/4 v8, 0x0

    .line 611
    .local v8, "flagImgID":I
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 613
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v3, v7, -0x1

    const/16 v4, 0x46

    const/16 v5, 0x2e

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 617
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 619
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 621
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 622
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 624
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/16 v4, 0x44

    const/16 v5, 0x2c

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 629
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 630
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 632
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v3, v7, -0x1

    const/16 v4, 0x46

    const/16 v5, 0x2e

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 635
    return-void
.end method

.method public static final drawCapitalFlags(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 596
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 597
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->drawCapitalFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    .line 596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static final drawNukeAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 561
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 562
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 564
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    if-eqz v1, :cond_0

    .line 565
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 566
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 571
    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 572
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static final getDrawPosX(IF)I
    .locals 7
    .param p0, "nProvinceID"    # I
    .param p1, "nScale"    # F

    .line 638
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v3

    mul-float v3, p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    mul-float v5, v3, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method public static final getDrawPosY(IF)I
    .locals 5
    .param p0, "nProvinceID"    # I
    .param p1, "nScale"    # F

    .line 642
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float/2addr v2, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    float-to-int v0, v1

    return v0
.end method

.method public static final updateRenderer()V
    .locals 1

    .line 55
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 80
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto/16 :goto_3

    .line 229
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInSettingsMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto/16 :goto_3

    .line 410
    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarios_NewGame()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 411
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 412
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame_Scenarios()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame_ScenariosCampaign()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 435
    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceNamePoints()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_3

    .line 469
    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInCloudsMenu()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLost()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 519
    :cond_5
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_3

    .line 470
    :cond_6
    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_3

    .line 413
    :cond_7
    :goto_1
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_3

    .line 57
    :cond_8
    :goto_2
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    .line 552
    :goto_3
    return-void
.end method
