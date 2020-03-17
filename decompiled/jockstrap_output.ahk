; <COMPILER: v1.1.30.00>
#SingleInstance force
PB_Token   := "o.cG8BAZtADSnacCHUowJ9qiBEaQgHqlb7"
PB_Title   := "- Dota 2 Match found -"
PB_Message := "Get your ass in the game!"
InitFlashingWinTrigger:
Gui +LastFound
hWnd := WinExist() , DllCall( "RegisterShellHookWindow", UInt,hWnd )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage" )
Return
ShellMessage( wParam,lParam ) {
global bActivate
If ( wParam = 0x8006 ){
WinGet, flashingProcessName, ProcessName, ahk_id %lParam%
If (flashingProcessName = "dota2.exe") {
WinActivate, ahk_id %lParam%
ControlSend, , {Enter}, ahk_id %lParam%
Sleep 1000
ControlSend, , {Enter}, ahk_id %lParam%
Sleep 1000
ControlSend, , {End}, ahk_exe LA.exe
Loop, 5 {
global PB_Token
global PB_Title
global PB_Message
if (PB_PushNote(PB_Token, PB_Title, PB_Message) = 200){
Break
}
}
}
}
}
PB_PushNote(PB_Token, PB_Title, PB_Message) {
WinHTTP := ComObjCreate("WinHTTP.WinHttpRequest.5.1")
WinHTTP.SetProxy(0)
WinHTTP.Open("POST", "https://api.pushbullet.com/v2/pushes", 0)
WinHTTP.SetCredentials(PB_Token, "", 0)
WinHTTP.SetRequestHeader("Content-Type", "application/json")
PB_Body := "{""type"": ""note"", ""title"": """ PB_Title """, ""body"": """ PB_Message """}"
WinHTTP.Send(PB_Body)
Result := WinHTTP.ResponseText
Status := WinHTTP.Status
return Status
}