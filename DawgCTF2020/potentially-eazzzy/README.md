# Potentially Eazzzy

We are given a python file. The purpose of this script is to verify licenses. You can view it [here](potentially-eazzzy.py).

Upon inspection of the script, it looks like it uses the email in the license check. That makes sense. That way, no one can use the same license with two separate emails.

If we want to get anywhere in this challenge, we'll have to reverse engineer the script.

```python
def main():
    print("Welcome to Flag Generator 5000")
    print()
    print("Improving the speed quality of CTF solves since 2020")
    print()
    print("You'll need to have your email address and registration key ready.")
    print("Please note the support hotline is closed for COVID-19 and will be")
    print("unavailable until further notice.")
    print()

    email = input("Please enter your email address: ")
    key = input("Please enter your key: ")
```

First off, it greets the user. Then, it asks the user for the email and flag and stores those inputs as strings.

```python
if validate(email, key):
    print_flag()
else:
    print("License not valid. Please contact support.")
```

It then validates the license by calling `validate(email, key)`, and then prints the flag if the function returns `True`. So far so good.

Let's look at the `validate()` function.

```python
def validate(email, key):
    email = email.strip()
    key = key.strip()
```

First, it removes tailing spaces off of the email and key.

```python
if len(key) != 32:
    return False
```

It then checks if the key is 32 characters in length. If the key isn't, the function returns `False`, which is not what we want. In order to print the flag, the function has to return `True`. Therefore, the key has to be 32 characters in length.

```python
email = email[:31].ljust(31, "*")
email += "*"
```

It then truncates the email down to 31 characters, and if the email is less than 31 characters, it fills the rest with stars. Finally, it adds one last star to the end of the string for a total of 32 characters.

```python
for c in itertools.chain(email, key):
    if c not in ALPHABET:
        return False
```

The value of `ALPHABET` is defined at the beginning of the script. It contains a list of characters ranging from 0x2a-0x7a.

```python
ALPHABET = [chr(i) for i in range(ord("*"), ord("z")+1)]
```

So this part checks if both the email and key are "alphabetical", which by "alphabetical" I really mean in the ASCII range 0x2a-0x7a.

After that, there are a lot of constraints the email and license must obey.

```python
if email.count("@") != 1:
    return False
```

The email has to have at least one @ sign.

```python
if key[0] != "Z":
    return False
```

The first character of the license must be a Z.

```python
dotcount = email.count(".")
if dotcount < 0 or dotcount >= len(ALPHABET):
    return False
```

