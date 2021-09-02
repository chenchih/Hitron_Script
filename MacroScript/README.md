# About the Script
* This script is user terateam to automatic open the script ttl macro script
* you can refer this link : https://ttssh2.osdn.jp/manual/4/en/macro/command/index.html 
* 
# Description of the python file

| File name                      | Description |
| ------------------------------ | ----------- |
| CBR8 1.bat  => telnet_cbr.ttl | The batch file will open telnet_cbr8.ttl. |
| comport_OPTION=> comport.ttl | will pop ask which comport you are using |
|                               |                                           |

# Prerequisite
* install terateam 
*  terateam installed: C:\Program Files (x86)\teraterm

# How to work with the script:
1. **CBR8 1.bat**

> - This script is just automatic telnet to CNR server
> - How to access terateam by telnet

* Batch
    ```
    @echo off
    cd C:\Program Files (x86)\teraterm
    TTERMPRO /m=D:\Macro_script\telnet_cbr1.ttl
    pause
    ```
    
* TTL
    ```
    timeout = 10
    connect '192.168.1.252:23 /nossh /T=1'
    wait 'Username:'
    sendln 'guest'
    wait 'Password:'
    sendln 'guest'
    ```



**2 **comport_OPTION.bat

> - This script is just automatic Serial com port
> - will ask your comport 
> - How to access terateam bycomport
>

* batch
    ```
    @echo off
    cd C:\Program Files (x86)\teraterm
    set /p COMPORT="Enter your COM-PORT:"
    TTERMPRO /C=%COMPORT% /BAUD=115200 /m=D:\comport.ttl
    pause
    ```
    
* TTL
    ```
    sendln"ifconfig "
    pause 2
    ```
