.class public Laoc/kingdoms/lukasz/map/map/MapCities;
.super Ljava/lang/Object;
.source "MapCities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;,
        Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;,
        Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;,
        Laoc/kingdoms/lukasz/map/map/MapCities$Config;,
        Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;
    }
.end annotation


# static fields
.field public static final ACTIVE_CITIES_ANIMATION_TIME:I = 0x226

.field public static COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color; = null

.field public static COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color; = null

.field public static final FONT_ID:I = 0x4

.field public static final HOVERED_CITIES_ANIMATION_TIME:I = 0x7d0

.field public static citiesScaleGrowthRate:F

.field public static lTIME_ACTIVE_CITIES:J

.field public static lTIME_HOVERED_CITIES:J


# instance fields
.field public capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

.field public citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

.field public citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

.field public imageCity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public imageCityFort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f69e9ea

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6bebec

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesScaleGrowthRate:F

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    .line 71
    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    .line 43
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    .line 133
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    .line 173
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    .line 46
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->readSettings()V

    .line 47
    return-void
.end method

.method private final drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 256
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, p3

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 258
    .local v0, "fAlpha2":F
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v8, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 260
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_FONT_SCALE:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 261
    .local v1, "fontScale":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesScale_CurrentScale()V

    .line 263
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_2a
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_4f

    .line 264
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 265
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 263
    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 269
    .end local v9    # "i":I
    :cond_4f
    const/4 v2, 0x0

    move v9, v2

    .restart local v9    # "i":I
    :goto_51
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_76

    .line 270
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 271
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 269
    :cond_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 275
    .end local v9    # "i":I
    :cond_76
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v2, :cond_cc

    .line 276
    sget-wide v9, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 278
    .local v9, "tempTime":J
    sget-wide v2, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    const-wide/16 v4, 0x226

    sub-long v4, v9, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_b2

    .line 279
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 280
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-wide v3, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v3, v9, v3

    long-to-float v3, v3

    const v4, 0x44098000    # 550.0f

    div-float/2addr v3, v4

    mul-float v5, p3, v3

    sget-wide v6, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v6, v9, v6

    long-to-float v3, v6

    div-float/2addr v3, v4

    mul-float v6, p3, v3

    move-object v3, p1

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_cc

    .line 285
    :cond_b2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 286
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 292
    .end local v9    # "tempTime":J
    :cond_cc
    :goto_cc
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v2, :cond_127

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v2, v3, :cond_127

    .line 293
    sget-wide v9, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 295
    .restart local v9    # "tempTime":J
    sget-wide v2, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    const-wide/16 v4, 0x7d0

    sub-long v4, v9, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_10d

    .line 296
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 297
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-wide v3, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v3, v9, v3

    long-to-float v3, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v4

    mul-float v5, p3, v3

    sget-wide v6, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v6, v9, v6

    long-to-float v3, v6

    div-float/2addr v3, v4

    mul-float v6, p3, v3

    move-object v3, p1

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_127

    .line 302
    :cond_10d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 303
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 309
    .end local v9    # "tempTime":J
    :cond_127
    :goto_127
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 310
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 311
    return-void
.end method

