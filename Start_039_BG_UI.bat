@echo off
setlocal
cd /d "%~dp0"

if exist "%~dp0039_BG_UI.exe" (
    start "" "%~dp0039_BG_UI.exe"
    exit /b 0
)

echo ERROR: 039_BG_UI.exe was not found in this folder.
echo Please keep the full cla_bg_039 package together.
pause
exit /b 1
