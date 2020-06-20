import re

whitespace = re.compile(r"\s+")

with open('morse', 'r') as file: ## http://www.practicalcryptography.com/ciphers/fractionated-morse-cipher/
    morse = whitespace.sub(' ', file.read()).split()

with open('Morbid.txt', 'r') as file:
    msg = file.read()

msg = '81174792917862417147122922'

def getMorse(s):
    s = s.upper()
    m = ""
    for c in s:
        if c != ' ':
            m += morse[morse.index(c)+1]
        m += "x"
    return m[:-1]

def getSplit(s, n):
    return re.findall('.' * n, s)

def getLoc(m): ## given morse, get key location
    b3 = m ## base 3 number

    b3 = b3.replace('.', '0')
    b3 = b3.replace('-', '1')
    b3 = b3.replace('x', '2')

    return int(b3, 3)

pk = [] ## possible keys

search = getMorse("flag")

mC = getSplit(search[1:], 2) ## morse code compare

print(mC)

for i in range(len(msg)-len(mC)+1):
    success = True

    part = msg[i:i+len(mC)] ## part of message to compare to

    kw = ['?'] * len(mC) ## keyword

    for i in range(2):
        for j in range(len(mC)):
            if kw[getLoc(mC[j])] == '?':
                kw[getLoc(mC[j])] = part[j]
            else:
                if getLoc(mC[j]) != int(part[j]):
                    success = False
    if success:
        print(part)
        pk.append(kw[:])

print(pk)
