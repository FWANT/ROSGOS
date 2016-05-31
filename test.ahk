#include param.ahk
#include AutoXYWH.ahk
;param - переделать на .dll (временно через ahk)
;AutoXYWH - автоматическое изменение размеров контролов (не уверен что понадобится)
gui, +resize
;добавление возможности изменения размера окна
gui, add, button, vChoosefile gChooseFile, &Файл
;ссылка на функцию ChooseFile
gui, show, w%ScriptWidth% h%ScriptHeight%
return

guisize:
AutoXYWH("wh", "ChooseFile")
;wh - меняем высоту/ширину контрола ChooseFile по метке vChoosefile
return

f5::reload
;перезагрузка для удобства обновлениям скрипта

Choosefile:
FileSelectFile, SelectedFile,,%a_desktop%,,*.xml
;Вместо рабочего стола нужно вписать папку или добавить функционал выбора папки, которая будет по умолчанию
return
