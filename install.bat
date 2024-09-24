@echo off

Rainmeter-4.5.20.exe

set usuario=%USERNAME%

robocopy Rainmeter C:\Users\%USERNAME%\Documents\ /E /MOVE /IS /IT
robocopy Roaming/Rainmeter C:\Users\%USERNAME%\AppData\Roaming /E /MOVE /IT /IS

ren Fonts-BlackPanther_Suite Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\BlackPanther_Suite\@Resources /E /MOVE
ren Fonts-Lybrio Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\Lybrio\@Resources /E /MOVE
ren Fonts-Syntage Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\Syntage\@Resources /E /MOVE


