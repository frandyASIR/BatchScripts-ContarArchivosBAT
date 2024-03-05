@echo off
setlocal enabledelayedexpansion

REM Carpeta actual
set "carpeta_actual=%cd%"

REM Crear cinco archivos vacíos
for /l %%i in (1, 1, 5) do (
    echo. > "!carpeta_actual!\archivo%%i.txt"
)

REM Contar archivos en la carpeta actual
set "contador=0"
for %%f in ("%carpeta_actual%\*.txt") do (
    set /a "contador+=1"
)


echo Se crearon 5 archivos vacíos en la carpeta actual.
echo La carpeta actual contiene %contador% archivos .txt.
pause
endlocal
