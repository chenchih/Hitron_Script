import os
import time
#import telnet_cbr8_ipv4 as cmts
count=0
cycleno = 1000
hostname = input("enter your ipv4 address(host):")
#hostname =  '172.16.14.56'
cycleno = int(input("please enter cycle[default 1000]: "))
print ("==================Scrript Start==============")
for i in range (cycleno):
    #response_mib = os.system("snmpwalk -cpublic -v 2c 172.16.14.128 1.3.6.1.2.1.69.1.4.5.0 ")
    print("cycle: ", count)
    response_mib = os.system("snmpwalk -cpublic -v 2c "+ hostname + " 1.3.6.1.2.1.69.1.4.5.0 " )
    time.sleep(5)
    if response_mib == 0:      
        count =count+1       
        print ("###result:PASS###",count,"\n")
        #print(cmts.IPv4)
        time.sleep(5)
    else:
        print ("result:FAIL")
        break
print ("==================end==============")
os.system("pause")
#time.sleep( 5 )
#response = os.system("snmpwalk -cpublic -v 2c 192.168.41.15 1.3.6.1.2.1.69.1.4.5.0 ")
#response = os.system("ping -n 5 " + hostname)