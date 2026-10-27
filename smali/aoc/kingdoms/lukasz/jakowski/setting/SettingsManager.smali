.class public Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# instance fields
.field public AUTO_SAVE_DAYS:I

.field public BORDER_EXTRA_WIDTH:F

.field public CITIES_CAPITAL_FONT_SCALE:F

.field public CITIES_FONT_SCALE:F

.field public CIVILIZATIONS_NAMES_INTERVAL:I

.field public CIV_NAMES_MIN_SCALE_OF_FONT:F

.field public CIV_NAMES_TEXT_ALPHA:F

.field public CLOUDS:Z

.field public COUNCIL_TIPS:Z

.field public DOUBLE_BORDER:Z

.field public DRAW_CIVILIZATIONS_NAMES_OVER_PROVINCES_IN_GAME:Z

.field public ENABLE_DOUBLE_CLICK_TO_RESET_MAP_SCALE:Z

.field public ENABLE_EDGE_SCROLL:Z

.field public FBO_PROVINCES:Z

.field public FBO_PROVINCE_NAMES:Z

.field public FONT_ARMY_SIZE:I

.field public FONT_BORDER_SIZE:I

.field public FONT_BORDER_WIDTH_OF_BORDER:I

.field public FONT_BORDER_WIDTH_OF_BORDER2:I

.field public FONT_MAIN_SIZE:I

.field public IN_GAME_LEFT_PADDING_EXTRA:I

.field public LANGUAGE_TAG:Ljava/lang/String;

.field public MAP_TILT:Z

.field public MAP_MODE:I

.field public MAP_MOVE:I

.field public MAP_SELECT_ARMY_BUTTON:I

.field public OCCUPIED_PROVINCE_ALPHA:F

.field public PERCENTAGE_OF_CITIES_ON_MAP:F

.field public PROVINCE_ALPHA:F

.field public PROVINCE_ALPHA_WASTELAND:F

.field public PROVINCE_NAMES_ALPHA:F

.field public PROVINCE_NAMES_ALPHA2:F

.field public PROVINCE_NAMES_SCALE:F

.field public PROVINCE_OCCUPIED_ALPHA_EXTRA:F

.field public SETTINGS_CITIES:Z

.field public SETTINGS_CIV_NAMES:I

.field public SETTINGS_PROVINCE_BORDER:I

.field public SETTINGS_PROVINCE_FLAGS:I

.field public SETTINGS_PROVINCE_NAMES:I

.field public SHIPS_ON_MAP:I

.field public UI_SCALE:I

.field public VOLUME_AMBIENCE:F

.field public VOLUME_HOVER:F

.field public VOLUME_MASTER:F

.field public VOLUME_MUSIC:F

.field public VOLUME_SOUNDS:F

.field public civNamesFontColorBorder_A:F

.field public civNamesFontColorBorder_B:F

.field public civNamesFontColorBorder_G:F

.field public civNamesFontColorBorder_R:F

.field public civNamesFontColor_A:F

.field public civNamesFontColor_B:F

.field public civNamesFontColor_G:F

.field public civNamesFontColor_R:F

.field public enableHideSideMenu:Z

.field public loadCursor:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->UI_SCALE:I

    .line 11
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_MAIN_SIZE:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_ARMY_SIZE:I

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_MASTER:F

    .line 15
    const v1, 0x3ee66666    # 0.45f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_MUSIC:F

    .line 16
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_SOUNDS:F

    .line 17
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_AMBIENCE:F

    .line 18
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_HOVER:F

    .line 20
    const v3, 0x3ea0a0a1

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    .line 21
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    .line 23
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_OCCUPIED_ALPHA_EXTRA:F

    .line 25
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:F

    .line 27
    const/4 v1, 0x2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_SELECT_ARMY_BUTTON:I

    .line 28
    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_MOVE:I

    .line 30
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->ENABLE_EDGE_SCROLL:Z

    .line 31
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->ENABLE_DOUBLE_CLICK_TO_RESET_MAP_SCALE:Z

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_FONT_SCALE:F

    .line 34
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_CAPITAL_FONT_SCALE:F

    .line 36
    const v4, 0x3df5c28f    # 0.12f

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PERCENTAGE_OF_CITIES_ON_MAP:F

    .line 38
    const/4 v4, 0x1

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PROVINCES_IN_GAME:Z

    .line 39
    const/16 v5, 0x15e

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    .line 40
    const v5, 0x3d0f5c29    # 0.035f

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    .line 42
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    .line 43
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    .line 45
    const/16 v5, 0x80

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_SIZE:I

    .line 46
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    .line 48
    const/16 v5, 0xe42

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    .line 50
    const v5, 0x3d23d70a    # 0.04f

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_R:F

    .line 51
    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_G:F

    .line 52
    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_B:F

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_A:F

    .line 55
    const v0, 0x3f147ae1    # 0.58f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_R:F

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_G:F

    .line 57
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_B:F

    .line 58
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_A:F

    .line 60
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    .line 63
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DOUBLE_BORDER:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    .line 67
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CLOUDS:Z

    .line 69
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    .line 71
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z

    .line 72
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z

    .line 74
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    .line 75
    const v0, 0x3d75c28f    # 0.06f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_SCALE:F

    .line 77
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CITIES:Z

    .line 78
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CIV_NAMES:I

    .line 80
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->COUNCIL_TIPS:Z

    .line 82
    const/16 v0, 0x23

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    .line 84
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    .line 85
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    .line 87
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA2:F

    .line 88
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER2:I

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_TILT:Z

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_MODE:I

    return-void
.end method
