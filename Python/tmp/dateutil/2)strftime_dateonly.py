import datetime as dt
from datetime import datetime
with open('holiday.txt') as f, open('new.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
	#line =line.replace('/', '')
	#f_out.write('{}\n'.format(line))
	f_out.write(datetime.strftime(datetime.strptime(line, '%Y/%m/%d'), '%Y%m%d'))