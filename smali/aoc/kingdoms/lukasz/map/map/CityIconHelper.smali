.class public final Laoc/kingdoms/lukasz/map/map/CityIconHelper;
.super Ljava/lang/Object;
.source "CityIconHelper.java"


# static fields
.field private static cityNameScale:F

.field private static configLoaded:Z

.field private static iconScales:[F

.field public static icons:Ljava/util/ArrayList;

.field private static minMapScales:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureConfig()V
    .registers 5

    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->configLoaded:Z

    if-nez v0, :cond_c6

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->configLoaded:Z

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_c8

    sput-object v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->iconScales:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_d8

    sput-object v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->minMapScales:[F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->cityNameScale:F

    :try_start_1b
    const-string v0, "rainfall/CityLow.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_c6

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->iconScales:[F

    const/4 v0, 0x0

    aget v3, v2, v0

    const-string v4, "scale_capital"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    aget v3, v2, v0

    const-string v4, "scale_major_city"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    aget v3, v2, v0

    const-string v4, "scale_city"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x3

    aget v3, v2, v0

    const-string v4, "scale_town"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x4

    aget v3, v2, v0

    const-string v4, "scale_village"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x5

    aget v3, v2, v0

    const-string v4, "scale_small_village"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->minMapScales:[F

    const/4 v0, 0x0

    aget v3, v2, v0

    const-string v4, "min_map_scale_capital"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    aget v3, v2, v0

    const-string v4, "min_map_scale_major_city"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    aget v3, v2, v0

    const-string v4, "min_map_scale_city"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x3

    aget v3, v2, v0

    const-string v4, "min_map_scale_town"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x4

    aget v3, v2, v0

    const-string v4, "min_map_scale_village"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x5

    aget v3, v2, v0

    const-string v4, "min_map_scale_small_village"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    sget v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->cityNameScale:F

    const-string v2, "city_name_scale"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->cityNameScale:F
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v0

    :cond_c6
    :goto_c6
    return-void

    nop

    :array_c8
    .array-data 4
        0x40000000    # 2.0f
        0x3ff33333    # 1.9f
        0x3fe66666    # 1.8f
        0x3fd9999a    # 1.7f
        0x3fcccccd    # 1.6f
        0x3fc00000    # 1.5f
    .end array-data

    :array_d8
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f99999a    # 1.2f
        0x3fd9999a    # 1.7f
    .end array-data
.end method

.method public static ensureIcons()V
    .registers 6

    sget-object v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->icons:Ljava/util/ArrayList;

    if-nez v0, :cond_end

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->icons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_neutral
    const/4 v2, 0x6

    if-ge v1, v2, :cond_neutral

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/cities2/city_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_neutral

    :cond_neutral
    const/4 v1, 0x0

    :goto_own
    const/4 v2, 0x6

    if-ge v1, v2, :cond_own

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/cities2/city2_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->loadCityIconSafe(Ljava/lang/String;I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_own

    :cond_own
    const/4 v1, 0x0

    :goto_ally
    const/4 v2, 0x6

    if-ge v1, v2, :cond_ally

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/cities2/city3_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->loadCityIconSafe(Ljava/lang/String;I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_ally

    :cond_ally
    const/4 v1, 0x0

    :goto_enemy
    const/4 v2, 0x6

    if-ge v1, v2, :cond_enemy

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/cities2/city4_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->loadCityIconSafe(Ljava/lang/String;I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_enemy

    :cond_enemy
    :cond_end
    return-void
.end method

.method private static loadCityIconSafe(Ljava/lang/String;I)Laoc/kingdoms/lukasz/textures/Image;
    .registers 4

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    if-eqz v0, :fallback

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :fallback

    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    if-eqz v0, :fallback

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :fallback
    sget-object v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->icons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method

.method public static getIconOffset(I)I
    .registers 5
    .param p0, "nProvinceID"

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_neutral

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_neutral

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v2, :cond_neutral

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_own

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-nez v3, :cond_enemy

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v3

    if-nez v3, :cond_ally

    :cond_neutral
    const/4 v0, 0x0

    return v0

    :cond_own
    const/4 v0, 0x6

    return v0

    :cond_ally
    const/16 v0, 0xc

    return v0

    :cond_enemy
    const/16 v0, 0x12

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public static getCityNameScale()F
    .registers 1

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->ensureConfig()V

    sget v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->cityNameScale:F

    return v0
.end method

.method public static getIconForCity(ILaoc/kingdoms/lukasz/map/map/City;)Laoc/kingdoms/lukasz/textures/Image;
    .registers 5

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->ensureIcons()V

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getIconIndex(ILaoc/kingdoms/lukasz/map/map/City;)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getIconOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->icons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method

.method public static getIconIndex(ILaoc/kingdoms/lukasz/map/map/City;)I
    .registers 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-static {v1}, Lteam/rainfall/citylow/CityLowConfig;->getLevel(F)I

    move-result v1

    if-gez v1, :cond_18

    goto :goto_29

    :cond_18
    const/4 v2, 0x3

    if-ge v1, v2, :cond_27

    const/4 v2, 0x2

    if-ge v1, v2, :cond_25

    const/4 v2, 0x1

    if-ge v1, v2, :cond_23

    const/4 v0, 0x4

    return v0

    :cond_23
    const/4 v0, 0x3

    return v0

    :cond_25
    const/4 v0, 0x2

    return v0

    :cond_27
    const/4 v0, 0x1

    return v0

    :goto_29
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_MAJOR_CITY:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_38

    const/4 v0, 0x1

    return v0

    :cond_38
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_CITY:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_43

    const/4 v0, 0x2

    return v0

    :cond_43
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_TOWN:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_4e

    const/4 v0, 0x3

    return v0

    :cond_4e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_VILLAGE:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_59

    const/4 v0, 0x4

    return v0

    :cond_59
    const/4 v0, 0x5

    return v0
.end method

.method public static getScaleForCity(ILaoc/kingdoms/lukasz/map/map/City;)F
    .registers 4

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->ensureConfig()V

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getIconIndex(ILaoc/kingdoms/lukasz/map/map/City;)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->iconScales:[F

    aget v0, v1, v0

    return v0
.end method

.method public static shouldDrawCity(ILaoc/kingdoms/lukasz/map/map/City;)Z
    .registers 4

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->ensureConfig()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ne v1, p0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getIconIndex(ILaoc/kingdoms/lukasz/map/map/City;)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->minMapScales:[F

    aget v0, v1, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method
