from PIL import Image

def getHex(d):
    h = hex(d).split('x')[-1]
    if len(h) == 1:
        h = '0' + h
    return h

def getHexCode(pix):
    return '#' + getHex(pix[0]) + getHex(pix[1]) + getHex(pix[2])

alpha = Image.open('alphabet.png')
flag = Image.open('output.png')

alphaP = alpha.load()
flagP = flag.load()

dim = [2, 3]

flagStr = []

decAlpha = [chr(i) for i in range(ord('A'), ord('Z') + 1)] + ['.', ',', ' ', ' '] + [chr(i) for i in range(ord('0'), ord('9') + 1)]

for y in range(int(flag.size[1] / dim[1])):
    for x in range(int(flag.size[0] / dim[0])):
        a = 0
        for aY in range(int(alpha.size[1] / dim[1])):
            for aX in range(int(alpha.size[0] / dim[0])):
                check = True
                for cY in range(dim[1]):
                    for cX in range(dim[0]):
                        flagHex = getHexCode(flagP[(x * dim[0]) + cX, (y * dim[1]) + cY])
                        alphaHex = getHexCode(alphaP[(aX * dim[0]) + cX, (aY * dim[1]) + cY])
                        if flagHex != alphaHex:
                            check = False
                            break
                if check:
                    flagStr += decAlpha[a]
                else:
                    a += 1

flag = ''

for c in flagStr:
    flag += c

print(flag)
