<#
  MissionLazyLoad - apply dex patch to LoaderSettings\final-smali (ASCII only, keep file plain)
  All logic lives in java\src\com\saysky\missionopt\MissionLazy.java; the smali here is adapter only.
  1) MissionTree.loadMissionsImagesCiv(I)V   -> MissionLazy.indexCiv(civID)
  2) MissionTree.disposeMissionImagesCivs()V -> MissionLazy.disposeCivs()
  3) consumers of MissionTree.missionImagesCivs -> MissionLazy.get(id)
     (ButtonMissionTreeCiv.drawButtonBG, rfEvent.utils.MissionUtil)
  Missing baseline classes are disassembled from the target package dex.
#>
param(
    [string]$FinalSmali = "",
    [string]$PackageDir = "",
    [string]$Baksmali = "",
    [string]$JavaExe = ""
)

$ErrorActionPreference = "Stop"

$here  = Split-Path -Parent $MyInvocation.MyCommand.Path
$sub   = Split-Path -Parent $here
$proj  = Split-Path -Parent $sub
$game  = Split-Path -Parent $proj
$androidRoot = Split-Path -Parent $game

if ([string]::IsNullOrEmpty($FinalSmali)) { $FinalSmali = Join-Path $proj "final-smali" }
if ([string]::IsNullOrEmpty($Baksmali))   { $Baksmali   = Join-Path $game ".tools\smali\baksmali-2.5.2.jar" }
if ([string]::IsNullOrEmpty($JavaExe)) {
    $JavaExe = if ($env:JAVA_HOME) { Join-Path $env:JAVA_HOME "bin\java.exe" } else { "" }
    if ([string]::IsNullOrEmpty($JavaExe) -or -not (Test-Path -LiteralPath $JavaExe)) {
        $jdk = @(Get-ChildItem "C:\Program Files\Microsoft\jdk-*","C:\Program Files\Java\jdk-*" -Directory -ErrorAction SilentlyContinue |
                 Sort-Object Name -Descending | Select-Object -First 1)
        $JavaExe = if ($jdk.Count -gt 0) { Join-Path $jdk[0].FullName "bin\java.exe" } else { "" }
    }
    if ([string]::IsNullOrEmpty($JavaExe)) { throw "java.exe not found: set JAVA_HOME or pass -JavaExe" }
}
$patchDir = Join-Path $sub "patches"

# auto detect package dir: prefer a package that ships the TheGreatWar scenario missions,
# then any GameCivs dir with classes.dex + assets
if ([string]::IsNullOrEmpty($PackageDir) -and -not [string]::IsNullOrEmpty($env:AOH_PACKAGE_DIR)) {
    $PackageDir = $env:AOH_PACKAGE_DIR
}
if ([string]::IsNullOrEmpty($PackageDir)) {
    $candRoot = Join-Path $androidRoot "GameCivs"
    if (Test-Path -LiteralPath $candRoot) {
        $all = @(Get-ChildItem -LiteralPath $candRoot -Directory |
            Where-Object { (Test-Path -LiteralPath (Join-Path $_.FullName "classes.dex")) })
        $cand = $all |
            Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "assets\map\Earth3\scenarios\TheGreatWar\missions") } |
            Sort-Object Name | Select-Object -First 1
        if (-not $cand) {
            $cand = $all |
                Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "assets") } |
                Sort-Object Name | Select-Object -First 1
        }
        if ($cand) { $PackageDir = $cand.FullName }
    }
}

if (-not (Test-Path -LiteralPath $FinalSmali)) { throw "missing final-smali: $FinalSmali (run tools\merge.ps1 first)" }
Write-Host "[missionlazy] final-smali: $FinalSmali"
Write-Host "[missionlazy] package    : $PackageDir"

$SCRIPT:enc = New-Object Text.UTF8Encoding($false)
function RL([string]$p) { [IO.File]::ReadAllLines($p, [Text.Encoding]::UTF8) }
function WL([string]$p, $lines) { [IO.File]::WriteAllLines($p, [string[]]$lines, $SCRIPT:enc) }

function Read-Block([string]$p) {
    $l = New-Object System.Collections.Generic.List[string]
    foreach ($x in [IO.File]::ReadAllLines($p, [Text.Encoding]::UTF8)) { $l.Add($x) }
    while ($l.Count -gt 0 -and $l[$l.Count - 1].Trim() -eq "") { $l.RemoveAt($l.Count - 1) }
    ,$l
}

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
        if ($hits.Count -eq 0) { throw "method not found: $sig" }
        if ($hits.Count -gt 1) { throw "method sig not unique: $sig" }
        $s1 = $hits[0]
    }
    $e1 = -1
    for ($i = $s1; $i -lt $lines.Count; $i++) { if ($lines[$i].StartsWith(".end method")) { $e1 = $i; break } }
    if ($e1 -lt 0) { throw "method block incomplete: $sig" }
    @($s1, $e1)
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

