from pwn import *

if 'rem' in sys.argv:
    r = remote('crypto.hsctf.com', 6002)
else:
    r = process('./rand2')

r.recvuntil(b'2 free numbers\n')
r.recvuntil(b'\n') ## I only need one free number, thanks!

n = int(r.recvuntil(b'\n').replace(b'\n', b'')) ## leak number

print(n)

for i in range(10):
    n = (n * 0x5deece66d + 0xb) % (2 ** 64) ## yet another simple pseudorandom function
    r.send(str(n))
    r.send(b'\n')

r.interactive() ## recieve flag
