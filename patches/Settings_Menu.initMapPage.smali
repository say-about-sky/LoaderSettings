.method private final initMapPage()V
    .registers 16

    invoke-static {}, Laoc/kingdoms/lukasz/menus/Settings/Settings_MapUI;->build()Ljava/util/List;

    move-result-object v7

    move-object/from16 v1, p0

    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    const-string v3, "\u5730\u56fe"

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-direct {v2, v3, v4, v4, v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0xa

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v4, v4, 0x8

    sget v5, Laoc/kingdoms/lukasz/menus/Settings/Settings_MapUI;->iMenuWidth:I

    sget v6, Laoc/kingdoms/lukasz/menus/Settings/Settings_MapUI;->iMenuHeight:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawScrollPositionAlways:Z

    return-void
.end method