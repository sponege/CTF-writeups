# Tom Nook The Capitalist Racoon

Alright, I cheated on this one. You were __supposed__ to reverse engineer the binary, but instead I just played the game and noticed that if you buy and sell a tarantula, you still have that tarantula. I have no idea why that's the case, but let's abuse it anyway.

The flag is in the shop, and it costs 420000 bells.

```
Timmy: Welcome!
How can I help you today?
1. I want to sell
2. What's for sale?
3. See you later.
Choice: 2

8500 bells
Timmy: Here's what we have to sell today.
1. flimsy net - 400 bells
2. tarantula - 8000 bells
3. slingshot - 900 bells
4. sapling - 640 bells
5. cherry - 400 bells
6. flag - 420000 bells
```

We can make a script that uses this "tarantula glitch" to get enough bells to buy the flag, and then buy the flag.

```python
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
```

All you have to do is run the script, sit back and relax.

It takes a while to receive, because of the purposeful delay between characters, but eventually you get this:

```
420600 bells
Timmy: Here's what we have to sell today.
\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x001. flimsy net - 400 bells
2. tarantula - 8000 bells
3. slingshot - 900 bells
4. sapling - 640 bells
5. cherry - 400 bells
6. flag - 420000 bells

Timmy: Excellent purchase!
Yes, thank you for the bells
1. I want to sell
2. What's for sale?
3. See you later.
Choice:
Of course! What exactly are you
offering?
1. tarantula - I hate spiders! Price: 8000 bells
2. flag - DogeCTF{t0m_n00k_c@pit4l1st_$cum} Price: 420000 bells
```

Flag: `DogeCTF{t0m_n00k_c@pit4l1st_$cum}`
