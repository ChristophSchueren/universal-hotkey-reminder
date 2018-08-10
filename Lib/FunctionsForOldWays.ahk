; From standard library ahk files are automaticaly loaded
; if file has same name as function inside, but if I try with other folder then it stopt working and say function does not exist of file cant be load ....

; #Include %A_ScriptDir%  ; Changes the working directory for subsequent #Includes and FileInstalls.
; #Include C:\My Scripts  ; Same as above but for an explicitly named directory.

;  include this LAST

# Include .\Autohotkey-Future ; Changes the working directory for subsequent #Includes and FileInstalls.