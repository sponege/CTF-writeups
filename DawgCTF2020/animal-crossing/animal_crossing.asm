
animal_crossing:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 dd 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fdd]        # 4fe8 <__gmon_start__>
    100b:	48 85 c0             	test   rax,rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   rax
    1012:	48 83 c4 08          	add    rsp,0x8
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 52 3f 00 00    	push   QWORD PTR [rip+0x3f52]        # 4f78 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 54 3f 00 00    	jmp    QWORD PTR [rip+0x3f54]        # 4f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <putchar@plt>:
    1030:	ff 25 52 3f 00 00    	jmp    QWORD PTR [rip+0x3f52]        # 4f88 <putchar@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <strcpy@plt>:
    1040:	ff 25 4a 3f 00 00    	jmp    QWORD PTR [rip+0x3f4a]        # 4f90 <strcpy@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <puts@plt>:
    1050:	ff 25 42 3f 00 00    	jmp    QWORD PTR [rip+0x3f42]        # 4f98 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <strlen@plt>:
    1060:	ff 25 3a 3f 00 00    	jmp    QWORD PTR [rip+0x3f3a]        # 4fa0 <strlen@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

0000000000001070 <__stack_chk_fail@plt>:
    1070:	ff 25 32 3f 00 00    	jmp    QWORD PTR [rip+0x3f32]        # 4fa8 <__stack_chk_fail@GLIBC_2.4>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

0000000000001080 <printf@plt>:
    1080:	ff 25 2a 3f 00 00    	jmp    QWORD PTR [rip+0x3f2a]        # 4fb0 <printf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

0000000000001090 <getchar@plt>:
    1090:	ff 25 22 3f 00 00    	jmp    QWORD PTR [rip+0x3f22]        # 4fb8 <getchar@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <.plt>

00000000000010a0 <setvbuf@plt>:
    10a0:	ff 25 1a 3f 00 00    	jmp    QWORD PTR [rip+0x3f1a]        # 4fc0 <setvbuf@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <.plt>

00000000000010b0 <__isoc99_scanf@plt>:
    10b0:	ff 25 12 3f 00 00    	jmp    QWORD PTR [rip+0x3f12]        # 4fc8 <__isoc99_scanf@GLIBC_2.7>
    10b6:	68 08 00 00 00       	push   0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <.plt>

00000000000010c0 <usleep@plt>:
    10c0:	ff 25 0a 3f 00 00    	jmp    QWORD PTR [rip+0x3f0a]        # 4fd0 <usleep@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

00000000000010d0 <__cxa_finalize@plt>:
    10d0:	ff 25 22 3f 00 00    	jmp    QWORD PTR [rip+0x3f22]        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    10d6:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	31 ed                	xor    ebp,ebp
    10e2:	49 89 d1             	mov    r9,rdx
    10e5:	5e                   	pop    rsi
    10e6:	48 89 e2             	mov    rdx,rsp
    10e9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    10ed:	50                   	push   rax
    10ee:	54                   	push   rsp
    10ef:	4c 8d 05 2a 13 00 00 	lea    r8,[rip+0x132a]        # 2420 <__libc_csu_fini>
    10f6:	48 8d 0d c3 12 00 00 	lea    rcx,[rip+0x12c3]        # 23c0 <__libc_csu_init>
    10fd:	48 8d 3d 68 12 00 00 	lea    rdi,[rip+0x1268]        # 236c <main>
    1104:	ff 15 d6 3e 00 00    	call   QWORD PTR [rip+0x3ed6]        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    110a:	f4                   	hlt    
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d 51 42 00 00 	lea    rdi,[rip+0x4251]        # 5368 <__TMC_END__>
    1117:	48 8d 05 4a 42 00 00 	lea    rax,[rip+0x424a]        # 5368 <__TMC_END__>
    111e:	48 39 f8             	cmp    rax,rdi
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 ae 3e 00 00 	mov    rax,QWORD PTR [rip+0x3eae]        # 4fd8 <_ITM_deregisterTMCloneTable>
    112a:	48 85 c0             	test   rax,rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmp    rax
    1131:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d 21 42 00 00 	lea    rdi,[rip+0x4221]        # 5368 <__TMC_END__>
    1147:	48 8d 35 1a 42 00 00 	lea    rsi,[rip+0x421a]        # 5368 <__TMC_END__>
    114e:	48 29 fe             	sub    rsi,rdi
    1151:	48 c1 fe 03          	sar    rsi,0x3
    1155:	48 89 f0             	mov    rax,rsi
    1158:	48 c1 e8 3f          	shr    rax,0x3f
    115c:	48 01 c6             	add    rsi,rax
    115f:	48 d1 fe             	sar    rsi,1
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e85]        # 4ff0 <_ITM_registerTMCloneTable>
    116b:	48 85 c0             	test   rax,rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmp    rax
    1172:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001180 <__do_global_dtors_aux>:
    1180:	80 3d 01 42 00 00 00 	cmp    BYTE PTR [rip+0x4201],0x0        # 5388 <completed.7963>
    1187:	75 2f                	jne    11b8 <__do_global_dtors_aux+0x38>
    1189:	55                   	push   rbp
    118a:	48 83 3d 66 3e 00 00 	cmp    QWORD PTR [rip+0x3e66],0x0        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1191:	00 
    1192:	48 89 e5             	mov    rbp,rsp
    1195:	74 0c                	je     11a3 <__do_global_dtors_aux+0x23>
    1197:	48 8b 3d 6a 3e 00 00 	mov    rdi,QWORD PTR [rip+0x3e6a]        # 5008 <__dso_handle>
    119e:	e8 2d ff ff ff       	call   10d0 <__cxa_finalize@plt>
    11a3:	e8 68 ff ff ff       	call   1110 <deregister_tm_clones>
    11a8:	c6 05 d9 41 00 00 01 	mov    BYTE PTR [rip+0x41d9],0x1        # 5388 <completed.7963>
    11af:	5d                   	pop    rbp
    11b0:	c3                   	ret    
    11b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011c0 <frame_dummy>:
    11c0:	e9 7b ff ff ff       	jmp    1140 <register_tm_clones>

00000000000011c5 <print_string>:
    11c5:	55                   	push   rbp
    11c6:	48 89 e5             	mov    rbp,rsp
    11c9:	48 83 ec 20          	sub    rsp,0x20
    11cd:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    11d1:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
    11d4:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    11db:	eb 28                	jmp    1205 <print_string+0x40>
    11dd:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11e0:	48 63 d0             	movsxd rdx,eax
    11e3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    11e7:	48 01 d0             	add    rax,rdx
    11ea:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    11ed:	0f be c0             	movsx  eax,al
    11f0:	89 c7                	mov    edi,eax
    11f2:	e8 39 fe ff ff       	call   1030 <putchar@plt>
    11f7:	bf 98 3a 00 00       	mov    edi,0x3a98
    11fc:	e8 bf fe ff ff       	call   10c0 <usleep@plt>
    1201:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    1205:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1208:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
    120b:	7c d0                	jl     11dd <print_string+0x18>
    120d:	90                   	nop
    120e:	c9                   	leave  
    120f:	c3                   	ret    

