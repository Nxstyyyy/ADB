@echo off
TITLE ADB Updater

if exist "ADB.new.exe" (
    taskkill /IM "ADB.exe" /F
    
    echo New Version of ADB Exists!
    
    if exist "ADB.exe" (
        echo Old Version of ADB Exists!
        echo Renaming ADB.exe to ADB.exe.old
        ren "ADB.exe" "ADB.exe.old"
    )

    ren "ADB.new.exe" "ADB.exe"

    ADB.exe
) else (
    echo New Version of ADB Could not found it
)
