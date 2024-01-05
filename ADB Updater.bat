@echo off
TITLE ADB Updater

if exist "ADB.new.exe" (
    taskkill /IM "adb.exe" /F
    
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
