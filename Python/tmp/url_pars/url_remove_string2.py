from urllib.parse import urlparse
with open('orgginal.txt') as f,open('out.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
        parsed = urlparse(line)
        #print(line)
        newline=parsed._replace(query='').geturl()
        print(newline)
        #f_out.write('{}\n'.format(line))
	