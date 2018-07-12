 
@echo off
REM Loop through a txt file with all computers
:loop
psExec.exe @domain_computers.txt -d -h -f -u domain\admin -p pass -c check_installed_softwares.bat -e -v -n 2
goto loop
