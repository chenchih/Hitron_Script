# Intro
This batch script is most common use in Window, some of them include running cycle, and some just SNMP.
Some of the scipt can we use for other purpose or see how to set sytnax. 
# Prerequisite
## Some tool need to used specail tool please installed: 
* Nmap https://nmap.org/download.html
* Iperf2 https://iperf.fr/
* NetSNMP: http://www.net-snmp.org/download.html

# File Description
|NO | Code         | Description |Type |
| ------  | ------        | ------ |  ------ |
|0|PWD_Autogen_cgnv22_21.bat|password|NA|
|1-1|current_directory.bat| will open your current directory without open cmd|Window System/IP|
|1-2|set_ipaddress.bat|set static or dhcp ip address|Window System|
|1-3|Wlan_connect.bat|connect WLAN |Window System/WiFI|
|1-4|pinglistip.bat|ping from list|Window System/ping|
|2-1|iperf_wifi_toolV2.bat:| wifi set password, and iperf command   |Tool/iperf|
|2-2|SIP_Convert_bin_test.bat : |convert docsic config file to text file |Tool/Excentis|
|2-3|NMAP_SCAN.bat|port scan UDP TCP|Tool/Nmap|
|3-1|mib set webgui_password_daemon.bat:| set webgui password, and DaemonAccessible|SNMP|
|3-2|mib_set_get_v1:| Set and get user enter oid|SNMP|
|3-3|upgrade_http.bat:| upgrade fw (http, tftp)and walk  mib |SNMP/upgrade|
|3-4|upgrade_fast2_samedomain.bat |Type in your last IP address|SNMP/upgrade|
|3-5|SNMP_walk_MIB_loop_textfile.bat| Query MIB every N second and epxort to text file|SNMP/Loop|
|3-6|SNMP_walk_allMIB_loop_textfile.bat| Query entrire MIB every N second and epxort to text file|SNMP/Loop|
|3-7|SNMP_loop_methodd2.bat| walk mib method2|SNMP/Loop|
|3-8|SNMP_query_mib_N_time.bat|user enter Query MIB N time |SNMP/Loop|
|3-9|SNMP_stop_N_cycle.bat|Query mib and stop after 100 cycle|SNMP/Loop|

# How to use: 
```
1. Open a text or notepad
2. copy and paste it or download the file
3. save as .bat file
4. double click is able to run it
```
# Script Description
## 0. password Autogen
* Automatic generate Password using MAC address format 
* Output
    ```
	Enter MAC: AABBCCDDEEFF
	Password: #BBAADD@CCFFEE*
	 ```

