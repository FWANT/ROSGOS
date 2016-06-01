FilePath=%A_desktop%\XML
m:=0
j:=0
loop, files, %FilePath%\*.*, D
{
m:=m+1
n:=0
loop, files, %a_loopfilefullpath%\*.*, D
{
n:=n+1
if j<%n%
j:=n
}
}
;Блок отправляющих файлы
SysGet, ScreenWidth, 78
SysGet, ScreenHeight, 79
;получение параметров экрана
ScriptWidth:=ScreenWidth/(5-0.25*j)
ScriptHeight:=ScreenHeight/round(5)
;получение размеров окна
ButtonWidth:=ScriptWidth/(j+1)
ButtonHeight:=ScriptHeight/(m+1)
;получение размеров кнопок (делитель высоты = количество отправляющих .xml +2 для файла и Unknown)
EditWidth:=ScriptWidth*0.8
EditHeight:=ScriptHeight/(m+1)-2
;получаение размеров поля с выбранным файлом
