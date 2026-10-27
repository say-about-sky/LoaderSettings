.class public Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;
.super Ljava/lang/Object;
.source "ProvinceDrawArmy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;,
        Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;
    }
.end annotation


# static fields
.field public static ARMY_HEIGHT:I = 0x0

.field public static final ARMY_PADDING_X:I = 0x5

.field public static final COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

.field public static final COLOR_ARMY2:Lcom/badlogic/gdx/graphics/Color;

.field public static final COLOR_ARMY_OLD:Lcom/badlogic/gdx/graphics/Color;

.field public static DRAW_ARMY_ALPHA:F = 0.0f

.field public static final DRAW_ARMY_DEFAULT_ALPHA:F = 1.0f

.field public static DRAW_ARMY_MIN_SCALE_ANIMATION:F = 0.0f

.field public static DRAW_ARMY_TIME:J = 0x0L

.field public static DRAW_ARMY_TIME_HIDE:J = 0x0L

.field public static DRAW_CITIES_ALPHA:F = 0.0f

.field public static DRAW_CITIES_TIME:J = 0x0L

.field public static DRAW_CITIES_TIME_HIDE:J = 0x0L

.field public static DRAW_OCCUPIED_ALPHA:F = 0.0f

.field public static DRAW_OCCUPIED_TIME:J = 0x0L

.field public static DRAW_OCCUPIED_TIME_HIDE:J = 0x0L

.field public static DRAW_PROVINCE_NAMES_ALPHA:F = 0.0f

.field public static DRAW_PROVINCE_NAMES_TIME:J = 0x0L

.field public static DRAW_PROVINCE_NAMES_TIME_HIDE:J = 0x0L

.field public static final FLAG_PADDING_X:I = 0x3

.field public static final FLAG_PADDING_X_RIGHT:I = 0x2

.field public static final FLAG_PADDING_X_SUM:I = 0x5

.field public static final FLAG_PADDING_Y:I = 0x2

.field public static final HOVER_PADDING:I = 0x4

.field public static armyFlagPosHeight:I

.field public static armyFlagPosWidth:I

.field public static armyFlagPosX:I

.field public static armyFlagPosY:I

.field public static drawCitiesHideAnimation:Z

.field public static drawHideAnimation:Z

.field public static drawOccupiedHideAnimation:Z

.field public static drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

.field public static drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

.field public static drawProvinceNamesHideAnimation:Z

.field public static moraleBG:Lcom/badlogic/gdx/graphics/Color;

