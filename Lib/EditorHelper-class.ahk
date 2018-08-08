class EditorHelper_Class {

    editorProgramPath := "code"
    static staticvar := 1.1234

    __new() {
        return this
    }

    setEditor(editorProgramPath) {
        filecontent :=
        ToolTip, htmlFileName`n
    }

    open(filename) {
        this.edit(filename)
    }
    editBad(filename) {
        ; Run, edit "C:\My File.txt"
        runprogram := "start code " . filename
        ; Run, open %runprogram%
        ; Run, edit %filename%
        this.RunWaitOne(runprogram)
    }
    edit(filename) {
        ; Run, edit "C:\My File.txt"
        runprogram := "start code " . filename
        ; Run, open %runprogram%
        ; Run, edit %filename%
        this.RunWaitOne(runprogram)
    }
    tooptip(filename) {
        FileRead, filetext, %filename% ;
        ToolTip, % filetext
    }
    RunWaitOne(command) {
        ; WshShell object: http://msdn.microsoft.com/en-us/library/aew9yb99
        shell := ComObjCreate("WScript.Shell")
        ; Execute a single command via cmd.exe
        exec := shell.Exec(ComSpec " /C " command)
        ; Read and return the command's output
        ; return exec.StdOut.ReadAll()
    }
    ; ExecScript: Executes the given code as a new AutoHotkey process.
    ExecScript(Script, Wait:=true)
    {
        shell := ComObjCreate("WScript.Shell")
        exec := shell.Exec("AutoHotkey.exe /ErrorStdOut *")
        exec.StdIn.Write(script)
        exec.StdIn.Close()
        if Wait
            return exec.StdOut.ReadAll()
    }
}