@echo off
set IP=172.16.14.98

::set WEBGUI account password (hitronUmAuthLocalAccountPassword) 
snmpset  -v1 -c private %IP% .1.3.6.1.4.1.8595.20.16.1.1.1.1.4.1 s 1234567890
:: set commit(hitronUmCommitAll)
snmpset  -v1 -c private %IP% .1.3.6.1.4.1.8595.20.16.2.1.0 i 1

:: set hitronCmDaemonAccessible 1: telnet(1), 2: http(2),3: snmp(3),4: https(4),5: ssh(5)
snmpset  -v 2c -c private %IP% .1.3.6.1.4.1.8595.2.1.2.2.1.2.1 x 0xE0
snmpset  -v 2c -c private %IP% .1.3.6.1.4.1.8595.2.1.2.2.1.2.2 x 0xE0
snmpset  -v 2c -c private %IP% .1.3.6.1.4.1.8595.2.1.2.2.1.2.4 x 0xE0
snmpset  -v 2c -c private %IP% .1.3.6.1.4.1.8595.2.1.2.2.1.2.5 x 0xE0
pause

