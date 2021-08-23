import os
hostnames = ['172.16.14.56', '172.16.15.15',]

for hostname in hostnames:
    #check CM's FW 
    #response = os.system("snmpwalk -cpublic -v 2c "+ hostname+" "+"1.3.6.1.2.1.69.1.3.5") 

    direct_output = os.popen("snmpwalk -cpublic -v 2c " + hostname+  " 1.3.6.1.2.1.69.1.3.5").read()
    test123=direct_output.replace('SNMPv2-SMI::mib-2.69.1.3.5.0 = STRING: ','')
    test123=test123.replace('"','')
    test123=test123.replace('\n','')
    print("current FW: " + test123)
