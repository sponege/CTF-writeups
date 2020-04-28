import string
from base64 import *

def rot(s, n=13):
    '''Encode string s with ROT-n, i.e., by shifting all letters n positions.
    When n is not supplied, ROT-13 encoding is assumed.
    '''
    upper = string.ascii_uppercase
    lower = string.ascii_lowercase
    upper_start = ord(upper[0])
    lower_start = ord(lower[0])
    out = ''
    for letter in s:
        if letter in upper:
            out += chr(upper_start + (ord(letter) - upper_start + n) % 26)
        elif letter in lower:
            out += chr(lower_start + (ord(letter) - lower_start + n) % 26)
        else:
            out += letter
    return(out)

def invrot(s, n=13):
    '''Decode a string s encoded with ROT-n-encoding
    When n is not supplied, ROT-13 is assumed.
    '''
    return(rot(s, -n))

# --------------------------------------------------------------------------------

from pycipher import *

def decode(s, n):
    if n == 0: ## rot13
        return invrot(s.decode())
    elif n == 1: ## rot16
        return invrot(s.decode(), 16)
    elif n == 2: ## base 64
        try:
            return b64decode(s.decode().replace('\n', '')).decode()
        except:
            return "b64Error"
    elif n == 3: ## base 32
        try:
            return b32decode(s.decode().replace('\n', '')).decode()
        except:
            return "b32Error"
    elif n == 4: ## base 16
        try:
            return b16decode(s.decode().replace('\n', '')).decode()
        except:
            return "b16Error"
    elif n == 5: ## atbash
        return Atbash().decipher(s.decode())
    elif n == 6: ## affine with b=6, a=9
        return Affine(9,6).decipher(s.decode())
    elif n == 7: ## railfence with key=3
        flag = Railfence(3).decipher(s.decode())
        part = flag[7:]
        switched = ""
        bool = False
        for c in part:
            bool = not bool
            if bool:
                switched += c
            else:
                switched = switched[:-1] + c + switched[-1:]
        newFlag = flag[:7] + switched
        return newFlag




from pwn import *
from math import *
conn = remote('ctf.umbccd.io', 5200)

for i in range(16): ## skip first 5 lines
    line = conn.recvline().decode()
    print(line)

while True:
    line = conn.recvline()
    if line == b'WRONG USER INPUT:\n':
        print(line.decode())
        break
    print(line)
    for i in range(8):
        flag = decode(line, i)
        print(i, flag)
        if flag[:7] == 'DogeCTF' or flag[:7] == 'DOGECTF':
            break
        if i == 7:
            raise ValueError("big oof")
    if flag[:7] == 'DOGECTF':
        newFlag = flag[:7] + "{" + flag[7:] + "}"
        newFlag = newFlag.replace('\n', '')
        print("sending 1", newFlag.encode())
        conn.send(newFlag.encode())
    else:
        flag = flag.replace('\n', '')
        print("sending 2", flag.encode())
        conn.send(flag.encode())
    conn.send('\n')


while True:
    line = conn.recvline().decode()
    print(line)
