
./allBuildVersions/programWithO3SixthVersion:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 7f 00 00 	mov    rax,QWORD PTR [rip+0x7fd9]        # 8fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <__snprintf_chk@plt-0x10>:
    1020:	ff 35 fa 7e 00 00    	push   QWORD PTR [rip+0x7efa]        # 8f20 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 fc 7e 00 00    	jmp    QWORD PTR [rip+0x7efc]        # 8f28 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <__snprintf_chk@plt>:
    1030:	ff 25 fa 7e 00 00    	jmp    QWORD PTR [rip+0x7efa]        # 8f30 <__snprintf_chk@GLIBC_2.3.4>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <free@plt>:
    1040:	ff 25 f2 7e 00 00    	jmp    QWORD PTR [rip+0x7ef2]        # 8f38 <free@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <puts@plt>:
    1050:	ff 25 ea 7e 00 00    	jmp    QWORD PTR [rip+0x7eea]        # 8f40 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <qsort@plt>:
    1060:	ff 25 e2 7e 00 00    	jmp    QWORD PTR [rip+0x7ee2]        # 8f48 <qsort@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <fclose@plt>:
    1070:	ff 25 da 7e 00 00    	jmp    QWORD PTR [rip+0x7eda]        # 8f50 <fclose@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <__stack_chk_fail@plt>:
    1080:	ff 25 d2 7e 00 00    	jmp    QWORD PTR [rip+0x7ed2]        # 8f58 <__stack_chk_fail@GLIBC_2.4>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <system@plt>:
    1090:	ff 25 ca 7e 00 00    	jmp    QWORD PTR [rip+0x7eca]        # 8f60 <system@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <close@plt>:
    10a0:	ff 25 c2 7e 00 00    	jmp    QWORD PTR [rip+0x7ec2]        # 8f68 <close@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <isspace@plt>:
    10b0:	ff 25 ba 7e 00 00    	jmp    QWORD PTR [rip+0x7eba]        # 8f70 <isspace@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <fputc@plt>:
    10c0:	ff 25 b2 7e 00 00    	jmp    QWORD PTR [rip+0x7eb2]        # 8f78 <fputc@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <read@plt>:
    10d0:	ff 25 aa 7e 00 00    	jmp    QWORD PTR [rip+0x7eaa]        # 8f80 <read@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <calloc@plt>:
    10e0:	ff 25 a2 7e 00 00    	jmp    QWORD PTR [rip+0x7ea2]        # 8f88 <calloc@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <realloc@plt>:
    10f0:	ff 25 9a 7e 00 00    	jmp    QWORD PTR [rip+0x7e9a]        # 8f90 <realloc@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <__printf_chk@plt>:
    1100:	ff 25 92 7e 00 00    	jmp    QWORD PTR [rip+0x7e92]        # 8f98 <__printf_chk@GLIBC_2.3.4>
    1106:	68 0d 00 00 00       	push   0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001110 <open@plt>:
    1110:	ff 25 8a 7e 00 00    	jmp    QWORD PTR [rip+0x7e8a]        # 8fa0 <open@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001120 <fopen@plt>:
    1120:	ff 25 82 7e 00 00    	jmp    QWORD PTR [rip+0x7e82]        # 8fa8 <fopen@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001130 <perror@plt>:
    1130:	ff 25 7a 7e 00 00    	jmp    QWORD PTR [rip+0x7e7a]        # 8fb0 <perror@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	push   0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001140 <fwrite@plt>:
    1140:	ff 25 72 7e 00 00    	jmp    QWORD PTR [rip+0x7e72]        # 8fb8 <fwrite@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	push   0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001150 <__fprintf_chk@plt>:
    1150:	ff 25 6a 7e 00 00    	jmp    QWORD PTR [rip+0x7e6a]        # 8fc0 <__fprintf_chk@GLIBC_2.3.4>
    1156:	68 12 00 00 00       	push   0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001160 <fstat@plt>:
    1160:	ff 25 62 7e 00 00    	jmp    QWORD PTR [rip+0x7e62]        # 8fc8 <fstat@GLIBC_2.33>
    1166:	68 13 00 00 00       	push   0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001170 <rand@plt>:
    1170:	ff 25 5a 7e 00 00    	jmp    QWORD PTR [rip+0x7e5a]        # 8fd0 <rand@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	push   0x14
    117b:	e9 a0 fe ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001180 <__cxa_finalize@plt>:
    1180:	ff 25 72 7e 00 00    	jmp    QWORD PTR [rip+0x7e72]        # 8ff8 <__cxa_finalize@GLIBC_2.2.5>
    1186:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001190 <main>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	55                   	push   rbp
    1195:	66 0f ef c0          	pxor   xmm0,xmm0
    1199:	48 8d 35 ba 58 00 00 	lea    rsi,[rip+0x58ba]        # 6a5a <_IO_stdin_used+0x1a5a>
    11a0:	48 89 e5             	mov    rbp,rsp
    11a3:	41 55                	push   r13
    11a5:	41 54                	push   r12
    11a7:	4c 8d a5 30 ff ff ff 	lea    r12,[rbp-0xd0]
    11ae:	4c 8d 6d a0          	lea    r13,[rbp-0x60]
    11b2:	4c 89 e7             	mov    rdi,r12
    11b5:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
    11bc:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    11c3:	00 00 
    11c5:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    11c9:	31 c0                	xor    eax,eax
    11cb:	0f 29 85 30 ff ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm0
    11d2:	0f 29 85 40 ff ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm0
    11d9:	e8 32 1a 00 00       	call   2c10 <getWordArrStruct(wordArrStruct_t*, char const*)>
    11de:	66 0f ef c0          	pxor   xmm0,xmm0
    11e2:	4c 89 ef             	mov    rdi,r13
    11e5:	48 8d 15 54 58 00 00 	lea    rdx,[rip+0x5854]        # 6a40 <_IO_stdin_used+0x1a40>
    11ec:	0f 29 45 a0          	movaps XMMWORD PTR [rbp-0x60],xmm0
    11f0:	48 8d 05 56 58 00 00 	lea    rax,[rip+0x5856]        # 6a4d <_IO_stdin_used+0x1a4d>
    11f7:	48 8d 8d 50 ff ff ff 	lea    rcx,[rbp-0xb0]
    11fe:	be a7 0f 00 00       	mov    esi,0xfa7
    1203:	0f 29 45 b0          	movaps XMMWORD PTR [rbp-0x50],xmm0
    1207:	4c 8d 85 70 ff ff ff 	lea    r8,[rbp-0x90]
    120e:	0f 29 45 c0          	movaps XMMWORD PTR [rbp-0x40],xmm0
    1212:	0f 29 45 d0          	movaps XMMWORD PTR [rbp-0x30],xmm0
    1216:	0f 29 85 70 ff ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm0
    121d:	0f 29 45 80          	movaps XMMWORD PTR [rbp-0x80],xmm0
    1221:	0f 29 45 90          	movaps XMMWORD PTR [rbp-0x70],xmm0
    1225:	66 48 0f 6e c2       	movq   xmm0,rdx
    122a:	48 8d 15 9f 02 00 00 	lea    rdx,[rip+0x29f]        # 14d0 <crc32Hash(char const*)>
    1231:	66 48 0f 3a 22 c0 01 	pinsrq xmm0,rax,0x1
    1238:	48 8d 05 2b 58 00 00 	lea    rax,[rip+0x582b]        # 6a6a <_IO_stdin_used+0x1a6a>
    123f:	48 c7 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],0x10
    1246:	10 00 00 00 
    124a:	0f 29 85 50 ff ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm0
    1251:	48 89 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rax
    1258:	e8 a3 02 00 00       	call   1500 <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)>
    125d:	4c 89 e6             	mov    rsi,r12
    1260:	4c 89 ef             	mov    rdi,r13
    1263:	e8 e8 12 00 00       	call   2550 <fillHashTable(hashTable_t*, wordArrStruct_t*)>
    1268:	4c 89 e7             	mov    rdi,r12
    126b:	e8 b0 1a 00 00       	call   2d20 <shuffleWords(wordArrStruct_t*)>
    1270:	ba e8 03 00 00       	mov    edx,0x3e8
    1275:	4c 89 e6             	mov    rsi,r12
    1278:	4c 89 ef             	mov    rdi,r13
    127b:	e8 70 14 00 00       	call   26f0 <testHashTable(hashTable_t*, wordArrStruct_t*, unsigned long)>
    1280:	48 8b 75 a8          	mov    rsi,QWORD PTR [rbp-0x58]
    1284:	4c 89 ef             	mov    rdi,r13
    1287:	e8 94 03 00 00       	call   1620 <hashTableDtor(hashTable_t*, unsigned long)>
    128c:	4c 89 e7             	mov    rdi,r12
    128f:	e8 0c 1a 00 00       	call   2ca0 <freeWordArrStruct(wordArrStruct_t*)>
    1294:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1298:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    129f:	00 00 
    12a1:	75 0f                	jne    12b2 <main+0x122>
    12a3:	48 81 c4 c0 00 00 00 	add    rsp,0xc0
    12aa:	31 c0                	xor    eax,eax
    12ac:	41 5c                	pop    r12
    12ae:	41 5d                	pop    r13
    12b0:	5d                   	pop    rbp
    12b1:	c3                   	ret
    12b2:	e8 c9 fd ff ff       	call   1080 <__stack_chk_fail@plt>
    12b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    12be:	00 00 

00000000000012c0 <_start>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	31 ed                	xor    ebp,ebp
    12c6:	49 89 d1             	mov    r9,rdx
    12c9:	5e                   	pop    rsi
    12ca:	48 89 e2             	mov    rdx,rsp
    12cd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    12d1:	50                   	push   rax
    12d2:	54                   	push   rsp
    12d3:	45 31 c0             	xor    r8d,r8d
    12d6:	31 c9                	xor    ecx,ecx
    12d8:	48 8d 3d b1 fe ff ff 	lea    rdi,[rip+0xfffffffffffffeb1]        # 1190 <main>
    12df:	ff 15 f3 7c 00 00    	call   QWORD PTR [rip+0x7cf3]        # 8fd8 <__libc_start_main@GLIBC_2.34>
    12e5:	f4                   	hlt
    12e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    12ed:	00 00 00 

00000000000012f0 <deregister_tm_clones>:
    12f0:	48 8d 3d 19 7d 00 00 	lea    rdi,[rip+0x7d19]        # 9010 <__TMC_END__>
    12f7:	48 8d 05 12 7d 00 00 	lea    rax,[rip+0x7d12]        # 9010 <__TMC_END__>
    12fe:	48 39 f8             	cmp    rax,rdi
    1301:	74 15                	je     1318 <deregister_tm_clones+0x28>
    1303:	48 8b 05 d6 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cd6]        # 8fe0 <_ITM_deregisterTMCloneTable@Base>
    130a:	48 85 c0             	test   rax,rax
    130d:	74 09                	je     1318 <deregister_tm_clones+0x28>
    130f:	ff e0                	jmp    rax
    1311:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1318:	c3                   	ret
    1319:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001320 <register_tm_clones>:
    1320:	48 8d 3d e9 7c 00 00 	lea    rdi,[rip+0x7ce9]        # 9010 <__TMC_END__>
    1327:	48 8d 35 e2 7c 00 00 	lea    rsi,[rip+0x7ce2]        # 9010 <__TMC_END__>
    132e:	48 29 fe             	sub    rsi,rdi
    1331:	48 89 f0             	mov    rax,rsi
    1334:	48 c1 ee 3f          	shr    rsi,0x3f
    1338:	48 c1 f8 03          	sar    rax,0x3
    133c:	48 01 c6             	add    rsi,rax
    133f:	48 d1 fe             	sar    rsi,1
    1342:	74 14                	je     1358 <register_tm_clones+0x38>
    1344:	48 8b 05 a5 7c 00 00 	mov    rax,QWORD PTR [rip+0x7ca5]        # 8ff0 <_ITM_registerTMCloneTable@Base>
    134b:	48 85 c0             	test   rax,rax
    134e:	74 08                	je     1358 <register_tm_clones+0x38>
    1350:	ff e0                	jmp    rax
    1352:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1358:	c3                   	ret
    1359:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001360 <__do_global_dtors_aux>:
    1360:	f3 0f 1e fa          	endbr64
    1364:	80 3d bd 7c 00 00 00 	cmp    BYTE PTR [rip+0x7cbd],0x0        # 9028 <completed.0>
    136b:	75 2b                	jne    1398 <__do_global_dtors_aux+0x38>
    136d:	55                   	push   rbp
    136e:	48 83 3d 82 7c 00 00 	cmp    QWORD PTR [rip+0x7c82],0x0        # 8ff8 <__cxa_finalize@GLIBC_2.2.5>
    1375:	00 
    1376:	48 89 e5             	mov    rbp,rsp
    1379:	74 0c                	je     1387 <__do_global_dtors_aux+0x27>
    137b:	48 8b 3d 86 7c 00 00 	mov    rdi,QWORD PTR [rip+0x7c86]        # 9008 <__dso_handle>
    1382:	e8 f9 fd ff ff       	call   1180 <__cxa_finalize@plt>
    1387:	e8 64 ff ff ff       	call   12f0 <deregister_tm_clones>
    138c:	c6 05 95 7c 00 00 01 	mov    BYTE PTR [rip+0x7c95],0x1        # 9028 <completed.0>
    1393:	5d                   	pop    rbp
    1394:	c3                   	ret
    1395:	0f 1f 00             	nop    DWORD PTR [rax]
    1398:	c3                   	ret
    1399:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000013a0 <frame_dummy>:
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	e9 77 ff ff ff       	jmp    1320 <register_tm_clones>
    13a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000013b0 <alwaysZeroHash(char const*)>:
    13b0:	f3 0f 1e fa          	endbr64
    13b4:	31 c0                	xor    eax,eax
    13b6:	c3                   	ret
    13b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    13be:	00 00 

00000000000013c0 <firstLetterASCIICodeHash(char const*)>:
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	48 0f be 07          	movsx  rax,BYTE PTR [rdi]
    13c8:	c3                   	ret
    13c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000013d0 <strlenHash(char const*)>:
    13d0:	f3 0f 1e fa          	endbr64
    13d4:	31 c0                	xor    eax,eax
    13d6:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    13d9:	74 15                	je     13f0 <strlenHash(char const*)+0x20>
    13db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    13e0:	48 83 c0 01          	add    rax,0x1
    13e4:	80 3c 07 00          	cmp    BYTE PTR [rdi+rax*1],0x0
    13e8:	75 f6                	jne    13e0 <strlenHash(char const*)+0x10>
    13ea:	c3                   	ret
    13eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    13f0:	c3                   	ret
    13f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    13f8:	00 00 00 00 
    13fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001400 <sumASCIIcodesHash(char const*)>:
    1400:	f3 0f 1e fa          	endbr64
    1404:	48 0f be 07          	movsx  rax,BYTE PTR [rdi]
    1408:	45 31 c0             	xor    r8d,r8d
    140b:	84 c0                	test   al,al
    140d:	74 10                	je     141f <sumASCIIcodesHash(char const*)+0x1f>
    140f:	90                   	nop
    1410:	48 83 c7 01          	add    rdi,0x1
    1414:	49 01 c0             	add    r8,rax
    1417:	48 0f be 07          	movsx  rax,BYTE PTR [rdi]
    141b:	84 c0                	test   al,al
    141d:	75 f1                	jne    1410 <sumASCIIcodesHash(char const*)+0x10>
    141f:	4c 89 c0             	mov    rax,r8
    1422:	c3                   	ret
    1423:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    142a:	00 00 00 00 
    142e:	66 90                	xchg   ax,ax

0000000000001430 <rolHash(char const*)>:
    1430:	f3 0f 1e fa          	endbr64
    1434:	0f b6 57 01          	movzx  edx,BYTE PTR [rdi+0x1]
    1438:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    143b:	48 8d 4f 01          	lea    rcx,[rdi+0x1]
    143f:	84 d2                	test   dl,dl
    1441:	74 16                	je     1459 <rolHash(char const*)+0x29>
    1443:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1448:	48 d1 c0             	rol    rax,1
    144b:	48 83 c1 01          	add    rcx,0x1
    144f:	48 31 d0             	xor    rax,rdx
    1452:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
    1455:	84 d2                	test   dl,dl
    1457:	75 ef                	jne    1448 <rolHash(char const*)+0x18>
    1459:	c3                   	ret
    145a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001460 <rorHash(char const*)>:
    1460:	f3 0f 1e fa          	endbr64
    1464:	0f b6 57 01          	movzx  edx,BYTE PTR [rdi+0x1]
    1468:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    146b:	48 8d 4f 01          	lea    rcx,[rdi+0x1]
    146f:	84 d2                	test   dl,dl
    1471:	74 16                	je     1489 <rorHash(char const*)+0x29>
    1473:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1478:	48 d1 c8             	ror    rax,1
    147b:	48 83 c1 01          	add    rcx,0x1
    147f:	48 31 d0             	xor    rax,rdx
    1482:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
    1485:	84 d2                	test   dl,dl
    1487:	75 ef                	jne    1478 <rorHash(char const*)+0x18>
    1489:	c3                   	ret
    148a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001490 <gnuHash(char const*)>:
    1490:	f3 0f 1e fa          	endbr64
    1494:	0f b6 17             	movzx  edx,BYTE PTR [rdi]
    1497:	b8 05 15 00 00       	mov    eax,0x1505
    149c:	84 d2                	test   dl,dl
    149e:	74 20                	je     14c0 <gnuHash(char const*)+0x30>
    14a0:	48 89 c1             	mov    rcx,rax
    14a3:	48 83 c7 01          	add    rdi,0x1
    14a7:	48 c1 e1 05          	shl    rcx,0x5
    14ab:	48 01 c8             	add    rax,rcx
    14ae:	48 01 d0             	add    rax,rdx
    14b1:	0f b6 17             	movzx  edx,BYTE PTR [rdi]
    14b4:	84 d2                	test   dl,dl
    14b6:	75 e8                	jne    14a0 <gnuHash(char const*)+0x10>
    14b8:	c3                   	ret
    14b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    14c0:	c3                   	ret
    14c1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    14c8:	00 00 00 00 
    14cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000014d0 <crc32Hash(char const*)>:
    14d0:	f3 0f 1e fa          	endbr64
    14d4:	0f b6 17             	movzx  edx,BYTE PTR [rdi]
    14d7:	b8 ff ff ff ff       	mov    eax,0xffffffff
    14dc:	84 d2                	test   dl,dl
    14de:	74 1a                	je     14fa <crc32Hash(char const*)+0x2a>
    14e0:	b8 ff ff ff ff       	mov    eax,0xffffffff
    14e5:	0f 1f 00             	nop    DWORD PTR [rax]
    14e8:	48 83 c7 01          	add    rdi,0x1
    14ec:	f2 0f 38 f0 c2       	crc32  eax,dl
    14f1:	0f b6 17             	movzx  edx,BYTE PTR [rdi]
    14f4:	84 d2                	test   dl,dl
    14f6:	75 f0                	jne    14e8 <crc32Hash(char const*)+0x18>
    14f8:	89 c0                	mov    eax,eax
    14fa:	c3                   	ret
    14fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001500 <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)>:
    1500:	f3 0f 1e fa          	endbr64
    1504:	55                   	push   rbp
    1505:	66 49 0f 6e c8       	movq   xmm1,r8
    150a:	66 48 0f 3a 22 c9 01 	pinsrq xmm1,rcx,0x1
    1511:	48 89 e5             	mov    rbp,rsp
    1514:	41 55                	push   r13
    1516:	49 89 f5             	mov    r13,rsi
    1519:	be 08 00 00 00       	mov    esi,0x8
    151e:	41 54                	push   r12
    1520:	49 89 fc             	mov    r12,rdi
    1523:	4c 89 ef             	mov    rdi,r13
    1526:	53                   	push   rbx
    1527:	48 89 d3             	mov    rbx,rdx
    152a:	48 83 ec 38          	sub    rsp,0x38
    152e:	0f 29 4d b0          	movaps XMMWORD PTR [rbp-0x50],xmm1
    1532:	e8 a9 fb ff ff       	call   10e0 <calloc@plt>
    1537:	4d 89 6c 24 08       	mov    QWORD PTR [r12+0x8],r13
    153c:	49 89 04 24          	mov    QWORD PTR [r12],rax
    1540:	49 c7 44 24 10 00 00 	mov    QWORD PTR [r12+0x10],0x0
    1547:	00 00 
    1549:	49 c7 44 24 18 00 00 	mov    QWORD PTR [r12+0x18],0x0
    1550:	00 00 
    1552:	49 89 5c 24 20       	mov    QWORD PTR [r12+0x20],rbx
    1557:	41 c7 44 24 28 00 00 	mov    DWORD PTR [r12+0x28],0x0
    155e:	00 00 
    1560:	4d 85 ed             	test   r13,r13
    1563:	0f 84 97 00 00 00    	je     1600 <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)+0x100>
    1569:	31 db                	xor    ebx,ebx
    156b:	eb 10                	jmp    157d <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)+0x7d>
    156d:	0f 1f 00             	nop    DWORD PTR [rax]
    1570:	48 83 c3 01          	add    rbx,0x1
    1574:	49 39 dd             	cmp    r13,rbx
    1577:	0f 84 83 00 00 00    	je     1600 <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)+0x100>
    157d:	be 48 00 00 00       	mov    esi,0x48
    1582:	bf 01 00 00 00       	mov    edi,0x1
    1587:	e8 54 fb ff ff       	call   10e0 <calloc@plt>
    158c:	66 0f ef c0          	pxor   xmm0,xmm0
    1590:	be 04 00 00 00       	mov    esi,0x4
    1595:	48 89 c7             	mov    rdi,rax
    1598:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    159c:	0f 29 45 c0          	movaps XMMWORD PTR [rbp-0x40],xmm0
    15a0:	0f 29 45 d0          	movaps XMMWORD PTR [rbp-0x30],xmm0
    15a4:	48 89 3c d8          	mov    QWORD PTR [rax+rbx*8],rdi
    15a8:	6a 00                	push   0x0
    15aa:	6a 00                	push   0x0
    15ac:	6a 00                	push   0x0
    15ae:	6a 00                	push   0x0
    15b0:	e8 4b 18 00 00       	call   2e00 <listCtor(list_t*, long, info_t)>
    15b5:	48 83 c4 20          	add    rsp,0x20
    15b9:	85 c0                	test   eax,eax
    15bb:	74 b3                	je     1570 <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)+0x70>
    15bd:	48 85 db             	test   rbx,rbx
    15c0:	74 1c                	je     15de <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)+0xde>
    15c2:	45 31 ed             	xor    r13d,r13d
    15c5:	0f 1f 00             	nop    DWORD PTR [rax]
    15c8:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    15cc:	4a 8b 3c e8          	mov    rdi,QWORD PTR [rax+r13*8]
    15d0:	49 83 c5 01          	add    r13,0x1
    15d4:	e8 77 31 00 00       	call   4750 <listDtor(list_t*)>
    15d9:	49 39 dd             	cmp    r13,rbx
    15dc:	75 ea                	jne    15c8 <hashTableCtor(hashTable_t*, unsigned long, unsigned long (*)(char const*), info_t*, dump_t*)+0xc8>
    15de:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
    15e2:	e8 59 fa ff ff       	call   1040 <free@plt>
    15e7:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
    15ee:	00 
    15ef:	48 8d 65 e8          	lea    rsp,[rbp-0x18]
    15f3:	b8 00 80 ff ff       	mov    eax,0xffff8000
    15f8:	5b                   	pop    rbx
    15f9:	41 5c                	pop    r12
    15fb:	41 5d                	pop    r13
    15fd:	5d                   	pop    rbp
    15fe:	c3                   	ret
    15ff:	90                   	nop
    1600:	66 0f 6f 55 b0       	movdqa xmm2,XMMWORD PTR [rbp-0x50]
    1605:	31 c0                	xor    eax,eax
    1607:	41 0f 11 54 24 30    	movups XMMWORD PTR [r12+0x30],xmm2
    160d:	48 8d 65 e8          	lea    rsp,[rbp-0x18]
    1611:	5b                   	pop    rbx
    1612:	41 5c                	pop    r12
    1614:	41 5d                	pop    r13
    1616:	5d                   	pop    rbp
    1617:	c3                   	ret
    1618:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    161f:	00 

0000000000001620 <hashTableDtor(hashTable_t*, unsigned long)>:
    1620:	f3 0f 1e fa          	endbr64
    1624:	55                   	push   rbp
    1625:	48 89 e5             	mov    rbp,rsp
    1628:	41 55                	push   r13
    162a:	41 54                	push   r12
    162c:	49 89 fc             	mov    r12,rdi
    162f:	53                   	push   rbx
    1630:	48 83 ec 08          	sub    rsp,0x8
    1634:	48 85 f6             	test   rsi,rsi
    1637:	74 1d                	je     1656 <hashTableDtor(hashTable_t*, unsigned long)+0x36>
    1639:	49 89 f5             	mov    r13,rsi
    163c:	31 db                	xor    ebx,ebx
    163e:	66 90                	xchg   ax,ax
    1640:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    1644:	48 8b 3c d8          	mov    rdi,QWORD PTR [rax+rbx*8]
    1648:	48 83 c3 01          	add    rbx,0x1
    164c:	e8 ff 30 00 00       	call   4750 <listDtor(list_t*)>
    1651:	49 39 dd             	cmp    r13,rbx
    1654:	75 ea                	jne    1640 <hashTableDtor(hashTable_t*, unsigned long)+0x20>
    1656:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
    165a:	e8 e1 f9 ff ff       	call   1040 <free@plt>
    165f:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
    1666:	00 
    1667:	48 83 c4 08          	add    rsp,0x8
    166b:	5b                   	pop    rbx
    166c:	41 5c                	pop    r12
    166e:	41 5d                	pop    r13
    1670:	5d                   	pop    rbp
    1671:	c3                   	ret
    1672:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1679:	00 00 00 00 
    167d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001680 <hashTableVerifier(hashTable_t*)>:
    1680:	f3 0f 1e fa          	endbr64
    1684:	55                   	push   rbp
    1685:	48 89 e5             	mov    rbp,rsp
    1688:	41 54                	push   r12
    168a:	53                   	push   rbx
    168b:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    168e:	48 89 fb             	mov    rbx,rdi
    1691:	48 85 c0             	test   rax,rax
    1694:	74 5a                	je     16f0 <hashTableVerifier(hashTable_t*)+0x70>
    1696:	45 31 e4             	xor    r12d,r12d
    1699:	48 83 7f 08 00       	cmp    QWORD PTR [rdi+0x8],0x0
    169e:	66 0f ef d2          	pxor   xmm2,xmm2
    16a2:	75 2d                	jne    16d1 <hashTableVerifier(hashTable_t*)+0x51>
    16a4:	eb 68                	jmp    170e <hashTableVerifier(hashTable_t*)+0x8e>
    16a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    16ad:	00 00 00 
    16b0:	e8 bb 22 00 00       	call   3970 <listVerifier(list_t*)>
    16b5:	0b 43 28             	or     eax,DWORD PTR [rbx+0x28]
    16b8:	89 43 28             	mov    DWORD PTR [rbx+0x28],eax
    16bb:	0f 85 8f 00 00 00    	jne    1750 <hashTableVerifier(hashTable_t*)+0xd0>
    16c1:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
    16c5:	49 83 c4 01          	add    r12,0x1
    16c9:	4c 39 e0             	cmp    rax,r12
    16cc:	76 32                	jbe    1700 <hashTableVerifier(hashTable_t*)+0x80>
    16ce:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    16d1:	4a 8b 3c e0          	mov    rdi,QWORD PTR [rax+r12*8]
    16d5:	48 85 ff             	test   rdi,rdi
    16d8:	75 d6                	jne    16b0 <hashTableVerifier(hashTable_t*)+0x30>
    16da:	8b 43 28             	mov    eax,DWORD PTR [rbx+0x28]
    16dd:	0d 00 00 08 00       	or     eax,0x80000
    16e2:	89 43 28             	mov    DWORD PTR [rbx+0x28],eax
    16e5:	5b                   	pop    rbx
    16e6:	41 5c                	pop    r12
    16e8:	5d                   	pop    rbp
    16e9:	c3                   	ret
    16ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    16f0:	8b 47 28             	mov    eax,DWORD PTR [rdi+0x28]
    16f3:	0d 00 00 04 00       	or     eax,0x40000
    16f8:	89 47 28             	mov    DWORD PTR [rdi+0x28],eax
    16fb:	5b                   	pop    rbx
    16fc:	41 5c                	pop    r12
    16fe:	5d                   	pop    rbp
    16ff:	c3                   	ret
    1700:	48 85 c0             	test   rax,rax
    1703:	78 7b                	js     1780 <hashTableVerifier(hashTable_t*)+0x100>
    1705:	66 0f ef d2          	pxor   xmm2,xmm2
    1709:	f2 48 0f 2a d0       	cvtsi2sd xmm2,rax
    170e:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    1712:	f2 0f 10 4b 18       	movsd  xmm1,QWORD PTR [rbx+0x18]
    1717:	48 85 c0             	test   rax,rax
    171a:	78 44                	js     1760 <hashTableVerifier(hashTable_t*)+0xe0>
    171c:	66 0f ef c0          	pxor   xmm0,xmm0
    1720:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    1725:	f2 0f 5e c2          	divsd  xmm0,xmm2
    1729:	e8 62 11 00 00       	call   2890 <compareDouble(double, double)>
    172e:	85 c0                	test   eax,eax
    1730:	8b 43 28             	mov    eax,DWORD PTR [rbx+0x28]
    1733:	75 08                	jne    173d <hashTableVerifier(hashTable_t*)+0xbd>
    1735:	0d 00 00 10 00       	or     eax,0x100000
    173a:	89 43 28             	mov    DWORD PTR [rbx+0x28],eax
    173d:	48 83 7b 20 00       	cmp    QWORD PTR [rbx+0x20],0x0
    1742:	75 a1                	jne    16e5 <hashTableVerifier(hashTable_t*)+0x65>
    1744:	0d 00 00 20 00       	or     eax,0x200000
    1749:	89 43 28             	mov    DWORD PTR [rbx+0x28],eax
    174c:	eb 97                	jmp    16e5 <hashTableVerifier(hashTable_t*)+0x65>
    174e:	66 90                	xchg   ax,ax
    1750:	0d 00 00 02 00       	or     eax,0x20000
    1755:	89 43 28             	mov    DWORD PTR [rbx+0x28],eax
    1758:	5b                   	pop    rbx
    1759:	41 5c                	pop    r12
    175b:	5d                   	pop    rbp
    175c:	c3                   	ret
    175d:	0f 1f 00             	nop    DWORD PTR [rax]
    1760:	48 89 c2             	mov    rdx,rax
    1763:	83 e0 01             	and    eax,0x1
    1766:	66 0f ef c0          	pxor   xmm0,xmm0
    176a:	48 d1 ea             	shr    rdx,1
    176d:	48 09 c2             	or     rdx,rax
    1770:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    1775:	f2 0f 58 c0          	addsd  xmm0,xmm0
    1779:	eb aa                	jmp    1725 <hashTableVerifier(hashTable_t*)+0xa5>
    177b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1780:	48 89 c2             	mov    rdx,rax
    1783:	83 e0 01             	and    eax,0x1
    1786:	66 0f ef d2          	pxor   xmm2,xmm2
    178a:	48 d1 ea             	shr    rdx,1
    178d:	48 09 c2             	or     rdx,rax
    1790:	f2 48 0f 2a d2       	cvtsi2sd xmm2,rdx
    1795:	f2 0f 58 d2          	addsd  xmm2,xmm2
    1799:	e9 70 ff ff ff       	jmp    170e <hashTableVerifier(hashTable_t*)+0x8e>
    179e:	66 90                	xchg   ax,ax

