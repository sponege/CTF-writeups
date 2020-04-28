
bof:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   ebx
 8049001:	83 ec 08             	sub    esp,0x8
 8049004:	e8 b7 00 00 00       	call   80490c0 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 2f 00 00    	add    ebx,0x2ff7
 804900f:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8049015:	85 c0                	test   eax,eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   eax
 804901b:	83 c4 08             	add    esp,0x8
 804901e:	5b                   	pop    ebx
 804901f:	c3                   	ret    

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 c0 04 08    	push   DWORD PTR ds:0x804c004
 8049026:	ff 25 08 c0 04 08    	jmp    DWORD PTR ds:0x804c008
 804902c:	00 00                	add    BYTE PTR [eax],al
	...

08049030 <gets@plt>:
 8049030:	ff 25 0c c0 04 08    	jmp    DWORD PTR ds:0x804c00c
 8049036:	68 00 00 00 00       	push   0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <puts@plt>:
 8049040:	ff 25 10 c0 04 08    	jmp    DWORD PTR ds:0x804c010
 8049046:	68 08 00 00 00       	push   0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <system@plt>:
 8049050:	ff 25 14 c0 04 08    	jmp    DWORD PTR ds:0x804c014
 8049056:	68 10 00 00 00       	push   0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <__libc_start_main@plt>:
 8049060:	ff 25 18 c0 04 08    	jmp    DWORD PTR ds:0x804c018
 8049066:	68 18 00 00 00       	push   0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

Disassembly of section .text:

08049070 <_start>:
 8049070:	31 ed                	xor    ebp,ebp
 8049072:	5e                   	pop    esi
 8049073:	89 e1                	mov    ecx,esp
 8049075:	83 e4 f0             	and    esp,0xfffffff0
 8049078:	50                   	push   eax
 8049079:	54                   	push   esp
 804907a:	52                   	push   edx
 804907b:	e8 23 00 00 00       	call   80490a3 <_start+0x33>
 8049080:	81 c3 80 2f 00 00    	add    ebx,0x2f80
 8049086:	8d 83 00 d3 ff ff    	lea    eax,[ebx-0x2d00]
 804908c:	50                   	push   eax
 804908d:	8d 83 a0 d2 ff ff    	lea    eax,[ebx-0x2d60]
 8049093:	50                   	push   eax
 8049094:	51                   	push   ecx
 8049095:	56                   	push   esi
 8049096:	c7 c0 6c 92 04 08    	mov    eax,0x804926c
 804909c:	50                   	push   eax
 804909d:	e8 be ff ff ff       	call   8049060 <__libc_start_main@plt>
 80490a2:	f4                   	hlt    
 80490a3:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80490a6:	c3                   	ret    
 80490a7:	66 90                	xchg   ax,ax
 80490a9:	66 90                	xchg   ax,ax
 80490ab:	66 90                	xchg   ax,ax
 80490ad:	66 90                	xchg   ax,ax
 80490af:	90                   	nop

080490b0 <_dl_relocate_static_pie>:
 80490b0:	c3                   	ret    
 80490b1:	66 90                	xchg   ax,ax
 80490b3:	66 90                	xchg   ax,ax
 80490b5:	66 90                	xchg   ax,ax
 80490b7:	66 90                	xchg   ax,ax
 80490b9:	66 90                	xchg   ax,ax
 80490bb:	66 90                	xchg   ax,ax
 80490bd:	66 90                	xchg   ax,ax
 80490bf:	90                   	nop

080490c0 <__x86.get_pc_thunk.bx>:
 80490c0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80490c3:	c3                   	ret    
 80490c4:	66 90                	xchg   ax,ax
 80490c6:	66 90                	xchg   ax,ax
 80490c8:	66 90                	xchg   ax,ax
 80490ca:	66 90                	xchg   ax,ax
 80490cc:	66 90                	xchg   ax,ax
 80490ce:	66 90                	xchg   ax,ax

