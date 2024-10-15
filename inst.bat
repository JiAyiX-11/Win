@echo off
:inicio
:: Verificar si tiene permisos de administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Este script necesita ser ejecutado como administrador.
    pause
    exit /b
)
color 06
cls
echo         1.-Escritorio
echo         2.-Cursor
echo         3.-Salir
set /p opcion=opcion a realizar: 
if "%opcion%"=="1" goto operaciones
if "%opcion%"=="2" goto grupos/usuarios
if "%opcion%"=="3" goto salir


:operaciones
color 03
cls
echo      1.-Rainmiter
echo      2.-Tema
echo      3.-salir
set /p opcion=opcion a realizar:
if "%opcion%"=="1" goto sumar
if "%opcion%"=="2" goto restar
if "%opcion%"=="3" goto inicio
:sumar
color 06
Rainmeter-4.5.20.exe
goto operaciones
:restar
color 06
for /F "tokens=2 delims=\" %%i in ('whoami') do set USER=%%i
xcopy "Escritorio\Rainmeter" "C:\Users\%USER%\Documents\" /E /COPYALL /R:0 /W:0
xcopy "Escritorio\Roaming\Rainmeter" "C:\Users\%USER%\AppData\Roaming" /E /COPYALL /R:0 /W:0
goto operaciones





:grupos/usuarios
color 02
cls
echo      1.-Blanco
echo      2.-Negro
echo      3.-Rojo
echo      4.-salir
set /p opcion=opcion a realizar: 
if "%opcion%"=="1" goto usuario
if "%opcion%"=="2" goto grupo
if "%opcion%"=="3" goto otros
if "%opcion%"=="4" goto inicio

:usuario
color 06
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "Cursor\light\purple\Install.inf"
goto grupos/usuarios
:grupo
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "Cursor\dark\purple\Install.inf"
goto grupo/usuarios
:otros
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "Cursor\red\Install.inf"
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "Cursor\dark\purple\Install.inf"
goto grupos/usuarios

 
:salir
exit