00000000000017a0 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)>:
    17a0:	f3 0f 1e fa          	endbr64
    17a4:	55                   	push   rbp
    17a5:	48 89 e5             	mov    rbp,rsp
    17a8:	41 57                	push   r15
    17aa:	41 56                	push   r14
    17ac:	41 55                	push   r13
    17ae:	49 89 fd             	mov    r13,rdi
    17b1:	41 54                	push   r12
    17b3:	49 89 f4             	mov    r12,rsi
    17b6:	53                   	push   rbx
    17b7:	48 83 ec 08          	sub    rsp,0x8
    17bb:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
    17bf:	4c 8b 38             	mov    r15,QWORD PTR [rax]
    17c2:	4c 8b 70 08          	mov    r14,QWORD PTR [rax+0x8]
    17c6:	8b 58 10             	mov    ebx,DWORD PTR [rax+0x10]
    17c9:	8b 47 28             	mov    eax,DWORD PTR [rdi+0x28]
    17cc:	a9 00 00 10 00       	test   eax,0x100000
    17d1:	0f 85 39 01 00 00    	jne    1910 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x170>
    17d7:	a9 00 00 20 00       	test   eax,0x200000
    17dc:	0f 85 87 01 00 00    	jne    1969 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x1c9>
    17e2:	a9 00 00 04 00       	test   eax,0x40000
    17e7:	0f 85 d6 01 00 00    	jne    19c3 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x223>
    17ed:	a9 00 00 08 00       	test   eax,0x80000
    17f2:	0f 85 24 02 00 00    	jne    1a1c <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x27c>
    17f8:	a9 00 00 02 00       	test   eax,0x20000
    17fd:	0f 85 71 02 00 00    	jne    1a74 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x2d4>
    1803:	31 db                	xor    ebx,ebx
    1805:	49 83 7d 08 00       	cmp    QWORD PTR [r13+0x8],0x0
    180a:	4c 8d 3d a7 3a 00 00 	lea    r15,[rip+0x3aa7]        # 52b8 <_IO_stdin_used+0x2b8>
    1811:	75 22                	jne    1835 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x95>
    1813:	e9 ba 00 00 00       	jmp    18d2 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x132>
    1818:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    181f:	00 
    1820:	41 f6 46 24 04       	test   BYTE PTR [r14+0x24],0x4
    1825:	74 7f                	je     18a6 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x106>
    1827:	48 83 c3 01          	add    rbx,0x1
    182b:	49 39 5d 08          	cmp    QWORD PTR [r13+0x8],rbx
    182f:	0f 86 9d 00 00 00    	jbe    18d2 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x132>
    1835:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    1839:	4c 89 e1             	mov    rcx,r12
    183c:	ba 44 00 00 00       	mov    edx,0x44
    1841:	4c 89 ff             	mov    rdi,r15
    1844:	be 01 00 00 00       	mov    esi,0x1
    1849:	4c 8b 34 d8          	mov    r14,QWORD PTR [rax+rbx*8]
    184d:	e8 ee f8 ff ff       	call   1140 <fwrite@plt>
    1852:	31 c0                	xor    eax,eax
    1854:	48 89 d9             	mov    rcx,rbx
    1857:	be 01 00 00 00       	mov    esi,0x1
    185c:	4d 89 f0             	mov    r8,r14
    185f:	48 8d 15 9a 3a 00 00 	lea    rdx,[rip+0x3a9a]        # 5300 <_IO_stdin_used+0x300>
    1866:	4c 89 e7             	mov    rdi,r12
    1869:	e8 e2 f8 ff ff       	call   1150 <__fprintf_chk@plt>
    186e:	4d 85 f6             	test   r14,r14
    1871:	74 75                	je     18e8 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x148>
    1873:	49 8b 55 30          	mov    rdx,QWORD PTR [r13+0x30]
    1877:	4c 89 e6             	mov    rsi,r12
    187a:	4c 89 f7             	mov    rdi,r14
    187d:	e8 be 24 00 00       	call   3d40 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)>
    1882:	85 c0                	test   eax,eax
    1884:	75 9a                	jne    1820 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x80>
    1886:	4c 89 e1             	mov    rcx,r12
    1889:	ba 28 00 00 00       	mov    edx,0x28
    188e:	be 01 00 00 00       	mov    esi,0x1
    1893:	48 8d 3d ce 3a 00 00 	lea    rdi,[rip+0x3ace]        # 5368 <_IO_stdin_used+0x368>
    189a:	e8 a1 f8 ff ff       	call   1140 <fwrite@plt>
    189f:	41 f6 46 24 04       	test   BYTE PTR [r14+0x24],0x4
    18a4:	75 81                	jne    1827 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x87>
    18a6:	4c 89 e6             	mov    rsi,r12
    18a9:	4c 89 f7             	mov    rdi,r14
    18ac:	48 83 c3 01          	add    rbx,0x1
    18b0:	e8 eb 1c 00 00       	call   35a0 <fprintfListDataForDump(list_t*, _IO_FILE*)>
    18b5:	49 8b 45 30          	mov    rax,QWORD PTR [r13+0x30]
    18b9:	4c 89 e6             	mov    rsi,r12
    18bc:	4c 89 f7             	mov    rdi,r14
    18bf:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
    18c3:	e8 d8 1f 00 00       	call   38a0 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)>
    18c8:	49 39 5d 08          	cmp    QWORD PTR [r13+0x8],rbx
    18cc:	0f 87 63 ff ff ff    	ja     1835 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x95>
    18d2:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    18d6:	5b                   	pop    rbx
    18d7:	41 5c                	pop    r12
    18d9:	41 5d                	pop    r13
    18db:	41 5e                	pop    r14
    18dd:	41 5f                	pop    r15
    18df:	5d                   	pop    rbp
    18e0:	c3                   	ret
    18e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    18e8:	4c 89 e1             	mov    rcx,r12
    18eb:	ba 2a 00 00 00       	mov    edx,0x2a
    18f0:	be 01 00 00 00       	mov    esi,0x1
    18f5:	48 8d 3d 3c 3a 00 00 	lea    rdi,[rip+0x3a3c]        # 5338 <_IO_stdin_used+0x338>
    18fc:	e8 3f f8 ff ff       	call   1140 <fwrite@plt>
    1901:	e9 21 ff ff ff       	jmp    1827 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x87>
    1906:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    190d:	00 00 00 
    1910:	48 83 ec 08          	sub    rsp,0x8
    1914:	4d 89 f9             	mov    r9,r15
    1917:	4d 89 f0             	mov    r8,r14
    191a:	b9 00 00 f0 ff       	mov    ecx,0xfff00000
    191f:	53                   	push   rbx
    1920:	48 8d 15 e1 36 00 00 	lea    rdx,[rip+0x36e1]        # 5008 <_IO_stdin_used+0x8>
    1927:	be 01 00 00 00       	mov    esi,0x1
    192c:	4c 89 e7             	mov    rdi,r12
    192f:	31 c0                	xor    eax,eax
    1931:	e8 1a f8 ff ff       	call   1150 <__fprintf_chk@plt>
    1936:	41 5b                	pop    r11
    1938:	41 89 d9             	mov    r9d,ebx
    193b:	58                   	pop    rax
    193c:	4d 89 f8             	mov    r8,r15
    193f:	4c 89 f1             	mov    rcx,r14
    1942:	ba 00 00 f0 ff       	mov    edx,0xfff00000
    1947:	bf 01 00 00 00       	mov    edi,0x1
    194c:	48 8d 35 1d 37 00 00 	lea    rsi,[rip+0x371d]        # 5070 <_IO_stdin_used+0x70>
    1953:	31 c0                	xor    eax,eax
    1955:	e8 a6 f7 ff ff       	call   1100 <__printf_chk@plt>
    195a:	41 8b 45 28          	mov    eax,DWORD PTR [r13+0x28]
    195e:	a9 00 00 20 00       	test   eax,0x200000
    1963:	0f 84 79 fe ff ff    	je     17e2 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x42>
    1969:	48 83 ec 08          	sub    rsp,0x8
    196d:	4d 89 f9             	mov    r9,r15
    1970:	4d 89 f0             	mov    r8,r14
    1973:	b9 00 00 e0 ff       	mov    ecx,0xffe00000
    1978:	53                   	push   rbx
    1979:	48 8d 15 38 37 00 00 	lea    rdx,[rip+0x3738]        # 50b8 <_IO_stdin_used+0xb8>
    1980:	be 01 00 00 00       	mov    esi,0x1
    1985:	4c 89 e7             	mov    rdi,r12
    1988:	31 c0                	xor    eax,eax
    198a:	e8 c1 f7 ff ff       	call   1150 <__fprintf_chk@plt>
    198f:	41 59                	pop    r9
    1991:	4d 89 f8             	mov    r8,r15
    1994:	41 5a                	pop    r10
    1996:	41 89 d9             	mov    r9d,ebx
    1999:	4c 89 f1             	mov    rcx,r14
    199c:	ba 00 00 e0 ff       	mov    edx,0xffe00000
    19a1:	bf 01 00 00 00       	mov    edi,0x1
    19a6:	48 8d 35 6b 37 00 00 	lea    rsi,[rip+0x376b]        # 5118 <_IO_stdin_used+0x118>
    19ad:	31 c0                	xor    eax,eax
    19af:	e8 4c f7 ff ff       	call   1100 <__printf_chk@plt>
    19b4:	41 8b 45 28          	mov    eax,DWORD PTR [r13+0x28]
    19b8:	a9 00 00 04 00       	test   eax,0x40000
    19bd:	0f 84 2a fe ff ff    	je     17ed <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x4d>
    19c3:	48 83 ec 08          	sub    rsp,0x8
    19c7:	4d 89 f9             	mov    r9,r15
    19ca:	4d 89 f0             	mov    r8,r14
    19cd:	b9 00 00 fc ff       	mov    ecx,0xfffc0000
    19d2:	53                   	push   rbx
    19d3:	48 8d 15 de 36 00 00 	lea    rdx,[rip+0x36de]        # 50b8 <_IO_stdin_used+0xb8>
    19da:	be 01 00 00 00       	mov    esi,0x1
    19df:	4c 89 e7             	mov    rdi,r12
    19e2:	31 c0                	xor    eax,eax
    19e4:	e8 67 f7 ff ff       	call   1150 <__fprintf_chk@plt>
    19e9:	5f                   	pop    rdi
    19ea:	41 89 d9             	mov    r9d,ebx
    19ed:	41 58                	pop    r8
    19ef:	4c 89 f1             	mov    rcx,r14
    19f2:	4d 89 f8             	mov    r8,r15
    19f5:	ba 00 00 fc ff       	mov    edx,0xfffc0000
    19fa:	bf 01 00 00 00       	mov    edi,0x1
    19ff:	48 8d 35 12 37 00 00 	lea    rsi,[rip+0x3712]        # 5118 <_IO_stdin_used+0x118>
    1a06:	31 c0                	xor    eax,eax
    1a08:	e8 f3 f6 ff ff       	call   1100 <__printf_chk@plt>
    1a0d:	41 8b 45 28          	mov    eax,DWORD PTR [r13+0x28]
    1a11:	a9 00 00 08 00       	test   eax,0x80000
    1a16:	0f 84 dc fd ff ff    	je     17f8 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x58>
    1a1c:	48 83 ec 08          	sub    rsp,0x8
    1a20:	4d 89 f9             	mov    r9,r15
    1a23:	4d 89 f0             	mov    r8,r14
    1a26:	b9 00 00 f8 ff       	mov    ecx,0xfff80000
    1a2b:	53                   	push   rbx
    1a2c:	48 8d 15 25 37 00 00 	lea    rdx,[rip+0x3725]        # 5158 <_IO_stdin_used+0x158>
    1a33:	be 01 00 00 00       	mov    esi,0x1
    1a38:	4c 89 e7             	mov    rdi,r12
    1a3b:	31 c0                	xor    eax,eax
    1a3d:	e8 0e f7 ff ff       	call   1150 <__fprintf_chk@plt>
    1a42:	59                   	pop    rcx
    1a43:	41 89 d9             	mov    r9d,ebx
    1a46:	5e                   	pop    rsi
    1a47:	4d 89 f8             	mov    r8,r15
    1a4a:	4c 89 f1             	mov    rcx,r14
    1a4d:	ba 00 00 f8 ff       	mov    edx,0xfff80000
    1a52:	bf 01 00 00 00       	mov    edi,0x1
    1a57:	48 8d 35 62 37 00 00 	lea    rsi,[rip+0x3762]        # 51c0 <_IO_stdin_used+0x1c0>
    1a5e:	31 c0                	xor    eax,eax
    1a60:	e8 9b f6 ff ff       	call   1100 <__printf_chk@plt>
    1a65:	41 8b 45 28          	mov    eax,DWORD PTR [r13+0x28]
    1a69:	a9 00 00 02 00       	test   eax,0x20000
    1a6e:	0f 84 8f fd ff ff    	je     1803 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x63>
    1a74:	48 83 ec 08          	sub    rsp,0x8
    1a78:	4d 89 f9             	mov    r9,r15
    1a7b:	4d 89 f0             	mov    r8,r14
    1a7e:	4c 89 e7             	mov    rdi,r12
    1a81:	53                   	push   rbx
    1a82:	b9 00 00 fe ff       	mov    ecx,0xfffe0000
    1a87:	48 8d 15 7a 37 00 00 	lea    rdx,[rip+0x377a]        # 5208 <_IO_stdin_used+0x208>
    1a8e:	31 c0                	xor    eax,eax
    1a90:	be 01 00 00 00       	mov    esi,0x1
    1a95:	e8 b6 f6 ff ff       	call   1150 <__fprintf_chk@plt>
    1a9a:	58                   	pop    rax
    1a9b:	41 89 d9             	mov    r9d,ebx
    1a9e:	5a                   	pop    rdx
    1a9f:	4d 89 f8             	mov    r8,r15
    1aa2:	4c 89 f1             	mov    rcx,r14
    1aa5:	ba 00 00 fe ff       	mov    edx,0xfffe0000
    1aaa:	bf 01 00 00 00       	mov    edi,0x1
    1aaf:	48 8d 35 ba 37 00 00 	lea    rsi,[rip+0x37ba]        # 5270 <_IO_stdin_used+0x270>
    1ab6:	31 c0                	xor    eax,eax
    1ab8:	e8 43 f6 ff ff       	call   1100 <__printf_chk@plt>
    1abd:	e9 41 fd ff ff       	jmp    1803 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)+0x63>
    1ac2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1ac9:	00 00 00 00 
    1acd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001ad0 <fprintfHashTableDataForDump(hashTable_t*, _IO_FILE*)>:
    1ad0:	f3 0f 1e fa          	endbr64
    1ad4:	55                   	push   rbp
    1ad5:	48 8d 15 bc 38 00 00 	lea    rdx,[rip+0x38bc]        # 5398 <_IO_stdin_used+0x398>
    1adc:	31 c0                	xor    eax,eax
    1ade:	48 89 e5             	mov    rbp,rsp
    1ae1:	41 54                	push   r12
    1ae3:	49 89 f4             	mov    r12,rsi
    1ae6:	be 01 00 00 00       	mov    esi,0x1
    1aeb:	53                   	push   rbx
    1aec:	48 8b 4f 08          	mov    rcx,QWORD PTR [rdi+0x8]
    1af0:	48 89 fb             	mov    rbx,rdi
    1af3:	4c 89 e7             	mov    rdi,r12
    1af6:	e8 55 f6 ff ff       	call   1150 <__fprintf_chk@plt>
    1afb:	48 8b 4b 10          	mov    rcx,QWORD PTR [rbx+0x10]
    1aff:	4c 89 e7             	mov    rdi,r12
    1b02:	31 c0                	xor    eax,eax
    1b04:	48 8d 15 c5 38 00 00 	lea    rdx,[rip+0x38c5]        # 53d0 <_IO_stdin_used+0x3d0>
    1b0b:	be 01 00 00 00       	mov    esi,0x1
    1b10:	e8 3b f6 ff ff       	call   1150 <__fprintf_chk@plt>
    1b15:	f2 0f 10 43 18       	movsd  xmm0,QWORD PTR [rbx+0x18]
    1b1a:	4c 89 e7             	mov    rdi,r12
    1b1d:	48 8d 15 e4 38 00 00 	lea    rdx,[rip+0x38e4]        # 5408 <_IO_stdin_used+0x408>
    1b24:	be 01 00 00 00       	mov    esi,0x1
    1b29:	b8 01 00 00 00       	mov    eax,0x1
    1b2e:	e8 1d f6 ff ff       	call   1150 <__fprintf_chk@plt>
    1b33:	8b 4b 28             	mov    ecx,DWORD PTR [rbx+0x28]
    1b36:	4c 89 e7             	mov    rdi,r12
    1b39:	5b                   	pop    rbx
    1b3a:	48 8d 15 ff 38 00 00 	lea    rdx,[rip+0x38ff]        # 5440 <_IO_stdin_used+0x440>
    1b41:	41 5c                	pop    r12
    1b43:	be 01 00 00 00       	mov    esi,0x1
    1b48:	31 c0                	xor    eax,eax
    1b4a:	5d                   	pop    rbp
    1b4b:	e9 00 f6 ff ff       	jmp    1150 <__fprintf_chk@plt>

0000000000001b50 <fprintfHtGraphDump(hashTable_t*, char const*)>:
    1b50:	f3 0f 1e fa          	endbr64
    1b54:	55                   	push   rbp
    1b55:	48 89 e5             	mov    rbp,rsp
    1b58:	41 57                	push   r15
    1b5a:	41 56                	push   r14
    1b5c:	41 55                	push   r13
    1b5e:	41 54                	push   r12
    1b60:	49 89 fc             	mov    r12,rdi
    1b63:	48 89 f7             	mov    rdi,rsi
    1b66:	53                   	push   rbx
    1b67:	48 83 ec 18          	sub    rsp,0x18
    1b6b:	48 89 75 c8          	mov    QWORD PTR [rbp-0x38],rsi
    1b6f:	48 8d 35 2a 40 00 00 	lea    rsi,[rip+0x402a]        # 5ba0 <_IO_stdin_used+0xba0>
    1b76:	e8 a5 f5 ff ff       	call   1120 <fopen@plt>
    1b7b:	48 85 c0             	test   rax,rax
    1b7e:	0f 84 c4 01 00 00    	je     1d48 <fprintfHtGraphDump(hashTable_t*, char const*)+0x1f8>
    1b84:	49 89 c7             	mov    r15,rax
    1b87:	48 89 c1             	mov    rcx,rax
    1b8a:	ba 0f 00 00 00       	mov    edx,0xf
    1b8f:	be 01 00 00 00       	mov    esi,0x1
    1b94:	48 8d 3d 22 40 00 00 	lea    rdi,[rip+0x4022]        # 5bbd <_IO_stdin_used+0xbbd>
    1b9b:	31 db                	xor    ebx,ebx
    1b9d:	4c 8d 35 04 39 00 00 	lea    r14,[rip+0x3904]        # 54a8 <_IO_stdin_used+0x4a8>
    1ba4:	e8 97 f5 ff ff       	call   1140 <fwrite@plt>
    1ba9:	4c 89 f9             	mov    rcx,r15
    1bac:	ba 12 00 00 00       	mov    edx,0x12
    1bb1:	be 01 00 00 00       	mov    esi,0x1
    1bb6:	48 8d 3d 10 40 00 00 	lea    rdi,[rip+0x4010]        # 5bcd <_IO_stdin_used+0xbcd>
    1bbd:	e8 7e f5 ff ff       	call   1140 <fwrite@plt>
    1bc2:	4c 89 f9             	mov    rcx,r15
    1bc5:	ba 2b 00 00 00       	mov    edx,0x2b
    1bca:	be 01 00 00 00       	mov    esi,0x1
    1bcf:	48 8d 3d a2 38 00 00 	lea    rdi,[rip+0x38a2]        # 5478 <_IO_stdin_used+0x478>
    1bd6:	e8 65 f5 ff ff       	call   1140 <fwrite@plt>
    1bdb:	49 83 7c 24 08 00    	cmp    QWORD PTR [r12+0x8],0x0
    1be1:	74 6c                	je     1c4f <fprintfHtGraphDump(hashTable_t*, char const*)+0xff>
    1be3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1be8:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    1bec:	49 89 d8             	mov    r8,rbx
    1bef:	48 89 d9             	mov    rcx,rbx
    1bf2:	4c 89 f2             	mov    rdx,r14
    1bf5:	be 01 00 00 00       	mov    esi,0x1
    1bfa:	4c 89 ff             	mov    rdi,r15
    1bfd:	4c 8b 2c d8          	mov    r13,QWORD PTR [rax+rbx*8]
    1c01:	31 c0                	xor    eax,eax
    1c03:	4d 8b 4d 18          	mov    r9,QWORD PTR [r13+0x18]
    1c07:	e8 44 f5 ff ff       	call   1150 <__fprintf_chk@plt>
    1c0c:	48 89 de             	mov    rsi,rbx
    1c0f:	b9 01 00 00 00       	mov    ecx,0x1
    1c14:	4c 89 fa             	mov    rdx,r15
    1c17:	4c 89 ef             	mov    rdi,r13
    1c1a:	e8 e1 13 00 00       	call   3000 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)>
    1c1f:	49 89 d8             	mov    r8,rbx
    1c22:	48 89 d9             	mov    rcx,rbx
    1c25:	be 01 00 00 00       	mov    esi,0x1
    1c2a:	48 8d 15 f7 38 00 00 	lea    rdx,[rip+0x38f7]        # 5528 <_IO_stdin_used+0x528>
    1c31:	4c 89 ff             	mov    rdi,r15
    1c34:	31 c0                	xor    eax,eax
    1c36:	48 83 c3 01          	add    rbx,0x1
    1c3a:	e8 11 f5 ff ff       	call   1150 <__fprintf_chk@plt>
    1c3f:	49 8b 44 24 08       	mov    rax,QWORD PTR [r12+0x8]
    1c44:	48 39 d8             	cmp    rax,rbx
    1c47:	77 9f                	ja     1be8 <fprintfHtGraphDump(hashTable_t*, char const*)+0x98>
    1c49:	48 83 f8 01          	cmp    rax,0x1
    1c4d:	74 3b                	je     1c8a <fprintfHtGraphDump(hashTable_t*, char const*)+0x13a>
    1c4f:	31 db                	xor    ebx,ebx
    1c51:	4c 8d 2d 10 39 00 00 	lea    r13,[rip+0x3910]        # 5568 <_IO_stdin_used+0x568>
    1c58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1c5f:	00 
    1c60:	48 89 d9             	mov    rcx,rbx
    1c63:	48 83 c3 01          	add    rbx,0x1
    1c67:	4c 89 ea             	mov    rdx,r13
    1c6a:	be 01 00 00 00       	mov    esi,0x1
    1c6f:	49 89 d8             	mov    r8,rbx
    1c72:	4c 89 ff             	mov    rdi,r15
    1c75:	31 c0                	xor    eax,eax
    1c77:	e8 d4 f4 ff ff       	call   1150 <__fprintf_chk@plt>
    1c7c:	49 8b 44 24 08       	mov    rax,QWORD PTR [r12+0x8]
    1c81:	48 83 e8 01          	sub    rax,0x1
    1c85:	48 39 c3             	cmp    rbx,rax
    1c88:	72 d6                	jb     1c60 <fprintfHtGraphDump(hashTable_t*, char const*)+0x110>
    1c8a:	4c 89 f9             	mov    rcx,r15
    1c8d:	ba 13 00 00 00       	mov    edx,0x13
    1c92:	be 01 00 00 00       	mov    esi,0x1
    1c97:	31 db                	xor    ebx,ebx
    1c99:	48 8d 3d 40 3f 00 00 	lea    rdi,[rip+0x3f40]        # 5be0 <_IO_stdin_used+0xbe0>
    1ca0:	4c 8d 2d 53 3f 00 00 	lea    r13,[rip+0x3f53]        # 5bfa <_IO_stdin_used+0xbfa>
    1ca7:	e8 94 f4 ff ff       	call   1140 <fwrite@plt>
    1cac:	49 83 7c 24 08 00    	cmp    QWORD PTR [r12+0x8],0x0
    1cb2:	74 24                	je     1cd8 <fprintfHtGraphDump(hashTable_t*, char const*)+0x188>
    1cb4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1cb8:	48 89 d9             	mov    rcx,rbx
    1cbb:	4c 89 ea             	mov    rdx,r13
    1cbe:	be 01 00 00 00       	mov    esi,0x1
    1cc3:	4c 89 ff             	mov    rdi,r15
    1cc6:	31 c0                	xor    eax,eax
    1cc8:	48 83 c3 01          	add    rbx,0x1
    1ccc:	e8 7f f4 ff ff       	call   1150 <__fprintf_chk@plt>
    1cd1:	49 39 5c 24 08       	cmp    QWORD PTR [r12+0x8],rbx
    1cd6:	77 e0                	ja     1cb8 <fprintfHtGraphDump(hashTable_t*, char const*)+0x168>
    1cd8:	48 8d 3d 15 3f 00 00 	lea    rdi,[rip+0x3f15]        # 5bf4 <_IO_stdin_used+0xbf4>
    1cdf:	4c 89 f9             	mov    rcx,r15
    1ce2:	ba 05 00 00 00       	mov    edx,0x5
    1ce7:	be 01 00 00 00       	mov    esi,0x1
    1cec:	e8 4f f4 ff ff       	call   1140 <fwrite@plt>
    1cf1:	4c 89 ff             	mov    rdi,r15
    1cf4:	e8 77 f3 ff ff       	call   1070 <fclose@plt>
    1cf9:	85 c0                	test   eax,eax
    1cfb:	75 13                	jne    1d10 <fprintfHtGraphDump(hashTable_t*, char const*)+0x1c0>
    1cfd:	48 83 c4 18          	add    rsp,0x18
    1d01:	5b                   	pop    rbx
    1d02:	41 5c                	pop    r12
    1d04:	41 5d                	pop    r13
    1d06:	41 5e                	pop    r14
    1d08:	41 5f                	pop    r15
    1d0a:	5d                   	pop    rbp
    1d0b:	c3                   	ret
    1d0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1d10:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
    1d14:	48 8d 15 e9 3e 00 00 	lea    rdx,[rip+0x3ee9]        # 5c04 <_IO_stdin_used+0xc04>
    1d1b:	48 8b 3d fe 72 00 00 	mov    rdi,QWORD PTR [rip+0x72fe]        # 9020 <stderr@GLIBC_2.2.5>
    1d22:	be 01 00 00 00       	mov    esi,0x1
    1d27:	31 c0                	xor    eax,eax
    1d29:	e8 22 f4 ff ff       	call   1150 <__fprintf_chk@plt>
    1d2e:	48 83 c4 18          	add    rsp,0x18
    1d32:	48 8d 3d fa 3e 00 00 	lea    rdi,[rip+0x3efa]        # 5c33 <_IO_stdin_used+0xc33>
    1d39:	5b                   	pop    rbx
    1d3a:	41 5c                	pop    r12
    1d3c:	41 5d                	pop    r13
    1d3e:	41 5e                	pop    r14
    1d40:	41 5f                	pop    r15
    1d42:	5d                   	pop    rbp
    1d43:	e9 e8 f3 ff ff       	jmp    1130 <perror@plt>
    1d48:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
    1d4c:	48 8d 15 4f 3e 00 00 	lea    rdx,[rip+0x3e4f]        # 5ba2 <_IO_stdin_used+0xba2>
    1d53:	eb c6                	jmp    1d1b <fprintfHtGraphDump(hashTable_t*, char const*)+0x1cb>
    1d55:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1d5c:	00 00 00 00 

0000000000001d60 <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)>:
    1d60:	f3 0f 1e fa          	endbr64
    1d64:	55                   	push   rbp
    1d65:	48 89 e5             	mov    rbp,rsp
    1d68:	41 56                	push   r14
    1d6a:	41 55                	push   r13
    1d6c:	49 89 f5             	mov    r13,rsi
    1d6f:	48 89 d6             	mov    rsi,rdx
    1d72:	4c 8d 75 90          	lea    r14,[rbp-0x70]
    1d76:	41 54                	push   r12
    1d78:	49 89 d4             	mov    r12,rdx
    1d7b:	53                   	push   rbx
    1d7c:	48 89 fb             	mov    rbx,rdi
    1d7f:	48 83 ec 50          	sub    rsp,0x50
    1d83:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1d8a:	00 00 
    1d8c:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1d90:	31 c0                	xor    eax,eax
    1d92:	83 05 93 72 00 00 01 	add    DWORD PTR [rip+0x7293],0x1        # 902c <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)::hashTableGraphImageCounter>
    1d99:	e8 b2 fd ff ff       	call   1b50 <fprintfHtGraphDump(hashTable_t*, char const*)>
    1d9e:	48 83 ec 08          	sub    rsp,0x8
    1da2:	66 0f ef c0          	pxor   xmm0,xmm0
    1da6:	4d 89 e1             	mov    r9,r12
    1da9:	8b 05 7d 72 00 00    	mov    eax,DWORD PTR [rip+0x727d]        # 902c <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)::hashTableGraphImageCounter>
    1daf:	4c 8d 05 f2 37 00 00 	lea    r8,[rip+0x37f2]        # 55a8 <_IO_stdin_used+0x5a8>
    1db6:	b9 40 00 00 00       	mov    ecx,0x40
    1dbb:	4c 89 f7             	mov    rdi,r14
    1dbe:	be 40 00 00 00       	mov    esi,0x40
    1dc3:	ba 01 00 00 00       	mov    edx,0x1
    1dc8:	0f 29 45 90          	movaps XMMWORD PTR [rbp-0x70],xmm0
    1dcc:	50                   	push   rax
    1dcd:	31 c0                	xor    eax,eax
    1dcf:	0f 29 45 a0          	movaps XMMWORD PTR [rbp-0x60],xmm0
    1dd3:	0f 29 45 b0          	movaps XMMWORD PTR [rbp-0x50],xmm0
    1dd7:	0f 29 45 c0          	movaps XMMWORD PTR [rbp-0x40],xmm0
    1ddb:	e8 50 f2 ff ff       	call   1030 <__snprintf_chk@plt>
    1de0:	58                   	pop    rax
    1de1:	4c 89 f7             	mov    rdi,r14
    1de4:	5a                   	pop    rdx
    1de5:	e8 a6 f2 ff ff       	call   1090 <system@plt>
    1dea:	8b 0d 3c 72 00 00    	mov    ecx,DWORD PTR [rip+0x723c]        # 902c <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)::hashTableGraphImageCounter>
    1df0:	31 c0                	xor    eax,eax
    1df2:	4c 89 ef             	mov    rdi,r13
    1df5:	4c 69 43 08 96 00 00 	imul   r8,QWORD PTR [rbx+0x8],0x96
    1dfc:	00 
    1dfd:	48 8d 15 d4 37 00 00 	lea    rdx,[rip+0x37d4]        # 55d8 <_IO_stdin_used+0x5d8>
    1e04:	be 01 00 00 00       	mov    esi,0x1
    1e09:	e8 42 f3 ff ff       	call   1150 <__fprintf_chk@plt>
    1e0e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1e12:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1e19:	00 00 
    1e1b:	75 0d                	jne    1e2a <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)+0xca>
    1e1d:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
    1e21:	5b                   	pop    rbx
    1e22:	41 5c                	pop    r12
    1e24:	41 5d                	pop    r13
    1e26:	41 5e                	pop    r14
    1e28:	5d                   	pop    rbp
    1e29:	c3                   	ret
    1e2a:	e8 51 f2 ff ff       	call   1080 <__stack_chk_fail@plt>
    1e2f:	90                   	nop

