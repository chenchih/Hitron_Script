with open('data.txt') as f,open('new.txt', 'w') as f_out:
    for line in f:
        line = line.strip()
        line = line[:-1] + str(int(line[-1:]) + 1)
        f_out.write('{}\n'.format(line))