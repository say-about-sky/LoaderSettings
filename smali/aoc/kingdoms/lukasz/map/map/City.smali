.class public Laoc/kingdoms/lukasz/map/map/City;
.super Ljava/lang/Object;
.source "City.java"


# static fields
.field public static final PADDING:I = 0xa

.field public static final PADDING_NAME:I = 0x5


# instance fields
.field public iCityLevel:I

.field public iHeight:I

.field public iPosX:I

.field public iPosY:I

.field public iWidth:I

.field public imageID:I

.field public sCityName:Ljava/lang/String;

.field public sCityNameOriginal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosX:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    iput p4, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    return-void
.end method

.method private final drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p4

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v2, 0x4

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual {v0, v10, v11}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    invoke-virtual {v0, v10, v11}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v13

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f666666    # 0.9f

    mul-float v3, v3, v12

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v15

    div-int/lit8 v2, v15, 0x2

    sub-int v8, v1, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ne v1, v10, :cond_0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeftOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, v9, v8, v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v12

    invoke-direct {v1, v14, v14, v14, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v3, v8, v2

    iget v2, v0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v5, v2, 0xa

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move v4, v13

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v14, v14, v14, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_CAPITAL_FONT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int v8, v17, v1

    add-int/lit8 v4, v8, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v5, v13, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v8, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v8, v8, v12

    invoke-direct {v6, v1, v2, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v2, 0x4

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawCityName_Capital_Civ(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 11

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v0

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v9

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f666666    # 0.9f

    mul-float v2, v2, p4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ne v1, p2, :cond_0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeftOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, p4

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v3, v0, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v5, v2, 0xa

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v4, v9

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_CAPITAL_FONT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    add-int/lit8 v5, v0, 0x5

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v6, v9

    invoke-interface/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method


# virtual methods
.method public final drawCity(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 8

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateCityScale()V

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v4

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, -0x8

    invoke-virtual {p0, v6, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v5

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

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v4

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, -0x8

    invoke-virtual {p0, v6, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v5

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

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :goto_0
    return-void
.end method

.method public final drawCityName_Capital_CivFlag_War(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 6

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v0

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v1

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, p4, v3

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_l:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_1
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_s:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_0
    return-void
.end method

.method public final drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Map;->drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v5

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;->drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFII)V

    return-void
.end method

.method public final drawCity_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital_Civ(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    return-void
.end method

.method public final drawCity_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 7

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateCityScale()V

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    nop

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v4

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, -0x8

    invoke-virtual {p0, v6, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v5

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

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    nop

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v4

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, -0x8

    invoke-virtual {p0, v6, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v5

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

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    invoke-virtual {v2, p1, v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :goto_0
    return-void
.end method

.method public final drawCity_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 13

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->ensureIcons()V

    sget-object v0, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->icons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/cities/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "City"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v5, 0x3eae147b    # 0.34f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rainfall/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "model"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "City"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const-string v7, "scale_city"

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v5

    :cond_1
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p2, p0}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getIconIndex(ILaoc/kingdoms/lukasz/map/map/City;)I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x10

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p2, :cond_3

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v5, :cond_6

    move-object v2, v5

    goto/16 :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gfx/cities/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_6

    move-object v2, v5

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move/from16 v6, p3

    mul-float v5, v5, v6

    nop

    nop

    nop

    nop

    move/from16 v7, p4

    move/from16 v8, p3

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {p1, v12, v12, v12, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, v8}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, -0x8

    invoke-virtual {p0, v10, v8}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v10

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v11, v11

    sub-int/2addr v10, v11

    invoke-virtual {v2, p1, v9, v10, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    invoke-virtual/range {p0 .. p6}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    return-void

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
.end method

.method public final drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 9

    invoke-static {p2, p0}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->shouldDrawCity(ILaoc/kingdoms/lukasz/map/map/City;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p0}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getIconForCity(ILaoc/kingdoms/lukasz/map/map/City;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {p2, p0}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getScaleForCity(ILaoc/kingdoms/lukasz/map/map/City;)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v4, v4, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v3

    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v6, v3

    const/4 v4, -0x8

    invoke-virtual {p0, v4, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

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

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v7, v3

    invoke-virtual {v1, p1, v6, v7, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v4, v4, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    add-int/2addr v6, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/CityIconHelper;->getCityNameScale()F

    move-result v5

    nop

    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v3, v7

    move v4, p4

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    return-void
.end method

.method public final drawCity_Name(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .locals 10

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v1, v1, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_1

    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v2, :cond_0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, v1

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    goto/16 :goto_0

    :cond_0
    nop

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    const/4 v4, -0x8

    invoke-virtual {p0, v4, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v2

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

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, v1

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    goto :goto_0

    :cond_2
    nop

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    const/4 v4, -0x8

    invoke-virtual {p0, v4, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v2

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

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :goto_0
    return-void
.end method

.method public final drawCity_NameNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .locals 10

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v1, v1, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_0

    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v2, :cond_1

    nop

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    const/4 v4, -0x8

    invoke-virtual {p0, v4, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v2

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

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v2, :cond_1

    nop

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v2

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v4, v4

    mul-float v4, v4, p5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v6, v2

    const/4 v4, -0x8

    invoke-virtual {p0, v4, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v2

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

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int v7, v2, v3

    move-object v4, p0

    move-object v5, p1

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getDrawPosX(IF)I
    .locals 6

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v3

    mul-float v4, p2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v5, v4, v3

    mul-float/2addr v4, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    div-float/2addr v4, v5

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getDrawPosY(IF)I
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v1

    mul-float v2, p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v3, v2, v1

    mul-float/2addr v2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    div-float/2addr v0, v3

    const/4 v1, -0x8

    if-ne p1, v1, :cond_0

    float-to-int v0, v0

    return v0

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v2, v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getDrawWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    return v0
.end method

.method public final setCityName(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    new-instance v0, Laoc/kingdoms/lukasz/map/map/City$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebuildProvNameData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/map/map/City$2;-><init>(Laoc/kingdoms/lukasz/map/map/City;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    return-void
.end method

.method public final setCityNameOriginal(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    new-instance v0, Laoc/kingdoms/lukasz/map/map/City$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildProvNameData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/map/map/City$1;-><init>(Laoc/kingdoms/lukasz/map/map/City;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    return-void
.end method

.method protected final updateCityNameWidth()V
    .locals 3

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    return-void
.end method
