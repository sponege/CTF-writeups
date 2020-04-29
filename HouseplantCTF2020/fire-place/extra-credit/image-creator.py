from PIL import Image

def getHex(d):
    h = hex(d).split('x')[-1]
    if len(h) == 1:
        h = '0' + h
    return h

def getHexCode(pix):
    return '#' + getHex(pix[0]) + getHex(pix[1]) + getHex(pix[2])

imageURL = input("Image URL: ")
outFile = input("Output file: ")

# ...

img = Image.open(imageURL)
pix = img.load()

# ...

width = img.size[0]
height = img.size[1]

data = []


for x in range(width):
    for y in range(height):
        data.append(getHexCode(pix[x,y]))

file = open(outFile, 'w')
file.write(str(data))
file.close()