0000000000001210 <setup_sale_items>:
    1210:	55                   	push   rbp
    1211:	48 89 e5             	mov    rbp,rsp
    1214:	48 81 ec 30 02 00 00 	sub    rsp,0x230
    121b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1222:	00 00 
    1224:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1228:	31 c0                	xor    eax,eax
    122a:	48 b8 66 6c 69 6d 73 	movabs rax,0x6e2079736d696c66
    1231:	79 20 6e 
    1234:	ba 65 74 00 00       	mov    edx,0x7465
    1239:	48 89 85 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],rax
    1240:	48 89 95 48 fe ff ff 	mov    QWORD PTR [rbp-0x1b8],rdx
    1247:	c7 85 50 fe ff ff 00 	mov    DWORD PTR [rbp-0x1b0],0x0
    124e:	00 00 00 
    1251:	48 b8 74 61 72 61 6e 	movabs rax,0x6c75746e61726174
    1258:	74 75 6c 
    125b:	ba 61 00 00 00       	mov    edx,0x61
    1260:	48 89 85 54 fe ff ff 	mov    QWORD PTR [rbp-0x1ac],rax
    1267:	48 89 95 5c fe ff ff 	mov    QWORD PTR [rbp-0x1a4],rdx
    126e:	c7 85 64 fe ff ff 00 	mov    DWORD PTR [rbp-0x19c],0x0
    1275:	00 00 00 
    1278:	48 b8 73 6c 69 6e 67 	movabs rax,0x6f6873676e696c73
    127f:	73 68 6f 
    1282:	ba 74 00 00 00       	mov    edx,0x74
    1287:	48 89 85 68 fe ff ff 	mov    QWORD PTR [rbp-0x198],rax
    128e:	48 89 95 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],rdx
    1295:	c7 85 78 fe ff ff 00 	mov    DWORD PTR [rbp-0x188],0x0
    129c:	00 00 00 
    129f:	48 b8 73 61 70 6c 69 	movabs rax,0x676e696c706173
    12a6:	6e 67 00 
    12a9:	ba 00 00 00 00       	mov    edx,0x0
    12ae:	48 89 85 7c fe ff ff 	mov    QWORD PTR [rbp-0x184],rax
    12b5:	48 89 95 84 fe ff ff 	mov    QWORD PTR [rbp-0x17c],rdx
    12bc:	c7 85 8c fe ff ff 00 	mov    DWORD PTR [rbp-0x174],0x0
    12c3:	00 00 00 
    12c6:	48 b8 63 68 65 72 72 	movabs rax,0x797272656863
    12cd:	79 00 00 
    12d0:	ba 00 00 00 00       	mov    edx,0x0
    12d5:	48 89 85 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],rax
    12dc:	48 89 95 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],rdx
    12e3:	c7 85 a0 fe ff ff 00 	mov    DWORD PTR [rbp-0x160],0x0
    12ea:	00 00 00 
    12ed:	48 c7 85 a4 fe ff ff 	mov    QWORD PTR [rbp-0x15c],0x67616c66
    12f4:	66 6c 61 67 
    12f8:	48 c7 85 ac fe ff ff 	mov    QWORD PTR [rbp-0x154],0x0
    12ff:	00 00 00 00 
    1303:	c7 85 b4 fe ff ff 00 	mov    DWORD PTR [rbp-0x14c],0x0
    130a:	00 00 00 
    130d:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
    1314:	48 8d 15 05 1d 00 00 	lea    rdx,[rip+0x1d05]        # 3020 <_IO_stdin_used+0x20>
    131b:	b9 25 00 00 00       	mov    ecx,0x25
    1320:	48 89 c7             	mov    rdi,rax
    1323:	48 89 d6             	mov    rsi,rdx
    1326:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
    1329:	48 89 f2             	mov    rdx,rsi
    132c:	48 89 f8             	mov    rax,rdi
    132f:	8b 0a                	mov    ecx,DWORD PTR [rdx]
    1331:	89 08                	mov    DWORD PTR [rax],ecx
    1333:	48 8d 40 04          	lea    rax,[rax+0x4]
    1337:	48 8d 52 04          	lea    rdx,[rdx+0x4]
    133b:	c7 85 e0 fd ff ff 90 	mov    DWORD PTR [rbp-0x220],0x190
    1342:	01 00 00 
    1345:	c7 85 e4 fd ff ff 40 	mov    DWORD PTR [rbp-0x21c],0x1f40
    134c:	1f 00 00 
    134f:	c7 85 e8 fd ff ff 84 	mov    DWORD PTR [rbp-0x218],0x384
    1356:	03 00 00 
    1359:	c7 85 ec fd ff ff 80 	mov    DWORD PTR [rbp-0x214],0x280
    1360:	02 00 00 
    1363:	c7 85 f0 fd ff ff 90 	mov    DWORD PTR [rbp-0x210],0x190
    136a:	01 00 00 
    136d:	c7 85 f4 fd ff ff a0 	mov    DWORD PTR [rbp-0x20c],0x668a0
    1374:	68 06 00 
    1377:	c7 85 00 fe ff ff 00 	mov    DWORD PTR [rbp-0x200],0x0
    137e:	00 00 00 
    1381:	c7 85 04 fe ff ff 00 	mov    DWORD PTR [rbp-0x1fc],0x0
    1388:	00 00 00 
    138b:	c7 85 08 fe ff ff 00 	mov    DWORD PTR [rbp-0x1f8],0x0
    1392:	00 00 00 
    1395:	c7 85 0c fe ff ff 00 	mov    DWORD PTR [rbp-0x1f4],0x0
    139c:	00 00 00 
    139f:	c7 85 10 fe ff ff 00 	mov    DWORD PTR [rbp-0x1f0],0x0
    13a6:	00 00 00 
    13a9:	c7 85 14 fe ff ff 00 	mov    DWORD PTR [rbp-0x1ec],0x0
    13b0:	00 00 00 
    13b3:	c7 85 20 fe ff ff 01 	mov    DWORD PTR [rbp-0x1e0],0x1
    13ba:	00 00 00 
    13bd:	c7 85 24 fe ff ff 02 	mov    DWORD PTR [rbp-0x1dc],0x2
    13c4:	00 00 00 
    13c7:	c7 85 28 fe ff ff 03 	mov    DWORD PTR [rbp-0x1d8],0x3
    13ce:	00 00 00 
    13d1:	c7 85 2c fe ff ff 04 	mov    DWORD PTR [rbp-0x1d4],0x4
    13d8:	00 00 00 
    13db:	c7 85 30 fe ff ff 05 	mov    DWORD PTR [rbp-0x1d0],0x5
    13e2:	00 00 00 
    13e5:	c7 85 34 fe ff ff 06 	mov    DWORD PTR [rbp-0x1cc],0x6
    13ec:	00 00 00 
    13ef:	c7 85 dc fd ff ff 00 	mov    DWORD PTR [rbp-0x224],0x0
    13f6:	00 00 00 
    13f9:	e9 6f 01 00 00       	jmp    156d <setup_sale_items+0x35d>
    13fe:	48 8d 8d 40 fe ff ff 	lea    rcx,[rbp-0x1c0]
    1405:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    140b:	48 63 d0             	movsxd rdx,eax
    140e:	48 89 d0             	mov    rax,rdx
    1411:	48 c1 e0 02          	shl    rax,0x2
    1415:	48 01 d0             	add    rax,rdx
    1418:	48 c1 e0 02          	shl    rax,0x2
    141c:	48 01 c1             	add    rcx,rax
    141f:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    1425:	48 63 d0             	movsxd rdx,eax
    1428:	48 89 d0             	mov    rax,rdx
    142b:	48 c1 e0 02          	shl    rax,0x2
    142f:	48 01 d0             	add    rax,rdx
    1432:	48 c1 e0 02          	shl    rax,0x2
    1436:	48 01 d0             	add    rax,rdx
    1439:	48 c1 e0 02          	shl    rax,0x2
    143d:	48 8d 15 5c 3f 00 00 	lea    rdx,[rip+0x3f5c]        # 53a0 <sale_items>
    1444:	48 01 d0             	add    rax,rdx
    1447:	48 89 ce             	mov    rsi,rcx
    144a:	48 89 c7             	mov    rdi,rax
    144d:	e8 ee fb ff ff       	call   1040 <strcpy@plt>
    1452:	48 8d 8d c0 fe ff ff 	lea    rcx,[rbp-0x140]
    1459:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    145f:	48 63 d0             	movsxd rdx,eax
    1462:	48 89 d0             	mov    rax,rdx
    1465:	48 c1 e0 02          	shl    rax,0x2
    1469:	48 01 d0             	add    rax,rdx
    146c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1473:	00 
    1474:	48 01 d0             	add    rax,rdx
    1477:	48 01 c0             	add    rax,rax
    147a:	48 01 c1             	add    rcx,rax
    147d:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    1483:	48 63 d0             	movsxd rdx,eax
    1486:	48 89 d0             	mov    rax,rdx
    1489:	48 c1 e0 02          	shl    rax,0x2
    148d:	48 01 d0             	add    rax,rdx
    1490:	48 c1 e0 02          	shl    rax,0x2
    1494:	48 01 d0             	add    rax,rdx
    1497:	48 c1 e0 02          	shl    rax,0x2
    149b:	48 8d 50 10          	lea    rdx,[rax+0x10]
    149f:	48 8d 05 fa 3e 00 00 	lea    rax,[rip+0x3efa]        # 53a0 <sale_items>
    14a6:	48 01 d0             	add    rax,rdx
    14a9:	48 83 c0 04          	add    rax,0x4
    14ad:	48 89 ce             	mov    rsi,rcx
    14b0:	48 89 c7             	mov    rdi,rax
    14b3:	e8 88 fb ff ff       	call   1040 <strcpy@plt>
    14b8:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    14be:	48 98                	cdqe   
    14c0:	8b 8c 85 e0 fd ff ff 	mov    ecx,DWORD PTR [rbp+rax*4-0x220]
    14c7:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    14cd:	48 63 d0             	movsxd rdx,eax
    14d0:	48 89 d0             	mov    rax,rdx
    14d3:	48 c1 e0 02          	shl    rax,0x2
    14d7:	48 01 d0             	add    rax,rdx
    14da:	48 c1 e0 02          	shl    rax,0x2
    14de:	48 01 d0             	add    rax,rdx
    14e1:	48 c1 e0 02          	shl    rax,0x2
    14e5:	48 89 c2             	mov    rdx,rax
    14e8:	48 8d 05 f9 3e 00 00 	lea    rax,[rip+0x3ef9]        # 53e8 <sale_items+0x48>
    14ef:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    14f2:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    14f8:	48 98                	cdqe   
    14fa:	8b 8c 85 00 fe ff ff 	mov    ecx,DWORD PTR [rbp+rax*4-0x200]
    1501:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    1507:	48 63 d0             	movsxd rdx,eax
    150a:	48 89 d0             	mov    rax,rdx
    150d:	48 c1 e0 02          	shl    rax,0x2
    1511:	48 01 d0             	add    rax,rdx
    1514:	48 c1 e0 02          	shl    rax,0x2
    1518:	48 01 d0             	add    rax,rdx
    151b:	48 c1 e0 02          	shl    rax,0x2
    151f:	48 89 c2             	mov    rdx,rax
    1522:	48 8d 05 c3 3e 00 00 	lea    rax,[rip+0x3ec3]        # 53ec <sale_items+0x4c>
    1529:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    152c:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    1532:	48 98                	cdqe   
    1534:	8b 8c 85 20 fe ff ff 	mov    ecx,DWORD PTR [rbp+rax*4-0x1e0]
    153b:	8b 85 dc fd ff ff    	mov    eax,DWORD PTR [rbp-0x224]
    1541:	48 63 d0             	movsxd rdx,eax
    1544:	48 89 d0             	mov    rax,rdx
    1547:	48 c1 e0 02          	shl    rax,0x2
    154b:	48 01 d0             	add    rax,rdx
    154e:	48 c1 e0 02          	shl    rax,0x2
    1552:	48 01 d0             	add    rax,rdx
    1555:	48 c1 e0 02          	shl    rax,0x2
    1559:	48 89 c2             	mov    rdx,rax
    155c:	48 8d 05 8d 3e 00 00 	lea    rax,[rip+0x3e8d]        # 53f0 <sale_items+0x50>
    1563:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    1566:	83 85 dc fd ff ff 01 	add    DWORD PTR [rbp-0x224],0x1
    156d:	83 bd dc fd ff ff 05 	cmp    DWORD PTR [rbp-0x224],0x5
    1574:	0f 8e 84 fe ff ff    	jle    13fe <setup_sale_items+0x1ee>
    157a:	90                   	nop
    157b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    157f:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    1586:	00 00 
    1588:	74 05                	je     158f <setup_sale_items+0x37f>
    158a:	e8 e1 fa ff ff       	call   1070 <__stack_chk_fail@plt>
    158f:	c9                   	leave  
    1590:	c3                   	ret    

