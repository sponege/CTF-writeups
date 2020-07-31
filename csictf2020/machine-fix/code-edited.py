import hashlib

crack=32145#523693181734689806809285195318
def convert (n): ## convert to base 3
    if n == 0:
        return '0'
    nums = []
    while n:
        n, r = divmod(n, 3)
        nums.append(str(r))
    return ''.join(reversed(nums))

count=0
n=1
while(n<=crack):
    str1=convert(n)
    str2=convert(n-1)
    if (len(str1)!=len(str2)):
        print(n)
        print(count)
    str2='0'*(len(str1)-len(str2))+str2
    for i in range(len(str1)):
        if(str1[i]!=str2[i]):
            count+=1
            hash = hashlib.md5()
            hash.update(str1+str2)
            print hash.hexdigest(), len(str1)-i, '!'#, str1[-5:], str2[-5:]
    n+=1

print(count)
