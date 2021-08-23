with open('data.txt') as f,open('data_out_MAC+1.txt', 'w') as f_out:
    f_out.write(('MAC \t MTA_MAC \n').expandtabs(15))
    f_out.write(('=========== \t =========== \n').expandtabs(15))
    #print ('old file \t new file \n')
    for line in f:
        line = line.strip()
        f_out.write('{}'.format(line))
        line = int(line,16)+1
        f_out.write(('\t{}\n'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(5).upper()))
import print_all_line, os
print_all_line.mac1()
os.system("pause")