#include param.ahk
gui, add, button, x1 y1 w50 h20 gChooseFile, Файл
;Выбираем файл, кнопка размером 50 на 20, ссылка на функцию ChooseFile
gui, show, w%ScriptWidth% h%ScriptHeight%
return

Choosefile:
FileSelectFile, SelectedFile,,%a_desktop%,,*.xml
;Вместо рабочего стола нужно вписать папку или добавить функционал выбора папки, которая будет по умолчанию
return
