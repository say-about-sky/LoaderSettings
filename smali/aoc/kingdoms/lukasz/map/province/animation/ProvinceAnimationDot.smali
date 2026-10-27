.class public Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;
.super Ljava/lang/Object;
.source "ProvinceAnimationDot.java"


# static fields
.field public static final ANIMATION_DURATION:F = 1250.0f


# instance fields
.field public animationTime:J

.field public dotColor:Lcom/badlogic/gdx/graphics/Color;

.field public fPerc:F

.field public iProvinceID:I

.field public posX:I

.field public posY:I


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/Color;)V
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    .line 27
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    .line 31
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v0

    if-lez v0, :cond_3c

    .line 32
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posX:I

    .line 33
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posY:I

    goto :goto_51

    .line 35
    :cond_3c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posX:I

    .line 36
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posY:I

    .line 38
    :goto_51
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "out":Z
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x449c4000    # 1250.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    .line 44
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    .line 46
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1e

    .line 47
    iput v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    .line 48
    const/4 v0, 0x1

    .line 51
    :cond_1e
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 52
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3e19999a    # 0.15f

    iget v7, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float v7, v7, v6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 54
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v5, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v4

    if-lez v4, :cond_65

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3, v5, p2}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    .line 55
    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v5, p2}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v3

    int-to-float v3, v3

    goto :goto_6f

    :cond_65
    invoke-static {v5, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    .line 54
    move-result v3

    int-to-float v3, v3

    :goto_6f
    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v4, v4, p2

    iget v5, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3ee66666    # 0.45f

    .line 59
    iget v7, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float v7, v7, v6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v5, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v4

    .line 60
    if-lez v4, :cond_b5

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3, v5, p2}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v5, p2}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v3

    .line 59
    int-to-float v3, v3

    goto :goto_bf

    :cond_b5
    invoke-static {v5, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v3

    int-to-float v3, v3

    :goto_bf
    const/high16 v4, 0x41600000    # 14.0f

    mul-float v4, v4, p2

    iget v5, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    :cond_ca
    return v0
.end method
