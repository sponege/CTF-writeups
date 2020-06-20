enc = "inagzgkpm)Wl&Tg&io"

first = ''

with open('shift2list', 'r') as file:
    shift2 = file.read().split('\n')

print(shift2)
for c in enc:
    first += chr(ord(c) - int(shift2[ord(c)]))

second = ''

for i in range(len(first)):
    second += chr(ord(first[i]) + i)

print(second)
