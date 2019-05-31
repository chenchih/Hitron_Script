import os
import time
count=0

hostname = input("enter your ip address(host):")
print ("#################start################")
for i in range (2):
    #ping ip address 
    response = os.system("ping -n 5 " + hostname + " | FIND " + '"TTL="')
	# reset modem by snmp 
  
    
    time.sleep( 3 )
    if response == 0:
   
        count =count+1
        
        print ("###result:PASS###",count)
        print ("==============================")
    else:
        print ("result:FAIL")
        break


print ("#################end################")
os.system("pause")
#time.sleep( 5 )
#response = os.system("snmpwalk -cpublic -v 2c 192.168.41.15 1.3.6.1.2.1.69.1.4.5.0 ")
#response = os.system("ping -n 5 " + hostname)