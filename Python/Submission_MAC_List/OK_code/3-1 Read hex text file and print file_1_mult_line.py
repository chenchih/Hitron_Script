with open('data.txt') as f,open('data_out.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
	line = int(line,16)+1
	#test print 
	#print (line)
	#print (hex(line))

	#print integer
        #f_out.write('{}\n'.format(int(line)))

	#print hex 
	#f_out.write('{}\n'.format(hex(line)))

	#If hex used 10 char will occur L in end, remove L(end) and 0x(begin)
	 
	f_out.write('{}\n'.format(hex(line).rstrip("L").lstrip("0x") or "0"))