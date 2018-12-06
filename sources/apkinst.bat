@shift /0
@echo off
title APK Installer
color f1
mode con cols=50 lines=20
echo *************************************************
echo *                                               *
echo *                APK INSTALLER                  *
echo *                                               *
echo *************************************************
echo.
echo All .APKs in the folder will be installed to your device.
echo.
echo Press any key to start installing...
pause>nul
echo.
for /f "delims=|" %%f in ('dir /b "%~dp0\"*.apk') do "%~dp0\adb.exe" install -r "%~dp0\%%f"
echo.
echo Installation completed.
echo Press any button to exit..
pause>nul
