@echo off
title Push Disaster Rescue Dashboard to GitHub
set "PATH=C:\Users\ASUS\AppData\Local\Programs\git\cmd;%PATH%"
cd /d "%~dp0"
echo ======================================================================
echo Pushing RESILINK to GitHub:
echo https://github.com/thebighnaraj/Offline-P2P-Disaster-Rescue-Dashboard.git
echo ======================================================================
echo.
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo [SUCCESS] All files pushed successfully to GitHub!
) else (
    echo [NOTE] If authentication failed, please enter your GitHub Personal Access Token
    echo or sign in via browser prompt.
)
echo.
pause
