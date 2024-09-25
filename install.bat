@echo off
powershell -Command "Start-Process cmd -ArgumentList '/c %~dp0%~nx0' -Verb runAs"

Rainmeter-4.5.20.exe

set usuario=%USERNAME%

robocopy Rainmeter C:\Users\%USERNAME%\Documents\Rainmeter /E /MOVE
robocopy Roaming/Rainmeter C:\Users\%USERNAME%\AppData\Roaming\Rainmeter /E /MOVE

ren Fonts-BlackPanther_Suite Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\BlackPanther_Suite\@Resources\Fonts /E /MOVE
ren Fonts-Lybrio Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\Lybrio\@Resources\Fonts /E /MOVE
ren Fonts-Syntage Fonts && robocopy Fonts C:\Users\%USERNAME%\Documents\Escritorio\Rainmeter\Skins\Syntage\@Resources\Fonts /E /MOVE


