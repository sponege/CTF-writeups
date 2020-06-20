# Emojis

>    Esolang reversing!
>
>    Author: JC01010

Whel I looked up "esolang emojis" on duckduckgo, I found [this esoteric language](https://esolangs.org/wiki/Emoji-gramming).

After reading about it for a bit, I thought it would be easier to read the code if I got rid of the emojis and beautified the code a bit, so I did just that.

Original:

```
😊♈🎤
😊♉🎤
😊♊🎤
😊♋🎤
😊♌🎤
😊♍🎤
😊♎🎤
😊♏🎤
😊♐🎤
😊♑🎤
😊♒🎤
😊♓🎤
😊🕙🎤
😵♉🕙
😈♓♈
😵♉♍
😊♊♏
😈♉♌
😇♑♎
😵♌♑
😊🕐♋
😈♊💖
😊♋🕙
😊🕙🕐
😇♉♏
😈♉♋
😇♈♓
😇♊💞
😇♋💕
😵♋♍
😊🕕🎤
😵♌♑
😇♌♑
😇♓💜
😈♒💖
😇♏♐
😈♍♎
😵♒💞
😇♎♐
😇♐💖
😈♈♊
😈♌♓
😇♊♊
😈♏♓
😵♒💔
😈♑♉
😊📢♈              
😊📢♉
😊📢♊
😊📢♋
😊📢♌
😊📢♍
😊📢♎
😊📢♏
😊📢♐
😊📢♑
😊📢♒
😊📢♓
😊📢🕙
```

Modified:

```
load char1 input
load char2 input
load char3 input
load char4 input
load char5 input
load char6 input
load char7 input
load char8 input
load char9 input
load char10 input
load char11 input
load char12 input
load char13 input
jmpIfEq char2  char13
sub char12  char1
jmpIfEq char2  char6
load char3  char8
sub char2  char5
add char10  char7
jmpIfEq char5  char10
load tmpvar char4
sub char3 int8
load char4  char13
load char13  tmpvar
add char2  char8
sub char2  char4
add char1  char12
add char3 int4
add char4 int2
jmpIfEq char4  char6
load char14 input
jmpIfEq char5  char10
add char5  char10
add char12 int1
sub char11 int8
add char8  char9
sub char6  char7
jmpIfEq char11 int4
add char7  char9
add char9 int8
sub char1  char3
sub char5  char12
add char3  char3
sub char8  char12
jmpIfEq char11 int0 // char11 is not a null, don't worry about it
sub char10  char2 // in solution script, add char 2 to char 10
load output char1
load output char2
load output char3
load output char4
load output char5
load output char6
load output char7
load output char8
load output char9
load output char10
load output char11
load output char12
load output char13
```

As you can see, that makes it a lot easier to read.

I then coded a python script which does the exact reverse of what this program does. You can see it [here](sol.py).

The output I got was this: `ԹtE3vr-pAck§p`

Pack is a word, so maybe I did it kinda right? I don't know what I did wrong.

Apparently, this was actually a broken challenge. I sent what I had to the admin, and the admin sent me back the real flag. So I kinda "half-solved" this challenge.

Flag: `flag{tr3v0r_pAck3r}`
