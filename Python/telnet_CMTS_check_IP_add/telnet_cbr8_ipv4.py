import getpass
import re
import telnetlib
import os
HOST = input("Enter your CNR IP : ")
while True:     
    macadd = input("please enet your mac (xxxx.xxxx.xxxx)[q to exit] : ")
    if macadd == 'q':
        print("exiting!!!")
        break
    #HOST = "192.168.1.252"
    #user = input("Enter your remote account: ")
    #password = getpass.getpass()
    user='guest'
    password='guest'
    tn = telnetlib.Telnet(HOST)
    
    tn.read_until(b"Username:")
    tn.write(user.encode('ascii') + b"\n")
    if password:
        tn.read_until(b"Password:")
        tn.write(password.encode('ascii') + b"\n")
    
    value = tn.read_until(b"Router#")
    #macadd = input("please enet your mac (xxxx.xxxx.xxxx): ")
    #tn.write(b"scm 749b.e80c.eb04\n")
    command = "scm "+ macadd
    tn.write(command.encode('ascii') + b"\n")
    value = tn.read_until(b"Router#")
    #######################################################
    value=value.decode('utf8')
    info = "172"
    #CMTS print =>840b.7c0b.e474 172.16.14.18    C0/0/4/UB     w-online          1837  -4.00  2216   1   Y
    matchObj = re.match(r'.*'+ info + '(.*)C0',value, re.M|re.DOTALL)
    #matchObj=matchObj.decode('big5')       
    if matchObj:
        Ipv4_address = info + matchObj.group(1)
        Ipv4 = Ipv4_address.replace("\n", "")
        print("Your IPv4 address is: " , Ipv4)
        print("\n")
        #return Ipv6
    else:
        print ("No match, NO IP was found !!")  
    ####################################################
            
    tn.write(b"exit\n")
    #print(tn.read_all().decode('ascii'))
os.system("pause")