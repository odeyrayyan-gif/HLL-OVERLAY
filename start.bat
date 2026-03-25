@echo off
title HLL Overlay Server
cd /d "%~dp0"
echo.

:: ── Find Python ──────────────────────────────────────────────────
set PYTHON_EXE=

:: 1. Check installer hint file first
if exist "%~dp0python_path.txt" (
    set /p PYTHON_EXE=<"%~dp0python_path.txt"
)

:: 2. Add common Python locations to PATH
set "PATH=%LOCALAPPDATA%\Programs\Python\Python314;%LOCALAPPDATA%\Programs\Python\Python314\Scripts;%PATH%"
set "PATH=%LOCALAPPDATA%\Programs\Python\Python313;%LOCALAPPDATA%\Programs\Python\Python313\Scripts;%PATH%"
set "PATH=%LOCALAPPDATA%\Programs\Python\Python312;%LOCALAPPDATA%\Programs\Python\Python312\Scripts;%PATH%"
set "PATH=%LOCALAPPDATA%\Programs\Python\Python311;%LOCALAPPDATA%\Programs\Python\Python311\Scripts;%PATH%"
set "PATH=%LOCALAPPDATA%\Programs\Python\Python310;%LOCALAPPDATA%\Programs\Python\Python310\Scripts;%PATH%"
set "PATH=C:\Python314;C:\Python313;C:\Python312;C:\Python311;C:\Python310;%PATH%"

:: 3. Verify Python works
if defined PYTHON_EXE (
    "%PYTHON_EXE%" --version >nul 2>&1
    if errorlevel 1 set PYTHON_EXE=
)
if not defined PYTHON_EXE (
    python --version >nul 2>&1
    if not errorlevel 1 set PYTHON_EXE=python
)
if not defined PYTHON_EXE (
    py --version >nul 2>&1
    if not errorlevel 1 set PYTHON_EXE=py
)

:: 4. If still not found, show error
if not defined PYTHON_EXE (
    echo  ============================================================
    echo   ERROR: Python not found!
    echo  ============================================================
    echo.
    echo   HOW TO INSTALL PYTHON:
    echo.
    echo   1. Go to: https://www.python.org/downloads/
    echo   2. Download and run the installer
    echo   3. IMPORTANT: Check "Add Python to PATH" on the first screen
    echo   4. Close this window and double-click the shortcut again
    echo.
    echo  ============================================================
    pause
    exit
)

echo  ============================================================
echo   HLL OVERLAY SERVER
echo  ============================================================
echo   Hub:  http://localhost:3000
echo   Keep this window open while streaming.
echo  ============================================================
echo.

:: Start browser after short delay, then run server
start /b cmd /c "timeout /t 2 /nobreak >nul && start "" http://localhost:3000"
"%PYTHON_EXE%" DO_NOT_EDIT_server.py
pause
