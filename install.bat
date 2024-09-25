@echo off

ren Fonts-BlackPanther_Suite Fonts && robocopy Fonts Rainmeter\Skins\BlackPanther_Suite\@Resources\Fonts /E /MOVE
ren Fonts-Lybrio Fonts && robocopy Fonts Rainmeter\Skins\Lybrio\@Resources\Fonts /E /MOVE
ren Fonts-Syntage Fonts && robocopy Fonts Rainmeter\Skins\Syntage\@Resources\Fonts /E /MOVE


