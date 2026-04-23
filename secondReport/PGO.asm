
./allBuildVersions/programPGO:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd1]        # 3fe0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 2a 2f 00 00    	push   QWORD PTR [rip+0x2f2a]        # 3f50 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 2c 2f 00 00    	jmp    QWORD PTR [rip+0x2f2c]        # 3f58 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <free@plt>:
    1030:	ff 25 2a 2f 00 00    	jmp    QWORD PTR [rip+0x2f2a]        # 3f60 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <puts@plt>:
    1040:	ff 25 22 2f 00 00    	jmp    QWORD PTR [rip+0x2f22]        # 3f68 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 1a 2f 00 00    	jmp    QWORD PTR [rip+0x2f1a]        # 3f70 <__stack_chk_fail@GLIBC_2.4>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <close@plt>:
    1060:	ff 25 12 2f 00 00    	jmp    QWORD PTR [rip+0x2f12]        # 3f78 <close@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <isspace@plt>:
    1070:	ff 25 0a 2f 00 00    	jmp    QWORD PTR [rip+0x2f0a]        # 3f80 <isspace@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <read@plt>:
    1080:	ff 25 02 2f 00 00    	jmp    QWORD PTR [rip+0x2f02]        # 3f88 <read@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <calloc@plt>:
    1090:	ff 25 fa 2e 00 00    	jmp    QWORD PTR [rip+0x2efa]        # 3f90 <calloc@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <realloc@plt>:
    10a0:	ff 25 f2 2e 00 00    	jmp    QWORD PTR [rip+0x2ef2]        # 3f98 <realloc@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <__printf_chk@plt>:
    10b0:	ff 25 ea 2e 00 00    	jmp    QWORD PTR [rip+0x2eea]        # 3fa0 <__printf_chk@GLIBC_2.3.4>
    10b6:	68 08 00 00 00       	push   0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <open@plt>:
    10c0:	ff 25 e2 2e 00 00    	jmp    QWORD PTR [rip+0x2ee2]        # 3fa8 <open@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <perror@plt>:
    10d0:	ff 25 da 2e 00 00    	jmp    QWORD PTR [rip+0x2eda]        # 3fb0 <perror@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <__fprintf_chk@plt>:
    10e0:	ff 25 d2 2e 00 00    	jmp    QWORD PTR [rip+0x2ed2]        # 3fb8 <__fprintf_chk@GLIBC_2.3.4>
    10e6:	68 0b 00 00 00       	push   0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <fstat@plt>:
    10f0:	ff 25 ca 2e 00 00    	jmp    QWORD PTR [rip+0x2eca]        # 3fc0 <fstat@GLIBC_2.33>
    10f6:	68 0c 00 00 00       	push   0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <rand@plt>:
    1100:	ff 25 c2 2e 00 00    	jmp    QWORD PTR [rip+0x2ec2]        # 3fc8 <rand@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	ff 25 da 2e 00 00    	jmp    QWORD PTR [rip+0x2eda]        # 3ff0 <__cxa_finalize@GLIBC_2.2.5>
    1116:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001120 <crc32Hash(char const*)>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	83 c8 ff             	or     eax,0xffffffff
    1127:	eb 09                	jmp    1132 <crc32Hash(char const*)+0x12>
    1129:	f2 0f 38 f0 c2       	crc32  eax,dl
    112e:	48 83 c7 01          	add    rdi,0x1
    1132:	0f b6 17             	movzx  edx,BYTE PTR [rdi]
    1135:	84 d2                	test   dl,dl
    1137:	75 f0                	jne    1129 <crc32Hash(char const*)+0x9>
    1139:	89 c0                	mov    eax,eax
    113b:	c3                   	ret
    113c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	31 ed                	xor    ebp,ebp
    1146:	49 89 d1             	mov    r9,rdx
    1149:	5e                   	pop    rsi
    114a:	48 89 e2             	mov    rdx,rsp
    114d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1151:	50                   	push   rax
    1152:	54                   	push   rsp
    1153:	45 31 c0             	xor    r8d,r8d
    1156:	31 c9                	xor    ecx,ecx
    1158:	48 8d 3d d1 00 00 00 	lea    rdi,[rip+0xd1]        # 1230 <main>
    115f:	ff 15 6b 2e 00 00    	call   QWORD PTR [rip+0x2e6b]        # 3fd0 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt
    1166:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    116d:	00 00 00 

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    rdi,[rip+0x2e99]        # 4010 <__TMC_END__>
    1177:	48 8d 05 92 2e 00 00 	lea    rax,[rip+0x2e92]        # 4010 <__TMC_END__>
    117e:	48 39 f8             	cmp    rax,rdi
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 4e 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e4e]        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   rax,rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    rax
    1191:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1198:	c3                   	ret
    1199:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    rdi,[rip+0x2e69]        # 4010 <__TMC_END__>
    11a7:	48 8d 35 62 2e 00 00 	lea    rsi,[rip+0x2e62]        # 4010 <__TMC_END__>
    11ae:	48 29 fe             	sub    rsi,rdi
    11b1:	48 89 f0             	mov    rax,rsi
    11b4:	48 c1 ee 3f          	shr    rsi,0x3f
    11b8:	48 c1 f8 03          	sar    rax,0x3
    11bc:	48 01 c6             	add    rsi,rax
    11bf:	48 d1 fe             	sar    rsi,1
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 1d 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e1d]        # 3fe8 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   rax,rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    rax
    11d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11d8:	c3                   	ret
    11d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	80 3d 25 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e25],0x0        # 4010 <__TMC_END__>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   rbp
    11ee:	48 83 3d fa 2d 00 00 	cmp    QWORD PTR [rip+0x2dfa],0x0        # 3ff0 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    rbp,rsp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e06]        # 4008 <__dso_handle>
    1202:	e8 09 ff ff ff       	call   1110 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 fd 2d 00 00 01 	mov    BYTE PTR [rip+0x2dfd],0x1        # 4010 <__TMC_END__>
    1213:	5d                   	pop    rbp
    1214:	c3                   	ret
    1215:	0f 1f 00             	nop    DWORD PTR [rax]
    1218:	c3                   	ret
    1219:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>
    1229:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001230 <main>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	55                   	push   rbp
    1235:	31 f6                	xor    esi,esi
    1237:	48 89 e5             	mov    rbp,rsp
    123a:	41 57                	push   r15
    123c:	41 56                	push   r14
    123e:	48 8d 95 a0 fe ff ff 	lea    rdx,[rbp-0x160]
    1245:	4c 8d 35 b8 0d 00 00 	lea    r14,[rip+0xdb8]        # 2004 <_IO_stdin_used+0x4>
    124c:	41 55                	push   r13
    124e:	4c 89 f7             	mov    rdi,r14
    1251:	41 54                	push   r12
    1253:	53                   	push   rbx
    1254:	48 81 ec 78 01 00 00 	sub    rsp,0x178
    125b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1262:	00 00 
    1264:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1268:	31 c0                	xor    eax,eax
    126a:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
    1271:	66 48 0f 6e d0       	movq   xmm2,rax
    1276:	48 89 85 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],rax
    127d:	31 c0                	xor    eax,eax
    127f:	66 48 0f 3a 22 d2 01 	pinsrq xmm2,rdx,0x1
    1286:	31 d2                	xor    edx,edx
    1288:	0f 29 95 80 fe ff ff 	movaps XMMWORD PTR [rbp-0x180],xmm2
    128f:	e8 2c fe ff ff       	call   10c0 <open@plt>
    1294:	83 f8 ff             	cmp    eax,0xffffffff
    1297:	0f 84 02 07 00 00    	je     199f <hashTableFunctions.cpp.8ecf84f4+0x127>
    129d:	48 8d b5 30 ff ff ff 	lea    rsi,[rbp-0xd0]
    12a4:	41 89 c4             	mov    r12d,eax
    12a7:	b9 24 00 00 00       	mov    ecx,0x24
    12ac:	31 c0                	xor    eax,eax
    12ae:	48 89 f7             	mov    rdi,rsi
    12b1:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
    12b3:	44 89 e7             	mov    edi,r12d
    12b6:	e8 35 fe ff ff       	call   10f0 <fstat@plt>
    12bb:	85 c0                	test   eax,eax
    12bd:	0f 85 71 07 00 00    	jne    1a34 <hashTableFunctions.cpp.8ecf84f4+0x1bc>
    12c3:	4c 8b bd 60 ff ff ff 	mov    r15,QWORD PTR [rbp-0xa0]
    12ca:	4d 85 ff             	test   r15,r15
    12cd:	0f 8e 6d 07 00 00    	jle    1a40 <hashTableFunctions.cpp.8ecf84f4+0x1c8>
    12d3:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    12d7:	be 01 00 00 00       	mov    esi,0x1
    12dc:	e8 af fd ff ff       	call   1090 <calloc@plt>
    12e1:	48 89 85 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],rax
    12e8:	48 85 c0             	test   rax,rax
    12eb:	0f 84 36 07 00 00    	je     1a27 <hashTableFunctions.cpp.8ecf84f4+0x1af>
    12f1:	48 8b 9d 90 fe ff ff 	mov    rbx,QWORD PTR [rbp-0x170]
    12f8:	44 89 e7             	mov    edi,r12d
    12fb:	4c 89 fa             	mov    rdx,r15
    12fe:	48 89 de             	mov    rsi,rbx
    1301:	e8 7a fd ff ff       	call   1080 <read@plt>
    1306:	44 89 e7             	mov    edi,r12d
    1309:	c6 04 03 00          	mov    BYTE PTR [rbx+rax*1],0x0
    130d:	e8 4e fd ff ff       	call   1060 <close@plt>
    1312:	85 c0                	test   eax,eax
    1314:	0f 85 dc 06 00 00    	jne    19f6 <hashTableFunctions.cpp.8ecf84f4+0x17e>
    131a:	4c 8b ad 90 fe ff ff 	mov    r13,QWORD PTR [rbp-0x170]
    1321:	45 31 e4             	xor    r12d,r12d
    1324:	31 db                	xor    ebx,ebx
    1326:	eb 09                	jmp    1331 <main+0x101>
    1328:	45 85 e4             	test   r12d,r12d
    132b:	74 20                	je     134d <main+0x11d>
    132d:	49 83 c5 01          	add    r13,0x1
    1331:	41 0f b6 75 00       	movzx  esi,BYTE PTR [r13+0x0]
    1336:	40 84 f6             	test   sil,sil
    1339:	74 1e                	je     1359 <main+0x129>
    133b:	40 0f b6 fe          	movzx  edi,sil
    133f:	e8 2c fd ff ff       	call   1070 <isspace@plt>
    1344:	85 c0                	test   eax,eax
    1346:	74 e0                	je     1328 <main+0xf8>
    1348:	45 31 e4             	xor    r12d,r12d
    134b:	eb e0                	jmp    132d <main+0xfd>
    134d:	48 83 c3 01          	add    rbx,0x1
    1351:	41 bc 01 00 00 00    	mov    r12d,0x1
    1357:	eb d4                	jmp    132d <main+0xfd>
    1359:	be 10 00 00 00       	mov    esi,0x10
    135e:	48 89 df             	mov    rdi,rbx
    1361:	e8 2a fd ff ff       	call   1090 <calloc@plt>
    1366:	48 89 85 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],rax
    136d:	48 85 c0             	test   rax,rax
    1370:	0f 84 18 06 00 00    	je     198e <hashTableFunctions.cpp.8ecf84f4+0x116>
    1376:	4c 8b a5 90 fe ff ff 	mov    r12,QWORD PTR [rbp-0x170]
    137d:	45 31 f6             	xor    r14d,r14d
    1380:	45 31 ed             	xor    r13d,r13d
    1383:	45 31 ff             	xor    r15d,r15d
    1386:	eb 09                	jmp    1391 <main+0x161>
    1388:	45 85 f6             	test   r14d,r14d
    138b:	74 47                	je     13d4 <main+0x1a4>
    138d:	49 83 c4 01          	add    r12,0x1
    1391:	45 0f b6 14 24       	movzx  r10d,BYTE PTR [r12]
    1396:	45 84 d2             	test   r10b,r10b
    1399:	74 56                	je     13f1 <main+0x1c1>
    139b:	41 0f b6 fa          	movzx  edi,r10b
    139f:	e8 cc fc ff ff       	call   1070 <isspace@plt>
    13a4:	85 c0                	test   eax,eax
    13a6:	74 e0                	je     1388 <main+0x158>
    13a8:	45 85 f6             	test   r14d,r14d
    13ab:	74 e0                	je     138d <main+0x15d>
    13ad:	4c 89 f8             	mov    rax,r15
    13b0:	4c 8b 85 98 fe ff ff 	mov    r8,QWORD PTR [rbp-0x168]
    13b7:	4c 89 e7             	mov    rdi,r12
    13ba:	45 31 f6             	xor    r14d,r14d
    13bd:	48 c1 e0 04          	shl    rax,0x4
    13c1:	4c 29 ef             	sub    rdi,r13
    13c4:	41 c6 04 24 00       	mov    BYTE PTR [r12],0x0
    13c9:	49 83 c7 01          	add    r15,0x1
    13cd:	49 89 7c 00 08       	mov    QWORD PTR [r8+rax*1+0x8],rdi
    13d2:	eb b9                	jmp    138d <main+0x15d>
    13d4:	48 8b 8d 98 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x168]
    13db:	4c 89 fa             	mov    rdx,r15
    13de:	4d 89 e5             	mov    r13,r12
    13e1:	41 be 01 00 00 00    	mov    r14d,0x1
    13e7:	48 c1 e2 04          	shl    rdx,0x4
    13eb:	4c 89 24 11          	mov    QWORD PTR [rcx+rdx*1],r12
    13ef:	eb 9c                	jmp    138d <main+0x15d>
    13f1:	49 39 df             	cmp    r15,rbx
    13f4:	73 09                	jae    13ff <main+0x1cf>
    13f6:	45 85 f6             	test   r14d,r14d
    13f9:	0f 85 77 05 00 00    	jne    1976 <hashTableFunctions.cpp.8ecf84f4+0xfe>
    13ff:	31 c0                	xor    eax,eax
    1401:	b9 08 00 00 00       	mov    ecx,0x8
    1406:	be 08 00 00 00       	mov    esi,0x8
    140b:	45 31 ed             	xor    r13d,r13d
    140e:	48 8d bd 00 ff ff ff 	lea    rdi,[rbp-0x100]
    1415:	4c 8d 25 04 fd ff ff 	lea    r12,[rip+0xfffffffffffffd04]        # 1120 <crc32Hash(char const*)>
    141c:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
    141e:	48 8b bd 78 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x188]
    1425:	b9 0c 00 00 00       	mov    ecx,0xc
    142a:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
    142c:	bf a7 0f 00 00       	mov    edi,0xfa7
    1431:	e8 5a fc ff ff       	call   1090 <calloc@plt>
    1436:	4c 89 a5 10 ff ff ff 	mov    QWORD PTR [rbp-0xf0],r12
    143d:	48 89 85 f0 fe ff ff 	mov    QWORD PTR [rbp-0x110],rax
    1444:	49 89 c6             	mov    r14,rax
    1447:	48 c7 85 f8 fe ff ff 	mov    QWORD PTR [rbp-0x108],0xfa7
    144e:	a7 0f 00 00 
    1452:	be 48 00 00 00       	mov    esi,0x48
    1457:	bf 01 00 00 00       	mov    edi,0x1
    145c:	e8 2f fc ff ff       	call   1090 <calloc@plt>
    1461:	be 28 00 00 00       	mov    esi,0x28
    1466:	bf 04 00 00 00       	mov    edi,0x4
    146b:	4b 89 04 ee          	mov    QWORD PTR [r14+r13*8],rax
    146f:	49 89 c7             	mov    r15,rax
    1472:	49 83 c5 01          	add    r13,0x1
    1476:	e8 15 fc ff ff       	call   1090 <calloc@plt>
    147b:	4c 8b 0d 4e 0c 00 00 	mov    r9,QWORD PTR [rip+0xc4e]        # 20d0 <_IO_stdin_used+0xd0>
    1482:	48 8b 35 4f 0c 00 00 	mov    rsi,QWORD PTR [rip+0xc4f]        # 20d8 <_IO_stdin_used+0xd8>
    1489:	66 0f ef c0          	pxor   xmm0,xmm0
    148d:	4c 8b 15 4c 0c 00 00 	mov    r10,QWORD PTR [rip+0xc4c]        # 20e0 <_IO_stdin_used+0xe0>
    1494:	66 0f 6f 0d 54 0c 00 	movdqa xmm1,XMMWORD PTR [rip+0xc54]        # 20f0 <_IO_stdin_used+0xf0>
    149b:	00 
    149c:	49 89 07             	mov    QWORD PTR [r15],rax
    149f:	4c 8b 1d 4a 0c 00 00 	mov    r11,QWORD PTR [rip+0xc4a]        # 20f0 <_IO_stdin_used+0xf0>
    14a6:	49 c7 47 18 00 00 00 	mov    QWORD PTR [r15+0x18],0x0
    14ad:	00 
    14ae:	48 c7 40 18 be ba 00 	mov    QWORD PTR [rax+0x18],0xbabe
    14b5:	00 
    14b6:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    14bd:	48 c7 40 40 ad 0b 00 	mov    QWORD PTR [rax+0x40],0xbad
    14c4:	00 
    14c5:	4c 89 48 28          	mov    QWORD PTR [rax+0x28],r9
    14c9:	48 c7 40 68 ad 0b 00 	mov    QWORD PTR [rax+0x68],0xbad
    14d0:	00 
    14d1:	48 89 70 50          	mov    QWORD PTR [rax+0x50],rsi
    14d5:	48 c7 80 90 00 00 00 	mov    QWORD PTR [rax+0x90],0xbad
    14dc:	ad 0b 00 00 
    14e0:	4c 89 50 78          	mov    QWORD PTR [rax+0x78],r10
    14e4:	49 c7 47 38 00 00 00 	mov    QWORD PTR [r15+0x38],0x0
    14eb:	00 
    14ec:	41 c7 47 40 00 00 00 	mov    DWORD PTR [r15+0x40],0x0
    14f3:	00 
    14f4:	4d 89 5f 20          	mov    QWORD PTR [r15+0x20],r11
    14f8:	41 0f 11 4f 08       	movups XMMWORD PTR [r15+0x8],xmm1
    14fd:	41 0f 11 47 28       	movups XMMWORD PTR [r15+0x28],xmm0
    1502:	49 81 fd a7 0f 00 00 	cmp    r13,0xfa7
    1509:	0f 85 43 ff ff ff    	jne    1452 <main+0x222>
    150f:	66 0f 6f 9d 80 fe ff 	movdqa xmm3,XMMWORD PTR [rbp-0x180]
    1516:	ff 
    1517:	48 89 9d 80 fe ff ff 	mov    QWORD PTR [rbp-0x180],rbx
    151e:	45 31 ff             	xor    r15d,r15d
    1521:	0f 29 9d 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm3
    1528:	4c 89 fb             	mov    rbx,r15
    152b:	48 c1 e3 04          	shl    rbx,0x4
    152f:	48 03 9d 98 fe ff ff 	add    rbx,QWORD PTR [rbp-0x168]
    1536:	eb 0e                	jmp    1546 <main+0x316>
    1538:	48 98                	cdqe
    153a:	4c 6b d0 28          	imul   r10,rax,0x28
    153e:	4c 03 17             	add    r10,QWORD PTR [rdi]
    1541:	49 83 42 18 01       	add    QWORD PTR [r10+0x18],0x1
    1546:	4c 3b bd 80 fe ff ff 	cmp    r15,QWORD PTR [rbp-0x180]
    154d:	0f 83 14 01 00 00    	jae    1667 <main+0x437>
    1553:	49 83 c7 01          	add    r15,0x1
    1557:	4c 3b bd 80 fe ff ff 	cmp    r15,QWORD PTR [rbp-0x180]
    155e:	73 07                	jae    1567 <main+0x337>
    1560:	48 8b 53 10          	mov    rdx,QWORD PTR [rbx+0x10]
    1564:	0f 18 0a             	prefetcht0 BYTE PTR [rdx]
    1567:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    156a:	48 89 9d 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],rbx
    1571:	4c 89 f7             	mov    rdi,r14
    1574:	e8 a7 fb ff ff       	call   1120 <crc32Hash(char const*)>
    1579:	48 8b 8d f8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x108]
    1580:	48 c1 e0 20          	shl    rax,0x20
    1584:	49 89 c5             	mov    r13,rax
    1587:	48 f7 e1             	mul    rcx
    158a:	48 8b 85 f0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x110]
    1591:	4c 89 f6             	mov    rsi,r14
    1594:	48 83 c3 10          	add    rbx,0x10
    1598:	4c 8b 0c d0          	mov    r9,QWORD PTR [rax+rdx*8]
    159c:	4c 89 ea             	mov    rdx,r13
    159f:	4c 89 cf             	mov    rdi,r9
    15a2:	4c 89 8d 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],r9
    15a9:	e8 02 05 00 00       	call   1ab0 <findWordInList_asm>
    15ae:	48 8b bd 78 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x188]
    15b5:	48 8b b5 70 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x190]
    15bc:	3d 26 f1 ff ff       	cmp    eax,0xfffff126
    15c1:	0f 85 71 ff ff ff    	jne    1538 <main+0x308>
    15c7:	4c 89 f3             	mov    rbx,r14
    15ca:	49 89 fe             	mov    r14,rdi
    15cd:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    15d0:	4d 89 e8             	mov    r8,r13
    15d3:	48 83 85 00 ff ff ff 	add    QWORD PTR [rbp-0x100],0x1
    15da:	01 
    15db:	49 83 7e 08 00       	cmp    QWORD PTR [r14+0x8],0x0
    15e0:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
    15e4:	44 8b 6f 04          	mov    r13d,DWORD PTR [rdi+0x4]
    15e8:	0f 84 ce 02 00 00    	je     18bc <hashTableFunctions.cpp.8ecf84f4+0x44>
    15ee:	49 8b 76 08          	mov    rsi,QWORD PTR [r14+0x8]
    15f2:	4c 63 ce             	movsxd r9,esi
    15f5:	4d 6b d1 28          	imul   r10,r9,0x28
    15f9:	49 01 fa             	add    r10,rdi
    15fc:	45 89 6a 04          	mov    DWORD PTR [r10+0x4],r13d
    1600:	4d 63 ed             	movsxd r13,r13d
    1603:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
    1606:	49 89 52 10          	mov    QWORD PTR [r10+0x10],rdx
    160a:	49 6b d5 28          	imul   rdx,r13,0x28
    160e:	4d 89 42 20          	mov    QWORD PTR [r10+0x20],r8
    1612:	49 c7 42 18 01 00 00 	mov    QWORD PTR [r10+0x18],0x1
    1619:	00 
    161a:	48 01 fa             	add    rdx,rdi
    161d:	49 89 5a 08          	mov    QWORD PTR [r10+0x8],rbx
    1621:	44 8b 02             	mov    r8d,DWORD PTR [rdx]
    1624:	45 89 02             	mov    DWORD PTR [r10],r8d
    1627:	89 32                	mov    DWORD PTR [rdx],esi
    1629:	49 63 0a             	movsxd rcx,DWORD PTR [r10]
    162c:	48 6b c1 28          	imul   rax,rcx,0x28
    1630:	89 74 07 04          	mov    DWORD PTR [rdi+rax*1+0x4],esi
    1634:	49 83 46 18 01       	add    QWORD PTR [r14+0x18],0x1
    1639:	4d 89 5e 08          	mov    QWORD PTR [r14+0x8],r11
    163d:	85 f6                	test   esi,esi
    163f:	0f 89 e3 fe ff ff    	jns    1528 <main+0x2f8>
    1645:	49 89 df             	mov    r15,rbx
    1648:	48 8b 9d 80 fe ff ff 	mov    rbx,QWORD PTR [rbp-0x180]
    164f:	4c 89 fa             	mov    rdx,r15
    1652:	48 8d 35 57 0a 00 00 	lea    rsi,[rip+0xa57]        # 20b0 <_IO_stdin_used+0xb0>
    1659:	bf 01 00 00 00       	mov    edi,0x1
    165e:	31 c0                	xor    eax,eax
    1660:	e8 4b fa ff ff       	call   10b0 <__printf_chk@plt>
    1665:	eb 07                	jmp    166e <main+0x43e>
    1667:	48 8b 9d 80 fe ff ff 	mov    rbx,QWORD PTR [rbp-0x180]
    166e:	48 83 fb 01          	cmp    rbx,0x1
    1672:	76 4c                	jbe    16c0 <main+0x490>
    1674:	4c 8b b5 98 fe ff ff 	mov    r14,QWORD PTR [rbp-0x168]
    167b:	49 89 dd             	mov    r13,rbx
    167e:	e8 7d fa ff ff       	call   1100 <rand@plt>
    1683:	31 d2                	xor    edx,edx
    1685:	4d 89 eb             	mov    r11,r13
    1688:	48 98                	cdqe
    168a:	49 c1 e3 04          	shl    r11,0x4
    168e:	49 f7 f5             	div    r13
    1691:	4b 8b 7c 1e f0       	mov    rdi,QWORD PTR [r14+r11*1-0x10]
    1696:	4b 8b 4c 1e f8       	mov    rcx,QWORD PTR [r14+r11*1-0x8]
    169b:	49 83 ed 01          	sub    r13,0x1
    169f:	48 89 d0             	mov    rax,rdx
    16a2:	48 c1 e0 04          	shl    rax,0x4
    16a6:	4c 01 f0             	add    rax,r14
    16a9:	f3 0f 6f 28          	movdqu xmm5,XMMWORD PTR [rax]
    16ad:	43 0f 11 6c 1e f0    	movups XMMWORD PTR [r14+r11*1-0x10],xmm5
    16b3:	48 89 38             	mov    QWORD PTR [rax],rdi
    16b6:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
    16ba:	49 83 fd 01          	cmp    r13,0x1
    16be:	75 be                	jne    167e <main+0x44e>
    16c0:	48 c7 85 80 fe ff ff 	mov    QWORD PTR [rbp-0x180],0x3e8
    16c7:	e8 03 00 00 
    16cb:	45 31 c0             	xor    r8d,r8d
    16ce:	41 83 cd ff          	or     r13d,0xffffffff
    16d2:	45 31 ff             	xor    r15d,r15d
    16d5:	4d 89 fe             	mov    r14,r15
    16d8:	49 c1 e6 04          	shl    r14,0x4
    16dc:	4c 03 b5 98 fe ff ff 	add    r14,QWORD PTR [rbp-0x168]
    16e3:	49 39 df             	cmp    r15,rbx
    16e6:	0f 83 f6 00 00 00    	jae    17e2 <main+0x5b2>
    16ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    16f0:	49 83 c7 01          	add    r15,0x1
    16f4:	49 39 df             	cmp    r15,rbx
    16f7:	0f 83 5e 01 00 00    	jae    185b <main+0x62b>
    16fd:	4d 8b 56 10          	mov    r10,QWORD PTR [r14+0x10]
    1701:	41 0f 18 0a          	prefetcht0 BYTE PTR [r10]
    1705:	48 8b 85 10 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf0]
    170c:	49 8b 36             	mov    rsi,QWORD PTR [r14]
    170f:	4c 39 e0             	cmp    rax,r12
    1712:	0f 85 56 01 00 00    	jne    186e <main+0x63e>
    1718:	0f b6 3e             	movzx  edi,BYTE PTR [rsi]
    171b:	40 84 ff             	test   dil,dil
    171e:	0f 84 2e 01 00 00    	je     1852 <main+0x622>
    1724:	0f b6 4e 01          	movzx  ecx,BYTE PTR [rsi+0x1]
    1728:	45 89 e8             	mov    r8d,r13d
    172b:	f2 44 0f 38 f0 c7    	crc32  r8d,dil
    1731:	84 c9                	test   cl,cl
    1733:	74 6b                	je     17a0 <main+0x570>
    1735:	44 0f b6 4e 02       	movzx  r9d,BYTE PTR [rsi+0x2]
    173a:	f2 44 0f 38 f0 c1    	crc32  r8d,cl
    1740:	45 84 c9             	test   r9b,r9b
    1743:	74 5b                	je     17a0 <main+0x570>
    1745:	0f b6 46 03          	movzx  eax,BYTE PTR [rsi+0x3]
    1749:	f2 45 0f 38 f0 c1    	crc32  r8d,r9b
    174f:	84 c0                	test   al,al
    1751:	74 4d                	je     17a0 <main+0x570>
    1753:	44 0f b6 56 04       	movzx  r10d,BYTE PTR [rsi+0x4]
    1758:	f2 44 0f 38 f0 c0    	crc32  r8d,al
    175e:	45 84 d2             	test   r10b,r10b
    1761:	74 3d                	je     17a0 <main+0x570>
    1763:	0f b6 56 05          	movzx  edx,BYTE PTR [rsi+0x5]
    1767:	f2 45 0f 38 f0 c2    	crc32  r8d,r10b
    176d:	84 d2                	test   dl,dl
    176f:	74 2f                	je     17a0 <main+0x570>
    1771:	0f b6 7e 06          	movzx  edi,BYTE PTR [rsi+0x6]
    1775:	f2 44 0f 38 f0 c2    	crc32  r8d,dl
    177b:	4c 8d 5e 06          	lea    r11,[rsi+0x6]
    177f:	40 84 ff             	test   dil,dil
    1782:	74 1c                	je     17a0 <main+0x570>
    1784:	49 83 c3 01          	add    r11,0x1
    1788:	f2 44 0f 38 f0 c7    	crc32  r8d,dil
    178e:	41 0f b6 3b          	movzx  edi,BYTE PTR [r11]
    1792:	40 84 ff             	test   dil,dil
    1795:	75 ed                	jne    1784 <main+0x554>
    1797:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    179e:	00 00 
    17a0:	49 c1 e0 20          	shl    r8,0x20
    17a4:	48 8b 8d f8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x108]
    17ab:	4c 89 c0             	mov    rax,r8
    17ae:	48 f7 e1             	mul    rcx
    17b1:	4c 8b 8d f0 fe ff ff 	mov    r9,QWORD PTR [rbp-0x110]
    17b8:	49 83 c6 10          	add    r14,0x10
    17bc:	49 8b 3c d1          	mov    rdi,QWORD PTR [r9+rdx*8]
    17c0:	4c 89 c2             	mov    rdx,r8
    17c3:	e8 e8 02 00 00       	call   1ab0 <findWordInList_asm>
    17c8:	3d 26 f1 ff ff       	cmp    eax,0xfffff126
    17cd:	0f 84 e1 00 00 00    	je     18b4 <hashTableFunctions.cpp.8ecf84f4+0x3c>
    17d3:	41 b8 01 00 00 00    	mov    r8d,0x1
    17d9:	49 39 df             	cmp    r15,rbx
    17dc:	0f 82 0e ff ff ff    	jb     16f0 <main+0x4c0>
    17e2:	48 83 ad 80 fe ff ff 	sub    QWORD PTR [rbp-0x180],0x1
    17e9:	01 
    17ea:	0f 85 e2 fe ff ff    	jne    16d2 <main+0x4a2>
    17f0:	48 8b b5 f8 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x108]
    17f7:	48 8d bd f0 fe ff ff 	lea    rdi,[rbp-0x110]
    17fe:	e8 5d 02 00 00       	call   1a60 <hashTableDtor(hashTable_t*, unsigned long)>
    1803:	48 8b 9d 98 fe ff ff 	mov    rbx,QWORD PTR [rbp-0x168]
    180a:	48 85 db             	test   rbx,rbx
    180d:	74 08                	je     1817 <main+0x5e7>
    180f:	48 89 df             	mov    rdi,rbx
    1812:	e8 19 f8 ff ff       	call   1030 <free@plt>
    1817:	4c 8b 8d 90 fe ff ff 	mov    r9,QWORD PTR [rbp-0x170]
    181e:	4d 85 c9             	test   r9,r9
    1821:	74 08                	je     182b <main+0x5fb>
    1823:	4c 89 cf             	mov    rdi,r9
    1826:	e8 05 f8 ff ff       	call   1030 <free@plt>
    182b:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    182f:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1836:	00 00 
    1838:	0f 85 33 01 00 00    	jne    1971 <hashTableFunctions.cpp.8ecf84f4+0xf9>
    183e:	48 81 c4 78 01 00 00 	add    rsp,0x178
    1845:	31 c0                	xor    eax,eax
    1847:	5b                   	pop    rbx
    1848:	41 5c                	pop    r12
    184a:	41 5d                	pop    r13
    184c:	41 5e                	pop    r14
    184e:	41 5f                	pop    r15
    1850:	5d                   	pop    rbp
    1851:	c3                   	ret
    1852:	41 83 c8 ff          	or     r8d,0xffffffff
    1856:	e9 45 ff ff ff       	jmp    17a0 <main+0x570>
    185b:	48 8b 85 10 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf0]
    1862:	49 8b 36             	mov    rsi,QWORD PTR [r14]
    1865:	4c 39 e0             	cmp    rax,r12
    1868:	0f 84 aa fe ff ff    	je     1718 <main+0x4e8>
    186e:	48 89 b5 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],rsi
    1875:	48 89 f7             	mov    rdi,rsi
    1878:	ff d0                	call   rax
    187a:	48 8b 95 f8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x108]
    1881:	48 c1 e0 20          	shl    rax,0x20
    1885:	48 89 c6             	mov    rsi,rax
    1888:	48 f7 e2             	mul    rdx
    188b:	4c 8b 9d f0 fe ff ff 	mov    r11,QWORD PTR [rbp-0x110]
    1892:	49 83 c6 10          	add    r14,0x10
    1896:	49 8b 3c d3          	mov    rdi,QWORD PTR [r11+rdx*8]
    189a:	48 89 f2             	mov    rdx,rsi
    189d:	48 8b b5 78 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x188]
    18a4:	e8 07 02 00 00       	call   1ab0 <findWordInList_asm>
    18a9:	3d 26 f1 ff ff       	cmp    eax,0xfffff126
    18ae:	0f 85 1f ff ff ff    	jne    17d3 <main+0x5a3>
    18b4:	45 31 c0             	xor    r8d,r8d
    18b7:	e9 19 fe ff ff       	jmp    16d5 <main+0x4a5>
    18bc:	4d 8b 5e 10          	mov    r11,QWORD PTR [r14+0x10]
    18c0:	4c 89 85 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],r8
    18c7:	48 89 95 68 fe ff ff 	mov    QWORD PTR [rbp-0x198],rdx
    18ce:	49 6b f3 50          	imul   rsi,r11,0x50
    18d2:	4f 8d 04 1b          	lea    r8,[r11+r11*1]
    18d6:	4d 89 46 10          	mov    QWORD PTR [r14+0x10],r8
    18da:	4c 89 85 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],r8
    18e1:	e8 ba f7 ff ff       	call   10a0 <realloc@plt>
    18e6:	4c 8b 8d 78 fe ff ff 	mov    r9,QWORD PTR [rbp-0x188]
    18ed:	4c 8b 85 70 fe ff ff 	mov    r8,QWORD PTR [rbp-0x190]
    18f4:	48 85 c0             	test   rax,rax
    18f7:	48 8b 95 68 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x198]
    18fe:	48 89 c7             	mov    rdi,rax
    1901:	0f 84 d4 00 00 00    	je     19db <hashTableFunctions.cpp.8ecf84f4+0x163>
    1907:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
    190b:	49 89 06             	mov    QWORD PTR [r14],rax
    190e:	49 89 f2             	mov    r10,rsi
    1911:	49 d1 ea             	shr    r10,1
    1914:	4d 6b da 28          	imul   r11,r10,0x28
    1918:	49 01 c3             	add    r11,rax
    191b:	eb 31                	jmp    194e <hashTableFunctions.cpp.8ecf84f4+0xd6>
    191d:	66 0f 6f 25 db 07 00 	movdqa xmm4,XMMWORD PTR [rip+0x7db]        # 2100 <_IO_stdin_used+0x100>
    1924:	00 
    1925:	41 8d 72 01          	lea    esi,[r10+0x1]
    1929:	49 83 c3 28          	add    r11,0x28
    192d:	49 c7 43 e0 00 00 00 	mov    QWORD PTR [r11-0x20],0x0
    1934:	00 
    1935:	41 c7 43 dc ff ff ff 	mov    DWORD PTR [r11-0x24],0xffffffff
    193c:	ff 
    193d:	49 83 c2 01          	add    r10,0x1
    1941:	41 0f 11 63 e8       	movups XMMWORD PTR [r11-0x18],xmm4
    1946:	41 89 73 d8          	mov    DWORD PTR [r11-0x28],esi
    194a:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
    194e:	49 39 f2             	cmp    r10,rsi
    1951:	72 ca                	jb     191d <hashTableFunctions.cpp.8ecf84f4+0xa5>
    1953:	49 8d 49 ff          	lea    rcx,[r9-0x1]
    1957:	48 d1 ee             	shr    rsi,1
    195a:	48 6b c1 28          	imul   rax,rcx,0x28
    195e:	c7 04 07 00 00 00 00 	mov    DWORD PTR [rdi+rax*1],0x0
    1965:	49 8b 3e             	mov    rdi,QWORD PTR [r14]
    1968:	49 89 76 08          	mov    QWORD PTR [r14+0x8],rsi
    196c:	e9 7d fc ff ff       	jmp    15ee <main+0x3be>
    1971:	e8 da f6 ff ff       	call   1050 <__stack_chk_fail@plt>
    1976:	4c 8b 9d 98 fe ff ff 	mov    r11,QWORD PTR [rbp-0x168]
    197d:	49 c1 e7 04          	shl    r15,0x4
    1981:	4d 29 ec             	sub    r12,r13
    1984:	4f 89 64 3b 08       	mov    QWORD PTR [r11+r15*1+0x8],r12
    1989:	e9 71 fa ff ff       	jmp    13ff <main+0x1cf>
    198e:	48 8d 3d f3 06 00 00 	lea    rdi,[rip+0x6f3]        # 2088 <_IO_stdin_used+0x88>
    1995:	e8 36 f7 ff ff       	call   10d0 <perror@plt>
    199a:	e9 60 fa ff ff       	jmp    13ff <main+0x1cf>
    199f:	4c 8b 0d 52 26 00 00 	mov    r9,QWORD PTR [rip+0x2652]        # 3ff8 <stderr@GLIBC_2.2.5>
    19a6:	4c 89 f1             	mov    rcx,r14
    19a9:	be 01 00 00 00       	mov    esi,0x1
    19ae:	31 c0                	xor    eax,eax
    19b0:	48 8d 15 5d 06 00 00 	lea    rdx,[rip+0x65d]        # 2014 <_IO_stdin_used+0x14>
    19b7:	49 8b 39             	mov    rdi,QWORD PTR [r9]
    19ba:	e8 21 f7 ff ff       	call   10e0 <__fprintf_chk@plt>
    19bf:	48 8d 3d 97 06 00 00 	lea    rdi,[rip+0x697]        # 205d <_IO_stdin_used+0x5d>
    19c6:	e8 05 f7 ff ff       	call   10d0 <perror@plt>
    19cb:	48 c7 85 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],0x0
    19d2:	00 00 00 00 
    19d6:	e9 3f f9 ff ff       	jmp    131a <main+0xea>
    19db:	48 8d 3d 68 06 00 00 	lea    rdi,[rip+0x668]        # 204a <_IO_stdin_used+0x4a>
    19e2:	49 89 df             	mov    r15,rbx
    19e5:	48 8b 9d 80 fe ff ff 	mov    rbx,QWORD PTR [rbp-0x180]
    19ec:	e8 4f f6 ff ff       	call   1040 <puts@plt>
    19f1:	e9 59 fc ff ff       	jmp    164f <main+0x41f>
    19f6:	4c 8b 05 fb 25 00 00 	mov    r8,QWORD PTR [rip+0x25fb]        # 3ff8 <stderr@GLIBC_2.2.5>
    19fd:	4c 89 f1             	mov    rcx,r14
    1a00:	be 01 00 00 00       	mov    esi,0x1
    1a05:	31 c0                	xor    eax,eax
    1a07:	48 8d 15 21 06 00 00 	lea    rdx,[rip+0x621]        # 202f <_IO_stdin_used+0x2f>
    1a0e:	49 8b 38             	mov    rdi,QWORD PTR [r8]
    1a11:	e8 ca f6 ff ff       	call   10e0 <__fprintf_chk@plt>
    1a16:	48 8d 3d 40 06 00 00 	lea    rdi,[rip+0x640]        # 205d <_IO_stdin_used+0x5d>
    1a1d:	e8 ae f6 ff ff       	call   10d0 <perror@plt>
    1a22:	e9 f3 f8 ff ff       	jmp    131a <main+0xea>
    1a27:	44 89 e7             	mov    edi,r12d
    1a2a:	e8 31 f6 ff ff       	call   1060 <close@plt>
    1a2f:	e9 e6 f8 ff ff       	jmp    131a <main+0xea>
    1a34:	48 8d 3d 25 06 00 00 	lea    rdi,[rip+0x625]        # 2060 <_IO_stdin_used+0x60>
    1a3b:	e8 90 f6 ff ff       	call   10d0 <perror@plt>
    1a40:	44 89 e7             	mov    edi,r12d
    1a43:	e8 18 f6 ff ff       	call   1060 <close@plt>
    1a48:	48 c7 85 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],0x0
    1a4f:	00 00 00 00 
    1a53:	e9 c2 f8 ff ff       	jmp    131a <main+0xea>
    1a58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1a5f:	00 

