with open('data.txt') as f,open('data_out_MAC+2.txt', 'w') as f_out:
    f_out.write(('old file \t new file \n').expandtabs(15))
    f_out.write(('=========== \t =========== \n').expandtabs(15))
    #print ('old file \t new file \n')
    for line in f:
        line = line.strip()
        f_out.write('{}'.format(line))
        line = int(line,16)+2
        #f_out.write(('\t{}\n'.format(hex(int(line)))).expandtabs(12))
        f_out.write(('\t{}\n'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(5).upper()))
        #print(('\t{}\n'.format(hex(int(line)))).expandtabs(18))
        #f.write('{}\n'.format(hex(int(line))))
import print_all_line, os
print_all_line.mac2()

os.system("pause")