0000000000001e30 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)>:
    1e30:	f3 0f 1e fa          	endbr64
    1e34:	55                   	push   rbp
    1e35:	48 89 e5             	mov    rbp,rsp
    1e38:	41 57                	push   r15
    1e3a:	41 56                	push   r14
    1e3c:	41 55                	push   r13
    1e3e:	49 89 fd             	mov    r13,rdi
    1e41:	41 54                	push   r12
    1e43:	49 89 f4             	mov    r12,rsi
    1e46:	53                   	push   rbx
    1e47:	48 83 ec 18          	sub    rsp,0x18
    1e4b:	48 8b 77 08          	mov    rsi,QWORD PTR [rdi+0x8]
    1e4f:	48 89 75 c8          	mov    QWORD PTR [rbp-0x38],rsi
    1e53:	48 85 f6             	test   rsi,rsi
    1e56:	0f 84 9c 02 00 00    	je     20f8 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x2c8>
    1e5c:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    1e5f:	31 db                	xor    ebx,ebx
    1e61:	48 8d 0c f0          	lea    rcx,[rax+rsi*8]
    1e65:	0f 1f 00             	nop    DWORD PTR [rax]
    1e68:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1e6b:	48 8b 52 18          	mov    rdx,QWORD PTR [rdx+0x18]
    1e6f:	48 39 d3             	cmp    rbx,rdx
    1e72:	48 0f 42 da          	cmovb  rbx,rdx
    1e76:	48 83 c0 08          	add    rax,0x8
    1e7a:	48 39 c1             	cmp    rcx,rax
    1e7d:	75 e9                	jne    1e68 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x38>
    1e7f:	4c 89 e1             	mov    rcx,r12
    1e82:	ba 09 00 00 00       	mov    edx,0x9
    1e87:	be 01 00 00 00       	mov    esi,0x1
    1e8c:	48 8d 3d 8c 3d 00 00 	lea    rdi,[rip+0x3d8c]        # 5c1f <_IO_stdin_used+0xc1f>
    1e93:	e8 a8 f2 ff ff       	call   1140 <fwrite@plt>
    1e98:	4c 89 e1             	mov    rcx,r12
    1e9b:	ba 4a 00 00 00       	mov    edx,0x4a
    1ea0:	be 01 00 00 00       	mov    esi,0x1
    1ea5:	48 8d 3d 64 37 00 00 	lea    rdi,[rip+0x3764]        # 5610 <_IO_stdin_used+0x610>
    1eac:	e8 8f f2 ff ff       	call   1140 <fwrite@plt>
    1eb1:	4c 89 e1             	mov    rcx,r12
    1eb4:	ba 56 00 00 00       	mov    edx,0x56
    1eb9:	be 01 00 00 00       	mov    esi,0x1
    1ebe:	48 8d 3d 9b 37 00 00 	lea    rdi,[rip+0x379b]        # 5660 <_IO_stdin_used+0x660>
    1ec5:	e8 76 f2 ff ff       	call   1140 <fwrite@plt>
    1eca:	b9 04 01 00 00       	mov    ecx,0x104
    1ecf:	4c 89 e7             	mov    rdi,r12
    1ed2:	31 c0                	xor    eax,eax
    1ed4:	48 8d 15 dd 37 00 00 	lea    rdx,[rip+0x37dd]        # 56b8 <_IO_stdin_used+0x6b8>
    1edb:	be 01 00 00 00       	mov    esi,0x1
    1ee0:	e8 6b f2 ff ff       	call   1150 <__fprintf_chk@plt>
    1ee5:	4c 89 e1             	mov    rcx,r12
    1ee8:	ba 65 00 00 00       	mov    edx,0x65
    1eed:	be 01 00 00 00       	mov    esi,0x1
    1ef2:	48 8d 3d 0f 38 00 00 	lea    rdi,[rip+0x380f]        # 5708 <_IO_stdin_used+0x708>
    1ef9:	e8 42 f2 ff ff       	call   1140 <fwrite@plt>
    1efe:	4c 89 e1             	mov    rcx,r12
    1f01:	ba 57 00 00 00       	mov    edx,0x57
    1f06:	be 01 00 00 00       	mov    esi,0x1
    1f0b:	48 8d 3d 5e 38 00 00 	lea    rdi,[rip+0x385e]        # 5770 <_IO_stdin_used+0x770>
    1f12:	e8 29 f2 ff ff       	call   1140 <fwrite@plt>
    1f17:	4c 89 e1             	mov    rcx,r12
    1f1a:	ba 31 00 00 00       	mov    edx,0x31
    1f1f:	be 01 00 00 00       	mov    esi,0x1
    1f24:	48 8d 3d 9d 38 00 00 	lea    rdi,[rip+0x389d]        # 57c8 <_IO_stdin_used+0x7c8>
    1f2b:	e8 10 f2 ff ff       	call   1140 <fwrite@plt>
    1f30:	4c 89 e1             	mov    rcx,r12
    1f33:	ba 61 00 00 00       	mov    edx,0x61
    1f38:	be 01 00 00 00       	mov    esi,0x1
    1f3d:	48 8d 3d bc 38 00 00 	lea    rdi,[rip+0x38bc]        # 5800 <_IO_stdin_used+0x800>
    1f44:	e8 f7 f1 ff ff       	call   1140 <fwrite@plt>
    1f49:	4c 89 e1             	mov    rcx,r12
    1f4c:	ba 45 00 00 00       	mov    edx,0x45
    1f51:	be 01 00 00 00       	mov    esi,0x1
    1f56:	48 8d 3d 0b 39 00 00 	lea    rdi,[rip+0x390b]        # 5868 <_IO_stdin_used+0x868>
    1f5d:	e8 de f1 ff ff       	call   1140 <fwrite@plt>
    1f62:	4c 89 e1             	mov    rcx,r12
    1f65:	ba 5f 00 00 00       	mov    edx,0x5f
    1f6a:	be 01 00 00 00       	mov    esi,0x1
    1f6f:	48 8d 3d 3a 39 00 00 	lea    rdi,[rip+0x393a]        # 58b0 <_IO_stdin_used+0x8b0>
    1f76:	e8 c5 f1 ff ff       	call   1140 <fwrite@plt>
    1f7b:	4c 89 e1             	mov    rcx,r12
    1f7e:	ba 0a 00 00 00       	mov    edx,0xa
    1f83:	be 01 00 00 00       	mov    esi,0x1
    1f88:	48 8d 3d 9a 3c 00 00 	lea    rdi,[rip+0x3c9a]        # 5c29 <_IO_stdin_used+0xc29>
    1f8f:	e8 ac f1 ff ff       	call   1140 <fwrite@plt>
    1f94:	49 8b 45 38          	mov    rax,QWORD PTR [r13+0x38]
    1f98:	be 01 00 00 00       	mov    esi,0x1
    1f9d:	4c 89 e7             	mov    rdi,r12
    1fa0:	48 8d 15 69 39 00 00 	lea    rdx,[rip+0x3969]        # 5910 <_IO_stdin_used+0x910>
    1fa7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1faa:	31 c0                	xor    eax,eax
    1fac:	e8 9f f1 ff ff       	call   1150 <__fprintf_chk@plt>
    1fb1:	4c 89 e1             	mov    rcx,r12
    1fb4:	ba 20 00 00 00       	mov    edx,0x20
    1fb9:	be 01 00 00 00       	mov    esi,0x1
    1fbe:	48 8d 3d 8b 39 00 00 	lea    rdi,[rip+0x398b]        # 5950 <_IO_stdin_used+0x950>
    1fc5:	e8 76 f1 ff ff       	call   1140 <fwrite@plt>
    1fca:	48 85 db             	test   rbx,rbx
    1fcd:	b8 01 00 00 00       	mov    eax,0x1
    1fd2:	48 0f 44 d8          	cmove  rbx,rax
    1fd6:	48 85 db             	test   rbx,rbx
    1fd9:	0f 88 91 02 00 00    	js     2270 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x440>
    1fdf:	66 0f ef d2          	pxor   xmm2,xmm2
    1fe3:	f2 48 0f 2a d3       	cvtsi2sd xmm2,rbx
    1fe8:	f2 0f 11 55 c0       	movsd  QWORD PTR [rbp-0x40],xmm2
    1fed:	31 db                	xor    ebx,ebx
    1fef:	4c 8d 3d 82 39 00 00 	lea    r15,[rip+0x3982]        # 5978 <_IO_stdin_used+0x978>
    1ff6:	eb 61                	jmp    2059 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x229>
    1ff8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1fff:	00 
    2000:	4c 89 e1             	mov    rcx,r12
    2003:	ba 60 00 00 00       	mov    edx,0x60
    2008:	be 01 00 00 00       	mov    esi,0x1
    200d:	48 8d 3d bc 39 00 00 	lea    rdi,[rip+0x39bc]        # 59d0 <_IO_stdin_used+0x9d0>
    2014:	e8 27 f1 ff ff       	call   1140 <fwrite@plt>
    2019:	48 89 d9             	mov    rcx,rbx
    201c:	48 8d 15 15 3a 00 00 	lea    rdx,[rip+0x3a15]        # 5a38 <_IO_stdin_used+0xa38>
    2023:	4c 89 e7             	mov    rdi,r12
    2026:	31 c0                	xor    eax,eax
    2028:	be 01 00 00 00       	mov    esi,0x1
    202d:	48 83 c3 01          	add    rbx,0x1
    2031:	e8 1a f1 ff ff       	call   1150 <__fprintf_chk@plt>
    2036:	4c 89 e1             	mov    rcx,r12
    2039:	ba 0b 00 00 00       	mov    edx,0xb
    203e:	be 01 00 00 00       	mov    esi,0x1
    2043:	48 8d 3d ff 3b 00 00 	lea    rdi,[rip+0x3bff]        # 5c49 <_IO_stdin_used+0xc49>
    204a:	e8 f1 f0 ff ff       	call   1140 <fwrite@plt>
    204f:	48 39 5d c8          	cmp    QWORD PTR [rbp-0x38],rbx
    2053:	0f 84 ea 01 00 00    	je     2243 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x413>
    2059:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    205d:	4c 89 e1             	mov    rcx,r12
    2060:	ba 21 00 00 00       	mov    edx,0x21
    2065:	4c 89 ff             	mov    rdi,r15
    2068:	be 01 00 00 00       	mov    esi,0x1
    206d:	48 8b 04 d8          	mov    rax,QWORD PTR [rax+rbx*8]
    2071:	4c 8b 70 18          	mov    r14,QWORD PTR [rax+0x18]
    2075:	e8 c6 f0 ff ff       	call   1140 <fwrite@plt>
    207a:	31 c0                	xor    eax,eax
    207c:	be 01 00 00 00       	mov    esi,0x1
    2081:	4c 89 e7             	mov    rdi,r12
    2084:	4c 89 f1             	mov    rcx,r14
    2087:	48 8d 15 12 39 00 00 	lea    rdx,[rip+0x3912]        # 59a0 <_IO_stdin_used+0x9a0>
    208e:	e8 bd f0 ff ff       	call   1150 <__fprintf_chk@plt>
    2093:	4d 85 f6             	test   r14,r14
    2096:	0f 84 64 ff ff ff    	je     2000 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x1d0>
    209c:	78 3a                	js     20d8 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x2a8>
    209e:	66 0f ef c0          	pxor   xmm0,xmm0
    20a2:	f2 49 0f 2a c6       	cvtsi2sd xmm0,r14
    20a7:	f2 0f 5e 45 c0       	divsd  xmm0,QWORD PTR [rbp-0x40]
    20ac:	f2 0f 59 05 ac 3b 00 	mulsd  xmm0,QWORD PTR [rip+0x3bac]        # 5c60 <_IO_stdin_used+0xc60>
    20b3:	00 
    20b4:	be 01 00 00 00       	mov    esi,0x1
    20b9:	4c 89 e7             	mov    rdi,r12
    20bc:	48 8d 15 a5 39 00 00 	lea    rdx,[rip+0x39a5]        # 5a68 <_IO_stdin_used+0xa68>
    20c3:	31 c0                	xor    eax,eax
    20c5:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
    20c9:	e8 82 f0 ff ff       	call   1150 <__fprintf_chk@plt>
    20ce:	e9 46 ff ff ff       	jmp    2019 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x1e9>
    20d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    20d8:	4c 89 f0             	mov    rax,r14
    20db:	41 83 e6 01          	and    r14d,0x1
    20df:	66 0f ef c0          	pxor   xmm0,xmm0
    20e3:	48 d1 e8             	shr    rax,1
    20e6:	4c 09 f0             	or     rax,r14
    20e9:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    20ee:	f2 0f 58 c0          	addsd  xmm0,xmm0
    20f2:	eb b3                	jmp    20a7 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x277>
    20f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    20f8:	4c 89 e1             	mov    rcx,r12
    20fb:	ba 09 00 00 00       	mov    edx,0x9
    2100:	be 01 00 00 00       	mov    esi,0x1
    2105:	48 8d 3d 13 3b 00 00 	lea    rdi,[rip+0x3b13]        # 5c1f <_IO_stdin_used+0xc1f>
    210c:	e8 2f f0 ff ff       	call   1140 <fwrite@plt>
    2111:	4c 89 e1             	mov    rcx,r12
    2114:	ba 4a 00 00 00       	mov    edx,0x4a
    2119:	be 01 00 00 00       	mov    esi,0x1
    211e:	48 8d 3d eb 34 00 00 	lea    rdi,[rip+0x34eb]        # 5610 <_IO_stdin_used+0x610>
    2125:	e8 16 f0 ff ff       	call   1140 <fwrite@plt>
    212a:	4c 89 e1             	mov    rcx,r12
    212d:	ba 56 00 00 00       	mov    edx,0x56
    2132:	be 01 00 00 00       	mov    esi,0x1
    2137:	48 8d 3d 22 35 00 00 	lea    rdi,[rip+0x3522]        # 5660 <_IO_stdin_used+0x660>
    213e:	e8 fd ef ff ff       	call   1140 <fwrite@plt>
    2143:	b9 04 01 00 00       	mov    ecx,0x104
    2148:	4c 89 e7             	mov    rdi,r12
    214b:	31 c0                	xor    eax,eax
    214d:	48 8d 15 64 35 00 00 	lea    rdx,[rip+0x3564]        # 56b8 <_IO_stdin_used+0x6b8>
    2154:	be 01 00 00 00       	mov    esi,0x1
    2159:	e8 f2 ef ff ff       	call   1150 <__fprintf_chk@plt>
    215e:	4c 89 e1             	mov    rcx,r12
    2161:	ba 65 00 00 00       	mov    edx,0x65
    2166:	be 01 00 00 00       	mov    esi,0x1
    216b:	48 8d 3d 96 35 00 00 	lea    rdi,[rip+0x3596]        # 5708 <_IO_stdin_used+0x708>
    2172:	e8 c9 ef ff ff       	call   1140 <fwrite@plt>
    2177:	4c 89 e1             	mov    rcx,r12
    217a:	ba 57 00 00 00       	mov    edx,0x57
    217f:	be 01 00 00 00       	mov    esi,0x1
    2184:	48 8d 3d e5 35 00 00 	lea    rdi,[rip+0x35e5]        # 5770 <_IO_stdin_used+0x770>
    218b:	e8 b0 ef ff ff       	call   1140 <fwrite@plt>
    2190:	4c 89 e1             	mov    rcx,r12
    2193:	ba 31 00 00 00       	mov    edx,0x31
    2198:	be 01 00 00 00       	mov    esi,0x1
    219d:	48 8d 3d 24 36 00 00 	lea    rdi,[rip+0x3624]        # 57c8 <_IO_stdin_used+0x7c8>
    21a4:	e8 97 ef ff ff       	call   1140 <fwrite@plt>
    21a9:	4c 89 e1             	mov    rcx,r12
    21ac:	ba 61 00 00 00       	mov    edx,0x61
    21b1:	be 01 00 00 00       	mov    esi,0x1
    21b6:	48 8d 3d 43 36 00 00 	lea    rdi,[rip+0x3643]        # 5800 <_IO_stdin_used+0x800>
    21bd:	e8 7e ef ff ff       	call   1140 <fwrite@plt>
    21c2:	4c 89 e1             	mov    rcx,r12
    21c5:	ba 45 00 00 00       	mov    edx,0x45
    21ca:	be 01 00 00 00       	mov    esi,0x1
    21cf:	48 8d 3d 92 36 00 00 	lea    rdi,[rip+0x3692]        # 5868 <_IO_stdin_used+0x868>
    21d6:	e8 65 ef ff ff       	call   1140 <fwrite@plt>
    21db:	4c 89 e1             	mov    rcx,r12
    21de:	ba 5f 00 00 00       	mov    edx,0x5f
    21e3:	be 01 00 00 00       	mov    esi,0x1
    21e8:	48 8d 3d c1 36 00 00 	lea    rdi,[rip+0x36c1]        # 58b0 <_IO_stdin_used+0x8b0>
    21ef:	e8 4c ef ff ff       	call   1140 <fwrite@plt>
    21f4:	4c 89 e1             	mov    rcx,r12
    21f7:	ba 0a 00 00 00       	mov    edx,0xa
    21fc:	be 01 00 00 00       	mov    esi,0x1
    2201:	48 8d 3d 21 3a 00 00 	lea    rdi,[rip+0x3a21]        # 5c29 <_IO_stdin_used+0xc29>
    2208:	e8 33 ef ff ff       	call   1140 <fwrite@plt>
    220d:	49 8b 45 38          	mov    rax,QWORD PTR [r13+0x38]
    2211:	be 01 00 00 00       	mov    esi,0x1
    2216:	4c 89 e7             	mov    rdi,r12
    2219:	48 8d 15 f0 36 00 00 	lea    rdx,[rip+0x36f0]        # 5910 <_IO_stdin_used+0x910>
    2220:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    2223:	31 c0                	xor    eax,eax
    2225:	e8 26 ef ff ff       	call   1150 <__fprintf_chk@plt>
    222a:	4c 89 e1             	mov    rcx,r12
    222d:	ba 20 00 00 00       	mov    edx,0x20
    2232:	be 01 00 00 00       	mov    esi,0x1
    2237:	48 8d 3d 12 37 00 00 	lea    rdi,[rip+0x3712]        # 5950 <_IO_stdin_used+0x950>
    223e:	e8 fd ee ff ff       	call   1140 <fwrite@plt>
    2243:	48 83 c4 18          	add    rsp,0x18
    2247:	4c 89 e1             	mov    rcx,r12
    224a:	ba 14 00 00 00       	mov    edx,0x14
    224f:	be 01 00 00 00       	mov    esi,0x1
    2254:	5b                   	pop    rbx
    2255:	48 8d 3d d8 39 00 00 	lea    rdi,[rip+0x39d8]        # 5c34 <_IO_stdin_used+0xc34>
    225c:	41 5c                	pop    r12
    225e:	41 5d                	pop    r13
    2260:	41 5e                	pop    r14
    2262:	41 5f                	pop    r15
    2264:	5d                   	pop    rbp
    2265:	e9 d6 ee ff ff       	jmp    1140 <fwrite@plt>
    226a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    2270:	48 89 d8             	mov    rax,rbx
    2273:	83 e3 01             	and    ebx,0x1
    2276:	66 0f ef c0          	pxor   xmm0,xmm0
    227a:	48 d1 e8             	shr    rax,1
    227d:	48 09 d8             	or     rax,rbx
    2280:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    2285:	f2 0f 58 c0          	addsd  xmm0,xmm0
    2289:	f2 0f 11 45 c0       	movsd  QWORD PTR [rbp-0x40],xmm0
    228e:	e9 5a fd ff ff       	jmp    1fed <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)+0x1bd>
    2293:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    229a:	00 00 00 00 
    229e:	66 90                	xchg   ax,ax

00000000000022a0 <hashTableDump(hashTable_t*, char const*)>:
    22a0:	f3 0f 1e fa          	endbr64
    22a4:	55                   	push   rbp
    22a5:	48 89 e5             	mov    rbp,rsp
    22a8:	41 57                	push   r15
    22aa:	49 89 f7             	mov    r15,rsi
    22ad:	41 56                	push   r14
    22af:	41 55                	push   r13
    22b1:	49 89 fd             	mov    r13,rdi
    22b4:	41 54                	push   r12
    22b6:	53                   	push   rbx
    22b7:	48 83 ec 58          	sub    rsp,0x58
    22bb:	48 8b 5f 30          	mov    rbx,QWORD PTR [rdi+0x30]
    22bf:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    22c6:	00 00 
    22c8:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    22cc:	31 c0                	xor    eax,eax
    22ce:	44 8b 43 28          	mov    r8d,DWORD PTR [rbx+0x28]
    22d2:	4c 8b 73 20          	mov    r14,QWORD PTR [rbx+0x20]
    22d6:	48 8b 7b 18          	mov    rdi,QWORD PTR [rbx+0x18]
    22da:	45 85 c0             	test   r8d,r8d
    22dd:	0f 84 ed 01 00 00    	je     24d0 <hashTableDump(hashTable_t*, char const*)+0x230>
    22e3:	48 8d 35 6b 39 00 00 	lea    rsi,[rip+0x396b]        # 5c55 <_IO_stdin_used+0xc55>
    22ea:	e8 31 ee ff ff       	call   1120 <fopen@plt>
    22ef:	49 89 c4             	mov    r12,rax
    22f2:	4d 85 e4             	test   r12,r12
    22f5:	0f 84 3c 02 00 00    	je     2537 <hashTableDump(hashTable_t*, char const*)+0x297>
    22fb:	4c 89 e1             	mov    rcx,r12
    22fe:	ba 06 00 00 00       	mov    edx,0x6
    2303:	be 01 00 00 00       	mov    esi,0x1
    2308:	48 8d 3d 48 39 00 00 	lea    rdi,[rip+0x3948]        # 5c57 <_IO_stdin_used+0xc57>
    230f:	e8 2c ee ff ff       	call   1140 <fwrite@plt>
    2314:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    2318:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    231b:	4c 89 e7             	mov    rdi,r12
    231e:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    2322:	48 8d 15 7f 37 00 00 	lea    rdx,[rip+0x377f]        # 5aa8 <_IO_stdin_used+0xaa8>
    2329:	be 01 00 00 00       	mov    esi,0x1
    232e:	31 c0                	xor    eax,eax
    2330:	e8 1b ee ff ff       	call   1150 <__fprintf_chk@plt>
    2335:	4c 89 f9             	mov    rcx,r15
    2338:	be 01 00 00 00       	mov    esi,0x1
    233d:	4c 89 e7             	mov    rdi,r12
    2340:	48 8d 15 a9 37 00 00 	lea    rdx,[rip+0x37a9]        # 5af0 <_IO_stdin_used+0xaf0>
    2347:	31 c0                	xor    eax,eax
    2349:	4c 8d 7d 80          	lea    r15,[rbp-0x80]
    234d:	e8 fe ed ff ff       	call   1150 <__fprintf_chk@plt>
    2352:	49 8b 45 38          	mov    rax,QWORD PTR [r13+0x38]
    2356:	4d 89 e8             	mov    r8,r13
    2359:	4c 89 e7             	mov    rdi,r12
    235c:	be 01 00 00 00       	mov    esi,0x1
    2361:	8b 50 18             	mov    edx,DWORD PTR [rax+0x18]
    2364:	4c 8b 48 10          	mov    r9,QWORD PTR [rax+0x10]
    2368:	52                   	push   rdx
    2369:	48 8d 15 a8 37 00 00 	lea    rdx,[rip+0x37a8]        # 5b18 <_IO_stdin_used+0xb18>
    2370:	ff 70 08             	push   QWORD PTR [rax+0x8]
    2373:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    2376:	31 c0                	xor    eax,eax
    2378:	e8 d3 ed ff ff       	call   1150 <__fprintf_chk@plt>
    237d:	49 8b 4d 08          	mov    rcx,QWORD PTR [r13+0x8]
    2381:	58                   	pop    rax
    2382:	be 01 00 00 00       	mov    esi,0x1
    2387:	5a                   	pop    rdx
    2388:	4c 89 e7             	mov    rdi,r12
    238b:	48 8d 15 06 30 00 00 	lea    rdx,[rip+0x3006]        # 5398 <_IO_stdin_used+0x398>
    2392:	31 c0                	xor    eax,eax
    2394:	e8 b7 ed ff ff       	call   1150 <__fprintf_chk@plt>
    2399:	49 8b 4d 10          	mov    rcx,QWORD PTR [r13+0x10]
    239d:	be 01 00 00 00       	mov    esi,0x1
    23a2:	31 c0                	xor    eax,eax
    23a4:	48 8d 15 25 30 00 00 	lea    rdx,[rip+0x3025]        # 53d0 <_IO_stdin_used+0x3d0>
    23ab:	4c 89 e7             	mov    rdi,r12
    23ae:	e8 9d ed ff ff       	call   1150 <__fprintf_chk@plt>
    23b3:	f2 41 0f 10 45 18    	movsd  xmm0,QWORD PTR [r13+0x18]
    23b9:	be 01 00 00 00       	mov    esi,0x1
    23be:	4c 89 e7             	mov    rdi,r12
    23c1:	48 8d 15 40 30 00 00 	lea    rdx,[rip+0x3040]        # 5408 <_IO_stdin_used+0x408>
    23c8:	b8 01 00 00 00       	mov    eax,0x1
    23cd:	e8 7e ed ff ff       	call   1150 <__fprintf_chk@plt>
    23d2:	41 8b 4d 28          	mov    ecx,DWORD PTR [r13+0x28]
    23d6:	be 01 00 00 00       	mov    esi,0x1
    23db:	31 c0                	xor    eax,eax
    23dd:	48 8d 15 5c 30 00 00 	lea    rdx,[rip+0x305c]        # 5440 <_IO_stdin_used+0x440>
    23e4:	4c 89 e7             	mov    rdi,r12
    23e7:	e8 64 ed ff ff       	call   1150 <__fprintf_chk@plt>
    23ec:	4c 89 e6             	mov    rsi,r12
    23ef:	4c 89 ef             	mov    rdi,r13
    23f2:	e8 a9 f3 ff ff       	call   17a0 <fprintfHashTableErrorsForDump(hashTable_t*, _IO_FILE*)>
    23f7:	4c 89 e1             	mov    rcx,r12
    23fa:	ba 3c 00 00 00       	mov    edx,0x3c
    23ff:	be 01 00 00 00       	mov    esi,0x1
    2404:	48 8d 3d 35 37 00 00 	lea    rdi,[rip+0x3735]        # 5b40 <_IO_stdin_used+0xb40>
    240b:	e8 30 ed ff ff       	call   1140 <fwrite@plt>
    2410:	4c 89 f6             	mov    rsi,r14
    2413:	4c 89 ef             	mov    rdi,r13
    2416:	83 05 0f 6c 00 00 01 	add    DWORD PTR [rip+0x6c0f],0x1        # 902c <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)::hashTableGraphImageCounter>
    241d:	e8 2e f7 ff ff       	call   1b50 <fprintfHtGraphDump(hashTable_t*, char const*)>
    2422:	48 83 ec 08          	sub    rsp,0x8
    2426:	66 0f ef c0          	pxor   xmm0,xmm0
    242a:	4d 89 f1             	mov    r9,r14
    242d:	8b 05 f9 6b 00 00    	mov    eax,DWORD PTR [rip+0x6bf9]        # 902c <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)::hashTableGraphImageCounter>
    2433:	4c 8d 05 6e 31 00 00 	lea    r8,[rip+0x316e]        # 55a8 <_IO_stdin_used+0x5a8>
    243a:	ba 01 00 00 00       	mov    edx,0x1
    243f:	4c 89 ff             	mov    rdi,r15
    2442:	b9 40 00 00 00       	mov    ecx,0x40
    2447:	be 40 00 00 00       	mov    esi,0x40
    244c:	0f 29 45 80          	movaps XMMWORD PTR [rbp-0x80],xmm0
    2450:	50                   	push   rax
    2451:	31 c0                	xor    eax,eax
    2453:	0f 29 45 90          	movaps XMMWORD PTR [rbp-0x70],xmm0
    2457:	0f 29 45 a0          	movaps XMMWORD PTR [rbp-0x60],xmm0
    245b:	0f 29 45 b0          	movaps XMMWORD PTR [rbp-0x50],xmm0
    245f:	e8 cc eb ff ff       	call   1030 <__snprintf_chk@plt>
    2464:	59                   	pop    rcx
    2465:	4c 89 ff             	mov    rdi,r15
    2468:	5e                   	pop    rsi
    2469:	e8 22 ec ff ff       	call   1090 <system@plt>
    246e:	8b 0d b8 6b 00 00    	mov    ecx,DWORD PTR [rip+0x6bb8]        # 902c <createHtGraphImageForDump(hashTable_t*, _IO_FILE*, char const*)::hashTableGraphImageCounter>
    2474:	4c 89 e7             	mov    rdi,r12
    2477:	31 c0                	xor    eax,eax
    2479:	4d 69 45 08 96 00 00 	imul   r8,QWORD PTR [r13+0x8],0x96
    2480:	00 
    2481:	48 8d 15 50 31 00 00 	lea    rdx,[rip+0x3150]        # 55d8 <_IO_stdin_used+0x5d8>
    2488:	be 01 00 00 00       	mov    esi,0x1
    248d:	e8 be ec ff ff       	call   1150 <__fprintf_chk@plt>
    2492:	4c 89 ef             	mov    rdi,r13
    2495:	4c 89 e6             	mov    rsi,r12
    2498:	e8 93 f9 ff ff       	call   1e30 <fprintfHashTableHistogram(hashTable_t*, _IO_FILE*)>
    249d:	4c 89 e7             	mov    rdi,r12
    24a0:	e8 cb eb ff ff       	call   1070 <fclose@plt>
    24a5:	85 c0                	test   eax,eax
    24a7:	75 47                	jne    24f0 <hashTableDump(hashTable_t*, char const*)+0x250>
    24a9:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    24ad:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    24b4:	00 00 
    24b6:	0f 85 87 00 00 00    	jne    2543 <hashTableDump(hashTable_t*, char const*)+0x2a3>
    24bc:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    24c0:	5b                   	pop    rbx
    24c1:	41 5c                	pop    r12
    24c3:	41 5d                	pop    r13
    24c5:	41 5e                	pop    r14
    24c7:	41 5f                	pop    r15
    24c9:	5d                   	pop    rbp
    24ca:	c3                   	ret
    24cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    24d0:	48 8d 35 c9 36 00 00 	lea    rsi,[rip+0x36c9]        # 5ba0 <_IO_stdin_used+0xba0>
    24d7:	e8 44 ec ff ff       	call   1120 <fopen@plt>
    24dc:	49 89 c4             	mov    r12,rax
    24df:	49 8b 45 30          	mov    rax,QWORD PTR [r13+0x30]
    24e3:	c7 40 28 01 00 00 00 	mov    DWORD PTR [rax+0x28],0x1
    24ea:	e9 03 fe ff ff       	jmp    22f2 <hashTableDump(hashTable_t*, char const*)+0x52>
    24ef:	90                   	nop
    24f0:	48 8b 4b 20          	mov    rcx,QWORD PTR [rbx+0x20]
    24f4:	48 8d 15 09 37 00 00 	lea    rdx,[rip+0x3709]        # 5c04 <_IO_stdin_used+0xc04>
    24fb:	48 8b 3d 1e 6b 00 00 	mov    rdi,QWORD PTR [rip+0x6b1e]        # 9020 <stderr@GLIBC_2.2.5>
    2502:	31 c0                	xor    eax,eax
    2504:	be 01 00 00 00       	mov    esi,0x1
    2509:	e8 42 ec ff ff       	call   1150 <__fprintf_chk@plt>
    250e:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    2512:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2519:	00 00 
    251b:	75 26                	jne    2543 <hashTableDump(hashTable_t*, char const*)+0x2a3>
    251d:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    2521:	48 8d 3d 0b 37 00 00 	lea    rdi,[rip+0x370b]        # 5c33 <_IO_stdin_used+0xc33>
    2528:	5b                   	pop    rbx
    2529:	41 5c                	pop    r12
    252b:	41 5d                	pop    r13
    252d:	41 5e                	pop    r14
    252f:	41 5f                	pop    r15
    2531:	5d                   	pop    rbp
    2532:	e9 f9 eb ff ff       	jmp    1130 <perror@plt>
    2537:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    253a:	48 8d 15 61 36 00 00 	lea    rdx,[rip+0x3661]        # 5ba2 <_IO_stdin_used+0xba2>
    2541:	eb b8                	jmp    24fb <hashTableDump(hashTable_t*, char const*)+0x25b>
    2543:	e8 38 eb ff ff       	call   1080 <__stack_chk_fail@plt>
    2548:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    254f:	00 