.field public static moraleGreen:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 22
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f66e6e7

    const v2, 0x3f61e1e2

    const v3, 0x3f57d7d8

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    .line 23
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f75f5f6

    const v2, 0x3f6bebec

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY2:Lcom/badlogic/gdx/graphics/Color;

    .line 24
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f48c8c9

    const v2, 0x3e8c8c8d

    const v3, 0x3f5cdcdd

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY_OLD:Lcom/badlogic/gdx/graphics/Color;

    .line 26
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    .line 43
    const v1, 0x3dcccccd    # 0.1f

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 44
    const-wide/16 v2, 0x0

    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    .line 45
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    .line 47
    const v5, 0x3e99999a    # 0.3f

    sput v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    .line 49
    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    .line 50
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 51
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    .line 52
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    .line 54
    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    .line 55
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 56
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    .line 57
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    .line 59
    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    .line 60
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 61
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    .line 62
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    .line 475
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d808081

    const v2, 0x3dd0d0d1

    invoke-direct {v0, v1, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    .line 477
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3df0f0f1

    const v3, 0x3f028283

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleGreen:Lcom/badlogic/gdx/graphics/Color;

    .line 479
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

    .line 480
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final drawMapModeDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 370
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_58

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_1f

    .line 372
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 375
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_32

    .line 376
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 379
    .end local v0    # "i":I
    :cond_32
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_33
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_45

    .line 380
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 383
    .end local v0    # "i":I
    :cond_45
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_46
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_58

    .line 384
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 387
    .end local v0    # "i":I
    :cond_58
    return-void
.end method

.method private static final drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "ImageID"    # I
    .param p5, "inRetreat"    # Z

    .line 511
    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 513
    if-eqz p5, :cond_3c

    .line 514
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyRetreat:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, p1, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyRetreat:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 516
    :cond_3c
    return-void
.end method

.method public static final drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "fAlpha"    # F

    .line 678
    if-ltz p2, :cond_45

    :try_start_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge p2, v0, :cond_45

    .line 679
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 680
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 681
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_40

    goto :goto_45

    .line 683
    :catch_40
    move-exception v0

    .line 684
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 685
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_45
    :goto_45
    nop

    .line 686
    :goto_46
    return-void
.end method

.method private static final drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I

    .line 704
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, -0x4

    add-int/lit8 v4, p2, -0x4

    add-int/lit8 v0, p3, 0x8

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 705
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    add-int/lit8 v4, p2, -0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 706
    return-void
.end method

.method private static final drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nCivID"    # I
    .param p4, "ImageID"    # I

    .line 519
    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x5

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 521
    if-gez p3, :cond_43

    .line 522
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_67

    .line 525
    :cond_43
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 528
    :goto_67
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 529
    return-void
.end method

.method private static final drawProvinceArmyFlag_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nCivID"    # I

    .line 532
    if-gez p3, :cond_19

    .line 533
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosX:I

    add-int v3, p1, v0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosY:I

    add-int v4, p2, v0

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosWidth:I

    sget v6, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosHeight:I

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_31

    .line 536
    :cond_19
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosX:I

    add-int v3, p1, v0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosY:I

    add-int v4, p2, v0

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosWidth:I

    sget v6, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosHeight:I

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 538
    :goto_31
    return-void
.end method

.method public static final drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "fAlpha"    # F

    .line 621
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 622
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 623
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 624
    return-void
.end method

.method public static final drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I

    .line 689
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, -0x4

    add-int/lit8 v4, p2, -0x4

    add-int/lit8 v0, p3, 0x8

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 690
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    add-int/lit8 v4, p2, -0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 695
    return-void
.end method

.method public static final drawProvinceArmyHover_Units(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I

    .line 698
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, -0x4

    add-int/lit8 v4, p2, -0x4

    add-int/lit8 v0, p3, 0x8

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 699
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    add-int/lit8 v4, p2, -0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 700
    return-void
.end method

.method public static final drawProvinceArmyHover_WithUnitsImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 19
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "fAlpha"    # F

    .line 627
    move-object v6, p0

    move/from16 v7, p2

    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v8

    .line 628
    .local v8, "nPosX":I
    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v9

    .line 630
    .local v9, "nPosY":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 631
    .local v10, "tIDs":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v1, :cond_99

    .line 632
    const/4 v1, 0x1

    .line 634
    .local v1, "add":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 635
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v3, v4, :cond_64

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v3, v4, :cond_64

    .line 636
    const/4 v1, 0x0

    .line 637
    goto :goto_67

    .line 634
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 641
    .end local v2    # "j":I
    :cond_67
    :goto_67
    if-eqz v1, :cond_95

    .line 642
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v1    # "add":Z
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 646
    .end local v0    # "i":I
    :cond_99
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v11

    .line 647
    .local v11, "nWidth":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    mul-int v12, v0, v1

    .line 649
    .local v12, "extraWidth":I
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 650
    add-int v0, v11, v12

    invoke-static {p0, v8, v9, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover_Units(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 651
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 653
    add-int/lit8 v0, v8, -0x5

    add-int v1, v0, v11

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->armyAlly:I

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    move-object v0, p0

    move v2, v9

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 656
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_f7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_211

    .line 658
    add-int v0, v8, v11

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 659
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int v1, v1, v13

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v9

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 661
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 662
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    neg-int v3, v3

    .line 658
    invoke-static {p0, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 665
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v14, v0

    .line 667
    .local v14, "unitImgWidth":I
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 668
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    div-int/lit8 v2, v14, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    mul-int v2, v2, v13

    add-int/2addr v2, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 669
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 667
    move-object v1, p0

    move v3, v9

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 670
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 671
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, v8, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    mul-int v2, v2, v13

    add-int/2addr v1, v2

    invoke-virtual {v0, p0, v1, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 656
    .end local v14    # "unitImgWidth":I
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f7

    .line 674
    .end local v13    # "j":I
    :cond_211
    return-void
.end method

.method public static final drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I

    .line 489
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    .line 490
    .local v0, "nPosX":I
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v6

    .line 492
    .local v6, "nPosY":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 493
    .local v7, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v7, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    .line 495
    .local v8, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget v1, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v0, v6, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyFlag_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 496
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft3:Ljava/util/List;

    iget v2, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1, p0, v0, v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 498
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft3_Width:I

    add-int v9, v0, v1

    .line 500
    .end local v0    # "nPosX":I
    .local v9, "nPosX":I
    iget v0, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    add-int/lit8 v3, v0, 0xa

    iget v0, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 502
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iget-boolean v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 500
    move-object v0, p0

    move v1, v9

    move v2, v6

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 504
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    iget v0, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyExtraPosX:I

    add-int/2addr v0, v9

    add-int/lit8 v3, v0, 0x5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    .line 506
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v6

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-int v4, v5

    sub-int v4, v0, v4

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

    .line 504
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 508
    return-void
.end method

.method public static final drawProvinceArmyWithFlag_Shadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;FLjava/lang/String;II)V
    .registers 20
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "armyColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "fAlpha"    # F
    .param p4, "sArmy"    # Ljava/lang/String;
    .param p5, "iArmyWidth"    # I
    .param p6, "extraY"    # I

    .line 592
    move-object v7, p0

    move-object v8, p2

    move/from16 v9, p3

    :try_start_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX_Shadow(I)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    add-int v1, v1, p5

    add-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 593
    .local v0, "nPosX":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY_Shadow(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    mul-int v2, v2, p6

    add-int v10, v1, v2

    .line 595
    .local v10, "nPosY":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v1, v11, v11, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 597
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {p0, v0, v10, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 599
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 600
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v3, v2, 0x5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 602
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v11, v11, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 603
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x5

    add-int/lit8 v4, p5, 0xa

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->army:I

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v10

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 607
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    .line 608
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v4, v1, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    .line 609
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v10

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v3, v5

    sub-int v5, v1, v3

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v11, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v12, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v12, v12, v9

    invoke-direct {v6, v1, v3, v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 607
    move-object v1, p0

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 612
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_fa} :catch_fb

    .line 615
    .end local v0    # "nPosX":I
    .end local v10    # "nPosY":I
    goto :goto_ff

    .line 613
    :catch_fb
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 616
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ff
    return-void
.end method

.method public static final drawProvinceArmy_Units(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;F)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "armyColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "fAlpha"    # F

    .line 544
    :try_start_0
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    .line 545
    .local v0, "nPosX":I
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    .line 547
    .local v1, "nPosY":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 549
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v4, v4, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 551
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 552
    .local v3, "uID":I
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    .line 553
    .local v5, "aID":I
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 555
    .local v4, "numOfUnits":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_42
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v6, v7, :cond_10a

    .line 556
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v3, v7, :cond_7b

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v5, v7, :cond_7b

    .line 557
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_110

    add-int/2addr v4, v7

    goto/16 :goto_106

    .line 562
    :cond_7b
    :try_start_7b
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    neg-int v8, v8

    invoke-static {p0, v0, v1, v7, v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 563
    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/textures/Image;

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    invoke-virtual {v7, p0, v0, v1, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 564
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_bb} :catch_bc

    .line 567
    goto :goto_c0

    .line 565
    :catch_bc
    move-exception v7

    .line 566
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_bd
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 569
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_c0
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7, p0, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 571
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 573
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    move v3, v7

    .line 574
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    move v5, v7

    .line 575
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    move v4, v7

    .line 555
    :goto_106
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_42

    .line 582
    .end local v6    # "i":I
    :cond_10a
    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_10f} :catch_110

    .line 585
    .end local v0    # "nPosX":I
    .end local v1    # "nPosY":I
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "uID":I
    .end local v4    # "numOfUnits":I
    .end local v5    # "aID":I
    goto :goto_111

    .line 583
    :catch_110
    move-exception v0

    .line 586
    :goto_111
    return-void
.end method

.method public static final drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 260
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    .line 261
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto/16 :goto_8e

    .line 264
    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-eq v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-eq v0, v1, :cond_79

    .line 275
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_8e

    .line 277
    :cond_79
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_8e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8e

    .line 278
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 281
    :cond_8e
    :goto_8e
    return-void
.end method

.method private static final drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_8a

    .line 287
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 288
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 290
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    if-gez v1, :cond_4f

    .line 291
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->removeActiveArmy(I)V

    goto :goto_86

    .line 294
    :cond_4f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v1, :cond_86

    .line 295
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p0, v1, v2, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_86} :catch_8b

    .line 286
    :cond_86
    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 302
    .end local v0    # "i":I
    :cond_8a
    goto :goto_8c

    .line 300
    :catch_8b
    move-exception v0

    .line 305
    :goto_8c
    :try_start_8c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_e2

    .line 306
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->checkHoveredArmy_Fog()V

    .line 308
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 309
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 311
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v0, :cond_e2

    .line 312
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_e2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    if-ltz v0, :cond_e2

    .line 313
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p0, v0, v1, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_e2} :catch_e3

    .line 321
    :cond_e2
    goto :goto_e4

    .line 319
    :catch_e3
    move-exception v0

    .line 323
    :goto_e4
    :try_start_e4
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

    .line 324
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

    .line 326
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_105} :catch_1a5

    .line 329
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_106
    :try_start_106
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_118

    .line 330
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    .line 333
    .end local v0    # "i":I
    :cond_118
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_119
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_12b

    .line 334
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_119

    .line 337
    .end local v0    # "i":I
    :cond_12b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12c
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_13e

    .line 338
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    .line 341
    .end local v0    # "i":I
    :cond_13e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_13f
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_151

    .line 342
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_14e} :catch_152

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_13f

    .line 346
    .end local v0    # "i":I
    :cond_151
    goto :goto_156

    .line 344
    :catch_152
    move-exception v0

    .line 345
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_153
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 348
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_156
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_15b} :catch_1a5

    .line 351
    :try_start_15b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19f

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_164
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19f

    .line 353
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iProvinceID:I

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->sArmy:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iArmyWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v8, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->extraY:I

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyWithFlag_Shadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;FLjava/lang/String;II)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_19c} :catch_1a0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_164

    .line 358
    .end local v0    # "i":I
    :cond_19f
    goto :goto_1a4

    .line 356
    :catch_1a0
    move-exception v0

    .line 357
    .local v0, "exr":Ljava/lang/Exception;
    :try_start_1a1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    .line 361
    .end local v0    # "exr":Ljava/lang/Exception;
    :goto_1a4
    goto :goto_1a9

    .line 359
    :catch_1a5
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 366
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a9
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 367
    return-void
