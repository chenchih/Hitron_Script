@echo off
cd C:\Program Files (x86)\teraterm
set /p COMPORT="Enter your COM-PORT:"
TTERMPRO /C=%COMPORT% /BAUD=115200 /m=D:\comport.ttl
pause

