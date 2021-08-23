import os
import time
import datetime

#import telnet_CMTS_IPv4_python3 as telnetv4
#import telnet_CMTS_IPv6_python3 as telnetv6
count=0
cycle=5
currentDT = datetime.datetime.now()
os.system("cls")
#remove ip userr input, used mac to get ip address
#hostname_IP = input("enter your ip address(host):")
#MACADD = input("please enter your MAC ")
#mac=macconvert(MACADD)

test_type = input("please enter 1 for V6, 2 for V4: ")
hostname_IP=""

if test_type == "1":
    import telnet_CMTS_IPv6_python3 as telnetv6
    hostname_IP=telnetv6.new_IP
elif test_type == "2":
    import telnet_CMTS_IPv4_python3 as telnetv4
    hostname_IP=telnetv4.new_IP

print("Your CM RG IP is:"+ hostname_IP)

cycle = input("please enter your cycle:(default is 10000): ")

cycle= int(cycle)
print ("#################start################")
for i in range (cycle):
    print ("==========Current date and time:",currentDT.strftime("%a, %b %d, %Y %H:%M:%S"),"===========")
    response = os.system("ping -n 5 " + hostname_IP+ "| FIND "+'"TTL="')
    #print (currentDT.strftime("%a, %b %d, %Y, %H:%M:%S"))
    
    time.sleep( 5 )
    if response == 0:
   
        count =count+1
        response1 = os.system("snmpset -v 2c -c private " + hostname_IP+  " 1.3.6.1.2.1.69.1.1.3.0 i 1")
        print ("!!!!waiting for 300second!!!!")
        time.sleep(300)
        print ("==============================")
        print ("###result:PASS###",count)
    else:
        print ("result:FAIL")
        break


print ("#################end################")
os.system("pause")
#time.sleep( 5 )
#response = os.system("snmpwalk -cpublic -v 2c 192.168.41.15 1.3.6.1.2.1.69.1.4.5.0 ")
#response = os.system("ping -n 5 " + hostname)