<#
  LoaderSettings 合并脚本 —— 以虚革 3.4.2 包 baseline 为底,只并入"伪3D倾斜"相关改动。
  依据:out\dex-report.txt 方法级对比结论 + 用户要求(去掉地名图标功能)。
  产物:final-smali\(build-dex.bat 的汇编源)。
  前置:merge-work\pack-smali\ 已存在(包内 19 类反汇编 baseline)。
#>
$ErrorActionPreference = "Stop"
$here  = Split-Path -Parent $MyInvocation.MyCommand.Path
$proj  = Split-Path -Parent $here
$pack  = Join-Path $proj "merge-work\pack-smali"
$mod   = Join-Path $proj "smali"
$final = Join-Path $proj "final-smali"
$P     = "aoc\kingdoms\lukasz"

# Target APK baseline: AOH_PACKAGE_DIR env > <androidRoot>\polaris (native APK) > legacy heuristic.
$gameRoot    = Split-Path -Parent $proj
$androidRoot = Split-Path -Parent $gameRoot
$packageDir  = $env:AOH_PACKAGE_DIR
if ([string]::IsNullOrEmpty($packageDir)) {
    $polaris = Join-Path $androidRoot "polaris"
    if (Test-Path -LiteralPath (Join-Path $polaris "classes2.dex")) { $packageDir = $polaris }
}
if (-not [string]::IsNullOrEmpty($packageDir)) {
    $env:AOH_PACKAGE_DIR = $packageDir
    Write-Host "[merge] package: $packageDir"
}
if ($env:AOH_REFRESH_BASELINE -eq "1") {
    $refresh = Join-Path $here "refresh-baseline.ps1"
    if (Test-Path -LiteralPath $refresh) { & $refresh -PackageDir $packageDir }
}

if (-not (Test-Path -LiteralPath $pack)) { throw "缺少 $pack(先用 baksmali 反汇编包 baseline)" }

$SCRIPT:enc = New-Object Text.UTF8Encoding($false)
function RL([string]$p) { [IO.File]::ReadAllLines($p, [Text.Encoding]::UTF8) }
function WL([string]$p, $lines) { [IO.File]::WriteAllLines($p, [string[]]$lines, $SCRIPT:enc) }

function Find-MethodRange($lines, [string]$sig) {
    $name = $sig.Substring(0, $sig.IndexOf('('))
    $s1 = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $l = $lines[$i]
        if ($l.StartsWith(".method ") -and ($l.Split(' ')[-1] -eq $sig)) { $s1 = $i; break }
    }
    if ($s1 -lt 0) {
        $hits = @()
        for ($i = 0; $i -lt $lines.Count; $i++) {
            $l = $lines[$i]
            if ($l.StartsWith(".method ") -and ($l.Split(' ')[-1] -like "$name(*")) { $hits += $i }
        }
        if ($hits.Count -eq 0) { throw "方法未找到: $sig" }
        if ($hits.Count -gt 1) { throw ("方法签名不唯一: {0} -> {1}" -f $sig, (($hits | ForEach-Object { $lines[$_].Trim() }) -join " | ")) }
        $s1 = $hits[0]
    }
    $e1 = -1
    for ($i = $s1; $i -lt $lines.Count; $i++) { if ($lines[$i].StartsWith(".end method")) { $e1 = $i; break } }
    if ($e1 -lt 0) { throw "方法块不完整: $sig" }
    @($s1, $e1)
}

function Get-Block([string]$file, [string]$sig) {
    $lines = RL $file
    $r = Find-MethodRange $lines $sig
    $out = New-Object System.Collections.Generic.List[string]
    for ($i = $r[0]; $i -le $r[1]; $i++) { $out.Add($lines[$i]) }
    ,$out
}

function Replace-Block([string]$file, [string]$sig, $block) {
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.AddRange([string[]](RL $file))
    $r = Find-MethodRange $lines $sig
    $out = New-Object System.Collections.Generic.List[string]
    for ($i = 0; $i -lt $r[0]; $i++) { $out.Add($lines[$i]) }
    $out.AddRange([string[]]$block)
    for ($i = $r[1] + 1; $i -lt $lines.Count; $i++) { $out.Add($lines[$i]) }
    WL $file $out
}

function Append-Block([string]$file, $block) {
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.AddRange([string[]](RL $file))
    $lines.Add("")
    $lines.AddRange([string[]]$block)
    WL $file $lines
}