.method private final drawCities_Just_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 314
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, p3

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 316
    .local v0, "fAlpha2":F
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v8, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 318
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_FONT_SCALE:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 319
    .local v1, "fontScale":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesScale_CurrentScale()V

    .line 321
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_2a
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_4f

    .line 322
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 323
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 321
    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 327
    .end local v9    # "i":I
    :cond_4f
    const/4 v2, 0x0

    move v9, v2

    .restart local v9    # "i":I
    :goto_51
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_76

    .line 328
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 329
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 327
    :cond_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 333
    .end local v9    # "i":I
    :cond_76
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v2, :cond_cc

    .line 334
    sget-wide v9, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 336
    .local v9, "tempTime":J
    sget-wide v2, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    const-wide/16 v4, 0x226

    sub-long v4, v9, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_b2

    .line 337
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 338
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-wide v3, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v3, v9, v3

    long-to-float v3, v3

    const v4, 0x44098000    # 550.0f

    div-float/2addr v3, v4

    mul-float v5, p3, v3

    sget-wide v6, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v6, v9, v6

    long-to-float v3, v6

    div-float/2addr v3, v4

    mul-float v6, p3, v3

    move-object v3, p1

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_cc

    .line 342
    :cond_b2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 343
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 348
    .end local v9    # "tempTime":J
    :cond_cc
    :goto_cc
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v2, :cond_127

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v2, v3, :cond_127

    .line 349
    sget-wide v9, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 351
    .restart local v9    # "tempTime":J
    sget-wide v2, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    const-wide/16 v4, 0x7d0

    sub-long v4, v9, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_10d

    .line 352
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 353
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-wide v3, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v3, v9, v3

    long-to-float v3, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v4

    mul-float v5, p3, v3

    sget-wide v6, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v6, v9, v6

    long-to-float v3, v6

    div-float/2addr v3, v4

    mul-float v6, p3, v3

    move-object v3, p1

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_127

    .line 357
    :cond_10d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 358
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 363
    .end local v9    # "tempTime":J
    :cond_127
    :goto_127
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 364
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 365
    return-void
.end method

.method private final drawCities_Just_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 411
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 413
    .local v0, "fAlpha2":F
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v8, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 415
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_FONT_SCALE:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 416
    .local v1, "fontScale":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesScale_CurrentScale()V

    .line 418
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_2a
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_4f

    .line 419
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 420
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 418
    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 424
    .end local v9    # "i":I
    :cond_4f
    const/4 v2, 0x0

    move v9, v2

    .restart local v9    # "i":I
    :goto_51
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_76

    .line 425
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 426
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 424
    :cond_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 430
    .end local v9    # "i":I
    :cond_76
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v2, :cond_cc

    .line 431
    sget-wide v9, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 433
    .local v9, "tempTime":J
    sget-wide v2, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    const-wide/16 v4, 0x226

    sub-long v4, v9, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_b2

    .line 434
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 435
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-wide v3, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v3, v9, v3

    long-to-float v3, v3

    const v4, 0x44098000    # 550.0f

    div-float/2addr v3, v4

    mul-float v5, p3, v3

    sget-wide v6, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v6, v9, v6

    long-to-float v3, v6

    div-float/2addr v3, v4

    mul-float v6, p3, v3

    move-object v3, p1

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_cc

    .line 439
    :cond_b2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 440
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 445
    .end local v9    # "tempTime":J
    :cond_cc
    :goto_cc
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v2, :cond_127

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v2, v3, :cond_127

    .line 446
    sget-wide v9, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 448
    .restart local v9    # "tempTime":J
    sget-wide v2, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    const-wide/16 v4, 0x7d0

    sub-long v4, v9, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_10d

    .line 449
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 450
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-wide v3, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v3, v9, v3

    long-to-float v3, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v4

    mul-float v5, p3, v3

    sget-wide v6, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v6, v9, v6

    long-to-float v3, v6

    div-float/2addr v3, v4

    mul-float v6, p3, v3

    move-object v3, p1

    move v4, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_127

    .line 454
    :cond_10d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 455
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 460
    .end local v9    # "tempTime":J
    :cond_127
    :goto_127
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 461
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 462
    return-void
.end method

