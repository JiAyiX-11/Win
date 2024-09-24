@echo off

Rainmeter-4.5.20.exe

set usuario=%USERNAME%

xcopy Rainmeter C:\Users\%USERNAME%\Documents\Rainmeter /E /Y
xcopy Roaming/Rainmeter C:\Users\%USERNAME%\AppData\Roaming\Rainmeter /E /Y

ren Fonts-BlackPanther_Suite Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\BlackPanther_Suite\@Resources\Fonts /E /MOVE
ren Fonts-Lybrio Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\Lybrio\@Resources\Fonts /E /MOVE
ren Fonts-Syntage Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\Syntage\@Resources\Fonts /E /MOVE


