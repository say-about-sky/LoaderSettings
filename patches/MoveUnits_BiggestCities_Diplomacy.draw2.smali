.method public draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 59
    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->iRouteSize:I

    const/4 v2, 0x0

    if-lez v1, :cond_204

    .line 60
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 62
    .local v1, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 63
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_22
    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->iPrecision:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-ge v3, v4, :cond_67

    .line 64
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float v5, v5, p2

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 65
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-float v6, v6, p2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v10

    mul-float v10, p2, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v10, v11

    mul-float v12, v10, v6

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v12, v10

    sub-float v12, v11, v12

    div-float/2addr v6, v12

    div-float/2addr v12, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v5, v10

    div-float/2addr v5, v12

    add-float/2addr v5, v10
    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .end local v3    # "j":I
    :cond_67
    goto :goto_98

    .line 69
    :cond_68
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_69
    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->iPrecision:I

    if-ge v3, v4, :cond_98

    .line 70
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float v5, v5, p2

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 71
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-float v6, v6, p2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v10

    mul-float v10, p2, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v10, v11

    mul-float v12, v10, v6

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v12, v10

    sub-float v12, v11, v12

    div-float/2addr v6, v12

    div-float/2addr v12, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v5, v10

    div-float/2addr v5, v12

    add-float/2addr v5, v10
    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 70
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 75
    .end local v3    # "j":I
    :cond_98
    :goto_98
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x3f7d70a4    # 0.99f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_bb

    .line 77
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    goto :goto_d1

    .line 79
    :cond_bb
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 82
    :goto_d1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float v4, v4, v6

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v4, v6

    const/high16 v6, 0x40200000    # 2.5f

    mul-float v4, v4, v6

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    mul-float v4, v4, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_f6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v7

    :cond_f6
    mul-float v4, v4, v7

    sget-object v6, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v3, v1, v4, v6, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 85
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1fa

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_1fa

    .line 86
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    const v9, 0x3ee66666    # 0.45f

    mul-float v8, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 88
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v5, v5

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v6, v6

    sub-int/2addr v6, v0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 89
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v5, v5, p2

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v6, v6, p2

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    mul-float v6, v6, v7

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    mul-float v6, v6, v7

    .line 88
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v10

    mul-float v10, p2, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v10, v11

    mul-float v12, v10, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v12, v10

    sub-float v12, v11, v12

    div-float/2addr v5, v12

    div-float/2addr v12, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v4, v10

    div-float/2addr v4, v12

    add-float/2addr v4, v10
    invoke-virtual {v3, v4, v5, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    .line 91
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    const v9, 0x3f19999a    # 0.6f

    mul-float v8, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 93
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v5, v5

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v6, v6

    sub-int/2addr v6, v0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 94
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v5, v5, p2

    const/high16 v6, 0x41800000    # 16.0f

    mul-float v6, v6, p2

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    mul-float v6, v6, v7

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    mul-float v6, v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, p2

    .line 93
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v10

    mul-float v10, p2, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v10, v11

    mul-float v12, v10, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v12, v10

    sub-float v12, v11, v12

    div-float/2addr v5, v12

    div-float/2addr v12, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v4, v10

    div-float/2addr v4, v12

    add-float/2addr v4, v10
    invoke-virtual {v3, v4, v5, v6, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->circle(FFFF)V

    .line 102
    :cond_1fa
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1fc} :catch_206

    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_204

    .line 103
    return v0

    .line 109
    .end local v1    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_204
    nop

    .line 112
    return v2

    .line 106
    :catch_206
    move-exception v1

    .line 107
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 108
    return v0
.end method