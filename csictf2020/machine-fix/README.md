# Machine Fix

>We ran a code on a machine a few years ago. It is still running however we forgot what it was meant for. It completed n=523693181734689806809285195318 iterations of the loop and broke down. We want the answer but cannot wait a few more years. Find the answer after n iterations to get the flag.
>
>The flag would be of the format csictf{answer_you_get_from_above}.

We are given the [code](code.py) of the program that takes years to compute.

```python
def convert (n):
    if n == 0:
        return '0'
    nums = []
    while n:
        n, r = divmod(n, 3)
        nums.append(str(r))
    return ''.join(reversed(nums))

count=0
n=1
while(n<=523693181734689806809285195318):
	str1=convert(n)
	str2=convert(n-1)
	str2='0'*(len(str1)-len(str2))+str2
	for i in range(len(str1)):
		if(str1[i]!=str2[i]):
			count+=1
	n+=1

print(count)
```

After some reversing, I found out that the `convert` function converts numbers to base 3.

The program goes through 1 to 523693181734689806809285195318 and increments the count variable every time there is a difference between the current number and the number before it in base 3. So basically whenever there is a carry in an addition. But it's more difficult than that. Take `100000000` in base 3 for example. The number before that is `022222222`. The count variable would be incremented 8 times! Not so simple, eh?

I played around with the code for a bit, trying to find if there is a shortcut for this big calculation.

```python
crack=32145#523693181734689806809285195318
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
```

I intentionally made the `crack` variable smaller, so my computer can actually execute the program in finite time. Whenever the count variable was incremented, I printed out the hex digest of both strings so all the data looks different, and which digit of the base3 number there is a difference. Again, I'm trying to find a pattern here.

I used `grep` to find each line where there is a certain digit that is changed and `wc` to count the number of lines. I was hoping to find a pattern that I can use in my algorithm.

```
jordan@notyourcomputer:~/CTF-writeups/csictf/machine-fix$ python code-edited.py | grep " 1 !" | wc -l
32145
jordan@notyourcomputer:~/CTF-writeups/csictf/machine-fix$ python code.py | grep " 2 !" | wc -l
10715
jordan@notyourcomputer:~/CTF-writeups/csictf/machine-fix$ python code.py | grep " 3 !" | wc -l
3571
jordan@notyourcomputer:~/CTF-writeups/csictf/machine-fix$ python code.py | grep " 4 !" | wc -l
1190
jordan@notyourcomputer:~/CTF-writeups/csictf/machine-fix$ python code.py | grep " 5 !" | wc -l
396
jordan@notyourcomputer:~/CTF-writeups/csictf/machine-fix$ python code.py | grep " 6 !" | wc -l
132
jordan@notyourcomputer:~/CTF-writeups/csictf/machine-fix$
```

It shocked me when I found out that they are all divisions of 3!

And the result:

```
48212
```

Is everything summed up!

```
jordan@notyourcomputer:~$ py
Python 3.7.3 (default, Dec 20 2019, 18:57:59)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> 32145+10715+3571+1190+396+132
48149
>>> 132//3
44
>>> 32145+10715+3571+1190+396+132+44
48193
>>> 44//3
14
>>> 32145+10715+3571+1190+396+132+44+14
48207
>>> 32145+10715+3571+1190+396+132+44+15
48208
>>> 15//3
4
>>> 4//3
1
>>> 1//3
0
>>> 32145+10715+3571+1190+396+132+44+15+4+1
48212
>>>
```

I found out that it has to be floor division though, not just division.

So, all we have to do is floor divide n by 3 and add n to the count until n is zero!

```python
n = 523693181734689806809285195318
count = 0

while n != 0:
    count += n
    n = n // 3 ## use floor division

print(count)
```

Very fun challenge!

Flag: `csictf{785539772602034710213927792950}`
