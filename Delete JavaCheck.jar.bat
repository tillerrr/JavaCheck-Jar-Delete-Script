@echo off
SET JARPATH="%programfiles(x86)%/Minecraft Launcher/game/JavaCheck.jar"
SET MCDIR="%programfiles(x86)%/Minecraft Launcher/game/"
:home
IF EXIST "%programfiles(x86)%/Minecraft Launcher/game/JavaCheck.jar" (
	color 0A
	echo Minecraft's JavaCheck.jar is present.
	echo.
	echo Press enter to confirm deletion of JavaCheck.jar from %MCDIR%
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
	echo.
	echo.
	pause
	echo Deleting JavaCheck.jar
	echo.
	cd /d "%programfiles(x86)%/Minecraft Launcher/game/"
	del JavaCheck.jar
	echo SUCCESS.
	echo.
	echo Press enter to exit.
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
	exit
) ELSE (
    color 0C
	echo Minecraft's JavaCheck.jar is missing from %MCDIR%.
	echo This means the file is already deleted or does not exist in the directory.
	echo.
	echo Press enter to exit.
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
	echo.
	pause
	exit
)
goto home