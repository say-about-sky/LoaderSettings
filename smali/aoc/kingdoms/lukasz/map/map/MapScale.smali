.class public Laoc/kingdoms/lukasz/map/map/MapScale;
.super Ljava/lang/Object;
.source "MapScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;
    }
.end annotation


# static fields
.field public static final MAXSCALE:F = 20.0f

.field public static MINSCALE:F = 0.0f

.field private static final REQUIRED_TIME_TO_RESET_SCALE:S = 0xafs

.field public static STANDARD_SCALE:F

.field protected static animation_TIME_TO_END:I

.field public static defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;


# instance fields
.field protected animation_StartingScale:F

.field protected animation_TIME_STARTED:J

.field private changeCurrentScaleByX:F

.field private currentScale:F

.field public definedScale:I

.field private definedScaleBeforeReset:I

.field public definedScalesLength:I

.field private enableScaling:Z

.field private fScaleAnimation_PercX:F

.field private fScaleAnimation_PercY:F

.field private fScaleBeforeReset:F

.field private iStartScaleMapPosX:I

.field private iStartScaleMapPosY:I

.field private iStartScalePosX:I

.field private iStartScalePosX2:I

.field private iStartScalePosY:I

.field private iStartScalePosY2:I

.field private newScale:F

.field public scaleByYAxis:Z

.field private scaleChangeByTouch:Z

.field public scaleMode:Z

.field public startScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const v0, 0x3c23d70a    # 0.01f

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    .line 37
    const/16 v0, 0x64

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    .line 104
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    .line 21
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    .line 23
    const/4 v2, 0x0

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->enableScaling:Z

    .line 31
    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    .line 38
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    .line 39
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    .line 42
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    .line 43
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    .line 91
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 92
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    .line 95
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I

    .line 261
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    .line 263
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    return-void
.end method

.method private getDefinedScale()F
    .registers 3

    .line 138
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    aget v0, v0, v1
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 139
    :catch_9
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method private final resetScaleAnimation()V
    .registers 3

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    .line 85
    return-void
.end method

.method private final updateScale()V
    .registers 8

    .line 65
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    .line 67
    .local v0, "oldCurrentScale":F
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    sub-long/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v2, v2, v3

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 69
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    sub-long/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4f

    .line 70
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    if-nez v1, :cond_47

    :cond_35
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    const v2, 0x3f7e147b    # 0.9925f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4c

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    const v2, 0x3f80f5c3    # 1.0075f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4c

    .line 71
    :cond_47
    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 74
    :cond_4c
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    .line 77
    :cond_4f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 78
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public getCurrentScale()F
    .registers 2

    .line 372
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    return v0
.end method

.method public getEnableScaling()Z
    .registers 2

    .line 388
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->enableScaling:Z

    return v0
.end method

.method public getScaleMode()Z
    .registers 2

    .line 396
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleMode:Z

    return v0
.end method

.method public final getStartScalePosY()I
    .registers 2

    .line 400
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    return v0
.end method

.method public final initDefinedScales()V
    .registers 7

    .line 110
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 111
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scales/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v2, :cond_33

    const-string v2, "DefinedScales.json"

    goto :goto_35

    :cond_33
    const-string v2, "DefinedScales_Low.json"

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 112
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    sput-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    .line 114
    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 115
    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    .line 117
    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I

    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v3, v3

    .local v3, "iSize":I
    :goto_63
    if-ge v2, v3, :cond_7c

    .line 120
    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    aget v4, v4, v2

    sget v5, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_79

    .line 121
    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget v5, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    aput v5, v4, v2

    .line 119
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 125
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_7c
    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9e

    .line 126
    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    aput v4, v2, v3

    .line 129
    :cond_9e
    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a5} :catch_a6

    .line 133
    .end local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_af

    .line 130
    :catch_a6
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Error loading: DefinedScales"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_af
    return-void
.end method

.method public final resetScaleInfo()V
    .registers 2

    .line 326
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetStartScalePosition()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleMode:Z

    .line 328
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    .line 329
    return-void
.end method

.method public final resetScaleOfMap(J)V
    .registers 9
    .param p1, "nActionDownTime"    # J

    .line 220
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->ENABLE_DOUBLE_CLICK_TO_RESET_MAP_SCALE:Z

    if-nez v0, :cond_c

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_87

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_87

    .line 221
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->getActionDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0xaf

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_87

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_87

    .line 222
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    .line 226
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    .line 228
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_52

    .line 229
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    .line 231
    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    .line 232
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    goto :goto_67

    .line 235
    :cond_52
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    .line 237
    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    .line 238
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    .line 239
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 242
    :goto_67
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    .line 243
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->updateAnimationScale_CenterToXY(II)V

    .line 245
    const/16 v1, 0x64

    sput v1, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    .line 247
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    .line 248
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    .line 250
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    .line 255
    :cond_87
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setActionDownTime(J)V

    .line 256
    return-void
.end method

.method public final resetStartScalePosition()V
    .registers 2

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    .line 323
    return-void
.end method

