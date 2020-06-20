# Apple Pie

>My friend gave this program to me, but I'm not sure what it means.
>
>Note: Your output will have to be parsed into decimal representations of ASCII characters.
>
>Author: AC

Alright, this challenge is dumb. I wasn't even able to solve it. But I made a [really cool interpreter](interpreter.py) for the dumb and confusing language this challenge was written in, and I'm not deleting it, because I spent a lot of time and effort in it, so it's staying here. But it didn't really work.

I'm assuming that the output is the flag, and the description says that you have to convert the output to ASCII. But how? This is what the output looks like to me:

```
$ py interpreter.py
File to interpret? flag.pie
0511121168084110052
```

That doesn't make any sense to me. The author wasn't going to give any tips, either.

Eventually, the CTF was over, and the flags were public. The flag was something really stupid, it didn't make any sense. I did find out that my output was partially wrong.

```
My program output:
0511121168084110052
Actual solution output:
051112116119048110052
```

I don't know what was wrong with my program, but oh well. It was still pretty cool writing an interpreter.

The output was Base 10 ASCII chars, 3 characters in length each, which I thought was dumb. That's guessy.

When you decode the flag, it doesn't even make any coherent sense, so you don't even know if you did it right or not:

```
3ptw0n4
```

It's kinda random. I don't know, that was a dumb challenge. Maybe in the future I will figure out what was wrong with my interpreter.
