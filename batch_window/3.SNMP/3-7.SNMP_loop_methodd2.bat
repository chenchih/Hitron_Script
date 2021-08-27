@echo off
set /p ip="Enter your IP address :  "
Setlocal EnableDelayedExpansion
for /l %%a in (1,1,1000000) do (
echo Time:  !time! count: %%a
echo Date: !date! !time! Count: %%a >> test-log.txt
snmpwalk -v 2c -c public %ip%
echo END count: %%a >> test-log.txt
)
EndLocal