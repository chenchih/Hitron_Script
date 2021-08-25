@echo off


cls

set cm_ip="172.16.13.17"
set cm_ipv6="2001:0:a013:0:cd79:a999:23e7:20fa"
set mta_ip ="192.168.41.66"
set mta_ipv6="2001:0:a013:0:5472:3739:c244:6987"

set date_format=%DATE:~0,10%
set filename=%date_format:/=%

:start
echo ==============================
echo 1)Scan TCP 
echo 2)Scan UDP
echo 3)DDOS Vector
echo 4)all
echo ==============================
set /p choice="Please enter choice: "

if '%choice%'=='1' goto tcp
if '%choice%'=='2' goto udp
if '%choice%'=='3' goto ddos
if '%choice%'=='4' goto all_scan

:tcp
nmap -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_CM.txt %cm_ip%
nmap -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_MTA.txt %mta_ip%
nmap -6 -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_CM_v6.txt %cm_ipv6%
nmap -6 -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_MTA_v6.txt %mta_ipv6%



goto end

:udp						
nmap -Pn -sS -sU --version-all -p 0-65535 -oN 2.%filename%_UDP_CM.txt %CM_ip%
nmap -Pn -sS -sU --version-all -p 0-65535 -oN 2.%filename%_UDP_MTA.txt %mta_ip%
nmap -6 -Pn -sU -sV --version-all -p 0-65535 -oN 2.%filename%_UDP_CM_v6.txt %cm_ipv6%
nmap -6 -Pn -sU -sV --version-all -p 0-65535 -oN 2.%filename%_UDP_MTA_v6.txt %mta_ipv6%
goto end

:ddos
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_CM.txt %cm_ip%
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_MTA.txt %mta_ip%
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_CMv6.txt %cm_ipv6%
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_MTAv6.txt %mta_ipv6%
goto end

: all_scan
nmap -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_CM.txt %cm_ip%
nmap -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_MTA.txt %mta_ip%
nmap -6 -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_CM_v6.txt %cm_ipv6%
nmap -6 -Pn -sS -sV --version-all -p 0-65535 -oN 1.%filename%_TCP_MTA_v6.txt %mta_ipv6%
nmap -Pn -sS -sU --version-all -p 0-65535 -oN 2.%filename%_UDP_CM.txt %CM_ip%
nmap -Pn -sS -sU --version-all -p 0-65535 -oN 2.%filename%_UDP_MTA.txt %mta_ip%
nmap -6 -Pn -sU -sV --version-all -p 0-65535 -oN 2.%filename%_UDP_CM_v6.txt %cm_ipv6%
nmap -6 -Pn -sU -sV --version-all -p 0-65535 -oN 2.%filename%_UDP_MTA_v6.txt %mta_ipv6%
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_CM.txt %cm_ip%
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_MTA.txt %mta_ip%
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_CMv6.txt %cm_ipv6%
nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, ntpmonlist, snmp-sysdescr, upnp-info -oN 3.%filename%_DDOS_Vector_MTAv6.txt %mta_ipv6%

:end
pause
exit

: backup
set /p cm_ip="Enter your CM IPv4 address : "
set /p cm_ipv6="Enter your CM IPv6 address : "
set /p mta_ip="Enter your MTA Ip address :"