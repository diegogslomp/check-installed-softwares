@echo off
REM Create a txt file with installed softwares
SET output=%computername%.txt
echo # %date% - %time% > %output%
ipconfig | find "IPv4" > %computername%tmp3.txt
for /f "tokens=2 delims=:" %%g in (%computername%tmp3.txt) do (echo #%%g >> %output%)
reg export HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall %computername%tmp1.txt /y
find "DisplayName" %computername%tmp1.txt | find /V "ParentDisplayName" > %computername%tmp2.txt
for /f "tokens=2,3 delims==" %%g in (%computername%tmp2.txt) do (echo %%g >> %output%)
del %computername%tmp1.txt
del %computername%tmp2.txt
del %computername%tmp3.txt
SET "output="
