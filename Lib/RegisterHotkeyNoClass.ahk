RegisterHotkeyNoClass(hk, fun, arg*) {
    Static funs := {}, args := {}
    funs[hk] := Func(fun), args[hk] := arg
    Hotkey, %hk%, Hotkey_Handle
    Return
        Hotkey_Handle: ; internal subroutine
            funs[A_ThisHotkey].(args[A_ThisHotkey]*)
            Return
}

; Usage
; Hotkey("x", "Foo", "Bar") ; this defines:  x:: Foo("Bar")