#include param.ahk
#include AutoXYWH.ahk
;param - переделать на .dll (временно через ahk)
;AutoXYWH - автоматическое изменение размеров контролов (не уверен что понадобится)
gui, +resize
;добавление возможности изменения размера окна
gui, add, button, vChoosefile gChooseFile, &Файл
;ссылка на функцию ChooseFile
gui, add, edit, x+ vSelectedFile, %selectedfile%
;выбранный файл
gui, show, w%ScriptWidth% h%ScriptHeight%
return

guisize:
AutoXYWH("wh", "ChooseFile")
;wh - меняем высоту/ширину контрола ChooseFile по метке vChoosefile
return

f5::reload
;перезагрузка для удобства обновления скрипта

Choosefile:
FileSelectFile, SelectedFile,,%a_desktop%,,*.xml
;Вместо рабочего стола нужно вписать папку или добавить функционал выбора папки, которая будет по умолчанию
ShortPath:= SubStr(SelectedFile, InStr(SelectedFile, "\", , 0, 2)+1)
;Обрезается путь к выбранному файлу до предпоследнего уровня, +1 чтобы не было слэша
guicontrol,,SelectedFile, %ShortPath%
;Передача значения в текстовое поле
return
