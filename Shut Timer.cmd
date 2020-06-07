@echo off
title Shutdown using TIMER
echo.
echo.
echo *******************************************************
echo              Welcome to Shutdown Timer App
echo *******************************************************
echo.
echo.


echo Enter L Lock
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


if %down%== 1 goto fuck1
if %down%== 2 goto fuck2
if %down%== 3 goto fuck3
if %down%== 4 goto fuck4  

if %down%== 5 goto fuck5
if %down%== 7 goto fuck7
if %down%== 0 goto fucku
if %down%== l goto fuckedup
if %down%== L goto fuckedup 

:fucku
%windir%\System32\SlideToShutDown.exe
exit
:fuck1
shutdown /s /t 600
exit
:fuck2
shutdown /s /t 900
exit
:fuck3
shutdown /s /t 1800
exit
:fuck4
shutdown /s /t 3600
exit
:fuck5
shutdown /s /t 7200
exit



:fuck7

cls
echo.
echo Enter the TIMER IN MINUTES
set /p ticktok=
set f=60
set /a Tticktok= f*ticktok
shutdown /s /t %Tticktok%
exit
:fuckedup
rundll32.exe user32.dll,LockWorkStation



