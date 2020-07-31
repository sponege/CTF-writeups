n = 523693181734689806809285195318
count = 0

while n != 0:
    count += n
    n = n // 3 ## use floor division

print(count)
