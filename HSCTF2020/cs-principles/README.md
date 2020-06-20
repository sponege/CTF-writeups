# AP Lab: Computer Science Principles

>This activity will ask you to reverse a basic program and solve an introductory reversing challenge. You will be given an output that is to be used in order to reconstruct the input, which is the flag.
>
>Note: The "Student Guide" isn't needed to solve the challenges in this series.
>
>Author: AC

We are reversing a Java program. The program is asking for a password. I'm assuming the password is the flag.

```java
inp=shift2(shift(inp));
if (inp.equals("inagzgkpm)Wl&Tg&io")) {
    System.out.println("Correct. Your input is the flag.");
}
else {
    System.out.println("Your input is incorrect.");
}
```

The input is put into two functions, `shift` and `shift2`. The output must be that obfuscated string or else the password is incorrect.

Because we are working our way backwards, let's start with `shift2()`

```java
public static String shift2(String input) {
    String ret = "";
    for (int i = 0; i<input.length(); i++) {
        ret+=(char)(input.charAt(i)+Integer.toString((int)input.charAt(i)).length());
    }
    return ret;
}
```

So this function adds the character with the integer of that character. I don't know java, I thought that bit was weird, so instead of actually learning a thing or two I was lazy.

In [test.java](test.java):

```java
import java.util.Scanner;
public class test
{
    public static void main(String[] args) {
        for (int i = 0; i<256; i++) {
          System.out.println(Integer.toString(i).length());
        }
    }
}
```

I literally just dumped all the possible shifts of every character and dumped it into a file called `shift2list`

Then, in my python program, I would read from that file and put it into an array, and subtract the shift from each character.

```python
enc = "inagzgkpm)Wl&Tg&io"

first = ''

with open('shift2list', 'r') as file:
    shift2 = file.read().split('\n')

print(shift2)
for c in enc:
    first += chr(ord(c) - int(shift2[ord(c)]))
```

The other shift function was pretty simple:

```java
public static String shift(String input) {
    String ret = "";
    for (int i = 0; i<input.length(); i++) {
        ret+=(char)(input.charAt(i)-i);
    }
    return ret;
}
```

You just have to add the character with its current position.

```python
second = ''

for i in range(len(first)):
    second += chr(ord(first[i]) + i)
```

Print out the flag, and you're done!

```python
print(second)
```

Flag: `flag{intr0_t0_r3v}`