0000000000001591 <setup_my_items>:
    1591:	55                   	push   rbp
    1592:	48 89 e5             	mov    rbp,rsp
    1595:	48 81 ec 60 01 00 00 	sub    rsp,0x160
    159c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    15a3:	00 00 
    15a5:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    15a9:	31 c0                	xor    eax,eax
    15ab:	48 b8 66 6c 69 6d 73 	movabs rax,0x612079736d696c66
    15b2:	79 20 61 
    15b5:	ba 78 65 00 00       	mov    edx,0x6578
    15ba:	48 89 85 e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],rax
    15c1:	48 89 95 e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],rdx
    15c8:	c7 85 f0 fe ff ff 00 	mov    DWORD PTR [rbp-0x110],0x0
    15cf:	00 00 00 
    15d2:	48 b8 6f 6c 69 76 65 	movabs rax,0x6c66206576696c6f
    15d9:	20 66 6c 
    15dc:	48 ba 6f 75 6e 64 65 	movabs rdx,0x7265646e756f
    15e3:	72 00 00 
    15e6:	48 89 85 f4 fe ff ff 	mov    QWORD PTR [rbp-0x10c],rax
    15ed:	48 89 95 fc fe ff ff 	mov    QWORD PTR [rbp-0x104],rdx
    15f4:	c7 85 04 ff ff ff 00 	mov    DWORD PTR [rbp-0xfc],0x0
    15fb:	00 00 00 
    15fe:	48 b8 73 6c 69 6e 67 	movabs rax,0x6f6873676e696c73
    1605:	73 68 6f 
    1608:	ba 74 00 00 00       	mov    edx,0x74
    160d:	48 89 85 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],rax
    1614:	48 89 95 10 ff ff ff 	mov    QWORD PTR [rbp-0xf0],rdx
    161b:	c7 85 18 ff ff ff 00 	mov    DWORD PTR [rbp-0xe8],0x0
    1622:	00 00 00 
    1625:	48 b8 66 6c 69 6d 73 	movabs rax,0x732079736d696c66
    162c:	79 20 73 
    162f:	48 ba 68 6f 76 65 6c 	movabs rdx,0x6c65766f68
    1636:	00 00 00 
    1639:	48 89 85 1c ff ff ff 	mov    QWORD PTR [rbp-0xe4],rax
    1640:	48 89 95 24 ff ff ff 	mov    QWORD PTR [rbp-0xdc],rdx
    1647:	c7 85 2c ff ff ff 00 	mov    DWORD PTR [rbp-0xd4],0x0
    164e:	00 00 00 
    1651:	48 b8 63 68 6f 70 20 	movabs rax,0x6f686320706f6863
    1658:	63 68 6f 
    165b:	48 ba 70 20 63 68 6f 	movabs rdx,0x706f68632070
    1662:	70 00 00 
    1665:	48 89 85 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rax
    166c:	48 89 95 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rdx
    1673:	48 c7 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],0x0
    167a:	00 00 00 00 
    167e:	48 c7 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],0x0
    1685:	00 00 00 00 
    1689:	48 c7 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],0x0
    1690:	00 00 00 00 
    1694:	48 c7 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],0x0
    169b:	00 00 00 00 
    169f:	66 c7 85 60 ff ff ff 	mov    WORD PTR [rbp-0xa0],0x0
    16a6:	00 00 
    16a8:	48 b8 69 74 27 73 20 	movabs rax,0x6f6f6c2073277469
    16af:	6c 6f 6f 
    16b2:	48 ba 6b 69 6e 67 20 	movabs rdx,0x20746120676e696b
    16b9:	61 74 20 
    16bc:	48 89 85 62 ff ff ff 	mov    QWORD PTR [rbp-0x9e],rax
    16c3:	48 89 95 6a ff ff ff 	mov    QWORD PTR [rbp-0x96],rdx
    16ca:	48 b8 6d 65 20 66 75 	movabs rax,0x796e6e756620656d
    16d1:	6e 6e 79 
    16d4:	ba 00 00 00 00       	mov    edx,0x0
    16d9:	48 89 85 72 ff ff ff 	mov    QWORD PTR [rbp-0x8e],rax
    16e0:	48 89 95 7a ff ff ff 	mov    QWORD PTR [rbp-0x86],rdx
    16e7:	48 c7 45 82 00 00 00 	mov    QWORD PTR [rbp-0x7e],0x0
    16ee:	00 
    16ef:	48 c7 45 8a 00 00 00 	mov    QWORD PTR [rbp-0x76],0x0
    16f6:	00 
    16f7:	66 c7 45 92 00 00    	mov    WORD PTR [rbp-0x6e],0x0
    16fd:	48 b8 74 68 65 20 63 	movabs rax,0x736f6c6320656874
    1704:	6c 6f 73 
    1707:	48 ba 65 73 74 20 74 	movabs rdx,0x6e69687420747365
    170e:	68 69 6e 
    1711:	48 89 45 94          	mov    QWORD PTR [rbp-0x6c],rax
    1715:	48 89 55 9c          	mov    QWORD PTR [rbp-0x64],rdx
    1719:	48 b8 67 20 79 6f 75 	movabs rax,0x616320756f792067
    1720:	20 63 61 
    1723:	48 ba 6e 20 67 65 74 	movabs rdx,0x6f7420746567206e
    172a:	20 74 6f 
    172d:	48 89 45 a4          	mov    QWORD PTR [rbp-0x5c],rax
    1731:	48 89 55 ac          	mov    QWORD PTR [rbp-0x54],rdx
    1735:	48 b8 20 61 20 67 75 	movabs rax,0x6e7567206120
    173c:	6e 00 00 
    173f:	ba 00 00 00 00       	mov    edx,0x0
    1744:	48 89 45 b4          	mov    QWORD PTR [rbp-0x4c],rax
    1748:	48 89 55 bc          	mov    QWORD PTR [rbp-0x44],rdx
    174c:	66 c7 45 c4 00 00    	mov    WORD PTR [rbp-0x3c],0x0
    1752:	48 b8 66 6f 72 20 64 	movabs rax,0x6767696420726f66
    1759:	69 67 67 
    175c:	48 ba 69 6e 67 20 79 	movabs rdx,0x72756f7920676e69
    1763:	6f 75 72 
    1766:	48 89 45 c6          	mov    QWORD PTR [rbp-0x3a],rax
    176a:	48 89 55 ce          	mov    QWORD PTR [rbp-0x32],rdx
    176e:	48 b8 73 65 6c 66 20 	movabs rax,0x74756f20666c6573
    1775:	6f 75 74 
    1778:	48 ba 20 6f 66 20 64 	movabs rdx,0x7462656420666f20
    177f:	65 62 74 
    1782:	48 89 45 d6          	mov    QWORD PTR [rbp-0x2a],rax
    1786:	48 89 55 de          	mov    QWORD PTR [rbp-0x22],rdx
    178a:	48 c7 45 e6 00 00 00 	mov    QWORD PTR [rbp-0x1a],0x0
    1791:	00 
    1792:	48 c7 45 ee 00 00 00 	mov    QWORD PTR [rbp-0x12],0x0
    1799:	00 
    179a:	66 c7 45 f6 00 00    	mov    WORD PTR [rbp-0xa],0x0
    17a0:	c7 85 b0 fe ff ff 20 	mov    DWORD PTR [rbp-0x150],0x320
    17a7:	03 00 00 
    17aa:	c7 85 b4 fe ff ff 20 	mov    DWORD PTR [rbp-0x14c],0x320
    17b1:	03 00 00 
    17b4:	c7 85 b8 fe ff ff 84 	mov    DWORD PTR [rbp-0x148],0x384
    17bb:	03 00 00 
    17be:	c7 85 bc fe ff ff 20 	mov    DWORD PTR [rbp-0x144],0x320
    17c5:	03 00 00 
    17c8:	c7 85 c0 fe ff ff 01 	mov    DWORD PTR [rbp-0x140],0x1
    17cf:	00 00 00 
    17d2:	c7 85 c4 fe ff ff 02 	mov    DWORD PTR [rbp-0x13c],0x2
    17d9:	00 00 00 
    17dc:	c7 85 c8 fe ff ff 01 	mov    DWORD PTR [rbp-0x138],0x1
    17e3:	00 00 00 
    17e6:	c7 85 cc fe ff ff 01 	mov    DWORD PTR [rbp-0x134],0x1
    17ed:	00 00 00 
    17f0:	c7 85 d0 fe ff ff 07 	mov    DWORD PTR [rbp-0x130],0x7
    17f7:	00 00 00 
    17fa:	c7 85 d4 fe ff ff 08 	mov    DWORD PTR [rbp-0x12c],0x8
    1801:	00 00 00 
    1804:	c7 85 d8 fe ff ff 03 	mov    DWORD PTR [rbp-0x128],0x3
    180b:	00 00 00 
    180e:	c7 85 dc fe ff ff 09 	mov    DWORD PTR [rbp-0x124],0x9
    1815:	00 00 00 
    1818:	c7 85 ac fe ff ff 00 	mov    DWORD PTR [rbp-0x154],0x0
    181f:	00 00 00 
    1822:	e9 6f 01 00 00       	jmp    1996 <setup_my_items+0x405>
    1827:	48 8d 8d e0 fe ff ff 	lea    rcx,[rbp-0x120]
    182e:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    1834:	48 63 d0             	movsxd rdx,eax
    1837:	48 89 d0             	mov    rax,rdx
    183a:	48 c1 e0 02          	shl    rax,0x2
    183e:	48 01 d0             	add    rax,rdx
    1841:	48 c1 e0 02          	shl    rax,0x2
    1845:	48 01 c1             	add    rcx,rax
    1848:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    184e:	48 63 d0             	movsxd rdx,eax
    1851:	48 89 d0             	mov    rax,rdx
    1854:	48 c1 e0 02          	shl    rax,0x2
    1858:	48 01 d0             	add    rax,rdx
    185b:	48 c1 e0 02          	shl    rax,0x2
    185f:	48 01 d0             	add    rax,rdx
    1862:	48 c1 e0 02          	shl    rax,0x2
    1866:	48 8d 15 33 3d 00 00 	lea    rdx,[rip+0x3d33]        # 55a0 <my_items>
    186d:	48 01 d0             	add    rax,rdx
    1870:	48 89 ce             	mov    rsi,rcx
    1873:	48 89 c7             	mov    rdi,rax
    1876:	e8 c5 f7 ff ff       	call   1040 <strcpy@plt>
    187b:	48 8d 8d 30 ff ff ff 	lea    rcx,[rbp-0xd0]
    1882:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    1888:	48 63 d0             	movsxd rdx,eax
    188b:	48 89 d0             	mov    rax,rdx
    188e:	48 c1 e0 02          	shl    rax,0x2
    1892:	48 01 d0             	add    rax,rdx
    1895:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    189c:	00 
    189d:	48 01 d0             	add    rax,rdx
    18a0:	48 01 c0             	add    rax,rax
    18a3:	48 01 c1             	add    rcx,rax
    18a6:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    18ac:	48 63 d0             	movsxd rdx,eax
    18af:	48 89 d0             	mov    rax,rdx
    18b2:	48 c1 e0 02          	shl    rax,0x2
    18b6:	48 01 d0             	add    rax,rdx
    18b9:	48 c1 e0 02          	shl    rax,0x2
    18bd:	48 01 d0             	add    rax,rdx
    18c0:	48 c1 e0 02          	shl    rax,0x2
    18c4:	48 8d 50 10          	lea    rdx,[rax+0x10]
    18c8:	48 8d 05 d1 3c 00 00 	lea    rax,[rip+0x3cd1]        # 55a0 <my_items>
    18cf:	48 01 d0             	add    rax,rdx
    18d2:	48 83 c0 04          	add    rax,0x4
    18d6:	48 89 ce             	mov    rsi,rcx
    18d9:	48 89 c7             	mov    rdi,rax
    18dc:	e8 5f f7 ff ff       	call   1040 <strcpy@plt>
    18e1:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    18e7:	48 98                	cdqe   
    18e9:	8b 8c 85 b0 fe ff ff 	mov    ecx,DWORD PTR [rbp+rax*4-0x150]
    18f0:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    18f6:	48 63 d0             	movsxd rdx,eax
    18f9:	48 89 d0             	mov    rax,rdx
    18fc:	48 c1 e0 02          	shl    rax,0x2
    1900:	48 01 d0             	add    rax,rdx
    1903:	48 c1 e0 02          	shl    rax,0x2
    1907:	48 01 d0             	add    rax,rdx
    190a:	48 c1 e0 02          	shl    rax,0x2
    190e:	48 89 c2             	mov    rdx,rax
    1911:	48 8d 05 d0 3c 00 00 	lea    rax,[rip+0x3cd0]        # 55e8 <my_items+0x48>
    1918:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    191b:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    1921:	48 98                	cdqe   
    1923:	8b 8c 85 c0 fe ff ff 	mov    ecx,DWORD PTR [rbp+rax*4-0x140]
    192a:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    1930:	48 63 d0             	movsxd rdx,eax
    1933:	48 89 d0             	mov    rax,rdx
    1936:	48 c1 e0 02          	shl    rax,0x2
    193a:	48 01 d0             	add    rax,rdx
    193d:	48 c1 e0 02          	shl    rax,0x2
    1941:	48 01 d0             	add    rax,rdx
    1944:	48 c1 e0 02          	shl    rax,0x2
    1948:	48 89 c2             	mov    rdx,rax
    194b:	48 8d 05 9a 3c 00 00 	lea    rax,[rip+0x3c9a]        # 55ec <my_items+0x4c>
    1952:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    1955:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    195b:	48 98                	cdqe   
    195d:	8b 8c 85 d0 fe ff ff 	mov    ecx,DWORD PTR [rbp+rax*4-0x130]
    1964:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    196a:	48 63 d0             	movsxd rdx,eax
    196d:	48 89 d0             	mov    rax,rdx
    1970:	48 c1 e0 02          	shl    rax,0x2
    1974:	48 01 d0             	add    rax,rdx
    1977:	48 c1 e0 02          	shl    rax,0x2
    197b:	48 01 d0             	add    rax,rdx
    197e:	48 c1 e0 02          	shl    rax,0x2
    1982:	48 89 c2             	mov    rdx,rax
    1985:	48 8d 05 64 3c 00 00 	lea    rax,[rip+0x3c64]        # 55f0 <my_items+0x50>
    198c:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    198f:	83 85 ac fe ff ff 01 	add    DWORD PTR [rbp-0x154],0x1
    1996:	8b 95 ac fe ff ff    	mov    edx,DWORD PTR [rbp-0x154]
    199c:	8b 05 82 36 00 00    	mov    eax,DWORD PTR [rip+0x3682]        # 5024 <num_items>
    19a2:	39 c2                	cmp    edx,eax
    19a4:	0f 82 7d fe ff ff    	jb     1827 <setup_my_items+0x296>
    19aa:	e9 94 00 00 00       	jmp    1a43 <setup_my_items+0x4b2>
    19af:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    19b5:	48 63 d0             	movsxd rdx,eax
    19b8:	48 89 d0             	mov    rax,rdx
    19bb:	48 c1 e0 02          	shl    rax,0x2
    19bf:	48 01 d0             	add    rax,rdx
    19c2:	48 c1 e0 02          	shl    rax,0x2
    19c6:	48 01 d0             	add    rax,rdx
    19c9:	48 c1 e0 02          	shl    rax,0x2
    19cd:	48 89 c2             	mov    rdx,rax
    19d0:	48 8d 05 11 3c 00 00 	lea    rax,[rip+0x3c11]        # 55e8 <my_items+0x48>
    19d7:	c7 04 02 ff ff ff ff 	mov    DWORD PTR [rdx+rax*1],0xffffffff
    19de:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    19e4:	48 63 d0             	movsxd rdx,eax
    19e7:	48 89 d0             	mov    rax,rdx
    19ea:	48 c1 e0 02          	shl    rax,0x2
    19ee:	48 01 d0             	add    rax,rdx
    19f1:	48 c1 e0 02          	shl    rax,0x2
    19f5:	48 01 d0             	add    rax,rdx
    19f8:	48 c1 e0 02          	shl    rax,0x2
    19fc:	48 89 c2             	mov    rdx,rax
    19ff:	48 8d 05 e6 3b 00 00 	lea    rax,[rip+0x3be6]        # 55ec <my_items+0x4c>
    1a06:	c7 04 02 ff ff ff ff 	mov    DWORD PTR [rdx+rax*1],0xffffffff
    1a0d:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
    1a13:	48 63 d0             	movsxd rdx,eax
    1a16:	48 89 d0             	mov    rax,rdx
    1a19:	48 c1 e0 02          	shl    rax,0x2
    1a1d:	48 01 d0             	add    rax,rdx
    1a20:	48 c1 e0 02          	shl    rax,0x2
    1a24:	48 01 d0             	add    rax,rdx
    1a27:	48 c1 e0 02          	shl    rax,0x2
    1a2b:	48 89 c2             	mov    rdx,rax
    1a2e:	48 8d 05 bb 3b 00 00 	lea    rax,[rip+0x3bbb]        # 55f0 <my_items+0x50>
    1a35:	c7 04 02 ff ff ff ff 	mov    DWORD PTR [rdx+rax*1],0xffffffff
    1a3c:	83 85 ac fe ff ff 01 	add    DWORD PTR [rbp-0x154],0x1
    1a43:	83 bd ac fe ff ff 04 	cmp    DWORD PTR [rbp-0x154],0x4
    1a4a:	0f 8e 5f ff ff ff    	jle    19af <setup_my_items+0x41e>
    1a50:	90                   	nop
    1a51:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1a55:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    1a5c:	00 00 
    1a5e:	74 05                	je     1a65 <setup_my_items+0x4d4>
    1a60:	e8 0b f6 ff ff       	call   1070 <__stack_chk_fail@plt>
    1a65:	c9                   	leave  
    1a66:	c3                   	ret    

