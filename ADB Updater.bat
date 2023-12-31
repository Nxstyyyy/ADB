@echo off
TITLE ADB Updater

if exist "adb.new.exe" (
    tasklist /FI "IMAGENAME eq adb.exe" | find /I "adb.exe" >NUL
    if %ERRORLEVEL% equ 0 (
        echo ADB is running. Killing the process...
        taskkill /F /IM "adb.exe"
    )

    timeout /t 5 /nobreak

    echo New Version of ADB Exists!
    
    if exist "adb.exe" (
        echo Old Version of ADB Exists!
        echo Renaming ADB.exe to ADB.exe.old
        ren "adb.exe" "adb.exe.old"
    )

    ren "adb.new.exe" "adb.exe"

    start adb.exe
) else (
    echo New Version of ADB Could not found it
)
