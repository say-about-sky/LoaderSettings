.class public Laoc/kingdoms/lukasz/jakowski/Game;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;,
        Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;,
        Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;,
        Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;,
        Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;,
        Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;,
        Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;,
        Laoc/kingdoms/lukasz/jakowski/Game$FlagData;
    }
.end annotation


# static fields
.field public static AGE_OF_CHAOS_CIVS:I = 0x0

.field public static AGE_OF_CHAOS_CIVS_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static AGE_OF_CHAOS_MODE:Z = false

.field public static AGE_OF_CHAOS_YEARS:I = 0x0

.field public static DRAW_ARMY_MIN_SCALE:F = 0.0f

.field public static DRAW_CITIES_MIN_SCALE:F = 0.0f

.field public static DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F = 0.0f

.field public static DRAW_INNER_BORDERS:F = 0.0f

.field public static DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F = 0.0f

.field public static DRAW_OCCUPIED_SCALE:F = 0.0f

.field public static ENABLE_CALL_VASSALS:Z = false

.field public static FOG_OF_WAR:Z = false

.field private static final HIGHLIGHTED_PROVINCES_ANIMATION_TIME:F = 750.0f

.field private static final HIGHLIGHTED_PROVINCES_ANIMATION_TIME_BACK:F = 350.0f

.field public static HOURS_PER_TURN:I

.field public static MAP_TILT_RUNTIME:Z = true

.field public static MAX_BELOW_ZERO_POINT_X:I

.field public static NUKES_TOP_CIVS:I

.field public static NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

.field public static NUM_OF_PROVINCES_IN_VIEW:I

.field public static NUM_OF_SEA_PROVINCES_IN_VIEW:I

.field public static NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

.field public static SANDBOX:Z

.field public static SCENARIO_EVENTS:Z

.field public static SPECTATOR_MODE:Z

.field public static activeArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;",
            ">;"
        }
    .end annotation
.end field

.field public static activeArmySize:I

.field public static activeCursorID:I

.field public static activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

.field public static advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

.field public static aiAggressivnes:I

.field public static aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

.field public static aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

.field public static aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

.field public static aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

.field public static aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

.field public static aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

.field public static aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

.field public static alliancesSpecial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;",
            ">;"
        }
    .end annotation
.end field

.field public static alliancesSpecialSize:I

.field public static alliancesSpecial_Flag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static ambienceManager:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

.field public static animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

.field public static animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

.field public static armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

.field public static battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

.field public static chooseProvinceMode:Z

.field public static cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

.field public static continents:Laoc/kingdoms/lukasz/map/map/Continents;

.field public static cutProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceCut;",
            ">;"
        }
    .end annotation
.end field

.field public static deltaTime:F

.field public static difficultyID:I

.field public static fDashedLine_Percentage_HighlitedProvinceBorder:F

.field public static flagData:Laoc/kingdoms/lukasz/jakowski/Game$FlagData;

.field public static flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

.field public static gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

.field public static gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

.field public static gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

.field public static gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

.field public static gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

.field public static gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

.field public static generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

.field public static geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

.field public static highTextureSettings:Z

.field public static highlightedProvinceBorder_BackAnimation:Z

.field public static highlightedProvinceBorder_Update:Z

.field public static hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

.field public static hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

.field public static hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

.field public static hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

.field public static hoveredProvinceBG_LoadedID:I

.field public static hoveredShipID:I

.field public static hoveredSiegeID:I

.field public static iActiveProvince:I

.field public static iCivsSize:I

.field public static iHoveredCapitalProvinceID:I

.field public static iHoveredProvinceID:I

.field public static iMaxDistance:F

.field public static iMaxDistanceManhattan:F

.field public static iOldActiveProvinceID:I

.field public static iOldHoveredProvinceID:I

.field public static iProvincesSize:I

.field public static iRegroupArmyProvincesSize:I

.field public static ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

.field public static inViewX_CordsX:I

.field public static inViewX_CordsX_Width:I

.field public static inViewY_CordsY:I

.field public static inViewY_CordsY_Height:I

.field public static invasionArmyMode:Z

.field public static invasionArmyProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static invasionArmyProvincesSize:I

.field public static keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

.field public static lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/Civilization;",
            ">;"
        }
    .end annotation
.end field

.field public static lCursors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public static lDashedLineTime_Percentage_HighlitedProvinceBorder:J

.field public static lExtraProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/Province;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData10:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData9:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesPopulation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;",
            ">;"
        }
    .end annotation
.end field

.field public static lSeaProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lWastelandProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

.field public static map:Laoc/kingdoms/lukasz/map/map/Map;

.field public static mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

.field public static mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

.field public static mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

.field public static mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

.field public static mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

.field public static mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

.field public static mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

.field public static mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

.field public static mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

.field public static mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

.field public static mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

.field public static mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

.field public static maxWastelandLvl:I

.field public static menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

.field public static oR:Ljava/util/Random;

.field public static player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

.field public static provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

.field public static regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

.field public static regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

.field public static regroupArmyMode:Z

.field public static regroupArmyProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static regroupArmyShadows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;",
            ">;"
        }
    .end annotation
.end field

.field public static religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

.field public static reloadScenario:Z

.field public static revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

.field public static revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

.field public static scenarioID:I

.field public static selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

.field public static settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

.field private static simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;",
            ">;"
        }
    .end annotation
.end field

.field public static soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

.field public static stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

.field public static terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

.field public static unionManagerFlags:Laoc/kingdoms/lukasz/jakowski/UnionManager_Flags;

.field public static updateProvincesInView:Z

.field public static versionWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->versionWidth:I

    .line 112
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    .line 117
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    .line 121
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    .line 122
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    .line 123
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    .line 124
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    .line 125
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    .line 126
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    .line 142
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 143
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 144
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    .line 145
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapScroll;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    .line 146
    new-instance v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    .line 147
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapCities;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    .line 148
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapOver;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapOver;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    .line 149
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapOver;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapOver;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

    .line 151
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    .line 153
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    .line 155
    new-instance v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    .line 156
    new-instance v1, Laoc/kingdoms/lukasz/map/map/Continents;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/Continents;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    .line 157
    new-instance v1, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    .line 159
    new-instance v1, Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/GeneralManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    .line 160
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    .line 173
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    .line 182
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 183
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    .line 184
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    .line 185
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    .line 187
    new-instance v1, Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    .line 188
    new-instance v1, Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/ReligionManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    .line 189
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    .line 193
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    .line 196
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/UnionManager_Flags;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/UnionManager_Flags;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->unionManagerFlags:Laoc/kingdoms/lukasz/jakowski/UnionManager_Flags;

    .line 198
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    .line 202
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    .line 203
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    .line 204
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SANDBOX:Z

    .line 205
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    .line 206
    const/16 v2, 0xe

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUKES_TOP_CIVS:I

    .line 208
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->ENABLE_CALL_VASSALS:Z

    .line 214
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_MODE:Z

    .line 215
    const/16 v2, 0x14

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_YEARS:I

    .line 216
    const/4 v2, 0x4

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_CIVS:I

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_CIVS_LIST:Ljava/util/List;

    .line 222
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 223
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    .line 225
    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    .line 239
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    .line 274
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiAggressivnes:I

    .line 278
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    .line 307
    const v2, 0x3fa66666    # 1.3f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    .line 308
    const v2, 0x3f19999a    # 0.6f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    .line 309
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    .line 310
    const v2, 0x3e19999a    # 0.15f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    .line 311
    const/high16 v2, 0x3f000000    # 0.5f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    .line 312
    const/high16 v2, 0x40000000    # 2.0f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    .line 326
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    .line 332
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    .line 343
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    .line 344
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    .line 449
    new-instance v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v0, v3}, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;-><init>(IIILjava/lang/String;)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 451
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    .line 452
    new-instance v2, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 453
    new-instance v2, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 454
    new-instance v2, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    .line 456
    const/4 v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 457
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 460
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iOldActiveProvinceID:I

    .line 478
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iOldHoveredProvinceID:I

    .line 952
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    .line 953
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    .line 954
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 956
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    .line 976
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    .line 978
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    .line 979
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    .line 1061
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    .line 1063
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    .line 1064
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    .line 1065
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1067
    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    .line 1215
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    .line 1219
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    .line 1226
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 1387
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    .line 1390
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    .line 1395
    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    .line 1397
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/RegionManager;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/RegionManager;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    .line 1399
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 1401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    .line 1402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    .line 1403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    .line 1405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    .line 1407
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 1408
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 1409
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 1410
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 1415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    .line 1416
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1429
    new-instance v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    .line 1430
    new-instance v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    .line 1435
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 1505
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    .line 1528
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    .line 1629
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 2014
    const/16 v1, 0x63

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->maxWastelandLvl:I

    .line 2090
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG_LoadedID:I

    .line 2091
    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2309
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2312
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_BackAnimation:Z

    .line 2314
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    .line 2693
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    .line 2694
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    .line 2696
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    .line 2697
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    .line 3194
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    .line 3195
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistanceManhattan:F

    .line 3220
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V
    .locals 3
    .param p0, "nHA"    # Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    .line 1231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_1

    .line 1232
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    return-void

    .line 1231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1247
    return-void
.end method