080490d0 <deregister_tm_clones>:
 80490d0:	b8 24 c0 04 08       	mov    eax,0x804c024
 80490d5:	3d 24 c0 04 08       	cmp    eax,0x804c024
 80490da:	74 24                	je     8049100 <deregister_tm_clones+0x30>
 80490dc:	b8 00 00 00 00       	mov    eax,0x0
 80490e1:	85 c0                	test   eax,eax
 80490e3:	74 1b                	je     8049100 <deregister_tm_clones+0x30>
 80490e5:	55                   	push   ebp
 80490e6:	89 e5                	mov    ebp,esp
 80490e8:	83 ec 14             	sub    esp,0x14
 80490eb:	68 24 c0 04 08       	push   0x804c024
 80490f0:	ff d0                	call   eax
 80490f2:	83 c4 10             	add    esp,0x10
 80490f5:	c9                   	leave  
 80490f6:	c3                   	ret    
 80490f7:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 80490fe:	66 90                	xchg   ax,ax
 8049100:	c3                   	ret    
 8049101:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 8049108:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 804910f:	90                   	nop

08049110 <register_tm_clones>:
 8049110:	b8 24 c0 04 08       	mov    eax,0x804c024
 8049115:	2d 24 c0 04 08       	sub    eax,0x804c024
 804911a:	c1 f8 02             	sar    eax,0x2
 804911d:	89 c2                	mov    edx,eax
 804911f:	c1 ea 1f             	shr    edx,0x1f
 8049122:	01 d0                	add    eax,edx
 8049124:	d1 f8                	sar    eax,1
 8049126:	74 20                	je     8049148 <register_tm_clones+0x38>
 8049128:	ba 00 00 00 00       	mov    edx,0x0
 804912d:	85 d2                	test   edx,edx
 804912f:	74 17                	je     8049148 <register_tm_clones+0x38>
 8049131:	55                   	push   ebp
 8049132:	89 e5                	mov    ebp,esp
 8049134:	83 ec 10             	sub    esp,0x10
 8049137:	50                   	push   eax
 8049138:	68 24 c0 04 08       	push   0x804c024
 804913d:	ff d2                	call   edx
 804913f:	83 c4 10             	add    esp,0x10
 8049142:	c9                   	leave  
 8049143:	c3                   	ret    
 8049144:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8049148:	c3                   	ret    
 8049149:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

08049150 <__do_global_dtors_aux>:
 8049150:	80 3d 24 c0 04 08 00 	cmp    BYTE PTR ds:0x804c024,0x0
 8049157:	75 17                	jne    8049170 <__do_global_dtors_aux+0x20>
 8049159:	55                   	push   ebp
 804915a:	89 e5                	mov    ebp,esp
 804915c:	83 ec 08             	sub    esp,0x8
 804915f:	e8 6c ff ff ff       	call   80490d0 <deregister_tm_clones>
 8049164:	c6 05 24 c0 04 08 01 	mov    BYTE PTR ds:0x804c024,0x1
 804916b:	c9                   	leave  
 804916c:	c3                   	ret    
 804916d:	8d 76 00             	lea    esi,[esi+0x0]
 8049170:	c3                   	ret    
 8049171:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 8049178:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 804917f:	90                   	nop

08049180 <frame_dummy>:
 8049180:	eb 8e                	jmp    8049110 <register_tm_clones>

