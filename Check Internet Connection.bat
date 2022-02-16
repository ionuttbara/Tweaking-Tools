@echo off


:: Script from ShDW Networks, you can modify this script to your needs.

:: I just configured it like this.

:checkconnection
color 4
ping -n 2 -w 700 www.google.com | find "bytes=" >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    goto passedinternetcheck

) ELSE (
    goto notconnected
)





:passedinternetcheck
cls
:loop
echo You're connected to the internet.
goto checkconnection
timeout 2 >nul /nobreak





:notconnected
cls
echo Ping failed, either you're not connected to the internet or it's because of your configuration.
echo.
echo Script will check for an internet connection every 2 seconds.
timeout 2 >nul /nobreak
goto checkconnection