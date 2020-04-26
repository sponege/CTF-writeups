import random

ALPHABET = [chr(i) for i in range(ord("*"), ord("z")+1)]

a = lambda c: ord(ALPHABET[0]) + (c % len(ALPHABET))

o = lambda c: ord(c)

oa = lambda c: a(o(c))

def m(one, two, three, four):
    d = len(ALPHABET)//2
    s = ord(ALPHABET[0])
    s1, s2, s3 = o(one) - s, o(two) - s, o(three) - s
    return sum([s1, s2, s3]) % d == four % d

def l(two, three, four):
    one = ((sum([two, three]) + (-42 * 3)) % 40) - (four % 40)
    while one > 0:
        one = one - 40
    one = -one
    while one < 0x2a:
        one += 40
    return one

s = ''
for i in range(100):
    b = chr(random.randrange(0x2a, 0x7a))
    c = chr(random.randrange(0x2a, 0x7a))
    d = random.randrange(-100, 100)
    a = chr(l(ord(b), ord(c), d))
    print(a, b, c, d)
    if not m(a, b, c, d):
        print("Error!")
        break
    else:
        print("Success!")
        s += a

print(s)
