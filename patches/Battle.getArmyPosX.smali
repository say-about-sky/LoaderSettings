.method public static final getArmyPosX(I)I
    .registers 10
    .param p0, "nProvinceID"    # I

    .line 185
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2
    # v1 = rawX

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v5, v4

    sub-float/2addr v3, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4
    # v3 = rawY(与 getArmyPosY 包版返回值同源;用于求 D)

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v4

    mul-float/2addr v4, v2
    # v4 = k_s

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v5, v4, v5
    # v5 = 1 + k_s

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v6, v6

    mul-float v7, v4, v3

    div-float/2addr v7, v6

    sub-float v6, v5, v7
    # v6 = D = 1 + k_s - k_s*rawY/H

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8
    # v7 = W/2

    sub-float/2addr v1, v7

    mul-float/2addr v1, v5

    div-float/2addr v1, v6

    add-float/2addr v1, v7

    float-to-int v1, v1

    return v1
.end method
