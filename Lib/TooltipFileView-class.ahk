; HTML overlay class

class TooltipFileView_Class {

    basePath := "C:\"
    static staticvar := 1.1234

    __new() {
        return this
    }

    show(filename) {
        filecontent :=
        FileRead, filecontent, %filename% ;
        ToolTip, % filecontent
        ; ToolTip, % htmlFileName
    }

    hide() {
        ToolTip
    }


}