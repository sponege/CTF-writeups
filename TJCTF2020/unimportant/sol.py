#!/usr/bin/env python3

from PIL import Image
import binascii

def decode(img):
    bits = ''
    pixels = img.load()
    i = 0
    for x in range(img.width):
        for y in range(img.height):
            pixel = pixels[x,y]
            #pixel = (pixel[0], pixel[1]&~0b10|(bits[i]<<1), pixel[2], pixel[3])
            bits += str((pixel[1]&0b10 != 0) * 1)
            i += 1
    return bits

img = Image.open("unimportant.png")
bits = decode(img)

flag = b''
## Bruteforce, yeah!
i = 0
gB = '' ## guess bits
while True:
    gB += bits[i]
    try:
        flag = bytes.fromhex(hex(int(gB, 2))[2:])
    except:
        int()
    if b'}' in flag:
        print("Flag found! Flag:", flag)
        break
    i += 1
