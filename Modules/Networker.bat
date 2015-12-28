@echo off
color c
cls
Title Networker Module Interface
:Networker
SET /P ID=NetworkID?: 
if %ID%==334-091-000-000 GOTO CRO
if %ID%==334-511-000-000 GOTO CRO
if %ID%==124-913-019-426 GOTO CRO
echo Invalid ID, Returning...
cd \
Main.bat

:CRO
cls
echo ===================================
echo NetworkID: [%ID%]
echo InstallID: [100-000-000-000] (Default)
echo Speed: 320Pbps/1Nbps
echo Security: WDS/WDS4
echo Driver: [Networker]
echo Username: TO3310
echo Password: snn601hBBs
echo Website: http://toskapp.github.io/
echo Port: 90102
echo Server: 1/190291
echo DCOK: 109291928482748284734738737263
echo ====================================
pause
cd \
Main.bat
