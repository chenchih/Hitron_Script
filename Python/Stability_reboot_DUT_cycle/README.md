# About the Script
* This script is used for running stability, such as SNMP reset DUT, walk MIB every minute, and etc 
  
# Description of the python file

| File name                      | Description |
| ------------------------------ | ----------- |
| reset | reset DUT cycle for stability test        |
| walk_snmp_everyminute        | walk SNMP every minute for stability |
| walk_snmp_reboot_with_pingV3 | walk SNMP and reboot cycle  for stability |

# Prerequisite
* snmp or netsnmp installed 

# How to work with the script:
1. **reset.py**

> - Enter DUT IP and cycle, default cycle is 1000 loop
> - ping make sure it able to access, and then reset DUT 
> - wait for 5 minute for DUT to get online

* output
    ```
    #py reset.py
    enter your ip address(host):172.16.14.56
    please enter cycle[default 1000]: 2
    #################start################
    回覆自 172.16.14.56: 位元組=32 時間=10ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=11ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=10ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=11ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=10ms TTL=62
    SNMPv2-SMI::mib-2.69.1.1.3.0 = INTEGER: 1
    ###result:PASS### 1
    ==============================
    回覆自 172.16.14.56: 位元組=32 時間=10ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=10ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=8ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=11ms TTL=62
    回覆自 172.16.14.56: 位元組=32 時間=11ms TTL=62
    SNMPv2-SMI::mib-2.69.1.1.3.0 = INTEGER: 1



**2 **walk_snmp_everyminute .py

> - Enter DUT IP and cycle, default cycle is 1000 loop
> - Walk specific MIB every minute 
>

```
#walk_snmp_everyminute .py
enter your ipv4 address(host):172.16.14.56
please enter cycle[default 1000]: 2
==================Scrript Start==============
cycle:  0
SNMPv2-SMI::mib-2.69.1.4.5.0 = STRING: "Band1.cfg"
###result:PASS### 1

cycle:  1
SNMPv2-SMI::mib-2.69.1.4.5.0 = STRING: "Band1.cfg"
###result:PASS### 2

==================end==============
```

**3 walk_snmp_reboot_with_pingV3**

- Enter V4 or V6
- Enter Dut Mac address
- Enter DUT IP and cycle, default cycle is 1000 loop
- reset  Dut 

```
#walk_snmp_reboot_with_pingV3.py
please enter 1 for V6, 2 for V4: 2
please enet your mac (xxxx.xxxx.xxxx): 749B.E80C.EB04
Your IPv4 address is:  172.16.14.56
Your CM RG IP is:172.16.14.56
please enter your cycle:(default is 10000): 2
```

