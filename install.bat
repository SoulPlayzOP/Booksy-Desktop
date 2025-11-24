@echo off
echo ========================================
echo    Booksy Desktop Installer
echo    Write. Create. Publish.
echo ========================================
echo.

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python from https://python.org
    pause
    exit /b 1
)

echo [1/4] Python found - OK
echo.

:: Install dependencies
echo [2/4] Installing dependencies...
pip install python-docx
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

echo [3/4] Dependencies installed - OK
echo.

:: Create desktop shortcut
echo [4/4] Creating desktop shortcut...

set "SCRIPT_DIR=%~dp0"
set "DESKTOP=%USERPROFILE%\Desktop"
set "SHORTCUT=%DESKTOP%\Booksy Desktop.lnk"

:: Create VBS script to create shortcut
echo Set oWS = WScript.CreateObject("WScript.Shell") > "%TEMP%\CreateShortcut.vbs"
echo sLinkFile = "%SHORTCUT%" >> "%TEMP%\CreateShortcut.vbs"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%TEMP%\CreateShortcut.vbs"
echo oLink.TargetPath = "python" >> "%TEMP%\CreateShortcut.vbs"
echo oLink.Arguments = """%SCRIPT_DIR%main.py""" >> "%TEMP%\CreateShortcut.vbs"
echo oLink.WorkingDirectory = "%SCRIPT_DIR%" >> "%TEMP%\CreateShortcut.vbs"
echo oLink.IconLocation = "%SCRIPT_DIR%logo.ico" >> "%TEMP%\CreateShortcut.vbs"
echo oLink.Description = "Booksy Desktop - Professional Book Creator" >> "%TEMP%\CreateShortcut.vbs"
echo oLink.Save >> "%TEMP%\CreateShortcut.vbs"

:: Execute VBS script
cscript "%TEMP%\CreateShortcut.vbs" >nul
del "%TEMP%\CreateShortcut.vbs"

echo Desktop shortcut created - OK
echo.

echo ========================================
echo    Installation Complete!
echo ========================================
echo.
echo Booksy Desktop has been installed successfully!
echo.
echo You can now:
echo   1. Double-click "Booksy Desktop" on your desktop
echo   2. Or run: python main.py
echo.
echo Happy writing!
echo ========================================
pause