0000000000001a67 <print_welcome>:
    1a67:	55                   	push   rbp
    1a68:	48 89 e5             	mov    rbp,rsp
    1a6b:	48 8d 3d da 16 00 00 	lea    rdi,[rip+0x16da]        # 314c <_IO_stdin_used+0x14c>
    1a72:	b8 00 00 00 00       	mov    eax,0x0
    1a77:	e8 04 f6 ff ff       	call   1080 <printf@plt>
    1a7c:	48 8d 3d dd 35 00 00 	lea    rdi,[rip+0x35dd]        # 5060 <welcome_str>
    1a83:	e8 d8 f5 ff ff       	call   1060 <strlen@plt>
    1a88:	89 c6                	mov    esi,eax
    1a8a:	48 8d 3d cf 35 00 00 	lea    rdi,[rip+0x35cf]        # 5060 <welcome_str>
    1a91:	e8 2f f7 ff ff       	call   11c5 <print_string>
    1a96:	90                   	nop
    1a97:	5d                   	pop    rbp
    1a98:	c3                   	ret    

0000000000001a99 <exit_game>:
    1a99:	55                   	push   rbp
    1a9a:	48 89 e5             	mov    rbp,rsp
    1a9d:	48 8d 3d a8 16 00 00 	lea    rdi,[rip+0x16a8]        # 314c <_IO_stdin_used+0x14c>
    1aa4:	b8 00 00 00 00       	mov    eax,0x0
    1aa9:	e8 d2 f5 ff ff       	call   1080 <printf@plt>
    1aae:	48 8d 3d eb 35 00 00 	lea    rdi,[rip+0x35eb]        # 50a0 <leave_str>
    1ab5:	e8 a6 f5 ff ff       	call   1060 <strlen@plt>
    1aba:	89 c6                	mov    esi,eax
    1abc:	48 8d 3d dd 35 00 00 	lea    rdi,[rip+0x35dd]        # 50a0 <leave_str>
    1ac3:	e8 fd f6 ff ff       	call   11c5 <print_string>
    1ac8:	90                   	nop
    1ac9:	5d                   	pop    rbp
    1aca:	c3                   	ret    

