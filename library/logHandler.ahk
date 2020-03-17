#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
#Persistent
#NoTrayIcon

Sleep, 50
FileMove, %A_ScriptDir%\*.log, %A_ScriptDir%\..\logs\*.log, 1  ; Move the file without renaming it.
Sleep, 80
FileMove, %A_ScriptDir%\..\*.log, %A_ScriptDir%\..\logs\*.log, 1  ; Move the file without renaming it.
Sleep, 100
FileMove, %A_ScriptDir%\..\*.ahk, %A_ScriptDir%\..\decompiled\*.ahk, 1  ; Move the file without renaming it.
Sleep, 500
FileDelete, %A_ScriptDir%\..\RCData.rc
FileDelete, %A_ScriptDir%\..\*.rc
Sleep, 500
ExitApp