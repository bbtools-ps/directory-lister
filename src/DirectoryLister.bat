@echo off
setlocal enabledelayedexpansion
:::
::: /$$$$$$$  /$$$$$$$        /$$$$$$$$                  /$$          
:::| $$__  $$| $$__  $$      |__  $$__/                 | $$          
:::| $$  \ $$| $$  \ $$         | $$  /$$$$$$   /$$$$$$ | $$  /$$$$$$$
:::| $$$$$$$ | $$$$$$$          | $$ /$$__  $$ /$$__  $$| $$ /$$_____/
:::| $$__  $$| $$__  $$         | $$| $$  \ $$| $$  \ $$| $$|  $$$$$$ 
:::| $$  \ $$| $$  \ $$         | $$| $$  | $$| $$  | $$| $$ \____  $$
:::| $$$$$$$/| $$$$$$$/         | $$|  $$$$$$/|  $$$$$$/| $$ /$$$$$$$/
:::|_______/ |_______/          |__/ \______/  \______/ |__/|_______/ 
:::
:::-------------------------------------------------------------------
:::Directory Lister v1.0.0
:::-------------------------------------------------------------------
:::
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

:main
@REM Drag and drop the folder
set /p "myPath=Drag and Drop a folder here and press Enter when done: "
if not defined myPath goto main
@REM Detect only folders
if not exist %myPath%\ (
    echo.
    echo Please drag only folder here.
    echo.
    set "myPath="
    goto main
)
set "resultsFile=%~dp0results.txt"
@REM Change folder path to "%myPath%"
cd /d "%myPath%"
@REM Write the folder listing to .txt file
tree /f /a > "%resultsFile%"
@REM Start notepad and open "%resultsFile%"
start notepad "%resultsFile%"
@REM Exit script
endlocal disabledelayedexpansion
goto :eof