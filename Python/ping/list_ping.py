import os

hostnames = [
    '8.8.8.8',
    '192.168.1.50',
   
]
for hostname in hostnames:
    response = os.system('ping -n 1 ' + hostname)
    if response == 0:
        print (f"###########{hostname}, is up ##############")
    else:
        print (f"###########{hostname}, is down ##############")