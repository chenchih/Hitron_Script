@echo off
@set n=0
set /p ip="Enter your IP address :  "
:loop
@if %n%==999999999 goto finish

echo Loop:'%n%' %DATE% %Time%>> log.txt

echo ==========upsEstimatedChargeRemaining========== >> log.txt
snmpwalk -cpublic -v 2c %ip% 1.3.6.1.2.1.33.1.2.4 >> log.txt
snmpwalk -cpublic -v 2c %ip% 1.3.6.1.2.1.33.1.2.4

@set /A n=%n%+1
@echo ##############n=%n%##############
timeout /t 30 
@Goto loop
:finish
