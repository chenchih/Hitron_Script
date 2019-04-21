# -*- coding: utf-8 -*-
import telnetlib
import subprocess
import time
import ConfigParser
#from telnetFunction import *
from telnet  import *

config = ConfigParser.ConfigParser()
config.read("Config.ini")
ini_IP = config.get("Client1", "IP")
ini_Name = config.get("Client1", "Name")
ini_Pwd = config.get("Client1", "Pwd")

tn=Login_Telnet(ini_IP, ini_Name, ini_Pwd)

time.sleep(2)
tn.write("en")
print "========> Done"
tn.close()
