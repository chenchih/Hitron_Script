# -*- coding: utf-8 -*-
import telnetlib
import subprocess
import time


def Telnet_Check_reachability(ip):
    ping_count=3
    process = subprocess.Popen(['ping', ip, '-n', str(ping_count)],
                           stdout=subprocess.PIPE,
                           stderr=subprocess.STDOUT)
                      
    returncode = process.wait()
    print returncode
    print('ping returned {0}'.format(returncode))
    print(process.stdout.read())
    if returncode==0:
        print "Server reachable"
        successful=1
    else:
        print "[FAILURE]::Server unreachable"
        successful=0
    return successful

def Login_Telnet(HOST,username,password):
    try:
        tn=""
        reachability=Telnet_Check_reachability(HOST)

        if (reachability==1):
            tn = telnetlib.Telnet(HOST,23)
            print "========> Wait login"
            tn.read_until("Login:")
            print "========> Key in username"
            tn.write(username + "\n")
            if password:
                print "========> Wait Password"
                tn.read_until("Password:")
                print "========> Key in password"
                tn.write(password + "\n")
                #tn.write("mkdir 123\n")
                #time.sleep(2)
                #tn.write("sudo iperf3 -c 192.168.130.16 -p 5004 -u -i 1 -b 5M -R --logfile iperf_Result.txt -t 15\n")
                #tn.write("sudo setsid /home/pi/traffic.sh\n")
                #time.sleep(2)
                #content = tn.read_very_eager()
                #f = open("1227.log", 'w')
                #f.write(content)
                #f.close()
                #print content
            
			
            time.sleep(5)
            #print tn
            return tn
        elif(reachability==0):
            print "Server is not Reachable"
        else:
	        print "Please check the server address"
    except IOError:
        print "please check the server connection"