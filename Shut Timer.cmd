@echo off
title Shutdown PC using TIMER
echo.
echo.
echo *******************************************************
echo              Welcome to Shutdown Timer App - GAK
echo *******************************************************
echo.
echo.


echo Enter L Lock
echo Enter A Abort
echo Enter 0 Shutdown
echo Enter 1 for 10 mins
echo Enter 2 for 15 mins
echo Enter 3 for 30 mins
echo Enter 4 for  1 hrs
echo Enter 5 for  2 hrs
echo Enter 7 TO SET THE TIMER
echo.
echo Enter the Number
set /p down=


if %down%== 1 goto option1
if %down%== 2 goto option2
if %down%== 3 goto option3
if %down%== 4 goto option4  
if %down%== 5 goto option5
if %down%== 7 goto option7
if %down%== 0 goto optionSlideShutdown
if %down%== l goto optionLock
if %down%== L goto optionLock 
if %down%== a goto optionab
if %down%== A goto optionab


:optionSlideShutdown
%windir%\System32\SlideToShutDown.exe
exit
:option1
shutdown /s /t 600
goto confirm
exit
:option2
shutdown /s /t 900
goto confirm
exit
:option3
shutdown /s /t 1800
goto confirm
exit
:option4
shutdown /s /t 3600
goto confirm
exit
:option5
shutdown /s /t 7200
goto confirm
exit
:optionab
cls
shutdown /a
echo.
echo.
echo ************************************
echo   Aborted!!! - Mission Successfull
echo ************************************
timeout 3
exit
:option7
cls
echo.
echo Enter the TIMER IN MINUTES
set /p ticktok=
set f=60
set /a Tticktok= f*ticktok
shutdown /s /t %Tticktok%
goto confirm
exit
:optionLock
rundll32.exe user32.dll,LockWorkStation
:confirm
cls
echo.
echo.
echo **************************************
echo   Scheduled!!! - Mission Successfull
echo **************************************
timeout 3
exit

