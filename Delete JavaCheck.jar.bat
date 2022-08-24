@echo off
SET OLDJARPATH=%programfiles(x86)%/Minecraft Launcher/game/JavaCheck.jar
SET OLDMCDIR=%programfiles(x86)%/Minecraft Launcher/game/
SET JARPATH=%userprofile%/AppData/Local/Packages/Microsoft.4297127D64EC6_8wekyb3d8bbwe/LocalCache/Local/game/JavaCheck.jar
SET MCDIR=%userprofile%/AppData/Local/Packages/Microsoft.4297127D64EC6_8wekyb3d8bbwe/LocalCache/Local/game/

:home
color 02
cls
SET /A oldlauncher = 0
SET /A newlauncher = 0
echo Searching for JavaCheck.jar in known directories, please wait.
echo.
timeout /t 2 >nul
IF EXIST "%OLDJARPATH%" SET /A oldlauncher = 1
IF %oldlauncher% == 1 (
	echo !! JavaCheck.jar found in the Minecraft Launcher directory. !!
)
IF %oldlauncher% == 0 (
	echo JavaCheck.jar NOT found in the Minecraft Launcher directory.
)
echo.
timeout /t 2 >nul
IF EXIST "%JARPATH%" SET /A newlauncher = 1
IF %newlauncher% == 1 (
	echo !! JavaCheck.jar found in the Microsoft's Minecraft Launcher directory !!
)
IF %newlauncher% == 0 (
	echo JavaCheck.jar NOT found in the Microsoft's Minecraft Launcher directory.
)
timeout /t 2 >nul
IF %oldlauncher% == 0 IF %newlauncher% == 0 GOTO notfound
echo.
echo Press any key to automatically delete JavaCheck.jar from the following directories:
IF %newlauncher% == 1 (
	echo "%MCDIR%"
)
echo.
IF %oldlauncher% == 1 (
	echo "%OLDMCDIR%"
)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
IF %oldlauncher% == 1 IF %newlauncher% == 1 GOTO both
IF %oldlauncher% == 1 IF %newlauncher% == 0 GOTO oldlauncher
IF %oldlauncher% == 0 IF %newlauncher% == 1 GOTO newlauncher

:newlauncher
cls
echo Deleting JavaCheck.jar from %MCDIR%, please wait
timeout 2 >nul
cd /d "%MCDIR%"
del JavaCheck.jar
echo.
echo SUCCESS.
echo.
echo Press any key to rescan, or close this prompt to exit.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto home


:oldlauncher
cls
echo Deleting JavaCheck.jar from %OLDMCDIR%, please wait
timeout 2 >nul
cd /d "%OLDMCDIR%"
del JavaCheck.jar
echo.
echo SUCCESS.
echo.
echo Press any key to rescan, or close this prompt to exit.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto home

:both
cls
echo Deleting JavaCheck.Jar from:
echo.
echo 1. %OLDMCDIR%
echo 2. %MCDIR%
echo.
echo Please wait.
cd /d "%OLDMCDIR%"
del JavaCheck.jar
cd /d "%MCDIR%"
del JavaCheck.jar
echo.
timeout 5 >nul
echo SUCCESS.
echo.
echo Press any key to rescan, or close this prompt to exit.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto home

:notfound
color 0C
cls
echo Did not find JavaCheck.jar in any known directories.
echo.
echo Minecraft's JavaCheck.jar is missing from:
echo 1. %OLDMCDIR% 
echo 2. %MCDIR%
echo.
echo This means the file is already deleted or does not exist in either directory.
echo If you believe this is a mistake, please submit a issue on the GitHub page.
echo.
echo.
echo Press any key to exit.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
exit