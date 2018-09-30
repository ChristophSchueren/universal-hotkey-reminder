; HTML overlay class

#Include, <CHotkeyControl>

class HotkeyReader_Class extends _CHotkeyControl { ; extends

    beschreibung := "Musterbeschreibung"
    hotkeyCombination := "readInHotkeyTestBEFOREInput"

    __new(callback) {
        __New(){
		Gui, new, hwndhwnd
		this._hwnd := hwnd

		; this.Hotkeys := {}

		; callback := this.HotkeyChanged.Bind(this)

        ;; this.MyHotkey := new _CHotkeyControl(hwnd, "MyHotkey", callback, "x5 y5 w200", "F12")

        ;; this.MyHotkey.Value := "~+a" ; test setter

        ; Gui, Show, x0 y0
        ; call baseclass construktor
        base.__New(hwnd, "MyHotkey", callback, "x5 y5 w200", "F12") ; nur callback weitergereicht

	}

    readHotkey() {
        this.EnableBindMode()
        ; wait till function called
        ; return "readInHotkeyTestAfterInput"
        ; weiter mit readBeschreibung nach input
    }

    readBeschreibung() {
        InputBox, result , Bitte eine Beschreibung eingeben
        return "Musterbeschreibung von Inputbox"
    }

    readAndBuildHotkeyLine() {
        return "keyCombination , Dies ist die Musterbeschreibung"
    }

    ; ------------------ for wrapping

    EnableBindMode() {
		this.MyHotkey._BindMode()
	}

	HotkeyChanged(hkobj){
		MsgBox % "Hotkey :" hkobj.Name "`nNew Human Readable: " hkobj.HumanReadable "`nNew Hotkey String: " hkobj.Value
		ToolTip % hkobj.Value
		this.readBeschreibung()
	}


}