08049182 <audition>:
 8049182:	55                   	push   ebp
 8049183:	89 e5                	mov    ebp,esp
 8049185:	53                   	push   ebx
 8049186:	83 ec 14             	sub    esp,0x14
 8049189:	e8 ff 00 00 00       	call   804928d <__x86.get_pc_thunk.ax>
 804918e:	05 72 2e 00 00       	add    eax,0x2e72
 8049193:	8d 90 08 e0 ff ff    	lea    edx,[eax-0x1ff8]
 8049199:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
 804919c:	81 7d 08 b0 04 00 00 	cmp    DWORD PTR [ebp+0x8],0x4b0
 80491a3:	75 19                	jne    80491be <audition+0x3c>
 80491a5:	81 7d 0c 6e 01 00 00 	cmp    DWORD PTR [ebp+0xc],0x16e
 80491ac:	75 10                	jne    80491be <audition+0x3c>
 80491ae:	83 ec 0c             	sub    esp,0xc
 80491b1:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 80491b4:	89 c3                	mov    ebx,eax
 80491b6:	e8 95 fe ff ff       	call   8049050 <system@plt>
 80491bb:	83 c4 10             	add    esp,0x10
 80491be:	90                   	nop
 80491bf:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 80491c2:	c9                   	leave  
 80491c3:	c3                   	ret    

080491c4 <get_audition_info>:
 80491c4:	55                   	push   ebp
 80491c5:	89 e5                	mov    ebp,esp
 80491c7:	53                   	push   ebx
 80491c8:	83 ec 74             	sub    esp,0x74
 80491cb:	e8 f0 fe ff ff       	call   80490c0 <__x86.get_pc_thunk.bx>
 80491d0:	81 c3 30 2e 00 00    	add    ebx,0x2e30
 80491d6:	83 ec 0c             	sub    esp,0xc
 80491d9:	8d 83 1a e0 ff ff    	lea    eax,[ebx-0x1fe6]
 80491df:	50                   	push   eax
 80491e0:	e8 5b fe ff ff       	call   8049040 <puts@plt>
 80491e5:	83 c4 10             	add    esp,0x10
 80491e8:	83 ec 0c             	sub    esp,0xc
 80491eb:	8d 45 c6             	lea    eax,[ebp-0x3a]
 80491ee:	50                   	push   eax
 80491ef:	e8 3c fe ff ff       	call   8049030 <gets@plt>
 80491f4:	83 c4 10             	add    esp,0x10
 80491f7:	83 ec 0c             	sub    esp,0xc
 80491fa:	8d 83 2c e0 ff ff    	lea    eax,[ebx-0x1fd4]
 8049200:	50                   	push   eax
 8049201:	e8 3a fe ff ff       	call   8049040 <puts@plt>
 8049206:	83 c4 10             	add    esp,0x10
 8049209:	83 ec 0c             	sub    esp,0xc
 804920c:	8d 45 94             	lea    eax,[ebp-0x6c]
 804920f:	50                   	push   eax
 8049210:	e8 1b fe ff ff       	call   8049030 <gets@plt>
 8049215:	83 c4 10             	add    esp,0x10
 8049218:	90                   	nop
 8049219:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 804921c:	c9                   	leave  
 804921d:	c3                   	ret    

0804921e <welcome>:
 804921e:	55                   	push   ebp
 804921f:	89 e5                	mov    ebp,esp
 8049221:	53                   	push   ebx
 8049222:	83 ec 04             	sub    esp,0x4
 8049225:	e8 96 fe ff ff       	call   80490c0 <__x86.get_pc_thunk.bx>
 804922a:	81 c3 d6 2d 00 00    	add    ebx,0x2dd6
 8049230:	83 ec 0c             	sub    esp,0xc
 8049233:	8d 83 4b e0 ff ff    	lea    eax,[ebx-0x1fb5]
 8049239:	50                   	push   eax
 804923a:	e8 01 fe ff ff       	call   8049040 <puts@plt>
 804923f:	83 c4 10             	add    esp,0x10
 8049242:	83 ec 0c             	sub    esp,0xc
 8049245:	8d 83 64 e0 ff ff    	lea    eax,[ebx-0x1f9c]
 804924b:	50                   	push   eax
 804924c:	e8 ef fd ff ff       	call   8049040 <puts@plt>
 8049251:	83 c4 10             	add    esp,0x10
 8049254:	83 ec 0c             	sub    esp,0xc
 8049257:	8d 83 a0 e0 ff ff    	lea    eax,[ebx-0x1f60]
 804925d:	50                   	push   eax
 804925e:	e8 dd fd ff ff       	call   8049040 <puts@plt>
 8049263:	83 c4 10             	add    esp,0x10
 8049266:	90                   	nop
 8049267:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 804926a:	c9                   	leave  
 804926b:	c3                   	ret    

