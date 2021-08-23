
with open('test.txt') as f,open('out.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
        print(line)
        #f_out.write('{}\n'.format(line))
        #method2
        #print(line,end='')
	