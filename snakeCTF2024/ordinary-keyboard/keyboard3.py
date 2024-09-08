a=open('packets.txt').read()
import re
b=re.compile('Keyboard ([^\s]*)')
c=b.findall(a)
c = [' ' if a == "Spacebar" else '\n' if a == "Return" else a for a in c]
c = [a for a in c if len(a)==1]
c = ''.join(c)

# b=re.compile('\(primary/trigger\): ([^\s]*)')
# c=b.findall(a)
# print(c)

b=re.compile('([01]* [01]*) = ')
c=b.findall(a)
c = [a for a in c if a != '0000 0000']
c = [int(a.replace(' ', ''), 2) for a in c]


d="""
err 	err 	err 	A 	B 	C 	D 	E 	F 	G 	H

I 	J 	K 	L 	M 	N 	O 	P 	Q 	R 	S 	T

U 	V 	W 	X 	Y 	Z 	1 	2 	3 	4 	5 	6

7 	8 	9 	0 	Enter 	Esc 	BSp 	Tab 	Space 	- / _ 	= / + 	[ / {

] 	/ 	... 	; 	' 	~ 	, 	> 	? 	Caps 	F1 	F2
F3 	F4 	F5 	F6 	F7 	F8 	F9 	F10 	F11 	F12 	PrtScr 	ScrollLock
Pause 	Insert 	Home 	PgUp 	Delete 	End 	PgDn 	Right 	Left 	Down 	Up 	NumLock
KP/ 	KP* 	KP- 	KP+ 	KPEnter 	KP1 	KP2 	KP3 	KP4 	KP5 	KP6 	KP7
96 	97 	98 	99 	100 	101 	102 	103 	104 	105 	106 	107
KP8 	KP9 	KP0 	KP. 	... 	Applic Power 	KP= 	F13 	F14 	F15 	F16
F17 	F18 	F19 	F20 	F21 	F22 	F23 	F24 	Execute 	Help 	Menu 	Select
Stop 	Again 	Undo 	Cut 	Copy 	Paste 	Find 	Mute 	VolumeUp 	VolumeDown 	LockingCapsLock 	LockingNumLock
LockingScrollLock 	KP, 	KP= 	Internat 	Internat 	Internat 	Internat 	Internat 	Internat 	Internat 	Internat 	Internat
LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	AltErase 	SysRq 	Cancel
Clear 	Prior 	Return 	Separ 	Out 	Oper 	Clear/Again 	CrSel/Props 	ExSel 		
"""
d=d.replace('\n', ' ')
d=re.compile(r"\s+").sub(" ", d).strip().split(' ')
# print(d)

c = [d[(a-1)%len(d)] for a in c]
print(c)
c = [' ' if a == 'Space' else a for a in c]
c = [a for a in c if type(a) is str]
c = ''.join(c)
c = c.replace('Enter', '\n')
print(c)