0000000000001a60 <hashTableDtor(hashTable_t*, unsigned long)>:
    1a60:	55                   	push   rbp
    1a61:	48 89 e5             	mov    rbp,rsp
    1a64:	41 56                	push   r14
    1a66:	49 89 f6             	mov    r14,rsi
    1a69:	41 55                	push   r13
    1a6b:	49 89 fd             	mov    r13,rdi
    1a6e:	41 54                	push   r12
    1a70:	53                   	push   rbx
    1a71:	31 db                	xor    ebx,ebx
    1a73:	eb 19                	jmp    1a8e <hashTableDtor(hashTable_t*, unsigned long)+0x2e>
    1a75:	4c 8b 24 df          	mov    r12,QWORD PTR [rdi+rbx*8]
    1a79:	48 83 c3 01          	add    rbx,0x1
    1a7d:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
    1a81:	e8 aa f5 ff ff       	call   1030 <free@plt>
    1a86:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
    1a8d:	00 
    1a8e:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
    1a92:	4c 39 f3             	cmp    rbx,r14
    1a95:	75 de                	jne    1a75 <hashTableDtor(hashTable_t*, unsigned long)+0x15>
    1a97:	e8 94 f5 ff ff       	call   1030 <free@plt>
    1a9c:	5b                   	pop    rbx
    1a9d:	41 5c                	pop    r12
    1a9f:	49 c7 45 00 00 00 00 	mov    QWORD PTR [r13+0x0],0x0
    1aa6:	00 
    1aa7:	41 5d                	pop    r13
    1aa9:	41 5e                	pop    r14
    1aab:	5d                   	pop    rbp
    1aac:	c3                   	ret
    1aad:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001ab0 <findWordInList_asm>:
    1ab0:	4c 8b 0f             	mov    r9,QWORD PTR [rdi]
    1ab3:	48 31 c9             	xor    rcx,rcx
    1ab6:	41 8b 09             	mov    ecx,DWORD PTR [r9]
    1ab9:	85 c9                	test   ecx,ecx
    1abb:	74 15                	je     1ad2 <findWordInList_asm.notFound>

