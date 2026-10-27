.method public static final getArmyPosY(II)I
    .registers 16
    .param p0, "nProvinceID"    # I
    .param p1, "nArmyID"    # I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v5, v4, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v6, v6

    mul-float v7, v4, v2

    div-float/2addr v7, v6

    sub-float v8, v5, v7

    div-float/2addr v2, v8

    float-to-int v2, v2

    return v2
.end method
