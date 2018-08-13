; universal-hotkey-reminder.ahk

; LATER: activaid module

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; include
#Include, <EditorHelper-class>
#Include, <TooltipFileView-class>

#Include, <HTMLoverlay-class> ; incomplete

; main method
UniversalHotkeyReminder := new UniversalHotkeyReminder_Class()
; $ prevents the Send command from triggering the hotkey
$F1:: UniversalHotkeyReminder.showHotkeys() ; in class
$^F1:: Send {F1}

$*+F2:: UniversalHotkeyReminder.editHotkeysFile()
; Numpad3:: UniversalHotkeyReminder.addHotkey()

; restart script on escape, dont capture escape: "pass-through" hotkeys ~
~Esc::Reload

class UniversalHotkeyReminder_Class {
    ; visualization := new HTMLoverlay_Class()
    visualization := new TooltipFileView_Class()
    editor := new EditorHelper_Class()
    ; filesource = new FileSource()
    __New() {
        this.showHotkeysFkt := ObjBindMethod(this, "showHotkeys")
        this.init()
        return this
    }
    init() {
        ; define hotkeys
        ; for all windows active except autohotkey
        ; Hotkey, Numpad1, % showHotkeysFkt
    }
    showHotkeys() {
        foregroundProgram := this.getForegroundWindowProgrocessName()
        this.show_hotkeys_for(foregroundProgram)
    }
    addHotkey() {
        foregroundProgram := this.getForegroundWindowProgrocessName()
        this.addHotkey_for(foregroundProgram)
    }
    addHotkey_for(programName) {
        filename := this.get_hotkey_filename_for(programName)
        message := "addHOTKEY TO FILE " . filename . " (INCOMPLETE)"
        ToolTip, % message
    }
    editHotkeysFile() {
        foregroundProgram := this.getForegroundWindowProgrocessName()
        this.edit_file_for(foregroundProgram)
    }
    getForegroundWindowProgrocessName()
    {
        ; Windows are retrieved in order from topmost to bottommost (according to how they are stacked on the desktop
        WinGet, result, ProcessName, A
        return result
        ; e.g. notepad.exe
    }
    edit_file_for(programName) {
        filename := this.get_hotkey_filename_for(programName)
        this.editor.open(filename)
    }

    show_hotkeys_for(programName) {
        filename := this.get_hotkey_filename_for(programName)
        this.visualization.show(filename)
    }
    get_hotkey_filename_for(programName) {
        ; notepad.exe wird zu notepad_exe_hotkeys.txt
        return RegExReplace(programName, "\." , "_") . "_shortcutKeys.txt"

    }
}