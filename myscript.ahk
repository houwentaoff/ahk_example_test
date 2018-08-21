;需要获取管理员权限才能运行指定程序
;一键启动qq
#q::
title:="QQ ahk_class TXGuiFoundation ahk_exe QQ.exe"
Run, D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe
WinActivate %title%
WinWaitActive %title%
if WinExist("QQ")
{
    ControlSend, , {Enter}, QQ
    ;send {Enter}
}
return
;一键百度 win+i
#i::
Run, http://www.baidu.com/
return
;前提是有窗口
#e::
if WinExist("QQ")
{
    WinClose  
}
return