function Insert-Field([string]$file, [string]$fieldLine) {
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.AddRange([string[]](RL $file))
    $firstMethod = -1; $lastField = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i].StartsWith(".method ")) { $firstMethod = $i; break }
        if ($lines[$i].StartsWith(".field ")) { $lastField = $i }
    }
    if ($lastField -ge 0) { $at = $lastField + 1 }
    elseif ($firstMethod -ge 0) { $at = $firstMethod }
    else { $at = $lines.Count }
    $lines.Insert($at, $fieldLine)
    WL $file $lines
}

# ---- 0) 重置 final-smali = pack 基线 ----
if (Test-Path -LiteralPath $final) { Remove-Item -LiteralPath $final -Recurse -Force }
Copy-Item -LiteralPath $pack -Destination $final -Recurse -Force

# ---- 1) CityIconHelper 必须保留(名称/城市渲染路径依赖它;缺类=NoClassDefFoundError)----
# 用 patches 版(mod 版基础 + CityLowConfig 引用已中和为包版逻辑);icons 为公共字段供并入的 mod 方法读取
Copy-Item -LiteralPath (Join-Path $proj "patches\CityIconHelper.smali") -Destination (Join-Path $final "$P\map\map\CityIconHelper.smali") -Force

# ---- 1b) 剔除本批未修改、仅供备用反汇编的类 ----
foreach ($n in @("map\civilization\CivilizationRegion.smali", "map\civilization\CivilizationRegionsManager.smali", "jakowski\FBO\FBOProvinceNames.smali")) {
    $f = Join-Path $final "$P\$n"
    if (Test-Path -LiteralPath $f) { Remove-Item -LiteralPath $f -Force }
}

# ---- 2) 新增类(设置菜单的 MapTilt 两行)----
foreach ($n in @('Settings_Menu$61', 'Settings_Menu$62')) {
    Copy-Item -LiteralPath (Join-Path $mod "$P\menus\Settings\$n.smali") -Destination (Join-Path $final "$P\menus\Settings\$n.smali") -Force
}