0000000000001acb <make_sale>:
    1acb:	55                   	push   rbp
    1acc:	48 89 e5             	mov    rbp,rsp
    1acf:	48 83 ec 20          	sub    rsp,0x20
    1ad3:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    1ad6:	48 8d 3d 6f 16 00 00 	lea    rdi,[rip+0x166f]        # 314c <_IO_stdin_used+0x14c>
    1add:	b8 00 00 00 00       	mov    eax,0x0
    1ae2:	e8 99 f5 ff ff       	call   1080 <printf@plt>
    1ae7:	48 8d 3d 12 36 00 00 	lea    rdi,[rip+0x3612]        # 5100 <sale_str>
    1aee:	e8 6d f5 ff ff       	call   1060 <strlen@plt>
    1af3:	89 c6                	mov    esi,eax
    1af5:	48 8d 3d 04 36 00 00 	lea    rdi,[rip+0x3604]        # 5100 <sale_str>
    1afc:	e8 c4 f6 ff ff       	call   11c5 <print_string>
    1b01:	c7 45 f4 ff ff ff ff 	mov    DWORD PTR [rbp-0xc],0xffffffff
    1b08:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    1b0f:	eb 52                	jmp    1b63 <make_sale+0x98>
    1b11:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1b14:	48 63 d0             	movsxd rdx,eax
    1b17:	48 89 d0             	mov    rax,rdx
    1b1a:	48 c1 e0 02          	shl    rax,0x2
    1b1e:	48 01 d0             	add    rax,rdx
    1b21:	48 c1 e0 02          	shl    rax,0x2
    1b25:	48 01 d0             	add    rax,rdx
    1b28:	48 c1 e0 02          	shl    rax,0x2
    1b2c:	48 89 c2             	mov    rdx,rax
    1b2f:	48 8d 05 ba 3a 00 00 	lea    rax,[rip+0x3aba]        # 55f0 <my_items+0x50>
    1b36:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1b39:	39 45 ec             	cmp    DWORD PTR [rbp-0x14],eax
    1b3c:	75 21                	jne    1b5f <make_sale+0x94>
    1b3e:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1b41:	48 98                	cdqe   
    1b43:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1b4a:	00 
    1b4b:	48 8d 05 de 34 00 00 	lea    rax,[rip+0x34de]        # 5030 <valid_items>
    1b52:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1b55:	85 c0                	test   eax,eax
    1b57:	74 06                	je     1b5f <make_sale+0x94>
    1b59:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1b5c:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    1b5f:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    1b63:	83 7d f8 04          	cmp    DWORD PTR [rbp-0x8],0x4
    1b67:	7e a8                	jle    1b11 <make_sale+0x46>
    1b69:	83 7d f4 ff          	cmp    DWORD PTR [rbp-0xc],0xffffffff
    1b6d:	0f 85 a1 01 00 00    	jne    1d14 <make_sale+0x249>
    1b73:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    1b7a:	eb 27                	jmp    1ba3 <make_sale+0xd8>
    1b7c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1b7f:	48 98                	cdqe   
    1b81:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1b88:	00 
    1b89:	48 8d 05 a0 34 00 00 	lea    rax,[rip+0x34a0]        # 5030 <valid_items>
    1b90:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1b93:	85 c0                	test   eax,eax
    1b95:	75 08                	jne    1b9f <make_sale+0xd4>
    1b97:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1b9a:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    1b9d:	eb 0a                	jmp    1ba9 <make_sale+0xde>
    1b9f:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    1ba3:	83 7d fc 04          	cmp    DWORD PTR [rbp-0x4],0x4
    1ba7:	7e d3                	jle    1b7c <make_sale+0xb1>
    1ba9:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1bac:	83 e8 01             	sub    eax,0x1
    1baf:	48 63 d0             	movsxd rdx,eax
    1bb2:	48 89 d0             	mov    rax,rdx
    1bb5:	48 c1 e0 02          	shl    rax,0x2
    1bb9:	48 01 d0             	add    rax,rdx
    1bbc:	48 c1 e0 02          	shl    rax,0x2
    1bc0:	48 01 d0             	add    rax,rdx
    1bc3:	48 c1 e0 02          	shl    rax,0x2
    1bc7:	48 8d 15 d2 37 00 00 	lea    rdx,[rip+0x37d2]        # 53a0 <sale_items>
    1bce:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
    1bd2:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1bd5:	48 63 d0             	movsxd rdx,eax
    1bd8:	48 89 d0             	mov    rax,rdx
    1bdb:	48 c1 e0 02          	shl    rax,0x2
    1bdf:	48 01 d0             	add    rax,rdx
    1be2:	48 c1 e0 02          	shl    rax,0x2
    1be6:	48 01 d0             	add    rax,rdx
    1be9:	48 c1 e0 02          	shl    rax,0x2
    1bed:	48 8d 15 ac 39 00 00 	lea    rdx,[rip+0x39ac]        # 55a0 <my_items>
    1bf4:	48 01 d0             	add    rax,rdx
    1bf7:	48 89 ce             	mov    rsi,rcx
    1bfa:	48 89 c7             	mov    rdi,rax
    1bfd:	e8 3e f4 ff ff       	call   1040 <strcpy@plt>
    1c02:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1c05:	83 e8 01             	sub    eax,0x1
    1c08:	48 63 d0             	movsxd rdx,eax
    1c0b:	48 89 d0             	mov    rax,rdx
    1c0e:	48 c1 e0 02          	shl    rax,0x2
    1c12:	48 01 d0             	add    rax,rdx
    1c15:	48 c1 e0 02          	shl    rax,0x2
    1c19:	48 01 d0             	add    rax,rdx
    1c1c:	48 c1 e0 02          	shl    rax,0x2
    1c20:	48 8d 50 10          	lea    rdx,[rax+0x10]
    1c24:	48 8d 05 75 37 00 00 	lea    rax,[rip+0x3775]        # 53a0 <sale_items>
    1c2b:	48 01 d0             	add    rax,rdx
    1c2e:	48 8d 48 04          	lea    rcx,[rax+0x4]
    1c32:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1c35:	48 63 d0             	movsxd rdx,eax
    1c38:	48 89 d0             	mov    rax,rdx
    1c3b:	48 c1 e0 02          	shl    rax,0x2
    1c3f:	48 01 d0             	add    rax,rdx
    1c42:	48 c1 e0 02          	shl    rax,0x2
    1c46:	48 01 d0             	add    rax,rdx
    1c49:	48 c1 e0 02          	shl    rax,0x2
    1c4d:	48 8d 50 10          	lea    rdx,[rax+0x10]
    1c51:	48 8d 05 48 39 00 00 	lea    rax,[rip+0x3948]        # 55a0 <my_items>
    1c58:	48 01 d0             	add    rax,rdx
    1c5b:	48 83 c0 04          	add    rax,0x4
    1c5f:	48 89 ce             	mov    rsi,rcx
    1c62:	48 89 c7             	mov    rdi,rax
    1c65:	e8 d6 f3 ff ff       	call   1040 <strcpy@plt>
    1c6a:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1c6d:	83 e8 01             	sub    eax,0x1
    1c70:	48 63 d0             	movsxd rdx,eax
    1c73:	48 89 d0             	mov    rax,rdx
    1c76:	48 c1 e0 02          	shl    rax,0x2
    1c7a:	48 01 d0             	add    rax,rdx
    1c7d:	48 c1 e0 02          	shl    rax,0x2
    1c81:	48 01 d0             	add    rax,rdx
    1c84:	48 c1 e0 02          	shl    rax,0x2
    1c88:	48 89 c2             	mov    rdx,rax
    1c8b:	48 8d 05 56 37 00 00 	lea    rax,[rip+0x3756]        # 53e8 <sale_items+0x48>
    1c92:	8b 0c 02             	mov    ecx,DWORD PTR [rdx+rax*1]
    1c95:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1c98:	48 63 d0             	movsxd rdx,eax
    1c9b:	48 89 d0             	mov    rax,rdx
    1c9e:	48 c1 e0 02          	shl    rax,0x2
    1ca2:	48 01 d0             	add    rax,rdx
    1ca5:	48 c1 e0 02          	shl    rax,0x2
    1ca9:	48 01 d0             	add    rax,rdx
    1cac:	48 c1 e0 02          	shl    rax,0x2
    1cb0:	48 89 c2             	mov    rdx,rax
    1cb3:	48 8d 05 2e 39 00 00 	lea    rax,[rip+0x392e]        # 55e8 <my_items+0x48>
    1cba:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    1cbd:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1cc0:	48 63 d0             	movsxd rdx,eax
    1cc3:	48 89 d0             	mov    rax,rdx
    1cc6:	48 c1 e0 02          	shl    rax,0x2
    1cca:	48 01 d0             	add    rax,rdx
    1ccd:	48 c1 e0 02          	shl    rax,0x2
    1cd1:	48 01 d0             	add    rax,rdx
    1cd4:	48 c1 e0 02          	shl    rax,0x2
    1cd8:	48 89 c1             	mov    rcx,rax
    1cdb:	48 8d 15 0e 39 00 00 	lea    rdx,[rip+0x390e]        # 55f0 <my_items+0x50>
    1ce2:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1ce5:	89 04 11             	mov    DWORD PTR [rcx+rdx*1],eax
    1ce8:	8b 05 36 33 00 00    	mov    eax,DWORD PTR [rip+0x3336]        # 5024 <num_items>
    1cee:	83 c0 01             	add    eax,0x1
    1cf1:	89 05 2d 33 00 00    	mov    DWORD PTR [rip+0x332d],eax        # 5024 <num_items>
    1cf7:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1cfa:	48 98                	cdqe   
    1cfc:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1d03:	00 
    1d04:	48 8d 05 25 33 00 00 	lea    rax,[rip+0x3325]        # 5030 <valid_items>
    1d0b:	c7 04 02 01 00 00 00 	mov    DWORD PTR [rdx+rax*1],0x1
    1d12:	eb 53                	jmp    1d67 <make_sale+0x29c>
    1d14:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1d17:	48 63 d0             	movsxd rdx,eax
    1d1a:	48 89 d0             	mov    rax,rdx
    1d1d:	48 c1 e0 02          	shl    rax,0x2
    1d21:	48 01 d0             	add    rax,rdx
    1d24:	48 c1 e0 02          	shl    rax,0x2
    1d28:	48 01 d0             	add    rax,rdx
    1d2b:	48 c1 e0 02          	shl    rax,0x2
    1d2f:	48 89 c2             	mov    rdx,rax
    1d32:	48 8d 05 b3 38 00 00 	lea    rax,[rip+0x38b3]        # 55ec <my_items+0x4c>
    1d39:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1d3c:	8d 48 01             	lea    ecx,[rax+0x1]
    1d3f:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1d42:	48 63 d0             	movsxd rdx,eax
    1d45:	48 89 d0             	mov    rax,rdx
    1d48:	48 c1 e0 02          	shl    rax,0x2
    1d4c:	48 01 d0             	add    rax,rdx
    1d4f:	48 c1 e0 02          	shl    rax,0x2
    1d53:	48 01 d0             	add    rax,rdx
    1d56:	48 c1 e0 02          	shl    rax,0x2
    1d5a:	48 89 c2             	mov    rdx,rax
    1d5d:	48 8d 05 88 38 00 00 	lea    rax,[rip+0x3888]        # 55ec <my_items+0x4c>
    1d64:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    1d67:	8b 0d b3 32 00 00    	mov    ecx,DWORD PTR [rip+0x32b3]        # 5020 <bells>
    1d6d:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    1d70:	83 e8 01             	sub    eax,0x1
    1d73:	48 63 d0             	movsxd rdx,eax
    1d76:	48 89 d0             	mov    rax,rdx
    1d79:	48 c1 e0 02          	shl    rax,0x2
    1d7d:	48 01 d0             	add    rax,rdx
    1d80:	48 c1 e0 02          	shl    rax,0x2
    1d84:	48 01 d0             	add    rax,rdx
    1d87:	48 c1 e0 02          	shl    rax,0x2
    1d8b:	48 89 c2             	mov    rdx,rax
    1d8e:	48 8d 05 53 36 00 00 	lea    rax,[rip+0x3653]        # 53e8 <sale_items+0x48>
    1d95:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1d98:	29 c1                	sub    ecx,eax
    1d9a:	89 c8                	mov    eax,ecx
    1d9c:	89 05 7e 32 00 00    	mov    DWORD PTR [rip+0x327e],eax        # 5020 <bells>
    1da2:	90                   	nop
    1da3:	c9                   	leave  
    1da4:	c3                   	ret    

