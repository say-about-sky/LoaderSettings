.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 57
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iRouteSize:I

    if-lez v0, :cond_eb

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 60
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->lRoute:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 61
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_21
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iPrecision:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    if-ge v1, v3, :cond_66

    .line 62
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->lRoute:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float v4, v4, p2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 63
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v5, v5, p2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v7

    mul-float v7, p2, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v9, v7, v8

    mul-float v10, v7, v5

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v12, v9

    sub-float/2addr v12, v10

    div-float/2addr v5, v12

    div-float/2addr v12, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v4, v10

    div-float/2addr v4, v12

    add-float/2addr v4, v10
    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 62
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .end local v1    # "j":I
    :cond_66
    goto :goto_9d

    .line 67
    :cond_67
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_68
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iPrecision:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-ge v1, v2, :cond_9d

    .line 68
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float v3, v3, p2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 69
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float v4, v4, p2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v5

    mul-float v5, p2, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v7, v5, v6

    mul-float v8, v5, v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v10, v7

    sub-float/2addr v10, v8

    div-float/2addr v4, v10

    div-float/2addr v10, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v3, v8

    div-float/2addr v3, v10

    add-float/2addr v3, v8
    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 76
    .end local v1    # "j":I
    :cond_9d
    :goto_9d
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c0

    .line 77
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/16 v6, 0x64

    invoke-static {v2, v4, v5, v6, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    goto :goto_d6

    .line 79
    :cond_c0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 82
    :goto_d6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    sget-object v3, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_eb} :catch_ec

    .line 86
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_eb
    goto :goto_f0

    .line 84
    :catch_ec
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 87
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_f0
    return-void
.end method