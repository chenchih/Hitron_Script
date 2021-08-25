# Intro
This batch script is most common use in Window, some of them include running cycle, and some just SNMP.
Some of the scipt can we use for other purpose or see how to set sytnax. 
# File Description
| Code         | Description |
| ------        | ------ |
|current_directory.bat| will open your current directory without open cmd|
|mib set webgui_password_daemon.bat:| set webgui password, and DaemonAccessible|
|upgrade_http.bat:| upgrade fw (http, tftp)and walk  mib |
|upgrade_fast2_samedomain.bat  |Type in your last IP address|
|SIP_Convert_bin_test.bat : |convert docsic config file to text file |
|iperf_wifi_toolV2.bat:| wifi set password, and iperf command   |
|SNMP_walk_MIB_loop_textfile.bat| Query MIB every N second and epxort to text file|
|SNMP_walk_allMIB_loop_textfile.bat| Query entrire MIB every N second and epxort to text file|
|SNMP_loop_methodd2.bat| walk mib method2|
|set_ipaddress.bat|set static or dhcp ip address|
|NMAP_SCAN.bat| Scan port|


# How to use: 
```
1. Open a text or notepad
2. copy and paste it or download the file
3. save as .bat file
4. double click is able to run it
```
# Script 
##  1. current_directory:
* this is good when you don't want to type command to your current directory
```
@echo off
%cd%
call cmd
```
##  2. mib set webgui_password_daemon
> Please install netsnmp before using it

### Output
    ```
    SNMPv2-SMI::enterprises.8595.20.16.1.1.1.1.4.1 = STRING: "1234567890"
    SNMPv2-SMI::enterprises.8595.20.16.1.1.1.1.4.1 = STRING: "1234567890"
    SNMPv2-SMI::enterprises.8595.20.16.2.1.0 = INTEGER: 1
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.1 = Hex-STRING: E0
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.2 = Hex-STRING: E0
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.4 = Hex-STRING: E0
    SNMPv2-SMI::enterprises.8595.2.1.2.2.1.2.5 = Hex-STRING: E0
    ```
## 3.upgrade_http.bat
* STEP
    * Execute Script
    * Enter your DUT IP address 
    * Choose your item, tftp upgrade, http upgrade, read upgrade setting from mib
    * This is recusrive loop, so you want to change IP you are able to change at new ip
* Note: TFTP server and FW is been hotcode, you have to modify it
### OUTPUT:
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
## 4.SIP_Convert_bin_test.bat 
> Please install docsis DOCSIS Configurator
### How to used it:
```
1. Put your .cfg or txt file in DOCSIS Configurator
2. run the script
3. Will ask you to type bin/cfg. 
4. Will ask you to type text file.
```
>Note: If you want to convert txt to cfg please type correct txt file, if you want to convert cfg to txt please type correct cfg

### Output
    ```
    ==============================
    1)transfer bin to text
    2)transfer text to bin
    3)read bin file
    4)transfer text to cfg
    5)exit
    ==============================
    Please eneter choice:
    ```
## 5.iperf_wifi_toolV2.bat
* Please setup Iperf server 
* Set WIFI: set your 2.4G and 5G password
* RUN Iperf Client : run wifi clinet
### Output:
    ```
    ==============================
    1)SET WIFI
    2)Iperf Client
    3)exit
    ==============================
    Please enter choice:
    ```
## 6.SNMP_walk_MIB_loop_textfile.bat
### Output
    ```
    Enter your IP address :  172.16.14.56
    SNMPv2-SMI::mib-2.33.1.2.4.0 = INTEGER: 0
    ##############n=1##############
    等候  28 秒後，請按任何一個鍵繼續 ...
    ```
## 7.SNMP_walk_allMIB_loop_textfile.bat
### Output
    ```
    Date: 20210825
    Enter your IP address :  172.16.14.98
    SNMPv2-MIB::sysDescr.0 = STRING: DOCSIS 3.0 Cable Modem Rou
    ```

## 8.SNMP_loop_methodd2.bat
### Output
    ```
    Enter your IP address :  172.16.14.98
    Time:  10:39:48.34 count: 1
    ```

## 9.set_ipaddress.bat
* This is for setting static or dhcp Ip without going to network setting
### output
   ```
    ==============================
    1)DHCP
    2)static (100 dmain)
    3)static(121.40 domain(Line B))
    4)static(0.2 domain)
    5)static(172.56.0.X domain for PI used)
    6)static(10.15.198.4 domain for VMB_LineB_Routersubnet used)
    =======USB===============
    7)USB_DHCP
    8)USB_STatic(100 domain)
    9)exit
    ==============================
    Please eneter choice:
     ```
## 10.NMAP_SCAN.bat
### How to do it: 
* please <strong> install nmap tool </strong>
* please enter your IP in script, it's hotcode
    >set cm_ip="172.16.13.17" <br>
    >set cm_ipv6="2001:0:a013:0:cd79:a999:23e7:20fa" <br>
    >set mta_ip ="192.168.41.66" <br>
    >set mta_ipv6="2001:0:a013:0:5472:3739:c244:6987" <br>
* Nmap command
    >TCP: nmap -Pn -sS -sV --version-all -p 0-65535 -oN export_filename IP address <br>
    >UDP: nmap -Pn -sS -sU --version-all -p 0-65535 -oN export_filename IP address <br>
    >ddos: nmap -Pn -n -sU -A -p U:0,19,53,123,161,1900 --script=dns-recursion, >ntpmonlist, snmp-sysdescr, upnp-info -oN filename.txt <br>
### Output
    ```
    ==============================
    1)Scan TCP
    2)Scan UDP
    3)DDOS Vector
    4)all
    ==============================
    Please enter choice:
    ```
