# Refresh merge-work/pack-smali baseline from the target APK directory.
# Usage: refresh-baseline.ps1 [-PackageDir <unpacked apk dir>]
# ASCII only.
param(
    [string]$PackageDir = "",
    [string]$Baseline = "",
    [string]$Baksmali = "",
    [string]$JavaExe = ""
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$proj = Split-Path -Parent $here
$game = Split-Path -Parent $proj
$androidRoot = Split-Path -Parent $game

if ([string]::IsNullOrEmpty($JavaExe)) {
    $JavaExe = if ($env:JAVA_HOME) { Join-Path $env:JAVA_HOME "bin\java.exe" } else { "" }
    if ([string]::IsNullOrEmpty($JavaExe) -or -not (Test-Path -LiteralPath $JavaExe)) {
        $jdk = @(Get-ChildItem "C:\Program Files\Microsoft\jdk-*","C:\Program Files\Java\jdk-*" -Directory -ErrorAction SilentlyContinue |
                 Sort-Object Name -Descending | Select-Object -First 1)
        $JavaExe = if ($jdk.Count -gt 0) { Join-Path $jdk[0].FullName "bin\java.exe" } else { "" }
    }
    if ([string]::IsNullOrEmpty($JavaExe)) { throw "java.exe not found: set JAVA_HOME or pass -JavaExe" }
}

if ([string]::IsNullOrEmpty($Baseline)) { $Baseline = Join-Path $proj "merge-work\pack-smali" }
if ([string]::IsNullOrEmpty($Baksmali)) { $Baksmali = Join-Path $game ".tools\smali\baksmali-2.5.2.jar" }
if ([string]::IsNullOrEmpty($PackageDir)) {
    if (-not [string]::IsNullOrEmpty($env:AOH_PACKAGE_DIR)) {
        $PackageDir = $env:AOH_PACKAGE_DIR
    } else {
        $polaris = Join-Path $androidRoot "polaris"
        if (Test-Path -LiteralPath (Join-Path $polaris "classes2.dex")) { $PackageDir = $polaris }
    }
}
if ([string]::IsNullOrEmpty($PackageDir) -or -not (Test-Path -LiteralPath $PackageDir)) {
    throw "package dir not found: $PackageDir"
}
if (-not (Test-Path -LiteralPath $Baseline)) { throw "baseline not found: $Baseline" }
if (-not (Test-Path -LiteralPath $Baksmali)) { throw "baksmali not found: $Baksmali" }
if (-not (Test-Path -LiteralPath $JavaExe)) { throw "java not found: $JavaExe" }

Write-Host "[baseline] package : $PackageDir"
Write-Host "[baseline] target  : $Baseline"

$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$backup = "$Baseline.bak-$stamp"
Copy-Item -LiteralPath $Baseline -Destination $backup -Recurse -Force
Write-Host "[baseline] backup  : $backup"

$latin = [Text.Encoding]::GetEncoding(28591)
$dexes = @(Get-ChildItem -LiteralPath $PackageDir -Filter *.dex | Sort-Object Name)
if ($dexes.Count -eq 0) { throw "no dex in $PackageDir" }

# Which classes are actually DEFINED in each dex (a referenced descriptor is not a definition).
$defined = @{}
foreach ($d in $dexes) {
    $set = New-Object 'System.Collections.Generic.HashSet[string]'
    $lines = & $JavaExe -jar $Baksmali list classes $d.FullName
    foreach ($line in $lines) {
        $t = $line.Trim()
        if ($t.Length -gt 2 -and $t.StartsWith("L")) { [void]$set.Add($t) }
    }
    $defined[$d.FullName] = $set
    Write-Host ("[baseline] {0}: {1} classes" -f $d.Name, $set.Count)
}

$files = @(Get-ChildItem -LiteralPath $Baseline -Recurse -Filter *.smali)
$ok = 0
$missing = @()
foreach ($f in $files) {
    $rel = $f.FullName.Substring($Baseline.Length + 1)
    $desc = "L" + (($rel -replace '\\', '/').Replace('.smali', '')) + ";"
    $found = $null
    foreach ($d in $dexes) {
        if ($defined[$d.FullName].Contains($desc)) { $found = $d; break }
    }
    if ($null -eq $found) {
        $missing += $rel
        continue
    }
    $tmp = Join-Path $env:TEMP ("baseline_" + [Guid]::NewGuid().ToString("N"))
    New-Item -ItemType Directory -Force -Path $tmp | Out-Null
    try {
        & $JavaExe -jar $Baksmali d $found.FullName -o $tmp --classes $desc | Out-Null
        $src = Join-Path $tmp $rel
        if (Test-Path -LiteralPath $src) {
            Copy-Item -LiteralPath $src -Destination $f.FullName -Force
            $ok++
        } else {
            $missing += $rel
        }
    } finally {
        if (Test-Path -LiteralPath $tmp) { Remove-Item -LiteralPath $tmp -Recurse -Force }
    }
}

Write-Host ("[baseline] refreshed {0}/{1} classes" -f $ok, $files.Count)
foreach ($m in $missing) { Write-Host "[baseline] MISSING $m" }