# ---- 3) 保留(替换)的方法 ----
$keep = [ordered]@{
    "jakowski\Game.smali"                             = @("loadSettings()V")
    "jakowski\GameActiveProvince.smali"               = @("actionUp_setActiveProvinceID2(IIII)V", "mouseOverProvinceID(II)I", "moveActiveArmiesToProvinceID(I)V", "setProvinceID_PPM(II)V")
    "jakowski\Renderer\Renderer.smali"                = @("renderer_SetToCurrentScale()V", "renderer_SetToCurrentScale2()V")
    "jakowski\Renderer\RendererAnimationNuke.smali"   = @("draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    "jakowski\Renderer\RendererGame.smali"            = @("getDrawPosX(IF)I", "getDrawPosY(IF)I")
    "jakowski\setting\SettingsManager.smali"          = @("<init>()V")
    "map\map\City.smali"                              = @("drawCity(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V", "drawCity_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V", "drawCity_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V", "drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V", "drawCity_Name(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V", "drawCity_NameNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V", "getDrawPosX(IF)I", "getDrawPosY(IF)I")
    "map\map\MapCities.smali"                         = @("drawCities_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V", "drawCities_Just_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V")
    "map\map\MapTouchManager.smali"                   = @("actionMoveMap(III)V", "updateStartMovePosXY(II)V")
    "map\moveUnits\MoveUnits.smali"                   = @("draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V", "draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V")
    "map\moveUnits\other\MoveUnits_RegroupLine.smali" = @("draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V")
    "map\province\ProvinceDraw.smali"                 = @("drawBuildingsInConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", "drawRecruitingArmyPlayer(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", "drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FIII)V", "drawWondersConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    "map\province\ProvinceDrawArmy.smali"             = @("getArmyPosX(II)I", "getArmyPosX_Shadow(I)I", "getArmyPosY(II)I", "getArmyPosY_Shadow(I)I", "getDetailsPosX(I)I", "getDetailsPosX_2(I)I", "getDetailsPosY(I)I", "getDetailsPosY_2(I)I")
    "map\province\animation\ProvinceAnimationDot.smali" = @("draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z")
    "menus\Settings\Settings_Menu.smali"              = @("<init>()V", "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V")
}

$n = 0
foreach ($rel in $keep.Keys) {
    $mf = Join-Path $mod   "$P\$rel"
    $tf = Join-Path $final "$P\$rel"
    foreach ($sig in $keep[$rel]) {
        $b = Get-Block $mf $sig
        Replace-Block $tf $sig $b
        $n++
    }
}
Write-Host ("[keep] 替换方法 {0} 个" -f $n)

# ---- 4) 新增方法 ----
$gameMod   = Join-Path $mod   "$P\jakowski\Game.smali"
$gameFinal = Join-Path $final "$P\jakowski\Game.smali"
Append-Block $gameFinal (Get-Block $gameMod "getTiltK()F")
$helper = @(Get-Block $gameMod "getSupremeCourt_Corruption(I)F" | ForEach-Object { $_ -replace "getSupremeCourt_Corruption", "getTiltMouseMapPos" })
Append-Block $gameFinal $helper
Append-Block $gameFinal (Get-Block (Join-Path $proj "patches\Game.applyMapTiltToBatch.smali") "applyMapTiltToBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")

$spMod = Join-Path $mod "$P\jakowski\setting\SettingsProvince.smali"
$spFin = Join-Path $final "$P\jakowski\setting\SettingsProvince.smali"
Append-Block $spFin (Get-Block $spMod "getSettingsText_MapTilt()Ljava/lang/String;")
Append-Block $spFin (Get-Block $spMod "updateSettings_MapTilt()V")
$pp = Join-Path $proj "patches"
$smFin = Join-Path $final "$P\menus\Settings\Settings_Menu.smali"
Append-Block $smFin (Get-Block (Join-Path $pp "Settings_Menu.initMapPage.smali") "initMapPage()V")
Write-Host "[keep] 新增方法: getTiltK / getTiltMouseMapPos / applyMapTiltToBatch / getSettingsText_MapTilt / updateSettings_MapTilt / initMapPage"

# ---- 5) 字段 ----
Insert-Field $gameFinal ".field public static MAP_TILT_RUNTIME:Z = true"
Insert-Field $gameFinal ".field public static MAP_OFF:Z"
Insert-Field (Join-Path $final "$P\jakowski\setting\SettingsManager.smali") ".field public MAP_TILT:Z"
Insert-Field (Join-Path $final "$P\jakowski\setting\SettingsManager.smali") ".field public MAP_MODE:I"
Insert-Field (Join-Path $final "$P\menus\Settings\Settings_Menu.smali") ".field public static MAP_PAGE:Z"
Write-Host "[keep] 字段: Game.MAP_TILT_RUNTIME / Game.MAP_OFF / SettingsManager.MAP_TILT / SettingsManager.MAP_MODE / Settings_Menu.MAP_PAGE"

# ---- 6) 调用方改名(仅限并入的 mod 方法;包内原有的调用保持原样)----
$renamed = 0
foreach ($rel in @("jakowski\GameActiveProvince.smali", "map\map\MapTouchManager.smali")) {
    $f = Join-Path $final "$P\$rel"
    $t = [IO.File]::ReadAllText($f, [Text.Encoding]::UTF8)
    $t2 = $t.Replace("Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Corruption(I)F", "Laoc/kingdoms/lukasz/jakowski/Game;->getTiltMouseMapPos(I)F")
    if ($t2 -ne $t) { [IO.File]::WriteAllText($f, $t2, $SCRIPT:enc); $renamed++ }
}
Write-Host ("[mix] 调用改名文件数 {0}" -f $renamed)

# ---- 7) 文字倾斜(省名随地图变形;数学完全内联,不依赖新增 helper)----
#     + 战斗横幅倾斜(v9):Battle.getArmyPosX/Y 与包版返回值同源,整体做一次倾斜变换
#     (全包仅 Battle.drawBattle_Just 调用;实机影响面已用 RefFind 核实)
$patches = Join-Path $proj "patches"
$textRepl = @(
    @("map\province\ProvinceNamesManager.smali", "drawProvName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V", "ProvinceNamesManager.drawProvName"),
    @("map\province\ProvinceNamesManager.smali", "drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V", "ProvinceNamesManager.drawProvName_Medium"),
    @("map\province\ProvinceDrawArmy.smali", "getArmyPosX(II)I", "ProvinceDrawArmy.getArmyPosX"),
    @("map\province\ProvinceDrawArmy.smali", "getArmyPosY(II)I", "ProvinceDrawArmy.getArmyPosY"),
    @("map\battles\Battle.smali", "getArmyPosX(I)I", "Battle.getArmyPosX"),
    @("map\battles\Battle.smali", "getArmyPosY(I)I", "Battle.getArmyPosY"),
    @("map\SiegeManager.smali", "getArmyPosX(I)I", "SiegeManager.getArmyPosX"),
    @("map\SiegeManager.smali", "getArmyPosY(I)I", "SiegeManager.getArmyPosY"),
    @("map\moveUnits\other\MoveUnits_BiggestCities.smali", "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V", "MoveUnits_BiggestCities.draw"),
    @("map\moveUnits\other\MoveUnits_BiggestCities_Diplomacy.smali", "draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z", "MoveUnits_BiggestCities_Diplomacy.draw2"),
    @("map\map\Ship\Ship2.smali", "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V", "Ship2.draw"),
    @("jakowski\Renderer\Renderer.smali", "render()V", "Renderer.render")
)
foreach ($r in $textRepl) {
    $tf = Join-Path $final "$P\$($r[0])"
    $blk = [IO.File]::ReadAllLines((Join-Path $patches "$($r[2]).smali"), [Text.Encoding]::UTF8)
    Replace-Block $tf $r[1] ([string[]]$blk)
}
Write-Host "[tilt-text] 省名/城市名/部队/战斗横幅/攻城线/外交线/商船 倾斜补丁已应用"

# ---- 8) 并入 LongPressMoveArmy(Quick Actions)----
#     loader patch 模式已经把 Mixin 展开成完整目标类;这里只移植"新增/修改"的方法与字段,
#     保留包 baseline 中其余方法(尤其是与 PC 版本有差异的 actionUpSelectMode 等)。
#     每次合并都刷新一次 patched smali,保证 LPA 源码/jar 变更后不会用到旧结果。
$lpaSmali = Join-Path $proj "merge-work\lpa-patch\lpa-smali"
Write-Host "[lpa] 刷新 patched smali(build-lpa-patch.ps1)..."
& (Join-Path $here "build-lpa-patch.ps1")
if (-not (Test-Path -LiteralPath $lpaSmali)) { throw "LPA patched smali 生成失败: $lpaSmali" }

function Test-MethodExists([string]$file, [string]$sig) {
    $lines = RL $file
    foreach ($l in $lines) {
        if ($l.StartsWith(".method ") -and ($l.Split(' ')[-1] -eq $sig)) { return $true }
    }
    return $false
}

function Add-Missing-Field([string]$file, [string]$fieldLine) {
    $txt = [IO.File]::ReadAllText($file, [Text.Encoding]::UTF8)
    if ($txt.IndexOf($fieldLine, [StringComparison]::Ordinal) -lt 0) {
        Insert-Field $file $fieldLine
        return $true
    }
    return $false
}

function Merge-LpaClass([string]$rel, [string[]]$addedFields, [string[]]$addedMethods, [string[]]$replacedMethods) {
    $src = Join-Path $lpaSmali $rel
    $dst = Join-Path $final    $rel
    if (-not (Test-Path -LiteralPath $src)) { throw "缺少 LPA 类: $src" }
    if (-not (Test-Path -LiteralPath $dst)) { throw "缺少目标类: $dst" }
    foreach ($f in $addedFields) { Add-Missing-Field $dst $f | Out-Null }
    foreach ($sig in $addedMethods) {
        if (-not (Test-MethodExists $dst $sig)) { Append-Block $dst (Get-Block $src $sig) }
    }
    foreach ($sig in $replacedMethods) { Replace-Block $dst $sig (Get-Block $src $sig) }
    Write-Host ("[lpa] {0}: +字段{1} +方法{2} ~方法{3}" -f $rel, $addedFields.Count, $addedMethods.Count, $replacedMethods.Count)
}

# Touch: Mixin 覆盖 actionDown / actionMove(III)V,并注入 actionUp。
Merge-LpaClass "aoc\kingdoms\lukasz\jakowski\Touch.smali" @() @(
    'qa$actionUp(IIIILteam/rainfall/finality/luminosity2/CallbackInfo;)V'
) @(
    'actionDown(IIII)V',
    'actionMove(III)V',
    'actionUp(IIII)V'
)

# MapTouchManager: 新增 scrollMethod 字段 + 三注入方法;覆盖 actionDown / actionUp / drawSelectMode。
# 注意:倾斜补丁修改的 actionMoveMap / updateStartMovePosXY 保持第 3/6 步的结果,不在这里替换。
Merge-LpaClass "aoc\kingdoms\lukasz\map\map\MapTouchManager.smali" @(
    '.field private static scrollMethod:Ljava/lang/reflect/Method;'
) @(
    'lpm$actionDown(IIIILteam/rainfall/finality/luminosity2/CallbackInfo;)V',
    'lpm$actionUp(IIIILteam/rainfall/finality/luminosity2/CallbackInfo;)V',
    'lpm$drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lteam/rainfall/finality/luminosity2/CallbackInfo;)V'
) @(
    'actionDown(IIII)V',
    'actionUp(IIII)V',
    'drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V'
)

# ButtonTopOutliner: 新增提示文本/高亮/悬停行 + 两个注入方法;覆盖 drawText / buildElementHover。
$lpaBtn = Join-Path $lpaSmali "aoc\kingdoms\lukasz\menu_element\button\ButtonTopOutliner.smali"
$hoverField = @(Select-String -LiteralPath $lpaBtn -Pattern '^\.field .*HOVER_TEXT' | Select-Object -First 1)[0]
if (-not $hoverField) { throw "ButtonTopOutliner.smali: HOVER_TEXT 字段未找到" }
Merge-LpaClass "aoc\kingdoms\lukasz\menu_element\button\ButtonTopOutliner.smali" @(
    $hoverField.Line
) @(
    'drawQuickActionsHighlight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V',
    'hoverRow(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;',
    'qa$drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLteam/rainfall/finality/luminosity2/CallbackInfo;)V',
    'qa$buildElementHover(Lteam/rainfall/finality/luminosity2/CallbackInfo;)V'
) @(
    'drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V',
    'buildElementHover()V'
)

# LPA 运行时支持类(不含 Mixin 类与 loader 生成的 PluginsCollection)
$lpaPkg = Join-Path $lpaSmali "com\saysky\longpressmovearmy"
$dstPkg = Join-Path $final   "com\saysky\longpressmovearmy"
if (Test-Path -LiteralPath $dstPkg) { Remove-Item -LiteralPath $dstPkg -Recurse -Force }
Copy-Item -LiteralPath $lpaPkg -Destination $dstPkg -Recurse -Force
Write-Host "[lpa] Quick Actions 支持类已并入(不含 mixin / PluginsCollection)"

# ---- 9) 小地图每日重建后的投影修复 ----
#     虚革包 GAME_UPDATE_MINIMAP=1 → 每天 24:00 重建小地图。MapBG.drawMinimapTexture_Generate
#     在 finally 里用 camera.setToOrtho 重置相机,并把 oSB 投影设成未倾斜版本 → 该帧地图闪回原版。
#     在正常返回路径(goto/16 :goto_428)之前调用 Game.applyMapTiltToBatch(oSB) 重新应用倾斜。
function Insert-Before-Line([string]$file, [int]$start, [int]$end, [string]$match, [string]$newLine) {
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.AddRange([string[]](RL $file))
    $idx = -1
    for ($i = $start; $i -le $end; $i++) {
        if ($lines[$i].Trim() -eq $match) { $idx = $i; break }
    }
    if ($idx -lt 0) { throw "未找到注入点: $match ($file)" }
    $lines.Insert($idx, $newLine)
    WL $file $lines
    return $idx
}

$mbg = Join-Path $final "$P\map\map\MapBG.smali"
if (-not (Test-Path -LiteralPath $mbg)) { throw "缺少目标类: $mbg" }
$mbgLines = RL $mbg
$mbgRange = Find-MethodRange $mbgLines "drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V"
$at = Insert-Before-Line $mbg $mbgRange[0] $mbgRange[1] "goto/16 :goto_428" "    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->applyMapTiltToBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V"
Write-Host ("[minimap] MapBG.drawMinimapTexture_Generate 正常返回前已补倾斜(行 {0})" -f ($at + 1))

# ---- 10) "省份名称: 低" 的黑色地标缩小 2 倍 ----
#     NamesLow 走 City.drawCity_InGame_NamesLow_OnlyName;
#     图标缩放来自 CityIconHelper.getScaleForCity() → 在 move-result v2 后乘以 0.5。
$cityFinal = Join-Path $final "$P\map\map\City.smali"
if (-not (Test-Path -LiteralPath $cityFinal)) { throw "缺少目标类: $cityFinal" }
$cityLines = New-Object System.Collections.Generic.List[string]
$cityLines.AddRange([string[]](RL $cityFinal))
$cr = Find-MethodRange $cityLines "drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V"
$ci = -1
for ($i = $cr[0]; $i -le $cr[1]; $i++) {
    if ($cityLines[$i].Trim() -eq "move-result v2" -and $i -ge 2 -and $cityLines[$i - 2].Contains("getScaleForCity")) { $ci = $i; break }
}
if ($ci -lt 0) { throw "未找到 NamesLow 图标缩放注入点: City.drawCity_InGame_NamesLow_OnlyName" }
$cityLines.Insert($ci + 1, "    const/high16 v4, 0x3f000000    # 0.5f")
$cityLines.Insert($ci + 2, "    mul-float/2addr v2, v4")
WL $cityFinal $cityLines
Write-Host "[nameslow] 省份名称=低: 黑色地标缩放已乘以 0.5(缩小 2 倍)"

# ---- 11) MissionLazyLoad subproject: lazy-load scenario civ mission images ----
#      MissionTree.loadMissionsImagesCiv builds name/ImageID index only;
#      each texture is decoded on first draw by com.saysky.missionopt.MissionLazy (java\src).
$mlApply = Join-Path $proj "MissionLazyLoad\tools\apply-patch.ps1"
if (Test-Path -LiteralPath $mlApply) {
    & $mlApply -FinalSmali $final -PackageDir $packageDir
}

# ---- 12) LateGamePerf subproject: game-side late-game perf (minimap throttle) ----
#      GameThread.updateMinimap -> LatePerf (min 7-day minimap rebuild + day-tick timer);
#      SaveGameManager.autosave gets LatePerf.onDayTickEnd(); MapBG disposes the Pixmap after Texture upload.
$lpApply = Join-Path $proj "LateGamePerf\tools\apply-patch.ps1"
if (Test-Path -LiteralPath $lpApply) {
    & $lpApply -FinalSmali $final -PackageDir $packageDir
}

# ---- 13) ArmyVoice subproject: army click voice priority ----
#      ArmyClickSoundManager.playForCiv -> com.saysky.armyvoice.ArmyVoice (java\src):
#      army_click/<civTag> > army_religions/<religion> > army_culture/<group> > army_default.
$avApply = Join-Path $proj "ArmyVoice\tools\apply-patch.ps1"
if (Test-Path -LiteralPath $avApply) {
    & $avApply -FinalSmali $final -PackageDir $packageDir
}

# ---- 14) HotVarApi subproject: event trigger bridge for hot-plugins ----
#      EventTrigger_HasVariable / _HasVariableNot / _HasVariableCiv.outCondition
#      -> com.saysky.hotvar.HotVars (java\src). Hot plugins register a prefix through
#      reflection, so events can ask "zparty:support:mon:gt:0.50" live; vanilla fallback kept.
$hvApply = Join-Path $proj "HotVarApi\tools\apply-patch.ps1"
if (Test-Path -LiteralPath $hvApply) {
    & $hvApply -FinalSmali $final -PackageDir $packageDir
}

# ---- 15) SiegeTint subproject: occupation progress color filter ----
#      SiegeManager.drawSiege -> com.saysky.siegetint.SiegeTint (legacy body kept as drawSiege_Vanilla);
#      ProvinceDraw.drawOccupiedProvinces tail -> SiegeTint.drawAll (tint under armies);
#      SettingsManager.SIEGE_TINT toggle (Settings -> Map page).
$stApply = Join-Path $proj "SiegeTint\tools\apply-patch.ps1"
if (Test-Path -LiteralPath $stApply) {
    & $stApply -FinalSmali $final -PackageDir $packageDir
}

# ---- 16) WebUI subproject: console bridge for the WebView/JS layer ----
#      InGame_Console.execute -> com.saysky.web.WebConsole (java\src):
#      `web ...` commands (open/close/reload/status) + vanilla fallback.
$webApply = Join-Path $proj "WebUI\tools\apply-patch.ps1"
if (Test-Path -LiteralPath $webApply) {
    & $webApply -FinalSmali $final -PackageDir $packageDir
}

Write-Host "完成: final-smali 已生成"