0000000000002550 <fillHashTable(hashTable_t*, wordArrStruct_t*)>:
    2550:	f3 0f 1e fa          	endbr64
    2554:	55                   	push   rbp
    2555:	48 89 e5             	mov    rbp,rsp
    2558:	41 57                	push   r15
    255a:	41 56                	push   r14
    255c:	41 55                	push   r13
    255e:	41 54                	push   r12
    2560:	53                   	push   rbx
    2561:	48 83 ec 28          	sub    rsp,0x28
    2565:	48 8b 47 20          	mov    rax,QWORD PTR [rdi+0x20]
    2569:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    256d:	48 8b 46 18          	mov    rax,QWORD PTR [rsi+0x18]
    2571:	48 85 c0             	test   rax,rax
    2574:	0f 84 f6 00 00 00    	je     2670 <fillHashTable(hashTable_t*, wordArrStruct_t*)+0x120>
    257a:	49 89 ff             	mov    r15,rdi
    257d:	49 89 f4             	mov    r12,rsi
    2580:	31 db                	xor    ebx,ebx
    2582:	eb 22                	jmp    25a6 <fillHashTable(hashTable_t*, wordArrStruct_t*)+0x56>
    2584:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2588:	48 98                	cdqe
    258a:	48 8d 14 80          	lea    rdx,[rax+rax*4]
    258e:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    2592:	48 83 44 d0 18 01    	add    QWORD PTR [rax+rdx*8+0x18],0x1
    2598:	49 8b 44 24 18       	mov    rax,QWORD PTR [r12+0x18]
    259d:	48 39 c3             	cmp    rbx,rax
    25a0:	0f 83 ca 00 00 00    	jae    2670 <fillHashTable(hashTable_t*, wordArrStruct_t*)+0x120>
    25a6:	48 83 c3 01          	add    rbx,0x1
    25aa:	48 39 c3             	cmp    rbx,rax
    25ad:	73 12                	jae    25c1 <fillHashTable(hashTable_t*, wordArrStruct_t*)+0x71>
    25af:	48 89 d8             	mov    rax,rbx
    25b2:	48 c1 e0 04          	shl    rax,0x4
    25b6:	49 03 44 24 08       	add    rax,QWORD PTR [r12+0x8]
    25bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    25be:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    25c1:	48 89 d9             	mov    rcx,rbx
    25c4:	48 c1 e1 04          	shl    rcx,0x4
    25c8:	48 8d 41 f0          	lea    rax,[rcx-0x10]
    25cc:	48 89 4d c8          	mov    QWORD PTR [rbp-0x38],rcx
    25d0:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    25d4:	49 8b 44 24 08       	mov    rax,QWORD PTR [r12+0x8]
    25d9:	48 8b 7c 08 f0       	mov    rdi,QWORD PTR [rax+rcx*1-0x10]
    25de:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    25e2:	ff d0                	call   rax
    25e4:	49 8b 57 08          	mov    rdx,QWORD PTR [r15+0x8]
    25e8:	48 c1 e0 20          	shl    rax,0x20
    25ec:	49 89 c6             	mov    r14,rax
    25ef:	48 f7 e2             	mul    rdx
    25f2:	49 8b 07             	mov    rax,QWORD PTR [r15]
    25f5:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
    25f9:	4c 8b 2c d0          	mov    r13,QWORD PTR [rax+rdx*8]
    25fd:	49 8b 44 24 08       	mov    rax,QWORD PTR [r12+0x8]
    2602:	4c 89 f2             	mov    rdx,r14
    2605:	48 8b 74 08 f0       	mov    rsi,QWORD PTR [rax+rcx*1-0x10]
    260a:	4c 89 ef             	mov    rdi,r13
    260d:	e8 6e 23 00 00       	call   4980 <findWordInList_asm>
    2612:	3d 26 f1 ff ff       	cmp    eax,0xfffff126
    2617:	0f 85 6b ff ff ff    	jne    2588 <fillHashTable(hashTable_t*, wordArrStruct_t*)+0x38>
    261d:	49 83 47 10 01       	add    QWORD PTR [r15+0x10],0x1
    2622:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
    2626:	4d 89 f0             	mov    r8,r14
    2629:	4c 89 ef             	mov    rdi,r13
    262c:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    2630:	49 03 44 24 08       	add    rax,QWORD PTR [r12+0x8]
    2635:	8b 72 04             	mov    esi,DWORD PTR [rdx+0x4]
    2638:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
    263c:	4d 8b 4f 30          	mov    r9,QWORD PTR [r15+0x30]
    2640:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2643:	e8 d8 1c 00 00       	call   4320 <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)>
    2648:	85 c0                	test   eax,eax
    264a:	0f 89 48 ff ff ff    	jns    2598 <fillHashTable(hashTable_t*, wordArrStruct_t*)+0x48>
    2650:	49 8b 44 24 08       	mov    rax,QWORD PTR [r12+0x8]
    2655:	48 8b 75 c0          	mov    rsi,QWORD PTR [rbp-0x40]
    2659:	bf 01 00 00 00       	mov    edi,0x1
    265e:	48 8b 14 30          	mov    rdx,QWORD PTR [rax+rsi*1]
    2662:	48 8d 35 17 35 00 00 	lea    rsi,[rip+0x3517]        # 5b80 <_IO_stdin_used+0xb80>
    2669:	31 c0                	xor    eax,eax
    266b:	e8 90 ea ff ff       	call   1100 <__printf_chk@plt>
    2670:	48 83 c4 28          	add    rsp,0x28
    2674:	31 c0                	xor    eax,eax
    2676:	5b                   	pop    rbx
    2677:	41 5c                	pop    r12
    2679:	41 5d                	pop    r13
    267b:	41 5e                	pop    r14
    267d:	41 5f                	pop    r15
    267f:	5d                   	pop    rbp
    2680:	c3                   	ret
    2681:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2688:	00 00 00 00 
    268c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002690 <findWordInTheHashTable(hashTable_t*, char const*)>:
    2690:	f3 0f 1e fa          	endbr64
    2694:	55                   	push   rbp
    2695:	48 89 e5             	mov    rbp,rsp
    2698:	41 54                	push   r12
    269a:	49 89 f4             	mov    r12,rsi
    269d:	53                   	push   rbx
    269e:	48 89 fb             	mov    rbx,rdi
    26a1:	48 89 f7             	mov    rdi,rsi
    26a4:	ff 53 20             	call   QWORD PTR [rbx+0x20]
    26a7:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    26ab:	48 c1 e0 20          	shl    rax,0x20
    26af:	49 89 c0             	mov    r8,rax
    26b2:	48 f7 e2             	mul    rdx
    26b5:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    26b8:	4c 89 e6             	mov    rsi,r12
    26bb:	48 8b 3c d0          	mov    rdi,QWORD PTR [rax+rdx*8]
    26bf:	4c 89 c2             	mov    rdx,r8
    26c2:	e8 b9 22 00 00       	call   4980 <findWordInList_asm>
    26c7:	ba 26 f1 ff ff       	mov    edx,0xfffff126
    26cc:	41 89 c0             	mov    r8d,eax
    26cf:	41 39 d0             	cmp    r8d,edx
    26d2:	0f 95 c0             	setne  al
    26d5:	44 0f b6 c0          	movzx  r8d,al
    26d9:	5b                   	pop    rbx
    26da:	44 89 c0             	mov    eax,r8d
    26dd:	41 5c                	pop    r12
    26df:	5d                   	pop    rbp
    26e0:	c3                   	ret
    26e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    26e8:	00 00 00 00 
    26ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000026f0 <testHashTable(hashTable_t*, wordArrStruct_t*, unsigned long)>:
    26f0:	f3 0f 1e fa          	endbr64
    26f4:	55                   	push   rbp
    26f5:	48 89 e5             	mov    rbp,rsp
    26f8:	41 57                	push   r15
    26fa:	41 56                	push   r14
    26fc:	41 55                	push   r13
    26fe:	41 54                	push   r12
    2700:	53                   	push   rbx
    2701:	48 83 ec 18          	sub    rsp,0x18
    2705:	48 89 55 c0          	mov    QWORD PTR [rbp-0x40],rdx
    2709:	48 c7 45 c8 00 00 00 	mov    QWORD PTR [rbp-0x38],0x0
    2710:	00 
    2711:	48 85 d2             	test   rdx,rdx
    2714:	0f 84 9e 00 00 00    	je     27b8 <testHashTable(hashTable_t*, wordArrStruct_t*, unsigned long)+0xc8>
    271a:	49 89 ff             	mov    r15,rdi
    271d:	49 89 f6             	mov    r14,rsi
    2720:	31 d2                	xor    edx,edx
    2722:	41 bc 26 f1 ff ff    	mov    r12d,0xfffff126
    2728:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    272f:	00 
    2730:	49 8b 46 18          	mov    rax,QWORD PTR [r14+0x18]
    2734:	31 db                	xor    ebx,ebx
    2736:	48 85 c0             	test   rax,rax
    2739:	74 6a                	je     27a5 <testHashTable(hashTable_t*, wordArrStruct_t*, unsigned long)+0xb5>
    273b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2740:	48 83 c3 01          	add    rbx,0x1
    2744:	48 39 c3             	cmp    rbx,rax
    2747:	73 11                	jae    275a <testHashTable(hashTable_t*, wordArrStruct_t*, unsigned long)+0x6a>
    2749:	48 89 d8             	mov    rax,rbx
    274c:	48 c1 e0 04          	shl    rax,0x4
    2750:	49 03 46 08          	add    rax,QWORD PTR [r14+0x8]
    2754:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2757:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    275a:	48 89 d8             	mov    rax,rbx
    275d:	48 c1 e0 04          	shl    rax,0x4
    2761:	49 03 46 08          	add    rax,QWORD PTR [r14+0x8]
    2765:	4c 8b 68 f0          	mov    r13,QWORD PTR [rax-0x10]
    2769:	4c 89 ef             	mov    rdi,r13
    276c:	41 ff 57 20          	call   QWORD PTR [r15+0x20]
    2770:	49 8b 57 08          	mov    rdx,QWORD PTR [r15+0x8]
    2774:	48 c1 e0 20          	shl    rax,0x20
    2778:	49 89 c0             	mov    r8,rax
    277b:	48 f7 e2             	mul    rdx
    277e:	49 8b 07             	mov    rax,QWORD PTR [r15]
    2781:	4c 89 ee             	mov    rsi,r13
    2784:	48 8b 3c d0          	mov    rdi,QWORD PTR [rax+rdx*8]
    2788:	4c 89 c2             	mov    rdx,r8
    278b:	e8 f0 21 00 00       	call   4980 <findWordInList_asm>
    2790:	41 89 c0             	mov    r8d,eax
    2793:	45 39 e0             	cmp    r8d,r12d
    2796:	0f 95 c0             	setne  al
    2799:	0f b6 d0             	movzx  edx,al
    279c:	49 8b 46 18          	mov    rax,QWORD PTR [r14+0x18]
    27a0:	48 39 c3             	cmp    rbx,rax
    27a3:	72 9b                	jb     2740 <testHashTable(hashTable_t*, wordArrStruct_t*, unsigned long)+0x50>
    27a5:	48 83 45 c8 01       	add    QWORD PTR [rbp-0x38],0x1
    27aa:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    27ae:	48 39 45 c0          	cmp    QWORD PTR [rbp-0x40],rax
    27b2:	0f 85 78 ff ff ff    	jne    2730 <testHashTable(hashTable_t*, wordArrStruct_t*, unsigned long)+0x40>
    27b8:	48 83 c4 18          	add    rsp,0x18
    27bc:	31 c0                	xor    eax,eax
    27be:	5b                   	pop    rbx
    27bf:	41 5c                	pop    r12
    27c1:	41 5d                	pop    r13
    27c3:	41 5e                	pop    r14
    27c5:	41 5f                	pop    r15
    27c7:	5d                   	pop    rbp
    27c8:	c3                   	ret
    27c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000027d0 <getSizeOfFile(int)>:
    27d0:	f3 0f 1e fa          	endbr64
    27d4:	55                   	push   rbp
    27d5:	41 89 f8             	mov    r8d,edi
    27d8:	b9 12 00 00 00       	mov    ecx,0x12
    27dd:	48 89 e5             	mov    rbp,rsp
    27e0:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
    27e7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    27ee:	00 00 
    27f0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    27f4:	31 c0                	xor    eax,eax
    27f6:	48 8d bd 60 ff ff ff 	lea    rdi,[rbp-0xa0]
    27fd:	48 8d b5 60 ff ff ff 	lea    rsi,[rbp-0xa0]
    2804:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    2807:	44 89 c7             	mov    edi,r8d
    280a:	e8 51 e9 ff ff       	call   1160 <fstat@plt>
    280f:	85 c0                	test   eax,eax
    2811:	75 1d                	jne    2830 <getSizeOfFile(int)+0x60>
    2813:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
    2817:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    281b:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    2822:	00 00 
    2824:	75 1a                	jne    2840 <getSizeOfFile(int)+0x70>
    2826:	c9                   	leave
    2827:	c3                   	ret
    2828:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    282f:	00 
    2830:	48 8d 3d 31 34 00 00 	lea    rdi,[rip+0x3431]        # 5c68 <_IO_stdin_used+0xc68>
    2837:	e8 f4 e8 ff ff       	call   1130 <perror@plt>
    283c:	31 c0                	xor    eax,eax
    283e:	eb d7                	jmp    2817 <getSizeOfFile(int)+0x47>
    2840:	e8 3b e8 ff ff       	call   1080 <__stack_chk_fail@plt>
    2845:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    284c:	00 00 00 00 

0000000000002850 <skipSpaces(char const**)>:
    2850:	f3 0f 1e fa          	endbr64
    2854:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    2857:	0f b6 10             	movzx  edx,BYTE PTR [rax]
    285a:	8d 4a f7             	lea    ecx,[rdx-0x9]
    285d:	80 f9 01             	cmp    cl,0x1
    2860:	76 05                	jbe    2867 <skipSpaces(char const**)+0x17>
    2862:	80 fa 20             	cmp    dl,0x20
    2865:	75 20                	jne    2887 <skipSpaces(char const**)+0x37>
    2867:	48 83 c0 01          	add    rax,0x1
    286b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2870:	48 89 07             	mov    QWORD PTR [rdi],rax
    2873:	0f b6 10             	movzx  edx,BYTE PTR [rax]
    2876:	48 83 c0 01          	add    rax,0x1
    287a:	8d 4a f7             	lea    ecx,[rdx-0x9]
    287d:	80 f9 01             	cmp    cl,0x1
    2880:	76 ee                	jbe    2870 <skipSpaces(char const**)+0x20>
    2882:	80 fa 20             	cmp    dl,0x20
    2885:	74 e9                	je     2870 <skipSpaces(char const**)+0x20>
    2887:	c3                   	ret
    2888:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    288f:	00 

0000000000002890 <compareDouble(double, double)>:
    2890:	f3 0f 1e fa          	endbr64
    2894:	66 0f 2e c9          	ucomisd xmm1,xmm1
    2898:	7b 06                	jnp    28a0 <compareDouble(double, double)+0x10>
    289a:	66 0f 2e c0          	ucomisd xmm0,xmm0
    289e:	7a 50                	jp     28f0 <compareDouble(double, double)+0x60>
    28a0:	f3 0f 7e 15 18 34 00 	movq   xmm2,QWORD PTR [rip+0x3418]        # 5cc0 <_IO_stdin_used+0xcc0>
    28a7:	00 
    28a8:	f2 0f 10 1d 20 34 00 	movsd  xmm3,QWORD PTR [rip+0x3420]        # 5cd0 <_IO_stdin_used+0xcd0>
    28af:	00 
    28b0:	66 0f 28 e0          	movapd xmm4,xmm0
    28b4:	66 0f 54 e2          	andpd  xmm4,xmm2
    28b8:	66 0f 2e e3          	ucomisd xmm4,xmm3
    28bc:	76 0e                	jbe    28cc <compareDouble(double, double)+0x3c>
    28be:	66 0f 28 e1          	movapd xmm4,xmm1
    28c2:	66 0f 54 e2          	andpd  xmm4,xmm2
    28c6:	66 0f 2e e3          	ucomisd xmm4,xmm3
    28ca:	77 24                	ja     28f0 <compareDouble(double, double)+0x60>
    28cc:	f2 0f 5c c1          	subsd  xmm0,xmm1
    28d0:	f2 0f 10 0d 00 34 00 	movsd  xmm1,QWORD PTR [rip+0x3400]        # 5cd8 <_IO_stdin_used+0xcd8>
    28d7:	00 
    28d8:	31 c0                	xor    eax,eax
    28da:	66 0f 54 c2          	andpd  xmm0,xmm2
    28de:	66 0f 2f c8          	comisd xmm1,xmm0
    28e2:	0f 97 c0             	seta   al
    28e5:	c3                   	ret
    28e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    28ed:	00 00 00 
    28f0:	b8 01 00 00 00       	mov    eax,0x1
    28f5:	c3                   	ret
    28f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    28fd:	00 00 00 

0000000000002900 <countWords(char const*)>:
    2900:	f3 0f 1e fa          	endbr64
    2904:	55                   	push   rbp
    2905:	48 89 e5             	mov    rbp,rsp
    2908:	41 55                	push   r13
    290a:	41 54                	push   r12
    290c:	53                   	push   rbx
    290d:	48 89 fb             	mov    rbx,rdi
    2910:	48 83 ec 08          	sub    rsp,0x8
    2914:	0f b6 3f             	movzx  edi,BYTE PTR [rdi]
    2917:	40 84 ff             	test   dil,dil
    291a:	74 54                	je     2970 <countWords(char const*)+0x70>
    291c:	45 31 e4             	xor    r12d,r12d
    291f:	45 31 ed             	xor    r13d,r13d
    2922:	eb 20                	jmp    2944 <countWords(char const*)+0x44>
    2924:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2928:	45 85 e4             	test   r12d,r12d
    292b:	75 0a                	jne    2937 <countWords(char const*)+0x37>
    292d:	49 83 c5 01          	add    r13,0x1
    2931:	41 bc 01 00 00 00    	mov    r12d,0x1
    2937:	0f b6 7b 01          	movzx  edi,BYTE PTR [rbx+0x1]
    293b:	48 83 c3 01          	add    rbx,0x1
    293f:	40 84 ff             	test   dil,dil
    2942:	74 19                	je     295d <countWords(char const*)+0x5d>
    2944:	e8 67 e7 ff ff       	call   10b0 <isspace@plt>
    2949:	85 c0                	test   eax,eax
    294b:	74 db                	je     2928 <countWords(char const*)+0x28>
    294d:	0f b6 7b 01          	movzx  edi,BYTE PTR [rbx+0x1]
    2951:	48 83 c3 01          	add    rbx,0x1
    2955:	45 31 e4             	xor    r12d,r12d
    2958:	40 84 ff             	test   dil,dil
    295b:	75 e7                	jne    2944 <countWords(char const*)+0x44>
    295d:	48 83 c4 08          	add    rsp,0x8
    2961:	4c 89 e8             	mov    rax,r13
    2964:	5b                   	pop    rbx
    2965:	41 5c                	pop    r12
    2967:	41 5d                	pop    r13
    2969:	5d                   	pop    rbp
    296a:	c3                   	ret
    296b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2970:	48 83 c4 08          	add    rsp,0x8
    2974:	45 31 ed             	xor    r13d,r13d
    2977:	5b                   	pop    rbx
    2978:	4c 89 e8             	mov    rax,r13
    297b:	41 5c                	pop    r12
    297d:	41 5d                	pop    r13
    297f:	5d                   	pop    rbp
    2980:	c3                   	ret
    2981:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2988:	00 00 00 00 
    298c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002990 <getArrOfWordStructs(wordArrStruct_t*)>:
    2990:	f3 0f 1e fa          	endbr64
    2994:	55                   	push   rbp
    2995:	be 10 00 00 00       	mov    esi,0x10
    299a:	48 89 e5             	mov    rbp,rsp
    299d:	41 57                	push   r15
    299f:	41 56                	push   r14
    29a1:	41 55                	push   r13
    29a3:	41 54                	push   r12
    29a5:	49 89 fc             	mov    r12,rdi
    29a8:	53                   	push   rbx
    29a9:	48 83 ec 08          	sub    rsp,0x8
    29ad:	48 8b 7f 18          	mov    rdi,QWORD PTR [rdi+0x18]
    29b1:	e8 2a e7 ff ff       	call   10e0 <calloc@plt>
    29b6:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
    29bb:	48 85 c0             	test   rax,rax
    29be:	0f 84 aa 00 00 00    	je     2a6e <getArrOfWordStructs(wordArrStruct_t*)+0xde>
    29c4:	4d 8b 3c 24          	mov    r15,QWORD PTR [r12]
    29c8:	41 0f b6 3f          	movzx  edi,BYTE PTR [r15]
    29cc:	40 84 ff             	test   dil,dil
    29cf:	0f 84 8a 00 00 00    	je     2a5f <getArrOfWordStructs(wordArrStruct_t*)+0xcf>
    29d5:	31 db                	xor    ebx,ebx
    29d7:	45 31 f6             	xor    r14d,r14d
    29da:	45 31 ed             	xor    r13d,r13d
    29dd:	eb 33                	jmp    2a12 <getArrOfWordStructs(wordArrStruct_t*)+0x82>
    29df:	90                   	nop
    29e0:	85 db                	test   ebx,ebx
    29e2:	74 20                	je     2a04 <getArrOfWordStructs(wordArrStruct_t*)+0x74>
    29e4:	4c 89 e8             	mov    rax,r13
    29e7:	4c 89 fa             	mov    rdx,r15
    29ea:	49 83 c5 01          	add    r13,0x1
    29ee:	31 db                	xor    ebx,ebx
    29f0:	48 c1 e0 04          	shl    rax,0x4
    29f4:	4c 29 f2             	sub    rdx,r14
    29f7:	49 03 44 24 08       	add    rax,QWORD PTR [r12+0x8]
    29fc:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    2a00:	41 c6 07 00          	mov    BYTE PTR [r15],0x0
    2a04:	41 0f b6 7f 01       	movzx  edi,BYTE PTR [r15+0x1]
    2a09:	49 83 c7 01          	add    r15,0x1
    2a0d:	40 84 ff             	test   dil,dil
    2a10:	74 32                	je     2a44 <getArrOfWordStructs(wordArrStruct_t*)+0xb4>
    2a12:	e8 99 e6 ff ff       	call   10b0 <isspace@plt>
    2a17:	85 c0                	test   eax,eax
    2a19:	75 c5                	jne    29e0 <getArrOfWordStructs(wordArrStruct_t*)+0x50>
    2a1b:	85 db                	test   ebx,ebx
    2a1d:	75 e5                	jne    2a04 <getArrOfWordStructs(wordArrStruct_t*)+0x74>
    2a1f:	4c 89 e8             	mov    rax,r13
    2a22:	4d 89 fe             	mov    r14,r15
    2a25:	bb 01 00 00 00       	mov    ebx,0x1
    2a2a:	48 c1 e0 04          	shl    rax,0x4
    2a2e:	49 03 44 24 08       	add    rax,QWORD PTR [r12+0x8]
    2a33:	4c 89 38             	mov    QWORD PTR [rax],r15
    2a36:	41 0f b6 7f 01       	movzx  edi,BYTE PTR [r15+0x1]
    2a3b:	49 83 c7 01          	add    r15,0x1
    2a3f:	40 84 ff             	test   dil,dil
    2a42:	75 ce                	jne    2a12 <getArrOfWordStructs(wordArrStruct_t*)+0x82>
    2a44:	85 db                	test   ebx,ebx
    2a46:	74 17                	je     2a5f <getArrOfWordStructs(wordArrStruct_t*)+0xcf>
    2a48:	4d 39 6c 24 18       	cmp    QWORD PTR [r12+0x18],r13
    2a4d:	76 10                	jbe    2a5f <getArrOfWordStructs(wordArrStruct_t*)+0xcf>
    2a4f:	49 c1 e5 04          	shl    r13,0x4
    2a53:	4d 29 f7             	sub    r15,r14
    2a56:	4d 03 6c 24 08       	add    r13,QWORD PTR [r12+0x8]
    2a5b:	4d 89 7d 08          	mov    QWORD PTR [r13+0x8],r15
    2a5f:	48 83 c4 08          	add    rsp,0x8
    2a63:	5b                   	pop    rbx
    2a64:	41 5c                	pop    r12
    2a66:	41 5d                	pop    r13
    2a68:	41 5e                	pop    r14
    2a6a:	41 5f                	pop    r15
    2a6c:	5d                   	pop    rbp
    2a6d:	c3                   	ret
    2a6e:	58                   	pop    rax
    2a6f:	48 8d 3d 1a 32 00 00 	lea    rdi,[rip+0x321a]        # 5c90 <_IO_stdin_used+0xc90>
    2a76:	5b                   	pop    rbx
    2a77:	41 5c                	pop    r12
    2a79:	41 5d                	pop    r13
    2a7b:	41 5e                	pop    r14
    2a7d:	41 5f                	pop    r15
    2a7f:	5d                   	pop    rbp
    2a80:	e9 ab e6 ff ff       	jmp    1130 <perror@plt>
    2a85:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2a8c:	00 00 00 00 

0000000000002a90 <copyFileContent(wordArrStruct_t*, char const*)>:
    2a90:	f3 0f 1e fa          	endbr64
    2a94:	55                   	push   rbp
    2a95:	31 d2                	xor    edx,edx
    2a97:	48 89 e5             	mov    rbp,rsp
    2a9a:	41 57                	push   r15
    2a9c:	49 89 ff             	mov    r15,rdi
    2a9f:	41 56                	push   r14
    2aa1:	49 89 f6             	mov    r14,rsi
    2aa4:	31 f6                	xor    esi,esi
    2aa6:	41 55                	push   r13
    2aa8:	4c 89 f7             	mov    rdi,r14
    2aab:	41 54                	push   r12
    2aad:	53                   	push   rbx
    2aae:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    2ab5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2abc:	00 00 
    2abe:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    2ac2:	31 c0                	xor    eax,eax
    2ac4:	e8 47 e6 ff ff       	call   1110 <open@plt>
    2ac9:	83 f8 ff             	cmp    eax,0xffffffff
    2acc:	0f 84 ee 00 00 00    	je     2bc0 <copyFileContent(wordArrStruct_t*, char const*)+0x130>
    2ad2:	41 89 c4             	mov    r12d,eax
    2ad5:	48 8d bd 30 ff ff ff 	lea    rdi,[rbp-0xd0]
    2adc:	31 c0                	xor    eax,eax
    2ade:	b9 12 00 00 00       	mov    ecx,0x12
    2ae3:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    2ae6:	48 8d b5 30 ff ff ff 	lea    rsi,[rbp-0xd0]
    2aed:	44 89 e7             	mov    edi,r12d
    2af0:	e8 6b e6 ff ff       	call   1160 <fstat@plt>
    2af5:	85 c0                	test   eax,eax
    2af7:	75 77                	jne    2b70 <copyFileContent(wordArrStruct_t*, char const*)+0xe0>
    2af9:	48 8b 9d 60 ff ff ff 	mov    rbx,QWORD PTR [rbp-0xa0]
    2b00:	48 85 db             	test   rbx,rbx
    2b03:	7e 77                	jle    2b7c <copyFileContent(wordArrStruct_t*, char const*)+0xec>
    2b05:	48 8d 7b 01          	lea    rdi,[rbx+0x1]
    2b09:	be 01 00 00 00       	mov    esi,0x1
    2b0e:	e8 cd e5 ff ff       	call   10e0 <calloc@plt>
    2b13:	49 89 c5             	mov    r13,rax
    2b16:	48 85 c0             	test   rax,rax
    2b19:	0f 84 d7 00 00 00    	je     2bf6 <copyFileContent(wordArrStruct_t*, char const*)+0x166>
    2b1f:	48 89 da             	mov    rdx,rbx
    2b22:	44 89 e7             	mov    edi,r12d
    2b25:	48 89 c6             	mov    rsi,rax
    2b28:	e8 a3 e5 ff ff       	call   10d0 <read@plt>
    2b2d:	44 89 e7             	mov    edi,r12d
    2b30:	41 c6 44 05 00 00    	mov    BYTE PTR [r13+rax*1+0x0],0x0
    2b36:	48 89 c3             	mov    rbx,rax
    2b39:	e8 62 e5 ff ff       	call   10a0 <close@plt>
    2b3e:	85 c0                	test   eax,eax
    2b40:	75 4e                	jne    2b90 <copyFileContent(wordArrStruct_t*, char const*)+0x100>
    2b42:	49 89 5f 10          	mov    QWORD PTR [r15+0x10],rbx
    2b46:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    2b4a:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2b51:	00 00 
    2b53:	0f 85 98 00 00 00    	jne    2bf1 <copyFileContent(wordArrStruct_t*, char const*)+0x161>
    2b59:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    2b60:	4c 89 e8             	mov    rax,r13
    2b63:	5b                   	pop    rbx
    2b64:	41 5c                	pop    r12
    2b66:	41 5d                	pop    r13
    2b68:	41 5e                	pop    r14
    2b6a:	41 5f                	pop    r15
    2b6c:	5d                   	pop    rbp
    2b6d:	c3                   	ret
    2b6e:	66 90                	xchg   ax,ax
    2b70:	48 8d 3d f1 30 00 00 	lea    rdi,[rip+0x30f1]        # 5c68 <_IO_stdin_used+0xc68>
    2b77:	e8 b4 e5 ff ff       	call   1130 <perror@plt>
    2b7c:	44 89 e7             	mov    edi,r12d
    2b7f:	45 31 ed             	xor    r13d,r13d
    2b82:	e8 19 e5 ff ff       	call   10a0 <close@plt>
    2b87:	eb bd                	jmp    2b46 <copyFileContent(wordArrStruct_t*, char const*)+0xb6>
    2b89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2b90:	48 8b 3d 89 64 00 00 	mov    rdi,QWORD PTR [rip+0x6489]        # 9020 <stderr@GLIBC_2.2.5>
    2b97:	4c 89 f1             	mov    rcx,r14
    2b9a:	be 01 00 00 00       	mov    esi,0x1
    2b9f:	31 c0                	xor    eax,eax
    2ba1:	48 8d 15 5c 30 00 00 	lea    rdx,[rip+0x305c]        # 5c04 <_IO_stdin_used+0xc04>
    2ba8:	e8 a3 e5 ff ff       	call   1150 <__fprintf_chk@plt>
    2bad:	48 8d 3d 7f 30 00 00 	lea    rdi,[rip+0x307f]        # 5c33 <_IO_stdin_used+0xc33>
    2bb4:	e8 77 e5 ff ff       	call   1130 <perror@plt>
    2bb9:	eb 87                	jmp    2b42 <copyFileContent(wordArrStruct_t*, char const*)+0xb2>
    2bbb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2bc0:	48 8b 3d 59 64 00 00 	mov    rdi,QWORD PTR [rip+0x6459]        # 9020 <stderr@GLIBC_2.2.5>
    2bc7:	4c 89 f1             	mov    rcx,r14
    2bca:	31 c0                	xor    eax,eax
    2bcc:	45 31 ed             	xor    r13d,r13d
    2bcf:	48 8d 15 cc 2f 00 00 	lea    rdx,[rip+0x2fcc]        # 5ba2 <_IO_stdin_used+0xba2>
    2bd6:	be 01 00 00 00       	mov    esi,0x1
    2bdb:	e8 70 e5 ff ff       	call   1150 <__fprintf_chk@plt>
    2be0:	48 8d 3d 4c 30 00 00 	lea    rdi,[rip+0x304c]        # 5c33 <_IO_stdin_used+0xc33>
    2be7:	e8 44 e5 ff ff       	call   1130 <perror@plt>
    2bec:	e9 55 ff ff ff       	jmp    2b46 <copyFileContent(wordArrStruct_t*, char const*)+0xb6>
    2bf1:	e8 8a e4 ff ff       	call   1080 <__stack_chk_fail@plt>
    2bf6:	44 89 e7             	mov    edi,r12d
    2bf9:	e8 a2 e4 ff ff       	call   10a0 <close@plt>
    2bfe:	e9 43 ff ff ff       	jmp    2b46 <copyFileContent(wordArrStruct_t*, char const*)+0xb6>
    2c03:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2c0a:	00 00 00 00 
    2c0e:	66 90                	xchg   ax,ax

0000000000002c10 <getWordArrStruct(wordArrStruct_t*, char const*)>:
    2c10:	f3 0f 1e fa          	endbr64
    2c14:	55                   	push   rbp
    2c15:	48 89 e5             	mov    rbp,rsp
    2c18:	41 56                	push   r14
    2c1a:	41 55                	push   r13
    2c1c:	41 54                	push   r12
    2c1e:	49 89 fc             	mov    r12,rdi
    2c21:	53                   	push   rbx
    2c22:	e8 69 fe ff ff       	call   2a90 <copyFileContent(wordArrStruct_t*, char const*)>
    2c27:	49 89 04 24          	mov    QWORD PTR [r12],rax
    2c2b:	0f b6 38             	movzx  edi,BYTE PTR [rax]
    2c2e:	40 84 ff             	test   dil,dil
    2c31:	74 5d                	je     2c90 <getWordArrStruct(wordArrStruct_t*, char const*)+0x80>
    2c33:	49 89 c6             	mov    r14,rax
    2c36:	45 31 ed             	xor    r13d,r13d
    2c39:	31 db                	xor    ebx,ebx
    2c3b:	eb 1e                	jmp    2c5b <getWordArrStruct(wordArrStruct_t*, char const*)+0x4b>
    2c3d:	0f 1f 00             	nop    DWORD PTR [rax]
    2c40:	85 db                	test   ebx,ebx
    2c42:	75 09                	jne    2c4d <getWordArrStruct(wordArrStruct_t*, char const*)+0x3d>
    2c44:	49 83 c5 01          	add    r13,0x1
    2c48:	bb 01 00 00 00       	mov    ebx,0x1
    2c4d:	41 0f b6 7e 01       	movzx  edi,BYTE PTR [r14+0x1]
    2c52:	49 83 c6 01          	add    r14,0x1
    2c56:	40 84 ff             	test   dil,dil
    2c59:	74 19                	je     2c74 <getWordArrStruct(wordArrStruct_t*, char const*)+0x64>
    2c5b:	e8 50 e4 ff ff       	call   10b0 <isspace@plt>
    2c60:	85 c0                	test   eax,eax
    2c62:	74 dc                	je     2c40 <getWordArrStruct(wordArrStruct_t*, char const*)+0x30>
    2c64:	41 0f b6 7e 01       	movzx  edi,BYTE PTR [r14+0x1]
    2c69:	49 83 c6 01          	add    r14,0x1
    2c6d:	31 db                	xor    ebx,ebx
    2c6f:	40 84 ff             	test   dil,dil
    2c72:	75 e7                	jne    2c5b <getWordArrStruct(wordArrStruct_t*, char const*)+0x4b>
    2c74:	4d 89 6c 24 18       	mov    QWORD PTR [r12+0x18],r13
    2c79:	5b                   	pop    rbx
    2c7a:	4c 89 e7             	mov    rdi,r12
    2c7d:	41 5c                	pop    r12
    2c7f:	41 5d                	pop    r13
    2c81:	41 5e                	pop    r14
    2c83:	5d                   	pop    rbp
    2c84:	e9 07 fd ff ff       	jmp    2990 <getArrOfWordStructs(wordArrStruct_t*)>
    2c89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2c90:	45 31 ed             	xor    r13d,r13d
    2c93:	eb df                	jmp    2c74 <getWordArrStruct(wordArrStruct_t*, char const*)+0x64>
    2c95:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2c9c:	00 00 00 00 

