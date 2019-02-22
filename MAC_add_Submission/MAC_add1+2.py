

with open('data.txt') as f,open('data_out.txt', 'w') as f_out:

    f_out.write(('no \t mac \t mta MAC \t      ETH MAC \n').expandtabs(12))

    f_out.write(('===\t=========== \t =========== \t =========== \n').expandtabs(8))
    #print ('old file \t new file \n')
    for line_index,line in enumerate(f):
		#the line variable is set to a string
        line = line.strip()

		#f_out.write('{} {}'.format(line_index + 1, line))
	f_out.write('{} \t{}'.format(line_index + 1, line))
	#f_out.write('{}'.format(line))
	line = int(line,16)+1

	#f_out.write(('\t{}\n'.format(hex(int(line)))).expandtabs(12))
	#convert the string to an integer with an explicit base
	f_out.write(('\t{}'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(5).upper()))
	#Right now ine variable is now an int, so add 1 to it is fine
	line = line+1
	f_out.write(('\t{}\n'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(5).upper()))
	#print(('\t{}\n'.format(hex(int(line)))).expandtabs(18))
	#f.write('{}\n'.format(hex(int(line))))
#print the text file 

import print_all_line