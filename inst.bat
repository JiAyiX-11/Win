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
for /F "tokens=2 delims=\" %%i in ('whoami') do set USER=%%i
cd C:\Users\%USER%\Downloads\WinEscritorio-main\WinEscritorio-main || cd C:\Users\%USER%\Downloads\WinEscritorio-main
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
cd C:\Users\%USER%\Downloads\WinEscritorio-main\WinEscritorio-main\Escritorio || cd C:\Users\%USER%\Downloads\WinEscritorio-main\Escritorio
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
robocopy "Rainmeter" "C:\Users\%USER%\Documents\Rainmeter" /E 
pause
cd Roaming
robocopy "Rainmeter" "C:\Users\%USER%\AppData\Roaming\Rainmeter" /E 

pause
goto operaciones





:grupos/usuarios
color 02
cls
cd C:\Users\%USER%\Downloads\WinEscritorio-main\WinEscritorio-main\Cursor|| cd C:\Users\%USER%\Downloads\WinEscritorio-main\Cursor
echo      1.-Blanco
echo      2.-Negro
echo      3.-Rojo
echo      4.-salir
set /p opcion=opcion a realizar: 
if "%opcion%"=="1" goto usuario
if "%opcion%"=="2" goto grupo
if "%opcion%"=="3" goto otros
if "%opcion%"=="4" goto inicio1

:usuario
color 06
cd light\purple
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "./Install.inf"
goto grupos/usuarios
:grupo
cd dark\purple
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "./Install.inf"
goto grupo/usuarios
:otros
cd red
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "./Install.inf"
cd ..
cd dark\purple
rundll32 setupapi,InstallHinfSection DefaultInstall 132 "./Install.inf"
goto grupos/usuarios

 
:salir
exit


