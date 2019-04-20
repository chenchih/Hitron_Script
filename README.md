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

  * inputcharacter
  * find_string
  * dateutil
 
    * Description: Convert data time.
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
         
     

* CL: based on TCL script



## Resource

Updated later
* Reademe format from *PurpleBooth**: [PurpleBooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2#file-readme-template-md)
