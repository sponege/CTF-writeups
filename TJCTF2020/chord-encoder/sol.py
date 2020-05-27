fn = input("File to decode? ")

with open(fn, 'r') as file:
    notes = file.read().replace('\n', '')

with open('pc', 'r') as file:
    pc = file.read().split('\n') ## possible chars

for i in range(len(pc)):
    pc[i] = pc[i].split(' ')

## base for pathfinding array
## notes, flag, finished?, failed node?
base = [notes[:], '', False, False]

## pathfinding array
## nodes, finished?
pa = [[base[:]], False]

## to add
## nodes to add
ta = []

while not pa[1]:
    for node in pa[0]:
        if not node[2]:
            for char in pc:
                if node[0][:len(char[1])] == char[1]:
                    ta.append(node[:])
                    ta[-1][1] += chr(int(char[0], 16))
                    ta[-1][0] = ta[-1][0][len(char[1]):]
                    print(ta[-1][1])
        node[3] = True
    for node in ta:
        pa[0].append(node[:])
    i = 0
    while True:
        if pa[0][i][3]:
            pa[0].pop(i)
            i -= 1
        i += 1
        if i == len(pa[0]):
            break
    del ta[:]
    success = True
    for node in pa[0]:
        if not (node[2] or node[3]):
            success = False
    if success:
        pa[1] = True
