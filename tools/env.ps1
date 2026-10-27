# Shared path resolution for the LoaderSettings tools (ASCII only).
#
# Resolution order:
#   1. environment variables  AOH_GAME_ROOT / JAVA_HOME / ANDROID_HOME | ANDROID_SDK_ROOT
#   2. tools\env.local.ps1    (git-ignored; may set $AohGameRoot / $AohJdkBin / $AohSdk)
#   3. auto-detect            game root = parent of this project; JDK = newest jdk-* under
#                             Program Files; SDK = %LOCALAPPDATA%\Android\Sdk or C:\Android\Sdk
#
# Exposed variables: $AohGameRoot, $AohJdkBin, $AohSdk,
#                   $AohJavaExe, $AohJavac, $AohJarExe, $AohD8, $AohAndroidJar

$AohToolsDir = $PSScriptRoot
$AohLocal = Join-Path $AohToolsDir "env.local.ps1"
if (Test-Path -LiteralPath $AohLocal) { . $AohLocal }

if ([string]::IsNullOrEmpty($AohGameRoot) -and $env:AOH_GAME_ROOT) { $AohGameRoot = $env:AOH_GAME_ROOT }
if ([string]::IsNullOrEmpty($AohGameRoot)) { $AohGameRoot = Split-Path -Parent (Split-Path -Parent $AohToolsDir) }

if ([string]::IsNullOrEmpty($AohJdkBin) -and $env:JAVA_HOME) { $AohJdkBin = Join-Path $env:JAVA_HOME "bin" }
if ([string]::IsNullOrEmpty($AohJdkBin) -or -not (Test-Path -LiteralPath (Join-Path $AohJdkBin "javac.exe"))) {
    $jdk = @(Get-ChildItem "C:\Program Files\Microsoft\jdk-*","C:\Program Files\Java\jdk-*" -Directory -ErrorAction SilentlyContinue |
             Sort-Object Name -Descending | Select-Object -First 1)
    if ($jdk.Count -gt 0) { $AohJdkBin = Join-Path $jdk[0].FullName "bin" }
}

if ([string]::IsNullOrEmpty($AohSdk) -and $env:ANDROID_HOME) { $AohSdk = $env:ANDROID_HOME }
if ([string]::IsNullOrEmpty($AohSdk) -and $env:ANDROID_SDK_ROOT) { $AohSdk = $env:ANDROID_SDK_ROOT }
if ([string]::IsNullOrEmpty($AohSdk)) {
    foreach ($c in @((Join-Path $env:LOCALAPPDATA "Android\Sdk"), "C:\Android\Sdk")) {
        if (Test-Path -LiteralPath $c) { $AohSdk = $c; break }
    }
}

if ([string]::IsNullOrEmpty($AohJdkBin) -or -not (Test-Path -LiteralPath (Join-Path $AohJdkBin "javac.exe"))) {
    throw "JDK not found: set JAVA_HOME, or put `$AohJdkBin = '<jdk>\bin' into tools\env.local.ps1"
}
if ([string]::IsNullOrEmpty($AohSdk) -or -not (Test-Path -LiteralPath $AohSdk)) {
    throw "Android SDK not found: set ANDROID_HOME, or put `$AohSdk = '<sdk>' into tools\env.local.ps1"
}

$AohJavaExe    = Join-Path $AohJdkBin "java.exe"
$AohJavac      = Join-Path $AohJdkBin "javac.exe"
$AohJarExe     = Join-Path $AohJdkBin "jar.exe"
$AohD8         = Join-Path $AohSdk "build-tools\35.0.0\lib\d8.jar"
$AohAndroidJar = Join-Path $AohSdk "platforms\android-34\android.jar"

# Fall back to the newest installed build-tools / platform when the pinned ones are missing.
if (-not (Test-Path -LiteralPath $AohD8)) {
    $bt = @(Get-ChildItem (Join-Path $AohSdk "build-tools") -Directory -ErrorAction SilentlyContinue |
            Sort-Object Name -Descending |
            Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "lib\d8.jar") } |
            Select-Object -First 1)
    if ($bt.Count -gt 0) { $AohD8 = Join-Path $bt[0].FullName "lib\d8.jar" }
}
if (-not (Test-Path -LiteralPath $AohAndroidJar)) {
    $pf = @(Get-ChildItem (Join-Path $AohSdk "platforms") -Directory -ErrorAction SilentlyContinue |
            Sort-Object Name -Descending |
            Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "android.jar") } |
            Select-Object -First 1)
    if ($pf.Count -gt 0) { $AohAndroidJar = Join-Path $pf[0].FullName "android.jar" }
}
