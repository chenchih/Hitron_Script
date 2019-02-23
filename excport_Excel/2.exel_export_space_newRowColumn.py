#-*-coding:utf-8 -*-

import csv
with open('file1.csv', 'wb') as csvfile:
    spamwriter = csv.writer(csvfile, dialect='excel')
   
    with open('vocab2.txt', 'rb') as filein:
        for line in filein:
            line_list = line.strip('\n').split(' ')
            spamwriter.writerow(line_list)