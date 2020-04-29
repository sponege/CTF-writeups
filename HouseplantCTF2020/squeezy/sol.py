from base64 import *

def woah(s1,s2):
    return ''.join(chr(ord(a) ^ ord(b)) for a,b in zip(s1,s2))

encPass = b'HxEMBxUAURg6I0QILT4UVRolMQFRHzokRBcmAygNXhkqWBw='
part = b64decode(encPass)
part = part.decode()
key = "meownyameownyameownyameownyameownya"
flag = woah(part, key)

print(flag)
