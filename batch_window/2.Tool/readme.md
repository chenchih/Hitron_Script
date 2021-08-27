# Intro
This batch script is most common use in Window, some of them include running cycle, and some just SNMP.
Some of the scipt can we use for other purpose or see how to set sytnax. 
# Prerequisite
## Some tool need to used specail tool please installed: 
* Nmap https://nmap.org/download.html
* Iperf2 https://iperf.fr/
* docsic configuration
# File Description
|NO | Code         | Description |Type |
| ------  | ------        | ------ |  ------ |
|2-1|iperf_wifi_toolV2.bat:| wifi set password, and iperf command   |Tool/iperf|
|2-2|SIP_Convert_bin_test.bat : |convert docsic config file to text file |Tool/Excentis|
|2-3|NMAP_SCAN.bat|port scan UDP TCP|Tool/Nmap|

# How to use: 
```
1. Open a text or notepad
2. copy and paste it or download the file
3. save as .bat file
4. double click is able to run it
```
# File Description
	 
## 2-1.iperf_wifi_toolV2.bat
>Please setup Iperf server 
* Set WIFI: set your 2.4G and 5G password
* RUN Iperf Client : run wifi clinet
* Output:
    ```
    ==============================
    1)SET WIFI
    2)Iperf Client
    3)exit
    ==============================
    Please enter choice:
    ```	
## 2-2.SIP_Convert_bin_test.bat 
> Please install docsis DOCSIS Configurator
### How to used it:
```
1. Put your .cfg or txt file in DOCSIS Configurator
2. run the script
3. Will ask you to type bin/cfg. 
4. Will ask you to type text file.
```
>Note: If you want to convert txt to cfg please type correct txt file, if you want to convert cfg to txt please type correct cfg
* Output
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
## 2-3.NMAP_SCAN.bat
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
* Output
    ```
    ==============================
    1)Scan TCP
    2)Scan UDP
    3)DDOS Vector
    4)all
    ==============================
    Please enter choice:
    ```