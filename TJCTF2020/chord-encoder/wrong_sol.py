chords = []
l = {'A':'1', 'B':'2', 'C':'3', 'D':'4', 'E':'5', 'F':'6', 'G':'7'}
for i in open('chords.txt').readlines():
	c, n = i.strip().split()
	chords.append([n, c])

file = open('notes.txt', 'r')
notes = file.read()
file.close()

print(chords)

nC = [] ## new chords

while len(notes) != 0:
	for chord in chords:
		success = False
		if notes[:len(chord[0])] == chord[0]:
			nC += chord[1]
			notes = notes[len(chord[0]):]
			print(nC)
			print(notes)
			success = True
			break
	if not success: ## Probably because of the dumb D and E, we need to fix that, because they are similar
		note = nC.pop()
		if note == 'D':
			nC.append('E')
			notes = notes[1:] ## remove the one from the beginning, should help
		if note == 'd':
			nC.append('e')
			notes = notes[1:] ## remove the one from the beginning, should help
		if note == 'g':
			nC.append('g')

hf = []
for c in nC:
	for i in range(len(chords)):
		if c == chords[i][1]:
			c = chords[i][1]
		if c in l:
			c = l[c]
	hf += c

print(hf)

flagArr = []

for i in range(int(len(hf) / 2)):
	flagArr.append('0x' + hf[i*2] + hf[(i*2)+1])

print(flagArr)

flag = ''
for c in flagArr:
	flag += chr(int(c, 16))

print(flag)
