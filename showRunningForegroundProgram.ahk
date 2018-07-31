#Persistent
; ctrl+ Numpad1 opens tooltip saying Debug information for currently running foreground program

^Numpad1::
; ToolTip [, Text, X, Y, WhichToolTip]

; To have a ToolTip disappear after a certain amount of time
; without having to use Sleep (which stops the current thread):
fgProcess := GetForegroundWindowProgrocessName()
ToolTip, Timed ToolTip`nThis will be displayed for 5 seconds.`nTitle: %fgProcess%
SetTimer, RemoveToolTip, -5000
Return

^Numpad2::GetForegroundWindowProgrocessName()

; Show tooltip while F1 is hold down
; onkeyup onkeydown


; reload this script

; --------------- Functions --------------------
RemoveToolTip:
ToolTip
return

GetForegroundWindowProgrocessName()
{
    ; Windows are retrieved in order from topmost to bottommost (according to how they are stacked on the desktop
    WinGet, OutputVar, ProcessName, A
    ; MsgBox, ForegroundWindow=%OutputVar%
    return OutputVar
    ; e.g. notepad.exe
}

; reload helper