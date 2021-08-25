@echo off
echo =========Upgrade Code from SNMP=====================

set /p ip="Enter your IP address :  "


:start
cls
echo ==============================
echo 0)Upgrade image(http)
echo 1)Upgrade image(tftp)
echo 2)walk mib
echo 3)new ip
echo ==============================
set /p choice="Please eneter choice: "

if '%choice%'=='0'upgrade_http
if '%choice%'=='1' goto upgrade
if '%choice%'=='2' goto walk
if '%choice%'=='3' goto newip



:upgrade
set /p tftpip="Enter your TFTP IP address :  "
set /p SwFilename="Enter your Filename :  "
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.1.0 a %tftpip%
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.2.0 s %SwFilename%

snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.3.0 i 1
echo "DevSwOperStatus:"
snmpget -cpublic -v 2c %ip% .1.3.6.1.2.1.69.1.3.4.0
pause
goto start

:walk
snmpwalk -cpublic -v 2c %ip% .1.3.6.1.2.1.69.1.3
pause
goto start


:newip
set /p ip="Enter your IP address :  "
pause
goto start


:upgrade_http
set /p tftpip="Enter your TFTP IP address :  "
set /p SwFilename="Enter your Filename :  "
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.1.0 a %tftpip%
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.2.0 s %SwFilename%
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.8.0 i 2
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.3.0 i 1
echo "DevSwOperStatus:"
snmpget -cpublic -v 2c %ip% .1.3.6.1.2.1.69.1.3.4.0
pause
goto start



:end
pause
exit