rem @echo off 
setLocal EnableDelayedExpansion
rem Created by: Eduardo Arreola 
Set EasyAVRuntimeEnginePath=c:\Program Files\Common Files\Logitech\EasyAVRuntimeEngine\
Set LvregPath="c:\Program Files\Kinetic\Kinetic\"
cd /d %~dp0
Set PATH=%PATH%;%EasyAVRuntimeEnginePath%;%LvregPath%,%~dp0


set W_count=0
:test
set /a W_count+=1
if %W_count% == 3 goto fail
kinetic_mysql_bt.exe ETH1 /GetAddress >mac_get.txt

::ksleep 2000
FOR /F "delims=" %%i IN (mac_get.txt) DO (
   SET eth_w_MAC=%%i
)  
pt-str.exe /str_count GetMacfromsever.csv "88C626531E2E"
echo %errorlevel%
pause
if %errorlevel% GTR 1 goto test

::tdebt.exe -c tablehub -s tablehub_eth_mac %eth_w_MAC%
::ksleep 5000
::tdebt.exe -c tablehub -g tablehub_eth_mac>tablehub_eth_macaddress.txt
FOR /F "delims=" %%i IN (mac_get.txt) DO (
   SET eth_r_MAC=%%i
)  
find /i "%eth_r_MAC%" Writemactounits.csv

if %errorlevel% == 0 goto fail

kineticdata.exe /strdata tablehubmac.in mac_get.txt
kinetic_mysql_bt.exe ETH1 /updateused tablehubmacread.out
if %errorlevel% == 0 goto pass

 
:fail
echo fial
pause
exit 1

:pass
echo 0
pause
exit 0




