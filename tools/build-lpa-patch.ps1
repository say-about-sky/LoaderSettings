<#
  Build the LongPressMoveArmy (Quick Actions) Mixin patch for the standalone
  LoaderSettings dex.

  Steps:
    1) ensure LongPressMoveArmy-*.jar exists (optionally rebuild with -BuildJar)
    2) run loader-1.6.0 patch mode against game.jar (applies the Mixin)
    3) extract game.dex.zip/classes.dex
    4) baksmali it into merge-work\lpa-patch\raw-smali
    5) copy only the classes LoaderSettings needs into merge-work\lpa-patch\lpa-smali:
         - the three patched game classes (Touch / MapTouchManager / ButtonTopOutliner)
         - com.saysky.longpressmovearmy support classes (mixin classes excluded)

  The loader-generated PluginsCollection is intentionally NOT kept: the Mixin has
  already been expanded at build time, and keeping it could shadow the host
  loader's own PluginsCollection when both dex patches are installed.

  Usage:
    powershell -ExecutionPolicy Bypass -File tools\build-lpa-patch.ps1
    powershell -ExecutionPolicy Bypass -File tools\build-lpa-patch.ps1 -BuildJar
#>
param(
    [switch]$BuildJar
)

$ErrorActionPreference = "Stop"

$here      = Split-Path -Parent $MyInvocation.MyCommand.Path
$proj      = Split-Path -Parent $here
. (Join-Path $here "env.ps1")
$gameRoot  = $AohGameRoot
$jdkBin    = $AohJdkBin
$java      = $AohJavaExe
$d8        = $AohD8
$androidJar= $AohAndroidJar
$loader    = Join-Path $gameRoot "loader-1.6.0.jar"
$baksmali  = Join-Path $gameRoot ".tools\smali\baksmali-2.5.2.jar"
$lpaProj   = Join-Path $proj "LongPressMoveArmy"
$work      = Join-Path $proj "merge-work\lpa-patch"
$zipPath   = Join-Path $work "game.dex.zip"
$dexPath   = Join-Path $work "classes.dex"
$rawSmali  = Join-Path $work "raw-smali"
$outSmali  = Join-Path $work "lpa-smali"
$patchJson = Join-Path $work "patch.json"

if (-not (Test-Path -LiteralPath $java))      { throw "missing java: $java" }
if (-not (Test-Path -LiteralPath $loader))    { throw "missing loader: $loader" }
if (-not (Test-Path -LiteralPath $baksmali))  { throw "missing baksmali: $baksmali" }
if (-not (Test-Path -LiteralPath $d8))        { throw "missing d8: $d8" }
if (-not (Test-Path -LiteralPath $androidJar)){ throw "missing android.jar: $androidJar" }
if (-not (Test-Path -LiteralPath $work))      { New-Item -ItemType Directory -Force -Path $work | Out-Null }

function Find-LpaJar {
    $dir = Join-Path $lpaProj "build\libs"
    if (-not (Test-Path -LiteralPath $dir)) { return $null }
    $j = @(Get-ChildItem -LiteralPath $dir -Filter "LongPressMoveArmy-*.jar" -File)
    if ($j.Count -eq 0) { return $null }
    $j | Sort-Object LastWriteTime -Descending | Select-Object -First 1
}

$jar = Find-LpaJar
$needBuild = $BuildJar -or ($null -eq $jar)
if (-not $needBuild) {
    $srcDir = Join-Path $lpaProj "src"
    if (Test-Path -LiteralPath $srcDir) {
        $newest = Get-ChildItem -LiteralPath $srcDir -Recurse -File |
                  Sort-Object LastWriteTime -Descending | Select-Object -First 1
        if ($newest -and $newest.LastWriteTime -gt $jar.LastWriteTime) { $needBuild = $true }
    }
}

if ($needBuild) {
    Write-Host "[lpa] building LongPressMoveArmy jar (gradlew shadowJar) ..."
    $env:JAVA_HOME = Split-Path -Parent $jdkBin
    Push-Location $lpaProj
    try {
        & (Join-Path $lpaProj "gradlew.bat") --offline clean shadowJar
        if ($LASTEXITCODE -ne 0) { throw "gradlew shadowJar failed ($LASTEXITCODE)" }
    }
    finally { Pop-Location }
    $jar = Find-LpaJar
    if (-not $jar) { throw "LPA jar not produced under $lpaProj\build\libs" }
}
Write-Host ("[lpa] jar: {0}  ({1})" -f $jar.FullName, $jar.LastWriteTime)

