@echo off
echo =========Upgrade Code from SNMP=====================

set /p ip1="Enter your IP address : 172.16.14. "
set ip=172.16.14.%ip1%
set /p tftpip="Enter your TFTP server: "
set SwFilename="E31N2V1-71er5-170927-NewPKI.img"
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.1.0 a %tftpip%
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.2.0 s %SwFilename%
snmpset  -v 2c -c private %ip% .1.3.6.1.2.1.69.1.3.3.0 i 1
echo "DevSwOperStatus:"
snmpget -cpublic -v 2c %ip% .1.3.6.1.2.1.69.1.3.4.0
pause
exit