0000000000001da5 <sale>:
    1da5:	55                   	push   rbp
    1da6:	48 89 e5             	mov    rbp,rsp
    1da9:	48 83 ec 10          	sub    rsp,0x10
    1dad:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1db4:	00 00 
    1db6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1dba:	31 c0                	xor    eax,eax
    1dbc:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    1dc3:	8b 05 57 32 00 00    	mov    eax,DWORD PTR [rip+0x3257]        # 5020 <bells>
    1dc9:	89 c6                	mov    esi,eax
    1dcb:	48 8d 3d 82 13 00 00 	lea    rdi,[rip+0x1382]        # 3154 <_IO_stdin_used+0x154>
    1dd2:	b8 00 00 00 00       	mov    eax,0x0
    1dd7:	e8 a4 f2 ff ff       	call   1080 <printf@plt>
    1ddc:	48 8d 3d 69 13 00 00 	lea    rdi,[rip+0x1369]        # 314c <_IO_stdin_used+0x14c>
    1de3:	b8 00 00 00 00       	mov    eax,0x0
    1de8:	e8 93 f2 ff ff       	call   1080 <printf@plt>
    1ded:	48 8d 3d 0c 33 00 00 	lea    rdi,[rip+0x330c]        # 5100 <sale_str>
    1df4:	e8 67 f2 ff ff       	call   1060 <strlen@plt>
    1df9:	89 c6                	mov    esi,eax
    1dfb:	48 8d 3d 3e 33 00 00 	lea    rdi,[rip+0x333e]        # 5140 <sale_str_1>
    1e02:	e8 be f3 ff ff       	call   11c5 <print_string>
    1e07:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    1e0e:	eb 6a                	jmp    1e7a <sale+0xd5>
    1e10:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1e13:	48 63 d0             	movsxd rdx,eax
    1e16:	48 89 d0             	mov    rax,rdx
    1e19:	48 c1 e0 02          	shl    rax,0x2
    1e1d:	48 01 d0             	add    rax,rdx
    1e20:	48 c1 e0 02          	shl    rax,0x2
    1e24:	48 01 d0             	add    rax,rdx
    1e27:	48 c1 e0 02          	shl    rax,0x2
    1e2b:	48 89 c2             	mov    rdx,rax
    1e2e:	48 8d 05 b3 35 00 00 	lea    rax,[rip+0x35b3]        # 53e8 <sale_items+0x48>
    1e35:	8b 0c 02             	mov    ecx,DWORD PTR [rdx+rax*1]
    1e38:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1e3b:	48 63 d0             	movsxd rdx,eax
    1e3e:	48 89 d0             	mov    rax,rdx
    1e41:	48 c1 e0 02          	shl    rax,0x2
    1e45:	48 01 d0             	add    rax,rdx
    1e48:	48 c1 e0 02          	shl    rax,0x2
    1e4c:	48 01 d0             	add    rax,rdx
    1e4f:	48 c1 e0 02          	shl    rax,0x2
    1e53:	48 8d 15 46 35 00 00 	lea    rdx,[rip+0x3546]        # 53a0 <sale_items>
    1e5a:	48 01 c2             	add    rdx,rax
    1e5d:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1e60:	83 c0 01             	add    eax,0x1
    1e63:	89 c6                	mov    esi,eax
    1e65:	48 8d 3d f2 12 00 00 	lea    rdi,[rip+0x12f2]        # 315e <_IO_stdin_used+0x15e>
    1e6c:	b8 00 00 00 00       	mov    eax,0x0
    1e71:	e8 0a f2 ff ff       	call   1080 <printf@plt>
    1e76:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    1e7a:	83 7d f4 05          	cmp    DWORD PTR [rbp-0xc],0x5
    1e7e:	7e 90                	jle    1e10 <sale+0x6b>
    1e80:	48 8d 45 f0          	lea    rax,[rbp-0x10]
    1e84:	48 89 c6             	mov    rsi,rax
    1e87:	48 8d 3d e3 12 00 00 	lea    rdi,[rip+0x12e3]        # 3171 <_IO_stdin_used+0x171>
    1e8e:	b8 00 00 00 00       	mov    eax,0x0
    1e93:	e8 18 f2 ff ff       	call   10b0 <__isoc99_scanf@plt>
    1e98:	90                   	nop
    1e99:	e8 f2 f1 ff ff       	call   1090 <getchar@plt>
    1e9e:	83 f8 0a             	cmp    eax,0xa
    1ea1:	75 f6                	jne    1e99 <sale+0xf4>
    1ea3:	bf 0a 00 00 00       	mov    edi,0xa
    1ea8:	e8 83 f1 ff ff       	call   1030 <putchar@plt>
    1ead:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    1eb0:	83 f8 06             	cmp    eax,0x6
    1eb3:	7f 07                	jg     1ebc <sale+0x117>
    1eb5:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    1eb8:	85 c0                	test   eax,eax
    1eba:	7f 0e                	jg     1eca <sale+0x125>
    1ebc:	48 8d 3d b1 12 00 00 	lea    rdi,[rip+0x12b1]        # 3174 <_IO_stdin_used+0x174>
    1ec3:	e8 88 f1 ff ff       	call   1050 <puts@plt>
    1ec8:	eb 5b                	jmp    1f25 <sale+0x180>
    1eca:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    1ecd:	83 e8 01             	sub    eax,0x1
    1ed0:	48 63 d0             	movsxd rdx,eax
    1ed3:	48 89 d0             	mov    rax,rdx
    1ed6:	48 c1 e0 02          	shl    rax,0x2
    1eda:	48 01 d0             	add    rax,rdx
    1edd:	48 c1 e0 02          	shl    rax,0x2
    1ee1:	48 01 d0             	add    rax,rdx
    1ee4:	48 c1 e0 02          	shl    rax,0x2
    1ee8:	48 89 c2             	mov    rdx,rax
    1eeb:	48 8d 05 f6 34 00 00 	lea    rax,[rip+0x34f6]        # 53e8 <sale_items+0x48>
    1ef2:	8b 14 02             	mov    edx,DWORD PTR [rdx+rax*1]
    1ef5:	8b 05 25 31 00 00    	mov    eax,DWORD PTR [rip+0x3125]        # 5020 <bells>
    1efb:	39 c2                	cmp    edx,eax
    1efd:	76 1c                	jbe    1f1b <sale+0x176>
    1eff:	48 8d 3d 7a 32 00 00 	lea    rdi,[rip+0x327a]        # 5180 <cant_afford>
    1f06:	e8 55 f1 ff ff       	call   1060 <strlen@plt>
    1f0b:	89 c6                	mov    esi,eax
    1f0d:	48 8d 3d 6c 32 00 00 	lea    rdi,[rip+0x326c]        # 5180 <cant_afford>
    1f14:	e8 ac f2 ff ff       	call   11c5 <print_string>
    1f19:	eb 0a                	jmp    1f25 <sale+0x180>
    1f1b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    1f1e:	89 c7                	mov    edi,eax
    1f20:	e8 a6 fb ff ff       	call   1acb <make_sale>
    1f25:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1f29:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    1f30:	00 00 
    1f32:	74 05                	je     1f39 <sale+0x194>
    1f34:	e8 37 f1 ff ff       	call   1070 <__stack_chk_fail@plt>
    1f39:	c9                   	leave  
    1f3a:	c3                   	ret    

