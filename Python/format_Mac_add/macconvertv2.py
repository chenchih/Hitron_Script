import os
while True:
    h = input("please enter your MAC (q to exit) : ")

#This support both python2 and python3
#s=""
#h="00233a990c21"
#
    if h == 'q':
        print("exit!!!!")	
        break
    mac_list=list(h)
    if(mac_list[2]==":"):
        #print(":")
        h=h.replace(":",'')
        print("Remove :"+ h)
    
    elif (mac_list[2].isdigit()):
       
        ':'.join(h[i:i+2] for i in range(0,12,2))
        print ('MAC format:'+':'.join(h[i:i+2] for i in range(0,12,2)))
        
        ':'.join(h[i:i+2] for i in range(0,12,2))
        print ('CMTS mac format:'+'.'.join(h[i:i+4] for i in range(0,12,4)))
    else:
        print("Error")
    



os.system("pause")
