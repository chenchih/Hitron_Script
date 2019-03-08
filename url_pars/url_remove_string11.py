with open('orgginal.txt') as f,open('out.txt', 'w') as f_out:
    print ("Before:"+ " ")
    for line in f:
        line = line.strip()
        print(line)
        #line=line.split('?')[:-1][0]
        #print(line)
        #f_out.write('{}\n'.format(line))

with open('orgginal.txt') as t,open('out.txt', 'w') as f_out:
    print ("After :"+ " ")
    for line in t:
        line = line.strip()
        #print(line)
        line=line.split('?')[:-1][0]
        print(line)
        #f_out.write('{}\n'.format(line))    	
	