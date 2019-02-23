#support python2 and 3

def find(substr, infile, outfile):
  with open(infile) as a, open(outfile, 'w') as b:
   for line in a:
    if substr in line:
     b.write(line + '\n')
     print(line + '\n')
 
# Example usage:
find('20181109', 'POD_RDKB_10Year.txt', 'b.txt')