0000000000001f3b <sell_item>:
    1f3b:	55                   	push   rbp
    1f3c:	48 89 e5             	mov    rbp,rsp
    1f3f:	48 83 ec 10          	sub    rsp,0x10
    1f43:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1f46:	48 8d 3d ff 11 00 00 	lea    rdi,[rip+0x11ff]        # 314c <_IO_stdin_used+0x14c>
    1f4d:	b8 00 00 00 00       	mov    eax,0x0
    1f52:	e8 29 f1 ff ff       	call   1080 <printf@plt>
    1f57:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1f5a:	48 63 d0             	movsxd rdx,eax
    1f5d:	48 89 d0             	mov    rax,rdx
    1f60:	48 c1 e0 02          	shl    rax,0x2
    1f64:	48 01 d0             	add    rax,rdx
    1f67:	48 c1 e0 02          	shl    rax,0x2
    1f6b:	48 01 d0             	add    rax,rdx
    1f6e:	48 c1 e0 02          	shl    rax,0x2
    1f72:	48 8d 15 27 36 00 00 	lea    rdx,[rip+0x3627]        # 55a0 <my_items>
    1f79:	48 01 d0             	add    rax,rdx
    1f7c:	48 89 c6             	mov    rsi,rax
    1f7f:	48 8d 3d fd 11 00 00 	lea    rdi,[rip+0x11fd]        # 3183 <_IO_stdin_used+0x183>
    1f86:	b8 00 00 00 00       	mov    eax,0x0
    1f8b:	e8 f0 f0 ff ff       	call   1080 <printf@plt>
    1f90:	48 8d 3d c9 32 00 00 	lea    rdi,[rip+0x32c9]        # 5260 <sure>
    1f97:	e8 c4 f0 ff ff       	call   1060 <strlen@plt>
    1f9c:	89 c6                	mov    esi,eax
    1f9e:	48 8d 3d bb 32 00 00 	lea    rdi,[rip+0x32bb]        # 5260 <sure>
    1fa5:	e8 1b f2 ff ff       	call   11c5 <print_string>
    1faa:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1fad:	48 63 d0             	movsxd rdx,eax
    1fb0:	48 89 d0             	mov    rax,rdx
    1fb3:	48 c1 e0 02          	shl    rax,0x2
    1fb7:	48 01 d0             	add    rax,rdx
    1fba:	48 c1 e0 02          	shl    rax,0x2
    1fbe:	48 01 d0             	add    rax,rdx
    1fc1:	48 c1 e0 02          	shl    rax,0x2
    1fc5:	48 89 c2             	mov    rdx,rax
    1fc8:	48 8d 05 19 36 00 00 	lea    rax,[rip+0x3619]        # 55e8 <my_items+0x48>
    1fcf:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1fd2:	89 c6                	mov    esi,eax
    1fd4:	48 8d 3d af 11 00 00 	lea    rdi,[rip+0x11af]        # 318a <_IO_stdin_used+0x18a>
    1fdb:	b8 00 00 00 00       	mov    eax,0x0
    1fe0:	e8 9b f0 ff ff       	call   1080 <printf@plt>
    1fe5:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1fe8:	48 63 d0             	movsxd rdx,eax
    1feb:	48 89 d0             	mov    rax,rdx
    1fee:	48 c1 e0 02          	shl    rax,0x2
    1ff2:	48 01 d0             	add    rax,rdx
    1ff5:	48 c1 e0 02          	shl    rax,0x2
    1ff9:	48 01 d0             	add    rax,rdx
    1ffc:	48 c1 e0 02          	shl    rax,0x2
    2000:	48 89 c2             	mov    rdx,rax
    2003:	48 8d 05 e2 35 00 00 	lea    rax,[rip+0x35e2]        # 55ec <my_items+0x4c>
    200a:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    200d:	8d 48 ff             	lea    ecx,[rax-0x1]
    2010:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    2013:	48 63 d0             	movsxd rdx,eax
    2016:	48 89 d0             	mov    rax,rdx
    2019:	48 c1 e0 02          	shl    rax,0x2
    201d:	48 01 d0             	add    rax,rdx
    2020:	48 c1 e0 02          	shl    rax,0x2
    2024:	48 01 d0             	add    rax,rdx
    2027:	48 c1 e0 02          	shl    rax,0x2
    202b:	48 89 c2             	mov    rdx,rax
    202e:	48 8d 05 b7 35 00 00 	lea    rax,[rip+0x35b7]        # 55ec <my_items+0x4c>
    2035:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
    2038:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    203b:	48 63 d0             	movsxd rdx,eax
    203e:	48 89 d0             	mov    rax,rdx
    2041:	48 c1 e0 02          	shl    rax,0x2
    2045:	48 01 d0             	add    rax,rdx
    2048:	48 c1 e0 02          	shl    rax,0x2
    204c:	48 01 d0             	add    rax,rdx
    204f:	48 c1 e0 02          	shl    rax,0x2
    2053:	48 89 c2             	mov    rdx,rax
    2056:	48 8d 05 8b 35 00 00 	lea    rax,[rip+0x358b]        # 55e8 <my_items+0x48>
    205d:	8b 14 02             	mov    edx,DWORD PTR [rdx+rax*1]
    2060:	8b 05 ba 2f 00 00    	mov    eax,DWORD PTR [rip+0x2fba]        # 5020 <bells>
    2066:	01 d0                	add    eax,edx
    2068:	89 05 b2 2f 00 00    	mov    DWORD PTR [rip+0x2fb2],eax        # 5020 <bells>
    206e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    2071:	48 63 d0             	movsxd rdx,eax
    2074:	48 89 d0             	mov    rax,rdx
    2077:	48 c1 e0 02          	shl    rax,0x2
    207b:	48 01 d0             	add    rax,rdx
    207e:	48 c1 e0 02          	shl    rax,0x2
    2082:	48 01 d0             	add    rax,rdx
    2085:	48 c1 e0 02          	shl    rax,0x2
    2089:	48 89 c2             	mov    rdx,rax
    208c:	48 8d 05 59 35 00 00 	lea    rax,[rip+0x3559]        # 55ec <my_items+0x4c>
    2093:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    2096:	85 c0                	test   eax,eax
    2098:	75 2a                	jne    20c4 <sell_item+0x189>
    209a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    209d:	48 98                	cdqe   
    209f:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    20a6:	00 
    20a7:	48 8d 05 82 2f 00 00 	lea    rax,[rip+0x2f82]        # 5030 <valid_items>
    20ae:	c7 04 02 00 00 00 00 	mov    DWORD PTR [rdx+rax*1],0x0
    20b5:	8b 05 69 2f 00 00    	mov    eax,DWORD PTR [rip+0x2f69]        # 5024 <num_items>
    20bb:	83 e8 01             	sub    eax,0x1
    20be:	89 05 60 2f 00 00    	mov    DWORD PTR [rip+0x2f60],eax        # 5024 <num_items>
    20c4:	48 8d 3d b5 31 00 00 	lea    rdi,[rip+0x31b5]        # 5280 <thanks>
    20cb:	e8 90 ef ff ff       	call   1060 <strlen@plt>
    20d0:	89 c6                	mov    esi,eax
    20d2:	48 8d 3d a7 31 00 00 	lea    rdi,[rip+0x31a7]        # 5280 <thanks>
    20d9:	e8 e7 f0 ff ff       	call   11c5 <print_string>
    20de:	90                   	nop
    20df:	c9                   	leave  
    20e0:	c3                   	ret    

00000000000020e1 <sell>:
    20e1:	55                   	push   rbp
    20e2:	48 89 e5             	mov    rbp,rsp
    20e5:	48 83 ec 10          	sub    rsp,0x10
    20e9:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    20f0:	00 00 
    20f2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    20f6:	31 c0                	xor    eax,eax
    20f8:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    20ff:	48 8d 3d 9a 31 00 00 	lea    rdi,[rip+0x319a]        # 52a0 <sell_str>
    2106:	e8 55 ef ff ff       	call   1060 <strlen@plt>
    210b:	89 c6                	mov    esi,eax
    210d:	48 8d 3d 8c 31 00 00 	lea    rdi,[rip+0x318c]        # 52a0 <sell_str>
    2114:	e8 ac f0 ff ff       	call   11c5 <print_string>
    2119:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2120:	e9 b9 00 00 00       	jmp    21de <sell+0xfd>
    2125:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    2128:	48 98                	cdqe   
    212a:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2131:	00 
    2132:	48 8d 05 f7 2e 00 00 	lea    rax,[rip+0x2ef7]        # 5030 <valid_items>
    2139:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    213c:	85 c0                	test   eax,eax
    213e:	0f 84 96 00 00 00    	je     21da <sell+0xf9>
    2144:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    2147:	48 63 d0             	movsxd rdx,eax
    214a:	48 89 d0             	mov    rax,rdx
    214d:	48 c1 e0 02          	shl    rax,0x2
    2151:	48 01 d0             	add    rax,rdx
    2154:	48 c1 e0 02          	shl    rax,0x2
    2158:	48 01 d0             	add    rax,rdx
    215b:	48 c1 e0 02          	shl    rax,0x2
    215f:	48 89 c2             	mov    rdx,rax
    2162:	48 8d 05 7f 34 00 00 	lea    rax,[rip+0x347f]        # 55e8 <my_items+0x48>
    2169:	8b 34 02             	mov    esi,DWORD PTR [rdx+rax*1]
    216c:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    216f:	48 63 d0             	movsxd rdx,eax
    2172:	48 89 d0             	mov    rax,rdx
    2175:	48 c1 e0 02          	shl    rax,0x2
    2179:	48 01 d0             	add    rax,rdx
    217c:	48 c1 e0 02          	shl    rax,0x2
    2180:	48 01 d0             	add    rax,rdx
    2183:	48 c1 e0 02          	shl    rax,0x2
    2187:	48 8d 50 10          	lea    rdx,[rax+0x10]
    218b:	48 8d 05 0e 34 00 00 	lea    rax,[rip+0x340e]        # 55a0 <my_items>
    2192:	48 01 d0             	add    rax,rdx
    2195:	48 8d 48 04          	lea    rcx,[rax+0x4]
    2199:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    219c:	48 63 d0             	movsxd rdx,eax
    219f:	48 89 d0             	mov    rax,rdx
    21a2:	48 c1 e0 02          	shl    rax,0x2
    21a6:	48 01 d0             	add    rax,rdx
    21a9:	48 c1 e0 02          	shl    rax,0x2
    21ad:	48 01 d0             	add    rax,rdx
    21b0:	48 c1 e0 02          	shl    rax,0x2
    21b4:	48 8d 15 e5 33 00 00 	lea    rdx,[rip+0x33e5]        # 55a0 <my_items>
    21bb:	48 01 c2             	add    rdx,rax
    21be:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    21c1:	83 c0 01             	add    eax,0x1
    21c4:	41 89 f0             	mov    r8d,esi
    21c7:	89 c6                	mov    esi,eax
    21c9:	48 8d 3d c5 0f 00 00 	lea    rdi,[rip+0xfc5]        # 3195 <_IO_stdin_used+0x195>
    21d0:	b8 00 00 00 00       	mov    eax,0x0
    21d5:	e8 a6 ee ff ff       	call   1080 <printf@plt>
    21da:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    21de:	83 7d f4 04          	cmp    DWORD PTR [rbp-0xc],0x4
    21e2:	0f 8e 3d ff ff ff    	jle    2125 <sell+0x44>
    21e8:	48 8d 45 f0          	lea    rax,[rbp-0x10]
    21ec:	48 89 c6             	mov    rsi,rax
    21ef:	48 8d 3d 7b 0f 00 00 	lea    rdi,[rip+0xf7b]        # 3171 <_IO_stdin_used+0x171>
    21f6:	b8 00 00 00 00       	mov    eax,0x0
    21fb:	e8 b0 ee ff ff       	call   10b0 <__isoc99_scanf@plt>
    2200:	90                   	nop
    2201:	e8 8a ee ff ff       	call   1090 <getchar@plt>
    2206:	83 f8 0a             	cmp    eax,0xa
    2209:	75 f6                	jne    2201 <sell+0x120>
    220b:	bf 0a 00 00 00       	mov    edi,0xa
    2210:	e8 1b ee ff ff       	call   1030 <putchar@plt>
    2215:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    2218:	85 c0                	test   eax,eax
    221a:	7e 26                	jle    2242 <sell+0x161>
    221c:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    221f:	83 f8 05             	cmp    eax,0x5
    2222:	7f 1e                	jg     2242 <sell+0x161>
    2224:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    2227:	83 e8 01             	sub    eax,0x1
    222a:	48 98                	cdqe   
    222c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2233:	00 
    2234:	48 8d 05 f5 2d 00 00 	lea    rax,[rip+0x2df5]        # 5030 <valid_items>
    223b:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    223e:	85 c0                	test   eax,eax
    2240:	75 0e                	jne    2250 <sell+0x16f>
    2242:	48 8d 3d 2b 0f 00 00 	lea    rdi,[rip+0xf2b]        # 3174 <_IO_stdin_used+0x174>
    2249:	e8 02 ee ff ff       	call   1050 <puts@plt>
    224e:	eb 0d                	jmp    225d <sell+0x17c>
    2250:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    2253:	83 e8 01             	sub    eax,0x1
    2256:	89 c7                	mov    edi,eax
    2258:	e8 de fc ff ff       	call   1f3b <sell_item>
    225d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2261:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    2268:	00 00 
    226a:	74 05                	je     2271 <sell+0x190>
    226c:	e8 ff ed ff ff       	call   1070 <__stack_chk_fail@plt>
    2271:	c9                   	leave  
    2272:	c3                   	ret    

