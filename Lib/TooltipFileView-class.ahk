; HTML overlay class

class TooltipFileView_Class {

    basePath := "C:\"
    static staticvar := 1.1234

    __new() {
        return this
    }

    show(filename) {
        If (Not FileExist(filename)) {
            message := "" . filename . " existiert nicht! Anlegen mit ctrl + F2"
            ToolTip, % message
            return
        }
        filecontent :=
        FileRead, filecontent, %filename% ;
        ToolTip, % filecontent
        ; ToolTip, % htmlFileName
    }

    hide() {
        ToolTip
    }


}