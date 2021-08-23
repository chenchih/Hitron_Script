from dateutil.parser import parse
dt = parse('Mon Feb 15 2010')
print(dt)
print(dt.strftime('%d//%m//%Y'))
