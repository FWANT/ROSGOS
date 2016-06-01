SysGet, ScreenWidth, 78
SysGet, ScreenHeight, 79
;получение параметров экрана
ScriptWidth:=ScreenWidth/5
ScriptHeight:=ScreenHeight/5
;получение размеров окна
ButtonWidth:=ScriptWidth/5
ButtonHeight:=ScriptHeight/6
;получение размеров кнопок (делитель высоты = количество отправляющих .xml +1 для файла)
EditWidth:=ScriptWidth*0.8-2
EditHeight:=ScriptHeight/6-2
;получаение размеров поля с выбранным файлом
Taskone=Бакунов
;Блок отправляющих файлы
