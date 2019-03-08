import os
#hostname = "192.168.1.50" #example
response = os.system("snmpwalk -cpublic -v 2c 172.16.25.13 1.3.6.1.2.1.69.1.4.5.0 ")

