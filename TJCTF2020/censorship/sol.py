from pwn import *

r = remote('p1.tjctf.org', 8003)

r.recvuntil("what is ")

problem = r.recvuntil("?").decode().replace("?", "")
print(problem)

r.send(str(eval(problem)))
r.send('\n')

r.interactive()
