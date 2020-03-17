@echo off
TITLE Command-Line AutoHotkey Decompiler
color 02
setlocal
cls
DEL "%~dp0*.rc"
START "" "%MyDir%library\logHandler.exe"
DEL "%~dp0*.bin"
:: timeout 1 > nul
cls
timeout 1 > nul

:Sys1
::set "/p udefine=%A%"
set "ThisDir=%~dp0"
CD "%~dp0"
cd "%MyDir%"
color 03
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.			        Welcome to the Jockstrap AutoHotkey Decompiler system.
echo 			                    -Powered By ResourceHacker-
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
echo.			        Welcome to the Jockstrap AutoHotkey Decompiler system.
echo 			                    -Powered By ResourceHacker-
echo.
echo.
echo.
echo.
echo.
echo.
echo                   Please input your filename to decompile... (no spaces, please omit the file extension)
echo.
echo.
echo.
set /P "udefine=%A%"
:: set /P "udefine=%%A%"
set "udefine1=ResourceHacker.exe -open %str2% -save RCData.rc -action extract -mask RCDATA,, -log logs\Decompile.log"
set "udefine2= -save RCData.rc -action extract -mask RCDATA,, -log logs\Decompile.log"
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
echo 			                    Decompile in progress...
echo.
echo.
timeout 4 > nul
:: @timeout /t 10 /nobreak
:: set/p<nul =any key to exit ...&pause>nul
set "str1=%ThisDir%ResourceHacker.exe"
set "str2=%udefine%.exe"
set "str3=%udefine2%"
set "str4=%udefine1%"
set "str5=%ThisDir%"
set "newvar=%str4%%str2%%str3%"
:: set "newvar=%str1%%str2%%str3%"
:: set "newvar=%str1%%str2%
:: echo "%newvar%"
timeout 1 > nul
:: START "%str1%" "%newvar%"
START "" "%str5%\library\ResourceHacker.exe" -open %str2% -save RCData.rc -action extract -mask RCDATA,, -log logs\Decompile.log
:: "%newvar%"
"%str5%\library\nircmd.exe" exec show "1_finalize.cmd"
endlocal
exit