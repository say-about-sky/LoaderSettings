<#
  SiegeTint - occupation progress color filter (LoaderSettings subproject; ASCII only)

    1) aoc/kingdoms/lukasz/map/SiegeManager.drawSiege(SpriteBatch,F,I)V
         original body is renamed to public drawSiege_Vanilla()
         new private drawSiege() forwards to com.saysky.siegetint.SiegeTint.drawSiege()
    2) aoc/kingdoms/lukasz/map/province/ProvinceDraw.drawOccupiedProvinces(SpriteBatch)V
         SiegeTint.drawAll(oSB) is inserted before the final return-void
         (drawn under armies / cities, after province fill)
    3) aoc/kingdoms/lukasz/jakowski/setting/SettingsManager
         new public fields SIEGE_TINT:Z (layer filter), SIEGE_PERCENT:Z (percent label),
         SIEGE_PERCENT_GRAY:F (-1..+1 grayscale bias), defaults set in <init>()

  All edits are idempotent (guarded by marker strings).
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
Write-Host "[siegetint] final-smali: $FinalSmali"
Write-Host "[siegetint] package    : $PackageDir"

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

function Ensure-Class([string]$relPath, [string]$descriptor) {
    $target = Join-Path $FinalSmali $relPath
    if (Test-Path -LiteralPath $target) { return $target }
    if ([string]::IsNullOrEmpty($PackageDir)) { throw "missing class in final-smali and no package dir: $relPath" }
    if (-not (Test-Path -LiteralPath $Baksmali)) { throw "missing baksmali: $Baksmali" }
    if (-not (Test-Path -LiteralPath $JavaExe)) { throw "missing java: $JavaExe" }

    $latin = [Text.Encoding]::GetEncoding(28591)
    $dexCandidates = @()
    foreach ($d in (Get-ChildItem -LiteralPath $PackageDir -Filter *.dex | Sort-Object Name)) {
        $bytes = [IO.File]::ReadAllBytes($d.FullName)
        if ($latin.GetString($bytes).Contains($descriptor)) { $dexCandidates += $d.FullName }
    }
    if ($dexCandidates.Count -eq 0) { throw "class not found in package dex: $descriptor" }

    foreach ($dex in $dexCandidates) {
        $tmp = Join-Path $env:TEMP ("siegetint_" + [Guid]::NewGuid().ToString("N"))
        New-Item -ItemType Directory -Force -Path $tmp | Out-Null
        try {
            & $JavaExe -jar $Baksmali d $dex -o $tmp --classes $descriptor
            $src = Join-Path $tmp $relPath
            if (Test-Path -LiteralPath $src) {
                $dir = Split-Path -Parent $target
                New-Item -ItemType Directory -Force -Path $dir | Out-Null
                Copy-Item -LiteralPath $src -Destination $target -Force
                return $target
            }
        }
        finally {
            if (Test-Path -LiteralPath $tmp) { Remove-Item -LiteralPath $tmp -Recurse -Force }
        }
    }
    throw "baksmali could not extract class from any package dex: $descriptor"
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

# ---------- 1) SiegeManager.drawSiege -> SiegeTint (legacy kept) ----------
$smRel = "aoc\kingdoms\lukasz\map\SiegeManager.smali"
$sm = Ensure-Class $smRel "Laoc/kingdoms/lukasz/map/SiegeManager;"
$smTxt = [IO.File]::ReadAllText($sm, [Text.Encoding]::UTF8)
if ($smTxt.Contains("Lcom/saysky/siegetint/SiegeTint;->drawSiege")) {
    Write-Host "[siegetint] SiegeManager.drawSiege already forwarded, skip"
}
else {
    $vanillaHeader = ".method public static final drawSiege_Vanilla(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V"
    if (-not $smTxt.Contains($vanillaHeader)) {
        $origHeader = ".method private static final drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V"
        if (-not $smTxt.Contains($origHeader)) { throw "SiegeManager.drawSiege header not found" }
        $smTxt = $smTxt.Replace($origHeader, $vanillaHeader)
        [IO.File]::WriteAllText($sm, $smTxt, $SCRIPT:enc)
    }
    $smLines = New-Object System.Collections.Generic.List[string]
    $smLines.AddRange([string[]](RL $sm))
    $smLines.Add("")
    $smLines.AddRange([string[]](Read-Block (Join-Path $patchDir "SiegeManager__drawSiege.smali")))
    WL $sm $smLines
    Write-Host "[siegetint] SiegeManager.drawSiege -> SiegeTint.drawSiege (legacy = drawSiege_Vanilla)"
}

# ---------- 2) ProvinceDraw.drawOccupiedProvinces tail -> SiegeTint.drawAll ----------
$pdRel = "aoc\kingdoms\lukasz\map\province\ProvinceDraw.smali"
$pd = Ensure-Class $pdRel "Laoc/kingdoms/lukasz/map/province/ProvinceDraw;"
$pdLines = New-Object System.Collections.Generic.List[string]
$pdLines.AddRange([string[]](RL $pd))
$pdRange = Find-MethodRange $pdLines "drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V"
$pdHooked = $false
for ($i = $pdRange[0]; $i -le $pdRange[1]; $i++) {
    if ($pdLines[$i].Contains("Lcom/saysky/siegetint/SiegeTint;->drawAll")) { $pdHooked = $true; break }
}
if ($pdHooked) {
    Write-Host "[siegetint] ProvinceDraw.drawOccupiedProvinces already hooked, skip"
}
else {
    $lastReturn = -1
    for ($i = $pdRange[0]; $i -le $pdRange[1]; $i++) {
        if ($pdLines[$i].Trim() -eq "return-void") { $lastReturn = $i }
    }
    if ($lastReturn -lt 0) { throw "drawOccupiedProvinces: return-void not found" }
    $pdLines.Insert($lastReturn, "")
    $pdLines.Insert($lastReturn + 1, "    #siegetint-hook: province tint under armies (recycled from live siege state)")
    $pdLines.Insert($lastReturn + 2, "    invoke-static {p0}, Lcom/saysky/siegetint/SiegeTint;->drawAll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V")
    WL $pd $pdLines
    Write-Host "[siegetint] ProvinceDraw.drawOccupiedProvinces tail -> SiegeTint.drawAll"
}

# ---------- 3) SettingsManager: SIEGE_TINT + SIEGE_PERCENT + SIEGE_PERCENT_GRAY ----------
$setRel = "aoc\kingdoms\lukasz\jakowski\setting\SettingsManager.smali"
$set = Ensure-Class $setRel "Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;"
foreach ($fieldName in @("SIEGE_TINT", "SIEGE_PERCENT")) {
    $setTxt = [IO.File]::ReadAllText($set, [Text.Encoding]::UTF8)
    $fieldLine = ".field public " + $fieldName + ":Z"
    if (-not $setTxt.Contains($fieldLine)) {
        Insert-Field $set $fieldLine
        Write-Host ("[siegetint] SettingsManager: field {0} inserted" -f $fieldName)
    }
}
$setTxt = [IO.File]::ReadAllText($set, [Text.Encoding]::UTF8)
$grayField = ".field public SIEGE_PERCENT_GRAY:F"
if (-not $setTxt.Contains($grayField)) {
    Insert-Field $set $grayField
    Write-Host "[siegetint] SettingsManager: field SIEGE_PERCENT_GRAY inserted"
}

$setLines = New-Object System.Collections.Generic.List[string]
$setLines.AddRange([string[]](RL $set))
$ctorRange = Find-MethodRange $setLines "<init>()V"
$needTint = $true
$needPercent = $true
$needGray = $true
for ($i = $ctorRange[0]; $i -le $ctorRange[1]; $i++) {
    if ($setLines[$i].Contains("->SIEGE_TINT:Z")) { $needTint = $false }
    if ($setLines[$i].Contains("->SIEGE_PERCENT:Z")) { $needPercent = $false }
    if ($setLines[$i].Contains("->SIEGE_PERCENT_GRAY:F")) { $needGray = $false }
}
if (-not $needTint -and -not $needPercent -and -not $needGray) {
    Write-Host "[siegetint] SettingsManager.<init> already initializes SIEGE_TINT/SIEGE_PERCENT/SIEGE_PERCENT_GRAY, skip"
}
else {
    $ctorReturn = -1
    for ($i = $ctorRange[0]; $i -le $ctorRange[1]; $i++) {
        if ($setLines[$i].Trim() -eq "return-void") { $ctorReturn = $i }
    }
    if ($ctorReturn -lt 0) { throw "SettingsManager.<init>: return-void not found" }
    $ctorBlock = New-Object System.Collections.Generic.List[string]
    $ctorBlock.Add("")
    if ($needTint) {
        $ctorBlock.Add("    const/4 v0, 0x1")
        $ctorBlock.Add("    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SIEGE_TINT:Z")
    }
    if ($needPercent) {
        $ctorBlock.Add("    const/4 v0, 0x1")
        $ctorBlock.Add("    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SIEGE_PERCENT:Z")
    }
    if ($needGray) {
        $ctorBlock.Add("    const/4 v0, 0x0")
        $ctorBlock.Add("    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SIEGE_PERCENT_GRAY:F")
    }
    $setLines.InsertRange($ctorReturn, [string[]]$ctorBlock)
    WL $set $setLines
    Write-Host "[siegetint] SettingsManager.<init>: SIEGE_TINT/SIEGE_PERCENT = true, SIEGE_PERCENT_GRAY = 0.0 (default)"
}

Write-Host "[siegetint] done"
