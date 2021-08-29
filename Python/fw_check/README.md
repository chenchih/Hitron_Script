# About the Script
* The purpose of this test is for upgrading images . 
* It base on using SNMP method to help update code
* you need tftp server installed, and fw name

# Description of the python file

| File name                      | Description |
| ------------------------------ | ----------- |
| check_FW_multiply_IP    | check DUT FW using MIB |
| fw_image_reg_expression  | check latest FW or old FW |
| snmp_fw_immagge_replace_normal| check latest fw, if not latest will ask you to upgrade or not |
|snmp_fw_immagge_replace_normal_function | check latest fw, if not latest will ask you to upgrade or not |


# Prerequisite
* snmp or netsnmp installed 
* firmware file
* tftp or http server

# How to work with the script:
1. **check_FW_multiply_IP.py**

> - IP address is hot code 
> - get this value:  SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: "7.2.4.3G2-PC20-CTR-Legacy"
> - remove SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING:  
> - remove " " #"7.2.4.3G2-PC20-CTR-Legacy"

    ```
    #py check_FW_multiply_IP.py
    current FW: 7.2.4.3G2-PC20-CTR-Legacy
    ```

**2 fw_image_reg_expression**.py

- check DUT is latest code or not , enter IP address 
- FW is been hotcode 

```
#fw_image_reg_expression.py
enter your ip address(host):172.16.14.56
Old FW, need to Upgrade!!!
```

**3 snmp_fw_immagge_replace_normal.py**.py snmp_fw_immagge_replace_normal_function

- both code is the same just i put in function method
- check DUT is latest code or not ,  if not will upgrade 
- FW and tftp server is been hotcode 

```
#fw_image_reg_expression.py
enter your ip address(host):172.16.14.56
Old FW, need to Upgrade!!!
```