0000000000001abd <findWordInList_asm.loopStart>:
    1abd:	4c 8d 04 89          	lea    r8,[rcx+rcx*4]
    1ac1:	4f 8d 14 c1          	lea    r10,[r9+r8*8]
    1ac5:	49 3b 52 20          	cmp    rdx,QWORD PTR [r10+0x20]
    1ac9:	74 0f                	je     1ada <findWordInList_asm.cmpString>

0000000000001acb <findWordInList_asm.nextNode>:
    1acb:	41 8b 0a             	mov    ecx,DWORD PTR [r10]
    1ace:	85 c9                	test   ecx,ecx
    1ad0:	75 eb                	jne    1abd <findWordInList_asm.loopStart>

0000000000001ad2 <findWordInList_asm.notFound>:
    1ad2:	48 c7 c0 26 f1 ff ff 	mov    rax,0xfffffffffffff126
    1ad9:	c3                   	ret

0000000000001ada <findWordInList_asm.cmpString>:
    1ada:	49 89 f0             	mov    r8,rsi
    1add:	4d 8b 5a 08          	mov    r11,QWORD PTR [r10+0x8]
    1ae1:	c5 e5 ef db          	vpxor  ymm3,ymm3,ymm3
    1ae5:	c4 c1 7e 6f 00       	vmovdqu ymm0,YMMWORD PTR [r8]
    1aea:	c4 c1 7e 6f 0b       	vmovdqu ymm1,YMMWORD PTR [r11]
    1aef:	c5 fd 74 d1          	vpcmpeqb ymm2,ymm0,ymm1
    1af3:	c5 fd d7 c2          	vpmovmskb eax,ymm2
    1af7:	c5 fd 74 e3          	vpcmpeqb ymm4,ymm0,ymm3
    1afb:	c5 7d d7 c4          	vpmovmskb r8d,ymm4
    1aff:	f7 d0                	not    eax
    1b01:	f3 0f bc c0          	tzcnt  eax,eax
    1b05:	f3 45 0f bc c0       	tzcnt  r8d,r8d
    1b0a:	44 39 c0             	cmp    eax,r8d
    1b0d:	73 05                	jae    1b14 <findWordInList_asm.found>
    1b0f:	c5 f8 77             	vzeroupper
    1b12:	eb b7                	jmp    1acb <findWordInList_asm.nextNode>

0000000000001b14 <findWordInList_asm.found>:
    1b14:	c5 f8 77             	vzeroupper
    1b17:	48 89 c8             	mov    rax,rcx
    1b1a:	c3                   	ret

Disassembly of section .fini:

0000000000001b1c <_fini>:
    1b1c:	f3 0f 1e fa          	endbr64
    1b20:	48 83 ec 08          	sub    rsp,0x8
    1b24:	48 83 c4 08          	add    rsp,0x8
    1b28:	c3                   	ret
