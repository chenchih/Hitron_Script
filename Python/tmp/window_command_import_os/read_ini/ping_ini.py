import os
import time
from configparser import ConfigParser
parser = ConfigParser()
parser.read('config.ini')
hostname = parser.get('Section_A', 'Key_ping')#GET "Value_ABC"
#hostname = "192.168.1.50"
response = os.system("ping -n 5 " + hostname + " | FIND " + '"TTL="')