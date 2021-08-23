from datetime import datetime
with open('holiday.txt') as f, open('new.txt', 'w') as f_out:
    for line in f:
        line_1, line_2 = line.rstrip().split('  ')
        new_line_1 =(datetime.strftime(datetime.strptime(line_1, '%Y/%m/%d'), '%Y%m%d'))
        f_out.write('{} {}\n'.format(new_line_1, line_2))