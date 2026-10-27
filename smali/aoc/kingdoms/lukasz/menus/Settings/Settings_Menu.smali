.class public Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Settings_Menu.java"


# static fields
.field public static drawArmies_Time:J

.field public static drawCities_Time:J

.field public static drawCivsNames_Time:J

.field public static drawClouds_Time:J

.field public static drawMapBorder_Time:J

.field public static drawMoveUnits_Time:J

.field public static drawProvincesBorder_Time:J

.field public static drawProvincesFBO_Time:J

.field public static drawProvincesNames_Time:J

.field public static drawProvinces_Time:J

.field public static drawShips2_Time:J

.field public static drawShips_Time:J

.field public static goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

.field public static lastUpdateTime:J

.field public static provinceInView_Time:J

.field public static updateTimes:Z


# instance fields
.field public nanoW:I

.field public statTextPercW:I

.field public statTextW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 829
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->MAINMENU:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

    .line 830
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    .line 831
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    .line 832
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    .line 833
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    .line 834
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    .line 835
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    .line 836
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    .line 837
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    .line 838
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    .line 839
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    .line 840
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    .line 841
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    .line 842
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    .line 843
    const/4 v2, 0x1

    sput-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    .line 844
    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->lastUpdateTime:J

    .line 845
    return-void
.end method

