import re
import itertools

whitespace = re.compile(r"\s+")

with open('morse', 'r') as file: ## http://www.practicalcryptography.com/ciphers/fractionated-morse-cipher/
    morse = whitespace.sub(' ', file.read()).split()

with open('Morbid.txt', 'r') as file:
    msg = file.read()

msg = '118289293938434193849271464117429364476994241473157664969879696938145689474393647294392739247721652822414624317164228466'
keys = list(itertools.permutations('123456789'))
trans = ['..', '.-', '.x', '-.', '--', '-x', 'x.', 'x-', 'xx']

def decrypt(m): ## decrypt morse
    m = m.split(' ')
    dm = '' ## decrypted message
    for c in m:
        if c == '':
            dm += ' '
        else:
            try:
                dm += morse[morse.index(c)-1].replace('~.', '.')
            except:
                int()
    return dm

for key in keys:
    mk = [] ## morse key
    nm = '' ## new message
    for n in key:
        mk.append(trans[int(n)-1])
    for n in msg:
        nm += mk[int(n)-1]
    nm = nm.replace('x', ' ')
    dm = decrypt(nm) ## decrypted message

    if dm != "Invalid Morse" and 'FLAG' in dm:
        print(dm, key)