.method public static addAllianceSpecial(Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;)V
    .locals 3
    .param p0, "nAlliance"    # Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 404
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void

    .line 403
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public static final addCivilization(Ljava/lang/String;IZZZZZ)Z
    .locals 17
    .param p0, "nCivTag"    # Ljava/lang/String;
    .param p1, "nProvinceID"    # I
    .param p2, "rebuildCores"    # Z
    .param p3, "addCore"    # Z
    .param p4, "isInGame"    # Z
    .param p5, "updateOwnerOfProvince"    # Z
    .param p6, "loadFlagLater"    # Z

    .line 1861
    move/from16 v11, p1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1862
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, p0

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1863
    const/4 v1, 0x0

    return v1

    .line 1861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    .line 1867
    .end local v0    # "i":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v13

    .line 1869
    .local v13, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    if-eqz p6, :cond_2

    .line 1870
    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    new-instance v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    iget v4, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v5, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v6, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    iget v8, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->ReligionID:I

    iget v9, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    const/16 v16, 0x1

    move-object v0, v10

    move-object/from16 v2, p0

    move/from16 v7, p1

    move-object v14, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIIIZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1877
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadScenario_A()V

    .line 1879
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD_FLAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$3;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_1

    .line 1887
    :cond_2
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    new-instance v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    iget v4, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v5, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v6, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    iget v8, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->ReligionID:I

    iget v9, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    move-object v0, v14

    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1895
    :goto_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1897
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initTechTree()V

    .line 1898
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    .line 1900
    if-eqz p5, :cond_3

    .line 1901
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    .line 1903
    .local v0, "tCivID":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince(I)V

    .line 1904
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_RemoveOldAddNewToCiv(I)V

    .line 1905
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 1906
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    .line 1908
    if-lez v0, :cond_3

    .line 1909
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeProvince(I)V

    .line 1911
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildCivilizationsRegion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/Game$4;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1920
    .end local v0    # "tCivID":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static final addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .locals 1
    .param p0, "nSimpleTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 1584
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    return-void

    .line 1588
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 1589
    return-void
.end method

.method public static final addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .locals 1
    .param p0, "nSimpleTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 1592
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    return-void

    .line 1596
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    .line 1597
    return-void
.end method

