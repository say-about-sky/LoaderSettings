.method public static final getArmyPosX(I)I
    .registers 12
    .param p0, "nProvinceID"    # I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v4

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v5, v4, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v6, v6

    mul-float v7, v4, v3

    div-float/2addr v7, v6

    sub-float v8, v5, v7

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sub-float v9, v1, v6

    mul-float/2addr v9, v5

    div-float/2addr v9, v8

    add-float/2addr v9, v6

    float-to-int v9, v9

    return v9
.end method
