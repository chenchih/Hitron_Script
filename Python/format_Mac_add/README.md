# About the Script

* This script is  base on formatted sting into MAC address style. 
* There are several script in this file with different mac type 

# Description of the python file

| File name                     | Description                                                 |
| ----------------------------- | ----------------------------------------------------------- |
| CMTS_format_phy               | format mac into cmts format and adding phy                  |
| macconvert                    | convert MAC style XXXX.XXXX.XXXX or XX:XX:XX:XX:XX          |
| password_specfic_format       | convert customer(TFC ) password in specific mac format      |
| password_specfic_format_final | convert customer (TFC /UNE) password in specific mac format |

## How to work with the script:

1) **CMTS_format_phy.py**

> CMTS with phy command: scm xxx.xxxx.xxxx phy

* Note:
  * put mac_cmts.txt into the folder, this script will read this file

- output: 

  #`CMTS_format_phy.py`
  `1        mac format: scm 840B.7CCD.4140 phy0`
  `2        mac format: scm 840B.7CCD.3DF0 phy0`
  `3        mac format: scm 840B.7CCD.3F20 phy0`
  `4        mac format: scm 840B.7CCD.3EB0 phy0`



2. **macconvert.py**

- convert mac into this style: xxxx.xxxx.xxxx, or xx:xx:xx:xx:xx, if enter mac with semicolon will remove the semicolon.
- Step:

    1. please enter mac address: xxxxxxxxxxxx 
    2. will convert to cmts mac format and with semi colon method    


* output
    ```
    #macconvert.py
    please enter your MAC : 112233445566
    MAC format:11:22:33:44:55:66
    CMTS mac format:1122.3344.5566
        
     #macconvert.py
    please enter your MAC : 11:22:33:44:55:66
    Remove :112233445566   
    ```

3. **password_specfic_format_final.py**

- Customer have different password, and the password generate by mac address format style. 

* Step:

1. please enter mac address any format xxxxxxxxxxxx or xx:xx:xx:xx:xx
2. select which password format style you wants

- output 

    ```
	#password_specfic_format_final.py
	please enter your mac address: 112233445566
	please enter this item to get password:
         1. CGNV5(TFC)
         2. CGNV5(UNE)
         Exit press any key to exit
	Choice: 1
	===================================
	MAC Address:     112233445566
	TFC MAC Address: #221144@336655*
	===================================
	please enter this item to get password:
         1. CGNV5(TFC)
         2. CGNV5(UNE)
         Exit press any key to exit
	Choice: 2
	===================================
	MAC Address:     112233445566
	UNE MAC Address: CPE#445566
	===================================
	Choice: q
	Exit
	````



4. **password_specfic_format.py**

- same as above, but his one must enter xx:xx:xx:xx:xx:xx method, else TFC password will have problem  

  convert mac into this style: xxxx.xxxx.xxxx, or xx:xx:xx:xx:xx, if enter mac with semicolon will remove the semicolon.

- Step:

  1. please enter mac address any format xx:xx:xx:xx:xx
  2. select which password format style you wants
