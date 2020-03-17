@echo off
SET "MyDir=%~dp0"

CD "%MyDir%"

del "RCData.rc"




:Sys2
cls
color 05
echo.
echo.
echo.
echo.
echo.
echo                                             Decompilation Complete.
echo.
echo.
echo 			  Please input the output name for the newly decompiled script...
echo.
echo.
set /P "udefine=%A%"
:: set /P "udefine=%%A%"
cls
timeout 1 > nul
:: @timeout /t 10 /nobreak
:: set/p<nul =any key to exit ...&pause>nul
set "str2=%udefine%"
set "str5=%ThisDir%"

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
Ren "RCData.bin" "%str2%.ahk"

timeout 5 > nul
:: move "%str2%.ahk" "\decompiled"
:: start "%SystemRoot%\explorer.exe" "%MyDir%\decompiled"
START "" "%MyDir%library\logHandler.exe"

exit