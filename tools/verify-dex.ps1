# Verify out\classes.dex against the target APK baseline (unresolved refs must be 0).
# ASCII only.
param(
    [string]$Dex = "",
    [string]$PackageDir = "",
    [string]$Report = "",
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

if ([string]::IsNullOrEmpty($Dex)) { $Dex = Join-Path $proj "out\classes.dex" }
if ([string]::IsNullOrEmpty($Report)) { $Report = Join-Path $proj "out\verify-report.txt" }
$cp = (Join-Path $game ".tools\smali\baksmali-2.5.2.jar") + ";" + (Join-Path $here "classes")

if ([string]::IsNullOrEmpty($PackageDir) -and -not [string]::IsNullOrEmpty($env:AOH_PACKAGE_DIR)) {
    $PackageDir = $env:AOH_PACKAGE_DIR
}
if ([string]::IsNullOrEmpty($PackageDir)) {
    $polaris = Join-Path $androidRoot "polaris"
    if (Test-Path -LiteralPath (Join-Path $polaris "classes2.dex")) { $PackageDir = $polaris }
}
if ([string]::IsNullOrEmpty($PackageDir) -or -not (Test-Path -LiteralPath $PackageDir)) {
    Write-Host "[verify] package dir missing, skip"
    exit 0
}
if (-not (Test-Path -LiteralPath $Dex)) { throw "missing dex: $Dex" }

$dexes = @(Get-ChildItem -LiteralPath $PackageDir -Filter *.dex | Sort-Object Name | ForEach-Object { $_.FullName })
$javaArgs = @("-cp", $cp, "Pseudo3DAnalyze", "report", $Dex, $Report) + $dexes
$lines = & $JavaExe @javaArgs 2>&1
$last = ($lines | Where-Object { $_ -match "unresolved_refs" } | Select-Object -Last 1)
if (-not $last) {
    $lines | ForEach-Object { Write-Host $_ }
    throw "verify failed (no report line)"
}
Write-Host ("[verify] " + $last)

if ($last -match "unresolved_refs=(\d+)") {
    if ([int]$Matches[1] -ne 0) {
        Write-Host "[verify] unresolved refs found, see $Report"
        exit 1
    }
}

# Dex stability: tell the caller whether a repack is actually needed.
try {
    $hashFile = Join-Path $proj "out\dex.sha256"
    $hash = (Get-FileHash -LiteralPath $Dex -Algorithm SHA256).Hash
    $prev = ""
    if (Test-Path -LiteralPath $hashFile) {
        $prev = (Get-Content -LiteralPath $hashFile -Raw).Trim()
    }
    if ($prev -eq $hash) {
        Write-Host "[dex] unchanged since last build (no repack needed)"
    } else {
        $shortPrev = if ($prev.Length -ge 12) { $prev.Substring(0, 12) } else { "-" }
        Write-Host ("[dex] changed {0} -> {1}" -f $shortPrev, $hash.Substring(0, 12))
        Set-Content -LiteralPath $hashFile -Value $hash -Encoding ASCII
    }
} catch {
    Write-Host "[dex] hash check skipped"
}
exit 0
