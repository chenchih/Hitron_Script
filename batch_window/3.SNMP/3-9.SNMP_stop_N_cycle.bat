@echo off
set num=0
:redo
set /a num+=1
echo Test Round %num% 
for /f %%a in ('time /t') do set a=%%a
echo %date% %a% %time%
snmpget -L n -t 1 -P e -v 2c -c "private" 172.16.14.56 1.3.6.1.2.1.69.1.3.5.0

if "%num%"=="300" pause && echo "100 cycle" pause && exit
goto redo