$config = [ordered]@{
    gamePath       = (Join-Path $gameRoot "game.jar") -replace '\\', '/'
    d8Path         = $d8 -replace '\\', '/'
    androidLibPath = $androidJar -replace '\\', '/'
    plugins        = @( $jar.FullName -replace '\\', '/' )
}
$json = $config | ConvertTo-Json -Depth 4
[IO.File]::WriteAllText($patchJson, $json, (New-Object Text.UTF8Encoding($false)))

if (Test-Path -LiteralPath $zipPath) { Remove-Item -LiteralPath $zipPath -Force }
Write-Host "[lpa] running loader patch mode ..."
Push-Location $work
try {
    & $java -jar $loader --launch-mode patch --patch-config $patchJson
    $code = $LASTEXITCODE
}
finally { Pop-Location }
if ($code -ne 0)      { throw "loader patch mode failed ($code)" }
if (-not (Test-Path -LiteralPath $zipPath)) { throw "patch output missing: $zipPath" }

# extract classes.dex without the PS 5.1 ExtractToDirectory overload issue
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [IO.Compression.ZipFile]::OpenRead($zipPath)
try {
    $entry = $zip.GetEntry("classes.dex")
    if (-not $entry) { throw "classes.dex not found in $zipPath" }
    if (Test-Path -LiteralPath $dexPath) { Remove-Item -LiteralPath $dexPath -Force }
    $in = $entry.Open()
    try {
        $out = [IO.File]::Create($dexPath)
        try { $in.CopyTo($out) } finally { $out.Close() }
    }
    finally { $in.Close() }
}
finally { $zip.Dispose() }

if (Test-Path -LiteralPath $rawSmali) { Remove-Item -LiteralPath $rawSmali -Recurse -Force }
Write-Host "[lpa] baksmali -> raw-smali ..."
& $java -jar $baksmali d $dexPath -o $rawSmali
if ($LASTEXITCODE -ne 0) { throw "baksmali failed ($LASTEXITCODE)" }

# curate: only the classes LoaderSettings actually needs
if (Test-Path -LiteralPath $outSmali) { Remove-Item -LiteralPath $outSmali -Recurse -Force }
New-Item -ItemType Directory -Force -Path $outSmali | Out-Null

$gameClasses = @(
    "aoc\kingdoms\lukasz\jakowski\Touch.smali",
    "aoc\kingdoms\lukasz\map\map\MapTouchManager.smali",
    "aoc\kingdoms\lukasz\menu_element\button\ButtonTopOutliner.smali"
)
foreach ($rel in $gameClasses) {
    $src = Join-Path $rawSmali $rel
    if (-not (Test-Path -LiteralPath $src)) { throw "patched class missing: $src" }
    $dst = Join-Path $outSmali $rel
    $dstDir = Split-Path -Parent $dst
    if (-not (Test-Path -LiteralPath $dstDir)) { New-Item -ItemType Directory -Force -Path $dstDir | Out-Null }
    Copy-Item -LiteralPath $src -Destination $dst -Force
}

$supportSrc = Join-Path $rawSmali "com\saysky\longpressmovearmy"
$supportDst = Join-Path $outSmali "com\saysky\longpressmovearmy"
if (-not (Test-Path -LiteralPath $supportSrc)) { throw "LPA support classes missing: $supportSrc" }
Copy-Item -LiteralPath $supportSrc -Destination $supportDst -Recurse -Force
$mixinDst = Join-Path $supportDst "mixin"
if (Test-Path -LiteralPath $mixinDst) { Remove-Item -LiteralPath $mixinDst -Recurse -Force }

# sanity checks: the Mixin must have been expanded into the patched classes
$touchTxt = [IO.File]::ReadAllText((Join-Path $outSmali "aoc\kingdoms\lukasz\jakowski\Touch.smali"), [Text.Encoding]::UTF8)
$mtmTxt   = [IO.File]::ReadAllText((Join-Path $outSmali "aoc\kingdoms\lukasz\map\map\MapTouchManager.smali"), [Text.Encoding]::UTF8)
$btnTxt   = [IO.File]::ReadAllText((Join-Path $outSmali "aoc\kingdoms\lukasz\menu_element\button\ButtonTopOutliner.smali"), [Text.Encoding]::UTF8)
if ($touchTxt -notmatch 'qa\$actionUp') { throw "Touch.smali: qa\$actionUp not found (Mixin not applied?)" }
if ($mtmTxt   -notmatch 'lpm\$actionDown') { throw "MapTouchManager.smali: lpm\$actionDown not found (Mixin not applied?)" }
if ($btnTxt   -notmatch 'qa\$drawText') { throw "ButtonTopOutliner.smali: qa\$drawText not found (Mixin not applied?)" }

Write-Host "[lpa] done: $outSmali"
