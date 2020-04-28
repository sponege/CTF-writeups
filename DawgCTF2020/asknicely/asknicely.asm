
asknicely:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 dd 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fdd]        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   rax,rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   rax
    1012:	48 83 c4 08          	add    rsp,0x8
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 82 2f 00 00    	push   QWORD PTR [rip+0x2f82]        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 84 2f 00 00    	jmp    QWORD PTR [rip+0x2f84]        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <putchar@plt>:
    1030:	ff 25 82 2f 00 00    	jmp    QWORD PTR [rip+0x2f82]        # 3fb8 <putchar@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <strncmp@plt>:
    1040:	ff 25 7a 2f 00 00    	jmp    QWORD PTR [rip+0x2f7a]        # 3fc0 <strncmp@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <puts@plt>:
    1050:	ff 25 72 2f 00 00    	jmp    QWORD PTR [rip+0x2f72]        # 3fc8 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <__stack_chk_fail@plt>:
    1060:	ff 25 6a 2f 00 00    	jmp    QWORD PTR [rip+0x2f6a]        # 3fd0 <__stack_chk_fail@GLIBC_2.4>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	ff 25 82 2f 00 00    	jmp    QWORD PTR [rip+0x2f82]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1076:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	31 ed                	xor    ebp,ebp
    1082:	49 89 d1             	mov    r9,rdx
    1085:	5e                   	pop    rsi
    1086:	48 89 e2             	mov    rdx,rsp
    1089:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    108d:	50                   	push   rax
    108e:	54                   	push   rsp
    108f:	4c 8d 05 1a 03 00 00 	lea    r8,[rip+0x31a]        # 13b0 <__libc_csu_fini>
    1096:	48 8d 0d b3 02 00 00 	lea    rcx,[rip+0x2b3]        # 1350 <__libc_csu_init>
    109d:	48 8d 3d 86 01 00 00 	lea    rdi,[rip+0x186]        # 122a <main>
    10a4:	ff 15 36 2f 00 00    	call   QWORD PTR [rip+0x2f36]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10aa:	f4                   	hlt    
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    rdi,[rip+0x2f59]        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    rax,[rip+0x2f52]        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    rax,rdi
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 0e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f0e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ca:	48 85 c0             	test   rax,rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    rax
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    rdi,[rip+0x2f29]        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    rsi,[rip+0x2f22]        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    rsi,rdi
    10f1:	48 c1 fe 03          	sar    rsi,0x3
    10f5:	48 89 f0             	mov    rax,rsi
    10f8:	48 c1 e8 3f          	shr    rax,0x3f
    10fc:	48 01 c6             	add    rsi,rax
    10ff:	48 d1 fe             	sar    rsi,1
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ee5]        # 3ff0 <_ITM_registerTMCloneTable>
    110b:	48 85 c0             	test   rax,rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    rax
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <__do_global_dtors_aux>:
    1120:	80 3d e9 2e 00 00 00 	cmp    BYTE PTR [rip+0x2ee9],0x0        # 4010 <__TMC_END__>
    1127:	75 2f                	jne    1158 <__do_global_dtors_aux+0x38>
    1129:	55                   	push   rbp
    112a:	48 83 3d c6 2e 00 00 	cmp    QWORD PTR [rip+0x2ec6],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1131:	00 
    1132:	48 89 e5             	mov    rbp,rsp
    1135:	74 0c                	je     1143 <__do_global_dtors_aux+0x23>
    1137:	48 8b 3d ca 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2eca]        # 4008 <__dso_handle>
    113e:	e8 2d ff ff ff       	call   1070 <__cxa_finalize@plt>
    1143:	e8 68 ff ff ff       	call   10b0 <deregister_tm_clones>
    1148:	c6 05 c1 2e 00 00 01 	mov    BYTE PTR [rip+0x2ec1],0x1        # 4010 <__TMC_END__>
    114f:	5d                   	pop    rbp
    1150:	c3                   	ret    
    1151:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001160 <frame_dummy>:
    1160:	e9 7b ff ff ff       	jmp    10e0 <register_tm_clones>

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

