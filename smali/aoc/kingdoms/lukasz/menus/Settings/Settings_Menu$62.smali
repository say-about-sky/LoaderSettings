.class Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$62;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "Settings_Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V
    .locals 11
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # Z
    .param p9, "x7"    # I

    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$62;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->updateSettings_MapTilt()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "\u91cd\u542f\u6e38\u620f\u751f\u6548"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$62;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateLanguage()V

    return-void
.end method
