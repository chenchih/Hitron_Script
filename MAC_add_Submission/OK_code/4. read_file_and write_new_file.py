with open('data.txt') as f,open('data_out.txt', 'w') as f_out:
    f_out.write('old file \t new file \n')
    #print ('old file \t new file \n')
    for line in f:
        line = line.strip()
	f_out.write('{}'.format(line))
	f_out.write(('\t{}\n'.format(hex(int(line)))).expandtabs(18))
	#print(('\t{}\n'.format(hex(int(line)))).expandtabs(18))
	#f.write('{}\n'.format(hex(int(line))))
	