.method private final readCities(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/map/MapCities$Config;
    .registers 6
    .param p1, "nFileName"    # Ljava/lang/String;

    .line 642
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 643
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    const-string v2, "cities"

    const-class v3, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 645
    const-class v1, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cities/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    return-object v1
.end method


# virtual methods
.method public final buildCities()V
    .registers 9

    .line 506
    const-string v0, "cities.json"

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_110

    .line 511
    .local v1, "saveGameCities":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;>;"
    :try_start_7
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->readCities(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    move-result-object v2

    .line 512
    .local v2, "citiesData":Laoc/kingdoms/lukasz/map/map/MapCities$Config;
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/map/MapCities$Config;->cities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 513
    .local v4, "e":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_21} :catch_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_110

    .line 514
    nop

    .end local v4    # "e":Ljava/lang/Object;
    goto :goto_11

    .line 516
    :cond_23
    const/4 v2, 0x0

    .line 519
    goto :goto_29

    .line 517
    .end local v2    # "citiesData":Laoc/kingdoms/lukasz/map/map/MapCities$Config;
    :catch_25
    move-exception v2

    .line 518
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_26
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 521
    .end local v2    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_29
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_2e
    if-ge v2, v3, :cond_ca

    .line 522
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_31
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_c6

    .line 523
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    if-gt v5, v6, :cond_c2

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    if-lt v5, v6, :cond_c2

    .line 524
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    if-gt v5, v6, :cond_c2

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    if-lt v5, v6, :cond_c2

    .line 526
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v5, v5, v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    invoke-static {v4, v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 527
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iput v4, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    .line 528
    goto :goto_c6

    .line 522
    :cond_c2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_31

    .line 521
    .end local v4    # "j":I
    :cond_c6
    :goto_c6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2e

    .line 534
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_ca
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v2

    .line 535
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    const-string v4, "cities"

    const-class v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cities/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 538
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 540
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v4, "Cities Generated!"

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_10f} :catch_110

    .line 541
    return-void

    .line 542
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "saveGameCities":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;>;"
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    :catch_110
    move-exception v0

    .line 543
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 546
    .end local v0    # "ex":Ljava/lang/Exception;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "Cities Generation Error!"

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 547
    return-void
.end method

.method public final buildProvinceNames()V
    .registers 5

    .line 649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 650
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_23

    .line 651
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    .line 649
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 654
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public final drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 75
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1b

    .line 78
    :cond_12
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_1b

    .line 79
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 83
    :cond_1b
    :goto_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    if-lez v0, :cond_5f

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3a

    .line 86
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_5f

    .line 89
    :cond_3a
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_5f

    .line 90
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_5f

    .line 95
    :cond_44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_56

    .line 96
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_5f

    .line 99
    :cond_56
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_5f

    .line 100
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 105
    :cond_5f
    :goto_5f
    return-void
.end method

.method public final drawCities_HighAllTheTime(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 108
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 109
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1b

    .line 112
    :cond_12
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_1b

    .line 113
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 117
    :cond_1b
    :goto_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 118
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_36

    .line 121
    :cond_2d
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_36

    .line 122
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 125
    :cond_36
    :goto_36
    return-void
.end method

.method public final drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 214
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 215
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1b

    .line 218
    :cond_12
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_1b

    .line 219
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 223
    :cond_1b
    :goto_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 224
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_36

    .line 227
    :cond_2d
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_36

    .line 228
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 231
    :cond_36
    :goto_36
    return-void
.end method

.method public final drawCities_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 234
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    .line 235
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 238
    goto :goto_1b

    nop

    nop

    nop

    .line 239
    nop

    nop

    nop

    nop

    nop

    .line 243
    :cond_1b
    :goto_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 244
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_36

    .line 247
    :cond_2d
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_36

    .line 248
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 251
    :cond_36
    :goto_36
    return-void
.end method

.method public final drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 384
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    if-lez v0, :cond_8c

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    if-ge v0, v1, :cond_49

    .line 386
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    .line 388
    .local v1, "provinceID":I
    if-ltz v1, :cond_46

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 389
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlagWar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 385
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 394
    .end local v0    # "i":I
    .end local v1    # "provinceID":I
    :cond_49
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4a
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_68

    .line 395
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_65

    .line 396
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 394
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 400
    .end local v0    # "i":I
    :cond_68
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_69
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_87

    .line 401
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_84

    .line 402
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 400
    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 406
    .end local v0    # "i":I
    :cond_87
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 408
    :cond_8c
    return-void
.end method

.method public final drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_21

    .line 369
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 370
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 368
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_42

    .line 375
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 376
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    .line 374
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 380
    .end local v0    # "i":I
    :cond_42
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 381
    return-void
.end method

.method public final getProvinceCityTitle(I)Ljava/lang/String;
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 805
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_d

    .line 806
    const-string v0, ""

    return-object v0

    .line 809
    :cond_d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_1e

    .line 810
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "CapitalCity"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 813
    :cond_1e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-static {v0}, Lteam/rainfall/citylow/CityLowConfig;->getLevel(F)I

    move-result v0

    if-gez v0, :cond_2e

    goto :goto_5b

    :cond_2e
    const/4 v1, 0x3

    if-ge v0, v1, :cond_52

    const/4 v1, 0x2

    if-ge v0, v1, :cond_49

    const/4 v1, 0x1

    if-ge v0, v1, :cond_40

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Town"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "City"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MajorCity"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_5b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_MAJOR_CITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_75

    .line 814
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MajorCity"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 817
    :cond_75
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_CITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8f

    .line 818
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "City"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 821
    :cond_8f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_TOWN:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a9

    .line 822
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Town"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 825
    :cond_a9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_VILLAGE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c3

    .line 826
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 830
    :cond_c3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "SmallVillage"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadCities()V
    .registers 16

    .line 550
    const-string v0, "cities/"

    const-string v1, "map/"

    const/4 v2, 0x0

    .line 553
    .local v2, "generateCities":Z
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cities.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 555
    .local v3, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 556
    .local v4, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 558
    .local v5, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    .line 559
    .local v7, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    .line 561
    .local v8, "oCityData":Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;
    iget v9, v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    if-ltz v9, :cond_7c

    iget v9, v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_7c

    .line 562
    iget v9, v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    new-instance v10, Laoc/kingdoms/lukasz/map/map/City;

    iget-object v11, v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->Name:Ljava/lang/String;

    iget v12, v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v12, v12, v13

    iget v13, v8, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v13, v13, v14

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Laoc/kingdoms/lukasz/map/map/City;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addCity(Laoc/kingdoms/lukasz/map/map/City;)V

    .line 564
    .end local v7    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v8    # "oCityData":Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;
    :cond_7c
    goto :goto_3b

    .line 566
    :cond_7d
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_80} :catch_82

    .line 567
    nop

    .line 571
    .end local v3    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v5    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_87

    .line 568
    :catch_82
    move-exception v3

    .line 569
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 570
    const/4 v2, 0x1

    .line 610
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_87
    :try_start_87
    const-string v3, "game/random/RandomProvinceNames.txt"

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 611
    .local v3, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "tempSplit":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_98
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_b7

    .line 614
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v6

    if-nez v6, :cond_b4

    .line 615
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    array-length v7, v4

    rem-int v7, v5, v7

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V
    :try_end_b4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_87 .. :try_end_b4} :catch_b9

    .line 613
    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    .line 619
    .end local v5    # "i":I
    :cond_b7
    nop

    .line 622
    .end local v3    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "tempSplit":[Ljava/lang/String;
    goto :goto_bd

    .line 620
    :catch_b9
    move-exception v3

    .line 621
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 625
    .end local v3    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_bd
    if-eqz v2, :cond_c3

    .line 626
    :try_start_bf
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->buildCities()V

    goto :goto_f5

    .line 629
    :cond_c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "build_cities.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 630
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 632
    .local v1, "generate":Z
    if-eqz v1, :cond_f5

    .line 633
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->buildCities()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_f5} :catch_f6

    .line 638
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "generate":Z
    :cond_f5
    :goto_f5
    goto :goto_fa

    .line 636
    :catch_f6
    move-exception v0

    .line 637
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 639
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_fa
    return-void
