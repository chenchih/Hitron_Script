import getpass
import re
import telnetlib
import time
HOST = "192.168.1.250"

#user = input("Enter your remote account: ")
#password = getpass.getpass()
user='root'
password='casa'
tn = telnetlib.Telnet(HOST)
time.sleep(2)
tn.read_until(b"CASA-C100G login:")
tn.write(user.encode('ascii') + b"\n")
if password:
    tn.read_until(b"Password:")
    tn.write(password.encode('ascii') + b"\n")
value = tn.read_until(b"CASA-C100G>")
#tn.write(b"scm\n")
macadd = input("please enet your mac (xxxx.xxxx.xxxx): ")
command = "scm "+ macadd
tn.write(command.encode('ascii') + b"\n")

#tn.write(b"scm 749b.e872.5d4a\n")

value = tn.read_until(b"CASA-C100G>")
value=value.decode('utf8')

info = "172"
matchObj = re.match(r'.*'+ info + '(.*)8/',value, re.M|re.DOTALL)
#matchObj=matchObj.decode('big5')       
if matchObj:
    Ipv4_address = info + matchObj.group(1)    
    Ipv4 = Ipv4_address.replace("\n", "")
    print("Your IPv4 address is: " , Ipv4)
    #return Ipv6
else:
    print ("No match, NO IP was found !!")  