0000000000002ca0 <freeWordArrStruct(wordArrStruct_t*)>:
    2ca0:	f3 0f 1e fa          	endbr64
    2ca4:	48 85 ff             	test   rdi,rdi
    2ca7:	74 47                	je     2cf0 <freeWordArrStruct(wordArrStruct_t*)+0x50>
    2ca9:	55                   	push   rbp
    2caa:	48 89 e5             	mov    rbp,rsp
    2cad:	53                   	push   rbx
    2cae:	48 89 fb             	mov    rbx,rdi
    2cb1:	48 83 ec 08          	sub    rsp,0x8
    2cb5:	48 8b 7f 08          	mov    rdi,QWORD PTR [rdi+0x8]
    2cb9:	48 85 ff             	test   rdi,rdi
    2cbc:	74 0d                	je     2ccb <freeWordArrStruct(wordArrStruct_t*)+0x2b>
    2cbe:	e8 7d e3 ff ff       	call   1040 <free@plt>
    2cc3:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
    2cca:	00 
    2ccb:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
    2cce:	48 85 ff             	test   rdi,rdi
    2cd1:	74 0c                	je     2cdf <freeWordArrStruct(wordArrStruct_t*)+0x3f>
    2cd3:	e8 68 e3 ff ff       	call   1040 <free@plt>
    2cd8:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
    2cdf:	66 0f ef c0          	pxor   xmm0,xmm0
    2ce3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
    2ce7:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    2ceb:	c9                   	leave
    2cec:	c3                   	ret
    2ced:	0f 1f 00             	nop    DWORD PTR [rax]
    2cf0:	c3                   	ret
    2cf1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2cf8:	00 00 00 00 
    2cfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002d00 <swapWords(word_t*, word_t*)>:
    2d00:	f3 0f 1e fa          	endbr64
    2d04:	48 8b 17             	mov    rdx,QWORD PTR [rdi]
    2d07:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
    2d0b:	f3 0f 6f 06          	movdqu xmm0,XMMWORD PTR [rsi]
    2d0f:	0f 11 07             	movups XMMWORD PTR [rdi],xmm0
    2d12:	48 89 16             	mov    QWORD PTR [rsi],rdx
    2d15:	48 89 46 08          	mov    QWORD PTR [rsi+0x8],rax
    2d19:	c3                   	ret
    2d1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000002d20 <shuffleWords(wordArrStruct_t*)>:
    2d20:	f3 0f 1e fa          	endbr64
    2d24:	48 85 ff             	test   rdi,rdi
    2d27:	74 67                	je     2d90 <shuffleWords(wordArrStruct_t*)+0x70>
    2d29:	55                   	push   rbp
    2d2a:	48 89 e5             	mov    rbp,rsp
    2d2d:	41 54                	push   r12
    2d2f:	49 89 fc             	mov    r12,rdi
    2d32:	53                   	push   rbx
    2d33:	48 8b 5f 18          	mov    rbx,QWORD PTR [rdi+0x18]
    2d37:	48 83 fb 01          	cmp    rbx,0x1
    2d3b:	76 4b                	jbe    2d88 <shuffleWords(wordArrStruct_t*)+0x68>
    2d3d:	48 83 eb 01          	sub    rbx,0x1
    2d41:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2d48:	e8 23 e4 ff ff       	call   1170 <rand@plt>
    2d4d:	48 8d 4b 01          	lea    rcx,[rbx+0x1]
    2d51:	31 d2                	xor    edx,edx
    2d53:	48 98                	cdqe
    2d55:	48 f7 f1             	div    rcx
    2d58:	48 89 d8             	mov    rax,rbx
    2d5b:	48 c1 e0 04          	shl    rax,0x4
    2d5f:	49 03 44 24 08       	add    rax,QWORD PTR [r12+0x8]
    2d64:	48 8b 30             	mov    rsi,QWORD PTR [rax]
    2d67:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
    2d6b:	48 c1 e2 04          	shl    rdx,0x4
    2d6f:	49 03 54 24 08       	add    rdx,QWORD PTR [r12+0x8]
    2d74:	f3 0f 6f 02          	movdqu xmm0,XMMWORD PTR [rdx]
    2d78:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
    2d7b:	48 89 32             	mov    QWORD PTR [rdx],rsi
    2d7e:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
    2d82:	48 83 eb 01          	sub    rbx,0x1
    2d86:	75 c0                	jne    2d48 <shuffleWords(wordArrStruct_t*)+0x28>
    2d88:	5b                   	pop    rbx
    2d89:	41 5c                	pop    r12
    2d8b:	5d                   	pop    rbp
    2d8c:	c3                   	ret
    2d8d:	0f 1f 00             	nop    DWORD PTR [rax]
    2d90:	c3                   	ret
    2d91:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2d98:	00 00 00 
    2d9b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000002da0 <linearOrderNodeComparator(void const*, void const*)>:
    2da0:	f3 0f 1e fa          	endbr64
    2da4:	83 7f 04 ff          	cmp    DWORD PTR [rdi+0x4],0xffffffff
    2da8:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    2dab:	74 3b                	je     2de8 <linearOrderNodeComparator(void const*, void const*)+0x48>
    2dad:	83 f8 ff             	cmp    eax,0xffffffff
    2db0:	74 2e                	je     2de0 <linearOrderNodeComparator(void const*, void const*)+0x40>
    2db2:	48 ba 00 00 00 00 ff 	movabs rdx,0xffffffff00000000
    2db9:	ff ff ff 
    2dbc:	b8 01 00 00 00       	mov    eax,0x1
    2dc1:	48 39 17             	cmp    QWORD PTR [rdi],rdx
    2dc4:	74 1a                	je     2de0 <linearOrderNodeComparator(void const*, void const*)+0x40>
    2dc6:	48 39 16             	cmp    QWORD PTR [rsi],rdx
    2dc9:	74 28                	je     2df3 <linearOrderNodeComparator(void const*, void const*)+0x53>
    2dcb:	8b 17                	mov    edx,DWORD PTR [rdi]
    2dcd:	85 d2                	test   edx,edx
    2dcf:	74 0f                	je     2de0 <linearOrderNodeComparator(void const*, void const*)+0x40>
    2dd1:	8b 0e                	mov    ecx,DWORD PTR [rsi]
    2dd3:	85 c9                	test   ecx,ecx
    2dd5:	74 1c                	je     2df3 <linearOrderNodeComparator(void const*, void const*)+0x53>
    2dd7:	89 d0                	mov    eax,edx
    2dd9:	29 c8                	sub    eax,ecx
    2ddb:	c3                   	ret
    2ddc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2de0:	c3                   	ret
    2de1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2de8:	83 f8 ff             	cmp    eax,0xffffffff
    2deb:	74 c5                	je     2db2 <linearOrderNodeComparator(void const*, void const*)+0x12>
    2ded:	b8 01 00 00 00       	mov    eax,0x1
    2df2:	c3                   	ret
    2df3:	b8 ff ff ff ff       	mov    eax,0xffffffff
    2df8:	c3                   	ret
    2df9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000002e00 <listCtor(list_t*, long, info_t)>:
    2e00:	f3 0f 1e fa          	endbr64
    2e04:	55                   	push   rbp
    2e05:	48 89 e5             	mov    rbp,rsp
    2e08:	41 54                	push   r12
    2e0a:	49 89 f4             	mov    r12,rsi
    2e0d:	be 28 00 00 00       	mov    esi,0x28
    2e12:	53                   	push   rbx
    2e13:	48 89 fb             	mov    rbx,rdi
    2e16:	4c 89 e7             	mov    rdi,r12
    2e19:	e8 c2 e2 ff ff       	call   10e0 <calloc@plt>
    2e1e:	4c 89 63 10          	mov    QWORD PTR [rbx+0x10],r12
    2e22:	48 89 03             	mov    QWORD PTR [rbx],rax
    2e25:	48 c7 43 18 00 00 00 	mov    QWORD PTR [rbx+0x18],0x0
    2e2c:	00 
    2e2d:	48 c7 40 18 be ba 00 	mov    QWORD PTR [rax+0x18],0xbabe
    2e34:	00 
    2e35:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    2e3c:	49 83 fc 01          	cmp    r12,0x1
    2e40:	7e 2b                	jle    2e6d <listCtor(list_t*, long, info_t)+0x6d>
    2e42:	48 8d 50 28          	lea    rdx,[rax+0x28]
    2e46:	44 89 e6             	mov    esi,r12d
    2e49:	b9 01 00 00 00       	mov    ecx,0x1
    2e4e:	66 90                	xchg   ax,ax
    2e50:	83 c1 01             	add    ecx,0x1
    2e53:	48 c7 42 18 ad 0b 00 	mov    QWORD PTR [rdx+0x18],0xbad
    2e5a:	00 
    2e5b:	48 83 c2 28          	add    rdx,0x28
    2e5f:	89 4a d8             	mov    DWORD PTR [rdx-0x28],ecx
    2e62:	c7 42 dc ff ff ff ff 	mov    DWORD PTR [rdx-0x24],0xffffffff
    2e69:	39 f1                	cmp    ecx,esi
    2e6b:	75 e3                	jne    2e50 <listCtor(list_t*, long, info_t)+0x50>
    2e6d:	4b 8d 54 a4 fb       	lea    rdx,[r12+r12*4-0x5]
    2e72:	f3 0f 6f 45 10       	movdqu xmm0,XMMWORD PTR [rbp+0x10]
    2e77:	48 c7 43 08 01 00 00 	mov    QWORD PTR [rbx+0x8],0x1
    2e7e:	00 
    2e7f:	c7 04 d0 00 00 00 00 	mov    DWORD PTR [rax+rdx*8],0x0
    2e86:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
    2e8a:	0f 11 43 28          	movups XMMWORD PTR [rbx+0x28],xmm0
    2e8e:	48 89 43 38          	mov    QWORD PTR [rbx+0x38],rax
    2e92:	8b 45 28             	mov    eax,DWORD PTR [rbp+0x28]
    2e95:	89 43 40             	mov    DWORD PTR [rbx+0x40],eax
    2e98:	48 8b 05 89 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b89]        # 6a28 <_IO_stdin_used+0x1a28>
    2e9f:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    2ea3:	5b                   	pop    rbx
    2ea4:	31 c0                	xor    eax,eax
    2ea6:	41 5c                	pop    r12
    2ea8:	5d                   	pop    rbp
    2ea9:	c3                   	ret
    2eaa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000002eb0 <deleteElement(list_t*, unsigned long, dump_t*)>:
    2eb0:	f3 0f 1e fa          	endbr64
    2eb4:	55                   	push   rbp
    2eb5:	48 8d 04 b6          	lea    rax,[rsi+rsi*4]
    2eb9:	48 89 e5             	mov    rbp,rsp
    2ebc:	41 55                	push   r13
    2ebe:	49 89 f5             	mov    r13,rsi
    2ec1:	41 54                	push   r12
    2ec3:	49 89 fc             	mov    r12,rdi
    2ec6:	53                   	push   rbx
    2ec7:	48 8d 1c c5 00 00 00 	lea    rbx,[rax*8+0x0]
    2ece:	00 
    2ecf:	48 83 ec 08          	sub    rsp,0x8
    2ed3:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    2ed6:	66 0f 6f 05 52 3b 00 	movdqa xmm0,XMMWORD PTR [rip+0x3b52]        # 6a30 <_IO_stdin_used+0x1a30>
    2edd:	00 
    2ede:	48 01 d8             	add    rax,rbx
    2ee1:	48 8b 78 08          	mov    rdi,QWORD PTR [rax+0x8]
    2ee5:	0f 11 40 10          	movups XMMWORD PTR [rax+0x10],xmm0
    2ee9:	e8 52 e1 ff ff       	call   1040 <free@plt>
    2eee:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
    2ef2:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
    2ef6:	48 63 78 04          	movsxd rdi,DWORD PTR [rax+0x4]
    2efa:	48 63 10             	movsxd rdx,DWORD PTR [rax]
    2efd:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
    2f04:	00 
    2f05:	48 89 fe             	mov    rsi,rdi
    2f08:	48 8d 3c bf          	lea    rdi,[rdi+rdi*4]
    2f0c:	89 14 f9             	mov    DWORD PTR [rcx+rdi*8],edx
    2f0f:	49 8b 7c 24 08       	mov    rdi,QWORD PTR [r12+0x8]
    2f14:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    2f18:	89 38                	mov    DWORD PTR [rax],edi
    2f1a:	89 74 d1 04          	mov    DWORD PTR [rcx+rdx*8+0x4],esi
    2f1e:	c7 40 04 ff ff ff ff 	mov    DWORD PTR [rax+0x4],0xffffffff
    2f25:	31 c0                	xor    eax,eax
    2f27:	4d 89 6c 24 08       	mov    QWORD PTR [r12+0x8],r13
    2f2c:	49 83 6c 24 18 01    	sub    QWORD PTR [r12+0x18],0x1
    2f32:	48 83 c4 08          	add    rsp,0x8
    2f36:	5b                   	pop    rbx
    2f37:	41 5c                	pop    r12
    2f39:	41 5d                	pop    r13
    2f3b:	5d                   	pop    rbp
    2f3c:	c3                   	ret
    2f3d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000002f40 <reallocListUP(list_t*)>:
    2f40:	f3 0f 1e fa          	endbr64
    2f44:	55                   	push   rbp
    2f45:	48 89 e5             	mov    rbp,rsp
    2f48:	41 54                	push   r12
    2f4a:	53                   	push   rbx
    2f4b:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
    2f4f:	48 89 fb             	mov    rbx,rdi
    2f52:	4c 8d 24 00          	lea    r12,[rax+rax*1]
    2f56:	48 8d 34 80          	lea    rsi,[rax+rax*4]
    2f5a:	4c 89 67 10          	mov    QWORD PTR [rdi+0x10],r12
    2f5e:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    2f61:	48 c1 e6 04          	shl    rsi,0x4
    2f65:	e8 86 e1 ff ff       	call   10f0 <realloc@plt>
    2f6a:	48 85 c0             	test   rax,rax
    2f6d:	74 70                	je     2fdf <reallocListUP(list_t*)+0x9f>
    2f6f:	48 8b 53 10          	mov    rdx,QWORD PTR [rbx+0x10]
    2f73:	48 89 03             	mov    QWORD PTR [rbx],rax
    2f76:	48 89 d1             	mov    rcx,rdx
    2f79:	48 d1 e9             	shr    rcx,1
    2f7c:	48 39 ca             	cmp    rdx,rcx
    2f7f:	76 47                	jbe    2fc8 <reallocListUP(list_t*)+0x88>
    2f81:	48 8d 14 89          	lea    rdx,[rcx+rcx*4]
    2f85:	66 0f 6f 05 a3 3a 00 	movdqa xmm0,XMMWORD PTR [rip+0x3aa3]        # 6a30 <_IO_stdin_used+0x1a30>
    2f8c:	00 
    2f8d:	48 8d 14 d0          	lea    rdx,[rax+rdx*8]
    2f91:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2f98:	8d 71 01             	lea    esi,[rcx+0x1]
    2f9b:	0f 11 42 10          	movups XMMWORD PTR [rdx+0x10],xmm0
    2f9f:	48 83 c1 01          	add    rcx,0x1
    2fa3:	48 83 c2 28          	add    rdx,0x28
    2fa7:	89 72 d8             	mov    DWORD PTR [rdx-0x28],esi
    2faa:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
    2fae:	48 c7 42 e0 00 00 00 	mov    QWORD PTR [rdx-0x20],0x0
    2fb5:	00 
    2fb6:	c7 42 dc ff ff ff ff 	mov    DWORD PTR [rdx-0x24],0xffffffff
    2fbd:	48 39 ce             	cmp    rsi,rcx
    2fc0:	77 d6                	ja     2f98 <reallocListUP(list_t*)+0x58>
    2fc2:	48 89 f1             	mov    rcx,rsi
    2fc5:	48 d1 e9             	shr    rcx,1
    2fc8:	4b 8d 54 a4 fb       	lea    rdx,[r12+r12*4-0x5]
    2fcd:	c7 04 d0 00 00 00 00 	mov    DWORD PTR [rax+rdx*8],0x0
    2fd4:	31 c0                	xor    eax,eax
    2fd6:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    2fda:	5b                   	pop    rbx
    2fdb:	41 5c                	pop    r12
    2fdd:	5d                   	pop    rbp
    2fde:	c3                   	ret
    2fdf:	48 8d 3d fa 2c 00 00 	lea    rdi,[rip+0x2cfa]        # 5ce0 <_IO_stdin_used+0xce0>
    2fe6:	e8 65 e0 ff ff       	call   1050 <puts@plt>
    2feb:	b8 00 e0 ff ff       	mov    eax,0xffffe000
    2ff0:	eb e8                	jmp    2fda <reallocListUP(list_t*)+0x9a>
    2ff2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2ff9:	00 00 00 00 
    2ffd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000003000 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)>:
    3000:	f3 0f 1e fa          	endbr64
    3004:	55                   	push   rbp
    3005:	48 8d 05 e8 2c 00 00 	lea    rax,[rip+0x2ce8]        # 5cf4 <_IO_stdin_used+0xcf4>
    300c:	48 89 e5             	mov    rbp,rsp
    300f:	41 57                	push   r15
    3011:	4c 8d 3d 1b 2c 00 00 	lea    r15,[rip+0x2c1b]        # 5c33 <_IO_stdin_used+0xc33>
    3018:	41 56                	push   r14
    301a:	49 89 d6             	mov    r14,rdx
    301d:	41 55                	push   r13
    301f:	41 54                	push   r12
    3021:	49 89 f4             	mov    r12,rsi
    3024:	53                   	push   rbx
    3025:	48 89 fb             	mov    rbx,rdi
    3028:	4c 89 ff             	mov    rdi,r15
    302b:	48 83 ec 28          	sub    rsp,0x28
    302f:	85 c9                	test   ecx,ecx
    3031:	8b 4b 10             	mov    ecx,DWORD PTR [rbx+0x10]
    3034:	4c 0f 45 f8          	cmovne r15,rax
    3038:	48 8d 05 b7 2c 00 00 	lea    rax,[rip+0x2cb7]        # 5cf6 <_IO_stdin_used+0xcf6>
    303f:	48 0f 44 c7          	cmove  rax,rdi
    3043:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    3047:	85 c9                	test   ecx,ecx
    3049:	0f 8e 25 01 00 00    	jle    3174 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x174>
    304f:	4c 89 7d b8          	mov    QWORD PTR [rbp-0x48],r15
    3053:	45 31 ed             	xor    r13d,r13d
    3056:	48 89 75 c8          	mov    QWORD PTR [rbp-0x38],rsi
    305a:	eb 73                	jmp    30cf <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0xcf>
    305c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3060:	48 81 fa be ba 00 00 	cmp    rdx,0xbabe
    3067:	0f 85 d3 00 00 00    	jne    3140 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x140>
    306d:	48 83 ec 08          	sub    rsp,0x8
    3071:	4c 8b 4d b8          	mov    r9,QWORD PTR [rbp-0x48]
    3075:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
    3079:	48 8d 15 d8 2d 00 00 	lea    rdx,[rip+0x2dd8]        # 5e58 <_IO_stdin_used+0xe58>
    3080:	41 55                	push   r13
    3082:	be 01 00 00 00       	mov    esi,0x1
    3087:	4c 89 f7             	mov    rdi,r14
    308a:	31 c0                	xor    eax,eax
    308c:	e8 bf e0 ff ff       	call   1150 <__fprintf_chk@plt>
    3091:	58                   	pop    rax
    3092:	5a                   	pop    rdx
    3093:	48 83 ec 08          	sub    rsp,0x8
    3097:	4c 03 3b             	add    r15,QWORD PTR [rbx]
    309a:	4c 8b 4d c0          	mov    r9,QWORD PTR [rbp-0x40]
    309e:	be 01 00 00 00       	mov    esi,0x1
    30a3:	45 8b 47 04          	mov    r8d,DWORD PTR [r15+0x4]
    30a7:	41 54                	push   r12
    30a9:	48 8d 15 38 2e 00 00 	lea    rdx,[rip+0x2e38]        # 5ee8 <_IO_stdin_used+0xee8>
    30b0:	4c 89 f7             	mov    rdi,r14
    30b3:	41 8b 0f             	mov    ecx,DWORD PTR [r15]
    30b6:	31 c0                	xor    eax,eax
    30b8:	49 83 c5 01          	add    r13,0x1
    30bc:	e8 8f e0 ff ff       	call   1150 <__fprintf_chk@plt>
    30c1:	41 5b                	pop    r11
    30c3:	41 5c                	pop    r12
    30c5:	44 39 6b 10          	cmp    DWORD PTR [rbx+0x10],r13d
    30c9:	0f 8e a1 00 00 00    	jle    3170 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x170>
    30cf:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    30d2:	4f 8d 7c ad 00       	lea    r15,[r13+r13*4+0x0]
    30d7:	44 89 e9             	mov    ecx,r13d
    30da:	4c 8d 25 1f 2c 00 00 	lea    r12,[rip+0x2c1f]        # 5d00 <_IO_stdin_used+0xd00>
    30e1:	48 8d 3d 10 2c 00 00 	lea    rdi,[rip+0x2c10]        # 5cf8 <_IO_stdin_used+0xcf8>
    30e8:	48 8d 35 19 2c 00 00 	lea    rsi,[rip+0x2c19]        # 5d08 <_IO_stdin_used+0xd08>
    30ef:	44 39 28             	cmp    DWORD PTR [rax],r13d
    30f2:	4c 0f 45 e7          	cmovne r12,rdi
    30f6:	44 39 68 04          	cmp    DWORD PTR [rax+0x4],r13d
    30fa:	4c 0f 44 e6          	cmove  r12,rsi
    30fe:	49 c1 e7 03          	shl    r15,0x3
    3102:	4c 01 f8             	add    rax,r15
    3105:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
    3109:	48 81 fa ad 0b 00 00 	cmp    rdx,0xbad
    3110:	0f 85 4a ff ff ff    	jne    3060 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x60>
    3116:	83 78 04 ff          	cmp    DWORD PTR [rax+0x4],0xffffffff
    311a:	48 8d 05 ef 2b 00 00 	lea    rax,[rip+0x2bef]        # 5d10 <_IO_stdin_used+0xd10>
    3121:	4c 8b 4d b8          	mov    r9,QWORD PTR [rbp-0x48]
    3125:	48 8d 15 f4 2c 00 00 	lea    rdx,[rip+0x2cf4]        # 5e20 <_IO_stdin_used+0xe20>
    312c:	4c 0f 44 e0          	cmove  r12,rax
    3130:	48 83 ec 08          	sub    rsp,0x8
    3134:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
    3138:	41 55                	push   r13
    313a:	e9 43 ff ff ff       	jmp    3082 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x82>
    313f:	90                   	nop
    3140:	52                   	push   rdx
    3141:	4c 8b 4d b8          	mov    r9,QWORD PTR [rbp-0x48]
    3145:	48 8d 15 44 2d 00 00 	lea    rdx,[rip+0x2d44]        # 5e90 <_IO_stdin_used+0xe90>
    314c:	4c 89 f7             	mov    rdi,r14
    314f:	ff 70 10             	push   QWORD PTR [rax+0x10]
    3152:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
    3156:	be 01 00 00 00       	mov    esi,0x1
    315b:	ff 70 08             	push   QWORD PTR [rax+0x8]
    315e:	31 c0                	xor    eax,eax
    3160:	41 55                	push   r13
    3162:	e8 e9 df ff ff       	call   1150 <__fprintf_chk@plt>
    3167:	48 83 c4 20          	add    rsp,0x20
    316b:	e9 23 ff ff ff       	jmp    3093 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x93>
    3170:	4c 8b 65 c8          	mov    r12,QWORD PTR [rbp-0x38]
    3174:	4c 89 f6             	mov    rsi,r14
    3177:	bf 0a 00 00 00       	mov    edi,0xa
    317c:	45 31 ed             	xor    r13d,r13d
    317f:	e8 3c df ff ff       	call   10c0 <fputc@plt>
    3184:	48 83 7b 10 01       	cmp    QWORD PTR [rbx+0x10],0x1
    3189:	4c 8d 3d a8 2d 00 00 	lea    r15,[rip+0x2da8]        # 5f38 <_IO_stdin_used+0xf38>
    3190:	0f 84 2a 02 00 00    	je     33c0 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x3c0>
    3196:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    319d:	00 00 00 
    31a0:	48 83 ec 08          	sub    rsp,0x8
    31a4:	4c 89 e9             	mov    rcx,r13
    31a7:	49 83 c5 01          	add    r13,0x1
    31ab:	4c 89 fa             	mov    rdx,r15
    31ae:	41 54                	push   r12
    31b0:	4d 89 e9             	mov    r9,r13
    31b3:	4d 89 e0             	mov    r8,r12
    31b6:	be 01 00 00 00       	mov    esi,0x1
    31bb:	4c 89 f7             	mov    rdi,r14
    31be:	31 c0                	xor    eax,eax
    31c0:	e8 8b df ff ff       	call   1150 <__fprintf_chk@plt>
    31c5:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    31c9:	41 59                	pop    r9
    31cb:	41 5a                	pop    r10
    31cd:	48 8d 50 ff          	lea    rdx,[rax-0x1]
    31d1:	49 39 d5             	cmp    r13,rdx
    31d4:	72 ca                	jb     31a0 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x1a0>
    31d6:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
    31d9:	89 c1                	mov    ecx,eax
    31db:	48 89 f2             	mov    rdx,rsi
    31de:	85 c0                	test   eax,eax
    31e0:	0f 8e 3a 01 00 00    	jle    3320 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x320>
    31e6:	48 89 f2             	mov    rdx,rsi
    31e9:	45 31 ed             	xor    r13d,r13d
    31ec:	e9 9c 00 00 00       	jmp    328d <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x28d>
    31f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    31f8:	48 83 ec 08          	sub    rsp,0x8
    31fc:	45 89 f9             	mov    r9d,r15d
    31ff:	4d 89 e0             	mov    r8,r12
    3202:	44 89 e9             	mov    ecx,r13d
    3205:	41 54                	push   r12
    3207:	48 8d 15 a2 2e 00 00 	lea    rdx,[rip+0x2ea2]        # 60b0 <_IO_stdin_used+0x10b0>
    320e:	be 01 00 00 00       	mov    esi,0x1
    3213:	31 c0                	xor    eax,eax
    3215:	4c 89 f7             	mov    rdi,r14
    3218:	e8 33 df ff ff       	call   1150 <__fprintf_chk@plt>
    321d:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    3220:	5f                   	pop    rdi
    3221:	48 8d 15 60 2d 00 00 	lea    rdx,[rip+0x2d60]        # 5f88 <_IO_stdin_used+0xf88>
    3228:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
    322c:	41 58                	pop    r8
    322e:	4c 89 f7             	mov    rdi,r14
    3231:	4d 89 e0             	mov    r8,r12
    3234:	8b 4c 30 04          	mov    ecx,DWORD PTR [rax+rsi*1+0x4]
    3238:	be 01 00 00 00       	mov    esi,0x1
    323d:	31 c0                	xor    eax,eax
    323f:	41 89 c9             	mov    r9d,ecx
    3242:	e8 09 df ff ff       	call   1150 <__fprintf_chk@plt>
    3247:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    324a:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
    324e:	48 83 ec 08          	sub    rsp,0x8
    3252:	4d 89 e0             	mov    r8,r12
    3255:	44 89 f9             	mov    ecx,r15d
    3258:	44 8b 4c 30 04       	mov    r9d,DWORD PTR [rax+rsi*1+0x4]
    325d:	41 54                	push   r12
    325f:	48 8d 15 ba 2d 00 00 	lea    rdx,[rip+0x2dba]        # 6020 <_IO_stdin_used+0x1020>
    3266:	be 01 00 00 00       	mov    esi,0x1
    326b:	4c 89 f7             	mov    rdi,r14
    326e:	31 c0                	xor    eax,eax
    3270:	e8 db de ff ff       	call   1150 <__fprintf_chk@plt>
    3275:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
    3278:	59                   	pop    rcx
    3279:	5e                   	pop    rsi
    327a:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    327e:	49 83 c5 01          	add    r13,0x1
    3282:	89 c1                	mov    ecx,eax
    3284:	44 39 e8             	cmp    eax,r13d
    3287:	0f 8e 93 00 00 00    	jle    3320 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x320>
    328d:	4b 8d 44 ad 00       	lea    rax,[r13+r13*4+0x0]
    3292:	45 89 eb             	mov    r11d,r13d
    3295:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
    3299:	83 78 04 ff          	cmp    DWORD PTR [rax+0x4],0xffffffff
    329d:	74 db                	je     327a <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x27a>
    329f:	44 8b 38             	mov    r15d,DWORD PTR [rax]
    32a2:	45 85 ff             	test   r15d,r15d
    32a5:	78 41                	js     32e8 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x2e8>
    32a7:	41 39 cf             	cmp    r15d,ecx
    32aa:	7f 3c                	jg     32e8 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x2e8>
    32ac:	49 63 c7             	movsxd rax,r15d
    32af:	48 8d 04 80          	lea    rax,[rax+rax*4]
    32b3:	48 8d 3c c5 00 00 00 	lea    rdi,[rax*8+0x0]
    32ba:	00 
    32bb:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
    32bf:	44 39 6c c2 04       	cmp    DWORD PTR [rdx+rax*8+0x4],r13d
    32c4:	0f 85 2e ff ff ff    	jne    31f8 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x1f8>
    32ca:	48 83 ec 08          	sub    rsp,0x8
    32ce:	45 89 f9             	mov    r9d,r15d
    32d1:	4d 89 e0             	mov    r8,r12
    32d4:	44 89 e9             	mov    ecx,r13d
    32d7:	41 54                	push   r12
    32d9:	48 8d 15 88 2d 00 00 	lea    rdx,[rip+0x2d88]        # 6068 <_IO_stdin_used+0x1068>
    32e0:	eb 84                	jmp    3266 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x266>
    32e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    32e8:	45 89 f9             	mov    r9d,r15d
    32eb:	4d 89 e0             	mov    r8,r12
    32ee:	44 89 f9             	mov    ecx,r15d
    32f1:	be 01 00 00 00       	mov    esi,0x1
    32f6:	48 8d 15 8b 2c 00 00 	lea    rdx,[rip+0x2c8b]        # 5f88 <_IO_stdin_used+0xf88>
    32fd:	4c 89 f7             	mov    rdi,r14
    3300:	31 c0                	xor    eax,eax
    3302:	44 89 5d c8          	mov    DWORD PTR [rbp-0x38],r11d
    3306:	e8 45 de ff ff       	call   1150 <__fprintf_chk@plt>
    330b:	48 83 ec 08          	sub    rsp,0x8
    330f:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
    3312:	45 89 f9             	mov    r9d,r15d
    3315:	41 54                	push   r12
    3317:	4d 89 e0             	mov    r8,r12
    331a:	e9 40 ff ff ff       	jmp    325f <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x25f>
    331f:	90                   	nop
    3320:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3324:	45 31 ff             	xor    r15d,r15d
    3327:	4c 8d 14 89          	lea    r10,[rcx+rcx*4]
    332b:	48 89 c8             	mov    rax,rcx
    332e:	4e 8d 2c d5 00 00 00 	lea    r13,[r10*8+0x0]
    3335:	00 
    3336:	46 8b 0c 2a          	mov    r9d,DWORD PTR [rdx+r13*1]
    333a:	45 85 c9             	test   r9d,r9d
    333d:	75 5b                	jne    339a <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x39a>
    333f:	eb 5e                	jmp    339f <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x39f>
    3341:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3348:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    334c:	48 2b 43 18          	sub    rax,QWORD PTR [rbx+0x18]
    3350:	4c 39 f8             	cmp    rax,r15
    3353:	72 4a                	jb     339f <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x39f>
    3355:	48 83 ec 08          	sub    rsp,0x8
    3359:	48 8d 15 88 2d 00 00 	lea    rdx,[rip+0x2d88]        # 60e8 <_IO_stdin_used+0x10e8>
    3360:	4d 89 e0             	mov    r8,r12
    3363:	31 c0                	xor    eax,eax
    3365:	41 54                	push   r12
    3367:	be 01 00 00 00       	mov    esi,0x1
    336c:	4c 89 f7             	mov    rdi,r14
    336f:	49 83 c7 01          	add    r15,0x1
    3373:	e8 d8 dd ff ff       	call   1150 <__fprintf_chk@plt>
    3378:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    337b:	4a 63 0c 28          	movsxd rcx,DWORD PTR [rax+r13*1]
    337f:	48 8d 14 89          	lea    rdx,[rcx+rcx*4]
    3383:	44 8b 0c d0          	mov    r9d,DWORD PTR [rax+rdx*8]
    3387:	4c 8d 2c d5 00 00 00 	lea    r13,[rdx*8+0x0]
    338e:	00 
    338f:	58                   	pop    rax
    3390:	5a                   	pop    rdx
    3391:	45 85 c9             	test   r9d,r9d
    3394:	74 09                	je     339f <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x39f>
    3396:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
    339a:	48 85 c0             	test   rax,rax
    339d:	75 a9                	jne    3348 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x348>
    339f:	4c 89 f6             	mov    rsi,r14
    33a2:	bf 0a 00 00 00       	mov    edi,0xa
    33a7:	e8 14 dd ff ff       	call   10c0 <fputc@plt>
    33ac:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    33b0:	31 c0                	xor    eax,eax
    33b2:	5b                   	pop    rbx
    33b3:	41 5c                	pop    r12
    33b5:	41 5d                	pop    r13
    33b7:	41 5e                	pop    r14
    33b9:	41 5f                	pop    r15
    33bb:	5d                   	pop    rbp
    33bc:	c3                   	ret
    33bd:	0f 1f 00             	nop    DWORD PTR [rax]
    33c0:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
    33c3:	b9 01 00 00 00       	mov    ecx,0x1
    33c8:	e9 19 fe ff ff       	jmp    31e6 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)+0x1e6>
    33cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000033d0 <fprintfLstGraphDump(list_t*, char const*)>:
    33d0:	f3 0f 1e fa          	endbr64
    33d4:	55                   	push   rbp
    33d5:	48 89 e5             	mov    rbp,rsp
    33d8:	41 55                	push   r13
    33da:	49 89 f5             	mov    r13,rsi
    33dd:	48 8d 35 bc 27 00 00 	lea    rsi,[rip+0x27bc]        # 5ba0 <_IO_stdin_used+0xba0>
    33e4:	41 54                	push   r12
    33e6:	53                   	push   rbx
    33e7:	48 89 fb             	mov    rbx,rdi
    33ea:	4c 89 ef             	mov    rdi,r13
    33ed:	48 83 ec 08          	sub    rsp,0x8
    33f1:	e8 2a dd ff ff       	call   1120 <fopen@plt>
    33f6:	48 85 c0             	test   rax,rax
    33f9:	0f 84 8a 01 00 00    	je     3589 <fprintfLstGraphDump(list_t*, char const*)+0x1b9>
    33ff:	49 89 c4             	mov    r12,rax
    3402:	48 89 c1             	mov    rcx,rax
    3405:	ba 0f 00 00 00       	mov    edx,0xf
    340a:	be 01 00 00 00       	mov    esi,0x1
    340f:	48 8d 3d a7 27 00 00 	lea    rdi,[rip+0x27a7]        # 5bbd <_IO_stdin_used+0xbbd>
    3416:	e8 25 dd ff ff       	call   1140 <fwrite@plt>
    341b:	4c 89 e1             	mov    rcx,r12
    341e:	ba 12 00 00 00       	mov    edx,0x12
    3423:	be 01 00 00 00       	mov    esi,0x1
    3428:	48 8d 3d e9 28 00 00 	lea    rdi,[rip+0x28e9]        # 5d18 <_IO_stdin_used+0xd18>
    342f:	e8 0c dd ff ff       	call   1140 <fwrite@plt>
    3434:	4c 89 e1             	mov    rcx,r12
    3437:	ba 2b 00 00 00       	mov    edx,0x2b
    343c:	be 01 00 00 00       	mov    esi,0x1
    3441:	48 8d 3d 30 20 00 00 	lea    rdi,[rip+0x2030]        # 5478 <_IO_stdin_used+0x478>
    3448:	e8 f3 dc ff ff       	call   1140 <fwrite@plt>
    344d:	31 c9                	xor    ecx,ecx
    344f:	4c 89 e2             	mov    rdx,r12
    3452:	31 f6                	xor    esi,esi
    3454:	48 89 df             	mov    rdi,rbx
    3457:	e8 a4 fb ff ff       	call   3000 <fprintfCurrentListGraph(list_t*, unsigned long, _IO_FILE*, int)>
    345c:	4c 89 e1             	mov    rcx,r12
    345f:	ba 5e 00 00 00       	mov    edx,0x5e
    3464:	be 01 00 00 00       	mov    esi,0x1
    3469:	48 8d 3d a8 2c 00 00 	lea    rdi,[rip+0x2ca8]        # 6118 <_IO_stdin_used+0x1118>
    3470:	e8 cb dc ff ff       	call   1140 <fwrite@plt>
    3475:	4c 89 e1             	mov    rcx,r12
    3478:	ba 5e 00 00 00       	mov    edx,0x5e
    347d:	be 01 00 00 00       	mov    esi,0x1
    3482:	48 8d 3d ef 2c 00 00 	lea    rdi,[rip+0x2cef]        # 6178 <_IO_stdin_used+0x1178>
    3489:	e8 b2 dc ff ff       	call   1140 <fwrite@plt>
    348e:	4c 89 e1             	mov    rcx,r12
    3491:	ba 5e 00 00 00       	mov    edx,0x5e
    3496:	be 01 00 00 00       	mov    esi,0x1
    349b:	48 8d 3d 36 2d 00 00 	lea    rdi,[rip+0x2d36]        # 61d8 <_IO_stdin_used+0x11d8>
    34a2:	e8 99 dc ff ff       	call   1140 <fwrite@plt>
    34a7:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    34aa:	be 01 00 00 00       	mov    esi,0x1
    34af:	4c 89 e7             	mov    rdi,r12
    34b2:	48 8d 15 7f 2d 00 00 	lea    rdx,[rip+0x2d7f]        # 6238 <_IO_stdin_used+0x1238>
    34b9:	8b 08                	mov    ecx,DWORD PTR [rax]
    34bb:	31 c0                	xor    eax,eax
    34bd:	e8 8e dc ff ff       	call   1150 <__fprintf_chk@plt>
    34c2:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    34c5:	be 01 00 00 00       	mov    esi,0x1
    34ca:	4c 89 e7             	mov    rdi,r12
    34cd:	48 8d 15 94 2d 00 00 	lea    rdx,[rip+0x2d94]        # 6268 <_IO_stdin_used+0x1268>
    34d4:	8b 48 04             	mov    ecx,DWORD PTR [rax+0x4]
    34d7:	31 c0                	xor    eax,eax
    34d9:	e8 72 dc ff ff       	call   1150 <__fprintf_chk@plt>
    34de:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    34e2:	48 85 c9             	test   rcx,rcx
    34e5:	75 49                	jne    3530 <fprintfLstGraphDump(list_t*, char const*)+0x160>
    34e7:	4c 89 e1             	mov    rcx,r12
    34ea:	ba 27 00 00 00       	mov    edx,0x27
    34ef:	be 01 00 00 00       	mov    esi,0x1
    34f4:	48 8d 3d c5 2d 00 00 	lea    rdi,[rip+0x2dc5]        # 62c0 <_IO_stdin_used+0x12c0>
    34fb:	e8 40 dc ff ff       	call   1140 <fwrite@plt>
    3500:	48 8d 3d 24 28 00 00 	lea    rdi,[rip+0x2824]        # 5d2b <_IO_stdin_used+0xd2b>
    3507:	4c 89 e1             	mov    rcx,r12
    350a:	ba 03 00 00 00       	mov    edx,0x3
    350f:	be 01 00 00 00       	mov    esi,0x1
    3514:	e8 27 dc ff ff       	call   1140 <fwrite@plt>
    3519:	4c 89 e7             	mov    rdi,r12
    351c:	e8 4f db ff ff       	call   1070 <fclose@plt>
    3521:	85 c0                	test   eax,eax
    3523:	75 2b                	jne    3550 <fprintfLstGraphDump(list_t*, char const*)+0x180>
    3525:	48 83 c4 08          	add    rsp,0x8
    3529:	5b                   	pop    rbx
    352a:	41 5c                	pop    r12
    352c:	41 5d                	pop    r13
    352e:	5d                   	pop    rbp
    352f:	c3                   	ret
    3530:	48 8d 15 61 2d 00 00 	lea    rdx,[rip+0x2d61]        # 6298 <_IO_stdin_used+0x1298>
    3537:	be 01 00 00 00       	mov    esi,0x1
    353c:	4c 89 e7             	mov    rdi,r12
    353f:	31 c0                	xor    eax,eax
    3541:	e8 0a dc ff ff       	call   1150 <__fprintf_chk@plt>
    3546:	eb 9f                	jmp    34e7 <fprintfLstGraphDump(list_t*, char const*)+0x117>
    3548:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    354f:	00 
    3550:	4c 89 e9             	mov    rcx,r13
    3553:	48 8d 15 aa 26 00 00 	lea    rdx,[rip+0x26aa]        # 5c04 <_IO_stdin_used+0xc04>
    355a:	48 8b 3d bf 5a 00 00 	mov    rdi,QWORD PTR [rip+0x5abf]        # 9020 <stderr@GLIBC_2.2.5>
    3561:	be 01 00 00 00       	mov    esi,0x1
    3566:	31 c0                	xor    eax,eax
    3568:	e8 e3 db ff ff       	call   1150 <__fprintf_chk@plt>
    356d:	48 8d 3d bf 26 00 00 	lea    rdi,[rip+0x26bf]        # 5c33 <_IO_stdin_used+0xc33>
    3574:	e8 b7 db ff ff       	call   1130 <perror@plt>
    3579:	48 83 c4 08          	add    rsp,0x8
    357d:	b8 01 00 00 00       	mov    eax,0x1
    3582:	5b                   	pop    rbx
    3583:	41 5c                	pop    r12
    3585:	41 5d                	pop    r13
    3587:	5d                   	pop    rbp
    3588:	c3                   	ret
    3589:	4c 89 e9             	mov    rcx,r13
    358c:	48 8d 15 0f 26 00 00 	lea    rdx,[rip+0x260f]        # 5ba2 <_IO_stdin_used+0xba2>
    3593:	eb c5                	jmp    355a <fprintfLstGraphDump(list_t*, char const*)+0x18a>
    3595:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    359c:	00 00 00 00 

