import os
def text():
    with open('data.txt') as f, open('data_out_MAC+1&2_text.txt', 'w') as f_out:
        #f_out.write(('No \t mac\t MTA_MAC\t ETH_MAC\n').expandtabs(1))
        f_out.write(('no \t mac \t mta MAC \t      ETH MAC \n').expandtabs(12))
        #f_out.write('=' * 60 + '\n')
        f_out.write(('===\t=========== \t =========== \t =========== \n').expandtabs(8))
        for line_index, line in enumerate(f):
            line = line.strip()
            #f_out.write('{} \t{}'.format(line_index + 1, line).expandtabs(1))
            f_out.write('{} \t{}'.format(line_index + 1, line))
            line = int(line, 16) + 1
            f_out.write(('\t{}'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(5).upper()))
            line = line + 1
            f_out.write(('\t{}\n'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(5).upper()))

    import print_all_line
    print_all_line.macAll()
    os.system("pause")

def excel():
    with open('data.txt') as f,open('data_out_MAC+1&2_excel.txt', 'w') as f_out:
        f_out.write(('No \t mac\t MTA_MAC\t ETH_MAC\n').expandtabs(1))
        f_out.write('=' *60 + '\n')
        #f_out.write(('===\t=========== \t =========== \t =========== \n').expandtabs(3))
        for line_index,line in enumerate(f):
            line = line.strip()
            f_out.write('{} \t{}'.format(line_index + 1, line).expandtabs(1))
            line = int(line,16)+1
            f_out.write(('\t{}'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(1).upper()))
            line = line+1
            f_out.write(('\t{}\n'.format(hex(line).rstrip("L").lstrip("0x") or "0").expandtabs(1).upper()))
    import mac_excel_convert
    mac_excel_convert.excelconvertMAC()
    os.system("pause")

option = int (input("please enter 1 for show text or 2 for excel:  "))
if option == 1:
    #print("text")
    text()
elif option == 2:
    excel()

else:
    print("No option, exit")
    os.system("pause")
