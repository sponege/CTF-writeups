crack=3464634563464#523693181734689806809285195318

count=0
n=3
while(n<=crack):
    n = n * 3
    count += n-1
    print(n)
    print(count)

count -= n-1
n = n / 3

print(count-1)
