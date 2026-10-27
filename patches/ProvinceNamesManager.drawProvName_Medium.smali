.method public static final declared-synchronized drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"    # I
    .param p2, "extraX"    # I

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_end

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_SCALE:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_end

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v2, v4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr p2, v3

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    add-int/2addr v5, p2

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    mul-float/2addr v5, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v7

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    add-int/2addr v7, v6

    int-to-float v7, v7

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    mul-float/2addr v7, v6

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v8, v8

    mul-float v6, v2, v7

    div-float/2addr v6, v8

    sub-float v8, v4, v6

    div-float v11, v7, v8

    float-to-int v11, v11

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v6, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    sub-float v10, v5, v6

    mul-float/2addr v10, v4

    div-float/2addr v10, v8

    add-float/2addr v10, v6

    float-to-int v10, v10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v9

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    move-object v7, p0

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IIF)V

    :cond_end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
