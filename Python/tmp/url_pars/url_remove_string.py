with open('orgginal.txt') as f,open('out.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
        print(line)
        line=line.split('?')[:-1][0]
        #print(line)
        f_out.write('{}\n'.format(line))
	