.class public Laoc/kingdoms/lukasz/map/province/ProvinceDraw;
.super Ljava/lang/Object;
.source "ProvinceDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;,
        Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;,
        Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;
    }
.end annotation


# static fields
.field public static FRAME_ID:I = 0x0

.field public static final PROVINCE_ALPHA_TERRAIN:F = 0.55f

.field public static PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

.field public static biggestCitiesLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;",
            ">;"
        }
    .end annotation
.end field

.field public static diplomacyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;",
            ">;"
        }
    .end annotation
.end field

.field public static drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

.field public static drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

.field public static drawProvincesCiv_HoveredFlagID:I

.field public static iBiggestCitiesLinesSize:I

.field public static iDiplomacyLinesSize:I

.field public static iProvinceDotsSize:I

.field public static iSiegeLinesSize:I

.field public static joinType:Lspace/earlygrey/shapedrawer/JoinType;

.field public static joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

.field public static lineWidth:F

.field public static oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

.field public static progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBar2:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;

.field public static provinceDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;",
            ">;"
        }
    .end annotation
.end field

.field public static siegeLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 72
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v2, 0x3e20a0a1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const v4, 0x3efafafb

    const v5, 0x3f25a5a6

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb4b4b5

    const v4, 0x3f4dcdce

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar2:Lcom/badlogic/gdx/graphics/Color;

    .line 1300
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 1533
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f48c8c9

    const v6, 0x3f52d2d3

    invoke-direct {v1, v6, v6, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    .line 1534
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f66e6e7

    invoke-direct {v1, v5, v5, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 1536
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f6dedee

    const v6, 0x3f20a0a1

    const v7, 0x3f169697

    invoke-direct {v1, v5, v6, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    .line 1537
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3e48c8c9

    invoke-direct {v1, v6, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    .line 1538
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3edcdcdd

    const v8, 0x3f048485

    const v9, 0x3f3ebebf

    invoke-direct {v1, v8, v9, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 1539
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    invoke-direct {v1, v8, v5, v8, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    .line 1541
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f6bebec

    invoke-direct {v1, v8, v6, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    .line 1542
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v8, v8, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    .line 1543
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f73f3f4

    const v10, 0x3f5fdfe0

    const v11, 0x3e5cdcdd

    invoke-direct {v1, v11, v4, v10, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    .line 1544
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v4, v4, v8, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

    .line 1545
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e70f0f1

    invoke-direct {v1, v9, v4, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

    .line 1546
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3ef0f0f1

    invoke-direct {v1, v7, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

    .line 1547
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3db0b0b1

    const v4, 0x3f0a8a8b

    invoke-direct {v1, v2, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    .line 1548
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e74f4f5

    const v4, 0x3f3fbfc0

    const v6, 0x3f008081

    invoke-direct {v1, v6, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    .line 1549
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

    .line 2373
    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2374
    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2376
    sput v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2546
    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$36;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$36;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    .line 2587
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    .line 2715
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    .line 2716
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    .line 2785
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    .line 2786
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2926
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    .line 2927
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I

    .line 3021
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    .line 3022
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V
    .registers 5
    .param p0, "iProvinceA"    # I
    .param p1, "iProvinceB"    # I
    .param p2, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 2931
    if-ltz p0, :cond_73

    if-gez p1, :cond_5

    goto :goto_73

    .line 2935
    :cond_5
    :try_start_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6d

    .line 2936
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2d
    if-ltz v0, :cond_4f

    .line 2937
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->getFromProvinceID()I

    move-result v1

    if-ne v1, p0, :cond_4c

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->getToProvinceLastID()I

    move-result v1

    if-ne v1, p1, :cond_4c

    .line 2938
    return-void

    .line 2936
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 2942
    .end local v0    # "i":I
    :cond_4f
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$41;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-direct {v0, v1, p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$41;-><init>(IIILcom/badlogic/gdx/graphics/Color;)V

    .line 2958
    .local v0, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iRouteSize:I

    if-lez v1, :cond_65

    .line 2959
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2962
    :cond_65
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6d} :catch_6e

    .line 2966
    .end local v0    # "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    :cond_6d
    goto :goto_72

    .line 2964
    :catch_6e
    move-exception v0

    .line 2965
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2967
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_72
    return-void

    .line 2932
    :cond_73
    :goto_73
    return-void
.end method

.method public static final addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V
    .registers 5
    .param p0, "iProvinceA"    # I
    .param p1, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 3026
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 3027
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    if-ne v1, p0, :cond_28

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    const v2, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_28

    .line 3028
    return-void

    .line 3026
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3032
    .end local v0    # "i":I
    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    invoke-direct {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;-><init>(ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3033
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 3036
    goto :goto_42

    .line 3034
    :catch_3e
    move-exception v0

    .line 3035
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3037
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method public static final addProvinceDot_Economy(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 3042
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_ECONOMY:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3043
    return-void
.end method

.method public static final addProvinceDot_GrowthRate(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 3054
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3055
    return-void
.end method

.method public static final addProvinceDot_Infrastructure(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 3058
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3059
    return-void
.end method

.method public static final addProvinceDot_Manpower(I)V
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 3050
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3051
    return-void
.end method

.method public static final addProvinceDot_TaxEfficiency(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 3046
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3047
    return-void
.end method

.method public static final buildBiggestCitiesLines(I)V
    .registers 6
    .param p0, "iCivID"    # I

    .line 2791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2792
    .local v0, "lCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2794
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$39;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildBiggestCitiesLines"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$39;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 2804
    return-void
.end method

.method public static final buildBiggestCitiesLines(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2807
    .local p0, "iCivID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2808
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2810
    const/4 v0, 0x0

    .local v0, "k":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "kSize":I
    :goto_d
    if-ge v0, v1, :cond_157

    .line 2811
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_153

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    if-ltz v2, :cond_153

    .line 2812
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_MAX:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_MIN:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_PERC_OF_PROVINCES:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2814
    .local v2, "numOfLines":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2816
    .local v4, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7e
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_d4

    .line 2817
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v7

    if-eq v6, v7, :cond_d1

    .line 2818
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2816
    :cond_d1
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    .line 2822
    .end local v5    # "i":I
    :cond_d4
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d5
    if-ge v5, v2, :cond_150

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_150

    .line 2823
    const/4 v6, 0x0

    .line 2825
    .local v6, "bestID":I
    const/4 v7, 0x1

    .local v7, "j":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "jSize":I
    :goto_e3
    if-ge v7, v8, :cond_10f

    .line 2826
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v10

    if-ge v9, v10, :cond_10c

    .line 2827
    move v6, v7

    .line 2825
    :cond_10c
    add-int/lit8 v7, v7, 0x1

    goto :goto_e3

    .line 2832
    .end local v7    # "j":I
    .end local v8    # "jSize":I
    :cond_10f
    :try_start_10f
    new-instance v7, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;-><init>(III)V

    .line 2834
    .local v7, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    iget v8, v7, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iRouteSize:I

    if-lez v8, :cond_144

    .line 2835
    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_143} :catch_147

    goto :goto_146

    .line 2837
    :cond_144
    add-int/lit8 v5, v5, -0x1

    .line 2841
    .end local v7    # "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    :goto_146
    goto :goto_14b

    .line 2839
    :catch_147
    move-exception v7

    .line 2840
    .local v7, "ex":Ljava/lang/Exception;
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2842
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_14b
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2822
    .end local v6    # "bestID":I
    add-int/2addr v5, v3

    goto :goto_d5

    .line 2846
    .end local v5    # "i":I
    :cond_150
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2810
    .end local v2    # "numOfLines":I
    .end local v4    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_153
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 2850
    .end local v0    # "k":I
    .end local v1    # "kSize":I
    :cond_157
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2851
    return-void
.end method

.method public static final buildBiggestCitiesLines_Province(II)V
    .registers 4
    .param p0, "iProvinceA"    # I
    .param p1, "iProvinceB"    # I

    .line 2854
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2855
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2857
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$40;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$40;-><init>(III)V

    .line 2873
    .local v0, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iRouteSize:I

    if-lez v1, :cond_1e

    .line 2874
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2877
    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2878
    return-void
.end method

.method public static final buildSiegeLines(I)V
    .registers 6
    .param p0, "provinceID"    # I

    .line 2719
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->clearSiegeLines()V

    .line 2721
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 2723
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 2724
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_40

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    if-nez v2, :cond_40

    .line 2725
    new-instance v2, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v2, v3, p0, v4}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;-><init>(III)V

    .line 2727
    .local v2, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2723
    .end local v2    # "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2731
    .end local v1    # "i":I
    :cond_43
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    .line 2732
    return-void
.end method

.method public static final clearBiggestCities()V
    .registers 1

    .line 2920
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2921
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2922
    return-void
.end method

.method public static final clearDiplomacyLines()V
    .registers 1

    .line 3015
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3016
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I

    .line 3017
    return-void
.end method

.method public static final clearProvinceDots()V
    .registers 1

    .line 3099
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3100
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I

    .line 3101
    return-void
.end method

.method public static final clearSiegeLines()V
    .registers 1

    .line 2779
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2780
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    .line 2781
    return-void
.end method

.method public static final drawBiggestCitiesLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2881
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    if-lez v0, :cond_52

    .line 2882
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_52

    .line 2884
    :try_start_10
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2886
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_16
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_42

    if-ge v0, v1, :cond_2a

    .line 2888
    :try_start_1a
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->update()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_26

    .line 2891
    goto :goto_27

    .line 2889
    :catch_26
    move-exception v1

    .line 2886
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 2895
    .end local v0    # "j":I
    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2b
    :try_start_2b
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_40

    if-ge v0, v1, :cond_3f

    .line 2897
    :try_start_2f
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b

    .line 2900
    goto :goto_3c

    .line 2898
    :catch_3b
    move-exception v1

    .line 2895
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2904
    .end local v0    # "j":I
    :cond_3f
    goto :goto_41

    .line 2902
    :catch_40
    move-exception v0

    .line 2907
    :goto_41
    goto :goto_43

    .line 2905
    :catch_42
    move-exception v0

    .line 2910
    :goto_43
    :try_start_43
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2911
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4d} :catch_4e

    .line 2914
    goto :goto_52

    .line 2912
    :catch_4e
    move-exception v0

    .line 2913
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2917
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public static final drawBuildingsInConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 21
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1138
    move-object/from16 v7, p0

    :try_start_2
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x84c0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_260

    .line 1139
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_f
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_4a8

    if-ge v12, v0, :cond_25e

    .line 1141
    :try_start_13
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 1143
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_258

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v1, :cond_258

    .line 1144
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_2f

    move v1, v10

    goto :goto_30

    :cond_2f
    move v1, v11

    :goto_30
    move v13, v1

    .line 1146
    .local v13, "extraY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v14, v1

    .line 1147
    .local v14, "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v15, v1

    .line 1148
    .local v15, "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v6, v1

    .line 1150
    .local v6, "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1152
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v3

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1153
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1155
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1156
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v3

    int-to-float v3, v3

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    mul-int/2addr v4, v13

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1155
    invoke-virtual {v1, v7, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1160
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1162
    nop

    .line 1163
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1162
    invoke-virtual {v14, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1166
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v16, v1

    .line 1167
    .local v16, "tCenterX":I
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v17, v1

    .line 1169
    .local v17, "tCenterY":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1170
    nop

    .line 1171
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, v16, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v17, v2

    .line 1170
    invoke-virtual {v6, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1174
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1175
    nop

    .line 1176
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v3, v16, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v1

    int-to-float v1, v1

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    mul-int/2addr v2, v13

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v4, v17, v1

    .line 1178
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    sub-float v2, v8, v2

    mul-float/2addr v1, v2

    float-to-int v5, v1

    .line 1179
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v18

    .line 1175
    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v19, v6

    .end local v6    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    .local v19, "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1181
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1183
    nop

    .line 1184
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1183
    invoke-virtual {v15, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_258} :catch_259

    .line 1190
    .end local v0    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v13    # "extraY":I
    .end local v14    # "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v15    # "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v16    # "tCenterX":I
    .end local v17    # "tCenterY":I
    .end local v19    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    :cond_258
    goto :goto_25a

    .line 1188
    :catch_259
    move-exception v0

    .line 1139
    :goto_25a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f

    .end local v12    # "i":I
    :cond_25e
    goto/16 :goto_4a7

    .line 1194
    :cond_260
    const/4 v0, 0x0

    move v12, v0

    .restart local v12    # "i":I
    :goto_262
    :try_start_262
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_264} :catch_4a8

    if-ge v12, v0, :cond_4a7

    .line 1196
    :try_start_266
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 1198
    .restart local v0    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v1, :cond_4a1

    .line 1199
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_278

    move v1, v10

    goto :goto_279

    :cond_278
    move v1, v11

    :goto_279
    move v13, v1

    .line 1200
    .restart local v13    # "extraY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v14, v1

    .line 1201
    .restart local v14    # "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v15, v1

    .line 1202
    .restart local v15    # "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v6, v1

    .line 1204
    .restart local v6    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1206
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v3

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1207
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1209
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1210
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v3

    int-to-float v3, v3

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    mul-int/2addr v4, v13

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1209
    invoke-virtual {v1, v7, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1214
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1216
    nop

    .line 1217
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1216
    invoke-virtual {v14, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1220
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v16, v1

    .line 1221
    .restart local v16    # "tCenterX":I
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v17, v1

    .line 1223
    .restart local v17    # "tCenterY":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1224
    nop

    .line 1225
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, v16, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v17, v2

    .line 1224
    invoke-virtual {v6, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1228
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1229
    nop

    .line 1230
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v3, v16, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v1

    int-to-float v1, v1

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    mul-int/2addr v2, v13

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v4, v17, v1

    .line 1232
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    sub-float v2, v8, v2

    mul-float/2addr v1, v2

    float-to-int v5, v1

    .line 1233
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v18

    .line 1229
    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v19, v6

    .end local v6    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    .restart local v19    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1235
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1237
    nop

    .line 1238
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1237
    invoke-virtual {v15, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_4a1
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_4a1} :catch_4a2

    .line 1244
    .end local v0    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v13    # "extraY":I
    .end local v14    # "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v15    # "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v16    # "tCenterX":I
    .end local v17    # "tCenterY":I
    .end local v19    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    :cond_4a1
    goto :goto_4a3

    .line 1242
    :catch_4a2
    move-exception v0

    .line 1194
    :goto_4a3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_262

    .line 1249
    .end local v12    # "i":I
    :cond_4a7
    :goto_4a7
    goto :goto_4a9

    .line 1247
    :catch_4a8
    move-exception v0

    .line 1250
    :goto_4a9
    return-void
.end method

.method public static final drawDiplomacyLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2970
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I

    if-lez v0, :cond_6e

    .line 2973
    :try_start_4
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2974
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 2976
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_60

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_12
    if-ltz v0, :cond_2c

    .line 2978
    :try_start_14
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->update()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    .line 2982
    goto :goto_29

    .line 2979
    :catch_20
    move-exception v1

    .line 2980
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_21
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2981
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_60

    .line 2976
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2986
    .end local v0    # "j":I
    :cond_2c
    :try_start_2c
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2e} :catch_5b

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "j":I
    :goto_30
    if-ltz v0, :cond_52

    .line 2988
    :try_start_32
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2989
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_45} :catch_46

    .line 2994
    :cond_45
    goto :goto_4f

    .line 2991
    :catch_46
    move-exception v1

    .line 2992
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_47
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2993
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2986
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 2997
    .end local v0    # "j":I
    :cond_52
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_5b

    .line 3000
    goto :goto_5f

    .line 2998
    :catch_5b
    move-exception v0

    .line 2999
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    .line 3003
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5f
    goto :goto_64

    .line 3001
    :catch_60
    move-exception v0

    .line 3002
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3006
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_6a

    .line 3009
    goto :goto_6e

    .line 3007
    :catch_6a
    move-exception v0

    .line 3008
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3012
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    return-void
.end method

.method public static final drawMoveUnits_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2627
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2629
    const/4 v0, 0x0

    .line 2632
    .local v0, "drawn":Z
    :try_start_6
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    const/16 v2, 0x3840

    if-lt v1, v2, :cond_16

    .line 2633
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    .line 2634
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawMoveUnits_Just_CheckArmies()V

    .line 2637
    :cond_16
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 2638
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v2

    if-lez v2, :cond_42

    .line 2639
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_11c

    if-ge v2, v3, :cond_42

    .line 2641
    :try_start_32
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->update()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e

    .line 2644
    goto :goto_3f

    .line 2642
    :catch_3e
    move-exception v3

    .line 2639
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2637
    .end local v2    # "j":I
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2649
    .end local v1    # "i":I
    :cond_45
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_46
    :try_start_46
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_11c

    if-ge v1, v2, :cond_5e

    .line 2651
    :try_start_4c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->update()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_5a

    .line 2654
    goto :goto_5b

    .line 2652
    :catch_5a
    move-exception v2

    .line 2649
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 2660
    .end local v1    # "j":I
    :cond_5e
    :try_start_5e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2661
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2663
    .local v3, "civID":I
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v4, v5, :cond_b2

    .line 2664
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_97
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v5
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9f} :catch_11a

    if-ge v4, v5, :cond_b2

    .line 2666
    :try_start_a1
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ac} :catch_ae

    .line 2667
    const/4 v0, 0x1

    .line 2670
    goto :goto_af

    .line 2668
    :catch_ae
    move-exception v5

    .line 2664
    :goto_af
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 2673
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    .end local v4    # "j":I
    :cond_b2
    goto :goto_72

    .line 2675
    .end local v3    # "civID":I
    :cond_b3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b4
    :try_start_b4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v1, v2, :cond_f5

    .line 2676
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    .line 2678
    .local v2, "civID":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_d7
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v4
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_df} :catch_11a

    if-ge v3, v4, :cond_f2

    .line 2680
    :try_start_e1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ec} :catch_ee

    .line 2681
    const/4 v0, 0x1

    .line 2684
    goto :goto_ef

    .line 2682
    :catch_ee
    move-exception v4

    .line 2678
    :goto_ef
    add-int/lit8 v3, v3, 0x1

    goto :goto_d7

    .line 2675
    .end local v3    # "j":I
    :cond_f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 2688
    .end local v1    # "i":I
    .end local v2    # "civID":I
    :cond_f5
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_f6
    :try_start_f6
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v2
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_102} :catch_11a

    if-ge v1, v2, :cond_119

    .line 2690
    :try_start_104
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_113} :catch_115

    .line 2691
    const/4 v0, 0x1

    .line 2694
    goto :goto_116

    .line 2692
    :catch_115
    move-exception v2

    .line 2688
    :goto_116
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 2698
    .end local v1    # "j":I
    :cond_119
    goto :goto_11b

    .line 2696
    :catch_11a
    move-exception v1

    .line 2701
    :goto_11b
    goto :goto_11d

    .line 2699
    :catch_11c
    move-exception v1

    .line 2703
    :goto_11d
    if-eqz v0, :cond_12e

    .line 2705
    :try_start_11f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2706
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_129} :catch_12a

    .line 2709
    goto :goto_12e

    .line 2707
    :catch_12a
    move-exception v1

    .line 2708
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2711
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_12e
    :goto_12e
    return-void
.end method

.method public static final drawMoveUnits_Just_CheckArmies()V
    .registers 6

    .line 2593
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2594
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2596
    .local v2, "civID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_6e

    .line 2597
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_42
    if-ltz v3, :cond_6e

    .line 2598
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    if-nez v4, :cond_6b

    .line 2599
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 2597
    :cond_6b
    add-int/lit8 v3, v3, -0x1

    goto :goto_42

    .line 2603
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    .end local v3    # "j":I
    :cond_6e
    goto :goto_14

    .line 2605
    .end local v2    # "civID":I
    :cond_6f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_70
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v0, v1, :cond_cb

    .line 2606
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    .line 2608
    .local v1, "civID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_9c
    if-ltz v2, :cond_c8

    .line 2609
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-nez v3, :cond_c5

    .line 2610
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 2608
    :cond_c5
    add-int/lit8 v2, v2, -0x1

    goto :goto_9c

    .line 2605
    .end local v2    # "j":I
    :cond_c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 2615
    .end local v0    # "i":I
    .end local v1    # "civID":I
    :cond_cb
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_d9
    if-ltz v0, :cond_116

    .line 2616
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    if-nez v1, :cond_113

    .line 2617
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 2618
    const-string v1, "REMOVED"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_113} :catch_117

    .line 2615
    :cond_113
    add-int/lit8 v0, v0, -0x1

    goto :goto_d9

    .line 2623
    .end local v0    # "j":I
    :cond_116
    goto :goto_11b

    .line 2621
    :catch_117
    move-exception v0

    .line 2622
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2624
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11b
    return-void
.end method

.method public static final drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2309
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_77

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    if-lez v0, :cond_77

    .line 2310
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2312
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 2314
    .local v0, "fProvinceAlpha":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_44

    .line 2315
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    if-ne v2, v3, :cond_41

    .line 2316
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2317
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2314
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2321
    .end local v1    # "i":I
    :cond_44
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_45
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_72

    .line 2322
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    if-ne v2, v3, :cond_6f

    .line 2323
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2324
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2321
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 2328
    .end local v1    # "i":I
    :cond_72
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2331
    .end local v0    # "fProvinceAlpha":F
    :cond_77
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_87

    .line 2332
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_8e

    .line 2335
    :cond_87
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    if-eqz v0, :cond_8e

    .line 2336
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2339
    :cond_8e
    :goto_8e
    return-void
.end method

.method private static final drawOccupiedProvinces_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2343
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_OCCUPIED_ALPHA_EXTRA:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    mul-float/2addr v0, v1

    .line 2345
    .local v0, "fAlpha":F
    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_62

    .line 2346
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_3c

    .line 2349
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2350
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2348
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2354
    .end local v1    # "i":I
    :cond_3c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_5d

    .line 2355
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2356
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2354
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 2360
    .end local v1    # "i":I
    :cond_5d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2362
    :cond_62
    return-void
.end method

.method public static final drawProvinceDots_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 3064
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I

    if-lez v0, :cond_57

    .line 3065
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_57

    .line 3067
    :try_start_10
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 3068
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_49

    .line 3071
    :try_start_1a
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_44

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_1e
    if-ltz v0, :cond_3b

    .line 3073
    :try_start_20
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3074
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_34

    .line 3078
    :cond_33
    goto :goto_38

    .line 3076
    :catch_34
    move-exception v1

    .line 3077
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_35
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3071
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 3081
    .end local v0    # "j":I
    :cond_3b
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_43} :catch_44

    .line 3084
    goto :goto_48

    .line 3082
    :catch_44
    move-exception v0

    .line 3083
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_45
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 3087
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_48
    goto :goto_4d

    .line 3085
    :catch_49
    move-exception v0

    .line 3086
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3090
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4d
    :try_start_4d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_53

    .line 3093
    goto :goto_57

    .line 3091
    :catch_53
    move-exception v0

    .line 3092
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3096
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return-void
.end method

.method public static final drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 175
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 178
    goto :goto_8

    .line 176
    :catch_4
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 183
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 186
    :try_start_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateAlpha()V

    .line 187
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    .line 190
    goto :goto_1c

    .line 188
    :catch_18
    move-exception v0

    .line 189
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 192
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 196
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 197
    return-void
.end method

.method public static final drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "scale"    # F
    .param p4, "nAlpha"    # I

    .line 2499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 2500
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 2501
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_34

    .line 2503
    :cond_1e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_34

    .line 2504
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 2499
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2508
    .end local v0    # "i":I
    :cond_37
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2509
    return-void
.end method

.method public static final drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2415
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-lez v0, :cond_87

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_87

    .line 2416
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 2418
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesBorder_Prepare()V

    .line 2421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    :try_start_1d
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_33

    .line 2422
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V

    .line 2421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2425
    .end local v0    # "i":I
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_34
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_4a

    .line 2426
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V

    .line 2425
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 2429
    .end local v0    # "i":I
    :cond_4a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4b
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_61

    .line 2430
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V

    .line 2429
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 2433
    .end local v0    # "i":I
    :cond_61
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_62
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_78

    .line 2434
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_75} :catch_79

    .line 2433
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 2438
    .end local v0    # "i":I
    :cond_78
    goto :goto_7d

    .line 2436
    :catch_79
    move-exception v0

    .line 2437
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2440
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2441
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2443
    :cond_87
    return-void
.end method

.method public static final drawProvincesBorder_Prepare()V
    .registers 5

    .line 2379
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2381
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_21

    .line 2382
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2385
    :cond_21
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    add-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2387
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    .line 2388
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->MAX_BORDER_WIDTH:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->MIN_BORDER_WIDTH:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->MAX_BORDER_WIDTH:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    add-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    .line 2389
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->BORDER_WIDTH_DIVIDE:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    add-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    .line 2392
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_NONE_NONE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7e

    .line 2393
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2394
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2396
    :cond_7e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_NONE_POINTY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_95

    .line 2397
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2398
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2400
    :cond_95
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_POINTY_POINTY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ac

    .line 2401
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2402
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2404
    :cond_ac
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_POINTY_SMOOTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c3

    .line 2405
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2406
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2409
    :cond_c3
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2410
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2412
    :goto_cb
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_da

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    :cond_da
    return-void
.end method

.method protected static final drawProvincesInMapEditor_Connections(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2448
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_20

    .line 2450
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2449
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2453
    .end local v0    # "i":I
    :cond_20
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2455
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2c
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_95

    .line 2456
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_31
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v3

    if-ge v1, v3, :cond_61

    .line 2457
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pix2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2456
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 2460
    .end local v1    # "j":I
    :cond_61
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_62
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySeaSize()I

    move-result v3

    if-ge v1, v3, :cond_92

    .line 2461
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2460
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 2455
    .end local v1    # "j":I
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 2465
    .end local v0    # "i":I
    :cond_95
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_96
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_109

    .line 2466
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_9b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySeaSize()I

    move-result v3

    if-ge v1, v3, :cond_cb

    .line 2467
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2466
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 2470
    .end local v1    # "j":I
    :cond_cb
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2472
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_d6
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySeaSize()I

    move-result v3

    if-ge v1, v3, :cond_106

    .line 2473
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2472
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 2465
    .end local v1    # "j":I
    :cond_106
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 2476
    .end local v0    # "i":I
    :cond_109
    return-void
.end method

.method private static final drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nImageID"    # I
    .param p2, "fromProvinceID"    # I
    .param p3, "toProvinceID"    # I

    .line 2479
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2480
    return-void

    .line 2483
    :cond_b
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v1, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2484
    .local v0, "iWidth":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 2486
    .local v1, "fAngle":F
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    .line 2487
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v4, v3

    .line 2488
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    add-int/2addr v5, v3

    .line 2491
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    .line 2486
    const/4 v9, 0x0

    move-object v3, p0

    move v6, v0

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 2493
    return-void
.end method

.method public static final drawProvinces_Alliances(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1784
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1785
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 1787
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1789
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a1

    .line 1790
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9d

    .line 1791
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_4f

    .line 1792
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_92

    .line 1794
    :cond_4f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1795
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_92

    .line 1798
    :cond_7e
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1801
    :goto_92
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1789
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 1805
    .end local v2    # "i":I
    :cond_a1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a2
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_12d

    .line 1806
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_129

    .line 1807
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_db

    .line 1808
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11e

    .line 1810
    :cond_db
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10a

    .line 1811
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11e

    .line 1814
    :cond_10a
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1817
    :goto_11e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1805
    :cond_129
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a2

    .line 1821
    .end local v2    # "i":I
    :cond_12d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1822
    return-void
.end method

.method public static final drawProvinces_Colonize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1948
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1949
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 1951
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1953
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_df

    .line 1954
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_82

    .line 1955
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_7f

    .line 1956
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_60

    .line 1957
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_74

    .line 1960
    :cond_60
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1963
    :goto_74
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1954
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1967
    .end local v2    # "i":I
    :cond_82
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_83
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_dd

    .line 1968
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_da

    .line 1969
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_bb

    .line 1970
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_cf

    .line 1973
    :cond_bb
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1976
    :goto_cf
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1967
    :cond_da
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .end local v2    # "i":I
    :cond_dd
    goto/16 :goto_195

    .line 1981
    :cond_df
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e0
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_13a

    .line 1982
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_137

    .line 1983
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_118

    .line 1984
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_12c

    .line 1987
    :cond_118
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1990
    :goto_12c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1981
    :cond_137
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    .line 1994
    .end local v2    # "i":I
    :cond_13a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13b
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_195

    .line 1995
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_192

    .line 1996
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_173

    .line 1997
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_187

    .line 2000
    :cond_173
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2003
    :goto_187
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1994
    :cond_192
    add-int/lit8 v2, v2, 0x1

    goto :goto_13b

    .line 2009
    .end local v2    # "i":I
    :cond_195
    :goto_195
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2010
    return-void
.end method

.method public static final drawProvinces_CurrentWars(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1743
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1744
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 1746
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1748
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_9f

    .line 1749
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9b

    .line 1750
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_4f

    .line 1751
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_90

    .line 1753
    :cond_4f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1754
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_90

    .line 1757
    :cond_7c
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1760
    :goto_90
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1748
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 1764
    .end local v2    # "i":I
    :cond_9f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a0
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_129

    .line 1765
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_125

    .line 1766
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_d9

    .line 1767
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11a

    .line 1769
    :cond_d9
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-eqz v3, :cond_106

    .line 1770
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11a

    .line 1773
    :cond_106
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1776
    :goto_11a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1764
    :cond_125
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a0

    .line 1780
    .end local v2    # "i":I
    :cond_129
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1781
    return-void
.end method

.method public static final drawProvinces_DeclareWar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1690
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1691
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 1693
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1695
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_ea

    .line 1696
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_e6

    .line 1697
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_50

    .line 1698
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_db

    .line 1700
    :cond_50
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->iCivID:I

    if-ne v3, v4, :cond_75

    .line 1701
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_db

    .line 1703
    :cond_75
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_9e

    .line 1704
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_db

    .line 1706
    :cond_9e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_c7

    .line 1707
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_db

    .line 1710
    :cond_c7
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1713
    :goto_db
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1695
    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 1717
    .end local v2    # "i":I
    :cond_ea
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_eb
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_1bf

    .line 1718
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_1bb

    .line 1719
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_125

    .line 1720
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1b0

    .line 1722
    :cond_125
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->iCivID:I

    if-ne v3, v4, :cond_14a

    .line 1723
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1b0

    .line 1725
    :cond_14a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_173

    .line 1726
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1b0

    .line 1728
    :cond_173
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_19c

    .line 1729
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1b0

    .line 1732
    :cond_19c
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1735
    :goto_1b0
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1717
    :cond_1bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_eb

    .line 1739
    .end local v2    # "i":I
    :cond_1bf
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1740
    return-void
.end method

.method public static final drawProvinces_DefensivePacts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1825
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1826
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 1828
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1830
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a1

    .line 1831
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9d

    .line 1832
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_4f

    .line 1833
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_92

    .line 1835
    :cond_4f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1836
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_92

    .line 1839
    :cond_7e
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1842
    :goto_92
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1830
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 1846
    .end local v2    # "i":I
    :cond_a1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a2
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_12d

    .line 1847
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_129

    .line 1848
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_db

    .line 1849
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11e

    .line 1851
    :cond_db
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10a

    .line 1852
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11e

    .line 1855
    :cond_10a
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1858
    :goto_11e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1846
    :cond_129
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a2

    .line 1862
    .end local v2    # "i":I
    :cond_12d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1863
    return-void
.end method

.method public static final drawProvinces_Diplomacy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1554
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1556
    .local v0, "fProvinceAlpha2":F
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    if-eqz v1, :cond_63

    .line 1557
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_36

    .line 1558
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v2, v3, :cond_33

    .line 1559
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1557
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1563
    .end local v1    # "i":I
    :cond_36
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_37
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_61

    .line 1564
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v2, v3, :cond_5e

    .line 1565
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1563
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .end local v1    # "i":I
    :cond_61
    goto/16 :goto_11d

    .line 1570
    :cond_63
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1572
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_67
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_c0

    .line 1573
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_bd

    .line 1574
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1575
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1572
    :cond_bd
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 1579
    .end local v1    # "i":I
    :cond_c0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_11a

    .line 1580
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_117

    .line 1581
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1582
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1579
    :cond_117
    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 1586
    .end local v1    # "i":I
    :cond_11a
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1588
    :goto_11d
    return-void
.end method

.method public static final drawProvinces_DiplomacyRelations(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1623
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1624
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    .line 1626
    .local v1, "fProvinceAlpha2":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1628
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 1630
    .local v2, "nActiveCivID":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const/high16 v5, 0x40400000    # 3.0f

    if-ge v3, v4, :cond_da

    .line 1631
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_d6

    .line 1632
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v2, :cond_4f

    .line 1633
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_cb

    .line 1635
    :cond_4f
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1636
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_cb

    .line 1641
    :cond_76
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    float-to-int v4, v4

    .line 1643
    .local v4, "tempRelation":I
    if-nez v4, :cond_a6

    .line 1644
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    div-float v5, v1, v5

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_cb

    .line 1646
    :cond_a6
    if-lez v4, :cond_b9

    .line 1647
    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    float-to-int v7, v7

    invoke-static {v5, v6, v4, v7, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_cb

    .line 1650
    :cond_b9
    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v7, v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v8, v8

    float-to-int v8, v8

    invoke-static {v5, v6, v7, v8, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1654
    .end local v4    # "tempRelation":I
    :goto_cb
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1630
    :cond_d6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    .line 1658
    .end local v3    # "i":I
    :cond_da
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_db
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v3, v4, :cond_19f

    .line 1659
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_19b

    .line 1660
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v2, :cond_114

    .line 1661
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_190

    .line 1663
    :cond_114
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 1664
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_190

    .line 1669
    :cond_13b
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    float-to-int v4, v4

    .line 1671
    .restart local v4    # "tempRelation":I
    if-nez v4, :cond_16b

    .line 1672
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    div-float v10, v1, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_190

    .line 1674
    :cond_16b
    if-lez v4, :cond_17e

    .line 1675
    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    float-to-int v8, v8

    invoke-static {v6, v7, v4, v8, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_190

    .line 1678
    :cond_17e
    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v8, v4

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v9, v9

    float-to-int v9, v9

    invoke-static {v6, v7, v8, v9, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1682
    .end local v4    # "tempRelation":I
    :goto_190
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1658
    :cond_19b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_db

    .line 1686
    .end local v3    # "i":I
    :cond_19f
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1687
    return-void
.end method

.method public static final drawProvinces_Diplomacy_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1591
    sget v0, Laoc/kingdoms/lukasz/menu/Colors;->PROVINCE_ALPHA_POPULATION:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1592
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    .line 1594
    .local v1, "fProvinceAlpha2":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1596
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_ab

    .line 1597
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_a7

    .line 1598
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v3, v4, :cond_63

    .line 1599
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9c

    .line 1601
    :cond_63
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1603
    :goto_9c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1596
    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    .line 1607
    .end local v2    # "i":I
    :cond_ab
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ac
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_143

    .line 1608
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_13f

    .line 1609
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v3, v4, :cond_fb

    .line 1610
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_134

    .line 1612
    :cond_fb
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1615
    :goto_134
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1607
    :cond_13f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_ac

    .line 1619
    .end local v2    # "i":I
    :cond_143
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1620
    return-void
.end method

.method public static final drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "scale"    # F
    .param p4, "nAlpha"    # I

    .line 2526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 2527
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 2528
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->draw_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_3a

    .line 2530
    :cond_1e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_3a

    .line 2531
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getMetProvince(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2532
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 2526
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2537
    .end local v0    # "i":I
    :cond_3d
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2538
    return-void
.end method

.method public static final drawProvinces_FormCiv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2013
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 2014
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    .line 2016
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2019
    :try_start_15
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;->formCivID:I

    if-ltz v2, :cond_14b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;->formCivID:I

    if-le v2, v3, :cond_14b

    .line 2020
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_b8

    .line 2021
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_b4

    .line 2022
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->drawInMapMode:Z

    if-eqz v3, :cond_77

    .line 2023
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_62

    .line 2024
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_a9

    .line 2027
    :cond_62
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_a9

    .line 2030
    :cond_77
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_95

    .line 2031
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_a9

    .line 2034
    :cond_95
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2037
    :goto_a9
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2020
    :cond_b4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26

    .line 2041
    .end local v2    # "i":I
    :cond_b8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b9
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_14b

    .line 2042
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_147

    .line 2043
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->drawInMapMode:Z

    if-eqz v3, :cond_10a

    .line 2044
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_f5

    .line 2045
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_13c

    .line 2048
    :cond_f5
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_13c

    .line 2051
    :cond_10a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_128

    .line 2052
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_13c

    .line 2055
    :cond_128
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2058
    :goto_13c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_147} :catch_14c

    .line 2041
    :cond_147
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b9

    .line 2064
    .end local v2    # "i":I
    :cond_14b
    goto :goto_150

    .line 2062
    :catch_14c
    move-exception v2

    .line 2063
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2066
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_150
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2067
    return-void
.end method

.method public static final drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "scale"    # F
    .param p4, "nAlpha"    # I

    .line 2512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 2513
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 2514
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 2512
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2521
    .end local v0    # "i":I
    :cond_20
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2522
    return-void
.end method

.method public static final drawProvinces_NonAggressionPacts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1866
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1867
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 1869
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1871
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a1

    .line 1872
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9d

    .line 1873
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_4f

    .line 1874
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_92

    .line 1876
    :cond_4f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1877
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_92

    .line 1880
    :cond_7e
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1883
    :goto_92
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1871
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 1887
    .end local v2    # "i":I
    :cond_a1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a2
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_12d

    .line 1888
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_129

    .line 1889
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_db

    .line 1890
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11e

    .line 1892
    :cond_db
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10a

    .line 1893
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11e

    .line 1896
    :cond_10a
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1899
    :goto_11e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1887
    :cond_129
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a2

    .line 1903
    .end local v2    # "i":I
    :cond_12d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1904
    return-void
.end method

.method public static final drawProvinces_Nuke(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1907
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 1908
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 1910
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1912
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a0

    .line 1913
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9c

    .line 1914
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_4f

    .line 1915
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_91

    .line 1917
    :cond_4f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1918
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_91

    .line 1921
    :cond_7d
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1924
    :goto_91
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1912
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 1928
    .end local v2    # "i":I
    :cond_a0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a1
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_12b

    .line 1929
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_127

    .line 1930
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_da

    .line 1931
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11c

    .line 1933
    :cond_da
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 1934
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11c

    .line 1937
    :cond_108
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1940
    :goto_11c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1928
    :cond_127
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a1

    .line 1944
    .end local v2    # "i":I
    :cond_12b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1945
    return-void
.end method

.method public static final drawProvinces_Peace(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 19
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 20
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 21
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 23
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_c7

    .line 24
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_c3

    .line 25
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_a4

    .line 26
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_68

    .line 27
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b8

    .line 28
    :cond_68
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_8c

    .line 29
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getProvinceFlag(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b8

    .line 31
    :cond_8c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b8

    .line 34
    :cond_a4
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 37
    :goto_b8
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 23
    :cond_c3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 41
    .end local v2    # "i":I
    :cond_c7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c8
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_179

    .line 42
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_175

    .line 43
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_156

    .line 44
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_11a

    .line 45
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_16a

    .line 46
    :cond_11a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_13e

    .line 47
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getProvinceFlag(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_16a

    .line 49
    :cond_13e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_16a

    .line 52
    :cond_156
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 55
    :goto_16a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 41
    :cond_175
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c8

    .line 60
    .end local v2    # "i":I
    :cond_179
    :try_start_179
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_185
    if-ltz v2, :cond_1cf

    .line 61
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_1cc

    .line 62
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1cc} :catch_1d0

    .line 60
    :cond_1cc
    add-int/lit8 v2, v2, -0x1

    goto :goto_185

    .line 68
    .end local v2    # "i":I
    :cond_1cf
    goto :goto_1d4

    .line 66
    :catch_1d0
    move-exception v2

    .line 67
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 70
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1d4
    return-void
.end method

.method public static final drawProvinces_ReleaseVassal(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2226
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 2227
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 2229
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2231
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_90

    .line 2232
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_8d

    .line 2233
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_6e

    .line 2234
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_56

    .line 2235
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_82

    .line 2238
    :cond_56
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_82

    .line 2242
    :cond_6e
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2245
    :goto_82
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2231
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2249
    .end local v2    # "i":I
    :cond_90
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_91
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_10b

    .line 2250
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_108

    .line 2251
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_e9

    .line 2252
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_d1

    .line 2253
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_fd

    .line 2256
    :cond_d1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_fd

    .line 2260
    :cond_e9
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2263
    :goto_fd
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2249
    :cond_108
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 2268
    .end local v2    # "i":I
    :cond_10b
    return-void
.end method

.method public static final drawProvinces_Settings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 200
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 203
    .local v0, "time":J
    :try_start_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 206
    goto :goto_c

    .line 204
    :catch_8
    move-exception v2

    .line 205
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 208
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_c
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_1b

    .line 209
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    .line 210
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 213
    :cond_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 216
    :try_start_20
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateAlpha()V

    .line 217
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    invoke-interface {v2, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    .line 220
    goto :goto_2f

    .line 218
    :catch_2b
    move-exception v2

    .line 219
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 222
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 224
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_3f

    .line 225
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    .line 227
    :cond_3f
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 228
    return-void
.end method

.method public static final drawProvinces_SpecialAlliance_View(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2070
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 2071
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 2073
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2075
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_9d

    .line 2076
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_99

    .line 2077
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_7a

    .line 2078
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_65

    .line 2079
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8e

    .line 2082
    :cond_65
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8e

    .line 2086
    :cond_7a
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2089
    :goto_8e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2075
    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 2093
    .end local v2    # "i":I
    :cond_9d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9e
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_125

    .line 2094
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_121

    .line 2095
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_102

    .line 2096
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_ed

    .line 2097
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_116

    .line 2100
    :cond_ed
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_116

    .line 2104
    :cond_102
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2107
    :goto_116
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2093
    :cond_121
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9e

    .line 2111
    .end local v2    # "i":I
    :cond_125
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2112
    return-void
.end method

.method public static final drawProvinces_Standard(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1305
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1308
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1310
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1313
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    .line 1316
    goto :goto_15

    .line 1314
    :catch_11
    move-exception v0

    .line 1315
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1318
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_15
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1319
    return-void
.end method

.method public static final drawProvinces_StandardFog2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1283
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    .line 1285
    .local v0, "fProvinceAlpha":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_25

    .line 1286
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1287
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1285
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1291
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_26
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_46

    .line 1292
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_43

    .line 1293
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1291
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1298
    .end local v1    # "i":I
    :cond_46
    return-void
.end method

.method public static final drawProvinces_Standard_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1322
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1325
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1328
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    .line 1333
    goto :goto_e

    .line 1331
    :catch_a
    move-exception v0

    .line 1332
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1335
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1336
    return-void
.end method

.method public static final drawProvinces_Standard_FBO_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1356
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1359
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1362
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    .line 1367
    goto :goto_e

    .line 1365
    :catch_a
    move-exception v0

    .line 1366
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1369
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1370
    return-void
.end method

.method public static final drawProvinces_Standard_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1339
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1342
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1344
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1347
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    .line 1350
    goto :goto_15

    .line 1348
    :catch_11
    move-exception v0

    .line 1349
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1352
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_15
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1353
    return-void
.end method

.method public static final drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 1
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 17
    return-void
.end method

.method public static final drawProvinces_Standard_LandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fProvinceAlpha"    # F

    .line 1429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_21

    .line 1430
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 1431
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1429
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1435
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_42

    .line 1436
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 1437
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1435
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1440
    .end local v0    # "i":I
    :cond_42
    return-void
.end method

.method public static final drawProvinces_Standard_LandProvinces_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1477
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_28

    .line 1478
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    if-ne v0, v1, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    if-ne v0, v1, :cond_1a

    goto/16 :goto_95

    .line 1482
    :cond_1a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesTexture()V

    .line 1483
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesFBO()V

    .line 1485
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_95

    .line 1489
    :cond_28
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->updateFBO()V

    .line 1491
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->FBO_NUM_TO_GENERATE_PB:I

    if-lt v0, v1, :cond_8e

    .line 1492
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    .line 1494
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1496
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesFBO()V

    .line 1497
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesTexture()V

    .line 1499
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 1501
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    .line 1503
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 1504
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1506
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1508
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1509
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 1511
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    .line 1513
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboPosX:I

    .line 1514
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboPosY:I

    .line 1516
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1518
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_95

    .line 1523
    :cond_8e
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    .line 1528
    :goto_95
    goto :goto_9a

    .line 1526
    :catch_96
    move-exception v0

    .line 1527
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1529
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9a
    return-void
.end method

.method public static final drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fProvinceAlpha"    # F

    .line 1443
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_53

    .line 1444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_2f

    .line 1445
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 1446
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1444
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1450
    .end local v0    # "i":I
    :cond_2f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_30
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_52

    .line 1451
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 1452
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1450
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .end local v0    # "i":I
    :cond_52
    goto :goto_56

    .line 1457
    :cond_53
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1459
    :goto_56
    return-void
.end method

.method public static final drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1376
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_46

    .line 1377
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v0, v1, :cond_46

    .line 1380
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1381
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_47

    .line 1379
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1387
    .end local v0    # "i":I
    :cond_46
    goto :goto_4b

    .line 1385
    :catch_47
    move-exception v0

    .line 1386
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1388
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public static final drawProvinces_WarView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2115
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    .line 2116
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    .line 2118
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2120
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_9d

    .line 2121
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_99

    .line 2122
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_7a

    .line 2123
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_65

    .line 2124
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8e

    .line 2127
    :cond_65
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8e

    .line 2131
    :cond_7a
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2134
    :goto_8e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2120
    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 2138
    .end local v2    # "i":I
    :cond_9d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9e
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_125

    .line 2139
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_121

    .line 2140
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_102

    .line 2141
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_ed

    .line 2142
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_116

    .line 2145
    :cond_ed
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_116

    .line 2149
    :cond_102
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2152
    :goto_116
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2138
    :cond_121
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9e

    .line 2156
    .end local v2    # "i":I
    :cond_125
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2157
    return-void
.end method

.method public static final drawRecruitingArmyPlayer(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 20
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1028
    move-object/from16 v6, p0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    .line 1029
    .local v7, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    .line 1030
    .local v8, "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    .line 1031
    .local v9, "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    .line 1033
    .local v10, "unitsFrameMap":Laoc/kingdoms/lukasz/textures/Image;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_1e
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRecruitSize()I

    move-result v0

    if-ge v11, v0, :cond_295

    .line 1034
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_26
    iget-object v0, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_291

    const/4 v13, 0x1

    if-ge v12, v13, :cond_291

    .line 1035
    iget-object v0, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 1037
    .local v14, "armyRecruit":Laoc/kingdoms/lukasz/map/army/ArmyRecruit;
    iget v0, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    .line 1039
    .local v15, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_28d

    .line 1040
    iget v0, v15, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v0, :cond_58

    move v0, v13

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    .line 1043
    .local v0, "extraY":I
    :goto_59
    iget-object v1, v15, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_62

    .line 1044
    add-int/lit8 v0, v0, 0x1

    move/from16 v16, v0

    goto :goto_64

    .line 1043
    :cond_62
    move/from16 v16, v0

    .line 1047
    .end local v0    # "extraY":I
    .local v16, "extraY":I
    :goto_64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1049
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v2, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1050
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1052
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 1053
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v4, v12, v16

    add-int/2addr v4, v13

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-int/lit8 v3, v12, 0x1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1052
    invoke-virtual {v0, v6, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1057
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1059
    nop

    .line 1060
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v1

    int-to-float v1, v1

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1059
    invoke-virtual {v10, v6, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1063
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v17, v0, 0x2

    .line 1064
    .local v17, "tCenterX":I
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v18, v0, 0x2

    .line 1066
    .local v18, "tCenterY":I
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1067
    nop

    .line 1068
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int v0, v17, v0

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v1

    int-to-float v1, v1

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, v18, v1

    .line 1067
    invoke-virtual {v9, v6, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1071
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1072
    nop

    .line 1073
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int v2, v17, v0

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v0

    int-to-float v0, v0

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-int/lit8 v1, v12, 0x1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int v3, v18, v0

    .line 1075
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RecruitmentTime:I

    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RecruitmentTime:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v4, v0

    .line 1076
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 1072
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1078
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1080
    nop

    .line 1081
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v1

    int-to-float v1, v1

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1080
    invoke-virtual {v8, v6, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1034
    .end local v14    # "armyRecruit":Laoc/kingdoms/lukasz/map/army/ArmyRecruit;
    .end local v15    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v16    # "extraY":I
    .end local v17    # "tCenterX":I
    .end local v18    # "tCenterY":I
    :cond_28d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_26

    .line 1033
    .end local v12    # "j":I
    :cond_291
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1e

    .line 1086
    .end local v11    # "i":I
    :cond_295
    return-void
.end method

.method public static drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 3106
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 3107
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 3110
    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1e

    .line 3111
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 3113
    :cond_1e
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_33

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_33

    .line 3114
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 3117
    :cond_33
    :goto_33
    return-void
.end method

.method public static final drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F

    .line 3121
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-lez v0, :cond_97

    .line 3122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    .line 3123
    .local v0, "iW":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    .line 3125
    .local v1, "iH":I
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 3127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-ge v2, v3, :cond_97

    .line 3128
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 3129
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, p1, v3, v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FIII)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_98

    .line 3127
    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 3135
    .end local v0    # "iW":I
    .end local v1    # "iH":I
    .end local v2    # "i":I
    :cond_97
    goto :goto_9c

    .line 3133
    :catch_98
    move-exception v0

    .line 3134
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3137
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 3138
    return-void
.end method

.method private static final drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FIII)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F
    .param p2, "provinceID"    # I
    .param p3, "iW"    # I
    .param p4, "iH"    # I

    .line 3142
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1f

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v0, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v4

    invoke-virtual {v0, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v5

    goto/16 :goto_2d

    :cond_1f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {p2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v4

    invoke-static {p2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v5

    :goto_2d
    div-int/lit8 v6, p3, 0x2

    sub-int v4, v4, v6

    div-int/lit8 v6, p4, 0x2

    .line 3143
    .local v0, "iPosX":I
    sub-int v5, v5, v6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, p0

    move v2, v4

    move v3, v5

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
    .local v1, "iPosY":I
    .end local v0    # "iPosX":I
    .end local v1    # "iPosY":I
    .local v0, "ex":Ljava/lang/Exception;
    .end local v0    # "ex":Ljava/lang/Exception;
.end method

.method public static final drawSiegeLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2735
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    if-lez v0, :cond_52

    .line 2736
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_52

    .line 2738
    :try_start_10
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2745
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_16
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_42

    if-ge v0, v1, :cond_2a

    .line 2747
    :try_start_1a
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->update()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_26

    .line 2750
    goto :goto_27

    .line 2748
    :catch_26
    move-exception v1

    .line 2745
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 2754
    .end local v0    # "j":I
    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2b
    :try_start_2b
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_40

    if-ge v0, v1, :cond_3f

    .line 2756
    :try_start_2f
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b

    .line 2759
    goto :goto_3c

    .line 2757
    :catch_3b
    move-exception v1

    .line 2754
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2763
    .end local v0    # "j":I
    :cond_3f
    goto :goto_41

    .line 2761
    :catch_40
    move-exception v0

    .line 2766
    :goto_41
    goto :goto_43

    .line 2764
    :catch_42
    move-exception v0

    .line 2769
    :goto_43
    :try_start_43
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2770
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4d} :catch_4e

    .line 2773
    goto :goto_52

    .line 2771
    :catch_4e
    move-exception v0

    .line 2772
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2776
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public static final drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_2a

    .line 2272
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getWastelandColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2273
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2275
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public static final drawWondersConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_30d

    .line 1091
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_309

    .line 1092
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1094
    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonderImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v2, v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ImageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1095
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1097
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1098
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v3

    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1097
    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1101
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1102
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1104
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1105
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v3

    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1104
    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1108
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1109
    .local v1, "tCenterX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1111
    .local v2, "tCenterY":I
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1112
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    .line 1113
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v4

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v5

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v2

    .line 1112
    invoke-virtual {v3, p0, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1116
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1117
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    .line 1118
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v3

    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v6, v1, v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v3

    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v7, v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    .line 1120
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v5, v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v5

    mul-float/2addr v3, v8

    float-to-int v8, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    .line 1121
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v9

    .line 1117
    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1123
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1125
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    .line 1126
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v4

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v5

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 1125
    invoke-virtual {v3, p0, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_309
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_309} :catch_30e

    .line 1090
    .end local v1    # "tCenterX":I
    .end local v2    # "tCenterY":I
    :cond_309
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1133
    .end local v0    # "i":I
    :cond_30d
    goto :goto_30f

    .line 1131
    :catch_30e
    move-exception v0

    .line 1134
    :goto_30f
    return-void
.end method

.method public static final getLandProvinces_Alpha()F
    .registers 2

    .line 1425
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getProvinceAlpha()F
    .registers 5

    .line 2278
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2d

    .line 2279
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_IN:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 2281
    :cond_2d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3c

    .line 2282
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    return v0

    .line 2285
    :cond_3c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Scale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_71

    .line 2287
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sub-float v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_OUT:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2290
    :cond_71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sub-float v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_OUT:F

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static final getProvinceAlpha(F)F
    .registers 5
    .param p0, "fAlpha"    # F

    .line 2296
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 2297
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_IN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, p0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 2299
    :cond_29
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    .line 2300
    return p0

    .line 2303
    :cond_34
    sub-float v0, v1, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_OUT:F

    mul-float/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static final getWastelandColor(IF)Lcom/badlogic/gdx/graphics/Color;
    .registers 8
    .param p0, "wastelandLevel"    # I
    .param p1, "fAlpha"    # F

    .line 2365
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 2366
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const v2, 0x3cab367a    # 0.0209f

    int-to-float v3, p0

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 2367
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const v3, 0x3c902de0    # 0.0176f

    int-to-float v4, p0

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 2368
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c727bb3    # 0.0148f

    int-to-float v5, p0

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 2365
    return-object v0
.end method

.method public static updateDrawExtraDetails()V
    .registers 2

    .line 83
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-ne v0, v1, :cond_12

    .line 84
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    goto :goto_19

    .line 149
    :cond_12
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    .line 167
    :goto_19
    return-void
.end method

.method public static final updateDrawMoveUnits()V
    .registers 1

    .line 2552
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2553
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$37;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$37;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    goto :goto_17

    .line 2578
    :cond_10
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$38;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$38;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    .line 2585
    :goto_17
    return-void
.end method

.method public static final updateDrawProvinces()V
    .registers 2

    .line 231
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_23f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_23f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_23f

    .line 239
    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 240
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapMode;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapMode;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 242
    :cond_36
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceConnections()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 243
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 250
    :cond_47
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorGameCivsEdit()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 251
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 268
    :cond_58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorCreateCiv()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 269
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 286
    :cond_69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorGrowthRate()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 287
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 304
    :cond_7a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCivilizations()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 305
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 325
    :cond_8b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditor_CreateAllianceEdit()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 326
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$9;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$9;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 357
    :cond_9c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInPrintMap()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 358
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$10;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$10;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 375
    :cond_ad
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorEconomy()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 376
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$11;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$11;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 393
    :cond_be
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorLines()Z

    move-result v0

    if-nez v0, :cond_237

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorWaves()Z

    move-result v0

    if-eqz v0, :cond_d0

    goto/16 :goto_237

    .line 401
    :cond_d0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorAlliances()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 402
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$13;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$13;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 435
    :cond_e1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorVassals()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 436
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$14;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$14;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 469
    :cond_f2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorTruces()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 470
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$15;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$15;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 503
    :cond_103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorGuarantee()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 504
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$16;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$16;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 535
    :cond_114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorMilitaryAccess()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 536
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$17;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$17;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 567
    :cond_125
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorNonAggression()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 568
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$18;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$18;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 599
    :cond_136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorDefensive()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 600
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$19;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$19;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 631
    :cond_147
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorRelations()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 632
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$20;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$20;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 701
    :cond_158
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorTerrain()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 702
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$21;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$21;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 719
    :cond_169
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorTechnologiesCivs()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 720
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$22;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$22;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 748
    :cond_17a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorFormableCiv()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 749
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$23;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$23;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 773
    :cond_18b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorSelectProvinces()Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 774
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$24;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$24;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 795
    :cond_19c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGameAddCiv()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 796
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$25;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$25;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 817
    :cond_1ad
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCores()Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 818
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$26;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$26;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 839
    :cond_1be
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioReligion()Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 840
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$27;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$27;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_246

    .line 860
    :cond_1cf
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorBuildings()Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 861
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$28;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$28;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 892
    :cond_1df
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorResource()Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 893
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$29;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$29;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 914
    :cond_1ef
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorContinents()Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 915
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$30;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$30;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 930
    :cond_1ff
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorGeoRegions()Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 931
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$31;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$31;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 946
    :cond_20f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorOptimizationRegions()Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 947
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$32;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$32;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 977
    :cond_21f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorSeaProvinces()Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 978
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$33;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$33;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 1018
    :cond_22f
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$34;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$34;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 394
    :cond_237
    :goto_237
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$12;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$12;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_246

    .line 232
    :cond_23f
    :goto_23f
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    .line 1025
    :goto_246
    return-void
.end method

.method public static final updateDrawProvinces_Standard()V
    .registers 1

    .line 1255
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$35;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$35;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    .line 1280
    return-void
.end method
