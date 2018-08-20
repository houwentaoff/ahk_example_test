;测试工具中的win+space
; This example allows you to move the mouse around to see
; the title of the window currently under the cursor:


#Persistent
CoordMode, ToolTip, Relative
CoordMode, Mouse, Relative

msgbox, 点击指定窗口的按钮
SetTimer, WatchCursor, 3000
return

WatchCursor:
if WinExist("TCP/UDP测试工具v2.1.1")
{
    ControlClick, 清空, TCP/UDP测试工具v2.1.1 ;ok 无鼠标跟随
    ;ControlClick, x418 y144, TCP/UDP测试工具v2.1.1 ;指定坐标也是ok的 和上面语句一样 无鼠标跟随
    ;ControlMove, 清空, 455, 144, 50  ;可以移动button的位置和大小
    ;Control, Disable ,,清空 ;还可以disable指定控件
    return
}
return
;while WinActive("TCP/UDP测试工具v2.1.1")
;{
;    MouseGetPos, xpos, ypos, id, control
;    MsgBox, The cursor is at X%xpos% Y%ypos%. 
;    Sleep, 3000
;}
;return

;#IfWinActive TCP/UDP测试工具v2.1.1
;if WinExist("TCP/UDP测试工具v2.1.1")
;if WinActive("TCP/UDP测试工具v2.1.1")
;if WinActive("无标题 - 记事本")
{
;418 144

    ;ControlClick, 清空, TCP/UDP测试工具v2.1.1 ;ok 无鼠标跟随
    ;MouseClick, left, 418, 144 ;ok 有鼠标跟随
    ;MouseGetPos, xpos, ypos
    ;Send {Click, 418,144}  ;ok
    ;MouseMove, xpos, ypos
    
    ;MsgBox, The cursor is at X%xpos% Y%ypos%. 
    ;MouseGetPos, xpos, ypos, id, control
    ;WinGetTitle, title, ahk_id %id%
    ;WinGetClass, class, ahk_id %id%
    ;ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control% x:%xpos% y%ypos%.
    ;return
}
;return
;#Space::
;MsgBox, You pressed WIN+SPACE in tcp/udp tool.
;return