.end method

.method public final loadCitiesImages()V
    .registers 6

    .line 467
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_LOAD_CITIES_2:Z

    if-nez v0, :cond_d

    goto :goto_24

    .line 477
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    const-string v1, "gfx/cities/0.png"

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    const-string v1, "gfx/cities/fort/0.png"

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 468
    :cond_24
    :goto_24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->numOfCitiesImages:I

    const-string v2, ".png"

    if-ge v0, v1, :cond_50

    .line 469
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gfx/cities/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 472
    .end local v0    # "i":I
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_51
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->numOfCitiesImages:I

    if-ge v0, v1, :cond_7a

    .line 473
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gfx/cities/fort/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 480
    .end local v0    # "i":I
    :cond_7a
    :goto_7a
    return-void
.end method

.method public final readSettings()V
    .registers 5

    .line 483
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 484
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gfx/cities/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v2, :cond_17

    const-string v2, "Config.json"

    goto :goto_19

    :cond_17
    const-string v2, "ConfigLow.json"

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 485
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    .line 487
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale:[F

    array-length v3, v3

    new-array v3, v3, [F

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    .line 488
    return-void
.end method

.method public final updateCapitalCityName()V
    .registers 3

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    if-eq v0, v1, :cond_1d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    if-ne v0, v1, :cond_15

    goto :goto_1d

    .line 199
    :cond_15
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    goto :goto_24

    .line 180
    :cond_1d
    :goto_1d
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    .line 209
    :goto_24
    return-void
.end method

.method public final updateCities()V
    .registers 4

    .line 836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 837
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 840
    .end local v0    # "i":I
    :cond_12
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_13
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 841
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCities(I)V

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 843
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public final updateCities(I)V
    .registers 12
    .param p1, "nCivID"    # I

    .line 847
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PERCENTAGE_OF_CITIES_ON_MAP:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 849
    .local v0, "tempNumOfCities":I
    const/4 v1, 0x1

    .line 851
    .local v1, "tMaxPopulation":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v2, "tempProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_7d

    .line 854
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    .line 857
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    if-ge v1, v4, :cond_7a

    .line 858
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    move v1, v4

    .line 853
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 862
    .end local v3    # "i":I
    :cond_7d
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7e
    const/4 v4, 0x1

    if-ge v3, v0, :cond_e4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e4

    .line 863
    const/4 v5, 0x0

    .line 864
    .local v5, "largestProvinceID":I
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v6

    .line 866
    .local v6, "largestPopulation":I
    const/4 v7, 0x1

    .local v7, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_9f
    if-ge v7, v8, :cond_cc

    .line 867
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    if-ge v6, v9, :cond_c9

    .line 868
    move v5, v7

    .line 869
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    move v6, v9

    .line 866
    :cond_c9
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 873
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_cc
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    .line 874
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 862
    nop

    .end local v5    # "largestProvinceID":I
    .end local v6    # "largestPopulation":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 877
    .end local v3    # "j":I
    :cond_e4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    if-ltz v3, :cond_fd

    .line 878
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    .line 881
    :cond_fd
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_100} :catch_101

    .line 884
    .end local v0    # "tempNumOfCities":I
    .end local v1    # "tMaxPopulation":I
    .end local v2    # "tempProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_105

    .line 882
    :catch_101
    move-exception v0

    .line 883
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 885
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_105
    return-void
.end method

.method public final updateCitiesInGame()V
    .registers 3

    .line 139
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CITIES:Z

    if-eqz v0, :cond_1d

    .line 140
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 141
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    goto :goto_24

    .line 149
    :cond_15
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    goto :goto_24

    .line 158
    :cond_1d
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    .line 165
    :goto_24
    return-void
.end method

.method public final updateCitiesScale_CurrentScale()V
    .registers 5

    .line 60
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_22

    .line 61
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale:[F

    aget v2, v2, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    aput v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 63
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public final updateNameToNewTrueOwner(IZ)V
    .registers 11
    .param p1, "iProvinceID"    # I
    .param p2, "updateNameNow"    # Z

    .line 660
    const-string v0, "game/rulersRandom/link/"

    const-string v1, "="

    const-string v2, "game/cities/"

    const-string v3, ".txt"

    :try_start_8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eqz v4, :cond_218

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_218

    .line 664
    :cond_1e
    const-string v4, ""

    .line 666
    .local v4, "sCities":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 668
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 669
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_17b

    .line 670
    :cond_8b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 672
    .restart local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 673
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_17b

    .line 674
    :cond_e6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 676
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, "nFile":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 680
    .local v2, "fileList2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 684
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "fileList2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "nFile":Ljava/lang/String;
    :cond_17b
    :goto_17b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1e9

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1e9

    .line 686
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .end local v4    # "sCities":Ljava/lang/String;
    .local v0, "sCities":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 689
    .local v3, "tIndex":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    if-gez v3, :cond_1cd

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1ce

    :cond_1cd
    move v6, v3

    :goto_1ce
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 691
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_1e8

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1e8

    .line 692
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapCities$8;

    invoke-direct {v1, p0, v0, p1}, Laoc/kingdoms/lukasz/map/map/MapCities$8;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e7} :catch_219

    .line 699
    return-void

    .line 704
    .end local v3    # "tIndex":I
    :cond_1e8
    move-object v4, v0

    .end local v0    # "sCities":Ljava/lang/String;
    .restart local v4    # "sCities":Ljava/lang/String;
    :cond_1e9
    if-eqz p2, :cond_1fc

    .line 706
    :try_start_1eb
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/City;->setCityNameOriginal(I)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1f6} :catch_1f7

    goto :goto_1fb

    .line 707
    :catch_1f7
    move-exception v0

    .line 708
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1f8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 709
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1fb
    goto :goto_217

    .line 712
    :cond_1fc
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCityName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/map/map/MapCities$9;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_217} :catch_219

    .line 725
    .end local v4    # "sCities":Ljava/lang/String;
    :goto_217
    goto :goto_21d

    .line 661
    :cond_218
    :goto_218
    return-void

    .line 723
    :catch_219
    move-exception v0

    .line 724
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 726
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21d
    return-void
