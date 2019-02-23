import datetime as dt
with open('holiday.txt') as f, open('new.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
	line =line.replace('/', '')
	f_out.write('{}\n'.format(line))
	