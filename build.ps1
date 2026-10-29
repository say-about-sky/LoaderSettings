#
#  LoaderSettings - one-shot build
#
#    powershell -ExecutionPolicy Bypass -File build.ps1
#    powershell -ExecutionPolicy Bypass -File build.ps1 -PackageDir <unpacked apk dir>
#    powershell -ExecutionPolicy Bypass -File build.ps1 -RefreshBaseline -PackageDir <unpacked apk dir>
#
#  Steps: resolve JDK / SDK / game root (tools\env.ps1) -> check merge-work baseline
#         -> build-dex.bat (merge -> smali -> java -> d8 -> verify) -> out\classes.dex
#
#  The baseline (merge-work\pack-smali) is derived from a target APK and is NOT in git.
#  Pass -PackageDir <unpacked apk dir> (or set AOH_PACKAGE_DIR) and -RefreshBaseline once.
#
param(
    [string]$PackageDir = "",
    [string]$JdkHome = "",
    [string]$AndroidSdk = "",
    [switch]$RefreshBaseline,
    [switch]$SkipVerify
)
$ErrorActionPreference = "Stop"
$proj = $PSScriptRoot

function Fail([string]$m) { Write-Host ("[ERROR] " + $m); exit 1 }

if (-not [string]::IsNullOrEmpty($JdkHome)) { $env:JAVA_HOME = $JdkHome }
$envFile = Join-Path $proj "tools\env.ps1"
if (-not (Test-Path -LiteralPath $envFile)) { Fail "tools\env.ps1 not found (repo incomplete?)" }
. $envFile
if (-not [string]::IsNullOrEmpty($AndroidSdk)) { $AohSdk = $AndroidSdk }
if (-not [string]::IsNullOrEmpty($PackageDir)) { $env:AOH_PACKAGE_DIR = $PackageDir }

Write-Host ("=== game root : " + $AohGameRoot)
Write-Host ("=== jdk       : " + $AohJdkBin)
Write-Host ("=== android   : " + $AohSdk)
if ($env:AOH_PACKAGE_DIR) { Write-Host ("=== package   : " + $env:AOH_PACKAGE_DIR) }

$baseline = Join-Path $proj "merge-work\pack-smali"
if ($RefreshBaseline -or -not (Test-Path -LiteralPath $baseline)) {
    if (-not $env:AOH_PACKAGE_DIR) {
        Fail ("merge-work\pack-smali missing. Unpack a target APK and run:`n" +
              "        powershell -ExecutionPolicy Bypass -File build.ps1 -RefreshBaseline -PackageDir <unpacked apk dir>`n" +
              "      (or set AOH_PACKAGE_DIR)")
    }
    Write-Host "=== refresh baseline from target package ..."
    & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $proj "tools\refresh-baseline.ps1") -PackageDir $env:AOH_PACKAGE_DIR -JavaExe (Join-Path $AohJdkBin "java.exe")
    if ($LASTEXITCODE -ne 0) { Fail "refresh-baseline.ps1 failed" }
}
if (-not (Test-Path -LiteralPath $baseline)) { Fail "merge-work\pack-smali still missing" }

Write-Host "=== build-dex.bat"
$env:JAVA_HOME = $AohJdkBin | Split-Path -Parent
& cmd /c "`"$proj\build-dex.bat`""
if ($LASTEXITCODE -ne 0) { Fail "build-dex.bat failed" }

$dex = Join-Path $proj "out\classes.dex"
if (-not (Test-Path -LiteralPath $dex)) { Fail "out\classes.dex not produced" }
Write-Host ""
Write-Host ("[OK] " + $dex + "  (" + (Get-Item -LiteralPath $dex).Length + " bytes)")
Write-Host "Install: powershell -ExecutionPolicy Bypass -File install.ps1 -Folder <unpacked apk dir>"
exit 0
