# Hitron_Script

* This is a script that can do some automated work. There are many diffrent folder . 
* This script are based on work, which related to file, and some networking stuff

## Getting Started

* This Scipt based on python, bat, bash, TCL. 

### Prerequisites
-----Updated later-----


```
Give examples
```

## Folder /directory
* Python(2/3): put based on python script 
---
  * file_rw:
    * Description: 
      * This script mainly focus on how to read and write file. The most basic concept of how to used it. 
      * simple_read_write.py: read file, and export to text file
      * average_file_data.py: average the text file data
      * simple_read.py: read file, and print it out
      
```
     Method 1: line.strip()
    with open('test.txt') as f,open('out.txt', 'w') as f_out:
        for line in f:
            line = line.strip()
            print(line)
 ```
 
```
    Method 2: line,end’’
    with open('test.txt') as f,open('out.txt', 'w') as f_out:
        for line in f:
            print(line,end='') 
```
 

   * How to used with output.
        * simple_read.py
          * File: 
            * test.txt: contain text file
          * Description on how to used: read the file from text and print it out.
       * simple_read_write.py
         * File: 
           * test.txt: contain text file
          * Description on how to used: Read the file, and export to new file. 
       * average_file_data.py
         * File: 
           * Grade.txt: contain grade score
         * Description on how to used: add and average the grade.txt file and print the result
        
  
---

  * MAC_add_Submission:
    * Description: 
      * adding mac address last digit to 1. EX: XXXXXXXXX0=>xxxxxxxxx1. If you have 100 mac, it will automatic add 1 or two to it.
      * The purpose of this script is i can add gex decimal by 1 or 2; used on sending Docsis Submission. 
      * OK_code: some test code when writting this scipt
      * data.txt:contain you mac address 
      * MAC_add1+2.py: obtain orginal mac, add 1, and 2 on last digit on 2 row. Total up 3 row
      * MAC_add1.py: obtain orginal mac, and add one on last digit 
      * MAC_add2.py:obtain orginal mac, and add two on last digit 
   
    * How to used with output.
    
      * MAC_add1+2.py
        * Description on how to used: 
       ```
         no           mac         mta MAC          ETH MAC
          ===     ===========      ===========     =========== 
          1 	688F2E157470     688F2E157471     688F2E157472
          2 	688F2E1575E0     688F2E1575E1     688F2E1575E2
          3 	688F2E1576F0     688F2E1576F1     688F2E1576F2
       ```
       * MAC_add1.py
         * Description on how to used: 
        ```
        old file        new file 
        ===========     =========== 
        AC202ED1DA10     AC202ED1DA11
        AC202ED1DAF0     AC202ED1DAF1
        
       ```
        
       * MAC_add2.py
         * Description on how to used: 
        ```
        old file        new file 
        ===========     =========== 
        AC202ED1DA10     AC202ED1DA12
        AC202ED1DAF0     AC202ED1DAF2
        
       ```
  
---
  * find_string
    * Description: Find specific date from a file with the correct password. This is a "passwrod of date" file.
       * The purpose of this script is to find specific date according to what you enter and filter it. Everyday have a unique password, if we need to find need to take a long time to search. So i used  a method to automatic help search related date's password. 
      * POD_RDKB_10Year.txt:contain date with password
      * find_string.py: find string inside script 
      * RDKB_POD_py2.py : python 2 find string by input string
      * RDKB_POD_py3.py: python 3 find string by input string
      * test_read.py:find related string from script 
      
    * How to used with output.
       * RDKB_POD_py2.py and RDKB_POD_py3.py
          * Description on how to used: Just type in the date format 2018XXXX, and it will filter related password
       * find_string.py
          * Description on how to used: Find specific string inside script. 
       * test_read.py
          * Description on how to used: Put related date, text file, and export file. It wil filter according to its setting
   
  
  
