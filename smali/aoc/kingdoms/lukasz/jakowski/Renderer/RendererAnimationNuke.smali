.class public Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;
.super Ljava/lang/Object;
.source "RendererAnimationNuke.java"


# static fields
.field public static lastTimeNukePlayed:J


# instance fields
.field public TURN_ID:I

.field public currentIMG:I

.field public iPosX:I

.field public iPosY:I

.field public iProvinceID:I

.field public lTime:J

.field public remove:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lastTimeNukePlayed:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "iProvinceID"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iProvinceID:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosX:I

    .line 21
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosY:I

    .line 23
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->TURN_ID:I

    .line 28
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    .line 31
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iProvinceID:I

    .line 33
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_3d

    .line 34
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosX:I

    .line 35
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosY:I

    goto :goto_4d

    .line 38
    :cond_3d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosX:I

    .line 39
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosY:I

    .line 42
    :goto_4d
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->TURN_ID:I

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 22
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 48
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->TURN_ID:I

    sub-int/2addr v1, v2

    const/16 v2, 0x3c

    const/4 v10, 0x1

    if-le v1, v2, :cond_10

    .line 49
    iput-boolean v10, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    .line 52
    :cond_10
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_162

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    if-nez v1, :cond_162

    .line 53
    iget-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_4b

    .line 54
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    .line 56
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lastTimeNukePlayed:J

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_SOUND_EFFECT_LOCK_TIME:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4b

    .line 57
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lastTimeNukePlayed:J

    .line 58
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_NUKE:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getSoundsVolumeMaster()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 62
    :cond_4b
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_ANIMATION_TIME:F

    div-float/2addr v1, v2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    const v3, 0x3dcccccd    # 0.1f

    add-float v12, v1, v3

    .line 64
    .local v12, "fProgress":F
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->nukeImg:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v14, v1

    .line 65
    .local v14, "currentW":I
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->nukeImg:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v15, v1

    .line 67
    .local v15, "currentH":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_c3

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    .line 68
    .local v8, "nPosX":I
    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v8

    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v7

    goto :goto_cb

    :cond_c3
    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v8

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v7

    :goto_cb
    nop

    nop

    .line 70
    .local v7, "nPosY":I
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    int-to-float v1, v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->nukeIMGSize:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v2

    sub-float v16, v11, v1

    .line 72
    .local v16, "fProgress2":F
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v5, v5, v16

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sub-int v3, v8, v14

    sub-int v4, v7, v15

    mul-int/lit8 v5, v14, 0x2

    move-object/from16 v2, p1

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 74
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sub-int v3, v8, v14

    add-int v2, v7, v15

    sub-int v4, v2, v15

    mul-int/lit8 v5, v14, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v2, p1

    move/from16 v19, v7

    .end local v7    # "nPosY":I
    .local v19, "nPosY":I
    move/from16 v7, v17

    move/from16 v17, v8

    .end local v8    # "nPosX":I
    .local v17, "nPosX":I
    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 76
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 77
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->nukeImg:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    div-int/lit8 v2, v14, 0x2

    sub-int v3, v17, v2

    div-int/lit8 v2, v15, 0x2

    sub-int v4, v19, v2

    move-object/from16 v2, p1

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 79
    cmpl-float v1, v12, v11

    if-ltz v1, :cond_15d

    .line 80
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    add-int/2addr v1, v10

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    .line 81
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    .line 83
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->nukeIMGSize:I

    if-lt v1, v2, :cond_15d

    .line 84
    iput v13, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    .line 85
    iput-boolean v10, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    .line 89
    :cond_15d
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 92
    .end local v12    # "fProgress":F
    .end local v14    # "currentW":I
    .end local v15    # "currentH":I
    .end local v16    # "fProgress2":F
    .end local v17    # "nPosX":I
    .end local v19    # "nPosY":I
    :cond_162
    return-void
.end method
