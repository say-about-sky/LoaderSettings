.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "ageGroup"    # I

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_58

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipIMGID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v11

    mul-float/2addr v2, v11

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    mul-float/2addr v4, v11

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v5

    mul-float v5, v11, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v6, v5, v6

    mul-float v7, v5, v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v10, v6

    sub-float/2addr v10, v7

    div-float/2addr v4, v10

    div-float/2addr v10, v6

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v2, v8

    div-float/2addr v2, v10

    add-float/2addr v2, v8

    float-to-int v3, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateXMoveUnits:[I

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v5, v5, v6

    add-int/2addr v3, v5

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateYMoveUnits:[I

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    int-to-float v7, v0

    const/16 v5, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    :cond_58
    return-void
.end method
