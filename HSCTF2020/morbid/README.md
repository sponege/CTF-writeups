# Morbid

![](https://raw.githubusercontent.com/deut-erium/WriteUps/master/HSCTF/crypto/Morbid/Capture.PNG)

This was an actually pretty fun challenge. Good one, too. The challenge is to decode something called a [morbit cipher](https://www.cryptogram.org/downloads/aca.info/ciphers/Morbit.pdf) without the key. This is actually pretty easy, because there are only 9! possible keys, or 362880 keys. This is easily bruteforceable.

Before this I wasted a lot of time [doing it entirely wrong](wrong_sol.py) and though hat I could reverse the key. But this is a crypto challenge, not a reversing one, so I was basically just running around in circles.

After I realized how easy it was to bruteforce, I made a [python script](sol.py) to do it all for me.

The script reads from a [file containing the morse code key](morse) and uses that to decode the morse.

The script worked just fine for other ciphertexts, but it didn't work on the challenge one. I was stumped on what I was doing wrong, until the author told me that the message might contain underscores. I didn't have underscores in my morse file.

```
A  .-    N  -.    ~.  .-.-.-  1  .----
B  -...  O  ---   ,  --..--  2  ..---
C  -.-.  P  .--.  :  ---...  3  ...--
D  -..   Q  --.-  "  .-..-.  4  ....-
E  .     R  .-.   '  .----.  5  .....
F  ..-.  S  ...   !  -.-.--  6  -....
G  --.   T  -     ?  ..--..  7  --...
H  ....  U  ..-   @  .--.-.  8  ---..
I  ..    V  ...-  -  -....-  9  ----.
J  .---  W  .--   ;  -.-.-.  0  -----
K  -.-   X  -..-  (  -.--.
L  .-..  Y  -.--  )  -.--.-
M  --    Z  --..  =  -...-
```

When my program failed to decode morse, it would just return an error.

```python
try:
    dm += morse[morse.index(c)-1].replace('~.', '.')
except:
    return "Invalid Morse"
```

I was lazy, so I fixed it so it did nothing at all.

```python
try:
    dm += morse[morse.index(c)-1].replace('~.', '.')
except:
    int()
```

`int()` is the best python placeholder code.

Apparently, that worked like a charm, and I was getting possible messages!

```
$ py sol.py
C M EGRA  ULA  IONS. PLEASE WRAPMHIS  TESSA NED E A FLAG FORMAT:O R3B1  5 ('4', '5', '2', '7', '8', '1', '6', '9', '3')
CONGRATULATIONS. PLEASE WRAP THIS MESSAGE IN A FLAG FORMAT: M0R3B1T5 ('4', '5', '2', '7', '9', '1', '6', '8', '3')
 TT M EGRA  UENA  IO TSETM PLEASE WETAAQHIS  TESSA  T E A FLAG FORMATM ET3UM D1  5 ('8', '5', '2', '7', '4', '1', '6', '9', '3')
 TGRPUENPIO TSETM PLEASE WETAAT THISKESSPTE  A FLAG FORMATMD ET3UM D5 ('8', '5', '2', '7', '9', '1', '6', '4', '3')
     ONGRATUE EATIO   SE   T PLEASE WE  AA KHIS MESSAT  N A FLAG FORMATM 0E  3U T  I1T5 ('9', '5', '2', '7', '4', '1', '6', '8', '3')
    GRPUE EPIO   SE   T PLEASE WE  AA  MHISKESSP  E A FLAG FORMATM IE  3U T  I5 ('9', '5', '2', '7', '8', '1', '6', '4', '3')
```

It was pretty easy to spot the actual message, as the rest weren't in English.

```
CONGRATULATIONS. PLEASE WRAP THIS MESSAGE IN A FLAG FORMAT: M0R3B1T5 ('4', '5', '2', '7', '9', '1', '6', '8', '3')
```

It was a good challenge!

Flag: `flag{M0R3_B1T5}`
