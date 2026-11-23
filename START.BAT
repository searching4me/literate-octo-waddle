@echo off
title Fjordvik Kommune IT Server Launcher
:menu
cls
echo ========================================
echo   Fjordvik Kommune IT - Launcher
echo ========================================
echo.
echo  [1] Install Dependencies and Start
echo  [2] Just Start
echo  [3] Exit
echo.
set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" goto install_and_start
if "%choice%"=="2" goto just_start
if "%choice%"=="3" exit

echo Invalid choice. Please try again.
pause
goto menu

:install_and_start
echo.
echo [1/2] Installing dependencies (npm install)...
call npm install

echo.
echo [2/2] Starting server (npm start)...
npm start
goto end

:just_start
echo.
echo Starting server (npm start)...
npm start
goto end

:end
pause