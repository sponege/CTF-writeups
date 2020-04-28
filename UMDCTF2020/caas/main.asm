
main:     file format elf64-x86-64


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
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <strcpy@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <strcpy@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <puts@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 4020 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <setenv@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 4028 <setenv@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <setbuf@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4030 <setbuf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

0000000000001070 <system@plt>:
    1070:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 4038 <system@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

0000000000001080 <strcspn@plt>:
    1080:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 4040 <strcspn@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

0000000000001090 <fgets@plt>:
    1090:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 4048 <fgets@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	ff 25 52 2f 00 00    	jmp    QWORD PTR [rip+0x2f52]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10a6:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000010b0 <_start>:
    10b0:	31 ed                	xor    ebp,ebp
    10b2:	49 89 d1             	mov    r9,rdx
    10b5:	5e                   	pop    rsi
    10b6:	48 89 e2             	mov    rdx,rsp
    10b9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    10bd:	50                   	push   rax
    10be:	54                   	push   rsp
    10bf:	4c 8d 05 fa 01 00 00 	lea    r8,[rip+0x1fa]        # 12c0 <__libc_csu_fini>
    10c6:	48 8d 0d 93 01 00 00 	lea    rcx,[rip+0x193]        # 1260 <__libc_csu_init>
    10cd:	48 8d 3d 24 01 00 00 	lea    rdi,[rip+0x124]        # 11f8 <main>
    10d4:	ff 15 06 2f 00 00    	call   QWORD PTR [rip+0x2f06]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10da:	f4                   	hlt    
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <deregister_tm_clones>:
    10e0:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4060 <stdout@@GLIBC_2.2.5>
    10e7:	48 8d 05 72 2f 00 00 	lea    rax,[rip+0x2f72]        # 4060 <stdout@@GLIBC_2.2.5>
    10ee:	48 39 f8             	cmp    rax,rdi
    10f1:	74 15                	je     1108 <deregister_tm_clones+0x28>
    10f3:	48 8b 05 de 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ede]        # 3fd8 <_ITM_deregisterTMCloneTable>
    10fa:	48 85 c0             	test   rax,rax
    10fd:	74 09                	je     1108 <deregister_tm_clones+0x28>
    10ff:	ff e0                	jmp    rax
    1101:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1108:	c3                   	ret    
    1109:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001110 <register_tm_clones>:
    1110:	48 8d 3d 49 2f 00 00 	lea    rdi,[rip+0x2f49]        # 4060 <stdout@@GLIBC_2.2.5>
    1117:	48 8d 35 42 2f 00 00 	lea    rsi,[rip+0x2f42]        # 4060 <stdout@@GLIBC_2.2.5>
    111e:	48 29 fe             	sub    rsi,rdi
    1121:	48 c1 fe 03          	sar    rsi,0x3
    1125:	48 89 f0             	mov    rax,rsi
    1128:	48 c1 e8 3f          	shr    rax,0x3f
    112c:	48 01 c6             	add    rsi,rax
    112f:	48 d1 fe             	sar    rsi,1
    1132:	74 14                	je     1148 <register_tm_clones+0x38>
    1134:	48 8b 05 b5 2e 00 00 	mov    rax,QWORD PTR [rip+0x2eb5]        # 3ff0 <_ITM_registerTMCloneTable>
    113b:	48 85 c0             	test   rax,rax
    113e:	74 08                	je     1148 <register_tm_clones+0x38>
    1140:	ff e0                	jmp    rax
    1142:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1148:	c3                   	ret    
    1149:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001150 <__do_global_dtors_aux>:
    1150:	80 3d 21 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f21],0x0        # 4078 <completed.7325>
    1157:	75 2f                	jne    1188 <__do_global_dtors_aux+0x38>
    1159:	55                   	push   rbp
    115a:	48 83 3d 96 2e 00 00 	cmp    QWORD PTR [rip+0x2e96],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1161:	00 
    1162:	48 89 e5             	mov    rbp,rsp
    1165:	74 0c                	je     1173 <__do_global_dtors_aux+0x23>
    1167:	48 8b 3d ea 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2eea]        # 4058 <__dso_handle>
    116e:	e8 2d ff ff ff       	call   10a0 <__cxa_finalize@plt>
    1173:	e8 68 ff ff ff       	call   10e0 <deregister_tm_clones>
    1178:	c6 05 f9 2e 00 00 01 	mov    BYTE PTR [rip+0x2ef9],0x1        # 4078 <completed.7325>
    117f:	5d                   	pop    rbp
    1180:	c3                   	ret    
    1181:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1188:	c3                   	ret    
    1189:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001190 <frame_dummy>:
    1190:	e9 7b ff ff ff       	jmp    1110 <register_tm_clones>