.method public constructor <init>()V
    .locals 24

    .line 66
    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 62
    const/4 v12, 0x0

    iput v12, v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    .line 63
    iput v12, v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    .line 64
    iput v12, v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->nanoW:I

    sget-boolean v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->MAP_PAGE:Z



    if-eqz v0, :cond_map_page_normal



    move-object/from16 v0, p0

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->initMapPage()V



    return-void



    :cond_map_page_normal
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 68
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v14, v0, v1

    .line 69
    .local v14, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v15

    .line 70
    .local v15, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    .line 71
    .local v10, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v0, v1

    .line 72
    .local v16, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v17, v0, v1

    .line 73
    .local v17, "menuY":I
    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 74
    .local v18, "buttonYPadding":I
    mul-int/lit8 v19, v18, 0x2

    .line 75
    .local v19, "buttonY":I
    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Back"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v10, v0

    const/4 v8, 0x1

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    move-object v12, v9

    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$1;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v18, 0x2

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 83
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Graphics"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v10, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 85
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    const-string v12, ": "

    if-eqz v0, :cond_1

    .line 86
    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$2;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Fullscreen"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v10, v0

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v21, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    move-object/from16 v22, v9

    move/from16 v9, v20

    move/from16 v20, v15

    move v15, v10

    .end local v10    # "menuWidth":I
    .local v15, "menuWidth":I
    .local v20, "titleHeight":I
    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$2;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 98
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Resolution"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    if-lez v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v15, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$3;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    goto :goto_1

    .line 85
    .end local v20    # "titleHeight":I
    .restart local v10    # "menuWidth":I
    .local v15, "titleHeight":I
    :cond_1
    move/from16 v20, v15

    move v15, v10

    .line 110
    .end local v10    # "menuWidth":I
    .local v15, "menuWidth":I
    .restart local v20    # "titleHeight":I
    :goto_1
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "UIScale"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v15, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$4;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_MapOpen;



    const-string v2, "\u5730\u56fe"



    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I



    mul-int/lit8 v0, v14, 0x2



    sub-int v7, v15, v0



    const/4 v8, 0x1



    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I



    const/4 v4, -0x1



    move v5, v14



    move/from16 v6, v19



    move-object v1, v11



    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_MapOpen;-><init>(Ljava/lang/String;IIIIIZI)V



    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z



    invoke-interface {v13}, Ljava/util/List;->size()I



    move-result v0



    add-int/lit8 v0, v0, -0x1



    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;



    move-result-object v0



    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;



    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I



    move-result v0



    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I



    add-int/2addr v0, v1



    add-int v19, v19, v0


    .line 116
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Game"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v15, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 118
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "SelectLanguage"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v15, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$5;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 125
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$6;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Double()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v21, 0x1

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object v11, v10

    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$6;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$7;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$7;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 141
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$8;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$8;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Autosave"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    if-nez v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Off"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    const-string v3, "DaysX"

    invoke-virtual {v1, v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$9;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$10;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$10;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 185
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$11;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$11;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$12;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_InGamePaddingLeft()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$12;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$13;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$13;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 208
    :cond_3
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Audio"

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v0, 0x4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v15, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v6, v0, v4

    const-string v7, ""

    move-object v0, v8

    move/from16 v4, v19

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 210
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$14;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v15, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$14;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 221
    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$15;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Provinces"

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v0, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v6, v15, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v7, v0, v1

    const-string v8, ""

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v19

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$15;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 262
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$16;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$16;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$17;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$17;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$18;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$18;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 280
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$19;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Double()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$19;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$20;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$20;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 292
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$21;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$21;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$22;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Names()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$22;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$23;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$23;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 312
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$24;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$24;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$25;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Names()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$25;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$26;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$26;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 332
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$27;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$27;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$28;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_CivNames()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$28;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$29;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$29;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 350
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$30;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$30;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$31;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_ProvinceFlags()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$31;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$32;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$32;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 368
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$33;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Cities()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$33;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$34;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$34;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 380
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$35;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Ships"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v5, v15, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v9, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    const/4 v7, 0x0

    const/16 v8, 0x64

    move-object v0, v11

    move-object/from16 v1, p0

    move v3, v14

    move/from16 v4, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$35;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 395
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->loadClouds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$36;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Clouds()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$36;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$37;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$37;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 410
    :cond_4
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$38;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$38;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$39;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "DrawArmyScale"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$39;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$40;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$40;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 428
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_DISABLE_FBO:Z

    if-nez v0, :cond_6

    .line 429
    :cond_5
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$41;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_FBO()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$41;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$42;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$42;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 441
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$43;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_FBO_Provinces()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$43;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$44;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$44;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 455
    :cond_6
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceBorder"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Extra"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v0, 0x4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v15, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v6, v0, v4

    const-string v7, ""

    move-object v0, v8

    move/from16 v4, v19

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 457
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$45;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, "<<"

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$45;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$46;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_ProvincesBorderExtra()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$46;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$47;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$47;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 475
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Alpha"

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v15, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 477
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$48;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceAlpha"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v5, v15, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v0, v0, v21

    float-to-int v9, v0

    const/16 v7, 0xa

    const/16 v8, 0xff

    move-object v0, v11

    move-object/from16 v1, p0

    move v3, v14

    move/from16 v4, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$48;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 501
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$49;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "OccupiedProvinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v5, v15, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_OCCUPIED_ALPHA_EXTRA:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v8, v0

    const/16 v22, 0x64

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v4, v19

    move/from16 v23, v8

    move/from16 v8, v22

    move/from16 v22, v15

    move-object v15, v9

    .end local v15    # "menuWidth":I
    .local v22, "menuWidth":I
    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$49;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 525
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$50;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Wasteland"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v5, v22, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    mul-float v0, v0, v21

    float-to-int v9, v0

    const/16 v8, 0xff

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v4, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$50;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 549
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$51;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceNames"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v5, v22, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    mul-float v0, v0, v21

    float-to-int v9, v0

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v4, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$51;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 573
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CivilizationsNames"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v5, v22, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    mul-float v0, v0, v21

    float-to-int v9, v0

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v4, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$52;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 597
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Performance"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v22, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 599
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$53;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Double()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v10, v22, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v10, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$53;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$54;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v22, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$54;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 637
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$55;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Double()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v10, v22, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v10, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$55;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$56;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v0, v22, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v2, ">>"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$56;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 675
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "More"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v22, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 677
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$57;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Council"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Tip"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v22, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$57;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 687
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$58;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "EdgeScrolling"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v22, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v19

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$58;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0


    .line 697
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 698
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$59;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "VSync"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v22, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$59;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 712
    :cond_7
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$60;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Reset"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v22, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$60;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v19, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    .line 721
    .local v9, "var10000":I
    const/4 v0, 0x0

    .line 722
    .end local v19    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .line 724
    .local v1, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    move v10, v0

    .end local v0    # "buttonY":I
    .local v2, "iSize":I
    .local v10, "buttonY":I
    :goto_3
    if-ge v1, v2, :cond_9

    .line 725
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    if-ge v10, v0, :cond_8

    .line 726
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    move v10, v0

    .line 724
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 730
    .end local v2    # "iSize":I
    :cond_9
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 731
    .end local v1    # "i":I
    .local v11, "i":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v12, v22

    const/4 v2, 0x0

    .end local v22    # "menuWidth":I
    .local v12, "menuWidth":I
    invoke-direct {v0, v2, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Settings"

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-direct {v1, v0, v2, v2, v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v0, 0xa

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v0, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v4, v12

    move v5, v11

    move-object v6, v13

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 733
    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawScrollPositionAlways:Z

    .line 734
    const-string v1, "Provinces Border: 12"

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    .line 735
    const-string v1, "1000%"

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    .line 736
    const-string v1, "X16 666 667"

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->nanoW:I

    .line 737
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    # 地图子页不显示渲染计时调试面板(与原版 Settings_UIScale 等子页一致)
    sget-boolean v1, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->MAP_PAGE:Z

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SETTINGS_MENU_DRAW_TIMES:Z

    if-eqz v1, :cond_0

    .line 741
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v1, 0x4

    .line 742
    .local v7, "paddingL":I
    const/4 v8, 0x0

    .line 743
    .local v8, "extraY":I
    sget-wide v1, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    add-long v10, v1, v3

    .line 744
    .local v10, "totalTime":J
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v2

    add-int/2addr v2, v8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->nanoW:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x14

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 745
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_A0"

    const-string v3, "Draw"

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 746
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_A1"

    const-string v3, "Perc"

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 747
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_A2"

    const-string v3, "Nanotime"

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 748
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 749
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B1"

    const-string v3, "Update Provinces "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 750
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v3, v12

    const/4 v13, 0x1

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "%"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 751
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 752
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 753
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B2"

    const-string v3, "Draw Provinces "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 754
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 755
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 756
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 757
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B3"

    const-string v3, "Provinces FBO "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 758
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 759
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 760
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 761
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B4"

    const-string v3, "Provinces Border "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 762
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 763
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 764
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 765
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B5"

    const-string v3, "Provinces Names "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 766
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 767
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 768
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 769
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B6"

    const-string v3, "Civs Names "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 770
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 771
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 772
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 773
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B7"

    const-string v3, "Cities & Flags "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 774
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 775
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 776
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 777
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B8"

    const-string v3, "Clouds "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 778
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 779
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 780
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 781
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B9"

    const-string v3, "Ships "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 782
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 783
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 784
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 785
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B10"

    const-string v3, "Ships 2 "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 786
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 787
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 788
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 789
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B11"

    const-string v3, "Armies "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 790
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 791
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 792
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 793
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B12"

    const-string v3, "Move Units "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 794
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 795
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 796
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 797
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B13"

    const-string v3, "Map Border "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 798
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    long-to-float v3, v3

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float/2addr v3, v12

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 799
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 800
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 801
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 802
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B14"

    const-string v3, "Free memory "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 803
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    const-wide/32 v12, 0x100000

    div-long/2addr v3, v12

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "M"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 804
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 805
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B15"

    const-string v3, "Requested Memory "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 806
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v12

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 807
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 808
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v1, "RTD_B16"

    const-string v3, "Max memory "

    invoke-static {v1, v3}, Lteam/rainfall/fontFix/FontFix;->langGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 809
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    div-long/2addr v3, v12

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 810
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 811
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 812
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "1 FPS"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 813
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, ""

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 814
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "16 666 667"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 817
    .end local v7    # "paddingL":I
    .end local v8    # "extraY":I
    .end local v10    # "totalTime":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 818
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 819
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 820
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 821
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 822
    return-void
.end method

.method public updateLanguage()V
    .locals 0

    .line 825
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 826
    return-void
.end method
