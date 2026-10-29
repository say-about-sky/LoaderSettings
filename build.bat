@echo off
rem ============================================================
rem  LoaderSettings - one-shot build (patch dex)
rem  Full logic lives in build.ps1 (baseline check, env resolution).
rem    build.bat
rem    build.bat -PackageDir <unpacked apk dir> -RefreshBaseline
rem ============================================================
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0build.ps1" %*
set "RC=%ERRORLEVEL%"
pause
exit /b %RC%