0000000000001195 <moo>:
    1195:	55                   	push   rbp
    1196:	48 89 e5             	mov    rbp,rsp
    1199:	48 83 ec 60          	sub    rsp,0x60
    119d:	48 89 7d a8          	mov    QWORD PTR [rbp-0x58],rdi
    11a1:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
    11a8:	48 8b 55 a8          	mov    rdx,QWORD PTR [rbp-0x58]
    11ac:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    11b0:	48 89 d6             	mov    rsi,rdx
    11b3:	48 89 c7             	mov    rdi,rax
    11b6:	e8 75 fe ff ff       	call   1030 <strcpy@plt>
    11bb:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    11bf:	48 8d 35 42 0e 00 00 	lea    rsi,[rip+0xe42]        # 2008 <_IO_stdin_used+0x8>
    11c6:	48 89 c7             	mov    rdi,rax
    11c9:	e8 b2 fe ff ff       	call   1080 <strcspn@plt>
    11ce:	c6 44 05 b0 00       	mov    BYTE PTR [rbp+rax*1-0x50],0x0
    11d3:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    11d6:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    11da:	48 89 c6             	mov    rsi,rax
    11dd:	48 8d 3d 27 0e 00 00 	lea    rdi,[rip+0xe27]        # 200b <_IO_stdin_used+0xb>
    11e4:	e8 67 fe ff ff       	call   1050 <setenv@plt>
    11e9:	48 8d 3d 1f 0e 00 00 	lea    rdi,[rip+0xe1f]        # 200f <_IO_stdin_used+0xf>
    11f0:	e8 7b fe ff ff       	call   1070 <system@plt>
    11f5:	90                   	nop
    11f6:	c9                   	leave  
    11f7:	c3                   	ret    

00000000000011f8 <main>:
    11f8:	55                   	push   rbp
    11f9:	48 89 e5             	mov    rbp,rsp
    11fc:	48 81 ec 00 04 00 00 	sub    rsp,0x400
    1203:	48 8b 05 56 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e56]        # 4060 <stdout@@GLIBC_2.2.5>
    120a:	be 00 00 00 00       	mov    esi,0x0
    120f:	48 89 c7             	mov    rdi,rax
    1212:	e8 49 fe ff ff       	call   1060 <setbuf@plt>
    1217:	48 8d 3d 02 0e 00 00 	lea    rdi,[rip+0xe02]        # 2020 <_IO_stdin_used+0x20>
    121e:	e8 1d fe ff ff       	call   1040 <puts@plt>
    1223:	48 8d 3d 1e 0e 00 00 	lea    rdi,[rip+0xe1e]        # 2048 <_IO_stdin_used+0x48>
    122a:	e8 11 fe ff ff       	call   1040 <puts@plt>
    122f:	48 8b 15 3a 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2e3a]        # 4070 <stdin@@GLIBC_2.2.5>
    1236:	48 8d 85 00 fc ff ff 	lea    rax,[rbp-0x400]
    123d:	be 00 04 00 00       	mov    esi,0x400
    1242:	48 89 c7             	mov    rdi,rax
    1245:	e8 46 fe ff ff       	call   1090 <fgets@plt>
    124a:	48 8d 85 00 fc ff ff 	lea    rax,[rbp-0x400]
    1251:	48 89 c7             	mov    rdi,rax
    1254:	e8 3c ff ff ff       	call   1195 <moo>
    1259:	b8 00 00 00 00       	mov    eax,0x0
    125e:	c9                   	leave  
    125f:	c3                   	ret    

0000000000001260 <__libc_csu_init>:
    1260:	41 57                	push   r15
    1262:	4c 8d 3d 7f 2b 00 00 	lea    r15,[rip+0x2b7f]        # 3de8 <__frame_dummy_init_array_entry>
    1269:	41 56                	push   r14
    126b:	49 89 d6             	mov    r14,rdx
    126e:	41 55                	push   r13
    1270:	49 89 f5             	mov    r13,rsi
    1273:	41 54                	push   r12
    1275:	41 89 fc             	mov    r12d,edi
    1278:	55                   	push   rbp
    1279:	48 8d 2d 70 2b 00 00 	lea    rbp,[rip+0x2b70]        # 3df0 <__init_array_end>
    1280:	53                   	push   rbx
    1281:	4c 29 fd             	sub    rbp,r15
    1284:	48 83 ec 08          	sub    rsp,0x8
    1288:	e8 73 fd ff ff       	call   1000 <_init>
    128d:	48 c1 fd 03          	sar    rbp,0x3
    1291:	74 1b                	je     12ae <__libc_csu_init+0x4e>
    1293:	31 db                	xor    ebx,ebx
    1295:	0f 1f 00             	nop    DWORD PTR [rax]
    1298:	4c 89 f2             	mov    rdx,r14
    129b:	4c 89 ee             	mov    rsi,r13
    129e:	44 89 e7             	mov    edi,r12d
    12a1:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    12a5:	48 83 c3 01          	add    rbx,0x1
    12a9:	48 39 dd             	cmp    rbp,rbx
    12ac:	75 ea                	jne    1298 <__libc_csu_init+0x38>
    12ae:	48 83 c4 08          	add    rsp,0x8
    12b2:	5b                   	pop    rbx
    12b3:	5d                   	pop    rbp
    12b4:	41 5c                	pop    r12
    12b6:	41 5d                	pop    r13
    12b8:	41 5e                	pop    r14
    12ba:	41 5f                	pop    r15
    12bc:	c3                   	ret    
    12bd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000012c0 <__libc_csu_fini>:
    12c0:	c3                   	ret    

Disassembly of section .fini:

00000000000012c4 <_fini>:
    12c4:	48 83 ec 08          	sub    rsp,0x8
    12c8:	48 83 c4 08          	add    rsp,0x8
    12cc:	c3                   	ret    
