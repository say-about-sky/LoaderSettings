.method public static final getTiltScaleY(F)F
    .locals 4

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_TILT_RUNTIME:Z

    if-eqz v0, :tilt_off

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v2, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    mul-float v3, v0, p0

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    add-float v1, v2, v3

    mul-float v3, v2, v2

    div-float/2addr v1, v3

    return v1

    :tilt_off
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
