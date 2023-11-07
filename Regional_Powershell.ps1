$DefaultHKEY = "HKU\DEFAULT_USER"
$DefaultRegPath = "C:\Users\Default\NTUSER.DAT"


Set-Culture el-GR
Set-WinSystemLocale el-GR
Set-WinHomeLocation -GeoId 98
Set-WinUserLanguageList en-US -Force
$langList = Get-WinUserLanguageList
$langList.Add("el-GR")
Set-WinUserLanguageList -LanguageList $langList -Force
reg load $DefaultHKEY $DefaultRegPath
reg import "$PSScriptRoot\Default_Regional.reg"
reg unload $DefaultHKEY
reg import "$PSScriptRoot\Regional_Settings.reg"
exit

