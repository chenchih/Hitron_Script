# Intro
This is a script used in tcl which you don't have to used netsnmp to fund the oid, i already apply it in my script. 
You just have toenter your DUT IP address and it will just used snmp get the value. 
i believe it will be more increase the productivity and speed up your time. 
You don;t have to memories your OID, open mib browser, or find how to used the snmp command. 


# Installation
Install TCL ActiveTcl8.4.X version, else unable to run

```sh
extract tcl-snmptools-1.0.tar
copy tcl-snmptools-1.0 to  tcl\bin
```
# How to start 
- Open freq_GUI_LGI_Fw_Upgrade.tcl
- Enter your DUT's IP address
- Press show, will get all information: sw version, MAC
# Feature: 
## Basic Feature
- show: get all related infomation (SW version, MAC address, configure file)
- PWD set: set your GUI password (only LGI customer will needed)
- 2.4G and 5G set: set 2.4G and 5G wifi password
- rebot: reboot DUT
- Factory reset: Factory reset
- console set: enable console, if show 0 mean console disable
- telnet, ssh https, http is to enable either one. All daemon:enable all http, https, telnet, ssh 
## Upgrade FW
- Image Name: put your fw name
- tftp-upgrade: upgrade from tftp
- http-upgrade: upgrade from http server
- clear FW: clear Image name if you type wrong
- How to upgrade:

```sh
1. Put your DUT Ip address 
2. Put your tftp or http server 
3. Put your fw image name
4. press tftp or http to upgrade
```

# Default setting:
![title](img/default.png)

# Bridge Product Setting:
![title](img/Bridge_product.png)

# Router Product Setting:
![title](img/Router_product.png)

# conclusion
Any question if let me know, thanks. 
I have been using this script for most of my time. There might be some problem or bug on it, but overall i think it can help most of the task. 