00000000000035a0 <fprintfListDataForDump(list_t*, _IO_FILE*)>:
    35a0:	f3 0f 1e fa          	endbr64
    35a4:	55                   	push   rbp
    35a5:	48 8d 15 83 27 00 00 	lea    rdx,[rip+0x2783]        # 5d2f <_IO_stdin_used+0xd2f>
    35ac:	31 c0                	xor    eax,eax
    35ae:	48 89 e5             	mov    rbp,rsp
    35b1:	41 56                	push   r14
    35b3:	41 55                	push   r13
    35b5:	41 54                	push   r12
    35b7:	49 89 f4             	mov    r12,rsi
    35ba:	be 01 00 00 00       	mov    esi,0x1
    35bf:	53                   	push   rbx
    35c0:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
    35c4:	48 89 fb             	mov    rbx,rdi
    35c7:	4c 89 e7             	mov    rdi,r12
    35ca:	e8 81 db ff ff       	call   1150 <__fprintf_chk@plt>
    35cf:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
    35d3:	be 01 00 00 00       	mov    esi,0x1
    35d8:	31 c0                	xor    eax,eax
    35da:	48 8d 15 65 27 00 00 	lea    rdx,[rip+0x2765]        # 5d46 <_IO_stdin_used+0xd46>
    35e1:	4c 89 e7             	mov    rdi,r12
    35e4:	e8 67 db ff ff       	call   1150 <__fprintf_chk@plt>
    35e9:	8b 4b 20             	mov    ecx,DWORD PTR [rbx+0x20]
    35ec:	be 01 00 00 00       	mov    esi,0x1
    35f1:	4c 89 e7             	mov    rdi,r12
    35f4:	48 8d 15 62 27 00 00 	lea    rdx,[rip+0x2762]        # 5d5d <_IO_stdin_used+0xd5d>
    35fb:	31 c0                	xor    eax,eax
    35fd:	e8 4e db ff ff       	call   1150 <__fprintf_chk@plt>
    3602:	8b 4b 24             	mov    ecx,DWORD PTR [rbx+0x24]
    3605:	be 01 00 00 00       	mov    esi,0x1
    360a:	4c 89 e7             	mov    rdi,r12
    360d:	48 8d 15 5f 27 00 00 	lea    rdx,[rip+0x275f]        # 5d73 <_IO_stdin_used+0xd73>
    3614:	31 c0                	xor    eax,eax
    3616:	e8 35 db ff ff       	call   1150 <__fprintf_chk@plt>
    361b:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    361f:	be 01 00 00 00       	mov    esi,0x1
    3624:	31 c0                	xor    eax,eax
    3626:	48 8d 15 5d 27 00 00 	lea    rdx,[rip+0x275d]        # 5d8a <_IO_stdin_used+0xd8a>
    362d:	4c 89 e7             	mov    rdi,r12
    3630:	e8 1b db ff ff       	call   1150 <__fprintf_chk@plt>
    3635:	4c 89 e1             	mov    rcx,r12
    3638:	ba 0f 00 00 00       	mov    edx,0xf
    363d:	be 01 00 00 00       	mov    esi,0x1
    3642:	48 8d 3d 59 27 00 00 	lea    rdi,[rip+0x2759]        # 5da2 <_IO_stdin_used+0xda2>
    3649:	e8 f2 da ff ff       	call   1140 <fwrite@plt>
    364e:	48 83 7b 10 00       	cmp    QWORD PTR [rbx+0x10],0x0
    3653:	74 2a                	je     367f <fprintfListDataForDump(list_t*, _IO_FILE*)+0xdf>
    3655:	45 31 f6             	xor    r14d,r14d
    3658:	4c 8d 2d 53 27 00 00 	lea    r13,[rip+0x2753]        # 5db2 <_IO_stdin_used+0xdb2>
    365f:	90                   	nop
    3660:	4c 89 f1             	mov    rcx,r14
    3663:	4c 89 ea             	mov    rdx,r13
    3666:	be 01 00 00 00       	mov    esi,0x1
    366b:	4c 89 e7             	mov    rdi,r12
    366e:	31 c0                	xor    eax,eax
    3670:	49 83 c6 01          	add    r14,0x1
    3674:	e8 d7 da ff ff       	call   1150 <__fprintf_chk@plt>
    3679:	4c 39 73 10          	cmp    QWORD PTR [rbx+0x10],r14
    367d:	77 e1                	ja     3660 <fprintfListDataForDump(list_t*, _IO_FILE*)+0xc0>
    367f:	4c 89 e6             	mov    rsi,r12
    3682:	bf 0a 00 00 00       	mov    edi,0xa
    3687:	e8 34 da ff ff       	call   10c0 <fputc@plt>
    368c:	4c 89 e1             	mov    rcx,r12
    368f:	ba 0f 00 00 00       	mov    edx,0xf
    3694:	be 01 00 00 00       	mov    esi,0x1
    3699:	48 8d 3d 1c 27 00 00 	lea    rdi,[rip+0x271c]        # 5dbc <_IO_stdin_used+0xdbc>
    36a0:	e8 9b da ff ff       	call   1140 <fwrite@plt>
    36a5:	48 83 7b 10 00       	cmp    QWORD PTR [rbx+0x10],0x0
    36aa:	74 3f                	je     36eb <fprintfListDataForDump(list_t*, _IO_FILE*)+0x14b>
    36ac:	45 31 f6             	xor    r14d,r14d
    36af:	4c 8d 2d 16 27 00 00 	lea    r13,[rip+0x2716]        # 5dcc <_IO_stdin_used+0xdcc>
    36b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    36bd:	00 00 00 
    36c0:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    36c3:	4b 8d 04 b6          	lea    rax,[r14+r14*4]
    36c7:	4c 89 ea             	mov    rdx,r13
    36ca:	be 01 00 00 00       	mov    esi,0x1
    36cf:	4c 89 e7             	mov    rdi,r12
    36d2:	49 83 c6 01          	add    r14,0x1
    36d6:	49 8d 04 c0          	lea    rax,[r8+rax*8]
    36da:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
    36de:	31 c0                	xor    eax,eax
    36e0:	e8 6b da ff ff       	call   1150 <__fprintf_chk@plt>
    36e5:	4c 39 73 10          	cmp    QWORD PTR [rbx+0x10],r14
    36e9:	77 d5                	ja     36c0 <fprintfListDataForDump(list_t*, _IO_FILE*)+0x120>
    36eb:	4c 89 e6             	mov    rsi,r12
    36ee:	bf 0a 00 00 00       	mov    edi,0xa
    36f3:	e8 c8 d9 ff ff       	call   10c0 <fputc@plt>
    36f8:	4c 89 e1             	mov    rcx,r12
    36fb:	ba 0f 00 00 00       	mov    edx,0xf
    3700:	be 01 00 00 00       	mov    esi,0x1
    3705:	48 8d 3d c9 26 00 00 	lea    rdi,[rip+0x26c9]        # 5dd5 <_IO_stdin_used+0xdd5>
    370c:	e8 2f da ff ff       	call   1140 <fwrite@plt>
    3711:	48 83 7b 10 00       	cmp    QWORD PTR [rbx+0x10],0x0
    3716:	74 3b                	je     3753 <fprintfListDataForDump(list_t*, _IO_FILE*)+0x1b3>
    3718:	45 31 f6             	xor    r14d,r14d
    371b:	4c 8d 2d 90 26 00 00 	lea    r13,[rip+0x2690]        # 5db2 <_IO_stdin_used+0xdb2>
    3722:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3728:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
    372b:	4b 8d 04 b6          	lea    rax,[r14+r14*4]
    372f:	4c 89 ea             	mov    rdx,r13
    3732:	be 01 00 00 00       	mov    esi,0x1
    3737:	49 83 c6 01          	add    r14,0x1
    373b:	48 8d 04 c7          	lea    rax,[rdi+rax*8]
    373f:	4c 89 e7             	mov    rdi,r12
    3742:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
    3746:	31 c0                	xor    eax,eax
    3748:	e8 03 da ff ff       	call   1150 <__fprintf_chk@plt>
    374d:	4c 39 73 10          	cmp    QWORD PTR [rbx+0x10],r14
    3751:	77 d5                	ja     3728 <fprintfListDataForDump(list_t*, _IO_FILE*)+0x188>
    3753:	4c 89 e6             	mov    rsi,r12
    3756:	bf 0a 00 00 00       	mov    edi,0xa
    375b:	e8 60 d9 ff ff       	call   10c0 <fputc@plt>
    3760:	4c 89 e1             	mov    rcx,r12
    3763:	ba 0f 00 00 00       	mov    edx,0xf
    3768:	be 01 00 00 00       	mov    esi,0x1
    376d:	48 8d 3d 71 26 00 00 	lea    rdi,[rip+0x2671]        # 5de5 <_IO_stdin_used+0xde5>
    3774:	e8 c7 d9 ff ff       	call   1140 <fwrite@plt>
    3779:	48 83 7b 10 00       	cmp    QWORD PTR [rbx+0x10],0x0
    377e:	74 3b                	je     37bb <fprintfListDataForDump(list_t*, _IO_FILE*)+0x21b>
    3780:	45 31 f6             	xor    r14d,r14d
    3783:	4c 8d 2d 28 26 00 00 	lea    r13,[rip+0x2628]        # 5db2 <_IO_stdin_used+0xdb2>
    378a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3790:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
    3793:	4b 8d 04 b6          	lea    rax,[r14+r14*4]
    3797:	4c 89 ea             	mov    rdx,r13
    379a:	4c 89 e7             	mov    rdi,r12
    379d:	49 83 c6 01          	add    r14,0x1
    37a1:	48 8d 04 c6          	lea    rax,[rsi+rax*8]
    37a5:	be 01 00 00 00       	mov    esi,0x1
    37aa:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
    37ae:	31 c0                	xor    eax,eax
    37b0:	e8 9b d9 ff ff       	call   1150 <__fprintf_chk@plt>
    37b5:	4c 39 73 10          	cmp    QWORD PTR [rbx+0x10],r14
    37b9:	77 d5                	ja     3790 <fprintfListDataForDump(list_t*, _IO_FILE*)+0x1f0>
    37bb:	4c 89 e6             	mov    rsi,r12
    37be:	bf 0a 00 00 00       	mov    edi,0xa
    37c3:	e8 f8 d8 ff ff       	call   10c0 <fputc@plt>
    37c8:	4c 89 e1             	mov    rcx,r12
    37cb:	ba 0f 00 00 00       	mov    edx,0xf
    37d0:	be 01 00 00 00       	mov    esi,0x1
    37d5:	48 8d 3d 19 26 00 00 	lea    rdi,[rip+0x2619]        # 5df5 <_IO_stdin_used+0xdf5>
    37dc:	e8 5f d9 ff ff       	call   1140 <fwrite@plt>
    37e1:	48 83 7b 10 00       	cmp    QWORD PTR [rbx+0x10],0x0
    37e6:	74 39                	je     3821 <fprintfListDataForDump(list_t*, _IO_FILE*)+0x281>
    37e8:	45 31 f6             	xor    r14d,r14d
    37eb:	4c 8d 2d 13 26 00 00 	lea    r13,[rip+0x2613]        # 5e05 <_IO_stdin_used+0xe05>
    37f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    37f8:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    37fb:	4b 8d 04 b6          	lea    rax,[r14+r14*4]
    37ff:	4c 89 ea             	mov    rdx,r13
    3802:	be 01 00 00 00       	mov    esi,0x1
    3807:	4c 89 e7             	mov    rdi,r12
    380a:	49 83 c6 01          	add    r14,0x1
    380e:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
    3812:	8b 08                	mov    ecx,DWORD PTR [rax]
    3814:	31 c0                	xor    eax,eax
    3816:	e8 35 d9 ff ff       	call   1150 <__fprintf_chk@plt>
    381b:	4c 39 73 10          	cmp    QWORD PTR [rbx+0x10],r14
    381f:	77 d7                	ja     37f8 <fprintfListDataForDump(list_t*, _IO_FILE*)+0x258>
    3821:	4c 89 e6             	mov    rsi,r12
    3824:	bf 0a 00 00 00       	mov    edi,0xa
    3829:	e8 92 d8 ff ff       	call   10c0 <fputc@plt>
    382e:	4c 89 e1             	mov    rcx,r12
    3831:	ba 0f 00 00 00       	mov    edx,0xf
    3836:	be 01 00 00 00       	mov    esi,0x1
    383b:	48 8d 3d cc 25 00 00 	lea    rdi,[rip+0x25cc]        # 5e0e <_IO_stdin_used+0xe0e>
    3842:	e8 f9 d8 ff ff       	call   1140 <fwrite@plt>
    3847:	48 83 7b 10 00       	cmp    QWORD PTR [rbx+0x10],0x0
    384c:	74 3c                	je     388a <fprintfListDataForDump(list_t*, _IO_FILE*)+0x2ea>
    384e:	45 31 f6             	xor    r14d,r14d
    3851:	4c 8d 2d ad 25 00 00 	lea    r13,[rip+0x25ad]        # 5e05 <_IO_stdin_used+0xe05>
    3858:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    385f:	00 
    3860:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
    3863:	4b 8d 04 b6          	lea    rax,[r14+r14*4]
    3867:	be 01 00 00 00       	mov    esi,0x1
    386c:	4c 89 e7             	mov    rdi,r12
    386f:	49 83 c6 01          	add    r14,0x1
    3873:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
    3877:	4c 89 ea             	mov    rdx,r13
    387a:	8b 48 04             	mov    ecx,DWORD PTR [rax+0x4]
    387d:	31 c0                	xor    eax,eax
    387f:	e8 cc d8 ff ff       	call   1150 <__fprintf_chk@plt>
    3884:	4c 39 73 10          	cmp    QWORD PTR [rbx+0x10],r14
    3888:	77 d6                	ja     3860 <fprintfListDataForDump(list_t*, _IO_FILE*)+0x2c0>
    388a:	5b                   	pop    rbx
    388b:	4c 89 e6             	mov    rsi,r12
    388e:	bf 0a 00 00 00       	mov    edi,0xa
    3893:	41 5c                	pop    r12
    3895:	41 5d                	pop    r13
    3897:	41 5e                	pop    r14
    3899:	5d                   	pop    rbp
    389a:	e9 21 d8 ff ff       	jmp    10c0 <fputc@plt>
    389f:	90                   	nop

00000000000038a0 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)>:
    38a0:	f3 0f 1e fa          	endbr64
    38a4:	55                   	push   rbp
    38a5:	48 89 e5             	mov    rbp,rsp
    38a8:	41 56                	push   r14
    38aa:	41 55                	push   r13
    38ac:	49 89 f5             	mov    r13,rsi
    38af:	48 89 d6             	mov    rsi,rdx
    38b2:	4c 8d 75 90          	lea    r14,[rbp-0x70]
    38b6:	41 54                	push   r12
    38b8:	49 89 d4             	mov    r12,rdx
    38bb:	53                   	push   rbx
    38bc:	48 89 fb             	mov    rbx,rdi
    38bf:	48 83 ec 50          	sub    rsp,0x50
    38c3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    38ca:	00 00 
    38cc:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    38d0:	31 c0                	xor    eax,eax
    38d2:	83 05 57 57 00 00 01 	add    DWORD PTR [rip+0x5757],0x1        # 9030 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)::graphImageCounter>
    38d9:	e8 f2 fa ff ff       	call   33d0 <fprintfLstGraphDump(list_t*, char const*)>
    38de:	48 83 ec 08          	sub    rsp,0x8
    38e2:	66 0f ef c0          	pxor   xmm0,xmm0
    38e6:	4d 89 e1             	mov    r9,r12
    38e9:	8b 05 41 57 00 00    	mov    eax,DWORD PTR [rip+0x5741]        # 9030 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)::graphImageCounter>
    38ef:	4c 8d 05 f2 29 00 00 	lea    r8,[rip+0x29f2]        # 62e8 <_IO_stdin_used+0x12e8>
    38f6:	b9 40 00 00 00       	mov    ecx,0x40
    38fb:	4c 89 f7             	mov    rdi,r14
    38fe:	be 40 00 00 00       	mov    esi,0x40
    3903:	ba 01 00 00 00       	mov    edx,0x1
    3908:	0f 29 45 90          	movaps XMMWORD PTR [rbp-0x70],xmm0
    390c:	50                   	push   rax
    390d:	31 c0                	xor    eax,eax
    390f:	0f 29 45 a0          	movaps XMMWORD PTR [rbp-0x60],xmm0
    3913:	0f 29 45 b0          	movaps XMMWORD PTR [rbp-0x50],xmm0
    3917:	0f 29 45 c0          	movaps XMMWORD PTR [rbp-0x40],xmm0
    391b:	e8 10 d7 ff ff       	call   1030 <__snprintf_chk@plt>
    3920:	58                   	pop    rax
    3921:	4c 89 f7             	mov    rdi,r14
    3924:	5a                   	pop    rdx
    3925:	e8 66 d7 ff ff       	call   1090 <system@plt>
    392a:	8b 0d 00 57 00 00    	mov    ecx,DWORD PTR [rip+0x5700]        # 9030 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)::graphImageCounter>
    3930:	31 c0                	xor    eax,eax
    3932:	4c 89 ef             	mov    rdi,r13
    3935:	4c 69 43 10 96 00 00 	imul   r8,QWORD PTR [rbx+0x10],0x96
    393c:	00 
    393d:	48 8d 15 cc 29 00 00 	lea    rdx,[rip+0x29cc]        # 6310 <_IO_stdin_used+0x1310>
    3944:	be 01 00 00 00       	mov    esi,0x1
    3949:	e8 02 d8 ff ff       	call   1150 <__fprintf_chk@plt>
    394e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    3952:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    3959:	00 00 
    395b:	75 0d                	jne    396a <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)+0xca>
    395d:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
    3961:	5b                   	pop    rbx
    3962:	41 5c                	pop    r12
    3964:	41 5d                	pop    r13
    3966:	41 5e                	pop    r14
    3968:	5d                   	pop    rbp
    3969:	c3                   	ret
    396a:	e8 11 d7 ff ff       	call   1080 <__stack_chk_fail@plt>
    396f:	90                   	nop

0000000000003970 <listVerifier(list_t*)>:
    3970:	f3 0f 1e fa          	endbr64
    3974:	49 89 f9             	mov    r9,rdi
    3977:	48 85 ff             	test   rdi,rdi
    397a:	0f 84 ee 02 00 00    	je     3c6e <listVerifier(list_t*)+0x2fe>
    3980:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    3983:	44 8b 47 24          	mov    r8d,DWORD PTR [rdi+0x24]
    3987:	48 85 c0             	test   rax,rax
    398a:	0f 84 a0 02 00 00    	je     3c30 <listVerifier(list_t*)+0x2c0>
    3990:	49 8b 49 10          	mov    rcx,QWORD PTR [r9+0x10]
    3994:	48 85 c9             	test   rcx,rcx
    3997:	0f 88 be 02 00 00    	js     3c5b <listVerifier(list_t*)+0x2eb>
    399d:	48 81 78 18 be ba 00 	cmp    QWORD PTR [rax+0x18],0xbabe
    39a4:	00 
    39a5:	74 08                	je     39af <listVerifier(list_t*)+0x3f>
    39a7:	41 83 c8 08          	or     r8d,0x8
    39ab:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    39af:	48 63 10             	movsxd rdx,DWORD PTR [rax]
    39b2:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    39b6:	8b 74 d0 04          	mov    esi,DWORD PTR [rax+rdx*8+0x4]
    39ba:	85 f6                	test   esi,esi
    39bc:	74 08                	je     39c6 <listVerifier(list_t*)+0x56>
    39be:	41 83 c8 40          	or     r8d,0x40
    39c2:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    39c6:	48 63 50 04          	movsxd rdx,DWORD PTR [rax+0x4]
    39ca:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    39ce:	8b 14 d0             	mov    edx,DWORD PTR [rax+rdx*8]
    39d1:	85 d2                	test   edx,edx
    39d3:	0f 85 6f 01 00 00    	jne    3b48 <listVerifier(list_t*)+0x1d8>
    39d9:	48 85 c9             	test   rcx,rcx
    39dc:	0f 84 73 01 00 00    	je     3b55 <listVerifier(list_t*)+0x1e5>
    39e2:	48 8d 78 04          	lea    rdi,[rax+0x4]
    39e6:	31 f6                	xor    esi,esi
    39e8:	48 89 fa             	mov    rdx,rdi
    39eb:	eb 14                	jmp    3a01 <listVerifier(list_t*)+0x91>
    39ed:	0f 1f 00             	nop    DWORD PTR [rax]
    39f0:	48 83 c6 01          	add    rsi,0x1
    39f4:	48 83 c2 28          	add    rdx,0x28
    39f8:	48 39 f1             	cmp    rcx,rsi
    39fb:	0f 84 0f 01 00 00    	je     3b10 <listVerifier(list_t*)+0x1a0>
    3a01:	48 81 7a 14 ad 0b 00 	cmp    QWORD PTR [rdx+0x14],0xbad
    3a08:	00 
    3a09:	75 e5                	jne    39f0 <listVerifier(list_t*)+0x80>
    3a0b:	83 3a ff             	cmp    DWORD PTR [rdx],0xffffffff
    3a0e:	74 e0                	je     39f0 <listVerifier(list_t*)+0x80>
    3a10:	41 83 c8 10          	or     r8d,0x10
    3a14:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    3a18:	41 89 ca             	mov    r10d,ecx
    3a1b:	85 c9                	test   ecx,ecx
    3a1d:	7e 2c                	jle    3a4b <listVerifier(list_t*)+0xdb>
    3a1f:	48 89 c2             	mov    rdx,rax
    3a22:	31 f6                	xor    esi,esi
    3a24:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3a28:	83 7a 04 ff          	cmp    DWORD PTR [rdx+0x4],0xffffffff
    3a2c:	74 11                	je     3a3f <listVerifier(list_t*)+0xcf>
    3a2e:	48 63 3a             	movsxd rdi,DWORD PTR [rdx]
    3a31:	48 8d 3c bf          	lea    rdi,[rdi+rdi*4]
    3a35:	39 74 f8 04          	cmp    DWORD PTR [rax+rdi*8+0x4],esi
    3a39:	0f 85 c1 01 00 00    	jne    3c00 <listVerifier(list_t*)+0x290>
    3a3f:	83 c6 01             	add    esi,0x1
    3a42:	48 83 c2 28          	add    rdx,0x28
    3a46:	44 39 d6             	cmp    esi,r10d
    3a49:	75 dd                	jne    3a28 <listVerifier(list_t*)+0xb8>
    3a4b:	4d 8b 51 18          	mov    r10,QWORD PTR [r9+0x18]
    3a4f:	4c 39 d1             	cmp    rcx,r10
    3a52:	0f 82 10 01 00 00    	jb     3b68 <listVerifier(list_t*)+0x1f8>
    3a58:	48 89 cf             	mov    rdi,rcx
    3a5b:	48 01 ff             	add    rdi,rdi
    3a5e:	0f 84 d9 01 00 00    	je     3c3d <listVerifier(list_t*)+0x2cd>
    3a64:	31 f6                	xor    esi,esi
    3a66:	31 d2                	xor    edx,edx
    3a68:	eb 1c                	jmp    3a86 <listVerifier(list_t*)+0x116>
    3a6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3a70:	48 83 c6 01          	add    rsi,0x1
    3a74:	48 39 fe             	cmp    rsi,rdi
    3a77:	0f 84 a3 01 00 00    	je     3c20 <listVerifier(list_t*)+0x2b0>
    3a7d:	48 39 d1             	cmp    rcx,rdx
    3a80:	0f 82 fa 00 00 00    	jb     3b80 <listVerifier(list_t*)+0x210>
    3a86:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    3a8a:	48 63 14 d0          	movsxd rdx,DWORD PTR [rax+rdx*8]
    3a8e:	85 d2                	test   edx,edx
    3a90:	75 de                	jne    3a70 <listVerifier(list_t*)+0x100>
    3a92:	4c 39 d6             	cmp    rsi,r10
    3a95:	0f 85 e5 00 00 00    	jne    3b80 <listVerifier(list_t*)+0x210>
    3a9b:	31 f6                	xor    esi,esi
    3a9d:	31 d2                	xor    edx,edx
    3a9f:	eb 19                	jmp    3aba <listVerifier(list_t*)+0x14a>
    3aa1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3aa8:	48 83 c6 01          	add    rsi,0x1
    3aac:	48 39 fe             	cmp    rsi,rdi
    3aaf:	74 16                	je     3ac7 <listVerifier(list_t*)+0x157>
    3ab1:	48 39 d1             	cmp    rcx,rdx
    3ab4:	0f 82 c6 00 00 00    	jb     3b80 <listVerifier(list_t*)+0x210>
    3aba:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    3abe:	48 63 54 d0 04       	movsxd rdx,DWORD PTR [rax+rdx*8+0x4]
    3ac3:	85 d2                	test   edx,edx
    3ac5:	75 e1                	jne    3aa8 <listVerifier(list_t*)+0x138>
    3ac7:	49 39 f2             	cmp    r10,rsi
    3aca:	0f 85 b0 00 00 00    	jne    3b80 <listVerifier(list_t*)+0x210>
    3ad0:	49 8b 51 08          	mov    rdx,QWORD PTR [r9+0x8]
    3ad4:	48 85 d2             	test   rdx,rdx
    3ad7:	0f 85 bb 00 00 00    	jne    3b98 <listVerifier(list_t*)+0x228>
    3add:	48 83 e9 01          	sub    rcx,0x1
    3ae1:	4c 39 d1             	cmp    rcx,r10
    3ae4:	0f 85 f6 00 00 00    	jne    3be0 <listVerifier(list_t*)+0x270>
    3aea:	31 d2                	xor    edx,edx
    3aec:	eb 13                	jmp    3b01 <listVerifier(list_t*)+0x191>
    3aee:	66 90                	xchg   ax,ax
    3af0:	8b 08                	mov    ecx,DWORD PTR [rax]
    3af2:	83 c2 01             	add    edx,0x1
    3af5:	48 83 c0 28          	add    rax,0x28
    3af9:	39 d1                	cmp    ecx,edx
    3afb:	0f 85 ef 00 00 00    	jne    3bf0 <listVerifier(list_t*)+0x280>
    3b01:	44 39 d2             	cmp    edx,r10d
    3b04:	7c ea                	jl     3af0 <listVerifier(list_t*)+0x180>
    3b06:	44 89 c0             	mov    eax,r8d
    3b09:	c3                   	ret
    3b0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3b10:	48 8d 14 89          	lea    rdx,[rcx+rcx*4]
    3b14:	48 8d 54 d0 04       	lea    rdx,[rax+rdx*8+0x4]
    3b19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3b20:	48 81 7f 14 ad 0b 00 	cmp    QWORD PTR [rdi+0x14],0xbad
    3b27:	00 
    3b28:	74 09                	je     3b33 <listVerifier(list_t*)+0x1c3>
    3b2a:	83 3f ff             	cmp    DWORD PTR [rdi],0xffffffff
    3b2d:	0f 84 dd fe ff ff    	je     3a10 <listVerifier(list_t*)+0xa0>
    3b33:	48 83 c7 28          	add    rdi,0x28
    3b37:	48 39 fa             	cmp    rdx,rdi
    3b3a:	75 e4                	jne    3b20 <listVerifier(list_t*)+0x1b0>
    3b3c:	e9 d7 fe ff ff       	jmp    3a18 <listVerifier(list_t*)+0xa8>
    3b41:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3b48:	41 80 c8 80          	or     r8b,0x80
    3b4c:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    3b50:	e9 84 fe ff ff       	jmp    39d9 <listVerifier(list_t*)+0x69>
    3b55:	4d 8b 51 18          	mov    r10,QWORD PTR [r9+0x18]
    3b59:	4d 85 d2             	test   r10,r10
    3b5c:	0f 84 e4 00 00 00    	je     3c46 <listVerifier(list_t*)+0x2d6>
    3b62:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3b68:	41 81 c8 00 01 00 00 	or     r8d,0x100
    3b6f:	48 89 cf             	mov    rdi,rcx
    3b72:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    3b76:	48 01 ff             	add    rdi,rdi
    3b79:	0f 85 e5 fe ff ff    	jne    3a64 <listVerifier(list_t*)+0xf4>
    3b7f:	90                   	nop
    3b80:	49 8b 51 08          	mov    rdx,QWORD PTR [r9+0x8]
    3b84:	41 81 c8 00 02 00 00 	or     r8d,0x200
    3b8b:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    3b8f:	48 85 d2             	test   rdx,rdx
    3b92:	0f 84 45 ff ff ff    	je     3add <listVerifier(list_t*)+0x16d>
    3b98:	48 85 ff             	test   rdi,rdi
    3b9b:	0f 84 49 ff ff ff    	je     3aea <listVerifier(list_t*)+0x17a>
    3ba1:	48 39 d1             	cmp    rcx,rdx
    3ba4:	72 3a                	jb     3be0 <listVerifier(list_t*)+0x270>
    3ba6:	31 f6                	xor    esi,esi
    3ba8:	eb 14                	jmp    3bbe <listVerifier(list_t*)+0x24e>
    3baa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3bb0:	48 83 c6 01          	add    rsi,0x1
    3bb4:	48 39 fe             	cmp    rsi,rdi
    3bb7:	74 11                	je     3bca <listVerifier(list_t*)+0x25a>
    3bb9:	48 39 d1             	cmp    rcx,rdx
    3bbc:	72 22                	jb     3be0 <listVerifier(list_t*)+0x270>
    3bbe:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    3bc2:	48 63 14 d0          	movsxd rdx,DWORD PTR [rax+rdx*8]
    3bc6:	85 d2                	test   edx,edx
    3bc8:	75 e6                	jne    3bb0 <listVerifier(list_t*)+0x240>
    3bca:	4c 29 d1             	sub    rcx,r10
    3bcd:	48 39 f1             	cmp    rcx,rsi
    3bd0:	0f 83 14 ff ff ff    	jae    3aea <listVerifier(list_t*)+0x17a>
    3bd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    3bdd:	00 00 00 
    3be0:	41 81 c8 00 40 00 00 	or     r8d,0x4000
    3be7:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    3beb:	e9 fa fe ff ff       	jmp    3aea <listVerifier(list_t*)+0x17a>
    3bf0:	41 c7 41 20 00 00 00 	mov    DWORD PTR [r9+0x20],0x0
    3bf7:	00 
    3bf8:	44 89 c0             	mov    eax,r8d
    3bfb:	c3                   	ret
    3bfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3c00:	4d 8b 51 18          	mov    r10,QWORD PTR [r9+0x18]
    3c04:	41 83 c8 20          	or     r8d,0x20
    3c08:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    3c0c:	4c 39 d1             	cmp    rcx,r10
    3c0f:	0f 83 43 fe ff ff    	jae    3a58 <listVerifier(list_t*)+0xe8>
    3c15:	e9 4e ff ff ff       	jmp    3b68 <listVerifier(list_t*)+0x1f8>
    3c1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3c20:	49 39 fa             	cmp    r10,rdi
    3c23:	0f 84 72 fe ff ff    	je     3a9b <listVerifier(list_t*)+0x12b>
    3c29:	e9 52 ff ff ff       	jmp    3b80 <listVerifier(list_t*)+0x210>
    3c2e:	66 90                	xchg   ax,ax
    3c30:	41 83 c8 02          	or     r8d,0x2
    3c34:	44 89 47 24          	mov    DWORD PTR [rdi+0x24],r8d
    3c38:	e9 53 fd ff ff       	jmp    3990 <listVerifier(list_t*)+0x20>
    3c3d:	4d 85 d2             	test   r10,r10
    3c40:	0f 85 3a ff ff ff    	jne    3b80 <listVerifier(list_t*)+0x210>
    3c46:	4d 8b 51 08          	mov    r10,QWORD PTR [r9+0x8]
    3c4a:	4d 85 d2             	test   r10,r10
    3c4d:	0f 84 8a fe ff ff    	je     3add <listVerifier(list_t*)+0x16d>
    3c53:	45 31 d2             	xor    r10d,r10d
    3c56:	e9 8f fe ff ff       	jmp    3aea <listVerifier(list_t*)+0x17a>
    3c5b:	41 83 c8 04          	or     r8d,0x4
    3c5f:	45 89 41 24          	mov    DWORD PTR [r9+0x24],r8d
    3c63:	41 b8 fc ff ff ff    	mov    r8d,0xfffffffc
    3c69:	e9 98 fe ff ff       	jmp    3b06 <listVerifier(list_t*)+0x196>
    3c6e:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
    3c74:	e9 8d fe ff ff       	jmp    3b06 <listVerifier(list_t*)+0x196>
    3c79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000003c80 <findBadFreeListNode(list_t*)>:
    3c80:	f3 0f 1e fa          	endbr64
    3c84:	48 8b 77 10          	mov    rsi,QWORD PTR [rdi+0x10]
    3c88:	48 85 f6             	test   rsi,rsi
    3c8b:	74 5f                	je     3cec <findBadFreeListNode(list_t*)+0x6c>
    3c8d:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
    3c90:	31 d2                	xor    edx,edx
    3c92:	48 83 c1 04          	add    rcx,0x4
    3c96:	48 89 c8             	mov    rax,rcx
    3c99:	eb 12                	jmp    3cad <findBadFreeListNode(list_t*)+0x2d>
    3c9b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3ca0:	48 83 c2 01          	add    rdx,0x1
    3ca4:	48 83 c0 28          	add    rax,0x28
    3ca8:	48 39 f2             	cmp    rdx,rsi
    3cab:	74 1b                	je     3cc8 <findBadFreeListNode(list_t*)+0x48>
    3cad:	48 81 78 14 ad 0b 00 	cmp    QWORD PTR [rax+0x14],0xbad
    3cb4:	00 
    3cb5:	75 e9                	jne    3ca0 <findBadFreeListNode(list_t*)+0x20>
    3cb7:	83 38 ff             	cmp    DWORD PTR [rax],0xffffffff
    3cba:	74 e4                	je     3ca0 <findBadFreeListNode(list_t*)+0x20>
    3cbc:	b8 01 00 00 00       	mov    eax,0x1
    3cc1:	c3                   	ret
    3cc2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3cc8:	31 c0                	xor    eax,eax
    3cca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3cd0:	48 81 79 14 ad 0b 00 	cmp    QWORD PTR [rcx+0x14],0xbad
    3cd7:	00 
    3cd8:	74 05                	je     3cdf <findBadFreeListNode(list_t*)+0x5f>
    3cda:	83 39 ff             	cmp    DWORD PTR [rcx],0xffffffff
    3cdd:	74 dd                	je     3cbc <findBadFreeListNode(list_t*)+0x3c>
    3cdf:	48 83 c0 01          	add    rax,0x1
    3ce3:	48 83 c1 28          	add    rcx,0x28
    3ce7:	48 39 f0             	cmp    rax,rsi
    3cea:	75 e4                	jne    3cd0 <findBadFreeListNode(list_t*)+0x50>
    3cec:	31 c0                	xor    eax,eax
    3cee:	c3                   	ret
    3cef:	90                   	nop

