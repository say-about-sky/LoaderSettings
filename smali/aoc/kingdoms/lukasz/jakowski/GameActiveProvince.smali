.class public Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;
.super Ljava/lang/Object;
.source "GameActiveProvince.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final actionUp_setActiveProvinceID2(IIII)V
    .registers 9
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I
    .param p4, "button"    # I

    .line 26
    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result p1

    float-to-int p1, p1

    nop

    nop

    nop

    .line 27
    const/4 v1, 0x1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result p2

    float-to-int p2, p2

    nop

    nop

    nop

    .line 30
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_134

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "tPosX":I
    :goto_18
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 32
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 34
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    if-gt v2, v1, :cond_79

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    if-lt v2, v1, :cond_79

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_79

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_79

    .line 35
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 36
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_AddProvince(I)V

    .line 38
    return-void

    .line 31
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 43
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_7c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4b0

    .line 44
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_ab
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_132

    .line 45
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 46
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 48
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_12e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_12e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_12e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_12e

    .line 49
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 50
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_AddProvince(I)V

    .line 52
    return-void

    .line 44
    :cond_12e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_ab

    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_132
    goto/16 :goto_4b0

    .line 59
    :cond_134
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_256

    .line 60
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_13a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_19e

    .line 61
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 63
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    if-gt v2, v1, :cond_19b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    if-lt v2, v1, :cond_19b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_19b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_19b

    .line 64
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 65
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_AddProvince(I)V

    .line 67
    return-void

    .line 60
    :cond_19b
    add-int/lit8 v0, v0, 0x1

    goto :goto_13a

    .line 72
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_19e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4b0

    .line 73
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_1cd
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_254

    .line 74
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_250

    .line 75
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 77
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_250

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_250

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_250

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_250

    .line 78
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_250

    .line 79
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_AddProvince(I)V

    .line 81
    return-void

    .line 73
    :cond_250
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1cd

    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_254
    goto/16 :goto_4b0

    .line 88
    :cond_256
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-eqz v0, :cond_37c

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    .line 90
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    .line 92
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_261
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_2c5

    .line 93
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 95
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    if-gt v2, v1, :cond_2c2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    if-lt v2, v1, :cond_2c2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_2c2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_2c2

    .line 96
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_2c2

    .line 97
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->moveActiveArmiesToProvinceID(I)V

    .line 98
    return-void

    .line 92
    :cond_2c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_261

    .line 103
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_2c5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37b

    .line 104
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_2f4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_37b

    .line 105
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_377

    .line 106
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 108
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_377

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_377

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_377

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_377

    .line 109
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_377

    .line 110
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->moveActiveArmiesToProvinceID(I)V

    .line 111
    return-void

    .line 104
    :cond_377
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f4

    .line 118
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_37b
    return-void

    .line 121
    :cond_37c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_37e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_3ee

    .line 122
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 124
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    if-gt v2, v1, :cond_3eb

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    if-lt v2, v1, :cond_3eb

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_3eb

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_3eb

    .line 125
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_3eb

    .line 126
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, v2, :cond_3e6

    .line 127
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 128
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setActiveProvinceID(I)V

    goto :goto_3ea

    .line 130
    :cond_3e6
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iOldActiveProvinceID:I

    .line 133
    :goto_3ea
    return-void

    .line 121
    :cond_3eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_37e

    .line 138
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_3ee
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4b0

    .line 139
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_41d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_4b0

    .line 140
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_4ac

    .line 141
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 143
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_4ac

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_4ac

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_4ac

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_4ac

    .line 144
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_4ac

    .line 145
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, v2, :cond_4a7

    .line 146
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 147
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setActiveProvinceID(I)V

    goto :goto_4ab

    .line 149
    :cond_4a7
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iOldActiveProvinceID:I

    .line 152
    :goto_4ab
    return-void

    .line 139
    :cond_4ac
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_41d

    .line 159
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_4b0
    :goto_4b0
    return-void
.end method


