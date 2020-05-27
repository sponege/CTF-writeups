from hashlib import *
import re

alpha = re.compile('[^a-zA-Z{}\'-]')
hash = 'e246dbab7ae3a6ed41749e20518fcecd'

with open('words.txt', 'r') as file:
    script = file.read().replace('\n', ' ').split(' ')

for word in script:
    word = word.lower()
    flag = alpha.sub('', "tjctf{flag}".replace("flag", word))
    if flag != 'tjctf{}':
        print flag
        if md5(flag).hexdigest() == hash:
            print "Flag found! Flag is " + flag
            break
