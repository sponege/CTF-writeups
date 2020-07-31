f = 300 # friends
q = 1000 # questions
max = 1000000 # max cash
i = 2
cash = 0

while f > 0:
    q -= f
    f = f // 2
    cash += max / i
    i *= 2

print("Ratio of max to cash:", max/cash)
print("Questions remaining after interogation:", q)
