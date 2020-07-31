from pwn import *
from math import *

f = 300 # friends
nQ = 1000 # number of questions
minCash = 1 # min cash
maxCash = 1000000 # max cash

curMin = minCash
curMax = maxCash
guess = None

friends = [[i+1, 'N'] for i in range(f)]

r = remote('chall.csivit.com', 30721)

while True:
    guess = (curMin + curMax) // 2 ## make a good guess

    print(friends)
    print("Min: {min}, Max: {max}, Guess: {guess}".format(min = curMin, max = curMax, guess = guess))
    print("Investigating and eliminating...")

    for i in range(len(friends)):
        print("Investigating friend {f}... {q} questions remaining.".format(f = friends[i][0], q = nQ))
        r.send("1 {friend} {guess}\n".format(friend = friends[i][0], guess = guess)) ## send question to server
        nQ -= 1 ## you just asked a question
        ans = r.recvuntil('\n')[:1] ## recieve answer to question
        friends[i][1] = ans
        print(ans)

    greaterExists = False

    for friend in friends:
        print(friend[1])
        if friend[1] == b'G':
            greaterExists = True
            break

    if greaterExists:
        numElim = 0 ## number eliminated
        i = 0
        while True:
            if friends[i][1] != b'G':
                friends.pop(i) ## remove friend, they are useless to us now
                numElim += 1
                i -= 1
            i += 1
            if i == len(friends):
                break
        print("Removed {r} friends! {f} friends remaining.".format(r = numElim, f = len(friends)))
        curMin = guess
        print("Moving upward!")
    else:
        curMax = guess
        print("Moving downward!")

    if len(friends) == 1 and friends[0][1] == b'E':
        print("Win!")
        print("Friend #: {f}, Max money: {m}".format(f = friends[0][0], m = guess))
        r.send("2 {m}\n".format(m = guess))
        r.interactive()
        break
