#support python2 and 3

def find(substr, infile, outfile):
  with open(infile) as a, open(outfile, 'w') as b:
   for line in a:
    if substr in line:
     b.write(line + '\n')
     print(line + '\n')
 
# Example usage:
substring = input ("enter your string (Ex:20180810): ")
filename = input ("enter your POD file name (xxx.txt): ")
#find('20181109', 'POD_RDKB_10Year.txt', 'b.txt')
find(substring, filename, 'export_file.txt')