0000000000003cf0 <findBadNextAndPrevMatch(list_t*)>:
    3cf0:	f3 0f 1e fa          	endbr64
    3cf4:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
    3cf8:	89 c6                	mov    esi,eax
    3cfa:	85 c0                	test   eax,eax
    3cfc:	7e 30                	jle    3d2e <findBadNextAndPrevMatch(list_t*)+0x3e>
    3cfe:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    3d01:	31 d2                	xor    edx,edx
    3d03:	48 89 f8             	mov    rax,rdi
    3d06:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    3d0d:	00 00 00 
    3d10:	83 78 04 ff          	cmp    DWORD PTR [rax+0x4],0xffffffff
    3d14:	74 0d                	je     3d23 <findBadNextAndPrevMatch(list_t*)+0x33>
    3d16:	48 63 08             	movsxd rcx,DWORD PTR [rax]
    3d19:	48 8d 0c 89          	lea    rcx,[rcx+rcx*4]
    3d1d:	39 54 cf 04          	cmp    DWORD PTR [rdi+rcx*8+0x4],edx
    3d21:	75 15                	jne    3d38 <findBadNextAndPrevMatch(list_t*)+0x48>
    3d23:	83 c2 01             	add    edx,0x1
    3d26:	48 83 c0 28          	add    rax,0x28
    3d2a:	39 f2                	cmp    edx,esi
    3d2c:	75 e2                	jne    3d10 <findBadNextAndPrevMatch(list_t*)+0x20>
    3d2e:	31 c0                	xor    eax,eax
    3d30:	c3                   	ret
    3d31:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3d38:	b8 01 00 00 00       	mov    eax,0x1
    3d3d:	c3                   	ret
    3d3e:	66 90                	xchg   ax,ax

0000000000003d40 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)>:
    3d40:	f3 0f 1e fa          	endbr64
    3d44:	55                   	push   rbp
    3d45:	48 89 e5             	mov    rbp,rsp
    3d48:	41 57                	push   r15
    3d4a:	41 bf 01 00 00 00    	mov    r15d,0x1
    3d50:	41 56                	push   r14
    3d52:	49 89 f6             	mov    r14,rsi
    3d55:	41 55                	push   r13
    3d57:	49 89 fd             	mov    r13,rdi
    3d5a:	41 54                	push   r12
    3d5c:	53                   	push   rbx
    3d5d:	48 89 d3             	mov    rbx,rdx
    3d60:	48 83 ec 08          	sub    rsp,0x8
    3d64:	8b 47 24             	mov    eax,DWORD PTR [rdi+0x24]
    3d67:	41 89 c4             	mov    r12d,eax
    3d6a:	41 83 e4 02          	and    r12d,0x2
    3d6e:	75 60                	jne    3dd0 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x90>
    3d70:	a8 04                	test   al,0x4
    3d72:	0f 85 ae 00 00 00    	jne    3e26 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0xe6>
    3d78:	a8 08                	test   al,0x8
    3d7a:	0f 85 f3 00 00 00    	jne    3e73 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x133>
    3d80:	a8 10                	test   al,0x10
    3d82:	0f 85 39 01 00 00    	jne    3ec1 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x181>
    3d88:	a8 20                	test   al,0x20
    3d8a:	0f 85 7f 01 00 00    	jne    3f0f <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x1cf>
    3d90:	a8 40                	test   al,0x40
    3d92:	0f 85 c5 01 00 00    	jne    3f5d <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x21d>
    3d98:	a8 80                	test   al,0x80
    3d9a:	0f 85 0b 02 00 00    	jne    3fab <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x26b>
    3da0:	f6 c4 01             	test   ah,0x1
    3da3:	0f 85 51 02 00 00    	jne    3ffa <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x2ba>
    3da9:	f6 c4 02             	test   ah,0x2
    3dac:	0f 85 97 02 00 00    	jne    4049 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x309>
    3db2:	f6 c4 40             	test   ah,0x40
    3db5:	0f 85 dd 02 00 00    	jne    4098 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x358>
    3dbb:	48 83 c4 08          	add    rsp,0x8
    3dbf:	44 89 e0             	mov    eax,r12d
    3dc2:	5b                   	pop    rbx
    3dc3:	41 5c                	pop    r12
    3dc5:	41 5d                	pop    r13
    3dc7:	41 5e                	pop    r14
    3dc9:	41 5f                	pop    r15
    3dcb:	5d                   	pop    rbp
    3dcc:	c3                   	ret
    3dcd:	0f 1f 00             	nop    DWORD PTR [rax]
    3dd0:	b9 fe ff ff ff       	mov    ecx,0xfffffffe
    3dd5:	be 01 00 00 00       	mov    esi,0x1
    3dda:	4c 89 f7             	mov    rdi,r14
    3ddd:	31 c0                	xor    eax,eax
    3ddf:	48 8d 15 62 25 00 00 	lea    rdx,[rip+0x2562]        # 6348 <_IO_stdin_used+0x1348>
    3de6:	41 bf 02 00 00 00    	mov    r15d,0x2
    3dec:	41 bc 01 00 00 00    	mov    r12d,0x1
    3df2:	e8 59 d3 ff ff       	call   1150 <__fprintf_chk@plt>
    3df7:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3dfb:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    3dff:	31 c0                	xor    eax,eax
    3e01:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    3e04:	ba fe ff ff ff       	mov    edx,0xfffffffe
    3e09:	bf 01 00 00 00       	mov    edi,0x1
    3e0e:	48 8d 35 8b 25 00 00 	lea    rsi,[rip+0x258b]        # 63a0 <_IO_stdin_used+0x13a0>
    3e15:	e8 e6 d2 ff ff       	call   1100 <__printf_chk@plt>
    3e1a:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    3e1e:	a8 04                	test   al,0x4
    3e20:	0f 84 52 ff ff ff    	je     3d78 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x38>
    3e26:	b9 fc ff ff ff       	mov    ecx,0xfffffffc
    3e2b:	be 01 00 00 00       	mov    esi,0x1
    3e30:	4c 89 f7             	mov    rdi,r14
    3e33:	31 c0                	xor    eax,eax
    3e35:	48 8d 15 b4 25 00 00 	lea    rdx,[rip+0x25b4]        # 63f0 <_IO_stdin_used+0x13f0>
    3e3c:	45 89 fc             	mov    r12d,r15d
    3e3f:	e8 0c d3 ff ff       	call   1150 <__fprintf_chk@plt>
    3e44:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3e48:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    3e4c:	31 c0                	xor    eax,eax
    3e4e:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    3e51:	ba fc ff ff ff       	mov    edx,0xfffffffc
    3e56:	bf 01 00 00 00       	mov    edi,0x1
    3e5b:	48 8d 35 de 25 00 00 	lea    rsi,[rip+0x25de]        # 6440 <_IO_stdin_used+0x1440>
    3e62:	e8 99 d2 ff ff       	call   1100 <__printf_chk@plt>
    3e67:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    3e6b:	a8 08                	test   al,0x8
    3e6d:	0f 84 0d ff ff ff    	je     3d80 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x40>
    3e73:	b9 f8 ff ff ff       	mov    ecx,0xfffffff8
    3e78:	be 01 00 00 00       	mov    esi,0x1
    3e7d:	4c 89 f7             	mov    rdi,r14
    3e80:	31 c0                	xor    eax,eax
    3e82:	48 8d 15 ff 25 00 00 	lea    rdx,[rip+0x25ff]        # 6488 <_IO_stdin_used+0x1488>
    3e89:	41 83 c4 01          	add    r12d,0x1
    3e8d:	e8 be d2 ff ff       	call   1150 <__fprintf_chk@plt>
    3e92:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3e96:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    3e9a:	31 c0                	xor    eax,eax
    3e9c:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    3e9f:	ba f8 ff ff ff       	mov    edx,0xfffffff8
    3ea4:	bf 01 00 00 00       	mov    edi,0x1
    3ea9:	48 8d 35 30 26 00 00 	lea    rsi,[rip+0x2630]        # 64e0 <_IO_stdin_used+0x14e0>
    3eb0:	e8 4b d2 ff ff       	call   1100 <__printf_chk@plt>
    3eb5:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    3eb9:	a8 10                	test   al,0x10
    3ebb:	0f 84 c7 fe ff ff    	je     3d88 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x48>
    3ec1:	b9 f0 ff ff ff       	mov    ecx,0xfffffff0
    3ec6:	be 01 00 00 00       	mov    esi,0x1
    3ecb:	4c 89 f7             	mov    rdi,r14
    3ece:	31 c0                	xor    eax,eax
    3ed0:	48 8d 15 59 26 00 00 	lea    rdx,[rip+0x2659]        # 6530 <_IO_stdin_used+0x1530>
    3ed7:	41 83 c4 01          	add    r12d,0x1
    3edb:	e8 70 d2 ff ff       	call   1150 <__fprintf_chk@plt>
    3ee0:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3ee4:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    3ee8:	31 c0                	xor    eax,eax
    3eea:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    3eed:	ba f0 ff ff ff       	mov    edx,0xfffffff0
    3ef2:	bf 01 00 00 00       	mov    edi,0x1
    3ef7:	48 8d 35 92 26 00 00 	lea    rsi,[rip+0x2692]        # 6590 <_IO_stdin_used+0x1590>
    3efe:	e8 fd d1 ff ff       	call   1100 <__printf_chk@plt>
    3f03:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    3f07:	a8 20                	test   al,0x20
    3f09:	0f 84 81 fe ff ff    	je     3d90 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x50>
    3f0f:	b9 e0 ff ff ff       	mov    ecx,0xffffffe0
    3f14:	be 01 00 00 00       	mov    esi,0x1
    3f19:	4c 89 f7             	mov    rdi,r14
    3f1c:	31 c0                	xor    eax,eax
    3f1e:	48 8d 15 bb 26 00 00 	lea    rdx,[rip+0x26bb]        # 65e0 <_IO_stdin_used+0x15e0>
    3f25:	41 83 c4 01          	add    r12d,0x1
    3f29:	e8 22 d2 ff ff       	call   1150 <__fprintf_chk@plt>
    3f2e:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3f32:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    3f36:	31 c0                	xor    eax,eax
    3f38:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    3f3b:	ba e0 ff ff ff       	mov    edx,0xffffffe0
    3f40:	bf 01 00 00 00       	mov    edi,0x1
    3f45:	48 8d 35 f4 26 00 00 	lea    rsi,[rip+0x26f4]        # 6640 <_IO_stdin_used+0x1640>
    3f4c:	e8 af d1 ff ff       	call   1100 <__printf_chk@plt>
    3f51:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    3f55:	a8 40                	test   al,0x40
    3f57:	0f 84 3b fe ff ff    	je     3d98 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x58>
    3f5d:	b9 c0 ff ff ff       	mov    ecx,0xffffffc0
    3f62:	be 01 00 00 00       	mov    esi,0x1
    3f67:	4c 89 f7             	mov    rdi,r14
    3f6a:	31 c0                	xor    eax,eax
    3f6c:	48 8d 15 25 27 00 00 	lea    rdx,[rip+0x2725]        # 6698 <_IO_stdin_used+0x1698>
    3f73:	41 83 c4 01          	add    r12d,0x1
    3f77:	e8 d4 d1 ff ff       	call   1150 <__fprintf_chk@plt>
    3f7c:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3f80:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    3f84:	31 c0                	xor    eax,eax
    3f86:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    3f89:	ba c0 ff ff ff       	mov    edx,0xffffffc0
    3f8e:	bf 01 00 00 00       	mov    edi,0x1
    3f93:	48 8d 35 46 27 00 00 	lea    rsi,[rip+0x2746]        # 66e0 <_IO_stdin_used+0x16e0>
    3f9a:	e8 61 d1 ff ff       	call   1100 <__printf_chk@plt>
    3f9f:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    3fa3:	a8 80                	test   al,0x80
    3fa5:	0f 84 f5 fd ff ff    	je     3da0 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x60>
    3fab:	b9 80 ff ff ff       	mov    ecx,0xffffff80
    3fb0:	be 01 00 00 00       	mov    esi,0x1
    3fb5:	4c 89 f7             	mov    rdi,r14
    3fb8:	31 c0                	xor    eax,eax
    3fba:	48 8d 15 5f 27 00 00 	lea    rdx,[rip+0x275f]        # 6720 <_IO_stdin_used+0x1720>
    3fc1:	41 83 c4 01          	add    r12d,0x1
    3fc5:	e8 86 d1 ff ff       	call   1150 <__fprintf_chk@plt>
    3fca:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    3fce:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    3fd2:	31 c0                	xor    eax,eax
    3fd4:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    3fd7:	ba 80 ff ff ff       	mov    edx,0xffffff80
    3fdc:	bf 01 00 00 00       	mov    edi,0x1
    3fe1:	48 8d 35 80 27 00 00 	lea    rsi,[rip+0x2780]        # 6768 <_IO_stdin_used+0x1768>
    3fe8:	e8 13 d1 ff ff       	call   1100 <__printf_chk@plt>
    3fed:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    3ff1:	f6 c4 01             	test   ah,0x1
    3ff4:	0f 84 af fd ff ff    	je     3da9 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x69>
    3ffa:	b9 00 ff ff ff       	mov    ecx,0xffffff00
    3fff:	be 01 00 00 00       	mov    esi,0x1
    4004:	4c 89 f7             	mov    rdi,r14
    4007:	31 c0                	xor    eax,eax
    4009:	48 8d 15 98 27 00 00 	lea    rdx,[rip+0x2798]        # 67a8 <_IO_stdin_used+0x17a8>
    4010:	41 83 c4 01          	add    r12d,0x1
    4014:	e8 37 d1 ff ff       	call   1150 <__fprintf_chk@plt>
    4019:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    401d:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    4021:	31 c0                	xor    eax,eax
    4023:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    4026:	ba 00 ff ff ff       	mov    edx,0xffffff00
    402b:	bf 01 00 00 00       	mov    edi,0x1
    4030:	48 8d 35 b9 27 00 00 	lea    rsi,[rip+0x27b9]        # 67f0 <_IO_stdin_used+0x17f0>
    4037:	e8 c4 d0 ff ff       	call   1100 <__printf_chk@plt>
    403c:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    4040:	f6 c4 02             	test   ah,0x2
    4043:	0f 84 69 fd ff ff    	je     3db2 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x72>
    4049:	b9 00 fe ff ff       	mov    ecx,0xfffffe00
    404e:	be 01 00 00 00       	mov    esi,0x1
    4053:	4c 89 f7             	mov    rdi,r14
    4056:	31 c0                	xor    eax,eax
    4058:	48 8d 15 d1 27 00 00 	lea    rdx,[rip+0x27d1]        # 6830 <_IO_stdin_used+0x1830>
    405f:	41 83 c4 01          	add    r12d,0x1
    4063:	e8 e8 d0 ff ff       	call   1150 <__fprintf_chk@plt>
    4068:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    406c:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    4070:	31 c0                	xor    eax,eax
    4072:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    4075:	ba 00 fe ff ff       	mov    edx,0xfffffe00
    407a:	bf 01 00 00 00       	mov    edi,0x1
    407f:	48 8d 35 f2 27 00 00 	lea    rsi,[rip+0x27f2]        # 6878 <_IO_stdin_used+0x1878>
    4086:	e8 75 d0 ff ff       	call   1100 <__printf_chk@plt>
    408b:	41 8b 45 24          	mov    eax,DWORD PTR [r13+0x24]
    408f:	f6 c4 40             	test   ah,0x40
    4092:	0f 84 23 fd ff ff    	je     3dbb <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x7b>
    4098:	b9 00 c0 ff ff       	mov    ecx,0xffffc000
    409d:	be 01 00 00 00       	mov    esi,0x1
    40a2:	4c 89 f7             	mov    rdi,r14
    40a5:	31 c0                	xor    eax,eax
    40a7:	48 8d 15 0a 28 00 00 	lea    rdx,[rip+0x280a]        # 68b8 <_IO_stdin_used+0x18b8>
    40ae:	41 83 c4 01          	add    r12d,0x1
    40b2:	e8 99 d0 ff ff       	call   1150 <__fprintf_chk@plt>
    40b7:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    40bb:	44 8b 4b 10          	mov    r9d,DWORD PTR [rbx+0x10]
    40bf:	31 c0                	xor    eax,eax
    40c1:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    40c4:	ba 00 c0 ff ff       	mov    edx,0xffffc000
    40c9:	bf 01 00 00 00       	mov    edi,0x1
    40ce:	48 8d 35 33 28 00 00 	lea    rsi,[rip+0x2833]        # 6908 <_IO_stdin_used+0x1908>
    40d5:	e8 26 d0 ff ff       	call   1100 <__printf_chk@plt>
    40da:	e9 dc fc ff ff       	jmp    3dbb <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)+0x7b>
    40df:	90                   	nop

