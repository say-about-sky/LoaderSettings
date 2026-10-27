.class public Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
.super Ljava/lang/Object;
.source "MoveUnits_RegroupLine.java"


# static fields
.field public static final PRECISION:I = 0xf


# instance fields
.field public ColorLine:Lcom/badlogic/gdx/graphics/Color;

.field public ColorLine2:Lcom/badlogic/gdx/graphics/Color;

.field private iPrecision:I

.field public iRouteSize:I

.field private lRoute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vPoints:[Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "nProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    .line 45
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f129293

    const v3, 0x3f028283

    const v4, 0x3ee6e6e7

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 46
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d23d70a    # 0.04f

    invoke-direct {v1, v2, v2, v2, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    .line 26
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->setPath(Ljava/util/List;)V

    .line 28
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 29
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->buildMoveUnitsLine(Z)V

    .line 31
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/16 v2, 0x64

    const v3, 0x3ecccccd    # 0.4f

    const/16 v4, 0x32

    invoke-static {v1, v0, v4, v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final buildMoveUnitsLine(Z)V
    .locals 7
    .param p1, "updateAnimation"    # Z

    .line 82
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    mul-int/lit8 v0, v0, 0xf

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    .line 83
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 84
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 86
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 88
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 89
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 90
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    goto :goto_1

    .line 93
    :cond_0
    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 94
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 95
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v0, v2

    .line 86
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    const/16 v2, 0x1f

    if-lez v1, :cond_2

    .line 100
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 101
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    add-int/lit8 v4, v4, -0xf

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 102
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v5

    add-int/lit8 v5, v5, -0xf

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v5, v2

    neg-int v2, v5

    int-to-float v2, v2

    invoke-direct {v1, v4, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    goto :goto_2

    .line 105
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 106
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/lit8 v4, v4, -0xf

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    .line 107
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/lit8 v5, v5, -0xf

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v5, v2

    neg-int v2, v5

    int-to-float v2, v2

    invoke-direct {v1, v4, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    .line 110
    :goto_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 111
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v5, v5, -0x1

    .line 112
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v6, v6, -0x1

    .line 113
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    goto :goto_3

    .line 116
    :cond_3
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v5, v5, -0x1

    .line 117
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v6, v6, -0x1

    .line 118
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    .line 121
    :goto_3
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, v0, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 123
    .local v1, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    if-ge v2, v3, :cond_4

    .line 124
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v4, v3, v2

    .line 125
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v2

    int-to-float v4, v2

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 127
    .end local v2    # "j":I
    :cond_4
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 50
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    if-lez v0, :cond_3

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 53
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

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

    if-eqz v1, :cond_1

    .line 54
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_0

    .line 55
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

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

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 56
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_0
    goto :goto_4

    .line 60
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    if-ge v1, v2, :cond_2

    .line 61
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float v3, v3, p2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 62
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 66
    .end local v1    # "j":I
    :cond_2
    :goto_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 67
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    const/4 v3, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v0, v4, v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_3
    goto :goto_5

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5
    return-void

    :goto_6
    mul-float/2addr v5, p2

    neg-float v5, v5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v2

    mul-float p2, v2, v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr p2, v2

    move v2, v6

    sub-float/2addr v2, p2

    div-float/2addr v5, v2

    neg-float v5, v5

    div-float/2addr v2, v6

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p2, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p2, v6

    sub-float/2addr v4, p2

    div-float/2addr v4, v2

    add-float/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p2

    const/4 v2, 0x0

    goto/32 :goto_1

    :goto_7
    mul-float/2addr v4, p2

    neg-float v4, v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v5

    mul-float v5, p2, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v5

    mul-float p2, v5, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr p2, v5

    move v5, v6

    sub-float/2addr v5, p2

    div-float/2addr v4, v5

    neg-float v4, v4

    div-float/2addr v5, v6

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p2, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p2, v6

    sub-float/2addr v3, p2

    div-float/2addr v3, v5

    add-float/2addr v3, p2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p2

    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    goto/32 :goto_3

    nop
.end method

.method public getFromProvinceID()I
    .locals 2

    .line 132
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceID()I
    .locals 2

    .line 136
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceLastID()I
    .locals 2

    .line 140
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final setPath(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "lPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    .line 41
    return-void
.end method
