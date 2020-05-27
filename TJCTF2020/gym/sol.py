from pwn import *

if 'rem' in sys.argv:
    r = remote('p1.tjctf.org', 8008)
else:
    r = process('./gym')

## Person is 211 lbs, he/she needs to be 180
## [2] Do 50 push-ups - Lose 1 pound
## [4] Sleep 8 hours. - Lose 3 pounds
## [1] Eat healthy - Lose 4 pounds
## [3] Go for a run. - Lose 5 pounds

order = [3, 1, 4, 2]

tL = 211 - 180 ## toLose

count = 0
while tL != 0:
    if count != 0:
        a = 4 - count
    else:
        a = 5
    while tL >= a:
        tL -= a
        print(tL)
        r.send(str(order[count]))
        r.send('\n')
    count += 1
r.interactive()