The email has to have between 0 and 80 periods. (don't ask me why, as the email is already only 32 characters)

I implemented all this in a [script I wrote](sol.py) to generate a license for me, so I'm not doing it by hand or anything like that. More on that later.

Then comes the crazy checks. I swear, whoever wrote this used a script to write this part:

```python
if a(dotcount) != o(key[1]):
    return False

if o(key[3]) != a(o(key[1])%30 + o(key[2])%30) + 5:
    return False

if o(key[2]) != a(indexes(email, "*") + 7):
    return False

if o(key[4]) != a(sum(o(i) for i in email)%60 + o(key[5])):
    return False

if o(key[5]) != a(o(key[3]) + 52):
    return False

if o(key[6]) != a((o(key[7])%8)*2):
    return False

if o(key[7]) != a(o(key[1]) + o(key[2]) - o(key[3])):
    return False

if o(key[8]) != a((o(key[6])%16) / 2):
    return False

if o(key[9]) != a(o(key[6]) + o(key[4]) + o(key[8]) - 4):
    return False

if o(key[10]) != a((o(key[1])%2) * 8 + o(key[2]) % 3 + o(key[3]) % 4):
    return False

if not m(email[3], key[11], key[12], 8):
    return False
if not m(email[7], key[13], key[4], 18):
    return False
if not m(email[9], key[14], key[3], 23):
    return False
if not m(email[10], key[15], key[10], 3):
    return False
if not m(email[11], key[13], key[16], 792):
    return False
if not m(email[12], key[17], key[4], email.count("d")):
    return False
if not m(email[13], key[18], key[7], email.count("a")):
    return False
if not m(email[14], key[19], key[8], email.count("w")):
    return False
if not m(email[15], key[20], key[1], email.count("g")):
    return False
if not m(email[16], email[17], key[21], email.count("s")):
    return False
if not m(email[18], email[19], key[22], email.count("m")):
    return False
if not m(email[20], key[23], key[17], 9):
    return False
if not m(email[21], key[24], key[13], 41):
    return False
if not m(email[22], key[25], key[10], 3):
    return False
if not m(email[23], key[26], email[14], email.count("1")):
    return False
if not m(email[24], email[25], key[27], email.count("*")):
    return False
if not m(email[26], email[27], key[28], 7):
    return False
if not m(email[28], email[29], key[29], 2):
    return False
if not m(email[30], key[30], email[18], 4):
    return False
if not m(email[31], key[31], email[4], 7):
    return False

return True
```
Either that, or the author took a lot of time and effort writing this challenge!

Anyway, there are three functions you need to know about, defined at the beginning of the file:

```python
a = lambda c: ord(ALPHABET[0]) + (c % len(ALPHABET))

o = lambda c: ord(c)

oa = lambda c: a(o(c))
```

They are all lambda functions that take one parameter.

`o('Z')` is just short for `ord('Z')`

`a(126)` is another function that is used to convert any number to a printable char, by getting the modulo of your input and the length of `ALPHABET`, and then adding the ord of the first character in `ALPHABET`. It returns really the `ord` of the printable char, and is used to compare to characters in the license, to check if the license is valid.

And finally, `oa()` is just a combination of both functions.


First things first:

```python
if a(dotcount) != o(key[1]):
    return False
```

This is saying that the `a()` of the email dot count has to be equal to the ord of the second letter of the license.

While I was examining the inner workings of this program, I was making my own script that I can use to generate a license, given an email. You can see it [here](sol.py). I created an array called `key` to store all the key codes of the license.

```python
key = [ord('A')] * 32 ## contains ascii codes for the key, the key is 32 characters long.
```

I decided to store the characters this way because strings are immutable, and I can change the individual characters of the license as I please now.

So now, I can edit the second character of the license using this check. Knowing that the second character, represented as an integer, has to be equal to `a(dotcount)`, I can simply do this:

```python
key[1] = a(dotcount)
```

And now this requirement:

```python
if a(dotcount) != o(key[1]):
    return False
```

...Is now satisfied.

Now, I can't do the same thing for the next one:

```python
if o(key[3]) != a(o(key[1])%30 + o(key[2])%30) + 5:
    return False
```

...Because the value of `key[3]` depends on the value of `key[2]`, so I have to get `key[2]` first, which is pretty straight forward.

```python
if o(key[2]) != a(indexes(email, "*") + 7):
    return False
```

The next one has the check with `key[2]`, so now we can get `key[2]` with this code:

```python
key[2] = a(indexes(email, "*") + 7)
```

Now that we have `key[2]`, we can now get `key[3]`

```python
key[3] = a(key[1]%30 + key[2]%30) + 5
```

And we can simply keep going by doing the same steps we did before. Go to the next piece of code. If it depends on another part of the license, calculate that part first.

```python
if o(key[4]) != a(sum(o(i) for i in email)%60 + o(key[5])):
    return False

if o(key[5]) != a(o(key[3]) + 52):
    return False
```

`key[4]` depends on `key[5]`, and `key[5]` depends on `key[3]`. We already have `key[3]`, so we can go ahead and get `key[5]`. Then we can get `key[4]`

```python
key[5] = a(key[3] + 52) ## the order of key calculation matters, because the value of key[4] depends on key[5].

key[4] = a(sum(o(i) for i in email)%60 + key[5])
```

It keeps going like that, until `key[10]`

```python
key[7] = a(key[1] + key[2] - key[3])

key[6] = a((key[7]%8)*2)

key[8] = a((key[6]%16) / 2)

key[9] = a(key[6] + key[4] + key[8] - 4)

key[10] = a((key[1])%2 * 8 + key[2] % 3 + key[3] % 4)
```

Then it starts getting more complex. We are introduced to a new function `m()`

```python
def m(one, two, three, four):
    d = len(ALPHABET)//2
    s = ord(ALPHABET[0])
    s1, s2, s3 = o(one) - s, o(two) - s, o(three) - s
    return sum([s1, s2, s3]) % d == four % d
```

It takes 4 parameters. I edited the function in my script to make it easier to understand.

```python
def m(one, two, three, four):
    d = 40
    s = 42
    s1, s2, s3 = one - 42, two - 42, three - 42
    return sum([s1, s2, s3]) % 40 == four % 40
```

It takes parameters 1 to 3, and subtracts it by 42. It then checks if the modulus of the sum of those three numbers we just calculated to 40 is equal to the fourth parameter applied with the same modulus.

The question is, how do we reverse engineer this?

Let's look at an example on how it's used:

```python
if not m(email[3], key[11], key[12], 8):
    return False
```

In order for this check to pass, the function being called, `m()`, has to return `True`

After some trial and error, I got this:

```python
def l(two, three, four):
    one = ((sum([two, three]) + (-42 * 3)) % 40) - (four % 40)
    while one > 0:
        one = one - 40
    one = -one
    while one < 0x2a:
        one += 40
    return one
```

I was able to create a function that basically gets `one` when given `two`, `three`, and `four`.

In other words, assuming you have `two`, `three`, and `four`, `m(l(two, three, four), two, three, four)` will __always__ return `True`

Also, remember that all characters have to be in the ASCII range `0x2a-0x7a`, so I add 40 to each character until it is.

```python
one = l(two, three, four)

print(m(one, two, three, four)) ## Always will return True
```

I even made a [test script](test.py) to test if this will always work, and it does.

We can do the same thing we have been doing, but now we can use `l()` to do the reverse of `m()`. The order of the first three parameters doesn't matter. Cool, huh?

Here's a quick example:

```python
if not m(email[3], key[11], key[12], 8):
    return False
```

Hm... We don't have either `key[11]` or `key[12]`. Let's keep going.

```python
if not m(email[7], key[13], key[4], 18):
    return False
```

In my script, `email` is currently a string. Let's fix that.

```python
oldEmail = email[:]
email = []

for i in oldEmail:
    email.append(ord(i))
```

Now `email` is a list of character ASCII values, which is what we want.

Since we have `key[4]` and `email[7]`now, we can get `key[13]`!

```python
key[13] = l(email[7], key[4], 18)
```

Nice! Let's keep doing this for the rest of the keys.



```python
if not m(email[3], key[11], key[12], 8):
    return False
if not m(email[7], key[13], key[4], 18):
    return False
if not m(email[9], key[14], key[3], 23):
    return False
if not m(email[10], key[15], key[10], 3):
    return False
if not m(email[11], key[13], key[16], 792):
    return False
if not m(email[12], key[17], key[4], email.count("d")):
    return False
if not m(email[13], key[18], key[7], email.count("a")):
    return False
if not m(email[14], key[19], key[8], email.count("w")):
    return False
if not m(email[15], key[20], key[1], email.count("g")):
    return False
if not m(email[16], email[17], key[21], email.count("s")):
    return False
if not m(email[18], email[19], key[22], email.count("m")):
    return False
if not m(email[20], key[23], key[17], 9):
    return False
if not m(email[21], key[24], key[13], 41):
    return False
if not m(email[22], key[25], key[10], 3):
    return False
if not m(email[23], key[26], email[14], email.count("1")):
    return False
if not m(email[24], email[25], key[27], email.count("*")):
    return False
if not m(email[26], email[27], key[28], 7):
    return False
if not m(email[28], email[29], key[29], 2):
    return False
if not m(email[30], key[30], email[18], 4):
    return False
if not m(email[31], key[31], email[4], 7):
    return False
```

After we're finished, it should look something like this:

```python
#    if not m(email[16], email[17], key[21], email.count("s")): ## I will just start with this
#        return False

    key[21] = l(email[16], email[17], oldEmail.count('s'))

#    if not m(email[7], key[13], key[4], 18):
#        return False

    key[13] = l(email[7], key[4], 18)

#    if not m(email[11], key[13], key[16], 792):
#        return False

    key[16] = l(email[11], key[13], 792)

#    if not m(email[21], key[24], key[13], 41):
#        return False

    key[24] = l(email[21], key[13], 41)

#    if not m(email[9], key[14], key[3], 23):
#        return False

    key[14] = l(email[9], key[3], 23)

#    if not m(email[10], key[15], key[10], 3):
#        return False

    key[15] = l(email[10], key[10], 3)

#    if not m(email[12], key[17], key[4], email.count("d")):
#        return False

    key[17] = l(email[12], key[4], oldEmail.count('d'))

#    if not m(email[20], key[23], key[17], 9):
#        return False

    key[23] = l(email[20], key[17], 9)

#    if not m(email[31], key[31], email[4], 7):
#        return False

    key[31] = l(email[31], email[4], 7)

#    if not m(email[13], key[18], key[7], email.count("a")):
#        return False

    key[18] = l(email[13], key[7], oldEmail.count('a'))

#    if not m(email[30], key[30], email[18], 4):
#        return False1

    key[30] = l(email[30], email[18], 4)

#    if not m(email[28], email[29], key[29], 2):
#        return False

    key[29] = l(email[28], email[29], 2)

#    if not m(email[26], email[27], key[28], 7):
#        return False

    key[28] = l(email[26], email[27], 7)

#    if not m(email[3], key[11], key[12], 8):
#        return False

    key[11] = ord('Z') # idk
    key[12] = l(email[3], key[11], 8)

#    if not m(email[14], key[19], key[8], email.count("w")):
#        return False

    key[19] = l(email[14], key[8], oldEmail.count('w'))



#    if not m(email[15], key[20], key[1], oldEmail.count("g")):
#        return False

    key[20] = l(email[15], key[1], oldEmail.count('g'))

#    if not m(email[18], email[19], key[22], oldEmail.count("m")):
#        return False

    key[22] = l(email[18], email[19], oldEmail.count('m'))

#    if not m(email[22], key[25], key[10], 3):
#        return False

    key[25] = l(email[22], key[10], 3)

#    if not m(email[23], key[26], email[14], oldEmail.count("1")):
#        return False

    key[26] = l(email[23], email[14], oldEmail.count('1'))

#    if not m(email[24], email[25], key[27], oldEmail.count("*")):
#        return False

    key[27] = l(email[24], email[25], oldEmail.count('*'))
```

And we are done!  We now reached that sweet sweet statement we've been trying to get to:

```python
return True
```

All that's left is to convert the license to a string, and print it to the screen!

```python
s = ''
for i in key: ## convert array to string
    s += chr(int(i))

return "Your key is: " + s
```

And if you're interested, here's what main looks like:

```python
def main():
    email = input("What email do you want to use? ")

    print(getLicense(email))
```

And we're done! That's it! All you have to do is connect to the server using netcat and get the flag!

Unfortunately, I wasn't able to get the flag. I finished it an hour after the CTF was over, but it still was a really fun challenge!

If you want to see the final solution script, it's right [here](sol.py).
