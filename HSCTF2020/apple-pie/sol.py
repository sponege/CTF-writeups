ascii = "0511121161191482200765"
ascii = [ascii[i:i+2] for i in range(0, len(ascii), 2)] ## split every three characters

for c in ascii:
    print(chr(int(c, 16)), end = '')
