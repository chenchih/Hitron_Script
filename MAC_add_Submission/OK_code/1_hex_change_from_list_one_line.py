with open(r'data2.txt','r+') as f:
    value = int(f.read(), 16)
    f.seek(0)
    f.write(hex(value + 1).rstrip("L").lstrip("0x") or "0")