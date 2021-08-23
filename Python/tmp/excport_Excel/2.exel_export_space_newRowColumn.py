#-*-coding:utf-8 -*-

import csv
with open('file1.csv', 'w',  newline='', encoding="utf-8") as csvfile:
    spamwriter = csv.writer(csvfile, dialect='excel')
   
    with open('vocab2.txt', 'r', encoding="utf-8") as filein:
        for line in filein:
            line_list = line.strip('\n').split(' ')
            spamwriter.writerow(line_list)
