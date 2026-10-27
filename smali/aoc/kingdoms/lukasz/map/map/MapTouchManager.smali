.class public Laoc/kingdoms/lukasz/map/map/MapTouchManager;
.super Ljava/lang/Object;
.source "MapTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;,
        Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;
    }
.end annotation


# static fields
.field protected static reverseDirectionX:Z

.field protected static reverseDirectionY:Z


# instance fields
.field public actionDownPosX:I

.field public actionDownPosY:I

.field public disableMovingMap:Z

.field public enableSelectMode:Z

.field public iSelectBoxHeight:I

.field public iSelectBoxWidth:I

.field public iSelectBoxX:I

.field public iSelectBoxY:I

.field public iStartMovePosX:I

.field public iStartMovePosY:I

.field private lActionDownTime:J

.field public mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

.field public mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

.field public mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

.field public mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

.field public selectMode:Z

.field public updateStartMovePosX:Z

.field public updateStartMovePosY:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionX:Z

    .line 36
    sput-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionY:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    .line 39
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->lActionDownTime:J

    .line 46
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->disableMovingMap:Z

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->enableSelectMode:Z

    .line 54
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    .line 49
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePos()V

    .line 50
    return-void
.end method

.method public static final actionUpSelectModeIsInBox(IIIIII)Z
    .registers 11
    .param p0, "nProvinceID"    # I
    .param p1, "nArmyID"    # I
    .param p2, "nMinX"    # I
    .param p3, "nMinY"    # I
    .param p4, "nMaxX"    # I
    .param p5, "nMaxY"    # I

    .line 1305
    :try_start_0
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    .line 1306
    .local v0, "nX":I
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    .line 1307
    .local v1, "nY":I
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v2

    .line 1308
    .local v2, "nWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_35

    .line 1311
    .local v3, "nHeight":I
    if-ge v0, p4, :cond_1e

    if-gt v0, p2, :cond_26

    :cond_1e
    add-int v4, v0, v2

    if-ge v4, p4, :cond_34

    add-int v4, v0, v2

    if-le v4, p2, :cond_34

    .line 1312
    :cond_26
    if-le v1, p3, :cond_2a

    if-lt v1, p5, :cond_32

    :cond_2a
    add-int v4, v1, v3

    if-le v4, p3, :cond_34

    add-int v4, v1, v3

    if-ge v4, p5, :cond_34

    .line 1313
    :cond_32
    const/4 v4, 0x1

    return v4

    .line 1318
    .end local v0    # "nX":I
    .end local v1    # "nY":I
    .end local v2    # "nWidth":I
    .end local v3    # "nHeight":I
    :cond_34
    goto :goto_39

    .line 1316
    :catch_35
    move-exception v0

    .line 1317
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1320
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method public static final actionUpSelectModeIsInBox_Center(IIIII)Z
    .registers 10
    .param p0, "nProvinceID"    # I
    .param p1, "nMinX"    # I
    .param p2, "nMinY"    # I
    .param p3, "nMaxX"    # I
    .param p4, "nMaxY"    # I

    .line 1325
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosX_2(I)I

    move-result v0

    .line 1326
    .local v0, "nX":I
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosY_2(I)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_25

    .line 1327
    .local v1, "nY":I
    const/4 v2, 0x1

    .line 1328
    .local v2, "nWidth":I
    const/4 v3, 0x1

    .line 1331
    .local v3, "nHeight":I
    if-ge v0, p3, :cond_e

    if-gt v0, p1, :cond_16

    :cond_e
    add-int v4, v0, v2

    if-ge v4, p3, :cond_24

    add-int v4, v0, v2

    if-le v4, p1, :cond_24

    .line 1332
    :cond_16
    if-le v1, p2, :cond_1a

    if-lt v1, p4, :cond_22

    :cond_1a
    add-int v4, v1, v3

    if-le v4, p2, :cond_24

    add-int v4, v1, v3

    if-ge v4, p4, :cond_24

    .line 1333
    :cond_22
    const/4 v4, 0x1

    return v4

    .line 1338
    .end local v0    # "nX":I
    .end local v1    # "nY":I
    .end local v2    # "nWidth":I
    .end local v3    # "nHeight":I
    :cond_24
    goto :goto_29

    .line 1336
    :catch_25
    move-exception v0

    .line 1337
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1340
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final Scroll(I)V
    .registers 3
    .param p1, "amount"    # I

    .line 1346
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapScale;->scrollScale(I)V

    .line 1347
    return-void
.end method

