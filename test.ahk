#include param.ahk
;param - переделать на .dll (временно через ahk)
gui, add, button, x1 y1 Section w%ButtonWidth% h%ButtonHeight% gChooseFile, &Файл
;ссылка на функцию ChooseFile
gui, add, edit, x+1 y2 w%EditWidth% h%EditHeight% vSelectedFile, %selectedfile%
;выбранный файл
loop, files, %FilePath%\*.*, D
{
Task=%a_loopfilename%
Row:=ButtonHeight*a_index
gui, add, button, x1 y%Row% Section w%Buttonwidth% h%ButtonHeight% gUpload, %Task%
;кнопки загрузок по фамилиям, возможно будет одна кнопка, которая из серии полисов вырежет агента и поставить нужную базу и т.п.
loop, files, %FilePath%\%Task%\*.*,D
gui, add, button, xs+%ButtonWidth% y%Row% Section w%ButtonWidth% h%ButtonHeight% gOpenDir, %a_loopfilename%
}
gui, show, w%ScriptWidth% h%ScriptHeight%
return

f5::reload
;перезагрузка для удобства обновления скрипта

Choosefile:
FileSelectFile, SelectedFile,,%a_desktop%,,*.xml
;Вместо рабочего стола нужно вписать папку или добавить функционал выбора папки, которая будет по умолчанию
ShortPath:= SubStr(SelectedFile, InStr(SelectedFile, "\", , 0, 2)+1)
guicontrol,,SelectedFile, %ShortPath%
return

Upload:
return

OpenDir:
return
