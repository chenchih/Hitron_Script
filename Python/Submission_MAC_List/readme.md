# Short description on how to used MAC_add_Submission this script
* The prupose of this scipt is if i have many mac address and wants to add 1 to it, it would be really convient. 
 
## Getting Started

* This Scipt based on python2.7
### How to sued it
1) Enter your mac address into data.txt
2) run  MAC_add1.py to add last digit to 1 . (Ex: 1234567890 =>1234567891) to a new file called data_out.txt 


## File description
* MAC_add1.py ==>add 1 to it
* MAC_add2.py ==>add 2 to it
* MAC_add1+2.py ==>add 1&2 to it
* * 2021: Updated, in this code design two function 
* * it will first read the data.text, and add MAC last digit to 1 and 2, and export to a new file.
* * If you choose 1 in will print out the file (text method) it export, and read the file 
* * If you choose 2 in will print out the file (excel method) it export, and convert to excel*   
* Other File
* * print_all_line.py   ==> will read content in the text file* 
* * mac_excel_convert.py   ==> will convert the text into excel method
* OK_code ==> is a directory that i used to write some sample experience test. You can refer PDF file for more description


### What is the purpose for this
* Many Product have MAC Address, but some product will have more than one interface, and which will provide another MAC address. 
* Most time the MAC address of different interface will add one or two to it.EXample: router:1234567890, and mta interfsce: 1234567891. 
* Most of mac will be in HEX, so if we have many MAC it wil lbe difficult to add manual. 


## Resource

* please refer HEx.txt file some example or resource. 
