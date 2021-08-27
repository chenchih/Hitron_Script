# Intro
This batch script is most common use in Window, some of them include running cycle, and some just SNMP.
Some of the scipt can we use for other purpose or see how to set sytnax. 
# File Description
|NO | Code         | Description |Type |
| ------  | ------        | ------ |  ------ |
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
# File Description
  > Please install netsnmp before using it 
##  3-1. SNMP set webgui_password_daemon (LGI )
* MIB
    >hitronUmAuthLocalAccountPassword
    >hitronCmDaemonAccessible :
    >1: telnet(1)
	2: http(2)
	3: snmp(3)
	4: https(4)
	5: ssh(5)
	
* Output 
     ```
    SNMPv2-SMI::enterprises.8595.20.16.1.1.1.1.4.1 = STRING: "1234567890"
    SNMPv2-SMI::enterprises.8595.20.16.2.1.0 = INTEGER: 1
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.1 = Hex-STRING: E0
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.2 = Hex-STRING: E0
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.4 = Hex-STRING: E0
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.5 = Hex-STRING: E0
    ```
## 3-2. SNMP walk and GET by user enter oid
* STEP
    * Execute Script
    * Enter walk or get 
    * Enter the oid you want to get
* OUTPUT:
    ```
     ==============================
    1)SET SNMP
    2)WALK SNMP
    3)exit
    ==============================
    Please enter choice:
    ```
## 3-3. upgrade_http.bat
* STEP
    * Execute Script
    * Enter your DUT IP address 
    * Choose your item, tftp upgrade, http upgrade, read upgrade setting from mib
    * This is recursive loop, so you want to change IP you are able to change at new ip
* OUTPUT:
    ```
    Enter your IP address : 
    ==============================
    0)Upgrade image(http)
    1)Upgrade image(tftp)
    2)walk mib
    3)new ip
    ==============================
    Please eneter choice: 
    ```
## 3-4. upgrade_fast2_samedomain.bat
* STEP
    * Execute Script
    * Enter your Last DUT domain, 172.16.40.X , just enter x
    * Choose your item, tftp upgrade, http upgrade, read upgrade setting from mib
    * This is recursive loop, so you want to change IP you are able to change at new ip
* Note: FW is been hotcode, you have to modify it
* OUTPUT:
    ```
    =========Upgrade Code from SNMP=====================
    Enter your IP address : 172.16.14. 56
    Enter your TFTP server: 192.168.3.120
    ```
## 3-5. SNMP_walk_MIB_loop_textfile.bat
* BBU read battery :
    >upsEstimatedChargeRemaining
* Output
    ```
    Enter your IP address :  172.16.14.56
    SNMPv2-SMI::mib-2.33.1.2.4.0 = INTEGER: 0
    ##############n=1##############
    等候  28 秒後，請按任何一個鍵繼續 ...
    ```
## 3-6. SNMP_walk_allMIB_loop_textfile.bat
* Output
    ```
    Date: 20210825
    Enter your IP address :  172.16.14.98
    SNMPv2-MIB::sysDescr.0 = STRING: DOCSIS 3.0 Cable Modem Rou
    ```

## 3-7˙. SNMP_loop_methodd2.bat
* Output
    ```
    Enter your IP address :  172.16.14.98
    Time:  10:39:48.34 count: 1
    ```

## 3-8. User enter Query MIB N time 
* User enter IP address and query N times
* output
   ```
   Enter cm ip address of a cable modem You want to query:
	ip:172.16.14.56
	Enter number of queries (1 query = 1 second):
	queries:4
	SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
	SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
	SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
	SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
	SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
   ```
## 3-9. Query mib and stop after 100 cycle|
* Query Mib and stop after running 100 cycle 
* output
   ```
	Test Round 1
	2021/08/25 週三 下午 16:45:52.63
	SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
	Test Round 2
	2021/08/25 週三 下午 16:45:53.06
	SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
	Test Round 3
	2021/08/25 週三 下午 16:45:53.46
   ```