.end method

.method public final updateNameToNewTrueOwner_Civ(IZ)V
    .registers 12
    .param p1, "iCivID"    # I
    .param p2, "updateNameNow"    # Z

    .line 730
    const-string v0, "game/rulersRandom/link/"

    const-string v1, "="

    const-string v2, "game/cities/"

    const-string v3, ".txt"

    if-eqz p1, :cond_241

    :try_start_a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_241

    .line 734
    :cond_16
    const-string v4, ""

    .line 736
    .local v4, "sCities":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 738
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 739
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_143

    .line 740
    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 742
    .restart local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 743
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_143

    .line 744
    :cond_be
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_143

    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 746
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 748
    .local v5, "nFile":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_143

    .line 749
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 750
    .local v2, "fileList2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 754
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "fileList2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "nFile":Ljava/lang/String;
    :cond_143
    :goto_143
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23b

    .line 755
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_23b

    .line 756
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_237

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1e7

    .line 758
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "tempCities":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/16 v7, 0xa

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 761
    .local v3, "tIndex":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    if-gez v3, :cond_1c2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1c3

    :cond_1c2
    move v8, v3

    :goto_1c3
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 763
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_1e7

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1e7

    .line 764
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v6, Laoc/kingdoms/lukasz/map/map/MapCities$10;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-direct {v6, p0, v2, v7}, Laoc/kingdoms/lukasz/map/map/MapCities$10;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e6} :catch_23c

    .line 771
    goto :goto_237

    .line 775
    .end local v2    # "tempCities":Ljava/lang/String;
    .end local v3    # "tIndex":I
    :cond_1e7
    if-eqz p2, :cond_20a

    .line 777
    :try_start_1e9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/map/City;->setCityNameOriginal(I)V
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_204} :catch_205

    goto :goto_209

    .line 778
    :catch_205
    move-exception v2

    .line 779
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_206
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 780
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_209
    goto :goto_237

    .line 783
    :cond_20a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v3, Laoc/kingdoms/lukasz/map/map/MapCities$11;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCityName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-direct {v3, p0, v5, v6}, Laoc/kingdoms/lukasz/map/map/MapCities$11;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_237} :catch_23c

    .line 755
    :cond_237
    :goto_237
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14a

    .line 799
    .end local v0    # "i":I
    .end local v4    # "sCities":Ljava/lang/String;
    :cond_23b
    goto :goto_240

    .line 797
    :catch_23c
    move-exception v0

    .line 798
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 800
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_240
    return-void

    .line 731
    :cond_241
    :goto_241
    return-void
.end method