0000000000002273 <store>:
    2273:	55                   	push   rbp
    2274:	48 89 e5             	mov    rbp,rsp
    2277:	48 83 ec 10          	sub    rsp,0x10
    227b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2282:	00 00 
    2284:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2288:	31 c0                	xor    eax,eax
    228a:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2291:	48 8d 3d 1a 0f 00 00 	lea    rdi,[rip+0xf1a]        # 31b2 <_IO_stdin_used+0x1b2>
    2298:	e8 b3 ed ff ff       	call   1050 <puts@plt>
    229d:	48 8d 3d 20 0f 00 00 	lea    rdi,[rip+0xf20]        # 31c4 <_IO_stdin_used+0x1c4>
    22a4:	e8 a7 ed ff ff       	call   1050 <puts@plt>
    22a9:	48 8d 3d 28 0f 00 00 	lea    rdi,[rip+0xf28]        # 31d8 <_IO_stdin_used+0x1d8>
    22b0:	e8 9b ed ff ff       	call   1050 <puts@plt>
    22b5:	48 8d 3d 2e 0f 00 00 	lea    rdi,[rip+0xf2e]        # 31ea <_IO_stdin_used+0x1ea>
    22bc:	b8 00 00 00 00       	mov    eax,0x0
    22c1:	e8 ba ed ff ff       	call   1080 <printf@plt>
    22c6:	48 8d 45 f4          	lea    rax,[rbp-0xc]
    22ca:	48 89 c6             	mov    rsi,rax
    22cd:	48 8d 3d 9d 0e 00 00 	lea    rdi,[rip+0xe9d]        # 3171 <_IO_stdin_used+0x171>
    22d4:	b8 00 00 00 00       	mov    eax,0x0
    22d9:	e8 d2 ed ff ff       	call   10b0 <__isoc99_scanf@plt>
    22de:	90                   	nop
    22df:	e8 ac ed ff ff       	call   1090 <getchar@plt>
    22e4:	83 f8 0a             	cmp    eax,0xa
    22e7:	75 f6                	jne    22df <store+0x6c>
    22e9:	bf 0a 00 00 00       	mov    edi,0xa
    22ee:	e8 3d ed ff ff       	call   1030 <putchar@plt>
    22f3:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    22f6:	83 f8 02             	cmp    eax,0x2
    22f9:	74 16                	je     2311 <store+0x9e>
    22fb:	83 f8 03             	cmp    eax,0x3
    22fe:	74 44                	je     2344 <store+0xd1>
    2300:	83 f8 01             	cmp    eax,0x1
    2303:	75 85                	jne    228a <store+0x17>
    2305:	b8 00 00 00 00       	mov    eax,0x0
    230a:	e8 d2 fd ff ff       	call   20e1 <sell>
    230f:	eb 4f                	jmp    2360 <store+0xed>
    2311:	8b 05 0d 2d 00 00    	mov    eax,DWORD PTR [rip+0x2d0d]        # 5024 <num_items>
    2317:	83 f8 04             	cmp    eax,0x4
    231a:	76 1c                	jbe    2338 <store+0xc5>
    231c:	48 8d 3d bd 2f 00 00 	lea    rdi,[rip+0x2fbd]        # 52e0 <bag_full>
    2323:	e8 38 ed ff ff       	call   1060 <strlen@plt>
    2328:	89 c6                	mov    esi,eax
    232a:	48 8d 3d af 2f 00 00 	lea    rdi,[rip+0x2faf]        # 52e0 <bag_full>
    2331:	e8 8f ee ff ff       	call   11c5 <print_string>
    2336:	eb 28                	jmp    2360 <store+0xed>
    2338:	b8 00 00 00 00       	mov    eax,0x0
    233d:	e8 63 fa ff ff       	call   1da5 <sale>
    2342:	eb 1c                	jmp    2360 <store+0xed>
    2344:	b8 00 00 00 00       	mov    eax,0x0
    2349:	e8 4b f7 ff ff       	call   1a99 <exit_game>
    234e:	90                   	nop
    234f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2353:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    235a:	00 00 
    235c:	74 0c                	je     236a <store+0xf7>
    235e:	eb 05                	jmp    2365 <store+0xf2>
    2360:	e9 25 ff ff ff       	jmp    228a <store+0x17>
    2365:	e8 06 ed ff ff       	call   1070 <__stack_chk_fail@plt>
    236a:	c9                   	leave  
    236b:	c3                   	ret    

000000000000236c <main>:
    236c:	55                   	push   rbp
    236d:	48 89 e5             	mov    rbp,rsp
    2370:	48 8b 05 09 30 00 00 	mov    rax,QWORD PTR [rip+0x3009]        # 5380 <stdout@@GLIBC_2.2.5>
    2377:	b9 00 00 00 00       	mov    ecx,0x0
    237c:	ba 02 00 00 00       	mov    edx,0x2
    2381:	be 00 00 00 00       	mov    esi,0x0
    2386:	48 89 c7             	mov    rdi,rax
    2389:	e8 12 ed ff ff       	call   10a0 <setvbuf@plt>
    238e:	b8 00 00 00 00       	mov    eax,0x0
    2393:	e8 78 ee ff ff       	call   1210 <setup_sale_items>
    2398:	b8 00 00 00 00       	mov    eax,0x0
    239d:	e8 ef f1 ff ff       	call   1591 <setup_my_items>
    23a2:	b8 00 00 00 00       	mov    eax,0x0
    23a7:	e8 bb f6 ff ff       	call   1a67 <print_welcome>
    23ac:	b8 00 00 00 00       	mov    eax,0x0
    23b1:	e8 bd fe ff ff       	call   2273 <store>
    23b6:	b8 00 00 00 00       	mov    eax,0x0
    23bb:	5d                   	pop    rbp
    23bc:	c3                   	ret    
    23bd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000023c0 <__libc_csu_init>:
    23c0:	41 57                	push   r15
    23c2:	49 89 d7             	mov    r15,rdx
    23c5:	41 56                	push   r14
    23c7:	49 89 f6             	mov    r14,rsi
    23ca:	41 55                	push   r13
    23cc:	41 89 fd             	mov    r13d,edi
    23cf:	41 54                	push   r12
    23d1:	4c 8d 25 98 29 00 00 	lea    r12,[rip+0x2998]        # 4d70 <__frame_dummy_init_array_entry>
    23d8:	55                   	push   rbp
    23d9:	48 8d 2d 98 29 00 00 	lea    rbp,[rip+0x2998]        # 4d78 <__init_array_end>
    23e0:	53                   	push   rbx
    23e1:	4c 29 e5             	sub    rbp,r12
    23e4:	48 83 ec 08          	sub    rsp,0x8
    23e8:	e8 13 ec ff ff       	call   1000 <_init>
    23ed:	48 c1 fd 03          	sar    rbp,0x3
    23f1:	74 1b                	je     240e <__libc_csu_init+0x4e>
    23f3:	31 db                	xor    ebx,ebx
    23f5:	0f 1f 00             	nop    DWORD PTR [rax]
    23f8:	4c 89 fa             	mov    rdx,r15
    23fb:	4c 89 f6             	mov    rsi,r14
    23fe:	44 89 ef             	mov    edi,r13d
    2401:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    2405:	48 83 c3 01          	add    rbx,0x1
    2409:	48 39 dd             	cmp    rbp,rbx
    240c:	75 ea                	jne    23f8 <__libc_csu_init+0x38>
    240e:	48 83 c4 08          	add    rsp,0x8
    2412:	5b                   	pop    rbx
    2413:	5d                   	pop    rbp
    2414:	41 5c                	pop    r12
    2416:	41 5d                	pop    r13
    2418:	41 5e                	pop    r14
    241a:	41 5f                	pop    r15
    241c:	c3                   	ret    
    241d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000002420 <__libc_csu_fini>:
    2420:	c3                   	ret    

Disassembly of section .fini:

0000000000002424 <_fini>:
    2424:	48 83 ec 08          	sub    rsp,0x8
    2428:	48 83 c4 08          	add    rsp,0x8
    242c:	c3                   	ret    
