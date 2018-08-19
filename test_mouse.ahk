;测试工具中的win+space
; This example allows you to move the mouse around to see
; the title of the window currently under the cursor:
;#Persistent
;SetTimer, WatchCursor, 3000
;return

;WatchCursor:

while WinActive("TCP/UDP测试工具v2.1.1")
{
    MouseGetPos, xpos, ypos, id, control
    MsgBox, The cursor is at X%xpos% Y%ypos%. 
    Sleep, 3000
}
return

;#IfWinActive TCP/UDP测试工具v2.1.1
if WinActive("TCP/UDP测试工具v2.1.1"){
    MsgBox, The cursor is at X%xpos% Y%ypos%. 
    MouseGetPos, xpos, ypos, id, control
    WinGetTitle, title, ahk_id %id%
    WinGetClass, class, ahk_id %id%
    ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control% x:%xpos% y%ypos%.
    return
}
return
;#Space::
;MsgBox, You pressed WIN+SPACE in tcp/udp tool.
;return