function Ensure-Class([string]$relPath, [string]$descriptor) {
    $target = Join-Path $FinalSmali $relPath
    if (Test-Path -LiteralPath $target) { return $target }
    if ([string]::IsNullOrEmpty($PackageDir)) { throw "missing class in final-smali and no package dir to disassemble: $relPath" }
    if (-not (Test-Path -LiteralPath $Baksmali)) { throw "missing baksmali jar: $Baksmali" }
    if (-not (Test-Path -LiteralPath $JavaExe)) { throw "missing java: $JavaExe" }

    $latin = [Text.Encoding]::GetEncoding(28591)
    $dexCandidates = @()
    foreach ($d in (Get-ChildItem -LiteralPath $PackageDir -Filter *.dex | Sort-Object Name)) {
        $bytes = [IO.File]::ReadAllBytes($d.FullName)
        if ($latin.GetString($bytes).Contains($descriptor)) { $dexCandidates += $d.FullName }
    }
    if ($dexCandidates.Count -eq 0) { throw "class not found in package dex: $descriptor ($PackageDir)" }

    foreach ($dex in $dexCandidates) {
        $tmp = Join-Path $env:TEMP ("missionlazy_" + [Guid]::NewGuid().ToString("N"))
        New-Item -ItemType Directory -Force -Path $tmp | Out-Null
        try {
            Write-Host ("[missionlazy]   disasm {0} -> {1}" -f (Split-Path $dex -Leaf), $descriptor)
            & $JavaExe -jar $Baksmali d $dex -o $tmp --classes $descriptor
            Write-Host ("[missionlazy]   exit={0}" -f $LASTEXITCODE)
            $src = Join-Path $tmp $relPath
            if (Test-Path -LiteralPath $src) {
                $dir = Split-Path -Parent $target
                New-Item -ItemType Directory -Force -Path $dir | Out-Null
                Copy-Item -LiteralPath $src -Destination $target -Force
                return $target
            }
            Write-Host ("[missionlazy]   not found under {0}" -f $tmp)
        }
        finally {
            if (Test-Path -LiteralPath $tmp) { Remove-Item -LiteralPath $tmp -Recurse -Force }
        }
    }
    throw "baksmali could not extract class from any package dex: $descriptor"
}

# ---------- 1) MissionTree: adapters only, all logic lives in Java (MissionLazy) ----------
$mtRel = "aoc\kingdoms\lukasz\jakowski\Missions\MissionTree.smali"
$mt = Ensure-Class $mtRel "Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;"

Replace-Block $mt "loadMissionsImagesCiv(I)V" (Read-Block (Join-Path $patchDir "MissionTree__loadMissionsImagesCiv.smali"))
Replace-Block $mt "disposeMissionImagesCivs()V" (Read-Block (Join-Path $patchDir "MissionTree__disposeMissionImagesCivs.smali"))
Replace-Block $mt "loadMissions_Civs()V" (Read-Block (Join-Path $patchDir "MissionTree__loadMissions_Civs.smali"))

# older builds of this patch appended getMissionImageCiv to MissionTree; drop it (idempotent)
$mtLines = New-Object System.Collections.Generic.List[string]
$mtLines.AddRange([string[]](RL $mt))
try {
    $r = Find-MethodRange $mtLines "getMissionImageCiv(I)Laoc/kingdoms/lukasz/textures/Image;"
    $mtLines.RemoveRange($r[0], ($r[1] - $r[0] + 1))
    WL $mt $mtLines
}
catch { }
Write-Host "[missionlazy] MissionTree: methods delegate to com.saysky.missionopt.MissionLazy"

