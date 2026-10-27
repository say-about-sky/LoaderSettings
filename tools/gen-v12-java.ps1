# v12b: 导航行改为 Java 类 Settings_MapOpen(8 参,无 owner),文字固定为「地图」;
# initMapPage 改为轻量 shim(调用 Java Settings_MapUI.build());清理旧 $63/$64/$65 与 getSettingsText_Map
$ErrorActionPreference = "Stop"
$G = if ($env:AOH_GAME_ROOT) { $env:AOH_GAME_ROOT } else { Split-Path -Parent (Split-Path -Parent $PSScriptRoot) }
$enc = New-Object Text.UTF8Encoding($false)

# ---------- 1) Settings_Menu.smali: 重写导航行 ----------
$f = "$G\LoaderSettings\smali\aoc\kingdoms\lukasz\menus\Settings\Settings_Menu.smali"
$list = New-Object System.Collections.ArrayList
$list.AddRange([string[]]([IO.File]::ReadAllLines($f, [Text.Encoding]::UTF8)))

$iStart = -1
for ($k = 0; $k -lt $list.Count; $k++) { if ($list[$k].Contains("Settings_Menu`$63;")) { $iStart = $k; break } }
if ($iStart -lt 0) { throw "nav row start (`$63 new-instance) not found" }
$iEnd = -1
for ($k = $iStart; $k -lt $list.Count; $k++) { if ($list[$k].Contains("Settings_Menu`$63;-><init>")) { $iEnd = $k; break } }
if ($iEnd -lt 0) { throw "nav row end (`$63 <init>) not found" }

$newBlock = @'
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
'@ -split "`n"
$list.RemoveRange($iStart, $iEnd - $iStart + 1)
$list.InsertRange($iStart, [string[]]$newBlock)
[IO.File]::WriteAllLines($f, [string[]]$list.ToArray(), $enc)

$txt = [IO.File]::ReadAllText($f, [Text.Encoding]::UTF8)
if (([regex]::Matches($txt, [regex]::Escape("Settings_Menu`$63"))).Count -ne 0) { throw "`$63 refs remain" }
if (([regex]::Matches($txt, [regex]::Escape("Settings_MapOpen"))).Count -ne 2) { throw "Settings_MapOpen refs != 2" }
if (([regex]::Matches($txt, [regex]::Escape("getSettingsText_Map"))).Count -ne 0) { throw "getSettingsText_Map refs remain" }
Write-Host "[OK] Settings_Menu.smali: nav row -> Java Settings_MapOpen, text fixed"

# ---------- 2) initMapPage shim(调用 Java build) ----------
$shim = @'
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
'@
[IO.File]::WriteAllText("$G\LoaderSettings\patches\Settings_Menu.initMapPage.smali", $shim, $enc)
Write-Host "[OK] patches\Settings_Menu.initMapPage.smali rewritten (Java shim)"

# ---------- 3) 清理旧文件 ----------
foreach ($n in @("$G\LoaderSettings\smali\aoc\kingdoms\lukasz\menus\Settings\Settings_Menu`$63.smali",
                 "$G\LoaderSettings\smali\aoc\kingdoms\lukasz\menus\Settings\Settings_Menu`$64.smali",
                 "$G\LoaderSettings\smali\aoc\kingdoms\lukasz\menus\Settings\Settings_Menu`$65.smali",
                 "$G\LoaderSettings\patches\SettingsProvince.getSettingsText_Map.smali")) {
    if (Test-Path -LiteralPath $n) { Remove-Item -LiteralPath $n -Force; Write-Host ("[DEL] " + (Split-Path $n -Leaf)) }
}
Write-Host "done"
