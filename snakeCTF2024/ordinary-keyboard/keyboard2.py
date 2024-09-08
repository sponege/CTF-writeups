# Yes, I prettified this in ChatGPT. If you want the ugly version I wrote open keyboard3.py

import re

# Open the text file and read its contents
packet_data = open('packets.txt').read()

# Compile a regular expression pattern to match binary sequences followed by ' = '
binary_pattern = re.compile('([01]* [01]*) = ')

# Find all matches of the pattern in the text
binary_matches = binary_pattern.findall(packet_data)

# Filter out any matches that are '0000 0000'
filtered_matches = [match for match in binary_matches if match != '0000 0000']

# Convert the filtered binary strings to integers
keycodes = [int(match.replace(' ', ''), 2) for match in filtered_matches]

# Define the keycodes mapping
keycodes_mapping = """
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
LockingScrollLock 	KP, 	KP= 	Internat 	Internat 	Internat 	Internat 	Internat 	Internat 	Internat 	Internat
LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	LANG 	AltErase 	SysRq 	Cancel
Clear 	Prior 	Return 	Separ 	Out 	Oper 	Clear/Again 	CrSel/Props 	ExSel 		
"""

# Clean and split the keycodes mapping
keycodes_mapping = re.sub(r"\s+", " ", keycodes_mapping).strip().split(' ')

# Map the keycodes to their corresponding characters
decoded_characters = [keycodes_mapping[(code-1)] for code in keycodes if code < len(keycodes_mapping)]

# Replace 'Space' with an actual space character
decoded_characters = [' ' if char == 'Space' else char for char in decoded_characters]

# Ensure that only strings are in the result list
decoded_characters = [char for char in decoded_characters if isinstance(char, str)]

# Join the characters into the final decoded result
decoded_string = ''.join(decoded_characters)

# Replace 'Enter' with a newline character
decoded_string = decoded_string.replace("Enter", "\n")

# Print the final result
print(decoded_string)
