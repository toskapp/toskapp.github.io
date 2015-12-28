@echo off
Title Tosk Server Client
color c9
cls
:Main
echo ===================================
echo Server: 113.42.0.9
echo Backup: 113.42.0.13
echo ===================================
SET /P Opt=Option?: 
if %Opt%==113.42.0.9 GOTO Server
if %Opt%==113.42.0.13 GOTO Backup
echo Server Doesn't Exist!
goto Main && cls

rem //SERVER {
:Server
cls
color a
Title Tosk Server Client [113.42.0.9]
echo ===================================
echo This system uses different drivers to run
echo ===================================
pause
cls
echo Drivers: (A)
SET /P MainDrivers=Driver To Use?: 
if %MainDrivers%==A goto MainA
echo Driver Doesn't Exist!
cls 
goto Server

:MainA
Title Tosk Server Client [113.42.0.9] [A]
SET /P MainA=A: 
if %MainA%==cmds GOTO MainACmds
if %MainA%==setlocal GOTO MainALocal
if %MainA%==setmanual GOTO MainAManual
if %MainA%==system GOTO MainASystem
if %MainA%==clear GOTO MainAClear
if %MainA%==test GOTO MainATest
if %MainA%==update GOTO MainAUpdate
if %MainA%==network GOTO MainANetwork
if %MainA%==modules GOTO MainAModules
echo The command "%MainA%" doesn't exist!
goto MainA

:MainACmds
echo ===================================
echo cmds: Show's this list
echo setlocal: Set's the local system ID
echo setmanual: Set's thos local system ID manually
echo system: Show's system infomation
echo clear: Clears the command chat
echo test: Tests to see the commands are working correctly
echo update: Updates the server
echo network: Give infomation about the network
echo modules: Show's all modules in use.
echo ===================================
goto MainA

:MainALocal
SET /P ID=MainID:  
if %ID%==134-904-116-502 GOTO IDCorrect
if %ID%==122-094-320-996 GOTO IDCorrect
if %ID%==664-011-104-117 GOTO IDCorrect
echo The ID Is Invalid.
goto MainA

:IDCorrect
echo ID has been changed to %ID%.
goto MainA

:MainAManual
cls
echo ===================================
echo SystemID: [TOSK]
echo MainID: [%ID%]
echo IP: [113.42.0.9]
echo System: XTS Core X1
echo Port: 90102
echo InstallID: [332-932-014-558]
echo BackupID: [9102-4443-1019]
echo Engine: Xdontu X113
echo Memory: 10PB Used: 0.032/10PB
echo Internet Speed: 320Pbps
echo ===================================
goto MainA

:MainASystem
echo ===================================
echo System: XTS Core X1
echo InstallID: [332-932-014-558]
echo Engine: Xdontu X113
echo Memory: 10PB [Used: 0.032/10PB]
echo ===================================
goto MainA

:MainAClear
cls
goto MainA

:MainATest
echo Test Successful!
goto MainA 

:MainAUpdate
echo ===================================
echo.
echo System Update: 1.2.4 -- Update Avaliable.
echo.
echo ====================================
goto MainA

:MainANetwork
echo ===================================
echo IP: 113.42.0.9
echo Ports: 80, 54, 6021, 9230, 90102
echo Speed: 320Pbps/450Pbps
echo Uptime: 1 Year, 11 Months and 29 Days
echo Password: ()
echo ID: TO3310
echo Website: http://toskapp.github.io/
echo ===================================
goto MainA

:MainAModules
echo ===================================
echo Networker [Installed]
echo ===================================
SET /P CHKM=Module: 
if %CHKM%==Networker GOTO CKDNetworker
goto MainA

:CKDNetworker
cd \Modules
Networker.bat
goto MainA
