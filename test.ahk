#include param.ahk
;param - переделать на .dll (временно через ahk)
gui, add, button, x1 y1 Section w%ButtonWidth% h%ButtonHeight% gChooseFile, &Файл
;ссылка на функцию ChooseFile
gui, add, edit, x+1 y2 w%EditWidth% h%EditHeight% vSelectedFile, %selectedfile%
;выбранный файл
gui, add, button, x1 ys+%ButtonHeight% w%Buttonwidth% h%ButtonHeight% gUpload, %Taskone%
;кнопки загрузок по фамилиям, возможно будет одна кнопка, которая из серии полисов вырежет агента и поставить нужную базу и т.п.
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
