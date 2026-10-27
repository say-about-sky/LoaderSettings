.method public static final getArmyPosY(I)I
    .registers 8
    .param p0, "nProvinceID"    # I

    .line 189
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2
    # v1 = rawY(基点,与包版公式一致)

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3
    # v3 = armyH

    int-to-float v4, v3

    sub-float/2addr v1, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v1, v3
    # v1 = rawY(含横幅常量偏移;与包版返回值同源)

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v3

    mul-float/2addr v3, v2
    # v3 = k_s = getTiltK * scale

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v3, v4
    # v4 = 1 + k_s

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    mul-float v6, v3, v1

    div-float/2addr v6, v5

    sub-float v5, v4, v6
    # v5 = D = 1 + k_s - k_s*rawY/H

    div-float/2addr v1, v5

    float-to-int v1, v1

    return v1
.end method
