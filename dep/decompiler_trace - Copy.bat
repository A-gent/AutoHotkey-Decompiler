@echo off
color 02
setlocal
DEL *.rc
timeout 1 > nul
DEL *.bin
timeout 1 > nul
cls

:Sys1
::set "/p udefine=%A%"
set ThisDir=%~dp0
CD "%~dp0"
color 03
echo.
echo.
echo.
echo.
echo.
echo.
echo.			                                Welcome to the AutoHotkey Decompiler system.
echo 			                                        -Powered By ResourceHacker-
echo.
echo.
echo.
echo.
echo.
echo.
timeout 1 > nul
cls
echo.
echo.
echo.
echo.			                                Welcome to the AutoHotkey Decompiler system.
echo 			                                        -Powered By ResourceHacker-
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                     Please input your filename to decompile...
echo.
echo.
echo.
set /P "udefine=%%A%"
set "udefine1=ResourceHacker.exe -open %str2% -save RCData.rc -action extract -mask RCDATA,, -log Decompile.log"
set "udefine2= -save RCData.rc -action extract -mask RCDATA,, -log Decompile.log"
goto Sys2

:Sys2
cls
color 05
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo 			                                        Decompile in progress...
echo.
echo.
timeout 4 > nul
:: @timeout /t 10 /nobreak
:: set/p<nul =any key to exit ...&pause>nul
set "str1=%ThisDir%ResourceHacker.exe"
set "str2=%udefine%"
set "str3=%udefine2%"
set "str4=%udefine1%"
set "newvar=%str4%%str2%%str3%"
:: set "newvar=%str1%%str2%%str3%"
:: set "newvar=%str1%%str2%
:: echo "%newvar%"
timeout 1 > nul
:: START "%str1%" "%newvar%"
START /I "" "ResourceHacker.exe" -open %str2% -save RCData.rc -action extract -mask RCDATA,, -log Decompile.log
:: "%newvar%"
START "" "decomp.cmd"
endlocal
exit