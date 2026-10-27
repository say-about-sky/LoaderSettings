.method public static final getArmyPosY(I)I
    .registers 12
    .param p0, "nProvinceID"    # I

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

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v3, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    mul-float v6, v3, v1

    div-float/2addr v6, v5

    sub-float v7, v4, v6

    div-float/2addr v1, v7

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    return v1
.end method