.method public final scaleTheMap(IIFF)V
    .registers 10
    .param p1, "nY"    # I
    .param p2, "nY2"    # I
    .param p3, "fCenterX"    # F
    .param p4, "fCenterY"    # F

    .line 295
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 296
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    .line 297
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    .line 298
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    .line 301
    :cond_1b
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    const/high16 v1, 0x43160000    # 150.0f

    const/4 v2, 0x1

    if-eq v0, p1, :cond_42

    .line 302
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    if-ge p1, p2, :cond_2a

    sub-int/2addr v3, p1

    goto :goto_2c

    :cond_2a
    sub-int v3, p1, v3

    :goto_2c
    int-to-float v3, v3

    div-float/2addr v3, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    invoke-virtual {p0, v0, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->setNewCurrentScaleByTouch(FFF)V

    .line 303
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    .line 304
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    .line 305
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    .line 306
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    .line 309
    :cond_42
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    if-eq v0, p2, :cond_66

    .line 310
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    if-le p1, p2, :cond_4e

    sub-int/2addr v3, p2

    goto :goto_50

    :cond_4e
    sub-int v3, p2, v3

    :goto_50
    int-to-float v3, v3

    div-float/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    invoke-virtual {p0, v0, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->setNewCurrentScaleByTouch(FFF)V

    .line 311
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    .line 312
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    .line 313
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    .line 314
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    .line 316
    :cond_66
    return-void
.end method

.method public final scaleTheMap(IIII)V
    .registers 8
    .param p1, "nX"    # I
    .param p2, "nX2"    # I
    .param p3, "nY"    # I
    .param p4, "nY2"    # I

    .line 287
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1a

    .line 288
    add-int v0, p1, p2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-int v2, p3, p4

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, p3, p4, v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleTheMap(IIFF)V

    goto :goto_2d

    .line 290
    :cond_1a
    add-int v0, p1, p2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-int v2, p3, p4

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleTheMap(IIFF)V

    .line 292
    :goto_2d
    return-void
.end method

.method public final scrollScale(I)V
    .registers 6
    .param p1, "changeScaleByX"    # I

    .line 145
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_90

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarios_NewGame()Z

    move-result v0

    if-nez v0, :cond_90

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_90

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_90

    .line 149
    :cond_21
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_28

    .line 150
    return-void

    .line 159
    :cond_28
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 168
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    const/4 v1, 0x0

    if-gez v0, :cond_35

    .line 169
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    goto :goto_47

    .line 170
    :cond_35
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v2, v2

    if-lt v0, v2, :cond_47

    .line 171
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 174
    :cond_47
    :goto_47
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getDefinedScale()F

    move-result v0

    .line 176
    .local v0, "newMapScale":F
    const v2, 0x3f7eb852    # 0.995f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_5b

    const v2, 0x3f80a3d7    # 1.005f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_5b

    .line 177
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    .line 180
    :cond_5b
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_8f

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8f

    .line 182
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    .line 184
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    .line 186
    const/16 v1, 0x7d

    sput v1, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    .line 188
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    .line 189
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    sub-float v1, v0, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    .line 191
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    .line 193
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    .line 194
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->updateAnimationScale_CenterToXY(II)V

    .line 197
    :cond_8f
    return-void

    .line 146
    .end local v0    # "newMapScale":F
    :cond_90
    :goto_90
    return-void
.end method

.method public scrollScaleChange(Z)F
    .registers 5
    .param p1, "zoomIN"    # Z

    .line 200
    if-eqz p1, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_7

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 202
    .local v0, "zoom":F
    :goto_7
    if-eqz p1, :cond_2f

    .line 203
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_19

    .line 204
    const v1, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, v0

    return v1

    .line 206
    :cond_19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_29

    .line 207
    const v1, 0x3ca3d70a    # 0.02f

    mul-float v1, v1, v0

    return v1

    .line 210
    :cond_29
    const v1, 0x3c23d70a    # 0.01f

    mul-float v1, v1, v0

    return v1

    .line 214
    :cond_2f
    const v1, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v0

    return v1
.end method

.method public setCurrentScale(F)V
    .registers 3
    .param p1, "currentScale"    # F

    .line 376
    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_9

    .line 377
    const/high16 p1, 0x41a00000    # 20.0f

    goto :goto_11

    .line 378
    :cond_9
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_11

    .line 379
    sget p1, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    .line 382
    :cond_11
    :goto_11
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    .line 384
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    .line 385
    return-void
.end method

.method public setEnableScaling(Z)V
    .registers 2
    .param p1, "enableScaling"    # Z

    .line 392
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->enableScaling:Z

    .line 393
    return-void
.end method

.method public final setNewCurrentScaleByTouch(FFF)V
    .registers 11
    .param p1, "nCurrentScale"    # F
    .param p2, "fCenterX"    # F
    .param p3, "fCenterY"    # F

    .line 332
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_9

    .line 333
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    goto :goto_16

    .line 334
    :cond_9
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_14

    .line 335
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    goto :goto_16

    .line 337
    :cond_14
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    .line 340
    :goto_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    .line 342
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b8

    .line 343
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_a9

    .line 347
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    div-float v0, p2, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    .line 348
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    div-float v0, p3, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    .line 350
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_73

    .line 351
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 352
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto :goto_a3

    .line 355
    :cond_73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 356
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 359
    :goto_a3
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    .line 360
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    .line 363
    :cond_a9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapY()V

    .line 364
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapX()V

    .line 365
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->updateSecondSideOfMap()V

    .line 367
    :cond_b8
    return-void
.end method

.method public final startScaleTheMap(IIII)V
    .registers 9
    .param p1, "nX"    # I
    .param p2, "nX2"    # I
    .param p3, "nY"    # I
    .param p4, "nY2"    # I

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleMode:Z

    .line 273
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1f

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    .line 276
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    .line 277
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    goto :goto_25

    .line 279
    :cond_1f
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    .line 281
    iput p3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    .line 282
    iput p4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    .line 284
    :goto_25
    return-void
.end method

.method public final update()V
    .registers 3

    .line 59
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 60
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->updateScale()V

    .line 62
    :cond_a
    return-void
.end method

.method protected final updateAnimationScale_CenterToXY(II)V
    .registers 5
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 46
    int-to-float v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    .line 47
    int-to-float v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    .line 48
    return-void
.end method
