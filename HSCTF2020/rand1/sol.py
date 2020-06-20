from pwn import *

if 'rem' in sys.argv:
    r = remote('crypto.hsctf.com', 6001)
else:
    r = process('./rand1')

r.recvuntil(b'free number: ')

n = int(r.recvuntil(b'\n').replace(b'\n', b'')) ## leak number

for i in range(10):
    n = (n * ord('%') + 0x41) % 256 ## pseudorandom function
    r.send(str(n))
    r.send(b'\n')

r.interactive() ## recieve flag