.method public static final buildDistanceToCapital()V
    .locals 2

    .line 3334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3335
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->buildDistanceToCapital()V

    .line 3334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3337
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static final buildProsperity_AverageEconomy()V
    .locals 2

    .line 3177
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3178
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProsperity_AverageEconomy()V

    .line 3177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3180
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static final buildProvinceIsCapital()V
    .locals 3

    .line 1936
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1937
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1938
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 1936
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1941
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static buildSuggestedCivs_ToSmallerMap_OnlyToConvert()V
    .locals 12

    .line 3411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3412
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "suggestedCivilizations/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 3414
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3415
    .local v3, "sOwners":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3417
    .local v5, "sRes":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 3418
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "SUGGESTED_TEST.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 3419
    .local v7, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 3417
    .end local v7    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3411
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "sOwners":Ljava/lang/String;
    .end local v5    # "sRes":[Ljava/lang/String;
    .end local v6    # "a":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3423
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static final buildWastelandLevels()V
    .locals 4

    .line 2018
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    .local v0, "tWasteland":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 2021
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2022
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2023
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setWasteland(I)V

    .line 2020
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2027
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v3, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels(Ljava/util/List;II)V

    .line 2029
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2030
    nop

    .line 2033
    .end local v0    # "tWasteland":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2034
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static final buildWastelandLevels(Ljava/util/List;II)V
    .locals 5
    .param p1, "nLevel"    # I
    .param p2, "nWastelandSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 2038
    .local p0, "tWasteland":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 2040
    .local v0, "rec":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_5

    .line 2041
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ne v2, p1, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_3

    .line 2048
    :cond_0
    const/4 v2, 0x1

    .line 2050
    .local v2, "incLevel":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2051
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v4

    if-ge v4, p1, :cond_1

    .line 2052
    const/4 v2, 0x0

    .line 2053
    goto :goto_2

    .line 2050
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2057
    .end local v3    # "j":I
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 2058
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setWasteland(I)V

    .line 2059
    const/4 v0, 0x1

    goto :goto_4

    .line 2062
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2063
    add-int/lit8 v1, v1, -0x1

    .line 2064
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move p2, v3

    goto :goto_4

    .line 2042
    .end local v2    # "incLevel":Z
    :cond_4
    :goto_3
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2043
    add-int/lit8 v1, v1, -0x1

    .line 2044
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move p2, v2

    .line 2045
    nop

    .line 2040
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2073
    .end local v0    # "rec":Z
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    goto :goto_5

    .line 2068
    .restart local v0    # "rec":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 2069
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->maxWastelandLvl:I

    if-ge p1, v1, :cond_6

    .line 2070
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels(Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 2074
    .local v0, "ex":Ljava/lang/StackOverflowError;
    :goto_5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 2075
    .end local v0    # "ex":Ljava/lang/StackOverflowError;
    :cond_6
    :goto_6
    nop

    .line 2076
    :goto_7
    return-void
.end method

.method public static canInvestInEconomy(I)Z
    .locals 3
    .param p0, "nProvinceID"    # I

    .line 540
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    int-to-float v1, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxEconomy(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final centerToRandomMapPosition()V
    .locals 4

    .line 2815
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 2816
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 2818
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRandomPointToCenterTheMap()Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    .line 2820
    .local v0, "tempPointToCenterTheMap":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    neg-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 2821
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    neg-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 2822
    return-void
.end method

.method public static final checkActiveArmy_Fog()Z
    .locals 3

    .line 1365
    const/4 v0, 0x0

    .line 1368
    .local v0, "outUpdate":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v1, v2, :cond_1

    .line 1369
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1370
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1371
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    const/4 v0, 0x1

    .line 1375
    add-int/lit8 v1, v1, -0x1

    .line 1368
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1380
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 1378
    :catch_0
    move-exception v1

    .line 1379
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1382
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static final checkClosedSea(I)Z
    .locals 3
    .param p0, "nProvinceID"    # I

    .line 2079
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2080
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 2081
    const/4 v1, 0x1

    return v1

    .line 2079
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2085
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkHoveredArmy_Fog()V
    .locals 2

    .line 967
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_0

    .line 968
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    const/4 v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 972
    :cond_0
    return-void
.end method

.method public static final checkPosOfClickX(F)F
    .locals 2
    .param p0, "nPosX"    # F

    .line 2801
    neg-float v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2802
    :goto_0
    neg-float v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2803
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    goto :goto_0

    .line 2805
    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    .line 2806
    :goto_1
    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    .line 2807
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p0, v1

    goto :goto_1

    .line 2811
    :cond_1
    return p0
.end method

.method public static final clearActiveArmy()V
    .locals 1

    .line 19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 21
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    .line 22
    return-void
.end method

.method public static final clearAllianceSpecial()V
    .locals 3

    .line 350
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 357
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 358
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 359
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 362
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    goto :goto_2

    .line 363
    :catch_1
    move-exception v0

    .line 364
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 366
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static final countContinentProvinces(I)I
    .locals 3
    .param p0, "nContinentID"    # I

    .line 2980
    const/4 v0, 0x0

    .line 2982
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2983
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 2984
    add-int/lit8 v0, v0, 0x1

    .line 2982
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2988
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static countPlayableProvince()I
    .locals 3

    .line 2994
    const/4 v0, 0x0

    .line 2996
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2997
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_0

    .line 2998
    add-int/lit8 v0, v0, 0x1

    .line 2996
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3002
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static final dispose()V
    .locals 1

    .line 3488
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->dispose()V

    .line 3489
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->dispose()V

    .line 3490
    return-void
.end method

.method public static final disposeCivilizations()V
    .locals 3

    .line 1944
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1945
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 1947
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1949
    :try_start_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->disposeFlag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    goto :goto_1

    .line 1950
    :catch_0
    move-exception v1

    .line 1951
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1947
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1956
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1957
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->clearData()V

    .line 1956
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1960
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1961
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1962
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1963
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1964
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1965
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1966
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1967
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1968
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1969
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1970
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1972
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1973
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1974
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1975
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1976
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1977
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1978
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1979
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1981
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1982
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1983
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1986
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1987
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1989
    invoke-static {}, Laoc/kingdoms/lukasz/map/WondersManager;->initProvinceWonders()V

    .line 1991
    :cond_3
    return-void
.end method

.method public static final disposeCutProvinces()V
    .locals 1

    .line 1998
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1999
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    .line 2000
    return-void
.end method

.method public static final drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2138
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBG_ActiveHoveredProvince()V

    .line 2140
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2143
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    .line 2144
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_5

    .line 2145
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_5

    .line 2147
    :try_start_1
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v0, :cond_2

    .line 2148
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getColorStepID()I

    move-result v3

    const/16 v4, 0x1e

    const/16 v5, 0x37

    const/16 v6, 0xff

    invoke-static {v6, v5, v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 2149
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getColorStepID()I

    move-result v7

    invoke-static {v6, v5, v7, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(IIII)F

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 2150
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getColorStepID()I

    move-result v8

    invoke-static {v6, v5, v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(IIII)F

    move-result v4

    .line 2152
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    const/high16 v6, 0x420c0000    # 35.0f

    if-eqz v5, :cond_0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v5

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v5, v2

    goto :goto_0

    :cond_0
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v5

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    mul-float/2addr v5, v2

    .line 2153
    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    div-float/2addr v5, v2

    invoke-direct {v0, v3, v7, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 2148
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2157
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_4

    .line 2160
    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2161
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    .line 2166
    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v3

    div-float/2addr v3, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    div-float/2addr v3, v2

    const v2, 0x3f75c28f    # 0.96f

    const v4, 0x3f70a3d7    # 0.94f

    invoke-direct {v0, v2, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2169
    :goto_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2173
    :goto_4
    goto :goto_5

    .line 2171
    :catch_0
    move-exception v0

    .line 2178
    :cond_5
    :goto_5
    :try_start_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_b

    .line 2179
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2180
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_SEA_PROVINCES:Z

    const v2, 0x3ca3d70a    # 0.02f

    const v3, 0x3d4ccccd    # 0.05f

    if-nez v0, :cond_8

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2181
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    div-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2182
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;)V

    goto :goto_a

    .line 2184
    :cond_8
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v0, v4, :cond_b

    .line 2186
    :try_start_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_a

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    goto :goto_9

    :cond_a
    move v3, v1

    :goto_9
    div-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2187
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2190
    goto :goto_a

    .line 2188
    :catch_1
    move-exception v0

    .line 2200
    :cond_b
    :goto_a
    goto :goto_b

    .line 2198
    :catch_2
    move-exception v0

    .line 2199
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2202
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2206
    :cond_c
    goto :goto_c

    .line 2204
    :catch_3
    move-exception v0

    .line 2205
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2208
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2209
    return-void
.end method

.method public static final dropAtomicBomb(II)I
    .locals 8
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 852
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v0

    if-lez v0, :cond_2

    .line 853
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNukes(I)V

    .line 856
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->atomicBombDropped()I

    move-result v0

    .line 858
    .local v0, "iCasualties":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p0, v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_1

    .line 859
    :cond_0
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 860
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 862
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AtomicBombing"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Casualties"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-float v6, v0

    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoAtomic:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 865
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_1

    .line 866
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->DROP_NUKE:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    .line 870
    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->addNuke(I)V

    .line 874
    .end local v0    # "iCasualties":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static final exploitEconomy(I)Z
    .locals 3
    .param p0, "iProvinceID"    # I

    .line 554
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_MIN_ECONOMY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 555
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExploitEconomy_Gain(I)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 557
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExploitEconomy_Lose(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    .line 559
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAfterEconomyChange()V

    .line 561
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 563
    const/4 v0, 0x1

    return v0

    .line 566
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static findArmy(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .locals 5
    .param p0, "iCivID"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 3092
    if-eqz p1, :cond_2

    .line 3093
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3095
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3096
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3097
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3098
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 3096
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3095
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3103
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 3104
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3105
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    nop

    .line 3107
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .locals 5
    .param p0, "iCivID"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 3142
    if-eqz p1, :cond_8

    .line 3143
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3145
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3146
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3147
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3148
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V

    return-object v3

    .line 3146
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3145
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3153
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 3154
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "j":I
    :goto_3
    if-ltz v2, :cond_4

    .line 3155
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_3

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3156
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V

    return-object v3

    .line 3154
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 3153
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3161
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 3162
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "j":I
    :goto_5
    if-ltz v2, :cond_7

    .line 3163
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3164
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-direct {v3, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 3162
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 3161
    .end local v2    # "j":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3169
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 3170
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 3171
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_8
    nop

    .line 3173
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findArmy_IncludeVassals(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .locals 6
    .param p0, "iCivID"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 3112
    if-eqz p1, :cond_6

    .line 3113
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3115
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3116
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3117
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3118
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V

    return-object v3

    .line 3116
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3115
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3123
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_2
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v1, v2, :cond_6

    .line 3124
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_5

    .line 3125
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_4
    if-ltz v3, :cond_4

    .line 3126
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, p0, :cond_3

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3127
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 3125
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 3124
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 3123
    .end local v2    # "i":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 3133
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "a":I
    :catch_0
    move-exception v0

    .line 3134
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3135
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6
    nop

    .line 3137
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateSuggestedCivs_ToSmallerMap_OnlyToConvert()V
    .locals 19

    .line 3426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SUGGESTED_TEST.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 3427
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3428
    .local v2, "sOwners":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3430
    .local v4, "sRes":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_8

    .line 3431
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v6, v7

    .line 3432
    .local v6, "tx":I
    add-int/lit8 v7, v5, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    .line 3434
    .local v7, "ty":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 3435
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v9

    if-gt v9, v6, :cond_6

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v9

    if-lt v9, v6, :cond_6

    .line 3436
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v9

    if-gt v9, v7, :cond_5

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v9

    if-lt v9, v7, :cond_5

    .line 3438
    invoke-static {v8, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3440
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "suggestedCivilizations/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".txt"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3441
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 3442
    .local v9, "file2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3444
    .local v12, "sOwners2":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 3446
    .local v13, "sRes3":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 3448
    .local v14, "add":Z
    const/4 v15, 0x0

    .local v15, "az":I
    :goto_2
    move-object/from16 v16, v0

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "file":Lcom/badlogic/gdx/files/FileHandle;
    array-length v0, v13

    if-ge v15, v0, :cond_1

    .line 3449
    aget-object v0, v13, v15

    add-int/lit8 v17, v5, 0x2

    move-object/from16 v18, v2

    .end local v2    # "sOwners":Ljava/lang/String;
    .local v18, "sOwners":Ljava/lang/String;
    aget-object v2, v4, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3450
    const/4 v0, 0x0

    move v14, v0

    .line 3448
    :cond_0
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto :goto_2

    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v2

    .line 3454
    .end local v2    # "sOwners":Ljava/lang/String;
    .end local v15    # "az":I
    .restart local v18    # "sOwners":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 3455
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 3456
    .local v0, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v5, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v0, v2, v10}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 3458
    .end local v0    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "sOwners2":Ljava/lang/String;
    .end local v13    # "sRes3":[Ljava/lang/String;
    .end local v14    # "add":Z
    :cond_2
    goto :goto_4

    .line 3460
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 3461
    .local v0, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v5, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 3465
    .end local v0    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_4

    .line 3438
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    goto :goto_3

    .line 3436
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    goto :goto_3

    .line 3435
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 3434
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto/16 :goto_1

    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 3430
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .end local v6    # "tx":I
    .end local v7    # "ty":I
    .end local v8    # "j":I
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    :goto_4
    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 3475
    .end local v5    # "a":I
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public static getAllianceSpecialNumOfCivs(I)I
    .locals 3
    .param p0, "allianceID"    # I

    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "out":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    .line 374
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 382
    :cond_0
    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 383
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1

    .line 384
    add-int/lit8 v0, v0, 0x1

    .line 382
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 389
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_3

    .line 390
    add-int/lit8 v0, v0, 0x1

    .line 388
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 395
    .end local v1    # "i":I
    :cond_4
    goto :goto_2

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 397
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method public static final getAtomicBombCasualties(I)F
    .locals 3
    .param p0, "iProvinceID"    # I

    .line 848
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_POPULATION_CASUALTIES:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->CasualtiesNuclearAttacks:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getAtomicBombCost(I)F
    .locals 4
    .param p0, "iCivID"    # I

    .line 898
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_COST_PER_ATOMIC_BOMB:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_AtomicBombCost(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static final getAtomicBombProductionTime(I)I
    .locals 1
    .param p0, "iCivID"    # I

    .line 902
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_PRODUCTION_TIME:F

    float-to-int v0, v0

    return v0
.end method

.method public static getBuildingConstructionCost(IIII)I
    .locals 5
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I
    .param p2, "building"    # I
    .param p3, "buildingID"    # I

    .line 654
    if-ltz p1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 656
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v1, v1, p3

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_BUILDING_COST_PER_RESEARCH_POINT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    mul-float/2addr v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-float/2addr v1, v2

    .line 657
    if-ltz p1, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v2, v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionCost:F

    add-float/2addr v2, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    add-float/2addr v2, v3

    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingGroupCost(II)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 656
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getBuildingConstructionTime(IIII)I
    .locals 4
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I
    .param p2, "building"    # I
    .param p3, "buildingID"    # I

    .line 661
    if-ltz p1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 663
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTime:[I

    aget v1, v1, p3

    int-to-float v1, v1

    .line 664
    if-ltz p1, :cond_1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CONSTRUCTION_TIME_PER_LVL:F

    mul-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionTimeBonus:F

    add-float/2addr v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 663
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getBuildingGroupCost(II)F
    .locals 1
    .param p0, "iCivID"    # I
    .param p1, "building"    # I

    .line 668
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    packed-switch v0, :pswitch_data_0

    .line 680
    const/4 v0, 0x0

    return v0

    .line 676
    :pswitch_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    return v0

    .line 673
    :pswitch_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    return v0

    .line 670
    :pswitch_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getCapital_Cost(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 842
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getCapital_Income(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 830
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_INCOME_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getCapital_MaxLvl(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 826
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getCapital_MaxResearch(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 838
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MAX_RESEARCH_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getCapital_ProvincesMaintenance(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 834
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_PROVINCES_MAINTENANCE_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .locals 3
    .param p0, "i"    # I

    .line 2933
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2934
    :catch_0
    move-exception v0

    .line 2935
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    return-object v1
.end method

.method public static final getCivID(Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 2941
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2942
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2943
    return v0

    .line 2941
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2947
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2948
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 2949
    return v0

    .line 2947
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2954
    .end local v0    # "i":I
    :cond_3
    goto :goto_2

    .line 2952
    :catch_0
    move-exception v0

    .line 2956
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static final getCivilizationsInGame()I
    .locals 3

    .line 3067
    const/4 v0, 0x0

    .line 3069
    .local v0, "out":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3070
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_0

    .line 3071
    add-int/lit8 v0, v0, 0x1

    .line 3069
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3075
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static final getCivsSize()I
    .locals 1

    .line 2960
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    return v0
.end method

.method public static getCoreCreationCost(I)F
    .locals 7
    .param p0, "iProvinceID"    # I

    .line 686
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 687
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 689
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_COST_DEFAULT:F

    .line 690
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_COST_PER_ECONOMY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CORE_COST_PER_LVL:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 692
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    .line 693
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_CORE_COST_PER_POINT:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    mul-float/2addr v2, v3

    .line 689
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public static getCoreCreationTime(I)I
    .locals 3
    .param p0, "iProvinceID"    # I

    .line 698
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_TIME_DEFAULT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_TIME_PER_TAX_EFFICIENCY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static getDevastationOccupiedProvince(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 612
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_LOOTED:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getDevelopInfrastructureCost(I)F
    .locals 5
    .param p0, "nProvinceID"    # I

    .line 578
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 580
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_GOLD:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_GOLD_PER_INFRASTRUCTURE:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DevelopInfrastructureCost:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static final getDevelopInfrastructureCostLegacy(I)F
    .locals 5
    .param p0, "nProvinceID"    # I

    .line 584
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 586
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_LEGACY:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_LEGACY_PER_INFRASTRUCTURE:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DevelopInfrastructureCost:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static final getDevelopInfrastructureTime(I)I
    .locals 4
    .param p0, "nProvinceID"    # I

    .line 590
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 592
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_TIME:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_TIME_PER_INFRASTRUCTURE:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static final getDistanceFromAToB_Km(II)F
    .locals 3
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3328
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DistanceKm:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getDistanceFromProvinceToProvince(II)F
    .locals 3
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3301
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 3302
    .local v0, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 3304
    .local v1, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    invoke-interface {v2, p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;->getDistanceFromProvinceToProvince(II)F

    move-result v2

    return v2
.end method

.method public static final getDistanceFromProvinceToProvince_Simpler(II)F
    .locals 8
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3308
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 3309
    .local v0, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 3312
    .local v1, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    :try_start_0
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float v2, v2

    return v2

    .line 3313
    :catch_0
    move-exception v2

    .line 3314
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3315
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    return v3
.end method

.method public static final getDistance_PercOfMax(II)F
    .locals 2
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3320
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getDistance_PercOfMax_Simpler(II)F
    .locals 2
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3324
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince_Simpler(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getExploitEconomy_Gain(I)F
    .locals 2
    .param p0, "iProvinceID"    # I

    .line 550
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExploitEconomy_Lose(I)F

    move-result v1

    mul-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_ECONOMY_GROWTH:F

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_GAIN_PER_INVEST_COST:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getExploitEconomy_Lose(I)F
    .locals 3
    .param p0, "iProvinceID"    # I

    .line 546
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_MIN_ECONOMY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_MIN_ECONOMY:F

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static final getExtraProvinceInViewID(I)I
    .locals 2
    .param p0, "iID"    # I

    .line 2658
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2659
    :catch_0
    move-exception v0

    .line 2660
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2662
    const/4 v1, 0x0

    return v1
.end method

.method protected static final getFogOfWarName(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .line 2759
    packed-switch p0, :pswitch_data_0

    .line 2765
    :pswitch_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Classic"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2763
    :pswitch_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Discovery"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2761
    :pswitch_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Off"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getIncomeFromEconomy(I)F
    .locals 7
    .param p0, "iProvinceID"    # I

    .line 634
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 635
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 637
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INCOME_ECONOMY_PER_ECONOMY:F

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_INCOME_ECONOMY:[F

    .line 638
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_INCOME:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_0
    add-float/2addr v3, v4

    .line 639
    iget-boolean v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_1
    add-float/2addr v3, v6

    .line 638
    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 637
    return v2
.end method

.method public static getIncomeFromEconomy_Invest(I)F
    .locals 7
    .param p0, "iProvinceID"    # I

    .line 643
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 644
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 646
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INCOME_ECONOMY_PER_ECONOMY:F

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_INCOME_ECONOMY:[F

    .line 647
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_INCOME:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_0
    add-float/2addr v3, v4

    .line 648
    iget-boolean v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_1
    add-float/2addr v3, v6

    .line 647
    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 646
    return v2
.end method

.method public static getIncomeFromVassal(II)F
    .locals 1
    .param p0, "iCivID"    # I
    .param p1, "iVassalCivID"    # I

    .line 618
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_TributeLevel(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromVassal(III)F

    move-result v0

    return v0
.end method

.method public static getIncomeFromVassal(III)F
    .locals 3
    .param p0, "iCivID"    # I
    .param p1, "iVassalCivID"    # I
    .param p2, "iLevel"    # I

    .line 622
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_INCOME_TO_LORD:[F

    aget v1, v1, p2

    mul-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getIncomePopulationTaxation(I)F
    .locals 1
    .param p0, "iProvinceID"    # I

    .line 708
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceTaxEfficiency(I)F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(IF)F

    move-result v0

    return v0
.end method

.method public static getIncomePopulationTaxation(IF)F
    .locals 8
    .param p0, "iProvinceID"    # I
    .param p1, "taxEfficiency"    # F

    .line 712
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 713
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 715
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->BASE_INCOME_POPULATION_INCOME:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->TAX_EFFICIENCY_MAX_POPULATION:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->TAX_EFFICIENCY_POPULATION_DIVIDE:F

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, p1, v4

    mul-float/2addr v3, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    .line 717
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_0
    add-float/2addr v4, v5

    .line 718
    iget-boolean v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_1
    add-float/2addr v4, v7

    .line 717
    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 715
    return v2
.end method

.method public static getIncomePopulationTaxation_Invest(I)F
    .locals 2
    .param p0, "iProvinceID"    # I

    .line 722
    nop

    .line 723
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceTaxEfficiency(I)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_GROWTH:F

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(IF)F

    move-result v0

    .line 724
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceTaxEfficiency(I)F

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(IF)F

    move-result v1

    sub-float/2addr v0, v1

    .line 722
    return v0
.end method

.method public static getIncreasTaxEfficiencyTime(I)I
    .locals 1
    .param p0, "nCivID"    # I

    .line 934
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getIncreaseGrowthRateCost(I)F
    .locals 4
    .param p0, "nProvinceID"    # I

    .line 940
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_COST:F

    .line 941
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_GROWTH:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_COST_PER_GROWTH_RATE:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    .line 943
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->IncreaseGrowthRateCost:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseGrowthRateCost:F

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 940
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getIncreaseGrowthRateTime(I)I
    .locals 1
    .param p0, "nCivID"    # I

    .line 947
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getIncreaseManpowerCost(I)F
    .locals 5
    .param p0, "nProvinceID"    # I

    .line 908
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST_PER_LEVEL:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseManpowerCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreaseManpowerCostLegacy(I)F
    .locals 4
    .param p0, "nProvinceID"    # I

    .line 912
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST_LEGACY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST_LEGACY_PER_LEVEL:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseManpowerCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreaseTaxEfficiencyCost(I)F
    .locals 4
    .param p0, "nProvinceID"    # I

    .line 926
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST:I

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST_PER_TAX_EFFICIENCY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseTaxEfficiencyCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreaseTaxEfficiencyCostLegacy(I)F
    .locals 4
    .param p0, "nProvinceID"    # I

    .line 930
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST_LEGACY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST_LEGACY_PER_TAX:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseTaxEfficiencyCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreseManpowerTime(I)I
    .locals 1
    .param p0, "nCivID"    # I

    .line 916
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getIncreseManpower_ManpowerPerMonthInfo(I)F
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 748
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreseManpower_MaximumManpowerInfo(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static getIncreseManpower_MaximumManpowerInfo(I)I
    .locals 6
    .param p0, "iProvinceID"    # I

    .line 741
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 743
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_GROWTH:F

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalManpower:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 744
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_DIFFERENT_RELIGION:F

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_NON_CORE:F

    :goto_1
    add-float/2addr v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 743
    return v1
.end method

.method public static getInflationReduceCost_Legacy(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 3044
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_REDUCE_COST_LEGACY_PER_INFLATION:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getInvestCost(I)F
    .locals 7
    .param p0, "nProvinceID"    # I

    .line 500
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 503
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-lez v2, :cond_0

    .line 504
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_PER_ECONOMY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 505
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 504
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 509
    :cond_0
    goto :goto_0

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 511
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_PER_ECONOMY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 512
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 511
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static getInvestCost_Legacy(I)F
    .locals 7
    .param p0, "nProvinceID"    # I

    .line 516
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 519
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-lez v2, :cond_0

    .line 520
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY_PER_ECONOMY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 521
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 520
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 525
    :cond_0
    goto :goto_0

    .line 523
    :catch_0
    move-exception v2

    .line 524
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 527
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY_PER_ECONOMY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 528
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 527
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static final getInvestEconomyGrowth(I)F
    .locals 1
    .param p0, "iProvinceID"    # I

    .line 496
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_ECONOMY_GROWTH:F

    return v0
.end method

.method public static getInvestTime(I)I
    .locals 1
    .param p0, "nCivID"    # I

    .line 532
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getLegacyPerUniqueResources(I)F
    .locals 4
    .param p0, "iCivID"    # I

    .line 920
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->LEGACY_PER_UNIQUE_RESOURCE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS_MAX:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getLoanExpires()I
    .locals 2

    .line 3030
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_DAYS:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires_Years()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getLoanExpires_Years()I
    .locals 1

    .line 3026
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_YEARS:I

    return v0
.end method

.method public static getLoanInterest(I)F
    .locals 4
    .param p0, "iCivID"    # I

    .line 3022
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_DEFAULT_INTEREST:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_LOAN_INTEREST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getLoanInterestValue(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 3018
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanValue(I)F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanInterest(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires_Years()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getLoanMaxNumber(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 3038
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->MAX_NUMBER_OF_LOANS:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getLoanMonthlyExpenses(F)F
    .locals 1
    .param p0, "fValue"    # F

    .line 3034
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires_Years()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    div-float v0, p0, v0

    return v0
.end method

.method public static getLoanValue(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 3008
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_VALUE_MIN:F

    .line 3010
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3011
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    add-float/2addr v0, v2

    .line 3010
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3014
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_VALUE_BY_ECONOMY:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public static getLootValue(I)F
    .locals 2
    .param p0, "iProvinceID"    # I

    .line 572
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->LOOT_PROVINCE_PER_PROVINCE_INCOME:F

    mul-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLoot()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getManhattanDistance(II)F
    .locals 1
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3293
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    invoke-interface {v0, p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;->getManhattanDistance(II)F

    move-result v0

    return v0
.end method

.method public static final getManhattanDistance_PercOfMax(II)F
    .locals 2
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3297
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistanceManhattan:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getManpowerFromProvincePerMonth_Info(I)F
    .locals 2
    .param p0, "iProvinceID"    # I

    .line 737
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static getManpowerFromVassal_INFO(III)D
    .locals 4
    .param p0, "iCivID"    # I
    .param p1, "iVassalCivID"    # I
    .param p2, "iLevel"    # I

    .line 628
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-wide v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    add-double/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_BASE:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    aget v2, v2, p2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static final getManpowerMaxFromProvinceManpowerLvl(I)I
    .locals 6
    .param p0, "iProvinceID"    # I

    .line 730
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 732
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalManpower:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 733
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_DIFFERENT_RELIGION:F

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_NON_CORE:F

    :goto_1
    add-float/2addr v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 732
    return v1
.end method

.method public static final getManpowerPerMonth(ID)D
    .locals 4
    .param p0, "iCivID"    # I
    .param p1, "iManpowerMax"    # D

    .line 752
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    float-to-double v0, v0

    div-double v0, p1, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static final getManpowerRecoveryFromADisbandedArmy(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 758
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_RECOVERY_FROM_DISBANDED_ARMY_DEFAULT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static getMaxAmountOfGold(I)I
    .locals 4
    .param p0, "iCivID"    # I

    .line 3048
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3050
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MAX_AMOUNT_OF_GOLD_MIN:I

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MAX_AMOUNT_OF_GOLD_PER_INCOME:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getMaxEconomy(I)F
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 536
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->MAX_ECONOMY_GROWTH_RATE:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_Cost(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 776
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_GeneralAttack(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 768
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_ATTACK_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_GeneralDefense(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 772
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_DEFENSE_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_MaintenanceCost(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 780
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_MAINTENANCE_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_MaxLvl(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 764
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_Attack(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 790
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_ATTACK_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_Cost(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 802
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_Defense(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 794
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_DEFENSE_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_MaintenanceCost(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 806
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_MAINTENANCE_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_MaxLvl(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 786
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_RegimentsLimit(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 798
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_REGIMENTS_LIMIT_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static final getNeutralCivilization()Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .locals 11

    .line 1419
    new-instance v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "neu"

    const/4 v3, 0x0

    const/16 v4, 0xfb

    const/16 v5, 0xfb

    const/16 v6, 0xdd

    const/4 v7, -0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIII)V

    return-object v10
.end method

.method public static final getNuclearReactor_AtomicBombCost(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 888
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_ATOMIC_BOMB_COST_PER_LEVEL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getNuclearReactor_Cost(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 892
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getNuclearReactor_MaxLvl(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 880
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getNuclearReactor_ProductionEfficiency(I)F
    .locals 2
    .param p0, "iCivID"    # I

    .line 884
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_PRODUCTION_EFFICIENCY_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getProsperityLevel(I)Ljava/lang/String;
    .locals 3
    .param p0, "iCivID"    # I

    .line 3183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS_VALUE:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3184
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS_VALUE:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 3185
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3189
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS:[Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    .locals 1
    .param p0, "ID"    # I

    .line 2880
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    return-object v0
.end method

.method public static final getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .locals 1
    .param p0, "ID"    # I

    .line 2884
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    return-object v0
.end method

.method public static final getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;
    .locals 1
    .param p0, "ID"    # I

    .line 2920
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    return-object v0
.end method

.method public static final getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;
    .locals 1
    .param p0, "ID"    # I

    .line 2888
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    return-object v0
.end method

.method public static final getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;
    .locals 1
    .param p0, "ID"    # I

    .line 2892
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    return-object v0
.end method

.method public static final getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;
    .locals 1
    .param p0, "ID"    # I

    .line 2896
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    return-object v0
.end method

.method public static final getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;
    .locals 1
    .param p0, "ID"    # I

    .line 2900
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    return-object v0
.end method

.method public static final getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;
    .locals 1
    .param p0, "ID"    # I

    .line 2904
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    return-object v0
.end method

.method public static final getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;
    .locals 1
    .param p0, "ID"    # I

    .line 2908
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    return-object v0
.end method

.method public static final getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;
    .locals 1
    .param p0, "ID"    # I

    .line 2912
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    return-object v0
.end method

.method public static final getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;
    .locals 1
    .param p0, "ID"    # I

    .line 2916
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    return-object v0
.end method

.method public static final getProvinceInViewID(I)I
    .locals 2
    .param p0, "iID"    # I

    .line 2648
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2649
    :catch_0
    move-exception v0

    .line 2650
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2652
    const/4 v1, 0x0

    return v1
.end method

.method public static getProvinceMaintenanceEconomy(II)F
    .locals 2
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 598
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAINTENANCE_PER_ECONOMY:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getProvinceMaintenanceManpower(II)F
    .locals 2
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 606
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAINTENANCE_PER_MANPOWER:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getProvinceMaintenanceTax(II)F
    .locals 2
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 602
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAINTENANCE_PER_TAX:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;
    .locals 1
    .param p0, "ID"    # I

    .line 2924
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    return-object v0
.end method

.method public static getProvinceTaxEfficiency(I)F
    .locals 3
    .param p0, "iProvinceID"    # I

    .line 704
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isWastelandTerrain()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_EFFICIENCY:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getProvincesSize()I
    .locals 1

    .line 2928
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    return v0
.end method

.method public static final getRegionID(I)I
    .locals 3
    .param p0, "nProvinceID"    # I

    .line 2968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    if-ge v0, v1, :cond_2

    .line 2969
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2970
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 2971
    return v0

    .line 2969
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2968
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2976
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getResearchCost(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 3057
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_MAINTENANCE_COST:F

    mul-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getResearchCost(IF)F
    .locals 3
    .param p0, "iCivID"    # I
    .param p1, "value"    # F

    .line 3061
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_MAINTENANCE_COST:F

    mul-float/2addr v0, p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final getSeaProvinceInViewID(I)I
    .locals 2
    .param p0, "iID"    # I

    .line 2668
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2669
    :catch_0
    move-exception v0

    .line 2670
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2672
    const/4 v1, 0x0

    return v1
.end method

.method public static final getTiltK()F
    .locals 1

    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_TILT_RUNTIME:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3ec00000    # 0.375f

    return v0

    :cond_0
    const/4 v0, 0x0    # 0.0f
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/high16 v0, 0x3ec00000    # 0.375f

    return v0
.end method

.method public static final getSupremeCourt_Corruption(I)F
    .locals 4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v0, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    if-eqz p0, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, v3

    mul-float/2addr p0, v2

    div-float/2addr p0, v1

    div-float/2addr p0, v0

    return p0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result p0

    int-to-float p0, p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p0, v2

    div-float/2addr p0, v0

    add-float/2addr p0, v2

    div-float/2addr p0, v1

    return p0

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

.method public static final getSupremeCourt_Cost(I)F
    .locals 3
    .param p0, "iCivID"    # I

    .line 820
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getSupremeCourt_MaxLvl(I)I
    .locals 2
    .param p0, "iCivID"    # I

    .line 812
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getVassalsToRelease(I)Ljava/util/List;
    .locals 8
    .param p0, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;",
            ">;"
        }
    .end annotation

    .line 3352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3354
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3355
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v2, v3, :cond_3

    .line 3356
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-nez v3, :cond_2

    .line 3357
    const/4 v3, 0x0

    .line 3359
    .local v3, "found":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "k":I
    :goto_2
    if-ltz v4, :cond_1

    .line 3360
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 3361
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    add-int/2addr v7, v5

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    .line 3362
    const/4 v3, 0x1

    .line 3363
    goto :goto_3

    .line 3359
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3367
    .end local v4    # "k":I
    :cond_1
    :goto_3
    if-nez v3, :cond_2

    .line 3368
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v6

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3355
    .end local v3    # "found":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3354
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3374
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method public static getVassalsToRelease_Provinces(II)Ljava/util/List;
    .locals 4
    .param p0, "civID"    # I
    .param p1, "releaseCivID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3380
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3381
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v2, v3, :cond_1

    .line 3382
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-nez v3, :cond_0

    .line 3383
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3384
    goto :goto_2

    .line 3381
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3380
    .end local v2    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3389
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static final getWastelandProvinceInViewID(I)I
    .locals 2
    .param p0, "iID"    # I

    .line 2678
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2679
    :catch_0
    move-exception v0

    .line 2680
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2682
    const/4 v1, 0x0

    return v1
.end method

.method public static highTextueSettings()Z
    .locals 1

    .line 242
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    return v0
.end method

.method protected static final inViewX(I)Z
    .locals 3
    .param p0, "nProvinceID"    # I

    .line 2714
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final inViewX(II)Z
    .locals 2
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2730
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v1

    add-int/2addr v1, p0

    if-lt v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v1

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final inViewX2(I)Z
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 2718
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final inViewX2(II)Z
    .locals 1
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2734
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    if-lt v0, p0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final inViewXBelowZero(I)Z
    .locals 3
    .param p0, "nProvinceID"    # I

    .line 2722
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final inViewXBelowZero(II)Z
    .locals 2
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2738
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    add-int/2addr v1, p0

    if-lt v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final inViewX_WholeRegion(II)Z
    .locals 2
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2748
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v0

    add-int/2addr v0, p0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-lt v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v0

    add-int/2addr v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final inViewX_WholeRegion2(II)Z
    .locals 1
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2752
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-lt p0, v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final inViewY(I)Z
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 2710
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final inViewY(II)Z
    .locals 1
    .param p0, "nMinY"    # I
    .param p1, "nMaxY"    # I

    .line 2726
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    if-lt v0, p0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final inViewY_WholeRegion(II)Z
    .locals 1
    .param p0, "nMinY"    # I
    .param p1, "nMaxY"    # I

    .line 2744
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    if-lt p0, v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final initDifficulty()V
    .locals 4

    .line 281
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-nez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 282
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->BONUS_DURATION:I

    add-int/2addr v0, v1

    .line 284
    .local v0, "turnID":I
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>(I)V

    .line 286
    .local v1, "bonusDifficulty":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->INCOME_PRODUCTION:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 287
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->MONTHLY_INCOME:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 289
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->LEGACY:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    .line 291
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->MANPOWER:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    .line 292
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RECRUIT_ARMY_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    .line 293
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RECRUIT_ARMY_TIME:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 294
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->REGIMENTS_LIMIT:[I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 296
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->CONSTRUCTION_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 298
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->CORE_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    .line 299
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RELIGION_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    .line 301
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 303
    .end local v0    # "turnID":I
    .end local v1    # "bonusDifficulty":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    :cond_0
    return-void
.end method

.method public static final initProvinceData()V
    .locals 2

    .line 1784
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1785
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 1786
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 1784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1789
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1790
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V

    .line 1791
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateCityScale()V

    .line 1789
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1793
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static invasionArmy_AddProvince(I)V
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 56
    sget-boolean v0, Lteam/rainfall/rfStrategyN/Core;->pathMode:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->pathArmy_AddProvince(I)V

    .line 58
    return-void

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    return-void

    .line 65
    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_3

    .line 67
    return-void

    .line 69
    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    return-void

    .line 73
    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 79
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static invasionArmy_Clear()V
    .locals 1

    .line 109
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    .line 111
    return-void
.end method

.method public static invasionArmy_RemoveProvince(I)V
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    if-ge v0, v1, :cond_1

    .line 96
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 97
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 106
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static invasionArmy_UndoProvince()V
    .locals 2

    .line 83
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    if-lez v0, :cond_0

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final isAlreadyActiveArmy(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 1250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_1

    .line 1251
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    const/4 v1, 0x1

    return v1

    .line 1250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static loadAiValues()V
    .locals 4

    .line 131
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 134
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    .line 133
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static loadAlliancesSpecial_Images()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->reloadAllFlagImages()V

    return-void
.end method

.method public static final loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    .locals 6
    .param p0, "nTag"    # Ljava/lang/String;

    .line 1752
    const-string v0, "mods/GameCivs/game/civilizations/"

    const-string v1, "game/civilizations/"

    const-string v2, ".json"

    :try_start_0
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1755
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1757
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1758
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto/16 :goto_0

    .line 1759
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v5, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1761
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1762
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto/16 :goto_0

    .line 1763
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1765
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1766
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_0

    .line 1767
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1769
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1770
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    nop

    .line 1775
    :goto_0
    return-object v0

    .line 1772
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;-><init>()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1776
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    :catch_0
    move-exception v0

    .line 1777
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1780
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;-><init>()V

    return-object v0
.end method

.method public static final loadCursor(Z)V
    .locals 5
    .param p0, "resetToDefault"    # Z

    .line 1604
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    .line 1605
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v3, "gfx/cursor/standard.png"

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/drag.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/build.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/recruit.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/recruit2.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/x.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/plus.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/economy.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/tax.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/core.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/religion.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/populationGrowth.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/infrastructure.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/recruit3.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/economy2.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/nuke.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    goto :goto_0

    .line 1624
    :cond_0
    if-eqz p0, :cond_1

    .line 1625
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V

    .line 1627
    :cond_1
    :goto_0
    return-void
.end method

.method protected static final loadLanguage()V
    .locals 2

    .line 1498
    invoke-static {}, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;->loadLanguages()V

    .line 1500
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1501
    return-void
.end method

.method public static loadLowSettings()V
    .locals 2

    .line 246
    const-string v0, "settings/LoadTexturesHigh.txt"

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :try_start_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 250
    .local v0, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 254
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 257
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    .line 259
    :goto_1
    return-void
.end method

.method public static final loadProvinceBG(I)V
    .locals 1
    .param p0, "nProvinceID"    # I

    .line 2011
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    .line 2012
    return-void
.end method

.method public static final loadProvincesBG()V
    .locals 2

    .line 2003
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v1, :cond_0

    .line 2004
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    .line 2003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2007
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->disposeCutProvinces()V

    .line 2008
    return-void
.end method

.method protected static final loadSettings()V
    .locals 3

    .line 1442
    const-string v0, "settings/Settings.txt"

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    .line 1444
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSettingsDefault()V

    .line 1447
    :try_start_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1448
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1450
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1451
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_0
    goto :goto_0

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1457
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    if-eqz v0, :cond_1

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_MODE:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_mm1

    const/4 v0, 0x1

    :cond_mm1
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_TILT_RUNTIME:Z

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_mm2

    const/4 v0, 0x1

    :cond_mm2
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_OFF:Z

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Map;->updateDrawProvincesFlags()V

    .line 1458
    return-void
.end method

.method public static final loadSettingsDefault()V
    .locals 4

    .line 1475
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1479
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DOUBLE_BORDER:Z

    .line 1480
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v2, 0x2

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    .line 1481
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v3, 0x1

    iput v3, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    .line 1482
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    .line 1483
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CLOUDS:Z

    .line 1484
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/16 v1, 0x1e

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    .line 1485
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput v3, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CIV_NAMES:I

    .line 1486
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    .line 1488
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/16 v1, 0x54

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_SIZE:I

    .line 1491
    :goto_0
    return-void
.end method

.method public static loadSuggestedCivs(I)Ljava/util/List;
    .locals 6
    .param p0, "provinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3397
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "suggestedCivilizations/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 3399
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3400
    .local v2, "sOwners":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3402
    .local v3, "sRes":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 3403
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3402
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3407
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .end local v3    # "sRes":[Ljava/lang/String;
    .end local v4    # "a":I
    :cond_0
    return-object v0
.end method

.method public static pathArmy_AddProvince(I)V
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 40
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lteam/rainfall/rfStrategyN/Core;->isNeighbor(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    return-void

    .line 46
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    if-ne p0, v0, :cond_2

    .line 47
    return-void

    .line 49
    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {p0, v0}, Lteam/rainfall/rfStrategyN/Core;->isNeighbor(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    return-void

    .line 52
    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    .line 54
    return-void
.end method

.method public static final pathContains(III)Z
    .locals 9
    .param p0, "nProvinceID"    # I
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 2770
    const/4 v0, 0x0

    .line 2772
    .local v0, "output":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v2

    .local v2, "iSize":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 2773
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, p2, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    if-le v7, p2, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    if-eq v4, v7, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    sub-int v7, p2, v7

    mul-int/2addr v4, v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v4, v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    add-int/2addr v4, v7

    if-ge p1, v4, :cond_3

    .line 2774
    if-nez v0, :cond_2

    move v5, v6

    :cond_2
    move v0, v5

    .line 2772
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    move v3, v1

    move v1, v4

    goto :goto_0

    .line 2778
    .end local v2    # "iSize":I
    .end local v3    # "j":I
    .end local v4    # "i":I
    :cond_4
    return v0
.end method

.method public static final pathContains_Cut(III)Z
    .locals 9
    .param p0, "nProvinceID"    # I
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 2782
    const/4 v0, 0x0

    .line 2784
    .local v0, "output":Z
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    if-lt p1, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    if-gt p1, v1, :cond_4

    .line 2785
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    if-lt p2, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    if-gt p2, v1, :cond_4

    .line 2787
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsSize()I

    move-result v2

    .local v2, "iSize":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 2788
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, p2, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v7

    if-le v7, p2, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    if-eq v4, v7, :cond_3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsX(I)I

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsX(I)I

    move-result v7

    sub-int/2addr v4, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v7

    sub-int v7, p2, v7

    mul-int/2addr v4, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v8, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v4, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsX(I)I

    move-result v7

    add-int/2addr v4, v7

    if-ge p1, v4, :cond_3

    .line 2789
    if-nez v0, :cond_2

    move v5, v6

    :cond_2
    move v0, v5

    .line 2787
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    move v3, v1

    move v1, v4

    goto/16 :goto_0

    .line 2796
    .end local v2    # "iSize":I
    .end local v3    # "j":I
    .end local v4    # "i":I
    :cond_4
    return v0
.end method

.method public static regroupArmy_AddProvince(I)V
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 1094
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v0, v1, :cond_1

    .line 1095
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 1096
    return-void

    .line 1094
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1100
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1103
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_BuildArmyShadow()V

    .line 1105
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;-><init>(Ljava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    goto :goto_1

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1109
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static regroupArmy_BuildArmyShadow()V
    .locals 8

    .line 1145
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v0, "numOfArmies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v1, v2, :cond_0

    .line 1149
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v1    # "i":I
    :cond_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v1, :cond_2

    .line 1153
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v1, v2, :cond_2

    .line 1154
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v2

    .line 1156
    .local v2, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v2, :cond_1

    .line 1157
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v5, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v6, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v7, v1, v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v7, v1, v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v3, v1, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v4, v1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .end local v2    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1165
    .end local v0    # "numOfArmies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1166
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static regroupArmy_Clear()V
    .locals 1

    .line 1206
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1207
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1208
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1210
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    .line 1211
    return-void
.end method

.method public static regroupArmy_Move()V
    .locals 10

    .line 1170
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v0, :cond_3

    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_3

    .line 1172
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1174
    .local v1, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v1, :cond_2

    .line 1175
    const/4 v2, 0x0

    .line 1178
    .local v2, "extraY":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 1179
    :try_start_1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v5, :cond_0

    .line 1180
    add-int/lit8 v2, v2, 0x1

    .line 1178
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1183
    .end local v3    # "j":I
    :catch_0
    move-exception v3

    .line 1184
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1185
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    nop

    .line 1187
    :goto_2
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    .line 1189
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v5, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v6, v0, v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v7, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v9, 0x0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    .line 1171
    .end local v1    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .end local v2    # "extraY":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    .line 1196
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playMove()V

    .line 1197
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1198
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy(ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1202
    :cond_4
    goto :goto_3

    .line 1200
    :catch_1
    move-exception v0

    .line 1201
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1203
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static regroupArmy_RemoveProvince(I)V
    .locals 3
    .param p0, "nProvinceID"    # I

    .line 1128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v0, v1, :cond_1

    .line 1129
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 1130
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1131
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1133
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_BuildArmyShadow()V

    .line 1134
    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;-><init>(Ljava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    return-void

    .line 1128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1140
    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1141
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static regroupArmy_UndoProvince()V
    .locals 2

    .line 1113
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v0, :cond_0

    .line 1114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1115
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1117
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_BuildArmyShadow()V

    .line 1119
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;-><init>(Ljava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_0
    goto :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1124
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final removeActiveArmy(I)V
    .locals 1
    .param p0, "id"    # I

    .line 1344
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1345
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1347
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-nez v0, :cond_0

    .line 1348
    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    .line 1350
    :cond_0
    return-void
.end method

.method public static final removeActiveArmy(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 1353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_1

    .line 1354
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1356
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1357
    return-void

    .line 1353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1360
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static removeAllianceSpecial(I)V
    .locals 1
    .param p0, "id"    # I

    .line 424
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 428
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static removeAllianceSpecial(Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 415
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 417
    return-void

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static final removeCivilization(I)V
    .locals 6
    .param p0, "nRemoveCivID"    # I

    .line 1796
    if-nez p0, :cond_0

    .line 1797
    return-void

    .line 1800
    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1801
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1802
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 1805
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1806
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->clearArmiesCivID(I)V

    .line 1805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1809
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1810
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1814
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_5

    .line 1815
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivID_Just(I)V

    .line 1817
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-le v2, p0, :cond_3

    .line 1818
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    goto :goto_2

    .line 1820
    :cond_3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-ne v2, p0, :cond_4

    .line 1821
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 1814
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1825
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_b

    .line 1826
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-le v2, p0, :cond_6

    .line 1827
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_Just(I)V

    goto :goto_4

    .line 1829
    :cond_6
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v2, p0, :cond_7

    .line 1830
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_Just(I)V

    .line 1831
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    .line 1834
    :cond_7
    :goto_4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_5
    if-ltz v2, :cond_a

    .line 1835
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-le v4, p0, :cond_8

    .line 1836
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sub-int/2addr v5, v3

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    goto :goto_6

    .line 1838
    :cond_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, p0, :cond_9

    .line 1839
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    .line 1834
    :cond_9
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1843
    .end local v2    # "j":I
    :cond_a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateCores_AfterRemoveCiv(I)V

    .line 1825
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1847
    .end local v0    # "i":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    if-ge v0, v1, :cond_c

    .line 1848
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->updateAfterRemoveOfCiv(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1852
    .end local v0    # "i":I
    :cond_c
    goto :goto_8

    .line 1850
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1854
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAfterRemoveCiv(I)V

    .line 1856
    sput-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 1857
    sput-boolean v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 1858
    return-void
.end method

.method public static runAgeOfChaos()V
    .locals 13

    .line 3496
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_MODE:Z

    if-nez v0, :cond_0

    .line 3497
    return-void

    .line 3500
    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_YEARS:I

    mul-int/lit16 v1, v1, 0x16d

    rem-int/2addr v0, v1

    if-nez v0, :cond_9

    .line 3503
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_1

    .line 3504
    return-void

    .line 3507
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_CIVS_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3510
    .local v0, "civs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3512
    .local v1, "score":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 3514
    .local v2, "k":D
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    goto :goto_0

    :cond_2
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    :goto_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3516
    .local v4, "currentPlayerCapital":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 3517
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v6, v7, :cond_3

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-lez v7, :cond_3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REVOLUTIONISTS:Z

    if-nez v7, :cond_3

    .line 3518
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3519
    neg-double v7, v2

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v4, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    add-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3516
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3523
    .end local v6    # "i":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 3524
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_2
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_CIVS:I

    if-ge v5, v6, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 3525
    const/4 v6, 0x0

    .line 3526
    .local v6, "totalScore":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_5

    .line 3527
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v6, v8

    .line 3526
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 3529
    .end local v7    # "i":I
    :cond_5
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 3532
    .local v7, "randomScore":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "iSize":I
    const/4 v10, 0x0

    .local v10, "currentScore":I
    :goto_4
    if-ge v8, v9, :cond_7

    .line 3533
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    .line 3535
    if-lt v10, v7, :cond_6

    .line 3536
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_CIVS_LIST:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3537
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3538
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3539
    goto :goto_5

    .line 3532
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3524
    .end local v6    # "totalScore":I
    .end local v7    # "randomScore":I
    .end local v8    # "i":I
    .end local v9    # "iSize":I
    .end local v10    # "currentScore":I
    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3548
    .end local v5    # "a":I
    :cond_8
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->AGE_OF_CHAOS_CIVS_LIST:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 3549
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v6, Laoc/kingdoms/lukasz/menu/View;->AGE_OF_CHAOS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3555
    .end local v0    # "civs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "score":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "k":D
    .end local v4    # "currentPlayerCapital":I
    :cond_9
    goto :goto_6

    .line 3553
    :catch_0
    move-exception v0

    .line 3554
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3556
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method public static saveSettings()V
    .locals 4

    .line 24
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    .line 25
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v2, "Data"

    const-class v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-string v2, "settings/Settings.txt"

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_0

    .line 30
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 32
    .restart local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->isLocalStorage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 35
    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public static final saveTextueSettings()V
    .locals 3

    .line 263
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-string v1, "settings/LoadTexturesHigh.txt"

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_0

    .line 266
    .end local v0    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 269
    .restart local v0    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method public static final setActiveArmy(ILjava/lang/String;)V
    .locals 3
    .param p0, "nProvinceID"    # I
    .param p1, "sKey"    # Ljava/lang/String;

    .line 1260
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 1263
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 1265
    .local v0, "tID":I
    if-ltz v0, :cond_0

    .line 1266
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 1268
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 1269
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 1270
    iput p0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1271
    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1273
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    .end local v0    # "tID":I
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_0
    goto :goto_0

    .line 1276
    :catch_0
    move-exception v0

    .line 1279
    :goto_0
    return-void
.end method

.method public static setActiveProvinceID(I)V
    .locals 6
    .param p0, "nActiveProvince"    # I

    .line 463
    sput p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 465
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ne v0, v1, :cond_1

    .line 466
    sget-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x7d0

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 467
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v3

    const v3, 0x44098000    # 550.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    sub-long/2addr v0, v2

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    goto :goto_0

    .line 470
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    goto :goto_0

    .line 474
    :cond_1
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    .line 476
    :goto_0
    return-void
.end method

.method public static final setCursorBuild()V
    .locals 3

    .line 1646
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1647
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1648
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1650
    :cond_0
    return-void
.end method

.method public static final setCursorCore()V
    .locals 3

    .line 1702
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1703
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1704
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1706
    :cond_0
    return-void
.end method

.method public static final setCursorDefault()V
    .locals 3

    .line 1632
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    if-eqz v0, :cond_0

    .line 1633
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1634
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1636
    :cond_0
    return-void
.end method

.method public static final setCursorDrag()V
    .locals 3

    .line 1639
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1640
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1641
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1643
    :cond_0
    return-void
.end method

.method public static final setCursorEconomy()V
    .locals 3

    .line 1683
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 1684
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 1685
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1686
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    goto :goto_0

    .line 1688
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1689
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1692
    :cond_1
    :goto_0
    return-void
.end method

.method public static final setCursorInfrastructure()V
    .locals 3

    .line 1723
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 1724
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1725
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1727
    :cond_0
    return-void
.end method

.method public static final setCursorNuke()V
    .locals 3

    .line 1730
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 1731
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1732
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1734
    :cond_0
    return-void
.end method

.method public static final setCursorPlus()V
    .locals 3

    .line 1676
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1677
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1678
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1680
    :cond_0
    return-void
.end method

.method public static final setCursorPopulationGrowth()V
    .locals 3

    .line 1716
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 1717
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1718
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1720
    :cond_0
    return-void
.end method

.method public static final setCursorRecruit()V
    .locals 3

    .line 1653
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1654
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 1655
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1656
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    goto :goto_0

    .line 1658
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1659
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1660
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    goto :goto_0

    .line 1662
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1663
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1666
    :cond_2
    :goto_0
    return-void
.end method

.method public static final setCursorReligion()V
    .locals 3

    .line 1709
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1710
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1711
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1713
    :cond_0
    return-void
.end method

.method public static final setCursorTax()V
    .locals 3

    .line 1695
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1696
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1697
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1699
    :cond_0
    return-void
.end method

.method public static final setCursorX()V
    .locals 3

    .line 1669
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1670
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1671
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1673
    :cond_0
    return-void
.end method

.method public static setHoveredProvinceID(I)V
    .locals 2
    .param p0, "nHoveredProvinceID"    # I

    .line 481
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iOldHoveredProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-eq v0, v1, :cond_0

    if-ltz p0, :cond_0

    .line 482
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iOldHoveredProvinceID:I

    .line 484
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 485
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playHover()V

    .line 489
    :cond_0
    sput p0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 490
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    .line 491
    return-void
.end method

.method public static setInvasionArmyMode()V
    .locals 1

    .line 18
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setInvasionArmyMode(Z)V

    .line 19
    return-void
.end method

.method public static setInvasionArmyMode(Z)V
    .locals 2
    .param p0, "nInvasionArmyMode"    # Z

    .line 22
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eq v0, p0, :cond_2

    .line 23
    sput-boolean p0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    .line 24
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_Clear()V

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy_InvasionArmy()V

    .line 27
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_1

    .line 28
    sget-boolean v0, Lteam/rainfall/rfStrategyN/Core;->pathMode:Z

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 32
    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_InvasionArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_InvasionArmy;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public static final setProvinceID_HoverAProvince(II)I
    .locals 4
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2358
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "tPosX":I
    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_1

    .line 2359
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p0

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 2361
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v2, v3, :cond_0

    .line 2362
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2363
    return v0

    .line 2358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2368
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p0

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 2369
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_3

    .line 2370
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2371
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p0

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 2373
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v2, v3, :cond_2

    .line 2374
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2375
    return v0

    .line 2369
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2382
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method protected static final setProvinceID_IsMouseOverAProvinceID(III)Z
    .locals 5
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I
    .param p2, "nProvinceID"    # I

    .line 2386
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p0

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 2388
    .local v0, "tPosX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v0, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v1, v3, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v1, v3, :cond_0

    .line 2389
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2390
    return v2

    .line 2394
    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sub-int/2addr v1, p0

    int-to-float v1, v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 2395
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2396
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sub-int/2addr v1, p0

    int-to-float v1, v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v0, v1

    .line 2398
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    if-gt v1, v3, :cond_1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    if-lt v1, v3, :cond_1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v1, v3, :cond_1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v1, v3, :cond_1

    .line 2399
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    invoke-static {p2, v1, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2400
    return v2

    .line 2406
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static final setProvinceID_Point(II)I
    .locals 4
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v1, :cond_1

    .line 2411
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    if-gt v1, p0, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    if-lt v1, p0, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2412
    invoke-static {v0, p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2413
    return v0

    .line 2410
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2418
    .end local v0    # "i":I
    :cond_1
    int-to-float v0, p0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 2419
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .local v1, "tPosX":I
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_3

    .line 2420
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2421
    int-to-float v2, p0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 2423
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    if-gt v2, p1, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    if-lt v2, p1, :cond_2

    .line 2424
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v0, v2, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2425
    return v0

    .line 2419
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2432
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static setRegroupArmyMode()V
    .locals 1

    .line 1070
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    .line 1071
    return-void
.end method

.method public static setRegroupArmyMode(Z)V
    .locals 1
    .param p0, "nRegroupArmyMode"    # Z

    .line 1074
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eq v0, p0, :cond_1

    .line 1075
    sput-boolean p0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    .line 1077
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_Clear()V

    .line 1078
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 1080
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy_RegroupArmy()V

    .line 1082
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_0

    .line 1083
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RegroupArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RegroupArmy;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    goto :goto_0

    .line 1086
    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    .line 1087
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    .line 1090
    :cond_1
    :goto_0
    return-void
.end method

.method public static final setUpdateProvincesInView(Z)V
    .locals 0
    .param p0, "nUpdateProvincesInView"    # Z

    .line 2687
    sput-boolean p0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 2688
    return-void
.end method

.method public static final updateActiveArmy_MoveUnits(Ljava/lang/String;II)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "oldProvinceID"    # I
    .param p2, "newProvinceID"    # I

    .line 1283
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ne v0, p1, :cond_0

    .line 1284
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput p2, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1285
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1287
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    if-gez v0, :cond_0

    .line 1288
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    const/4 v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1292
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_5

    .line 1293
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ne v1, p1, :cond_4

    .line 1294
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1295
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1297
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "rebuildProvinceArmy"

    if-ltz v1, :cond_1

    .line 1298
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput p2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1299
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput p2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1301
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1302
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$1;

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_1

    .line 1311
    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1312
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1314
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-nez v1, :cond_2

    .line 1315
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    goto :goto_1

    .line 1317
    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1318
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$2;

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1327
    :cond_3
    :goto_1
    return-void

    .line 1292
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1333
    .end local v0    # "i":I
    :cond_5
    goto :goto_2

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1334
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static final updateCivilizationIdeology(ILjava/lang/String;)V
    .locals 5
    .param p0, "nCivID"    # I
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 2828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2829
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2830
    return-void

    .line 2828
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2834
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    .line 2836
    .local v0, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v4, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG(Ljava/lang/String;III)V

    .line 2840
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/Game$5;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2852
    .end local v0    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_1

    .line 2850
    :catch_0
    move-exception v0

    .line 2851
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2853
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static final updateCivilizationIdeology_InGame(ILjava/lang/String;)V
    .locals 5
    .param p0, "nCivID"    # I
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 2857
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    .line 2859
    .local v0, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v4, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG(Ljava/lang/String;III)V

    .line 2861
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/Game$6;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2873
    .end local v0    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_0

    .line 2871
    :catch_0
    move-exception v0

    .line 2872
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2874
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final updateDaultScenarioID()V
    .locals 4

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    if-ge v0, v1, :cond_1

    .line 229
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultScenario:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 231
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;

    .line 232
    goto :goto_1

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public static updateDrawArmy()V
    .locals 2

    .line 3480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3481
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 3480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3483
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static final updateDrawProvince2(I)V
    .locals 3
    .param p0, "nProvinceID"    # I

    .line 2524
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2525
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2526
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2527
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2529
    return-void

    .line 2531
    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2532
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2533
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2535
    return-void

    .line 2537
    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewXBelowZero(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2538
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2539
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2541
    return-void

    .line 2545
    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2546
    return-void
.end method

.method public static final updateDrawProvince_CheckExtra(I)V
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 2621
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2622
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-ge v0, v1, :cond_0

    .line 2623
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-le v0, v1, :cond_0

    .line 2624
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2628
    :cond_0
    return-void
.end method

.method private static final updateDrawRegionProvinces(I)V
    .locals 5
    .param p0, "iID"    # I

    .line 2494
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Region;

    .line 2496
    .local v0, "region":Laoc/kingdoms/lukasz/jakowski/Region;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_WholeRegion(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2497
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_WholeRegion(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2498
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2499
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2501
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2504
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 2506
    :cond_1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_WholeRegion2(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2507
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2508
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2510
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2507
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2513
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 2518
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2519
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawProvince2(I)V

    .line 2518
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2521
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public static final updateGame()V
    .locals 2

    .line 1508
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    const v1, 0x3c88893b    # 0.016667f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    .line 1510
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->update()V

    .line 1511
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->update()V

    .line 1513
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-gtz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_1

    .line 1514
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->update()V

    .line 1517
    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_2

    .line 1518
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->update()V

    .line 1523
    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->update()V

    .line 1524
    return-void
.end method

.method public static final updateHighlitghtProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2317
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    if-nez v0, :cond_0

    .line 2318
    return-void

    .line 2321
    :cond_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_BackAnimation:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v0, :cond_2

    .line 2323
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x43af0000    # 350.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2325
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 2330
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    .line 2333
    return-void

    .line 2335
    :cond_1
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    goto :goto_0

    .line 2340
    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x443b8000    # 750.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x42be0000    # 95.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2342
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 2343
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2347
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    .line 2348
    return-void

    .line 2351
    :cond_3
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    .line 2353
    :goto_0
    return-void
.end method

.method protected static final updateHoveredProvince_Hover(II)V
    .locals 4
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2258
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2259
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2260
    return-void

    .line 2263
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ltz v0, :cond_1

    .line 2264
    return-void

    .line 2268
    :cond_1
    :try_start_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_3

    .line 2270
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_2

    int-to-float v0, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, p1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_IsMouseOverAProvinceID(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2271
    return-void

    .line 2274
    :cond_2
    int-to-float v0, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, p1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2276
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-gez v0, :cond_5

    .line 2277
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_0

    .line 2282
    :cond_3
    int-to-float v0, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, p1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2284
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_4

    .line 2285
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->resetAnimation()V

    goto :goto_0

    .line 2288
    :cond_4
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2292
    :cond_5
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;->build()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2298
    goto :goto_1

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2295
    const/4 v1, -0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 2297
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2301
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 2299
    :catch_1
    move-exception v0

    .line 2302
    :goto_2
    return-void
.end method

.method protected static final updateHoveredProvince_HoverInMapMode(II)V
    .locals 5
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2212
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2213
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2214
    return-void

    .line 2217
    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    if-ltz v0, :cond_1

    .line 2218
    return-void

    .line 2222
    :cond_1
    const/4 v0, -0x1

    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v2, :cond_3

    .line 2224
    int-to-float v2, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_IsMouseOverAProvinceID(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2225
    return-void

    .line 2228
    :cond_2
    int-to-float v2, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2230
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-gez v2, :cond_5

    .line 2231
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_0

    .line 2236
    :cond_3
    int-to-float v2, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2238
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v2, :cond_4

    .line 2239
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->resetAnimation()V

    goto :goto_0

    .line 2242
    :cond_4
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2246
    :cond_5
    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->buildHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2250
    :catch_0
    move-exception v2

    .line 2251
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2252
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    goto :goto_2

    .line 2247
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 2248
    .local v2, "ex":Ljava/lang/NullPointerException;
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2249
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 2253
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_1
    nop

    .line 2254
    :goto_2
    return-void
.end method

.method public static final updateInView_CordsXY()V
    .locals 3

    .line 2700
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    .line 2701
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    .line 2703
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    .line 2704
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    .line 2705
    return-void
.end method

.method public static final updateMapDistance()V
    .locals 2

    .line 3233
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->isWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3234
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    goto :goto_0

    .line 3264
    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$9;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$9;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    .line 3290
    :goto_0
    return-void
.end method

.method public static final updateProvinceBG_ActiveHoveredProvince()V
    .locals 9

    .line 2095
    const-string v0, "/"

    const-string v1, "scales/"

    const-string v2, "data/"

    const-string v3, "map/"

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2096
    return-void

    .line 2099
    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_SEA_PROVINCES:Z

    if-nez v4, :cond_4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_HOVERED_SEA_PROVINCE:Z

    if-eqz v4, :cond_4

    .line 2100
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v4, :cond_4

    .line 2101
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2102
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG_LoadedID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-eq v4, v5, :cond_4

    .line 2103
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v4, :cond_1

    .line 2104
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 2105
    const/4 v4, 0x0

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2107
    const/4 v4, -0x1

    sput v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG_LoadedID:I

    .line 2110
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x4

    if-ne v5, v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v5, v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v5, v8

    float-to-int v5, v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v2

    if-ne v2, v7, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v2, v3

    float-to-int v6, v2

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 2114
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 2115
    .local v1, "convertedPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 2117
    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2119
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 2120
    const/4 v0, 0x0

    .line 2122
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 2123
    const/4 v1, 0x0

    .line 2125
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG_LoadedID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    .end local v0    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v1    # "convertedPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_4
    goto :goto_2

    .line 2132
    :catch_0
    move-exception v0

    .line 2133
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2135
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static final updateProvinceBorder(I)V
    .locals 6
    .param p0, "i"    # I

    .line 1924
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1925
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p0, v1, :cond_1

    .line 1926
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto :goto_1

    .line 1929
    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_2

    move v2, v3

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 1924
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1932
    .end local v0    # "j":I
    :cond_3
    return-void
.end method

.method protected static final updateProvinceInViewLists(I)V
    .locals 2
    .param p0, "nProvinceID"    # I

    .line 2549
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2551
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2552
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2554
    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2555
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2558
    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2560
    :goto_0
    return-void
.end method

.method public static final updateProvincesInView()V
    .locals 4

    .line 2439
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    if-nez v0, :cond_0

    .line 2440
    return-void

    .line 2442
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 2445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_1

    .line 2446
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2449
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_2

    .line 2450
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2453
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_3

    .line 2454
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2453
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2457
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_4

    .line 2458
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2457
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2461
    .end local v1    # "i":I
    :cond_4
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 2462
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 2463
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 2464
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 2466
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2467
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2468
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2469
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    if-ge v0, v1, :cond_8

    .line 2472
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Region;

    .line 2474
    .local v1, "region":Laoc/kingdoms/lukasz/jakowski/Region;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2475
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(II)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(II)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    .line 2478
    :cond_5
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2479
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewXBelowZero(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2480
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawRegionProvinces(I)V

    goto :goto_6

    .line 2476
    :cond_6
    :goto_5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawRegionProvinces(I)V

    .line 2471
    .end local v1    # "region":Laoc/kingdoms/lukasz/jakowski/Region;
    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2486
    .end local v0    # "i":I
    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 2487
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 2488
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 2489
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 2490
    return-void
.end method

.method public static final updateSimpleTask()V
    .locals 2

    .line 1571
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1573
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->update()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1576
    goto :goto_1

    .line 1574
    :catch_0
    move-exception v1

    .line 1575
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1571
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1580
    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 1578
    :catch_1
    move-exception v0

    .line 1579
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1581
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public final clearProvincesInView()V
    .locals 3

    .line 2631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2632
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2635
    .end local v0    # "i":I
    :cond_0
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 2636
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 2637
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 2638
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 2640
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2641
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2642
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2643
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2644
    return-void
.end method

.method public final getProvinceAnimation_Active_Data()Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;
    .locals 1

    .line 2964
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    return-object v0
.end method
