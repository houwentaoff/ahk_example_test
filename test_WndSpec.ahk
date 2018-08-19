#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive 傻吊
#Space::
MsgBox, You pressed WIN+SPACE in qq.
return

;测试工具中的win+space
#IfWinActive TCP/UDP测试工具v2.1.1
#Space::
MsgBox, You pressed WIN+SPACE in tcp/udp tool.
return

#IfWinActive 无标题 - 记事本
#Space::
MsgBox, You pressed WIN+SPACE in 记事本.
return

;英文版中的记事本的win+space
#IfWinActive Untitled - Notepad
#Space::
MsgBox, You pressed WIN+SPACE in Notepad.
return

; Any window that isn't Untitled - Notepad
#IfWinActive
!q::
MsgBox, You pressed ALT+Q in any window.
return
;发送字符串ack
#j::
Send, ack
return

