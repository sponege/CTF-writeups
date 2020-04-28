# Ask Nicely

We are given an ELF 64-bit executable.

```
jordan@notyourcomputer:~/CTF-writeups/DawgCTF2020/asknicely$ file asknicely
asknicely: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=a592d141bbaac0f1b0f2defcc33003250b122d1c, for GNU/Linux 3.2.0, not stripped
```

I disassembled the file using this command:

```
jordan@notyourcomputer:~/CTF-writeups/DawgCTF2020/asknicely$ objdump -d -M intel asknicely > asknicely.asm
```

While inspecting the assembly file, I found this function:

```
0000000000001165 <flag>:
    1165:	55                   	push   rbp
    1166:	48 89 e5             	mov    rbp,rsp
    1169:	bf 44 00 00 00       	mov    edi,0x44
    116e:	e8 bd fe ff ff       	call   1030 <putchar@plt>
    1173:	bf 61 00 00 00       	mov    edi,0x61
    1178:	e8 b3 fe ff ff       	call   1030 <putchar@plt>
    117d:	bf 77 00 00 00       	mov    edi,0x77
    1182:	e8 a9 fe ff ff       	call   1030 <putchar@plt>
    1187:	bf 67 00 00 00       	mov    edi,0x67
    118c:	e8 9f fe ff ff       	call   1030 <putchar@plt>
    1191:	bf 43 00 00 00       	mov    edi,0x43
    1196:	e8 95 fe ff ff       	call   1030 <putchar@plt>
    119b:	bf 54 00 00 00       	mov    edi,0x54
    11a0:	e8 8b fe ff ff       	call   1030 <putchar@plt>
    11a5:	bf 46 00 00 00       	mov    edi,0x46
    11aa:	e8 81 fe ff ff       	call   1030 <putchar@plt>
    11af:	bf 7b 00 00 00       	mov    edi,0x7b
    11b4:	e8 77 fe ff ff       	call   1030 <putchar@plt>
    11b9:	bf 2b 00 00 00       	mov    edi,0x2b
    11be:	e8 6d fe ff ff       	call   1030 <putchar@plt>
    11c3:	bf 68 00 00 00       	mov    edi,0x68
    11c8:	e8 63 fe ff ff       	call   1030 <putchar@plt>
    11cd:	bf 40 00 00 00       	mov    edi,0x40
    11d2:	e8 59 fe ff ff       	call   1030 <putchar@plt>
    11d7:	bf 6e 00 00 00       	mov    edi,0x6e
    11dc:	e8 4f fe ff ff       	call   1030 <putchar@plt>
    11e1:	bf 4b 00 00 00       	mov    edi,0x4b
    11e6:	e8 45 fe ff ff       	call   1030 <putchar@plt>
    11eb:	bf 5f 00 00 00       	mov    edi,0x5f
    11f0:	e8 3b fe ff ff       	call   1030 <putchar@plt>
    11f5:	bf 59 00 00 00       	mov    edi,0x59
    11fa:	e8 31 fe ff ff       	call   1030 <putchar@plt>
    11ff:	bf 30 00 00 00       	mov    edi,0x30
    1204:	e8 27 fe ff ff       	call   1030 <putchar@plt>
    1209:	bf 55 00 00 00       	mov    edi,0x55
    120e:	e8 1d fe ff ff       	call   1030 <putchar@plt>
    1213:	bf 7d 00 00 00       	mov    edi,0x7d
    1218:	e8 13 fe ff ff       	call   1030 <putchar@plt>
    121d:	bf 0a 00 00 00       	mov    edi,0xa
    1222:	e8 09 fe ff ff       	call   1030 <putchar@plt>
    1227:	90                   	nop
    1228:	5d                   	pop    rbp
    1229:	c3                   	ret    
```

Looks like this function is responsible for printing the flag. I could just manually convert each ASCII character by hand, or I could just use gdb.

```
$ gdb asknicely
(gdb) b *main
Breakpoint 1 at 0x122a
(gdb) r
Starting program: /home/jordan/CTF-writeups/DawgCTF2020/asknicely/asknicely

Breakpoint 1, 0x000055555555522a in main ()
(gdb) jump flag
Continuing at 0x555555555169.
DawgCTF{+h@nK_Y0U}

Program received signal SIGSEGV, Segmentation fault.
0x0000000000000000 in ?? ()
(gdb)
```
# Flag
```
DawgCTF{+h@nK_Y0U}
```
