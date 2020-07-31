from pwn import *
from math import *

f = 300 # friends
nQ = 1000 # number of questions
minCash = 1 # min cash
maxCash = 1000000 # max cash

curCash = 0
minCash = 0

friends = [i+1 for i in range(f)]

r = remote('chall.csivit.com', 30721)

while True:
    guess = int((maxCash + curCash) / 2) ## make a good guess

    print("\nGuess is now", guess)
    print("Investigating and eliminating...")

    for friend in friends:
        r.send("1 {friend} {guess}\n".format(friend = friend, guess = guess)) ## send question to server
        nQ -= 1 ## you just asked a question
        ans = r.recvuntil('\n')[:1] ## recieve answer to question
        print("Questions remaining: {nQ}, curCash: {curCash}, minCash: {minCash}, guess: {guess}".format(nQ = nQ, curCash = curCash, minCash = minCash, guess = guess))
        if ans == b'L' and len(friends) > 1:
            friends.pop(friends.index(friend)) ## remove friend, they are useless to us now
            print("Removed friend #{friend}".format(friend = friend))
            print(friends)

        if len(friends) == 1:
            print("Only one person left!")
            print("Friend # with max amount of cash:", friends[0])
            print("Current max cash:", curCash)

            ans = b'G'

            while ans != b'E':
                if ans == b'G':
                    guess = int((maxCash + curCash) / 2)
                elif ans == b'L':
                    guess = int((curCash + minCash) / 2) - 1000

                print("New guess:", guess)

                r.send("1 {friend} {guess}\n".format(friend = friends[0], guess = guess)) ## send question to server
                nQ -= 1 ## you just asked a question
                ans = r.recvuntil('\n')[:1] ## recieve answer to question
                print(ans)

                print("Questions remaining: {nQ}, curCash: {curCash}, minCash: {minCash}, guess: {guess}".format(nQ = nQ, curCash = curCash, minCash = minCash, guess = guess))

                curCash = guess


            print("Finished! We now have the max cash! The server sent an E!")
            print("Cash:", curCash)
            print("Sending...")

            r.send("2 {cash}\n".format(cash = curCash)) ## send cash
            r.interactive()


    minCash = curCash
    curCash = guess
