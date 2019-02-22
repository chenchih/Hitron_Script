with open('data.txt') as f:
    for line in f:
        line = line.strip()
        #line = line[:-1] + str(int(line[-1:]) + 1)
        line = int(line,16)+1
        print (line)
        #print hex(line).rstrip("L").lstrip("0x") or "0"
