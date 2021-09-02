# python3
import sys
import os

while True: 
    substring = input ("enter your string (Ex:20180810): ")
    filename = input ("enter your POD file name (xxx.txt): ")
    count =0		
    #for line in open('POD_4518.txt'):
    if substring == 'q' or filename == 'q':
        print("Exiting")
        break
    try: 	
        for line in open(filename):
            #if ("") in line:
            if substring in line:
               line = line.strip()    	
               count +=1
               print (line)
        
        if count==0:
            print ("string not found")
    except:
        print('Sorry Please enter correct file name, Please Try Again')
    os.system("pause")  
    
