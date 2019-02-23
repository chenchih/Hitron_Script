#python 2
import sys
substring = raw_input("enter your string (Ex:20180810): ")

count =0		
for line in open('POD_RDKB_10Year.txt'):
    #if ("") in line:
    if substring in line:
	line = line.strip()
        count +=1
        print (line)
if count==0:
    print ("string not found")
   
    
