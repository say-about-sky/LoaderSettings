.method public static applyMapTiltToBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 10

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_TILT_RUNTIME:Z

    if-eqz v0, :done

    :try_start_0
    const/4 v7, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3e400000    # 0.1875f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object v2

    const/4 v3, 0x5

    aget v4, v2, v3

    mul-float v5, v4, v0

    const/4 v6, 0x7

    aput v5, v2, v6

    sub-float v5, v4, v5

    aput v5, v2, v3

    const/16 v3, 0xe

    const/4 v4, 0x0

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    if-eqz v0, :done

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :done

    :catch_0
    move-exception v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :done
    return-void
.end method