000000000000122a <main>:
    122a:	55                   	push   rbp
    122b:	48 89 e5             	mov    rbp,rsp
    122e:	48 83 ec 30          	sub    rsp,0x30
    1232:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
    1235:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    1239:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1240:	00 00 
    1242:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1246:	31 c0                	xor    eax,eax
    1248:	c6 45 ea 70          	mov    BYTE PTR [rbp-0x16],0x70
    124c:	c6 45 eb 6c          	mov    BYTE PTR [rbp-0x15],0x6c
    1250:	c6 45 ec 65          	mov    BYTE PTR [rbp-0x14],0x65
    1254:	c6 45 ed 61          	mov    BYTE PTR [rbp-0x13],0x61
    1258:	c6 45 ee 73          	mov    BYTE PTR [rbp-0x12],0x73
    125c:	c6 45 ef 65          	mov    BYTE PTR [rbp-0x11],0x65
    1260:	c6 45 f0 00          	mov    BYTE PTR [rbp-0x10],0x0
    1264:	c6 45 f1 70          	mov    BYTE PTR [rbp-0xf],0x70
    1268:	c6 45 f2 72          	mov    BYTE PTR [rbp-0xe],0x72
    126c:	c6 45 f3 65          	mov    BYTE PTR [rbp-0xd],0x65
    1270:	c6 45 f4 74          	mov    BYTE PTR [rbp-0xc],0x74
    1274:	c6 45 f5 74          	mov    BYTE PTR [rbp-0xb],0x74
    1278:	c6 45 f6 79          	mov    BYTE PTR [rbp-0xa],0x79
    127c:	c6 45 f7 00          	mov    BYTE PTR [rbp-0x9],0x0
    1280:	83 7d dc 01          	cmp    DWORD PTR [rbp-0x24],0x1
    1284:	75 11                	jne    1297 <main+0x6d>
    1286:	48 8d 3d 77 0d 00 00 	lea    rdi,[rip+0xd77]        # 2004 <_IO_stdin_used+0x4>
    128d:	e8 be fd ff ff       	call   1050 <puts@plt>
    1292:	e9 91 00 00 00       	jmp    1328 <main+0xfe>
    1297:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    129b:	48 83 c0 08          	add    rax,0x8
    129f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    12a2:	48 8d 45 ea          	lea    rax,[rbp-0x16]
    12a6:	ba 07 00 00 00       	mov    edx,0x7
    12ab:	48 89 ce             	mov    rsi,rcx
    12ae:	48 89 c7             	mov    rdi,rax
    12b1:	e8 8a fd ff ff       	call   1040 <strncmp@plt>
    12b6:	85 c0                	test   eax,eax
    12b8:	75 0e                	jne    12c8 <main+0x9e>
    12ba:	48 8d 3d 4e 0d 00 00 	lea    rdi,[rip+0xd4e]        # 200f <_IO_stdin_used+0xf>
    12c1:	e8 8a fd ff ff       	call   1050 <puts@plt>
    12c6:	eb 60                	jmp    1328 <main+0xfe>
    12c8:	83 7d dc 03          	cmp    DWORD PTR [rbp-0x24],0x3
    12cc:	75 5a                	jne    1328 <main+0xfe>
    12ce:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    12d2:	48 83 c0 10          	add    rax,0x10
    12d6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    12d9:	48 8d 45 ea          	lea    rax,[rbp-0x16]
    12dd:	ba 07 00 00 00       	mov    edx,0x7
    12e2:	48 89 ce             	mov    rsi,rcx
    12e5:	48 89 c7             	mov    rdi,rax
    12e8:	e8 53 fd ff ff       	call   1040 <strncmp@plt>
    12ed:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
    12f0:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    12f4:	48 83 c0 08          	add    rax,0x8
    12f8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    12fb:	48 8d 45 f1          	lea    rax,[rbp-0xf]
    12ff:	ba 07 00 00 00       	mov    edx,0x7
    1304:	48 89 ce             	mov    rsi,rcx
    1307:	48 89 c7             	mov    rdi,rax
    130a:	e8 31 fd ff ff       	call   1040 <strncmp@plt>
    130f:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
    1312:	83 7d e0 00          	cmp    DWORD PTR [rbp-0x20],0x0
    1316:	75 10                	jne    1328 <main+0xfe>
    1318:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
    131c:	75 0a                	jne    1328 <main+0xfe>
    131e:	b8 00 00 00 00       	mov    eax,0x0
    1323:	e8 3d fe ff ff       	call   1165 <flag>
    1328:	b8 00 00 00 00       	mov    eax,0x0
    132d:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    1331:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
    1338:	00 00 
    133a:	74 05                	je     1341 <main+0x117>
    133c:	e8 1f fd ff ff       	call   1060 <__stack_chk_fail@plt>
    1341:	c9                   	leave  
    1342:	c3                   	ret    
    1343:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    134a:	00 00 00 
    134d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001350 <__libc_csu_init>:
    1350:	41 57                	push   r15
    1352:	49 89 d7             	mov    r15,rdx
    1355:	41 56                	push   r14
    1357:	49 89 f6             	mov    r14,rsi
    135a:	41 55                	push   r13
    135c:	41 89 fd             	mov    r13d,edi
    135f:	41 54                	push   r12
    1361:	4c 8d 25 38 2a 00 00 	lea    r12,[rip+0x2a38]        # 3da0 <__frame_dummy_init_array_entry>
    1368:	55                   	push   rbp
    1369:	48 8d 2d 38 2a 00 00 	lea    rbp,[rip+0x2a38]        # 3da8 <__init_array_end>
    1370:	53                   	push   rbx
    1371:	4c 29 e5             	sub    rbp,r12
    1374:	48 83 ec 08          	sub    rsp,0x8
    1378:	e8 83 fc ff ff       	call   1000 <_init>
    137d:	48 c1 fd 03          	sar    rbp,0x3
    1381:	74 1b                	je     139e <__libc_csu_init+0x4e>
    1383:	31 db                	xor    ebx,ebx
    1385:	0f 1f 00             	nop    DWORD PTR [rax]
    1388:	4c 89 fa             	mov    rdx,r15
    138b:	4c 89 f6             	mov    rsi,r14
    138e:	44 89 ef             	mov    edi,r13d
    1391:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    1395:	48 83 c3 01          	add    rbx,0x1
    1399:	48 39 dd             	cmp    rbp,rbx
    139c:	75 ea                	jne    1388 <__libc_csu_init+0x38>
    139e:	48 83 c4 08          	add    rsp,0x8
    13a2:	5b                   	pop    rbx
    13a3:	5d                   	pop    rbp
    13a4:	41 5c                	pop    r12
    13a6:	41 5d                	pop    r13
    13a8:	41 5e                	pop    r14
    13aa:	41 5f                	pop    r15
    13ac:	c3                   	ret    
    13ad:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000013b0 <__libc_csu_fini>:
    13b0:	c3                   	ret    

Disassembly of section .fini:

00000000000013b4 <_fini>:
    13b4:	48 83 ec 08          	sub    rsp,0x8
    13b8:	48 83 c4 08          	add    rsp,0x8
    13bc:	c3                   	ret    
