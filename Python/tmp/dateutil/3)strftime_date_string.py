import datetime as dt
from datetime import datetime
with open('holiday.txt') as f, open('new.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
	#line =line.replace('/', '')
	#f_out.write('{}\n'.format(line))
	#f_out.write(datetime.strftime(datetime.strptime(line, '%Y/%m/%d'), '%Y%m%d'))
	line.rstrip().split('  ')
	line_1 = line.split()[0]
	line_2 = line.split()[1]
	newline =(datetime.strftime(datetime.strptime(line_1, '%Y/%m/%d'), '%Y%m%d'))
	#result = line_1 +" " +line_2
	#f_out.write(result)
	f_out.write(line_1 +" " +line_2+ '\n')