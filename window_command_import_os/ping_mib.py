import os
import time,sys
hostname = "172.16.6.14" #example
OID= "1.3.6.1.2.1.69.1.3.5.0"
mib ="snmpwalk -c public -v 2c"

str = (mib+" "+hostname+" "+ OID)
#response1 = os.system(str)
#print (mib+""+hostname+""+ OID)
print ("=======start============")
for x in range(1,4):

    response1 = os.system(str)
    time.sleep(5)
print ("=======end============")
''' comment

#check ping method

response = os.system("ping -n 2 " + hostname)

if response == 0:
  print hostname, 'is up!'
else:
  print hostname, 'is down!'

'''