# virtual methods
.method public final actionUp_setActiveProvinceID(IIII)V
    .registers 8
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I
    .param p4, "button"    # I

    .line 10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_72

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_72

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_72

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_72

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_72

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID2(IIII)V

    .line 13
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-nez v0, :cond_68

    .line 14
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapMode;->playSFX_ProvinceClick()V

    .line 18
    :cond_68
    :try_start_68
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    invoke-interface {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;->extraAction(IIII)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_6e

    .line 21
    goto :goto_72

    .line 19
    :catch_6e
    move-exception v0

    .line 20
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 23
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_72
    :goto_72
    return-void
.end method

.method public final mouseOverProvinceID(II)I
    .registers 7
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 207
    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result p1

    float-to-int p1, p1

    nop

    nop

    nop

    .line 208
    const/4 v1, 0x1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result p2

    float-to-int p2, p2

    nop

    nop

    nop

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "tPosX":I
    :goto_14
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_75

    .line 212
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 214
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    if-gt v2, v1, :cond_72

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    if-lt v2, v1, :cond_72

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_72

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_72

    .line 215
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 216
    return v0

    .line 211
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 221
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_128

    .line 222
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_a4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_128

    .line 223
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 224
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 226
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_124

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_124

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-gt v2, v3, :cond_124

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_124

    .line 227
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p2

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 228
    return v0

    .line 222
    :cond_124
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a4

    .line 235
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_128
    const/4 v0, -0x1

    return v0
.end method

.method public final moveActiveArmiesToProvinceID(I)V
    .registers 12
    .param p1, "toProvinceID"    # I

    .line 162
    .local v0, "i":I
    const/4 v0, 0x0

    .local v1, "extraArmyY":I
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v2, :cond_14d

    .line 163
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    const/4 v3, 0x1

    if-eq p1, v2, :cond_10e

    .line 164
    const/4 v1, 0x0

    .line 166
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    if-ge v2, v0, :cond_31

    .line 167
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ne v4, v5, :cond_2e

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 166
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 172
    .end local v2    # "j":I
    :cond_31
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    .line 174
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->move:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;->PLAYER_CAN_MOVE_ALL_ARMIES:Z

    if-nez v2, :cond_aa

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-eqz v2, :cond_53

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->SANDBOX:Z

    if-eqz v2, :cond_53

    goto :goto_aa

    .line 183
    :cond_53
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v2, v4, :cond_81

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->move:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;->PLAYER_CAN_MOVE_VASSALS_ARMIES:Z

    if-eqz v2, :cond_fb

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v4, :cond_fb

    .line 184
    :cond_81
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v7, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v9, 0x0

    move v6, p1

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    goto :goto_fb

    .line 175
    :cond_aa
    :goto_aa
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    if-gez v2, :cond_d3

    .line 176
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v7, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v9, 0x0

    move v6, p1

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->newMove(IILjava/lang/String;IZ)Z

    goto :goto_fb

    .line 179
    :cond_d3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v7, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v9, 0x0

    move v6, p1

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    .line 188
    :cond_fb
    :goto_fb
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playMove()V

    .line 190
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v2

    if-eqz v2, :cond_149

    .line 191
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v3, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy(ZZ)V

    goto :goto_149

    .line 195
    :cond_10e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    .line 197
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->cancelMove(Ljava/lang/String;)Z

    .line 199
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v2

    if-eqz v2, :cond_149

    .line 200
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v3, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy(ZZ)V

    .line 162
    :cond_149
    :goto_149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 204
    .end local v0    # "i":I
    .end local v1    # "extraArmyY":I
    :cond_14d
    return-void
.end method

.method public final resetLastActiveProvince()V
    .registers 2

    .line 288
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->resetProvinceID()V

    .line 289
    return-void
.end method

.method public final setActiveProvinceID(I)V
    .registers 5
    .param p1, "nActiveProvinceID"    # I

    .line 243
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iOldActiveProvinceID:I

    .line 245
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 246
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->resetAnimationData()V

    .line 248
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 251
    if-ltz p1, :cond_6b

    .line 252
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 256
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_5a

    .line 257
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 259
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    iput p1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 260
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 261
    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 262
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 264
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 255
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 269
    .end local v0    # "i":I
    :cond_5d
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v0, :cond_6b

    .line 270
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 272
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    .line 273
    return-void

    .line 278
    :cond_6b
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_72} :catch_73

    .line 282
    goto :goto_77

    .line 280
    :catch_73
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 283
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_77
    return-void
.end method

.method public final setProvinceID_PPM(II)V
    .registers 13
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 292
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->clickAnimation(II)V

    .line 294
    const/4 v3, 0x0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result v0

    float-to-int v0, v0

    nop

    nop

    nop

    const/4 v3, 0x1

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result v1

    float-to-int v1, v1

    nop

    nop

    nop

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v0

    .line 296
    .local v0, "nNewChosenProvinceID":I
    if-ltz v0, :cond_17f

    .line 297
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v1, :cond_26

    .line 298
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_RemoveProvince(I)V

    goto/16 :goto_17f

    .line 300
    :cond_26
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v1, :cond_2f

    .line 301
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_RemoveProvince(I)V

    goto/16 :goto_17f

    .line 304
    :cond_2f
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "extraArmyY":I
    :goto_31
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v1, v3, :cond_17f

    .line 305
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    const/4 v8, 0x1

    if-eq v0, v3, :cond_140

    .line 306
    const/4 v2, 0x0

    .line 308
    const/4 v3, 0x0

    move v9, v2

    .end local v2    # "extraArmyY":I
    .local v3, "j":I
    .local v9, "extraArmyY":I
    :goto_45
    if-ge v3, v1, :cond_62

    .line 309
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ne v2, v4, :cond_5f

    .line 310
    add-int/lit8 v9, v9, 0x1

    .line 308
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 314
    .end local v3    # "j":I
    :cond_62
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    .line 316
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->move:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;->PLAYER_CAN_MOVE_ALL_ARMIES:Z

    if-nez v2, :cond_db

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-eqz v2, :cond_84

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->SANDBOX:Z

    if-eqz v2, :cond_84

    goto :goto_db

    .line 325
    :cond_84
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v2, v3, :cond_b2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->move:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;->PLAYER_CAN_MOVE_VASSALS_ARMIES:Z

    if-eqz v2, :cond_12c

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_12c

    .line 326
    :cond_b2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v7, 0x0

    move v4, v0

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    goto :goto_12c

    .line 317
    :cond_db
    :goto_db
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    if-gez v2, :cond_104

    .line 318
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v7, 0x0

    move v4, v0

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->newMove(IILjava/lang/String;IZ)Z

    goto :goto_12c

    .line 321
    :cond_104
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v7, 0x0

    move v4, v0

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    .line 330
    :cond_12c
    :goto_12c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playMove()V

    .line 332
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 333
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v8, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy(ZZ)V

    .line 304
    :cond_13e
    move v2, v9

    goto :goto_17b

    .line 337
    .end local v9    # "extraArmyY":I
    .restart local v2    # "extraArmyY":I
    :cond_140
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    .line 339
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->cancelMove(Ljava/lang/String;)Z

    .line 341
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 342
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v8, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy(ZZ)V

    .line 304
    :cond_17b
    :goto_17b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_31

    .line 348
    .end local v1    # "i":I
    .end local v2    # "extraArmyY":I
    :cond_17f
    :goto_17f
    return-void
.end method