# ---------- 2) consumers: MissionTree.missionImagesCivs.get(id) -> MissionLazy.get(id) ----------
# Pattern (verified in package smali):
#   sget-object vX, MissionTree->missionImagesCivs:List
#   ...index...                     (iget / move-result / local)
#   invoke-interface {vX, vY}, List->get(I)Object
#   move-result-object vX
#   check-cast vX, Image
# Rewrite: drop the sget-object and turn the List->get into com.saysky.missionopt.MissionLazy.get(vY).
function Patch-MissionImageConsumers([string]$file) {
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.AddRange([string[]](RL $file))
    $tail = "Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->missionImagesCivs:Ljava/util/List;"
    $hits = 0
    $i = 0
    while ($i -lt $lines.Count) {
        $t = $lines[$i].Trim()
        if ($t.StartsWith("sget-object ") -and $t.EndsWith($tail)) {
            $reg = $t.Substring(12).Split(',')[0].Trim()
            $inv = -1
            for ($j = $i + 1; $j -lt [Math]::Min($lines.Count, $i + 40); $j++) {
                $tj = $lines[$j].Trim()
                if ($tj.StartsWith(".method") -or $tj.StartsWith(".end method")) { break }
                if ($tj.StartsWith("invoke-interface {" + $reg + ",")) { $inv = $j; break }
                if ($tj.StartsWith("sget-object " + $reg + ",") -or $tj.StartsWith("move-result-object " + $reg) -or $tj.StartsWith("iget-object " + $reg + ",") -or $tj.StartsWith("new-instance " + $reg + ",")) { break }
            }
            if ($inv -ge 0) {
                $ti = $lines[$inv].Trim()
                if ($ti.Contains("Ljava/util/List;->get(I)Ljava/lang/Object;")) {
                    $inside = $ti.Substring($ti.IndexOf('{') + 1)
                    $inside = $inside.Substring(0, $inside.IndexOf('}'))
                    $idxReg = $inside.Split(',')[1].Trim()
                    $lines[$inv] = "    invoke-static {$idxReg}, Lcom/saysky/missionopt/MissionLazy;->get(I)Laoc/kingdoms/lukasz/textures/Image;"
                    $lines.RemoveAt($i)
                    $hits++
                    continue
                }
            }
        }
        $i++
    }
    # normalize outputs produced by the older smali-only version of this patch
    for ($k = 0; $k -lt $lines.Count; $k++) {
        if ($lines[$k].Contains("Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->getMissionImageCiv(I)")) {
            $lines[$k] = $lines[$k].Replace("Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->getMissionImageCiv(I)", "Lcom/saysky/missionopt/MissionLazy;->get(I)")
            $hits++
        }
    }
    if ($hits -gt 0) { WL $file $lines }
    return $hits
}

$consumerClasses = @(
    [pscustomobject]@{ Rel = "aoc\kingdoms\lukasz\menu_element\button\ButtonMissionTreeCiv.smali"; Desc = "Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTreeCiv;" }
    # Kept: RainfallEvent focus UI really runs (InGame_FocusFinished / InGame_StartFocus / Button_FocusImage).
    [pscustomobject]@{ Rel = "team\rainfall\rfEvent\utils\MissionUtil.smali"; Desc = "Lteam/rainfall/rfEvent/utils/MissionUtil;" }
    # NOTE: InGame_StartGoal / InGame_GoalFinished / Button_GoalImage also read missionImagesCivs,
    # but the package does not define Event.goalDura / rfEvent.goalData at all, so that whole
    # goal-menu path already throws NoSuchFieldError before touching images. Shipping them here
    # would only add dangling refs (unresolved!=0) with zero benefit, so they are left untouched.
)

$total = 0
# drop leftovers from older builds of this patch (dead goal-menu classes, see note above)
foreach ($rel in @(
    "aoc\kingdoms\lukasz\menu_element\button\Button_GoalImage.smali",
    "aoc\kingdoms\lukasz\menusInGame\InGame_GoalFinished.smali",
    "aoc\kingdoms\lukasz\menusInGame\InGame_StartGoal.smali"
)) {
    $p = Join-Path $FinalSmali $rel
    if (Test-Path -LiteralPath $p) { Remove-Item -LiteralPath $p -Force }
}

foreach ($c in $consumerClasses) {
    $f = Ensure-Class $c.Rel $c.Desc
    $n = Patch-MissionImageConsumers $f
    $left = @(Select-String -LiteralPath $f -Pattern 'MissionTree;->missionImagesCivs' -SimpleMatch).Count
    if ($left -gt 0) { throw ("unpatched missionImagesCivs usage remains in " + $c.Rel + ": " + $left) }
    $leftOld = @(Select-String -LiteralPath $f -Pattern 'MissionTree;->getMissionImageCiv' -SimpleMatch).Count
    if ($leftOld -gt 0) { throw ("stale getMissionImageCiv call remains in " + $c.Rel + ": " + $leftOld) }
    $total += $n
    Write-Host ("[missionlazy] {0}: {1} access point(s) -> MissionLazy.get" -f (Split-Path $c.Rel -Leaf), $n)
}
Write-Host ("[missionlazy] consumer classes patched: {0} access points" -f $total)

Write-Host "[missionlazy] done"
