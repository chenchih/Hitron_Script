with open('holiday.txt') as fp:
    first, second = zip(*[line.rstrip().split('  ') for line in fp])
    print first
    print second
    print "\n".join(first + second)
    