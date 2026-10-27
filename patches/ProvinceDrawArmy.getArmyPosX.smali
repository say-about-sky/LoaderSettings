.method public static final getArmyPosX(II)I
    .registers 16
    .param p0, "nProvinceID"    # I
    .param p1, "nArmyID"    # I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v5, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v6, v5, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v7, v7

    mul-float v8, v5, v4

    div-float/2addr v8, v7

    sub-float v9, v6, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v7, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    sub-float v10, v2, v7

    mul-float/2addr v10, v6

    div-float/2addr v10, v9

    add-float/2addr v10, v7

    float-to-int v10, v10

    return v10
.end method
