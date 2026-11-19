@echo off
rem The 8th Airforce installer: copies the mod into <IL-2 Great Battles>\MODS. Optional argument: game folder.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1" %*
pause
