# 编译 Java 补丁类(仅 java\src,不含 stubs)并合并进补丁 dex
# 输入: out\classes_smali.dex(smali 汇编产物)+ java\src 编译结果
# 输出: out\classes.dex(最终补丁 dex)
$ErrorActionPreference = "Stop"
. (Join-Path $PSScriptRoot "env.ps1")
$G = $AohGameRoot
$proj = Split-Path -Parent $PSScriptRoot
$jdkBin = $AohJdkBin
$javac = $AohJavac
$jarExe = $AohJarExe
$javaExe = $AohJavaExe
$d8 = $AohD8
$androidJar = $AohAndroidJar
if (-not (Test-Path $javac)) { throw "missing javac: $javac" }
if (-not (Test-Path $d8)) { throw "missing d8: $d8" }

$stubOut = Join-Path $env:TEMP "p3d_stub"
$srcOut = Join-Path $env:TEMP "p3d_cls"
$mergeOut = Join-Path $env:TEMP "p3d_merged"
$jarPath = Join-Path $env:TEMP "p3d_patch.jar"
foreach ($d in @($stubOut, $srcOut, $mergeOut)) { if (Test-Path $d) { Remove-Item $d -Recurse -Force } }
New-Item -ItemType Directory -Force -Path $stubOut, $srcOut, $mergeOut | Out-Null
if (Test-Path $jarPath) { Remove-Item $jarPath -Force }

# 1) 编译桩类(仅作 javac classpath,不进 dex)
$stubFiles = @(Get-ChildItem (Join-Path $proj "java\stubs") -Recurse -Filter *.java | ForEach-Object { $_.FullName })
& $javac -encoding UTF-8 --release 8 -d $stubOut @stubFiles
if ($LASTEXITCODE -ne 0) { throw "javac stubs failed" }
$stubJar = Join-Path $env:TEMP "p3d_stubs.jar"
if (Test-Path $stubJar) { Remove-Item $stubJar -Force }
& $jarExe cf $stubJar -C $stubOut .
if ($LASTEXITCODE -ne 0) { throw "jar stubs failed" }

# 2) 编译补丁源码(WebUI 等安卓侧代码需要 android.jar)
$srcFiles = @(Get-ChildItem (Join-Path $proj "java\src") -Recurse -Filter *.java | ForEach-Object { $_.FullName })
& $javac -encoding UTF-8 --release 8 -cp "$androidJar;$stubOut" -d $srcOut @srcFiles
if ($LASTEXITCODE -ne 0) { throw "javac src failed" }

# 3) 打成 jar
& $jarExe cf $jarPath -C $srcOut .
if ($LASTEXITCODE -ne 0) { throw "jar failed" }

# 3b) 插件编译用 API jar(只含公开 API:com\saysky\ui\api + UiHost + com\saysky\game;不含宿主实现)
$apiJar = Join-Path $proj "out\ui-api.jar"
if (Test-Path $apiJar) { Remove-Item $apiJar -Force }
& $jarExe cf $apiJar -C $srcOut "com/saysky/ui/api" -C $srcOut "com/saysky/ui/kit" -C $srcOut "com/saysky/ui/UiHost.class" -C $srcOut "com/saysky/game/GameApi.class"
if ($LASTEXITCODE -ne 0) { throw "api jar failed" }
Write-Host ("[java] 插件 API: out\ui-api.jar ({0} B)" -f (Get-Item $apiJar).Length)

# 4) D8 合并 smali dex + java 类 -> 单 dex
$smaliDex = Join-Path $proj "out\classes_smali.dex"
if (-not (Test-Path $smaliDex)) { throw "missing $smaliDex" }
& $javaExe -cp $d8 com.android.tools.r8.D8 --release --min-api 26 --lib $androidJar --lib $stubJar --output $mergeOut $smaliDex $jarPath
if ($LASTEXITCODE -ne 0) { throw "d8 merge failed" }

# 5) 输出
$mergedDex = Join-Path $mergeOut "classes.dex"
if (-not (Test-Path $mergedDex)) { throw "d8 output classes.dex missing" }
Copy-Item $mergedDex (Join-Path $proj "out\classes.dex") -Force
Write-Host ("[java] 合并完成: out\classes.dex ({0} B)" -f (Get-Item (Join-Path $proj "out\classes.dex")).Length)
