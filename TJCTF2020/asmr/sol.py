encP = ["0x0c0c10361b041a08", "0x360c1f0605360c1e"] ## encoded password
password = ''

for i in range(len(encP)):
    encP[i] = bytes.fromhex(encP[i][2:])
    for char in encP[i]:
        password = chr(char ^ 0x69) + password ## bitwise xor with 0x69

print(password)
