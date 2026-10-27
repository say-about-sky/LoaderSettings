# WebUI - LoaderSettings subproject patch (ASCII only)
#
#   aoc/kingdoms/lukasz/menusInGame/InGame_Console.execute(Ljava/lang/String;)V
#     head hook: invoke-static WebConsole.handle(String)Z
#                handled -> return-void, otherwise the vanilla body runs unchanged (fall-through)
#     (no rename, no body copy: the pack's own command engine stays byte-for-byte intact)
#
# Idempotent: guarded by the WebConsole->handle marker string.
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
Write-Host "[webui] final-smali: $FinalSmali"
Write-Host "[webui] package    : $PackageDir"

$SCRIPT:enc = New-Object Text.UTF8Encoding($false)
function RL([string]$p) { [IO.File]::ReadAllLines($p, [Text.Encoding]::UTF8) }
function WL([string]$p, $lines) { [IO.File]::WriteAllLines($p, [string[]]$lines, $SCRIPT:enc) }

function Read-Block([string]$p) {
    $l = New-Object System.Collections.Generic.List[string]
    foreach ($x in [IO.File]::ReadAllLines($p, [Text.Encoding]::UTF8)) { $l.Add($x) }
    while ($l.Count -gt 0 -and $l[$l.Count - 1].Trim() -eq "") { $l.RemoveAt($l.Count - 1) }
    ,$l
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
        $tmp = Join-Path $env:TEMP ("webui_" + [Guid]::NewGuid().ToString("N"))
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

# ---------- InGame_Console.execute: head hook -> WebConsole.handle ----------
# The vanilla body is left untouched (fall-through), so the console keeps every pack-specific
# command engine reference inside the pack's own bytecode. No execute_Vanilla copy is needed.
. (Join-Path $proj "tools\smali-hook.ps1")
$icRel = "aoc\kingdoms\lukasz\menusInGame\InGame_Console.smali"
$ic = Ensure-Class $icRel "Laoc/kingdoms/lukasz/menusInGame/InGame_Console;"
$txt = [IO.File]::ReadAllText($ic, [Text.Encoding]::UTF8)
if ($txt.Contains("execute_Vanilla")) {
    Write-Host "[webui] WARN stale execute_Vanilla in baseline, refresh baseline first (tools\refresh-baseline.ps1)"
}
$body = @(
    '    invoke-static {p0}, Lcom/saysky/web/WebConsole;->handle(Ljava/lang/String;)Z',
    '    move-result v{0}',
    '    if-eqz v{0}, {L}',
    '    return-void',
    '{L}'
)
[void](Add-HeadHook -File $ic -Sig "execute(Ljava/lang/String;)V" -Marker "Lcom/saysky/web/WebConsole;->handle" -Body $body)
Write-Host "[webui] InGame_Console.execute: head hook -> WebConsole.handle (vanilla body preserved)"
