<#
  ArmyVoice - apply army-click voice patch to LoaderSettings\final-smali (ASCII only)

    aoc/kingdoms/lukasz/jakowski/ArmyClickSoundManager.playForCiv(I)V
      -> rewritten to a single invoke-static forwarding to
         com.saysky.armyvoice.ArmyVoice.playForCiv(I)V   (compiled from java\src)

  Lookup order in ArmyVoice:
    army_click/<civTag>  >  army_religions/<religion>  >  army_culture/<group>  >  army_default
    (then legacy army_click/default, army_click/common, then vanilla playSelectedArmy())

  The class only exists in the integrated package dex (not in the PC game.jar),
  so it can not go through the loader Mixin pipeline; the method body is replaced here.
  Missing baseline class is disassembled from the target package dex on demand.
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
Write-Host "[armyvoice] final-smali: $FinalSmali"
Write-Host "[armyvoice] package    : $PackageDir"

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
    if ([string]::IsNullOrEmpty($PackageDir)) { throw "missing class in final-smali and no package dir: $relPath" }
    if (-not (Test-Path -LiteralPath $Baksmali)) { throw "missing baksmali: $Baksmali" }
    if (-not (Test-Path -LiteralPath $JavaExe)) { throw "missing java: $JavaExe" }

    $latin = [Text.Encoding]::GetEncoding(28591)
    $dexCandidates = @()
    foreach ($d in (Get-ChildItem -LiteralPath $PackageDir -Filter *.dex | Sort-Object Name)) {
        $bytes = [IO.File]::ReadAllBytes($d.FullName)
        if ($latin.GetString($bytes).Contains($descriptor)) { $dexCandidates += $d.FullName }
    }
    if ($dexCandidates.Count -eq 0) { return $null }

    foreach ($dex in $dexCandidates) {
        $tmp = Join-Path $env:TEMP ("armyvoice_" + [Guid]::NewGuid().ToString("N"))
        New-Item -ItemType Directory -Force -Path $tmp | Out-Null
        try {
            & $JavaExe -jar $Baksmali d $dex -o $tmp --classes $descriptor | Out-Null
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
    return $null
}

# ---------- ArmyClickSoundManager.playForCiv -> ArmyVoice ----------
$acRel = "aoc\kingdoms\lukasz\jakowski\ArmyClickSoundManager.smali"
$ac = Ensure-Class $acRel "Laoc/kingdoms/lukasz/jakowski/ArmyClickSoundManager;"
if ($null -eq $ac) {
    Write-Host "[armyvoice] ArmyClickSoundManager absent in package, skip (no vanilla hook)"
    return
}
$acLines = RL $ac
$r = Find-MethodRange $acLines "playForCiv(I)V"
$hasHook = $false
for ($i = $r[0]; $i -le $r[1]; $i++) {
    if ($acLines[$i].Contains("Lcom/saysky/armyvoice/ArmyVoice;->playForCiv(I)V")) { $hasHook = $true; break }
}
if ($hasHook) {
    Write-Host "[armyvoice] ArmyClickSoundManager.playForCiv already forwarded, skip"
}
else {
    Replace-Block $ac "playForCiv(I)V" (Read-Block (Join-Path $patchDir "ArmyClickSoundManager__playForCiv.smali"))
    Write-Host "[armyvoice] ArmyClickSoundManager.playForCiv -> ArmyVoice.playForCiv"
}
