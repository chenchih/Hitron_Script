# Intro
This batch script is most common use in Window, some of them include running cycle, and some just SNMP.
Some of the scipt can we use for other purpose or see how to set sytnax. 
# File Description
|NO | Code         | Description |Type |
| ------  | ------ | ------ |  ------ |
| 1-1 | current_directory.bat| will open your current directory without open cmd|Window System/IP|
|1-2|set_ipaddress.bat|set static or dhcp ip address|Window System|
|1-3|Wlan_connect.bat|Connect SSID |Window System/WiFI|
|1-4|pinglistip.bat|Ping IP from list |Window System/ping|

# How to use: 
    ```
    1. Open a text or notepad
    2. copy and paste it or download the file
    3. save as .bat file
    4. double click is able to run it
    ```
# Script  Description

## 1-1. current_directory:
* this is good when you don't want to type command to your current directory
* code 
    ```
    @echo off
    %cd%
    call cmd
    ```
## 1-2.set_ipaddress.bat
* This is for setting static or dhcp Ip without going to network setting
* output
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
## 1-3.Wlan connection
### How to use or modify code:
> put your ssid in name= xxxx (netsh wlan connect name=WIFI-IOT)
* Code
     ```
    	:START
    	netsh wlan disconnect
    	sleep 15s
    	netsh wlan connect name=WIFI-IOT
    	sleep 15s
    	ping 8.8.8.8 -n 20 -l 520
    	GOTO START
    	 ```	 
## 1-4.pinglistip	 
### How to used it:
> type your IP you want to ping in ip.txt
* output
    ```
    PINGING 8.8.8.8, please wait....
    8.8.8.8 has pinged successfully
    
    PINGING www.google.com, please wait....
    	 ```	 