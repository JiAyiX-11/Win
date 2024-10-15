@echo off
:inicio
:: Verificar si tiene permisos de administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    color 04
    echo                     Este script necesita ser ejecutado como administrador.
    pause
    exit /b
)
color 06
cls
for /F "tokens=2 delims=\" %%i in ('whoami') do set USER=%%i
cd C:\Users\%USER%\Downloads\WinEscritorio-main\WinEscritorio-main || cd C:\Users\%USER%\Downloads\WinEscritorio-main
echo JiAyiX
echo         1.-Escritorio
echo         2.-Cursor
echo         3.-Salir
set /p opcion=opcion a realizar:  
if "%opcion%"=="1" goto escritorio
if "%opcion%"=="2" goto cursor
if "%opcion%"=="3" goto salir


:escritorio
color 03
cls
cd C:\Users\%USER%\Downloads\WinEscritorio-main\WinEscritorio-main\Escritorio || cd C:\Users\%USER%\Downloads\WinEscritorio-main\Escritorio
echo JiAyiX
echo      1.-Rainmiter
echo      2.-Tema
echo      3.-salir
set /p opcion=opcion a realizar: 
if "%opcion%"=="1" goto rainmeter
if "%opcion%"=="2" goto jiayi
if "%opcion%"=="3" goto inicio
:rainmeter
color 06
Rainmeter-4.5.20.exe
goto escritorio
:jiayi
color 06
robocopy "Rainmeter" "C:\Users\%USER%\Documents\Rainmeter" /E 
pause
cd Roaming
robocopy "Rainmeter" "C:\Users\%USER%\AppData\Roaming\Rainmeter" /E 

pause
goto escritorio





:cursor
cls
color 04
echo Instalar el cursor automaticamente hay fallos. Porfavor instale manualmente con click derecho al archivo .INF e INSTALAR.
pause
color 02
cls
cd C:\Users\%USER%\Downloads\WinEscritorio-main\WinEscritorio-main\Cursor|| cd C:\Users\%USER%\Downloads\WinEscritorio-main\Cursor
cd
echo      1.-Blanco
echo      2.-Negro
echo      3.-Rojo
echo      4.-salir
set /p opcion=opcion a realizar: 
if "%opcion%"=="1" goto blanco
if "%opcion%"=="2" goto negro
if "%opcion%"=="3" goto rojo
if "%opcion%"=="4" goto inicio

:blanco
color 06
cd light\purple
pnputil /add-driver Install.inf /install
goto cursor
:negro
cd dark\purple
pnputil /add-driver Install.inf /install
goto cursor
:rojo
cd red
pnputil /add-driver Install.inf /install
goto cursor

 
:salir
exit