---
  * dateutil
 
    * Description: Convert data time.
      * The purpose of this script is to convert the data in specific format
      * holiday.txt:contain data 
      * date_replace.py:it will remove the / and changed to 20180102
      * strftime_dateonly.py:convert date only without word 
      * strftime_date_string.py:convert the date abnd word together
    * How to used with output.
       * show_Date.py
          * Description on how to used: Just type in the date format run script (EG: Mon Feb 15 2010->convert to 15//02//2010)
       * date_replace.py
          * Description on how to used: used Hoilday.txt and contain 2018/01/02, and remove / (date with word).
       * strftime_dateonly.py
          * Description on how to used: used Hoilday.txt and contain 2018/01/02, and remove / (only date).
       * strftime_date_string.py
          * Description on how to used: used Hoilday.txt (date contain with no /) will convert date with /, and word.     
---         
   * export_Excel
     * Description: export text file into excel.
       * The purpose of this script is to export text file to excel  
       * 1.excel_export_allvalue.py:write file in text file and export text to csv. only export row 
       * 2.exel_export_space_newRowColumn.py: read and write file from text to csv. using split different row 
 
       
     * How to used with output.
       * 1.excel_export_allvalue.py
         * Description on how to used:Export the text file into csv file 
         * File: 
           * mytxt.txt: contain text file
           * mycsv.csv: export file to csv format
           
       * 2.exel_export_space_newRowColumn.py
         * Description on how to used:read file and export to csv format , using split method
         * File: 
           * vocab2.txt: contain text file
           * file1.csv: export file to csv format
                          
---
 * window_command_import_os
     * Description: export text file into excel.
       * The purpose of this script is to used window related command such as ping, cmd, and etc
       * input related script
         * input.py: Enter Input string?
         * input_withstring.py: execute python iwht string variable
       * call_cmd.py:Call cmd out      
       * mib:
         * mib.py: snmp walk mib with many parmater together
         * snmp_walk.py: snmp_walk command
         * snmp_input.py: enter ip adress and walk mib
       * other window command
         * renam_file.py: rename file name
         * telnet.py: Enter ip adress and do telnet to the host 
         * ping.py: ping ip address, if on display uo, lese display off
---
 * url_pars
  * Description: export text file into excel.
       * The purpose of this script is to remove url string variable such as / or ?
       * input related script
         * url_new.py: Remove the last character / and ? character occur
         * url_remove_string.py: Remove character occur after ? 
         * url_remove_string2.py:Remove character occur after ? 
         * url_remove_string11.py:Remove character occur after ?
         * url_test.py: Remove the last string using url.index?
         
      * How to used with output.
    
      * url_new.py
        * Description on how to used: In the scipt declare url link, that will remove it. 
         ```
         Why is the first one is not been remove. When you spit out the / it will look like this?
         >>> urlx = url1.split('/')
         >>> urlx
         ['https:', '', 'www.facebook.com', 'xxxxxx', 'test1q223', '']
         As you can see the last word become “”, and cause it will not remove. 
         So the first condition didn’t match, so it won't remove it. 
   
        [-1][2:]=>used last string, and shift 2 character.
        orginal:?22test22==>2test22
        orginal:33test22==>test33
         ```
     * url_remove_string.py
       * Description on how to used: remove character that occur ? , used [:-1][0], and output txt file
       
       * File:
         * orgginal.txt
        ```
       line=line.split('?')[:-1][0]
       spilt ? and remove last string
        ```
        ```
        with open('orgginal.txt') as f,open('out.txt', 'w') as f_out:
            for line in f:
                line = line.strip()
                print(line)
                line=line.split('?')[:-1][0]
                #print(line)
                f_out.write('{}\n'.format(line))
         ```

     * url_remove_string2.py
       * Description on how to used: remove character that occur ? , parsed._replace(query='').geturl()    
       * File:
         * orgginal.txt
         ```
         from urllib.parse import urlparse
         with open('orgginal.txt') as f,open('out.txt', 'w') as f_out:
             for line in f:
                 line = line.strip()
                 parsed = urlparse(line)
                 #print(line)
                 newline=parsed._replace(query='').geturl()
                 print(newline)
         ```
         
     * url_remove_string11.py
       * Description on how to used: use this method line=line.split('?')[:-1][0] and print out
       * File:
         * orgginal.txt     
       ```
       with open('orgginal.txt') as t,open('out.txt', 'w') as f_out:
           print ("After :"+ " ")
           for line in t:
               line = line.strip()
               #print(line)
               line=line.split('?')[:-1][0]
               print(line)
               #f_out.write('{}\n'.format(line))    
       ```

---         
 * telnet
  * Description: using telnet by obtain account and execute the command itself
       * The purpose of this script is to telnet to server and do some action?
       * input related script
         * Telnet_Ex1_no_type_acc.py: Put your host, account and password in script
         * Telnet_Ex2_type_acc.py: User type in account, and pwd , and enter command (show running config)
         * Telnet_Ex2_type_acc.py:Telnet with function
         * Telnet_Ex2_type_acc.py:Put your password setting and username in inc

## Resource

Updated later
* Reademe format from *PurpleBooth**: [PurpleBooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2#file-readme-template-md)
