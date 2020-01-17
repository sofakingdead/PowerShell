powershell cup all -y
if exist "C:\Program Files (x86)\Mozilla Maintenance Service\Uninstall.exe" "C:\Program Files (x86)\Mozilla Maintenance Service\Uninstall.exe" /S
del /f /q C:\Users\Public\Desktop\*.lnk
if exist "C:\Users\Administrator\Desktop\ImageGlass.lnk" del /f /q "C:\Users\Administrator\Desktop\ImageGlass.lnk"
if exist "C:\Users\Administrator\Desktop\Dashlane.lnk" del /f /q "C:\Users\Administrator\Desktop\Dashlane.lnk"
if exist "C:\Users\Administrator\Desktop\Uplay.lnk" del /f /q "C:\Users\Administrator\Desktop\Uplay.lnk"
if exist "C:\Users\Administrator\Desktop\Discord.lnk" del /f /q "C:\Users\Administrator\Desktop\Discord.lnk"
if exist "C:\Users\Administrator\Desktop\Microsoft Edge.lnk" del /f /q "C:\Users\Administrator\Desktop\Microsoft Edge.lnk"

:: Delete tasks
Schtasks /Delete /tn "GoogleUpdateTaskMachineUA" /f
Schtasks /Delete /tn "GoogleUpdateTaskMachineCore" /f
Schtasks /Delete /tn "NvBatteryBoostCheckOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NvTmRepCR1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NvTmRepCR2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NvTmRepCR3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "NvProfileUpdaterDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
::Schtasks /Delete /tn "NvProfileUpdaterOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /f
Schtasks /Delete /tn "\Microsoft\XblGameSave\XblGameSaveTask" /f

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ImageGlass\ImageGlass.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ImageGlass\ImageGlass.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ImageGlass\" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PDFsam Basic\PDFsam Basic.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PDFsam Basic\PDFsam Basic.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PDFsam Basic" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\7-Zip File Manager.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\7-Zip File Manager.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NVIDIA Corporation\GeForce Experience.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NVIDIA Corporation\GeForce Experience.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NVIDIA Corporation\" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Steam\Steam.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Steam\Steam.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Steam\" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Battle.net\Battle.net.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Battle.net\Battle.net.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Battle.net" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Overwatch\Overwatch.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Overwatch\Overwatch.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Overwatch" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\HandBrake\HandBrake.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\HandBrake\HandBrake.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\HandBrake" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN" /s /Q

if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows Admin Center\Windows Admin Center.lnk" move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows Admin Center\Windows Admin Center.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows Admin Center" /s /Q

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ubisoft\Uplay.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ubisoft\Uplay.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ubisoft" /s /Q

if exist C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" "del /f /q "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk"

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\CPUID\CPUID.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\CPUID\CPUID.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\CPUID" /s /q

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\qBittorrent\qBittorrent.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\qBittorrent\qBittorrent.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\qBittorrent" /s /Q

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Dashlane\Dashlane.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Dashlane\Dashlane.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Dashlane" /s /Q

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ImageGlass\ImageGlass.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ImageGlass\ImageGlass.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ImageGlass" /s /Q

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MSI Afterburner\MSI Afterburner.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MSI Afterburner\MSI Afterburner.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MSI Afterburner" /s /Q

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\RivaTuner Statistics Server\RivaTuner Statistics Server.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\RivaTuner Statistics Server\RivaTuner Statistics Server.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\RivaTuner Statistics Server" /s /Q

if exist "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk" move "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk" "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
rmdir "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc" /s /Q