@echo off
:: Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

:: Store the original parameters
set "params=%*"

:: If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Administrator privileges are required to modify system PATH
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    :: Pass the original parameters
    echo UAC.ShellExecute "%~s0", "%params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

setlocal

:: Check if a file path was provided by drag-and-drop
if "%~1" == "" (
    :: No file was dragged. Ask user for a path.
    echo No file was dragged onto this script.
    set /p "filePath=Please enter a path to add to the PATH variable: "
    if "%filePath%"=="" (
        echo Error: No path was provided.
        pause
        exit /b 1
    )
) else (
    :: Check if the dragged item is a directory or file
    if exist "%~1\" (
        :: It's a directory, use its path directly
        set "filePath=%~1"
    ) else (
        :: It's a file, use its parent directory
        set "filePath=%~dp1"
    )
)

:: Remove trailing backslash if present
if "%filePath:~-1%"=="\" set "filePath=%filePath:~0,-1%"

:: Retrieve current PATH environment variable from registry
for /f "tokens=2* delims= " %%a in (
    'reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path'
) do (
    set "currentPath=%%b"
)

:: Check if the new path is already in PATH
echo Checking if "%filePath%" is already in the PATH...
echo "%currentPath%" | find /i "%filePath%" >nul
if not errorlevel 1 (
    echo Path "%filePath%" is already in the PATH.
    pause
    exit /b 0
)

:: Add the new path to PATH
echo Adding "%filePath%" to the PATH...
set "newPath=%currentPath%;%filePath%"

:: Update the PATH in registry
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%newPath%" /f

:: Broadcast the environment change for current session
setx PATH "%newPath%" /m

echo Path "%filePath%" has been successfully added to the PATH.
echo Please restart your computer or any open terminal/command prompt windows for the change to take effect.
pause
endlocal