00000000000040e0 <listDump(list_t*, dump_t*, char const*)>:
    40e0:	f3 0f 1e fa          	endbr64
    40e4:	55                   	push   rbp
    40e5:	48 89 e5             	mov    rbp,rsp
    40e8:	41 57                	push   r15
    40ea:	41 56                	push   r14
    40ec:	49 89 d6             	mov    r14,rdx
    40ef:	41 55                	push   r13
    40f1:	41 54                	push   r12
    40f3:	49 89 f4             	mov    r12,rsi
    40f6:	53                   	push   rbx
    40f7:	48 89 fb             	mov    rbx,rdi
    40fa:	48 83 ec 58          	sub    rsp,0x58
    40fe:	44 8b 46 28          	mov    r8d,DWORD PTR [rsi+0x28]
    4102:	4c 8b 7e 20          	mov    r15,QWORD PTR [rsi+0x20]
    4106:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    410d:	00 00 
    410f:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    4113:	31 c0                	xor    eax,eax
    4115:	48 8b 7e 18          	mov    rdi,QWORD PTR [rsi+0x18]
    4119:	45 85 c0             	test   r8d,r8d
    411c:	0f 84 de 00 00 00    	je     4200 <listDump(list_t*, dump_t*, char const*)+0x120>
    4122:	48 8d 35 2c 1b 00 00 	lea    rsi,[rip+0x1b2c]        # 5c55 <_IO_stdin_used+0xc55>
    4129:	e8 f2 cf ff ff       	call   1120 <fopen@plt>
    412e:	49 89 c5             	mov    r13,rax
    4131:	4d 85 ed             	test   r13,r13
    4134:	0f 84 cf 01 00 00    	je     4309 <listDump(list_t*, dump_t*, char const*)+0x229>
    413a:	4c 89 e9             	mov    rcx,r13
    413d:	ba 06 00 00 00       	mov    edx,0x6
    4142:	be 01 00 00 00       	mov    esi,0x1
    4147:	48 8d 3d 09 1b 00 00 	lea    rdi,[rip+0x1b09]        # 5c57 <_IO_stdin_used+0xc57>
    414e:	e8 ed cf ff ff       	call   1140 <fwrite@plt>
    4153:	45 8b 4c 24 10       	mov    r9d,DWORD PTR [r12+0x10]
    4158:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
    415c:	31 c0                	xor    eax,eax
    415e:	49 8b 4c 24 08       	mov    rcx,QWORD PTR [r12+0x8]
    4163:	48 8d 15 e6 27 00 00 	lea    rdx,[rip+0x27e6]        # 6950 <_IO_stdin_used+0x1950>
    416a:	be 01 00 00 00       	mov    esi,0x1
    416f:	4c 89 ef             	mov    rdi,r13
    4172:	e8 d9 cf ff ff       	call   1150 <__fprintf_chk@plt>
    4177:	4c 89 f1             	mov    rcx,r14
    417a:	be 01 00 00 00       	mov    esi,0x1
    417f:	4c 89 ef             	mov    rdi,r13
    4182:	48 8d 15 67 19 00 00 	lea    rdx,[rip+0x1967]        # 5af0 <_IO_stdin_used+0xaf0>
    4189:	31 c0                	xor    eax,eax
    418b:	e8 c0 cf ff ff       	call   1150 <__fprintf_chk@plt>
    4190:	8b 43 40             	mov    eax,DWORD PTR [rbx+0x40]
    4193:	48 8b 4b 28          	mov    rcx,QWORD PTR [rbx+0x28]
    4197:	4c 89 ef             	mov    rdi,r13
    419a:	4c 8b 4b 38          	mov    r9,QWORD PTR [rbx+0x38]
    419e:	48 8d 15 eb 27 00 00 	lea    rdx,[rip+0x27eb]        # 6990 <_IO_stdin_used+0x1990>
    41a5:	be 01 00 00 00       	mov    esi,0x1
    41aa:	49 89 d8             	mov    r8,rbx
    41ad:	50                   	push   rax
    41ae:	31 c0                	xor    eax,eax
    41b0:	ff 73 30             	push   QWORD PTR [rbx+0x30]
    41b3:	e8 98 cf ff ff       	call   1150 <__fprintf_chk@plt>
    41b8:	59                   	pop    rcx
    41b9:	4c 89 e2             	mov    rdx,r12
    41bc:	5e                   	pop    rsi
    41bd:	48 89 df             	mov    rdi,rbx
    41c0:	4c 89 ee             	mov    rsi,r13
    41c3:	e8 78 fb ff ff       	call   3d40 <fprintfListErrorsForDump(list_t*, _IO_FILE*, dump_t*)>
    41c8:	f6 43 24 04          	test   BYTE PTR [rbx+0x24],0x4
    41cc:	74 52                	je     4220 <listDump(list_t*, dump_t*, char const*)+0x140>
    41ce:	4c 89 ef             	mov    rdi,r13
    41d1:	e8 9a ce ff ff       	call   1070 <fclose@plt>
    41d6:	85 c0                	test   eax,eax
    41d8:	0f 85 e3 00 00 00    	jne    42c1 <listDump(list_t*, dump_t*, char const*)+0x1e1>
    41de:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    41e2:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    41e9:	00 00 
    41eb:	0f 85 26 01 00 00    	jne    4317 <listDump(list_t*, dump_t*, char const*)+0x237>
    41f1:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    41f5:	5b                   	pop    rbx
    41f6:	41 5c                	pop    r12
    41f8:	41 5d                	pop    r13
    41fa:	41 5e                	pop    r14
    41fc:	41 5f                	pop    r15
    41fe:	5d                   	pop    rbp
    41ff:	c3                   	ret
    4200:	48 8d 35 99 19 00 00 	lea    rsi,[rip+0x1999]        # 5ba0 <_IO_stdin_used+0xba0>
    4207:	e8 14 cf ff ff       	call   1120 <fopen@plt>
    420c:	41 c7 44 24 28 01 00 	mov    DWORD PTR [r12+0x28],0x1
    4213:	00 00 
    4215:	49 89 c5             	mov    r13,rax
    4218:	e9 14 ff ff ff       	jmp    4131 <listDump(list_t*, dump_t*, char const*)+0x51>
    421d:	0f 1f 00             	nop    DWORD PTR [rax]
    4220:	4c 89 ee             	mov    rsi,r13
    4223:	48 89 df             	mov    rdi,rbx
    4226:	4c 8d 75 80          	lea    r14,[rbp-0x80]
    422a:	e8 71 f3 ff ff       	call   35a0 <fprintfListDataForDump(list_t*, _IO_FILE*)>
    422f:	4c 89 fe             	mov    rsi,r15
    4232:	48 89 df             	mov    rdi,rbx
    4235:	83 05 f4 4d 00 00 01 	add    DWORD PTR [rip+0x4df4],0x1        # 9030 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)::graphImageCounter>
    423c:	e8 8f f1 ff ff       	call   33d0 <fprintfLstGraphDump(list_t*, char const*)>
    4241:	48 83 ec 08          	sub    rsp,0x8
    4245:	66 0f ef c0          	pxor   xmm0,xmm0
    4249:	4d 89 f9             	mov    r9,r15
    424c:	8b 05 de 4d 00 00    	mov    eax,DWORD PTR [rip+0x4dde]        # 9030 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)::graphImageCounter>
    4252:	4c 8d 05 8f 20 00 00 	lea    r8,[rip+0x208f]        # 62e8 <_IO_stdin_used+0x12e8>
    4259:	b9 40 00 00 00       	mov    ecx,0x40
    425e:	4c 89 f7             	mov    rdi,r14
    4261:	be 40 00 00 00       	mov    esi,0x40
    4266:	ba 01 00 00 00       	mov    edx,0x1
    426b:	0f 29 45 80          	movaps XMMWORD PTR [rbp-0x80],xmm0
    426f:	50                   	push   rax
    4270:	31 c0                	xor    eax,eax
    4272:	0f 29 45 90          	movaps XMMWORD PTR [rbp-0x70],xmm0
    4276:	0f 29 45 a0          	movaps XMMWORD PTR [rbp-0x60],xmm0
    427a:	0f 29 45 b0          	movaps XMMWORD PTR [rbp-0x50],xmm0
    427e:	e8 ad cd ff ff       	call   1030 <__snprintf_chk@plt>
    4283:	58                   	pop    rax
    4284:	4c 89 f7             	mov    rdi,r14
    4287:	5a                   	pop    rdx
    4288:	e8 03 ce ff ff       	call   1090 <system@plt>
    428d:	8b 0d 9d 4d 00 00    	mov    ecx,DWORD PTR [rip+0x4d9d]        # 9030 <createLstGraphImageForDump(list_t*, _IO_FILE*, char const*)::graphImageCounter>
    4293:	4c 89 ef             	mov    rdi,r13
    4296:	31 c0                	xor    eax,eax
    4298:	4c 69 43 10 96 00 00 	imul   r8,QWORD PTR [rbx+0x10],0x96
    429f:	00 
    42a0:	48 8d 15 69 20 00 00 	lea    rdx,[rip+0x2069]        # 6310 <_IO_stdin_used+0x1310>
    42a7:	be 01 00 00 00       	mov    esi,0x1
    42ac:	e8 9f ce ff ff       	call   1150 <__fprintf_chk@plt>
    42b1:	4c 89 ef             	mov    rdi,r13
    42b4:	e8 b7 cd ff ff       	call   1070 <fclose@plt>
    42b9:	85 c0                	test   eax,eax
    42bb:	0f 84 1d ff ff ff    	je     41de <listDump(list_t*, dump_t*, char const*)+0xfe>
    42c1:	49 8b 4c 24 20       	mov    rcx,QWORD PTR [r12+0x20]
    42c6:	48 8d 15 37 19 00 00 	lea    rdx,[rip+0x1937]        # 5c04 <_IO_stdin_used+0xc04>
    42cd:	48 8b 3d 4c 4d 00 00 	mov    rdi,QWORD PTR [rip+0x4d4c]        # 9020 <stderr@GLIBC_2.2.5>
    42d4:	31 c0                	xor    eax,eax
    42d6:	be 01 00 00 00       	mov    esi,0x1
    42db:	e8 70 ce ff ff       	call   1150 <__fprintf_chk@plt>
    42e0:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    42e4:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    42eb:	00 00 
    42ed:	75 28                	jne    4317 <listDump(list_t*, dump_t*, char const*)+0x237>
    42ef:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    42f3:	48 8d 3d 39 19 00 00 	lea    rdi,[rip+0x1939]        # 5c33 <_IO_stdin_used+0xc33>
    42fa:	5b                   	pop    rbx
    42fb:	41 5c                	pop    r12
    42fd:	41 5d                	pop    r13
    42ff:	41 5e                	pop    r14
    4301:	41 5f                	pop    r15
    4303:	5d                   	pop    rbp
    4304:	e9 27 ce ff ff       	jmp    1130 <perror@plt>
    4309:	49 8b 4c 24 18       	mov    rcx,QWORD PTR [r12+0x18]
    430e:	48 8d 15 8d 18 00 00 	lea    rdx,[rip+0x188d]        # 5ba2 <_IO_stdin_used+0xba2>
    4315:	eb b6                	jmp    42cd <listDump(list_t*, dump_t*, char const*)+0x1ed>
    4317:	e8 64 cd ff ff       	call   1080 <__stack_chk_fail@plt>
    431c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000004320 <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)>:
    4320:	f3 0f 1e fa          	endbr64
    4324:	55                   	push   rbp
    4325:	48 89 e5             	mov    rbp,rsp
    4328:	41 57                	push   r15
    432a:	4d 89 c7             	mov    r15,r8
    432d:	41 56                	push   r14
    432f:	49 89 ce             	mov    r14,rcx
    4332:	41 55                	push   r13
    4334:	49 89 d5             	mov    r13,rdx
    4337:	41 54                	push   r12
    4339:	4c 63 e6             	movsxd r12,esi
    433c:	53                   	push   rbx
    433d:	48 89 fb             	mov    rbx,rdi
    4340:	48 83 ec 18          	sub    rsp,0x18
    4344:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
    4348:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    434b:	48 85 c0             	test   rax,rax
    434e:	74 60                	je     43b0 <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x90>
    4350:	48 63 d0             	movsxd rdx,eax
    4353:	4b 8d 0c a4          	lea    rcx,[r12+r12*4]
    4357:	41 89 c0             	mov    r8d,eax
    435a:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    435e:	48 8d 0c cf          	lea    rcx,[rdi+rcx*8]
    4362:	48 8d 14 d7          	lea    rdx,[rdi+rdx*8]
    4366:	44 89 62 04          	mov    DWORD PTR [rdx+0x4],r12d
    436a:	44 8b 09             	mov    r9d,DWORD PTR [rcx]
    436d:	48 63 32             	movsxd rsi,DWORD PTR [rdx]
    4370:	48 c7 42 18 01 00 00 	mov    QWORD PTR [rdx+0x18],0x1
    4377:	00 
    4378:	4c 89 6a 08          	mov    QWORD PTR [rdx+0x8],r13
    437c:	4c 89 72 10          	mov    QWORD PTR [rdx+0x10],r14
    4380:	4c 89 7a 20          	mov    QWORD PTR [rdx+0x20],r15
    4384:	44 89 0a             	mov    DWORD PTR [rdx],r9d
    4387:	89 01                	mov    DWORD PTR [rcx],eax
    4389:	48 63 12             	movsxd rdx,DWORD PTR [rdx]
    438c:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    4390:	89 44 d7 04          	mov    DWORD PTR [rdi+rdx*8+0x4],eax
    4394:	48 83 43 18 01       	add    QWORD PTR [rbx+0x18],0x1
    4399:	48 89 73 08          	mov    QWORD PTR [rbx+0x8],rsi
    439d:	48 83 c4 18          	add    rsp,0x18
    43a1:	44 89 c0             	mov    eax,r8d
    43a4:	5b                   	pop    rbx
    43a5:	41 5c                	pop    r12
    43a7:	41 5d                	pop    r13
    43a9:	41 5e                	pop    r14
    43ab:	41 5f                	pop    r15
    43ad:	5d                   	pop    rbp
    43ae:	c3                   	ret
    43af:	90                   	nop
    43b0:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    43b4:	4c 8d 04 00          	lea    r8,[rax+rax*1]
    43b8:	48 8d 34 80          	lea    rsi,[rax+rax*4]
    43bc:	4c 89 43 10          	mov    QWORD PTR [rbx+0x10],r8
    43c0:	48 c1 e6 04          	shl    rsi,0x4
    43c4:	4c 89 45 c8          	mov    QWORD PTR [rbp-0x38],r8
    43c8:	e8 23 cd ff ff       	call   10f0 <realloc@plt>
    43cd:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
    43d1:	48 85 c0             	test   rax,rax
    43d4:	48 89 c7             	mov    rdi,rax
    43d7:	74 68                	je     4441 <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x121>
    43d9:	48 8b 53 10          	mov    rdx,QWORD PTR [rbx+0x10]
    43dd:	48 89 03             	mov    QWORD PTR [rbx],rax
    43e0:	48 89 d0             	mov    rax,rdx
    43e3:	48 d1 e8             	shr    rax,1
    43e6:	48 39 c2             	cmp    rdx,rax
    43e9:	76 45                	jbe    4430 <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x110>
    43eb:	48 8d 14 80          	lea    rdx,[rax+rax*4]
    43ef:	66 0f 6f 05 39 26 00 	movdqa xmm0,XMMWORD PTR [rip+0x2639]        # 6a30 <_IO_stdin_used+0x1a30>
    43f6:	00 
    43f7:	48 8d 14 d7          	lea    rdx,[rdi+rdx*8]
    43fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    4400:	8d 48 01             	lea    ecx,[rax+0x1]
    4403:	0f 11 42 10          	movups XMMWORD PTR [rdx+0x10],xmm0
    4407:	48 83 c0 01          	add    rax,0x1
    440b:	48 83 c2 28          	add    rdx,0x28
    440f:	89 4a d8             	mov    DWORD PTR [rdx-0x28],ecx
    4412:	48 8b 4b 10          	mov    rcx,QWORD PTR [rbx+0x10]
    4416:	48 c7 42 e0 00 00 00 	mov    QWORD PTR [rdx-0x20],0x0
    441d:	00 
    441e:	c7 42 dc ff ff ff ff 	mov    DWORD PTR [rdx-0x24],0xffffffff
    4425:	48 39 c8             	cmp    rax,rcx
    4428:	72 d6                	jb     4400 <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0xe0>
    442a:	48 89 c8             	mov    rax,rcx
    442d:	48 d1 e8             	shr    rax,1
    4430:	4b 8d 54 80 fb       	lea    rdx,[r8+r8*4-0x5]
    4435:	c7 04 d7 00 00 00 00 	mov    DWORD PTR [rdi+rdx*8],0x0
    443c:	e9 0f ff ff ff       	jmp    4350 <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x30>
    4441:	48 8d 3d 98 18 00 00 	lea    rdi,[rip+0x1898]        # 5ce0 <_IO_stdin_used+0xce0>
    4448:	e8 03 cc ff ff       	call   1050 <puts@plt>
    444d:	41 b8 00 e0 ff ff    	mov    r8d,0xffffe000
    4453:	e9 45 ff ff ff       	jmp    439d <insertAfter(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x7d>
    4458:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    445f:	00 

0000000000004460 <findBadNodeCycle(list_t*)>:
    4460:	f3 0f 1e fa          	endbr64
    4464:	48 8b 77 10          	mov    rsi,QWORD PTR [rdi+0x10]
    4468:	49 89 f1             	mov    r9,rsi
    446b:	4d 01 c9             	add    r9,r9
    446e:	74 69                	je     44d9 <findBadNodeCycle(list_t*)+0x79>
    4470:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
    4473:	31 c0                	xor    eax,eax
    4475:	31 d2                	xor    edx,edx
    4477:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    447e:	00 00 
    4480:	48 8d 04 80          	lea    rax,[rax+rax*4]
    4484:	49 63 04 c0          	movsxd rax,DWORD PTR [r8+rax*8]
    4488:	85 c0                	test   eax,eax
    448a:	74 14                	je     44a0 <findBadNodeCycle(list_t*)+0x40>
    448c:	48 83 c2 01          	add    rdx,0x1
    4490:	4c 39 ca             	cmp    rdx,r9
    4493:	74 0b                	je     44a0 <findBadNodeCycle(list_t*)+0x40>
    4495:	48 39 f0             	cmp    rax,rsi
    4498:	76 e6                	jbe    4480 <findBadNodeCycle(list_t*)+0x20>
    449a:	b8 00 fe ff ff       	mov    eax,0xfffffe00
    449f:	c3                   	ret
    44a0:	48 39 57 18          	cmp    QWORD PTR [rdi+0x18],rdx
    44a4:	75 f4                	jne    449a <findBadNodeCycle(list_t*)+0x3a>
    44a6:	31 c0                	xor    eax,eax
    44a8:	31 c9                	xor    ecx,ecx
    44aa:	eb 12                	jmp    44be <findBadNodeCycle(list_t*)+0x5e>
    44ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    44b0:	48 83 c1 01          	add    rcx,0x1
    44b4:	4c 39 c9             	cmp    rcx,r9
    44b7:	74 12                	je     44cb <findBadNodeCycle(list_t*)+0x6b>
    44b9:	48 39 f0             	cmp    rax,rsi
    44bc:	77 dc                	ja     449a <findBadNodeCycle(list_t*)+0x3a>
    44be:	48 8d 04 80          	lea    rax,[rax+rax*4]
    44c2:	49 63 44 c0 04       	movsxd rax,DWORD PTR [r8+rax*8+0x4]
    44c7:	85 c0                	test   eax,eax
    44c9:	75 e5                	jne    44b0 <findBadNodeCycle(list_t*)+0x50>
    44cb:	31 c0                	xor    eax,eax
    44cd:	48 39 d1             	cmp    rcx,rdx
    44d0:	ba 00 fe ff ff       	mov    edx,0xfffffe00
    44d5:	0f 45 c2             	cmovne eax,edx
    44d8:	c3                   	ret
    44d9:	48 8b 47 18          	mov    rax,QWORD PTR [rdi+0x18]
    44dd:	48 f7 d8             	neg    rax
    44e0:	19 c0                	sbb    eax,eax
    44e2:	25 00 fe ff ff       	and    eax,0xfffffe00
    44e7:	c3                   	ret
    44e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    44ef:	00 

00000000000044f0 <findBadAnchorElemNum(list_t*, unsigned long, dump_t*)>:
    44f0:	f3 0f 1e fa          	endbr64
    44f4:	48 39 77 10          	cmp    QWORD PTR [rdi+0x10],rsi
    44f8:	72 16                	jb     4510 <findBadAnchorElemNum(list_t*, unsigned long, dump_t*)+0x20>
    44fa:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
    44fd:	48 8d 04 b6          	lea    rax,[rsi+rsi*4]
    4501:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
    4505:	83 78 04 ff          	cmp    DWORD PTR [rax+0x4],0xffffffff
    4509:	74 05                	je     4510 <findBadAnchorElemNum(list_t*, unsigned long, dump_t*)+0x20>
    450b:	31 c0                	xor    eax,eax
    450d:	c3                   	ret
    450e:	66 90                	xchg   ax,ax
    4510:	55                   	push   rbp
    4511:	4c 8b 4a 08          	mov    r9,QWORD PTR [rdx+0x8]
    4515:	48 8d 35 9c 24 00 00 	lea    rsi,[rip+0x249c]        # 69b8 <_IO_stdin_used+0x19b8>
    451c:	31 c0                	xor    eax,eax
    451e:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
    4522:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
    4525:	bf 01 00 00 00       	mov    edi,0x1
    452a:	4c 89 ca             	mov    rdx,r9
    452d:	48 89 e5             	mov    rbp,rsp
    4530:	e8 cb cb ff ff       	call   1100 <__printf_chk@plt>
    4535:	b8 00 f8 ff ff       	mov    eax,0xfffff800
    453a:	5d                   	pop    rbp
    453b:	c3                   	ret
    453c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000004540 <findBadDeleteNum(list_t*, unsigned long, dump_t*)>:
    4540:	f3 0f 1e fa          	endbr64
    4544:	48 39 77 10          	cmp    QWORD PTR [rdi+0x10],rsi
    4548:	72 1e                	jb     4568 <findBadDeleteNum(list_t*, unsigned long, dump_t*)+0x28>
    454a:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
    454d:	48 8d 04 b6          	lea    rax,[rsi+rsi*4]
    4551:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
    4555:	83 78 04 ff          	cmp    DWORD PTR [rax+0x4],0xffffffff
    4559:	74 0d                	je     4568 <findBadDeleteNum(list_t*, unsigned long, dump_t*)+0x28>
    455b:	48 85 f6             	test   rsi,rsi
    455e:	74 08                	je     4568 <findBadDeleteNum(list_t*, unsigned long, dump_t*)+0x28>
    4560:	31 c0                	xor    eax,eax
    4562:	c3                   	ret
    4563:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    4568:	55                   	push   rbp
    4569:	4c 8b 4a 08          	mov    r9,QWORD PTR [rdx+0x8]
    456d:	48 8d 35 7c 24 00 00 	lea    rsi,[rip+0x247c]        # 69f0 <_IO_stdin_used+0x19f0>
    4574:	31 c0                	xor    eax,eax
    4576:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
    457a:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
    457d:	bf 01 00 00 00       	mov    edi,0x1
    4582:	4c 89 ca             	mov    rdx,r9
    4585:	48 89 e5             	mov    rbp,rsp
    4588:	e8 73 cb ff ff       	call   1100 <__printf_chk@plt>
    458d:	b8 00 f0 ff ff       	mov    eax,0xfffff000
    4592:	5d                   	pop    rbp
    4593:	c3                   	ret
    4594:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    459b:	00 00 00 00 
    459f:	90                   	nop

00000000000045a0 <insertBefore(list_t*, int, char*, unsigned long, unsigned long, dump_t*)>:
    45a0:	f3 0f 1e fa          	endbr64
    45a4:	55                   	push   rbp
    45a5:	48 89 e5             	mov    rbp,rsp
    45a8:	41 57                	push   r15
    45aa:	4d 89 c7             	mov    r15,r8
    45ad:	41 56                	push   r14
    45af:	49 89 ce             	mov    r14,rcx
    45b2:	41 55                	push   r13
    45b4:	49 89 d5             	mov    r13,rdx
    45b7:	41 54                	push   r12
    45b9:	4c 63 e6             	movsxd r12,esi
    45bc:	53                   	push   rbx
    45bd:	48 89 fb             	mov    rbx,rdi
    45c0:	48 83 ec 18          	sub    rsp,0x18
    45c4:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
    45c8:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    45cb:	48 85 c0             	test   rax,rax
    45ce:	74 68                	je     4638 <insertBefore(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x98>
    45d0:	48 63 d0             	movsxd rdx,eax
    45d3:	4b 8d 34 a4          	lea    rsi,[r12+r12*4]
    45d7:	41 89 c0             	mov    r8d,eax
    45da:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    45de:	48 8d 34 f7          	lea    rsi,[rdi+rsi*8]
    45e2:	48 8d 14 d7          	lea    rdx,[rdi+rdx*8]
    45e6:	48 63 0a             	movsxd rcx,DWORD PTR [rdx]
    45e9:	44 89 22             	mov    DWORD PTR [rdx],r12d
    45ec:	44 8b 4e 04          	mov    r9d,DWORD PTR [rsi+0x4]
    45f0:	48 c7 42 18 01 00 00 	mov    QWORD PTR [rdx+0x18],0x1
    45f7:	00 
    45f8:	4c 89 6a 08          	mov    QWORD PTR [rdx+0x8],r13
    45fc:	4c 89 72 10          	mov    QWORD PTR [rdx+0x10],r14
    4600:	4c 89 7a 20          	mov    QWORD PTR [rdx+0x20],r15
    4604:	44 89 4a 04          	mov    DWORD PTR [rdx+0x4],r9d
    4608:	89 46 04             	mov    DWORD PTR [rsi+0x4],eax
    460b:	48 63 52 04          	movsxd rdx,DWORD PTR [rdx+0x4]
    460f:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    4613:	89 04 d7             	mov    DWORD PTR [rdi+rdx*8],eax
    4616:	48 83 43 18 01       	add    QWORD PTR [rbx+0x18],0x1
    461b:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    461f:	48 83 c4 18          	add    rsp,0x18
    4623:	44 89 c0             	mov    eax,r8d
    4626:	5b                   	pop    rbx
    4627:	41 5c                	pop    r12
    4629:	41 5d                	pop    r13
    462b:	41 5e                	pop    r14
    462d:	41 5f                	pop    r15
    462f:	5d                   	pop    rbp
    4630:	c3                   	ret
    4631:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    4638:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    463c:	4c 8d 04 00          	lea    r8,[rax+rax*1]
    4640:	48 8d 34 80          	lea    rsi,[rax+rax*4]
    4644:	4c 89 43 10          	mov    QWORD PTR [rbx+0x10],r8
    4648:	48 c1 e6 04          	shl    rsi,0x4
    464c:	4c 89 45 c8          	mov    QWORD PTR [rbp-0x38],r8
    4650:	e8 9b ca ff ff       	call   10f0 <realloc@plt>
    4655:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
    4659:	48 85 c0             	test   rax,rax
    465c:	48 89 c7             	mov    rdi,rax
    465f:	74 68                	je     46c9 <insertBefore(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x129>
    4661:	48 8b 53 10          	mov    rdx,QWORD PTR [rbx+0x10]
    4665:	48 89 03             	mov    QWORD PTR [rbx],rax
    4668:	48 89 d0             	mov    rax,rdx
    466b:	48 d1 e8             	shr    rax,1
    466e:	48 39 c2             	cmp    rdx,rax
    4671:	76 45                	jbe    46b8 <insertBefore(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x118>
    4673:	48 8d 14 80          	lea    rdx,[rax+rax*4]
    4677:	66 0f 6f 05 b1 23 00 	movdqa xmm0,XMMWORD PTR [rip+0x23b1]        # 6a30 <_IO_stdin_used+0x1a30>
    467e:	00 
    467f:	48 8d 14 d7          	lea    rdx,[rdi+rdx*8]
    4683:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    4688:	8d 48 01             	lea    ecx,[rax+0x1]
    468b:	0f 11 42 10          	movups XMMWORD PTR [rdx+0x10],xmm0
    468f:	48 83 c0 01          	add    rax,0x1
    4693:	48 83 c2 28          	add    rdx,0x28
    4697:	89 4a d8             	mov    DWORD PTR [rdx-0x28],ecx
    469a:	48 8b 4b 10          	mov    rcx,QWORD PTR [rbx+0x10]
    469e:	48 c7 42 e0 00 00 00 	mov    QWORD PTR [rdx-0x20],0x0
    46a5:	00 
    46a6:	c7 42 dc ff ff ff ff 	mov    DWORD PTR [rdx-0x24],0xffffffff
    46ad:	48 39 c8             	cmp    rax,rcx
    46b0:	72 d6                	jb     4688 <insertBefore(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0xe8>
    46b2:	48 89 c8             	mov    rax,rcx
    46b5:	48 d1 e8             	shr    rax,1
    46b8:	4b 8d 54 80 fb       	lea    rdx,[r8+r8*4-0x5]
    46bd:	c7 04 d7 00 00 00 00 	mov    DWORD PTR [rdi+rdx*8],0x0
    46c4:	e9 07 ff ff ff       	jmp    45d0 <insertBefore(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x30>
    46c9:	48 8d 3d 10 16 00 00 	lea    rdi,[rip+0x1610]        # 5ce0 <_IO_stdin_used+0xce0>
    46d0:	e8 7b c9 ff ff       	call   1050 <puts@plt>
    46d5:	41 b8 00 e0 ff ff    	mov    r8d,0xffffe000
    46db:	e9 3f ff ff ff       	jmp    461f <insertBefore(list_t*, int, char*, unsigned long, unsigned long, dump_t*)+0x7f>

00000000000046e0 <findFreeListCycle(list_t*)>:
    46e0:	f3 0f 1e fa          	endbr64
    46e4:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
    46e8:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
    46ec:	48 85 c0             	test   rax,rax
    46ef:	75 17                	jne    4708 <findFreeListCycle(list_t*)+0x28>
    46f1:	48 83 e9 01          	sub    rcx,0x1
    46f5:	ba 00 c0 ff ff       	mov    edx,0xffffc000
    46fa:	48 39 4f 18          	cmp    QWORD PTR [rdi+0x18],rcx
    46fe:	0f 45 c2             	cmovne eax,edx
    4701:	c3                   	ret
    4702:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    4708:	48 89 ce             	mov    rsi,rcx
    470b:	31 d2                	xor    edx,edx
    470d:	48 01 f6             	add    rsi,rsi
    4710:	75 21                	jne    4733 <findFreeListCycle(list_t*)+0x53>
    4712:	31 c0                	xor    eax,eax
    4714:	c3                   	ret
    4715:	0f 1f 00             	nop    DWORD PTR [rax]
    4718:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
    471b:	48 8d 04 80          	lea    rax,[rax+rax*4]
    471f:	49 8d 04 c0          	lea    rax,[r8+rax*8]
    4723:	48 63 00             	movsxd rax,DWORD PTR [rax]
    4726:	85 c0                	test   eax,eax
    4728:	74 16                	je     4740 <findFreeListCycle(list_t*)+0x60>
    472a:	48 83 c2 01          	add    rdx,0x1
    472e:	48 39 d6             	cmp    rsi,rdx
    4731:	74 0d                	je     4740 <findFreeListCycle(list_t*)+0x60>
    4733:	48 39 c1             	cmp    rcx,rax
    4736:	73 e0                	jae    4718 <findFreeListCycle(list_t*)+0x38>
    4738:	b8 00 c0 ff ff       	mov    eax,0xffffc000
    473d:	c3                   	ret
    473e:	66 90                	xchg   ax,ax
    4740:	48 2b 4f 18          	sub    rcx,QWORD PTR [rdi+0x18]
    4744:	48 39 d1             	cmp    rcx,rdx
    4747:	19 c0                	sbb    eax,eax
    4749:	25 00 c0 ff ff       	and    eax,0xffffc000
    474e:	c3                   	ret
    474f:	90                   	nop

0000000000004750 <listDtor(list_t*)>:
    4750:	f3 0f 1e fa          	endbr64
    4754:	55                   	push   rbp
    4755:	48 89 e5             	mov    rbp,rsp
    4758:	53                   	push   rbx
    4759:	48 89 fb             	mov    rbx,rdi
    475c:	48 83 ec 08          	sub    rsp,0x8
    4760:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    4763:	e8 d8 c8 ff ff       	call   1040 <free@plt>
    4768:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
    476f:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    4773:	c9                   	leave
    4774:	c3                   	ret
    4775:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    477c:	00 00 00 00 

0000000000004780 <makeListLinear(list_t*, dump_t*)>:
    4780:	f3 0f 1e fa          	endbr64
    4784:	55                   	push   rbp
    4785:	ba 01 00 00 00       	mov    edx,0x1
    478a:	48 89 e5             	mov    rbp,rsp
    478d:	53                   	push   rbx
    478e:	48 89 fb             	mov    rbx,rdi
    4791:	48 83 ec 08          	sub    rsp,0x8
    4795:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    4798:	48 63 07             	movsxd rax,DWORD PTR [rdi]
    479b:	48 89 f9             	mov    rcx,rdi
    479e:	85 c0                	test   eax,eax
    47a0:	74 1a                	je     47bc <makeListLinear(list_t*, dump_t*)+0x3c>
    47a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    47a8:	48 8d 04 80          	lea    rax,[rax+rax*4]
    47ac:	89 11                	mov    DWORD PTR [rcx],edx
    47ae:	83 c2 01             	add    edx,0x1
    47b1:	48 8d 0c c7          	lea    rcx,[rdi+rax*8]
    47b5:	48 63 01             	movsxd rax,DWORD PTR [rcx]
    47b8:	85 c0                	test   eax,eax
    47ba:	75 ec                	jne    47a8 <makeListLinear(list_t*, dump_t*)+0x28>
    47bc:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    47c0:	48 83 c7 28          	add    rdi,0x28
    47c4:	ba 28 00 00 00       	mov    edx,0x28
    47c9:	48 8d 0d d0 e5 ff ff 	lea    rcx,[rip+0xffffffffffffe5d0]        # 2da0 <linearOrderNodeComparator(void const*, void const*)>
    47d0:	48 8d 70 ff          	lea    rsi,[rax-0x1]
    47d4:	e8 87 c8 ff ff       	call   1060 <qsort@plt>
    47d9:	4c 8b 13             	mov    r10,QWORD PTR [rbx]
    47dc:	48 8b 7b 18          	mov    rdi,QWORD PTR [rbx+0x18]
    47e0:	31 c0                	xor    eax,eax
    47e2:	41 89 7a 04          	mov    DWORD PTR [r10+0x4],edi
    47e6:	49 8d 52 2c          	lea    rdx,[r10+0x2c]
    47ea:	48 85 ff             	test   rdi,rdi
    47ed:	74 10                	je     47ff <makeListLinear(list_t*, dump_t*)+0x7f>
    47ef:	90                   	nop
    47f0:	89 02                	mov    DWORD PTR [rdx],eax
    47f2:	48 83 c0 01          	add    rax,0x1
    47f6:	48 83 c2 28          	add    rdx,0x28
    47fa:	48 39 c7             	cmp    rdi,rax
    47fd:	75 f1                	jne    47f0 <makeListLinear(list_t*, dump_t*)+0x70>
    47ff:	48 83 7b 08 00       	cmp    QWORD PTR [rbx+0x8],0x0
    4804:	74 4c                	je     4852 <makeListLinear(list_t*, dump_t*)+0xd2>
    4806:	48 8d 47 01          	lea    rax,[rdi+0x1]
    480a:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
    480e:	48 8d 04 80          	lea    rax,[rax+rax*4]
    4812:	48 c1 e0 03          	shl    rax,0x3
    4816:	4d 8d 04 02          	lea    r8,[r10+rax*1]
    481a:	41 8b 30             	mov    esi,DWORD PTR [r8]
    481d:	85 f6                	test   esi,esi
    481f:	74 31                	je     4852 <makeListLinear(list_t*, dump_t*)+0xd2>
    4821:	4d 8d 4c 02 d8       	lea    r9,[r10+rax*1-0x28]
    4826:	48 8d 57 02          	lea    rdx,[rdi+0x2]
    482a:	31 c0                	xor    eax,eax
    482c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    4830:	41 89 14 00          	mov    DWORD PTR [r8+rax*1],edx
    4834:	41 8b 4c 01 50       	mov    ecx,DWORD PTR [r9+rax*1+0x50]
    4839:	85 c9                	test   ecx,ecx
    483b:	40 0f 95 c6          	setne  sil
    483f:	48 85 d2             	test   rdx,rdx
    4842:	0f 95 c1             	setne  cl
    4845:	48 83 c2 01          	add    rdx,0x1
    4849:	48 83 c0 28          	add    rax,0x28
    484d:	40 84 ce             	test   sil,cl
    4850:	75 de                	jne    4830 <makeListLinear(list_t*, dump_t*)+0xb0>
    4852:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    4856:	48 d1 e8             	shr    rax,1
    4859:	48 39 c7             	cmp    rdi,rax
    485c:	72 12                	jb     4870 <makeListLinear(list_t*, dump_t*)+0xf0>
    485e:	c7 43 20 01 00 00 00 	mov    DWORD PTR [rbx+0x20],0x1
    4865:	31 c0                	xor    eax,eax
    4867:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    486b:	c9                   	leave
    486c:	c3                   	ret
    486d:	0f 1f 00             	nop    DWORD PTR [rax]
    4870:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    4874:	48 8d 34 80          	lea    rsi,[rax+rax*4]
    4878:	4c 89 d7             	mov    rdi,r10
    487b:	48 c1 e6 03          	shl    rsi,0x3
    487f:	e8 6c c8 ff ff       	call   10f0 <realloc@plt>
    4884:	48 85 c0             	test   rax,rax
    4887:	74 26                	je     48af <makeListLinear(list_t*, dump_t*)+0x12f>
    4889:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
    488d:	48 89 03             	mov    QWORD PTR [rbx],rax
    4890:	48 8d 56 ff          	lea    rdx,[rsi-0x1]
    4894:	48 8d 0c 92          	lea    rcx,[rdx+rdx*4]
    4898:	c7 04 c8 00 00 00 00 	mov    DWORD PTR [rax+rcx*8],0x0
    489f:	48 3b 53 18          	cmp    rdx,QWORD PTR [rbx+0x18]
    48a3:	75 b9                	jne    485e <makeListLinear(list_t*, dump_t*)+0xde>
    48a5:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
    48ac:	00 
    48ad:	eb af                	jmp    485e <makeListLinear(list_t*, dump_t*)+0xde>
    48af:	48 8d 3d 2a 14 00 00 	lea    rdi,[rip+0x142a]        # 5ce0 <_IO_stdin_used+0xce0>
    48b6:	e8 95 c7 ff ff       	call   1050 <puts@plt>
    48bb:	b8 00 e0 ff ff       	mov    eax,0xffffe000
    48c0:	eb a5                	jmp    4867 <makeListLinear(list_t*, dump_t*)+0xe7>
    48c2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    48c9:	00 00 00 00 
    48cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000048d0 <reallocListDown(list_t*)>:
    48d0:	f3 0f 1e fa          	endbr64
    48d4:	55                   	push   rbp
    48d5:	48 89 e5             	mov    rbp,rsp
    48d8:	53                   	push   rbx
    48d9:	48 89 fb             	mov    rbx,rdi
    48dc:	48 83 ec 08          	sub    rsp,0x8
    48e0:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
    48e4:	48 d1 e8             	shr    rax,1
    48e7:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
    48eb:	48 8d 34 80          	lea    rsi,[rax+rax*4]
    48ef:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    48f2:	48 c1 e6 03          	shl    rsi,0x3
    48f6:	e8 f5 c7 ff ff       	call   10f0 <realloc@plt>
    48fb:	48 85 c0             	test   rax,rax
    48fe:	74 2c                	je     492c <reallocListDown(list_t*)+0x5c>
    4900:	48 8b 4b 10          	mov    rcx,QWORD PTR [rbx+0x10]
    4904:	48 89 03             	mov    QWORD PTR [rbx],rax
    4907:	48 8d 51 ff          	lea    rdx,[rcx-0x1]
    490b:	48 8d 0c 92          	lea    rcx,[rdx+rdx*4]
    490f:	c7 04 c8 00 00 00 00 	mov    DWORD PTR [rax+rcx*8],0x0
    4916:	31 c0                	xor    eax,eax
    4918:	48 3b 53 18          	cmp    rdx,QWORD PTR [rbx+0x18]
    491c:	75 08                	jne    4926 <reallocListDown(list_t*)+0x56>
    491e:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
    4925:	00 
    4926:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    492a:	c9                   	leave
    492b:	c3                   	ret
    492c:	48 8d 3d ad 13 00 00 	lea    rdi,[rip+0x13ad]        # 5ce0 <_IO_stdin_used+0xce0>
    4933:	e8 18 c7 ff ff       	call   1050 <puts@plt>
    4938:	b8 00 e0 ff ff       	mov    eax,0xffffe000
    493d:	eb e7                	jmp    4926 <reallocListDown(list_t*)+0x56>
    493f:	90                   	nop

0000000000004940 <findNonlinearList(list_t*)>:
    4940:	f3 0f 1e fa          	endbr64
    4944:	8b 77 18             	mov    esi,DWORD PTR [rdi+0x18]
    4947:	31 d2                	xor    edx,edx
    4949:	31 c0                	xor    eax,eax
    494b:	eb 14                	jmp    4961 <findNonlinearList(list_t*)+0x21>
    494d:	0f 1f 00             	nop    DWORD PTR [rax]
    4950:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
    4953:	83 c0 01             	add    eax,0x1
    4956:	8b 0c 11             	mov    ecx,DWORD PTR [rcx+rdx*1]
    4959:	48 83 c2 28          	add    rdx,0x28
    495d:	39 c1                	cmp    ecx,eax
    495f:	75 0f                	jne    4970 <findNonlinearList(list_t*)+0x30>
    4961:	39 c6                	cmp    esi,eax
    4963:	7f eb                	jg     4950 <findNonlinearList(list_t*)+0x10>
    4965:	31 c0                	xor    eax,eax
    4967:	c3                   	ret
    4968:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    496f:	00 
    4970:	b8 01 00 00 00       	mov    eax,0x1
    4975:	c3                   	ret
    4976:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    497d:	00 00 00 

0000000000004980 <findWordInList_asm>:
    4980:	4c 8b 0f             	mov    r9,QWORD PTR [rdi]
    4983:	48 31 c9             	xor    rcx,rcx
    4986:	41 8b 09             	mov    ecx,DWORD PTR [r9]
    4989:	85 c9                	test   ecx,ecx
    498b:	74 15                	je     49a2 <findWordInList_asm.notFound>

000000000000498d <findWordInList_asm.loopStart>:
    498d:	4c 8d 04 89          	lea    r8,[rcx+rcx*4]
    4991:	4f 8d 14 c1          	lea    r10,[r9+r8*8]
    4995:	49 3b 52 20          	cmp    rdx,QWORD PTR [r10+0x20]
    4999:	74 0f                	je     49aa <findWordInList_asm.cmpString>

000000000000499b <findWordInList_asm.nextNode>:
    499b:	41 8b 0a             	mov    ecx,DWORD PTR [r10]
    499e:	85 c9                	test   ecx,ecx
    49a0:	75 eb                	jne    498d <findWordInList_asm.loopStart>

00000000000049a2 <findWordInList_asm.notFound>:
    49a2:	48 c7 c0 26 f1 ff ff 	mov    rax,0xfffffffffffff126
    49a9:	c3                   	ret

00000000000049aa <findWordInList_asm.cmpString>:
    49aa:	49 89 f0             	mov    r8,rsi
    49ad:	4d 8b 5a 08          	mov    r11,QWORD PTR [r10+0x8]
    49b1:	c5 e5 ef db          	vpxor  ymm3,ymm3,ymm3
    49b5:	c4 c1 7e 6f 00       	vmovdqu ymm0,YMMWORD PTR [r8]
    49ba:	c4 c1 7e 6f 0b       	vmovdqu ymm1,YMMWORD PTR [r11]
    49bf:	c5 fd 74 d1          	vpcmpeqb ymm2,ymm0,ymm1
    49c3:	c5 fd d7 c2          	vpmovmskb eax,ymm2
    49c7:	c5 fd 74 e3          	vpcmpeqb ymm4,ymm0,ymm3
    49cb:	c5 7d d7 c4          	vpmovmskb r8d,ymm4
    49cf:	f7 d0                	not    eax
    49d1:	f3 0f bc c0          	tzcnt  eax,eax
    49d5:	f3 45 0f bc c0       	tzcnt  r8d,r8d
    49da:	44 39 c0             	cmp    eax,r8d
    49dd:	73 05                	jae    49e4 <findWordInList_asm.found>
    49df:	c5 f8 77             	vzeroupper
    49e2:	eb b7                	jmp    499b <findWordInList_asm.nextNode>

00000000000049e4 <findWordInList_asm.found>:
    49e4:	c5 f8 77             	vzeroupper
    49e7:	48 89 c8             	mov    rax,rcx
    49ea:	c3                   	ret

Disassembly of section .fini:

00000000000049ec <_fini>:
    49ec:	f3 0f 1e fa          	endbr64
    49f0:	48 83 ec 08          	sub    rsp,0x8
    49f4:	48 83 c4 08          	add    rsp,0x8
    49f8:	c3                   	ret
