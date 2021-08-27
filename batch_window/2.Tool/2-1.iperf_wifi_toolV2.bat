@echo off

:start
cls
echo ==============================
echo 1)SET WIFI 
echo 2)Iperf Client
echo 3)exit
echo ==============================
set /p choice="Please enter choice: "

if '%choice%'=='1' goto wifiset
if '%choice%'=='2' goto iperfclient
if '%choice%'=='3' goto iperfclient_stability_used
if '%choice%'=='4' goto end

:wifiset
set /p wifiip="Enter your IP address : "
set /p wifipassword="Enter your password to se:  "
snmp_set -t 5 -Oqv %wifiip% private .1.3.6.1.4.1.8595.80211.5.2.4.1.2.1 s %wifipassword%
snmp_set -t 5 -Oqv %wifiip% private .1.3.6.1.4.1.8595.80211.100.0 i 1
snmp_set -t 5 -Oqv %wifiip% private .1.3.6.1.4.1.8595.802115.5.2.4.1.2.1 s %wifipassword%
snmp_set -t 5 -Oqv %wifiip% private .1.3.6.1.4.1.8595.802115.100.0 i 1


:iperfclient
set port11=5001
set port=5001
set /p ip="Enter your IP address  "
set default=iperf.exe -c %ip% -t 300 -i 3 -w 65k 
set /p type="Pleaase enter u for udp, enter for default  tcp: "
set /p port="Pleaase enterport number (ex:2115), default 5001: "
set /A port11=%port%

if '%type%'==' ' (
        echo "iperf command: %default% -p %port%"
	%default% -p %port%
) else (
	if '%type%'=='u' (
		%default% -u -p %port%
	)
)



iperfclient_stability_used
set port11=5001
set port=5001
set /p ip="Enter your IP address  "
set default=iperf.exe -c %ip% -P 5 -i 5 -b 1M -t 345600 -l 1400

set /p type="Pleaase enter u for udp, enter for default  tcp: "
set /p port="Pleaase enterport number (ex:2115), default 5001: "
set /A port11=%port%

if '%type%'==' ' (
        echo "iperf command: %default% -p %port%"
	%default% -p %port%
) else (
	if '%type%'=='u' (
		%default% -u -p %port%
	)
)



pause
goto end



:end
pause
exit