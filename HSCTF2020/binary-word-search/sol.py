#!/usr/bin/env python3

from PIL import Image
import binascii

img = Image.open("BinaryWordSearch.png")
pixels = img.load()

start = "flag{"
sBits = ''
for c in start:
    bits = bin(ord(c))[2:]
    while len(bits) != 8:
        bits = '0' + bits
    sBits += bits
print(sBits)

flags = []

for x in range(img.width):
    for y in range(img.height):
        for dir in range(8):
            sX = x
            sY = y
            bits = ''
            success = True
            for i in range(len(sBits)):
                if sX < 0 or sX > img.width - 1 or sY < 0 or sY > img.height - 1:
                    #success = False
                    break
                bit = str((pixels[sX, sY][0] == 0) * 1)
                if bit != sBits[i]:
                    #success = False
                    break
                bits += bit
                if dir > 0 and dir < 4: ## right, range of 1-3
                    sX += 1
                elif dir > 4: ## left, range of 5-7
                    sX -= 1
                if dir < 2 or dir == 7: ## up
                    sY += 1
                elif dir > 2 and dir < 6: ## down, range of 3-5
                    sY -= 1
            if success:
                while True:
                    if sX < 0 or sX > img.width - 1 or sY < 0 or sY > img.height - 1:
                        break
                    bits += str((pixels[sX, sY][0] == 0) * 1)
                    if dir > 0 and dir < 4: ## right, range of 1-3
                        sX += 1
                    elif dir > 4: ## left, range of 5-7
                        sX -= 1
                    if dir < 2 or dir == 7: ## up
                        sY += 1
                    elif dir > 2 and dir < 6: ## down, range of 3-5
                        sY -= 1
                while len(bits) % 16 != 0:
                    bits += '0'
                hB = hex(int(bits, 2))[2:]
                if len(hB) % 2 != 0:
                    hB += 'a'
                flag = bytes.fromhex(hB)
                #print("\033c") ## clear screen
                #print((x, y, dir))
                print(flag)
                if b'FLAG' in flag:
                    flags.append(flag)

print("-----FLAGS-----")
for flag in flags:
    print(flag)
