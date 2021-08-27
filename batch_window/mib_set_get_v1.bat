@echo off

:start
cls
echo ==============================
echo 1)SET SNMP 
echo 2)WALK SNMP
echo 3)exit
echo ==============================
set /p choice="Please enter choice: "

if '%choice%'=='1' goto SET
if '%choice%'=='2' goto get
if '%choice%'=='3' goto end

:SET
set /p IP="Enter your IP address : "
set /p MIB_ID="Enter your mib id (ex: .1.3.6.1.4.1.8595.XX) : "
set /p TYPE="Enter your mib type (ex: S for string, i for interger) : "
set /p value="Enter your value  : "
snmpset -cpublic -v 2c %IP% %MIB_ID%  %TYPE% %value% 
echo "bye"

:GET
set /p IP="Enter your IP address : "
set /p MIB_ID="Enter your mib id (ex: .1.3.6.1.4.1.8595.XX) : "
snmpget -cpublic -v 2c %IP% %MIB_ID% 
echo "bye"
pause