.end method

.method public static final getArmyHeight()I
    .registers 1

    .line 470
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public static final getArmyPosX(II)I
    .registers 7
    .param p0, "nProvinceID"    # I
    .param p1, "nArmyID"    # I

    .line 450
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosX_2(I)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    add-int/2addr v0, v2

    return v0
.end method

.method public static final getArmyPosX_Shadow(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 458
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosX_2(I)I

    move-result v0

    return v0
.end method

.method public static final getArmyPosY(II)I
    .registers 7
    .param p0, "nProvinceID"    # I
    .param p1, "nArmyID"    # I

    .line 454
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosY_2(I)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    add-int/2addr v0, v2

    return v0
.end method

.method public static final getArmyPosY_Shadow(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 462
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosY_2(I)I

    move-result v0

    return v0
.end method

.method public static final getArmyWidth(I)I
    .registers 2
    .param p0, "nArmyWidth"    # I

    .line 466
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyLeft3_Width:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static final getDetailsPosX(I)I
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 434
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosX_2(I)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iShiftX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getDetailsPosX_2(I)I
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 438
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v0

    return v0
.end method

.method public static final getDetailsPosY(I)I
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 442
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosY_2(I)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iShiftY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getDetailsPosY_2(I)I
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 446
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v0

    return v0
.end method

.method public static final updateArmyHeight()V
    .registers 3

    .line 711
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 713
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "0123456789"

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 714
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    .line 715
    return-void
.end method

.method public static final updateArmyImgID()V
    .registers 2

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 68
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final updateCitiesTime()V
    .registers 6

    .line 150
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 151
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    .line 152
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    goto :goto_30

    .line 155
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 156
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 158
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 159
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 163
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateCitiesTimeHide()V
    .registers 6

    .line 181
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 182
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    .line 183
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    goto :goto_31

    .line 186
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 188
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 189
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    .line 193
    :cond_31
    :goto_31
    return-void
.end method

.method public static final updateDrawArmy(I)Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;
    .registers 2
    .param p0, "nProvinceID"    # I

    .line 396
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 397
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1;-><init>()V

    return-object v0

    .line 407
    :cond_10
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$2;-><init>()V

    return-object v0
.end method

.method public static final updateDrawArmyAlpha()V
    .registers 5

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_17

    .line 76
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateTime()V

    .line 77
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    .line 78
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    goto :goto_21

    .line 81
    :cond_17
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_1f

    .line 82
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateTimeHide()V

    goto :goto_21

    .line 85
    :cond_1f
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    .line 89
    :goto_21
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_35

    .line 90
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateCitiesTime()V

    .line 91
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    .line 92
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    goto :goto_3f

    .line 95
    :cond_35
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_3d

    .line 96
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateCitiesTimeHide()V

    goto :goto_3f

    .line 99
    :cond_3d
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    .line 103
    :goto_3f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_53

    .line 104
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateProvinceNamesTime()V

    .line 105
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    .line 106
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    goto :goto_5d

    .line 109
    :cond_53
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_5b

    .line 110
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateProvinceNamesTimeHide()V

    goto :goto_5d

    .line 113
    :cond_5b
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    .line 117
    :goto_5d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_71

    .line 118
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateOccupiedTime()V

    .line 119
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    .line 120
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    goto :goto_7b

    .line 123
    :cond_71
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    if-eqz v0, :cond_79

    .line 124
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateOccupiedTimeHide()V

    goto :goto_7b

    .line 127
    :cond_79
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    .line 130
    :goto_7b
    return-void
.end method

.method public static final updateOccupiedTime()V
    .registers 6

    .line 227
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 228
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    .line 229
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    goto :goto_30

    .line 232
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 233
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 235
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 236
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 240
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateOccupiedTimeHide()V
    .registers 6

    .line 243
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 244
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    .line 245
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    goto :goto_31

    .line 248
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 250
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 251
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    .line 255
    :cond_31
    :goto_31
    return-void
.end method

.method public static final updateProvinceNamesTime()V
    .registers 6

    .line 211
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 212
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    .line 213
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    goto :goto_30

    .line 216
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 217
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 219
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 220
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 224
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateProvinceNamesTimeHide()V
    .registers 6

    .line 196
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 197
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    .line 198
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    goto :goto_31

    .line 201
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 203
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 204
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    .line 208
    :cond_31
    :goto_31
    return-void
.end method

.method public static final updateTime()V
    .registers 6

    .line 133
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 134
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    .line 135
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    goto :goto_30

    .line 138
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 139
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 141
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 142
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 146
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateTimeHide()V
    .registers 6

    .line 166
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 167
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    .line 168
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    goto :goto_31

    .line 171
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 173
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 174
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    .line 178
    :cond_31
    :goto_31
    return-void
.end method
