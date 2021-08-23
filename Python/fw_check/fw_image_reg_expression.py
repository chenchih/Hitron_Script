import os, re
hostname = input("enter your ip address(host):")
#direct_output = os.popen('snmpwalk -cpublic -v 2c 172.16.15.15 1.3.6.1.2.1.69.1.3.5 ').read()
direct_output = os.popen("snmpwalk -cpublic -v 2c " + hostname+  " 1.3.6.1.2.1.69.1.3.5").read()
#########Regular expression ####################################
#/s=>space
r = re.search(r':\s(.*)', direct_output).group(1)
r = re.sub(r'\'|\"', '', r)

#################DEBUG USED############################
#print(test1234 == r)
# print("r:",r)
# print("r1:",r1)
#############################################

if r == "7.1.8.26-PC15-CTR":
    print("Latest FW")
else: 
    print("Old FW, need to Upgrade!!!")