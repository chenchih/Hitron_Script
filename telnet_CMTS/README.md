# Description

* This script is to telnet to Cisco CNR CMTS and print the ipv4 and ipv6 address . 
* Each provide Python2 and python3 for each V4 and V6
* One type of script is just telnet and get the IP address
* Anohter Type of Script is before telnet will ping Server reachable or not
---
# Code Description
  - IPv4 regualr expression
  ```
   matchObj = re.match(r'.*'+ info + '(.*)C0',value, re.M|re.DOTALL)
   ```
  - IPv6 regualr expression
   ```
   matchObj = re.match(r'.*'+ info + '(.*)\n',value, re.M|re.DOTALL)
   ```
  - python3 used byte, so need to decode it, else will have problem 
    Chinese Window need to encode t big5, else will have problem
    - decode("big5") due to ping (OS: Chinese Window)
      ```
      stdout = process.stdout.read()
      stdout=stdout.decode("big5")
       ```
     - decode("utf8") to convert byte to str
       ```
       value = tn.read_until(b"Router#")
       value=value.decode('utf8')
       ```
 ---
# CMTS Command and Manual Test 
- Manual Testing
1. Login in Server using Telnet 192.168.1.252
2. Access correct username and password
2.Check your IP by typng correct MAC address as below

- CMTS Setting

  - IPv4=>scm XXXX.XXXX.XXXX.XXXX
  ```
   xxxx.xxxx.xxxx.xxxx 172.16.14.57    C0/0/4/UB     p-online          3363  -3.00  4052   1   Y
   ```
  - IPv6=>scm XXXX.XXXX.XXXX.XXXX ipv6
   ```
   xxxx.xxxx.xxxx.xxxx B/D  C0/0/4        w-online          Y  2001:0:A014:0:7D7C:52A:43B8:EEFF
   ```
   
---
# File Descriptiion
-telnet_cbr8_ipv4.py (support Python3)
 * Description: Will only Telnet and print V4 IP of specific MAC Address
-telnet_cbr8_ipv6.py(support Python3)
 * Description: Will only Telnet and print V6 IP of specific MAC Address
 
 -telnet_CMTS_IPv4_python2.py (support Python2)
  * Description: First check CMTS IP by ping if pass then telnet and print V4 IP of specific MAC Address
 -telnet_CMTS_IPv4_python3.py(support Python3)
  * Description: First check CMTS IP by ping if pass then telnet and print V4 IP of specific MAC Address
  
-telnet_CMTS_IPv6_python2.py (support Python2)
  * Description: First check CMTS IP by ping if pass then telnet and print V6 IP of specific MAC Address
-telnet_CMTS_IPv6_python3.py(support Python3)
  * Description: First check CMTS IP by ping if pass then telnet and printV6 IP of specific MAC Address 
---

# Summary

-This is a good script to telnet to server and get some information (updated: 2020040)
