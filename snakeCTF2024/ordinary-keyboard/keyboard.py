text = open('packets.txt').read()
import re
search = re.compile('Keyboard ([^ ]*)')
result = search.findall(text)
result = [' ' if a == "Spacebar" else '\n' if a == "Return" else a for a in result]
result = [a for a in result if len(a) == 1]
result = ''.join(result)
print(result)