0804926c <main>:
 804926c:	55                   	push   ebp
 804926d:	89 e5                	mov    ebp,esp
 804926f:	83 e4 f0             	and    esp,0xfffffff0
 8049272:	e8 16 00 00 00       	call   804928d <__x86.get_pc_thunk.ax>
 8049277:	05 89 2d 00 00       	add    eax,0x2d89
 804927c:	e8 9d ff ff ff       	call   804921e <welcome>
 8049281:	e8 3e ff ff ff       	call   80491c4 <get_audition_info>
 8049286:	b8 00 00 00 00       	mov    eax,0x0
 804928b:	c9                   	leave  
 804928c:	c3                   	ret    

0804928d <__x86.get_pc_thunk.ax>:
 804928d:	8b 04 24             	mov    eax,DWORD PTR [esp]
 8049290:	c3                   	ret    
 8049291:	66 90                	xchg   ax,ax
 8049293:	66 90                	xchg   ax,ax
 8049295:	66 90                	xchg   ax,ax
 8049297:	66 90                	xchg   ax,ax
 8049299:	66 90                	xchg   ax,ax
 804929b:	66 90                	xchg   ax,ax
 804929d:	66 90                	xchg   ax,ax
 804929f:	90                   	nop

080492a0 <__libc_csu_init>:
 80492a0:	55                   	push   ebp
 80492a1:	57                   	push   edi
 80492a2:	56                   	push   esi
 80492a3:	53                   	push   ebx
 80492a4:	e8 17 fe ff ff       	call   80490c0 <__x86.get_pc_thunk.bx>
 80492a9:	81 c3 57 2d 00 00    	add    ebx,0x2d57
 80492af:	83 ec 0c             	sub    esp,0xc
 80492b2:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
 80492b6:	e8 45 fd ff ff       	call   8049000 <_init>
 80492bb:	8d b3 10 ff ff ff    	lea    esi,[ebx-0xf0]
 80492c1:	8d 83 0c ff ff ff    	lea    eax,[ebx-0xf4]
 80492c7:	29 c6                	sub    esi,eax
 80492c9:	c1 fe 02             	sar    esi,0x2
 80492cc:	74 1f                	je     80492ed <__libc_csu_init+0x4d>
 80492ce:	31 ff                	xor    edi,edi
 80492d0:	83 ec 04             	sub    esp,0x4
 80492d3:	55                   	push   ebp
 80492d4:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 80492d8:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 80492dc:	ff 94 bb 0c ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf4]
 80492e3:	83 c7 01             	add    edi,0x1
 80492e6:	83 c4 10             	add    esp,0x10
 80492e9:	39 fe                	cmp    esi,edi
 80492eb:	75 e3                	jne    80492d0 <__libc_csu_init+0x30>
 80492ed:	83 c4 0c             	add    esp,0xc
 80492f0:	5b                   	pop    ebx
 80492f1:	5e                   	pop    esi
 80492f2:	5f                   	pop    edi
 80492f3:	5d                   	pop    ebp
 80492f4:	c3                   	ret    
 80492f5:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 80492fc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

08049300 <__libc_csu_fini>:
 8049300:	c3                   	ret    

Disassembly of section .fini:

08049304 <_fini>:
 8049304:	53                   	push   ebx
 8049305:	83 ec 08             	sub    esp,0x8
 8049308:	e8 b3 fd ff ff       	call   80490c0 <__x86.get_pc_thunk.bx>
 804930d:	81 c3 f3 2c 00 00    	add    ebx,0x2cf3
 8049313:	83 c4 08             	add    esp,0x8
 8049316:	5b                   	pop    ebx
 8049317:	c3                   	ret    
