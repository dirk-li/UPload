
VC_PLC_COM.exe COM3 Initial
echo %errorlevel%
pause
VC_PLC_COM.exe COM3 SETM0
echo %errorlevel%
pause
VC_PLC_COM.exe COM3 RSTY11
echo %errorlevel%
pause
VC_PLC_COM.exe COM3 SETY11
echo %errorlevel%
pause
VC_PLC_COM.exe COM3 RSTY12
echo %errorlevel%
pause
VC_PLC_COM.exe COM3 SETY12
echo %errorlevel%
pause
VC_PLC_COM.exe COM3 READ_X
echo %errorlevel%
pause