.class public Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
.super Ljava/lang/Object;
.source "MoveUnits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;,
        Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    }
.end annotation


# static fields
.field public static final PRECISION:I = 0x10

.field public static s_allowHarshInPath:Z


# instance fields
.field public colorLine:Lcom/badlogic/gdx/graphics/Color;

.field public currentMovementProgressWidth:F

.field public doneMovementProgressWidth:F

.field public extraArmyY:I

.field public fCurrentMovingPercentage:F

.field public fMovingPercentage:F

.field public fSpeed:F

.field private iPrecision:I

.field public iRouteSize:I

.field public iWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inBattle:Z

.field public inRetreat:Z

.field public isBelowZero:Z

.field public key:Ljava/lang/String;

.field public lCurrentMovingTime:J

.field public lMovingTime:J

.field private lRoute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

.field public littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

.field public movementProgressOverWidth:F

.field private vPoints:[Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 5
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "extraArmyY"    # I
    .param p6, "iFromProvinceIDExtra"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 39
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 40
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    .line 42
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    .line 44
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 45
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 46
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 47
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 48
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 49
    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 54
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 81
    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    .line 82
    iput p5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 83
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateColorLine(IZ)V

    .line 84
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateSpeed(II)V

    .line 85
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildRoute2(IIIZ)Z

    .line 86
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v0, v1, :cond_2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "tRoute":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v2, v3, :cond_0

    .line 90
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 94
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v2, v3, :cond_1

    .line 97
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 101
    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine_FromToTheSameProvince(ZI)V

    .line 104
    .end local v0    # "tRoute":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZZ)V
    .locals 4
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "extraArmyY"    # I
    .param p6, "inRetreat"    # Z
    .param p7, "landOnly"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 39
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 40
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    .line 42
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    .line 44
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 45
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 46
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 47
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 48
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 49
    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 54
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 59
    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    .line 60
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v0

    mul-int/2addr v0, p5

    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 61
    iput-boolean p6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 62
    invoke-virtual {p0, p1, p6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateColorLine(IZ)V

    .line 63
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateSpeed(II)V

    .line 64
    invoke-static {}, Lteam/rainfall/rfStrategyN/Core;->getConfig()Lteam/rainfall/rfStrategyN/Config;

    move-result-object v0

    iget-boolean v0, v0, Lteam/rainfall/rfStrategyN/Config;->accessToSea_forcePatch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    xor-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildRoute2(IIIZ)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildRoute2(IIIZ)Z

    .line 69
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v0, v1, :cond_1

    .line 70
    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine(ZI)V

    .line 71
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "armyID":I
    if-ltz v0, :cond_1

    .line 73
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftX()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    .line 74
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftY()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    .line 78
    .end local v0    # "armyID":I
    :cond_1
    return-void
.end method

.method public static canBeUsedInPath(IIZI)Z
    .locals 3
    .param p0, "nCivID"    # I
    .param p1, "nProvinceID"    # I
    .param p2, "inRetreat"    # Z
    .param p3, "fromProvince"    # I

    const/4 v1, 0x0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWastelandForMilitary()I

    move-result v0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isMilitaryRestrictedTerrain()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince_OrAtWAr(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static final isFriendlyProvince(II)Z
    .locals 2
    .param p0, "civID"    # I
    .param p1, "toProvinceID"    # I

    .line 391
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->move:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;->ENABLE_MOVE_UNITS_TO_ANY_PROVINCE:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eq v0, p0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveAlliance(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->areInAllianceSpecial(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-eq v0, p0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isFriendlyProvince_OrAtWAr(II)Z
    .locals 1
    .param p0, "civID"    # I
    .param p1, "nProvinceID"    # I

    .line 395
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static reconstructPath(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;)Ljava/util/List;
    .locals 2
    .param p0, "node"    # Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    if-eqz p0, :cond_0

    .line 216
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->parent:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 220
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 221
    return-object v0
.end method


# virtual methods
.method public final buildLine(I)V
    .locals 9
    .param p1, "civID"    # I

    .line 571
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v0, :cond_a

    .line 572
    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    .line 573
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 574
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 576
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 577
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 579
    goto :goto_1

    .line 576
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v1    # "i":I
    :cond_2
    :goto_1
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 584
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v1, v4, :cond_4

    .line 585
    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    neg-int v7, v7

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v5, v0, v4

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 588
    .end local v1    # "i":I
    :cond_4
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    neg-int v5, v5

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v2

    .line 589
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/2addr v1, v3

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    neg-int v6, v6

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v1

    goto/16 :goto_7

    .line 591
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v1, v4, :cond_8

    .line 592
    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v6, v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v5, v0, v4

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 595
    .end local v1    # "i":I
    :cond_8
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v2

    .line 596
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/2addr v1, v3

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v1

    .line 599
    :goto_7
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 601
    .local v1, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_8
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    if-ge v2, v3, :cond_9

    .line 602
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v4, v3, v2

    .line 603
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v2

    int-to-float v4, v2

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 606
    .end local v2    # "j":I
    :cond_9
    nop

    .line 609
    .end local v0    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v1    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_a
    return-void
.end method

.method public final buildMoveUnitsLine(ZI)V
    .locals 2
    .param p1, "updateAnimation"    # Z
    .param p2, "civID"    # I

    .line 543
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 545
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildWidth()V

    .line 546
    if-eqz p1, :cond_0

    .line 547
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 548
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 549
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$1;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 566
    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    .line 567
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildLine(I)V

    .line 568
    return-void
.end method

.method public final buildMoveUnitsLine_FromToTheSameProvince(ZI)V
    .locals 2
    .param p1, "updateAnimation"    # Z
    .param p2, "civID"    # I

    .line 625
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 627
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildWidth()V

    .line 628
    if-eqz p1, :cond_0

    .line 629
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 630
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 631
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$2;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 648
    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    .line 649
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildLine(I)V

    .line 650
    return-void
.end method

.method protected buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z
    .locals 24
    .param p1, "civID"    # I
    .param p5, "from"    # I
    .param p6, "lookingFor"    # I
    .param p7, "forDirection"    # Z
    .param p8, "landOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;IIZZ)Z"
        }
    .end annotation

    .line 277
    .local p2, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v9, p6

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->s_allowHarshInPath:Z

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isMilitaryRestrictedTerrain()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isHarshTerrain()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->s_allowHarshInPath:Z

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 278
    .local v8, "nIN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 279
    .local v7, "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x1

    if-eqz p7, :cond_a

    .line 280
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_9

    .line 281
    const/4 v1, 0x0

    move v5, v1

    .local v5, "j":I
    :goto_1
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 282
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-boolean v2, v10, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {v11, v1, v2, v15}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_2

    .line 284
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v16, v5

    .end local v5    # "j":I
    .local v16, "j":I
    move/from16 v5, p6

    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 285
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 286
    return v0

    .line 289
    .end local v16    # "j":I
    .end local v17    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_2
    move/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "j":I
    .restart local v16    # "j":I
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    move/from16 v2, v16

    .end local v16    # "j":I
    .local v2, "j":I
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    .local v1, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v10, v3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 294
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 282
    .end local v1    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    .restart local v5    # "j":I
    :cond_3
    move v2, v5

    .line 281
    .end local v5    # "j":I
    .restart local v2    # "j":I
    :goto_2
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_1

    :cond_4
    move v2, v5

    .line 298
    .end local v5    # "j":I
    if-nez p8, :cond_8

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_8

    .line 299
    const/4 v1, 0x0

    move v5, v1

    .restart local v5    # "j":I
    :goto_3
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 300
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 301
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_5

    .line 302
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v18, v5

    .end local v5    # "j":I
    .local v18, "j":I
    move/from16 v5, p6

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 303
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 304
    return v0

    .line 307
    .end local v18    # "j":I
    .end local v19    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_5
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v18    # "j":I
    .restart local v19    # "i":I
    move/from16 v1, v19

    .end local v19    # "i":I
    .local v1, "i":I
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move/from16 v3, v18

    .end local v18    # "j":I
    .local v3, "j":I
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    .local v2, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v10, v4, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 312
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 300
    .end local v1    # "i":I
    .end local v2    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "j":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_6
    move v3, v5

    move v1, v6

    .line 299
    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :goto_4
    add-int/lit8 v5, v3, 0x1

    move v6, v1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_3

    .end local v1    # "i":I
    .restart local v6    # "i":I
    :cond_7
    move v3, v5

    move v1, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    goto :goto_5

    .line 298
    .end local v1    # "i":I
    .end local v3    # "j":I
    .restart local v6    # "i":I
    :cond_8
    move v1, v6

    .line 280
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :goto_5
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_0

    :cond_9
    move v1, v6

    .end local v6    # "i":I
    goto/16 :goto_c

    .line 318
    :cond_a
    const/4 v1, 0x0

    move v6, v1

    .restart local v6    # "i":I
    :goto_6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_12

    .line 319
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    sub-int/2addr v1, v0

    move v5, v1

    .restart local v5    # "j":I
    :goto_7
    if-ltz v5, :cond_d

    .line 320
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-boolean v2, v10, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {v11, v1, v2, v15}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 321
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_b

    .line 322
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v20, v5

    .end local v5    # "j":I
    .local v20, "j":I
    move/from16 v5, p6

    move/from16 v21, v6

    .end local v6    # "i":I
    .local v21, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 323
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 324
    return v0

    .line 327
    .end local v20    # "j":I
    .end local v21    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_b
    move/from16 v20, v5

    move/from16 v21, v6

    .end local v5    # "j":I
    .restart local v20    # "j":I
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    move/from16 v2, v20

    .end local v20    # "j":I
    .local v2, "j":I
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    .local v1, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v10, v3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 332
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 320
    .end local v1    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    .restart local v5    # "j":I
    :cond_c
    move v2, v5

    .line 319
    .end local v5    # "j":I
    .restart local v2    # "j":I
    :goto_8
    add-int/lit8 v5, v2, -0x1

    .end local v2    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_7

    :cond_d
    move v2, v5

    .line 336
    .end local v5    # "j":I
    if-nez p8, :cond_11

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_11

    .line 337
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    sub-int/2addr v1, v0

    move v5, v1

    .restart local v5    # "j":I
    :goto_9
    if-ltz v5, :cond_10

    .line 338
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 339
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_e

    .line 340
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v22, v5

    .end local v5    # "j":I
    .local v22, "j":I
    move/from16 v5, p6

    move/from16 v23, v6

    .end local v6    # "i":I
    .local v23, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 341
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 342
    return v0

    .line 345
    .end local v22    # "j":I
    .end local v23    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_e
    move/from16 v22, v5

    move/from16 v23, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v22    # "j":I
    .restart local v23    # "i":I
    move/from16 v1, v23

    .end local v23    # "i":I
    .local v1, "i":I
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move/from16 v3, v22

    .end local v22    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v2, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v10, v4, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 350
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 338
    .end local v1    # "i":I
    .end local v2    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "j":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_f
    move v3, v5

    move v1, v6

    .line 337
    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :goto_a
    add-int/lit8 v5, v3, -0x1

    move v6, v1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_9

    .end local v1    # "i":I
    .restart local v6    # "i":I
    :cond_10
    move v3, v5

    move v1, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    goto :goto_b

    .line 336
    .end local v1    # "i":I
    .end local v3    # "j":I
    .restart local v6    # "i":I
    :cond_11
    move v1, v6

    .line 318
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :goto_b
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_6

    :cond_12
    move v1, v6

    .line 357
    .end local v6    # "i":I
    :goto_c
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_13

    .line 358
    return v16

    .line 361
    :cond_13
    if-nez p7, :cond_14

    goto :goto_d

    :cond_14
    move/from16 v0, v16

    :goto_d
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v8

    move-object v5, v7

    move/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v17, "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move/from16 v7, p6

    move-object/from16 v18, v8

    .end local v8    # "nIN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "nIN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v8, v0

    move/from16 v9, p8

    :try_start_0
    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 362
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 363
    .local v0, "var14":Ljava/lang/StackOverflowError;
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 364
    return v16
.end method

.method protected buildRoute(IIIZ)Z
    .locals 17
    .param p1, "nCivID"    # I
    .param p2, "fromProvinceID"    # I
    .param p3, "toProvinceID"    # I
    .param p4, "landOnly"    # Z

    .line 225
    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->s_allowHarshInPath:Z

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isMilitaryRestrictedTerrain()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isHarshTerrain()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->s_allowHarshInPath:Z

    :cond_1
    iget-object v0, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    const/4 v0, 0x0

    if-ltz v10, :cond_8

    if-ltz v11, :cond_8

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWastelandForMilitary()I

    move-result v1

    if-gez v1, :cond_8

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 228
    .local v12, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 231
    invoke-virtual {v9, v1, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v9, v10, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 236
    .local v14, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 237
    .local v15, "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    .line 239
    .local v8, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 240
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    iget-boolean v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    move/from16 v7, p1

    invoke-static {v7, v1, v2, v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v9, v2, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 239
    .end local v1    # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move/from16 v7, p1

    .line 250
    .end local v0    # "i":I
    if-nez p4, :cond_5

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_5

    .line 251
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 252
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .restart local v1    # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v9, v2, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 251
    .end local v1    # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 261
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 262
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 263
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 264
    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 265
    return v13

    .line 261
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 269
    .end local v6    # "i":I
    :cond_7
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v12

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    .local v16, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    move/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z

    .line 270
    return v13

    .line 272
    .end local v12    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v16    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    :cond_8
    return v0
.end method

.method protected buildRoute2(IIIZ)Z
    .locals 22
    .param p1, "nCivID"    # I
    .param p2, "fromProvinceID"    # I
    .param p3, "toProvinceID"    # I
    .param p4, "landOnly"    # Z

    .line 142
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->s_allowHarshInPath:Z

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isMilitaryRestrictedTerrain()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isHarshTerrain()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->s_allowHarshInPath:Z

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v7, v0, :cond_2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "landOnly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 145
    :cond_2
    iget-object v0, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    sget-boolean v0, Lteam/rainfall/rfStrategyN/Core;->pathMode:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    iget-object v0, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v0, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 149
    iget-object v0, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 150
    .local v1, "i":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rfStrategy2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 151
    .end local v1    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 152
    :cond_3
    return v11

    .line 154
    :cond_4
    if-ltz v8, :cond_11

    if-ltz v9, :cond_11

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWastelandForMilitary()I

    move-result v0

    if-gez v0, :cond_11

    .line 155
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    move-object v12, v0

    .line 156
    .local v12, "openSet":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    .line 157
    .local v13, "closedSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    new-instance v14, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    const/4 v15, 0x0

    move-object v0, v15

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v3, v15

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    .line 158
    .local v14, "startNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    invoke-virtual {v12, v14}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_1
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 162
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    .line 163
    .local v5, "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    iget v0, v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    if-ne v0, v9, :cond_5

    .line 164
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->reconstructPath(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p3

    move-object v15, v5

    .end local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .local v15, "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 165
    return v11

    .line 168
    .end local v15    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .restart local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_5
    iget v0, v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 169
    .local v4, "neighbor":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 170
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget-boolean v1, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {v7, v0, v1, v8}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    iget v0, v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v1

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v2, v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ArmyMovementSpeed:F

    add-float/2addr v2, v3

    const v14, 0x3dcccccd    # 0.1f

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v1, v2

    add-float v17, v0, v1

    sget-boolean v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->s_allowHarshInPath:Z

    if-nez v0, :cond_7

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isMilitaryRestrictedTerrain()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isHarshTerrain()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v17, v17, v0

    .line 172
    .local v17, "gCost":F
    :cond_7
    invoke-static {v4, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v18

    .line 173
    .local v18, "hCost":F
    add-float v19, v17, v18

    .line 174
    .local v19, "fCost":F
    new-instance v20, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move v2, v4

    move-object v3, v5

    move/from16 v21, v4

    .end local v4    # "neighbor":I
    .local v21, "neighbor":I
    move/from16 v4, v17

    move-object v11, v5

    .end local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .local v11, "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    .line 175
    .local v0, "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result v1

    cmpg-float v1, v19, v1

    if-gez v1, :cond_9

    .line 176
    :cond_8
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v0    # "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .end local v17    # "gCost":F
    .end local v18    # "hCost":F
    .end local v19    # "fCost":F
    goto :goto_3

    .line 183
    .end local v11    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .end local v21    # "neighbor":I
    .restart local v4    # "neighbor":I
    .restart local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_a
    move/from16 v21, v4

    move-object v11, v5

    .end local v4    # "neighbor":I
    .end local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .restart local v11    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .restart local v21    # "neighbor":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 169
    .end local v11    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .end local v21    # "neighbor":I
    .restart local v4    # "neighbor":I
    .restart local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_b
    move/from16 v21, v4

    move-object v11, v5

    .line 186
    .end local v4    # "neighbor":I
    .end local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .restart local v11    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :goto_3
    move-object v5, v11

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 188
    .end local v11    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .restart local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_c
    move-object v11, v5

    .end local v5    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .restart local v11    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    if-nez v10, :cond_10

    .line 189
    iget v0, v11, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 190
    .local v5, "neighbor":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 191
    iget v0, v11, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, v11, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v1

    add-float v17, v0, v1

    .line 192
    .restart local v17    # "gCost":F
    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v18

    .line 193
    .restart local v18    # "hCost":F
    add-float v19, v17, v18

    .line 194
    .restart local v19    # "fCost":F
    new-instance v20, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move v2, v5

    move-object v3, v11

    move/from16 v4, v17

    move/from16 v21, v5

    .end local v5    # "neighbor":I
    .restart local v21    # "neighbor":I
    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    .line 195
    .restart local v0    # "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 196
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 197
    :cond_d
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result v1

    cmpg-float v1, v19, v1

    if-gez v1, :cond_e

    .line 198
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_e
    :goto_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 190
    .end local v0    # "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .end local v17    # "gCost":F
    .end local v18    # "hCost":F
    .end local v19    # "fCost":F
    .end local v21    # "neighbor":I
    .restart local v5    # "neighbor":I
    :cond_f
    move/from16 v21, v5

    .line 205
    .end local v5    # "neighbor":I
    :goto_6
    goto :goto_4

    .line 207
    .end local v11    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_10
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 210
    .end local v12    # "openSet":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    .end local v13    # "closedSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    .end local v14    # "startNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final buildWidth()V
    .locals 9

    .line 613
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 614
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 615
    .local v1, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 616
    .local v3, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    iget v6, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget v6, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v7, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v6, v7

    iget v7, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v8, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    nop

    .end local v1    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 622
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected final clearWas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p1, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 371
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 370
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 374
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 442
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 443
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    .line 444
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_0

    .line 446
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_11

    .line 445
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_0
    goto :goto_4

    .line 449
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_2

    .line 450
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_12

    .line 449
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 454
    .end local v1    # "j":I
    :cond_2
    :goto_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v8, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 455
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40400000    # 3.0f

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v2

    add-float/2addr v8, v3

    mul-float/2addr v8, v4

    sget-object v9, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v8, v9, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 456
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 457
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_3

    .line 459
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_13

    .line 458
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "j":I
    :cond_3
    goto :goto_9

    .line 462
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_7
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_5

    .line 463
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    goto/32 :goto_14

    .line 462
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 467
    .end local v1    # "j":I
    :cond_5
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 468
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    mul-float/2addr v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    goto/16 :goto_f

    .line 470
    :cond_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 471
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_a
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_7

    .line 472
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_15

    .line 471
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "j":I
    :cond_7
    goto :goto_e

    .line 475
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_c
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_9

    .line 476
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    goto/32 :goto_16

    .line 475
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 480
    .end local v1    # "j":I
    :cond_9
    :goto_e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 481
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    mul-float/2addr v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :goto_f
    goto :goto_10

    .line 483
    :catch_0
    move-exception v0

    .line 486
    :goto_10
    return-void

    :goto_11
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_1

    :goto_12
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_3

    :goto_13
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_6

    :goto_14
    neg-float v9, v9

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v9, v2

    neg-float v9, v9

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v8, v4

    div-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_8

    :goto_15
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_b

    :goto_16
    neg-float v9, v9

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v9, v2

    neg-float v9, v9

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v8, v4

    div-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_d
.end method

.method public draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 490
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 491
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    .line 492
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_0

    .line 494
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_11

    .line 493
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_0
    goto :goto_4

    .line 497
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_2

    .line 498
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_12

    .line 497
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 502
    .end local v1    # "j":I
    :cond_2
    :goto_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v8, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 503
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40000000    # 2.0f

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v2

    add-float/2addr v8, v3

    mul-float/2addr v8, v4

    sget-object v9, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v8, v9, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 504
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 505
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_3

    .line 507
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_13

    .line 506
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "j":I
    :cond_3
    goto :goto_9

    .line 510
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_7
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_5

    .line 511
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    goto/32 :goto_14

    .line 510
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 515
    .end local v1    # "j":I
    :cond_5
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 516
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    mul-float/2addr v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    goto/16 :goto_f

    .line 518
    :cond_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 519
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_a
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_7

    .line 520
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, p2

    goto/32 :goto_15

    .line 519
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "j":I
    :cond_7
    goto :goto_e

    .line 523
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_c
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_9

    .line 524
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    goto/32 :goto_16

    .line 523
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 528
    .end local v1    # "j":I
    :cond_9
    :goto_e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 529
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    mul-float/2addr v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :goto_f
    goto :goto_10

    .line 531
    :catch_0
    move-exception v0

    .line 534
    :goto_10
    return-void

    :goto_11
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_1

    :goto_12
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_3

    :goto_13
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_6

    :goto_14
    neg-float v9, v9

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v9, v2

    neg-float v9, v9

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v8, v4

    div-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_8

    :goto_15
    neg-float v10, v10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v10, v2

    neg-float v10, v10

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v9, v4

    div-float/2addr v9, v2

    add-float/2addr v9, v4

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_b

    :goto_16
    neg-float v9, v9

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    mul-float v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v2, v3

    sub-float/2addr v2, v4

    div-float/2addr v9, v2

    neg-float v9, v9

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    sub-float/2addr v8, v4

    div-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/32 :goto_d
.end method

.method public getFromProvinceID()I
    .locals 2

    .line 673
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProgressPerc()F
    .locals 3

    .line 685
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getToProvinceID()I
    .locals 2

    .line 677
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

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

    .line 681
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWas(I)Z
    .locals 1
    .param p1, "nProvinceID"    # I

    .line 709
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    return v0
.end method

.method public getWidthTotal()I
    .locals 3

    .line 689
    const/4 v0, 0x0

    .line 691
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 692
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 691
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 695
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public haveSeaProvince()Z
    .locals 2

    .line 699
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v0, v1, :cond_1

    .line 700
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    const/4 v1, 0x1

    return v1

    .line 699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final setPath(IILjava/util/List;II)V
    .locals 3
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .param p4, "toProvinceID"    # I
    .param p5, "fromProvinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 377
    .local p3, "lPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 384
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 388
    return-void
.end method

.method public setWas(IZ)V
    .locals 1
    .param p1, "nProvinceID"    # I
    .param p2, "nWas"    # Z

    .line 713
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iput-boolean p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    .line 714
    return-void
.end method

.method public update()V
    .locals 9

    .line 407
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;->update()V

    .line 408
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;->update()V

    .line 411
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 412
    .local v0, "armyID":I
    if-gez v0, :cond_0

    .line 413
    return-void

    .line 416
    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 417
    .local v2, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 418
    .local v3, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto/16 :goto_1

    .line 419
    :cond_3
    :goto_0
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 420
    iget v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_4

    .line 421
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto/16 :goto_1

    .line 423
    :cond_4
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto :goto_1

    .line 425
    :cond_5
    iget v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_6

    .line 426
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto :goto_1

    .line 428
    :cond_6
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 434
    :goto_1
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    float-to-int v1, v5

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v1, v5

    iput v1, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0    # "armyID":I
    .end local v2    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    goto :goto_2

    .line 435
    :catch_0
    move-exception v0

    .line 438
    :goto_2
    return-void
.end method

.method public updateColorLine(IZ)V
    .locals 5
    .param p1, "nCivID"    # I
    .param p2, "inRetreat"    # Z

    .line 107
    if-eqz p2, :cond_0

    .line 108
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_1

    .line 110
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const/16 v2, 0x64

    const v3, 0x3ecccccd    # 0.4f

    const/16 v4, 0x3c

    invoke-static {v0, v1, v4, v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 115
    :goto_0
    return-void
.end method

.method public updateLittleAnimationMovingArmy()V
    .locals 2

    .line 653
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 654
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 655
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 670
    return-void
.end method

.method public updateSpeed(II)V
    .locals 6
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I

    .line 118
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "tArmyID":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 122
    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_1

    .line 123
    :try_start_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result v3

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    goto :goto_3

    .line 125
    :cond_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v2

    .line 126
    .local v2, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v2, :cond_3

    .line 127
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v5, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result v4

    iget-boolean v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v5, :cond_2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    goto :goto_3

    .line 128
    :cond_3
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 129
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v4, :cond_4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    mul-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v2    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    :cond_5
    :goto_3
    goto :goto_4

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 134
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 135
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v4, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    :cond_6
    mul-float/2addr v3, v1

    iput v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 139
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_7
    :goto_4
    return-void
.end method

.method public final updateToNextProvince(I)V
    .locals 2
    .param p1, "civID"    # I

    .line 537
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 539
    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine(ZI)V

    .line 540
    return-void
.end method