.method public final actionDown(IIII)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I
    .param p4, "button"    # I

    .line 99
    :try_start_0
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setActionDownPosXY(II)V

    .line 101
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->enableSelectMode:Z

    if-eqz v0, :cond_1c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_SELECT_ARMY_BUTTON:I

    if-ne p4, v0, :cond_1c

    .line 102
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    .line 103
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    .line 106
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    .line 108
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    .line 109
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->setCursorDrag()V

    .line 111
    return-void

    .line 114
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    .line 117
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->getScrollingTheMap()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_37

    .line 122
    :cond_2c
    :try_start_2c
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionDown_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    invoke-interface {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;->extraAction(IIII)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_32

    .line 125
    goto :goto_36

    .line 123
    :catch_32
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_33
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 128
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_36
    goto :goto_3b

    .line 126
    :catch_37
    move-exception v0

    .line 127
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public final actionMove(III)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I

    .line 135
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz v0, :cond_13

    sget v0, Laoc/kingdoms/lukasz/jakowski/Touch;->buttonTouch:I

    if-nez v0, :cond_13

    .line 136
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    .line 137
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I

    .line 138
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    .line 140
    return-void

    .line 143
    :cond_13
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_24

    .line 144
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    sub-int v0, p1, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    .line 145
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    sub-int v0, p2, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    .line 147
    return-void

    .line 150
    :cond_24
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionMoveMap(III)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 154
    goto :goto_2c

    .line 152
    :catch_28
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 155
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final actionMove(IIII)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPosX2"    # I
    .param p4, "nPosY2"    # I

    .line 185
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    if-nez v0, :cond_21

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getEnableScaling()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 186
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getStartScalePosY()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 187
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0, p1, p3, p2, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->startScaleTheMap(IIII)V

    goto :goto_21

    .line 189
    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0, p1, p3, p2, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleTheMap(IIII)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 194
    :cond_21
    :goto_21
    goto :goto_26

    .line 192
    :catch_22
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 195
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method protected final actionMoveMap(III)V
    .registers 9
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I

    .line 159
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->disableMovingMap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_43

    .line 160
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    if-eqz v0, :cond_16

    .line 161
    :cond_f
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosXY(II)V

    .line 162
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    .line 163
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    .line 166
    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosX:I

    const/4 v3, 0x0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result v3

    float-to-int v3, v3

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;->getNewPos(II)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 167
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosY:I

    const/4 v3, 0x1

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result v3

    float-to-int v3, v3

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;->getNewPos(II)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_4e

    goto :goto_4d

    .line 171
    :cond_43
    :try_start_43
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionMove_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    invoke-interface {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;->extraAction(IIII)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_49

    .line 174
    goto :goto_4d

    .line 172
    :catch_49
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 178
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4d
    goto :goto_52

    .line 176
    :catch_4e
    move-exception v0

    .line 177
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_52
    return-void
.end method

.method public final actionUp(IIII)V
    .registers 13
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I
    .param p4, "button"    # I

    .line 201
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getEnableScaling()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_MOVE:I

    if-eq p4, v0, :cond_11

    if-ne p4, v1, :cond_18

    .line 202
    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleOfMap(J)V

    .line 205
    :cond_18
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_SELECT_ARMY_BUTTON:I

    if-eq p4, v0, :cond_29

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_32

    .line 207
    :cond_29
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    .line 208
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->setCursorDefault()V

    .line 211
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectMode(II)V

    .line 213
    return-void

    .line 219
    :cond_32
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_9cd

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-nez v0, :cond_9cd

    .line 221
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_9cd

    .line 222
    const/4 v0, -0x1

    if-ne p4, v1, :cond_155

    .line 223
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v5, :cond_5b

    .line 225
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setProvinceID_PPM(II)V

    .line 226
    return-void

    .line 228
    :cond_5b
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SELL_PROVINCES:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-eq v5, v6, :cond_9cd

    .line 238
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v5, :cond_c5

    .line 239
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 240
    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v5, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    .line 250
    :cond_c5
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v5

    if-eqz v5, :cond_122

    .line 251
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v5, :cond_ed

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-ne v5, v6, :cond_ed

    .line 252
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    .line 254
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 255
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    goto :goto_154

    .line 258
    :cond_ed
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 259
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    .line 261
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 263
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 264
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eqz v0, :cond_154

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v0, v2, :cond_154

    .line 265
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 267
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 268
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 270
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    goto :goto_154

    .line 276
    :cond_122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 278
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 280
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 281
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eqz v0, :cond_154

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v0, v2, :cond_154

    .line 282
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 284
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 285
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 287
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 292
    :cond_154
    :goto_154
    return-void

    .line 296
    :cond_155
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SELL_PROVINCES:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-eq v5, v6, :cond_9cd

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-eq v5, v6, :cond_9cd

    .line 313
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9cd

    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v5, :cond_9cd

    .line 314
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_4fe

    .line 315
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    if-ltz v5, :cond_263

    .line 316
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleID(ILjava/lang/String;)I

    move-result v5

    .line 318
    .local v5, "tBattleID":I
    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v6

    if-eqz v6, :cond_261

    .line 319
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    .line 320
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    .line 322
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result v1

    if-eqz v1, :cond_23e

    .line 323
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    .line 325
    :cond_23e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v1

    if-eqz v1, :cond_24b

    .line 326
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    .line 329
    :cond_24b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    .line 330
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Battle()V

    .line 332
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 333
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 335
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 336
    return-void

    .line 338
    .end local v5    # "tBattleID":I
    :cond_261
    goto/16 :goto_9cd

    .line 339
    :cond_263
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    if-ltz v5, :cond_2be

    .line 340
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v5

    if-eqz v5, :cond_9cd

    .line 341
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result v1

    if-eqz v1, :cond_283

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    if-ne v1, v3, :cond_283

    .line 342
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    goto :goto_2bd

    .line 345
    :cond_283
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    .line 347
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Battle()Z

    move-result v1

    if-eqz v1, :cond_294

    .line 348
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    .line 350
    :cond_294
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v1

    if-eqz v1, :cond_2a1

    .line 351
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    .line 354
    :cond_2a1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    .line 355
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Siege()V

    .line 357
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SIEGE:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 359
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 360
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 362
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 364
    :goto_2bd
    return-void

    .line 368
    :cond_2be
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v5, :cond_419

    .line 369
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1, p2, v5, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v5

    if-eqz v5, :cond_9cd

    .line 370
    const/4 v3, 0x0

    .line 372
    .local v3, "selectAllArmiesOfCivInProvince":Z
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_30c

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-le v4, v1, :cond_30c

    .line 374
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30c

    .line 375
    const/4 v3, 0x1

    .line 379
    :cond_30c
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v1, :cond_35f

    .line 380
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 382
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 383
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 384
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 385
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 387
    iget-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->isAlreadyActiveArmy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_357

    .line 388
    iget-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->removeActiveArmy(Ljava/lang/String;)V

    goto :goto_35a

    .line 391
    :cond_357
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 394
    :goto_35a
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 395
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    goto/16 :goto_40b

    .line 397
    :cond_35f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 399
    if-eqz v3, :cond_3cc

    .line 400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_365
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_3cb

    .line 401
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, v4, :cond_3c8

    .line 402
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 404
    .local v2, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 405
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 406
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 407
    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 409
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 410
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 400
    .end local v2    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_3c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_365

    .end local v1    # "i":I
    :cond_3cb
    goto :goto_40b

    .line 415
    :cond_3cc
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 417
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 418
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 419
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 420
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 422
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 424
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 428
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :goto_40b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 429
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 431
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 433
    return-void

    .line 437
    .end local v3    # "selectAllArmiesOfCivInProvince":Z
    :cond_419
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ltz v5, :cond_9cd

    .line 438
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v5

    if-eqz v5, :cond_9cd

    .line 439
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 441
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 442
    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v5, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    .line 444
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 446
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v5

    if-eqz v5, :cond_4ab

    .line 447
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_49e

    .line 448
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 449
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    .line 451
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_492

    .line 452
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_492

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v2, v5, :cond_492

    .line 453
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 455
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 456
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 458
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 462
    :cond_492
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_4f5

    .line 465
    :cond_49e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    .line 466
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_4f5

    .line 470
    :cond_4ab
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 472
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_4ea

    .line 473
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_4ea

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v2, v5, :cond_4ea

    .line 474
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 476
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 477
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 479
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 483
    :cond_4ea
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 486
    :goto_4f5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 487
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 488
    return-void

    .line 500
    :cond_4fe
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4ff
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleSize()I

    move-result v6

    if-ge v5, v6, :cond_554

    .line 501
    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v6

    if-eqz v6, :cond_551

    .line 502
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    .line 503
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    .line 505
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result v1

    if-eqz v1, :cond_52e

    .line 506
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    .line 508
    :cond_52e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v1

    if-eqz v1, :cond_53b

    .line 509
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    .line 512
    :cond_53b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    .line 513
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Battle()V

    .line 515
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 516
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 518
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 519
    return-void

    .line 500
    :cond_551
    add-int/lit8 v5, v5, 0x1

    goto :goto_4ff

    .line 528
    .end local v5    # "i":I
    :cond_554
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_555
    sget v6, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v5, v6, :cond_5d1

    .line 529
    sget-object v6, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p1, p2, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v6

    if-eqz v6, :cond_5ce

    .line 530
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result v1

    if-eqz v1, :cond_589

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_589

    .line 531
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    goto :goto_5cd

    .line 534
    :cond_589
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    .line 536
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Battle()Z

    move-result v1

    if-eqz v1, :cond_5a4

    .line 537
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    .line 539
    :cond_5a4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v1

    if-eqz v1, :cond_5b1

    .line 540
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    .line 543
    :cond_5b1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    .line 544
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Siege()V

    .line 546
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SIEGE:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 548
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 549
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 551
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 553
    :goto_5cd
    return-void

    .line 528
    :cond_5ce
    add-int/lit8 v5, v5, 0x1

    goto :goto_555

    .line 561
    .end local v5    # "i":I
    :cond_5d1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5d2
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_64a

    .line 562
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_647

    .line 563
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5e5
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_647

    .line 564
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_644

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_644

    .line 565
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 566
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 568
    .local v0, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 569
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 570
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 571
    iput v6, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 573
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 575
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 576
    return-void

    .line 563
    .end local v0    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_644
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e5

    .line 561
    .end local v6    # "j":I
    :cond_647
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d2

    .line 582
    .end local v5    # "i":I
    :cond_64a
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_64b
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_6c3

    .line 583
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_6c0

    .line 584
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_65e
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_6c0

    .line 585
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_6bd

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_6bd

    .line 586
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 587
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 589
    .restart local v0    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 590
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 591
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 592
    iput v6, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 594
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 596
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 597
    return-void

    .line 584
    .end local v0    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_6bd
    add-int/lit8 v6, v6, 0x1

    goto :goto_65e

    .line 582
    .end local v6    # "j":I
    :cond_6c0
    add-int/lit8 v5, v5, 0x1

    goto :goto_64b

    .line 603
    .end local v5    # "i":I
    :cond_6c3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6c4
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_73c

    .line 604
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_739

    .line 605
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6d7
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_739

    .line 606
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_736

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_736

    .line 607
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 608
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 610
    .restart local v0    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 611
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 612
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 613
    iput v6, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 615
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 617
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 618
    return-void

    .line 605
    .end local v0    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_736
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d7

    .line 603
    .end local v6    # "j":I
    :cond_739
    add-int/lit8 v5, v5, 0x1

    goto :goto_6c4

    .line 624
    .end local v5    # "i":I
    :cond_73c
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_73d
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_7b5

    .line 625
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_7b2

    .line 626
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_750
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_7b2

    .line 627
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_7af

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_7af

    .line 628
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 629
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 631
    .restart local v0    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 632
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 633
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 634
    iput v6, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 636
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 638
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 639
    return-void

    .line 626
    .end local v0    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_7af
    add-int/lit8 v6, v6, 0x1

    goto :goto_750

    .line 624
    .end local v6    # "j":I
    :cond_7b2
    add-int/lit8 v5, v5, 0x1

    goto :goto_73d

    .line 647
    .end local v5    # "i":I
    :cond_7b5
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7b6
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_8c1

    .line 648
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v6, :cond_8bd

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v6

    if-lez v6, :cond_8bd

    .line 649
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {p1, p2, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v6

    if-eqz v6, :cond_8bd

    .line 650
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 652
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    sput v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    .line 654
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 655
    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    .line 657
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 659
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v6

    if-eqz v6, :cond_86a

    .line 660
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_85d

    .line 661
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 662
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    .line 664
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_851

    .line 665
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_851

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v2, v6, :cond_851

    .line 666
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 668
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 669
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 671
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 675
    :cond_851
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_8b4

    .line 678
    :cond_85d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    .line 679
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_8b4

    .line 683
    :cond_86a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 685
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_8a9

    .line 686
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_8a9

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v2, v6, :cond_8a9

    .line 687
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 689
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 690
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 692
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 696
    :cond_8a9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 699
    :goto_8b4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 700
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 701
    return-void

    .line 647
    :cond_8bd
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7b6

    .line 706
    .end local v5    # "i":I
    :cond_8c1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8c2
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_9cd

    .line 707
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v6, :cond_9c9

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v6

    if-lez v6, :cond_9c9

    .line 708
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {p1, p2, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v6

    if-eqz v6, :cond_9c9

    .line 709
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 711
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    sput v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    .line 713
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 714
    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    .line 716
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 718
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v6

    if-eqz v6, :cond_976

    .line 719
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_969

    .line 720
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 721
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    .line 723
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_95d

    .line 724
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_95d

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v2, v6, :cond_95d

    .line 725
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 727
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 728
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 730
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 734
    :cond_95d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_9c0

    .line 737
    :cond_969
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    .line 738
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_9c0

    .line 742
    :cond_976
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 744
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_9b5

    .line 745
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_9b5

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v2, v6, :cond_9b5

    .line 746
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 748
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 749
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 751
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 755
    :cond_9b5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 758
    :goto_9c0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 759
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 760
    return-void

    .line 706
    :cond_9c9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8c2

    .line 775
    .end local v5    # "i":I
    :cond_9cd
    :goto_9cd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_MOVE:I

    if-eq p4, v0, :cond_9db

    if-ne p4, v1, :cond_ac1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->enableRightClick()Z

    move-result v0

    if-eqz v0, :cond_ac1

    .line 776
    :cond_9db
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_abc

    .line 777
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_ab6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_ab6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_a05

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 779
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_a05

    goto/16 :goto_ab6

    .line 783
    :cond_a05
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v2, :cond_ab0

    .line 784
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_ac1

    .line 785
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-nez v0, :cond_aaa

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-eqz v0, :cond_a27

    goto/16 :goto_aaa

    .line 788
    :cond_a27
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_a32

    .line 789
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto/16 :goto_ac1

    .line 792
    :cond_a32
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 793
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    .line 795
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-eqz v0, :cond_a5d

    .line 796
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->enabledByScaleOut:Z

    .line 798
    .local v0, "tEnabledByScaleOut":Z
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 799
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    .line 801
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v5

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 803
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->enabledByScaleOut:Z

    .line 804
    .end local v0    # "tEnabledByScaleOut":Z
    goto :goto_a6f

    .line 806
    :cond_a5d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 807
    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->enabledByScaleOut:Z

    .line 809
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 812
    :goto_a6f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-eqz v0, :cond_ac1

    .line 813
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_ac1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v0, v2, :cond_ac1

    .line 814
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 816
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 817
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 819
    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    goto :goto_ac1

    .line 786
    :cond_aaa
    :goto_aaa
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto :goto_ac1

    .line 826
    :cond_ab0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto :goto_ac1

    .line 781
    :cond_ab6
    :goto_ab6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto :goto_ac1

    .line 830
    :cond_abc
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    .line 836
    :cond_ac1
    :goto_ac1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_ad4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    if-nez v0, :cond_ad4

    .line 837
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->startScrollingTheMap()V
    :try_end_ad4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ad4} :catch_adf

    .line 841
    :cond_ad4
    :try_start_ad4
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    invoke-interface {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;->extraAction(IIII)V
    :try_end_ad9
    .catch Ljava/lang/Exception; {:try_start_ad4 .. :try_end_ad9} :catch_ada

    .line 844
    goto :goto_ade

    .line 842
    :catch_ada
    move-exception v0

    .line 843
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_adb
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_ade
    .catch Ljava/lang/Exception; {:try_start_adb .. :try_end_ade} :catch_adf

    .line 847
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ade
    goto :goto_ae3

    .line 845
    :catch_adf
    move-exception v0

    .line 846
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 848
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ae3
    return-void
.end method

.method public final actionUpSelectMode(II)V
    .registers 16
    .param p1, "nMaxX"    # I
    .param p2, "nMaxY"    # I

    .line 856
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    if-eq v0, p1, :cond_d7f

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    if-ne v0, p2, :cond_a

    goto/16 :goto_d7f

    .line 860
    :cond_a
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    if-le v0, p1, :cond_13

    .line 861
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    .line 862
    .local v0, "tX":I
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    .line 863
    move p1, v0

    .line 866
    .end local v0    # "tX":I
    :cond_13
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    if-le v0, p2, :cond_1c

    .line 867
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    .line 868
    .local v0, "tY":I
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    .line 869
    move p2, v0

    .line 872
    .end local v0    # "tY":I
    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c5d

    .line 873
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_d80

    const-string v3, "InsufficientLegacy"

    const-string v4, "InsufficientGold"

    const/16 v5, 0x64

    const-string v6, ": "

    if-ne v0, v2, :cond_265

    .line 874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_38
    :try_start_38
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_d80

    const-string v2, " / "

    const-string v7, "MaximumEconomy"

    const-string v8, "IncreasePopulationGrowthRate"

    const/16 v9, 0xa

    if-ge v0, v1, :cond_151

    .line 875
    :try_start_44
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v10, :cond_14d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v10, v11, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 876
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 877
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    invoke-virtual {v1, v8, v10}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 878
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v10

    invoke-static {v10, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxEconomy(I)F

    move-result v8

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-virtual {v1, v7, v2, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_14d

    .line 880
    :cond_cc
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10d

    .line 881
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_14d

    .line 883
    :cond_10d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince()Z

    move-result v1

    if-nez v1, :cond_146

    .line 884
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_14d

    .line 887
    :cond_146
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Economy(I)V

    .line 874
    :cond_14d
    :goto_14d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_38

    .line 892
    .end local v0    # "i":I
    :cond_151
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_152
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_263

    .line 893
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v10, :cond_25f

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v10, v11, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_25f

    .line 894
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v1

    if-eqz v1, :cond_1de

    .line 895
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    invoke-virtual {v1, v10, v11}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 896
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    invoke-static {v12, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxEconomy(I)F

    move-result v12

    invoke-static {v12, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-virtual {v1, v10, v11, v12}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_25f

    .line 898
    :cond_1de
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v10

    cmpg-float v1, v1, v10

    if-gez v1, :cond_21f

    .line 899
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v11

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v10, v11, v12}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_25f

    .line 901
    :cond_21f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince()Z

    move-result v1

    if-nez v1, :cond_258

    .line 902
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v11

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v10, v11, v12}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_25f

    .line 905
    :cond_258
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Economy(I)V

    .line 892
    :cond_25f
    :goto_25f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_152

    .end local v0    # "i":I
    :cond_263
    goto/16 :goto_d7e

    .line 910
    :cond_265
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-ne v0, v2, :cond_2ab

    .line 911
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_270
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_28c

    .line 912
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_289

    .line 913
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionPeaceView(IZ)V

    .line 911
    :cond_289
    add-int/lit8 v0, v0, 0x1

    goto :goto_270

    .line 917
    .end local v0    # "i":I
    :cond_28c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_28d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_2a9

    .line 918
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_2a6

    .line 919
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionPeaceView(IZ)V

    .line 917
    :cond_2a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_28d

    .end local v0    # "i":I
    :cond_2a9
    goto/16 :goto_d7e

    .line 923
    :cond_2ab
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    if-ne v0, v2, :cond_2f6

    .line 924
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2b6
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_2d2

    .line 925
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_2cf

    .line 926
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionReleaseVassal(IZ)V

    .line 924
    :cond_2cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b6

    .line 930
    .end local v0    # "i":I
    :cond_2d2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2d3
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_2ef

    .line 931
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_2ec

    .line 932
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionReleaseVassal(IZ)V

    .line 930
    :cond_2ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d3

    .line 936
    .end local v0    # "i":I
    :cond_2ef
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ReleaseAVassal_SavePos()V

    goto/16 :goto_d7e

    .line 938
    :cond_2f6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_360

    .line 939
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_301
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_32f

    .line 940
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_32c

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_32c

    .line 941
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionBuilding(I)V

    .line 939
    :cond_32c
    add-int/lit8 v0, v0, 0x1

    goto :goto_301

    .line 945
    .end local v0    # "i":I
    :cond_32f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_330
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_35e

    .line 946
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_35b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_35b

    .line 947
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionBuilding(I)V

    .line 945
    :cond_35b
    add-int/lit8 v0, v0, 0x1

    goto :goto_330

    .end local v0    # "i":I
    :cond_35e
    goto/16 :goto_d7e

    .line 951
    :cond_360
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-ne v0, v1, :cond_4c0

    .line 952
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_36b
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_414

    .line 953
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_410

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v7, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_410

    .line 954
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3d0

    .line 955
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_410

    .line 957
    :cond_3d0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseManpowerInProvince()Z

    move-result v1

    if-nez v1, :cond_409

    .line 958
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_410

    .line 961
    :cond_409
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Manpower(I)V

    .line 952
    :cond_410
    :goto_410
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_36b

    .line 966
    .end local v0    # "i":I
    :cond_414
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_415
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_4be

    .line 967
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_4ba

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v7, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_4ba

    .line 968
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_47a

    .line 969
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4ba

    .line 971
    :cond_47a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseManpowerInProvince()Z

    move-result v1

    if-nez v1, :cond_4b3

    .line 972
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4ba

    .line 975
    :cond_4b3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Manpower(I)V

    .line 966
    :cond_4ba
    :goto_4ba
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_415

    .end local v0    # "i":I
    :cond_4be
    goto/16 :goto_d7e

    .line 980
    :cond_4c0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-ne v0, v1, :cond_59c

    .line 981
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4cb
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_532

    .line 982
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_52f

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_52f

    .line 983
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince()Z

    move-result v1

    if-nez v1, :cond_528

    .line 984
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_52f

    .line 987
    :cond_528
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_GrowthRate(I)V

    .line 981
    :cond_52f
    :goto_52f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4cb

    .line 992
    .end local v0    # "i":I
    :cond_532
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_533
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_59a

    .line 993
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_597

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_597

    .line 994
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince()Z

    move-result v1

    if-nez v1, :cond_590

    .line 995
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_597

    .line 998
    :cond_590
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_GrowthRate(I)V

    .line 992
    :cond_597
    :goto_597
    add-int/lit8 v0, v0, 0x1

    goto :goto_533

    .end local v0    # "i":I
    :cond_59a
    goto/16 :goto_d7e

    .line 1003
    :cond_59c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_61a

    .line 1004
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5a7
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_5df

    .line 1005
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_5dc

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_5dc

    .line 1006
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->addDevelopInfrastructureCost(I)Z

    move-result v1

    if-eqz v1, :cond_5dc

    .line 1007
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Infrastructure(I)V

    .line 1004
    :cond_5dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a7

    .line 1012
    .end local v0    # "i":I
    :cond_5df
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5e0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_618

    .line 1013
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_615

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_615

    .line 1014
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->addDevelopInfrastructureCost(I)Z

    move-result v1

    if-eqz v1, :cond_615

    .line 1015
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Infrastructure(I)V

    .line 1012
    :cond_615
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e0

    .end local v0    # "i":I
    :cond_618
    goto/16 :goto_d7e

    .line 1020
    :cond_61a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-ne v0, v1, :cond_77a

    .line 1021
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_625
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_6ce

    .line 1022
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_6ca

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v7, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_6ca

    .line 1023
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_68a

    .line 1024
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6ca

    .line 1026
    :cond_68a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v1

    if-nez v1, :cond_6c3

    .line 1027
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6ca

    .line 1030
    :cond_6c3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_TaxEfficiency(I)V

    .line 1021
    :cond_6ca
    :goto_6ca
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_625

    .line 1035
    .end local v0    # "i":I
    :cond_6ce
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6cf
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_778

    .line 1036
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_774

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v7, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_774

    .line 1037
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_734

    .line 1038
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_774

    .line 1040
    :cond_734
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v1

    if-nez v1, :cond_76d

    .line 1041
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v7

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_774

    .line 1044
    :cond_76d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_TaxEfficiency(I)V

    .line 1035
    :cond_774
    :goto_774
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6cf

    .end local v0    # "i":I
    :cond_778
    goto/16 :goto_d7e

    .line 1049
    :cond_77a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-ne v0, v1, :cond_894

    .line 1050
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_785
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_80b

    .line 1051
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_807

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_807

    .line 1052
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-ne v1, v2, :cond_7cc

    goto :goto_807

    .line 1055
    :cond_7cc
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addReligionConversion()Z

    move-result v1

    if-nez v1, :cond_807

    .line 1056
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1050
    :cond_807
    :goto_807
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_785

    .line 1061
    .end local v0    # "i":I
    :cond_80b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_80c
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_892

    .line 1062
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_88e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_88e

    .line 1063
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-ne v1, v2, :cond_853

    goto :goto_88e

    .line 1066
    :cond_853
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addReligionConversion()Z

    move-result v1

    if-nez v1, :cond_88e

    .line 1067
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1061
    :cond_88e
    :goto_88e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_80c

    .end local v0    # "i":I
    :cond_892
    goto/16 :goto_d7e

    .line 1072
    :cond_894
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v0, v1, :cond_99e

    .line 1073
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_89f
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_91d

    .line 1074
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_91a

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_91a

    .line 1075
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v1

    if-nez v1, :cond_91a

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_8e2

    goto :goto_91a

    .line 1078
    :cond_8e2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addCoreCreation()Z

    move-result v1

    if-nez v1, :cond_91a

    .line 1079
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1073
    :cond_91a
    :goto_91a
    add-int/lit8 v0, v0, 0x1

    goto :goto_89f

    .line 1084
    .end local v0    # "i":I
    :cond_91d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_91e
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_99c

    .line 1085
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_999

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_999

    .line 1086
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v1

    if-nez v1, :cond_999

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_961

    goto :goto_999

    .line 1089
    :cond_961
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addCoreCreation()Z

    move-result v1

    if-nez v1, :cond_999

    .line 1090
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1084
    :cond_999
    :goto_999
    add-int/lit8 v0, v0, 0x1

    goto :goto_91e

    .end local v0    # "i":I
    :cond_99c
    goto/16 :goto_d7e

    .line 1095
    :cond_99e
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_a23

    .line 1096
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-nez v0, :cond_9e7

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-eqz v0, :cond_9ab

    goto :goto_9e7

    .line 1110
    :cond_9ab
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9ac
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_9c8

    .line 1111
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_9c5

    .line 1112
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_AddProvince(I)V

    .line 1110
    :cond_9c5
    add-int/lit8 v0, v0, 0x1

    goto :goto_9ac

    .line 1116
    .end local v0    # "i":I
    :cond_9c8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9c9
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_9e5

    .line 1117
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_9e2

    .line 1118
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_AddProvince(I)V

    .line 1116
    :cond_9e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c9

    .end local v0    # "i":I
    :cond_9e5
    goto/16 :goto_d7e

    .line 1097
    :cond_9e7
    :goto_9e7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9e8
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_a04

    .line 1098
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_a01

    .line 1099
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_RemoveProvince(I)V

    .line 1097
    :cond_a01
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e8

    .line 1103
    .end local v0    # "i":I
    :cond_a04
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a05
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_a21

    .line 1104
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_a1e

    .line 1105
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_RemoveProvince(I)V

    .line 1103
    :cond_a1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a05

    .end local v0    # "i":I
    :cond_a21
    goto/16 :goto_d7e

    .line 1124
    :cond_a23
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    sub-int v0, p1, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    if-le v0, v1, :cond_a30

    .line 1125
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideInGameMenus()V

    .line 1128
    :cond_a30
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-nez v0, :cond_a37

    .line 1129
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 1132
    :cond_a37
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a38
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_abc

    .line 1133
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_ab8

    .line 1134
    const/4 v1, 0x0

    move v7, v1

    .local v7, "j":I
    :goto_a4c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    if-ge v7, v1, :cond_ab8

    .line 1135
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_a6f

    .line 1136
    goto :goto_ab5

    .line 1139
    :cond_a6f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v2, v7

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_ab5

    .line 1140
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 1142
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 1143
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 1144
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1145
    iput v7, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1147
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 1148
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 1134
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_ab5
    :goto_ab5
    add-int/lit8 v7, v7, 0x1

    goto :goto_a4c

    .line 1132
    .end local v7    # "j":I
    :cond_ab8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a38

    .line 1154
    .end local v0    # "i":I
    :cond_abc
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_abd
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_b41

    .line 1155
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_b3d

    .line 1156
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "j":I
    :goto_ad1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    if-ge v7, v1, :cond_b3d

    .line 1157
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_af4

    .line 1158
    goto :goto_b3a

    .line 1161
    :cond_af4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v2, v7

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_b3a

    .line 1162
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 1164
    .restart local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 1165
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 1166
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1167
    iput v7, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1169
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 1170
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 1156
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_b3a
    :goto_b3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_ad1

    .line 1154
    .end local v7    # "j":I
    :cond_b3d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_abd

    .line 1176
    .end local v0    # "i":I
    :cond_b41
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b42
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_bc6

    .line 1177
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_bc2

    .line 1178
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "j":I
    :goto_b56
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    if-ge v7, v1, :cond_bc2

    .line 1179
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_b79

    .line 1180
    goto :goto_bbf

    .line 1183
    :cond_b79
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v2, v7

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_bbf

    .line 1184
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 1186
    .restart local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 1187
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 1188
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1189
    iput v7, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1191
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 1192
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 1178
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_bbf
    :goto_bbf
    add-int/lit8 v7, v7, 0x1

    goto :goto_b56

    .line 1176
    .end local v7    # "j":I
    :cond_bc2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b42

    .line 1198
    .end local v0    # "i":I
    :cond_bc6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_bc7
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_c4b

    .line 1199
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_c47

    .line 1200
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "j":I
    :goto_bdb
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    if-ge v7, v1, :cond_c47

    .line 1201
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_bfe

    .line 1202
    goto :goto_c44

    .line 1205
    :cond_bfe
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v2, v7

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_c44

    .line 1206
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 1208
    .restart local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 1209
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 1210
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1211
    iput v7, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1213
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 1214
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 1200
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_c44
    :goto_c44
    add-int/lit8 v7, v7, 0x1

    goto :goto_bdb

    .line 1198
    .end local v7    # "j":I
    :cond_c47
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_bc7

    .line 1220
    .end local v0    # "i":I
    :cond_c4b
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 1222
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v0, :cond_d7e

    .line 1223
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 1224
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    goto/16 :goto_d7e

    .line 1230
    :cond_c5d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssign()Z

    move-result v0

    if-eqz v0, :cond_ce1

    .line 1231
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1233
    .local v0, "tActive":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c68
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_ca2

    .line 1234
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v3, v4, v5, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v3

    if-eqz v3, :cond_c9f

    .line 1235
    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/CFG;->ASSIGN_PROVINCES_NEUTRAL_ONLY:Z

    if-nez v3, :cond_c88

    .line 1236
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1237
    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->actionUpdateData(Z)V

    goto :goto_c9f

    .line 1239
    :cond_c88
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-nez v3, :cond_c9f

    .line 1240
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1241
    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->actionUpdateData(Z)V

    .line 1233
    :cond_c9f
    :goto_c9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c68

    .line 1246
    .end local v2    # "i":I
    :cond_ca2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ca3
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_cdd

    .line 1247
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v3, v4, v5, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v3

    if-eqz v3, :cond_cda

    .line 1248
    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/CFG;->ASSIGN_PROVINCES_NEUTRAL_ONLY:Z

    if-nez v3, :cond_cc3

    .line 1249
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1250
    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->actionUpdateData(Z)V

    goto :goto_cda

    .line 1252
    :cond_cc3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-nez v3, :cond_cda

    .line 1253
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1254
    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->actionUpdateData(Z)V

    .line 1246
    :cond_cda
    :goto_cda
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca3

    .line 1259
    .end local v2    # "i":I
    :cond_cdd
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1260
    .end local v0    # "tActive":I
    goto/16 :goto_d7e

    .line 1261
    :cond_ce1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioWasteland()Z

    move-result v0

    if-eqz v0, :cond_d2c

    .line 1262
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1264
    .restart local v0    # "tActive":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_cec
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_d0a

    .line 1265
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v3, v4, v5, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v3

    if-eqz v3, :cond_d07

    .line 1266
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1267
    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->actionUpdateData(Z)V

    .line 1264
    :cond_d07
    add-int/lit8 v2, v2, 0x1

    goto :goto_cec

    .line 1271
    .end local v2    # "i":I
    :cond_d0a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d0b
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_d29

    .line 1272
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v3, v4, v5, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v3

    if-eqz v3, :cond_d26

    .line 1273
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1274
    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->actionUpdateData(Z)V

    .line 1271
    :cond_d26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d0b

    .line 1278
    .end local v2    # "i":I
    :cond_d29
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1279
    .end local v0    # "tActive":I
    goto :goto_d7e

    .line 1280
    :cond_d2c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorContinents()Z

    move-result v0

    if-eqz v0, :cond_d7e

    .line 1281
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 1284
    .restart local v0    # "tActive":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d37
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_d59

    .line 1285
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_d56

    .line 1286
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents;->currentContinentID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setContinent(I)V

    .line 1284
    :cond_d56
    add-int/lit8 v1, v1, 0x1

    goto :goto_d37

    .line 1290
    .end local v1    # "i":I
    :cond_d59
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d5a
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_d7c

    .line 1291
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_d79

    .line 1292
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents;->currentContinentID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setContinent(I)V

    .line 1290
    :cond_d79
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5a

    .line 1296
    .end local v1    # "i":I
    :cond_d7c
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I
    :try_end_d7e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_d7e} :catch_d80

    .line 1300
    .end local v0    # "tActive":I
    :cond_d7e
    :goto_d7e
    goto :goto_d84

    .line 857
    :cond_d7f
    :goto_d7f
    return-void

    .line 1298
    :catch_d80
    move-exception v0

    .line 1299
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1301
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d84
    return-void
.end method

.method public final buildReversePos()V
    .registers 1

    .line 1379
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosX()V

    .line 1380
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosY()V

    .line 1381
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosX2()V

    .line 1382
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosY2()V

    .line 1383
    return-void
.end method

.method protected final buildReversePosX()V
    .registers 2

    .line 1386
    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionX:Z

    if-eqz v0, :cond_c

    .line 1387
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    goto :goto_13

    .line 1394
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    .line 1401
    :goto_13
    return-void
.end method

.method protected final buildReversePosX2()V
    .registers 2

    .line 1422
    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionX:Z

    if-eqz v0, :cond_c

    .line 1423
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    goto :goto_13

    .line 1430
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    .line 1437
    :goto_13
    return-void
.end method

.method protected final buildReversePosY()V
    .registers 2

    .line 1404
    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionY:Z

    if-eqz v0, :cond_c

    .line 1405
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    goto :goto_13

    .line 1412
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    .line 1419
    :goto_13
    return-void
.end method

.method protected final buildReversePosY2()V
    .registers 2

    .line 1440
    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionY:Z

    if-eqz v0, :cond_c

    .line 1441
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    goto :goto_13

    .line 1448
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$8;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$8;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    .line 1455
    :goto_13
    return-void
.end method

.method public final drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 65
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_72

    .line 67
    :try_start_4
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    .line 69
    .local v0, "nX":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 70
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    goto :goto_15

    .line 71
    :cond_e
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    if-gez v1, :cond_15

    .line 72
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    add-int/2addr v0, v1

    .line 75
    :cond_15
    :goto_15
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    .line 77
    .local v1, "nY":I
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    if-nez v3, :cond_1e

    .line 78
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    goto :goto_27

    .line 79
    :cond_1e
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    if-gez v2, :cond_27

    .line 80
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    add-int/2addr v1, v2

    move v7, v1

    goto :goto_28

    .line 83
    :cond_27
    :goto_27
    move v7, v1

    .end local v1    # "nY":I
    .local v7, "nY":I
    :goto_28
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d99999a    # 0.075f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 84
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move-object v2, p1

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 86
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e8ccccd    # 0.275f

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    move v2, v0

    move v3, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 88
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6d} :catch_6e

    .line 91
    .end local v0    # "nX":I
    .end local v7    # "nY":I
    goto :goto_72

    .line 89
    :catch_6e
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 93
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_72
    :goto_72
    return-void
.end method

.method public enableRightClick()Z
    .registers 3

    .line 851
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-eq v0, v1, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public final getActionDownTime()J
    .registers 3

    .line 1460
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->lActionDownTime:J

    return-wide v0
.end method

.method public final setActionDownPosXY(II)V
    .registers 4
    .param p1, "actionDownPosX"    # I
    .param p2, "actionDownPosY"    # I

    .line 1353
    :try_start_0
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosXY(II)V

    .line 1355
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    .line 1356
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1359
    goto :goto_c

    .line 1357
    :catch_8
    move-exception v0

    .line 1358
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1360
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public final setActionDownTime(J)V
    .registers 3
    .param p1, "lActionDownTime"    # J

    .line 1464
    iput-wide p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->lActionDownTime:J

    .line 1465
    return-void
.end method

.method public final setUpdateStartMovePosX(Z)V
    .registers 2
    .param p1, "updateStartMovePosX"    # Z

    .line 1468
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    .line 1469
    return-void
.end method

.method public final setUpdateStartMovePosY(Z)V
    .registers 2
    .param p1, "updateStartMovePosY"    # Z

    .line 1472
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    .line 1473
    return-void
.end method

.method protected final updateStartMovePosXY(II)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 1363
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result v1

    float-to-int v1, v1

    nop

    nop

    nop

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosX:I

    .line 1364
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    const/4 v1, 0x1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F

    move-result v1

    float-to-int v1, v1

    nop

    nop

    nop

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosY:I

    .line 1365
    return-void
.end method
