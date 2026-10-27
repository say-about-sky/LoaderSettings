@echo off
chcp 65001 >nul
rem ============================================================
rem  LoaderSettings —— 伪3D地图补丁(倾斜版)+ Quick Actions 出 dex
rem  流程: tools\merge.ps1 重建 final-smali(含 LPA)-> smali 汇编
rem        -> 编译 java\src 并用 D8 合并 -> out\classes.dex
rem  输入: final-smali\        输出: out\classes.dex(独立补丁 dex)
rem  依赖: .tools\smali\smali-2.5.2.jar、loader-1.6.0.jar(仅生成 LPA 时用)
rem ============================================================
setlocal
set "HERE=%~dp0"
set "GAME=%HERE%.."
rem --- JDK 11+: override with JAVA_HOME, else newest jdk-* under Program Files ---
if defined JAVA_HOME set "JDK=%JAVA_HOME%\bin\java.exe"
if not defined JDK for /d %%D in ("C:\Program Files\Microsoft\jdk-*") do set "JDK=%%D\bin\java.exe"
if not defined JDK for /d %%D in ("C:\Program Files\Java\jdk-*") do set "JDK=%%D\bin\java.exe"
set "SMALI=%GAME%\.tools\smali\smali-2.5.2.jar"
set "OUT=%HERE%out"

if not exist "%OUT%" mkdir "%OUT%"

if not exist "%JDK%" (
  echo [ERR] 找不到 JDK11: "%JDK%"
  exit /b 1
)
if not exist "%SMALI%" (
  echo [ERR] 找不到 smali 汇编器: "%SMALI%"
  exit /b 1
)

echo 重建 final-smali(伪3D + LongPressMoveArmy)...
powershell -NoProfile -ExecutionPolicy Bypass -File "%HERE%tools\merge.ps1"
if errorlevel 1 (
  echo [ERR] merge.ps1 失败
  exit /b 1
)

echo.
echo 汇编 smali -^> out\classes_smali.dex ...
if exist "%OUT%\classes_smali.dex" del /q "%OUT%\classes_smali.dex"
"%JDK%" -jar "%SMALI%" assemble -o "%OUT%\classes_smali.dex" "%HERE%final-smali" > "%OUT%\smali-build.log" 2>&1
if errorlevel 1 (
  type "%OUT%\smali-build.log"
  echo [ERR] smali 汇编失败
  exit /b 1
)
if not exist "%OUT%\classes_smali.dex" (
  type "%OUT%\smali-build.log"
  echo [ERR] smali 汇编失败^(未生成 classes_smali.dex^)
  exit /b 1
)

echo.
echo 编译 Java 补丁类并合并 -^> out\classes.dex ...
powershell -NoProfile -ExecutionPolicy Bypass -File "%HERE%tools\build-java.ps1"
if errorlevel 1 (
  echo [ERR] Java 编译/合并失败
  exit /b 1
)

echo.
echo Verify patch dex against target package (verify-dex.ps1)...
powershell -NoProfile -ExecutionPolicy Bypass -File "%HERE%tools\verify-dex.ps1"
if errorlevel 1 (
  echo [ERR] patch dex verification failed
  exit /b 1
)

echo.
echo 完成: out\classes.dex  ^(独立补丁 dex,直接前置导入^)
endlocal
