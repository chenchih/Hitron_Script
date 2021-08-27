@echo off
set /p ch="Date: "
set /p ip="Enter your IP address :  "
@set n=0
:loop

@if %n%==999999999 goto finish

echo Loop:'%n%' %DATE% %Time%>>%ch%.txt
echo ====================>>%ch%.txt
snmpwalk -v 2c -c public %ip%
@set /A n=%n%+1
@echo ##############n=%n%##############

@Goto loop
:finish
