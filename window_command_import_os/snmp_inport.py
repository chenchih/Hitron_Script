import os
#hostname = "192.168.1.50" #example
hostname = input("Enter your IP address:")
#print ("name"+ a) 

response = os.system ("snmpwalk -cpublic -v 2c "+ hostname+" "+ "1.3.6.1.2.1.69.1.4.5.0 ")

