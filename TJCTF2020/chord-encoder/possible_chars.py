f = ''.join([chr(i) for i in range(0, 256)])

l = {'1':'A', '2':'B', '3':'C', '4':'D', '5':'E', '6':'F', '7':'G'}
chords = {}
for i in open('chords.txt').readlines():
	c, n = i.strip().split()
	chords[c] = n

s = ''
for i in f:
	try:
		c1, c2 = hex(ord(i))[2:]
		if c1 in l:
			c1 = l[c1]
		if c2 in l:
			c2 = l[c2]
		print(hex(ord(i)), chords[c1]+chords[c2]) ## print all possible combinations
		s += chords[c1]+chords[c2]
	except: ## if there was an error, just do nothing
		int() ## this is what I just use as a placeholder function in python, nothing special here
