
mkfs:     file format elf32-i386


Disassembly of section .interp:

08048154 <.interp>:
 8048154:	2f                   	das    
 8048155:	6c                   	insb   (%dx),%es:(%edi)
 8048156:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804815d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048164:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048168 <.note.ABI-tag>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	10 00                	adc    %al,(%eax)
 804816e:	00 00                	add    %al,(%eax)
 8048170:	01 00                	add    %eax,(%eax)
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 00                	add    %al,(%eax)
 8048179:	00 00                	add    %al,(%eax)
 804817b:	00 02                	add    %al,(%edx)
 804817d:	00 00                	add    %al,(%eax)
 804817f:	00 06                	add    %al,(%esi)
 8048181:	00 00                	add    %al,(%eax)
 8048183:	00 18                	add    %bl,(%eax)
 8048185:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048188 <.note.gnu.build-id>:
 8048188:	04 00                	add    $0x0,%al
 804818a:	00 00                	add    %al,(%eax)
 804818c:	14 00                	adc    $0x0,%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	03 00                	add    (%eax),%eax
 8048192:	00 00                	add    %al,(%eax)
 8048194:	47                   	inc    %edi
 8048195:	4e                   	dec    %esi
 8048196:	55                   	push   %ebp
 8048197:	00 59 e3             	add    %bl,-0x1d(%ecx)
 804819a:	d7                   	xlat   %ds:(%ebx)
 804819b:	ef                   	out    %eax,(%dx)
 804819c:	fc                   	cld    
 804819d:	89 9e de 06 7f 9d    	mov    %ebx,-0x6280f922(%esi)
 80481a3:	cd 06                	int    $0x6
 80481a5:	94                   	xchg   %eax,%esp
 80481a6:	ce                   	into   
 80481a7:	bf 39 ca 7e b1       	mov    $0xb17eca39,%edi

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	02 00                	add    (%eax),%al
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	0c 00                	or     $0x0,%al
 80481b2:	00 00                	add    %al,(%eax)
 80481b4:	01 00                	add    %eax,(%eax)
 80481b6:	00 00                	add    %al,(%eax)
 80481b8:	05 00 00 00 00       	add    $0x0,%eax
 80481bd:	20 00                	and    %al,(%eax)
 80481bf:	20 00                	and    %al,(%eax)
 80481c1:	00 00                	add    %al,(%eax)
 80481c3:	00 0c 00             	add    %cl,(%eax,%eax,1)
 80481c6:	00 00                	add    %al,(%eax)
 80481c8:	ad                   	lods   %ds:(%esi),%eax
 80481c9:	4b                   	dec    %ebx
 80481ca:	e3 c0                	jecxz  804818c <_init-0x268>

Disassembly of section .dynsym:

080481cc <.dynsym>:
	...
 80481dc:	5d                   	pop    %ebp
	...
 80481e5:	00 00                	add    %al,(%eax)
 80481e7:	00 12                	add    %dl,(%edx)
 80481e9:	00 00                	add    %al,(%eax)
 80481eb:	00 41 00             	add    %al,0x0(%ecx)
	...
 80481f6:	00 00                	add    %al,(%eax)
 80481f8:	12 00                	adc    (%eax),%al
 80481fa:	00 00                	add    %al,(%eax)
 80481fc:	46                   	inc    %esi
	...
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 12                	add    %dl,(%edx)
 8048209:	00 00                	add    %al,(%eax)
 804820b:	00 57 00             	add    %dl,0x0(%edi)
	...
 8048216:	00 00                	add    %al,(%eax)
 8048218:	12 00                	adc    (%eax),%al
 804821a:	00 00                	add    %al,(%eax)
 804821c:	64 00 00             	add    %al,%fs:(%eax)
	...
 8048227:	00 12                	add    %dl,(%edx)
 8048229:	00 00                	add    %al,(%eax)
 804822b:	00 3c 00             	add    %bh,(%eax,%eax,1)
	...
 8048236:	00 00                	add    %al,(%eax)
 8048238:	12 00                	adc    (%eax),%al
 804823a:	00 00                	add    %al,(%eax)
 804823c:	01 00                	add    %eax,(%eax)
	...
 8048246:	00 00                	add    %al,(%eax)
 8048248:	20 00                	and    %al,(%eax)
 804824a:	00 00                	add    %al,(%eax)
 804824c:	29 00                	sub    %eax,(%eax)
	...
 8048256:	00 00                	add    %al,(%eax)
 8048258:	12 00                	adc    (%eax),%al
 804825a:	00 00                	add    %al,(%eax)
 804825c:	6b 00 00             	imul   $0x0,(%eax),%eax
	...
 8048267:	00 12                	add    %dl,(%edx)
 8048269:	00 00                	add    %al,(%eax)
 804826b:	00 2e                	add    %ch,(%esi)
	...
 8048275:	00 00                	add    %al,(%eax)
 8048277:	00 12                	add    %dl,(%edx)
 8048279:	00 00                	add    %al,(%eax)
 804827b:	00 34 00             	add    %dh,(%eax,%eax,1)
	...
 8048286:	00 00                	add    %al,(%eax)
 8048288:	12 00                	adc    (%eax),%al
 804828a:	00 00                	add    %al,(%eax)
 804828c:	1a 00                	sbb    (%eax),%al
 804828e:	00 00                	add    %al,(%eax)
 8048290:	ac                   	lods   %ds:(%esi),%al
 8048291:	8a 04 08             	mov    (%eax,%ecx,1),%al
 8048294:	04 00                	add    $0x0,%al
 8048296:	00 00                	add    %al,(%eax)
 8048298:	11 00                	adc    %eax,(%eax)
 804829a:	0f                   	.byte 0xf
	...

Disassembly of section .dynstr:

0804829c <.dynstr>:
 804829c:	00 5f 5f             	add    %bl,0x5f(%edi)
 804829f:	67 6d                	insl   (%dx),%es:(%di)
 80482a1:	6f                   	outsl  %ds:(%esi),(%dx)
 80482a2:	6e                   	outsb  %ds:(%esi),(%dx)
 80482a3:	5f                   	pop    %edi
 80482a4:	73 74                	jae    804831a <_init-0xda>
 80482a6:	61                   	popa   
 80482a7:	72 74                	jb     804831d <_init-0xd7>
 80482a9:	5f                   	pop    %edi
 80482aa:	5f                   	pop    %edi
 80482ab:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 80482af:	63 2e                	arpl   %bp,(%esi)
 80482b1:	73 6f                	jae    8048322 <_init-0xd2>
 80482b3:	2e 36 00 5f 49       	cs add %bl,%cs:%ss:0x49(%edi)
 80482b8:	4f                   	dec    %edi
 80482b9:	5f                   	pop    %edi
 80482ba:	73 74                	jae    8048330 <_init-0xc4>
 80482bc:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 80482c3:	64 
 80482c4:	00 65 78             	add    %ah,0x78(%ebp)
 80482c7:	69 74 00 66 6f 70 65 	imul   $0x6e65706f,0x66(%eax,%eax,1),%esi
 80482ce:	6e 
 80482cf:	00 73 74             	add    %dh,0x74(%ebx)
 80482d2:	72 6e                	jb     8048342 <_init-0xb2>
 80482d4:	63 70 79             	arpl   %si,0x79(%eax)
 80482d7:	00 70 75             	add    %dh,0x75(%eax)
 80482da:	74 73                	je     804834f <_init-0xa5>
 80482dc:	00 74 69 6d          	add    %dh,0x6d(%ecx,%ebp,2)
 80482e0:	65 00 5f 5f          	add    %bl,%gs:0x5f(%edi)
 80482e4:	73 74                	jae    804835a <_init-0x9a>
 80482e6:	61                   	popa   
 80482e7:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 80482ea:	63 68 6b             	arpl   %bp,0x6b(%eax)
 80482ed:	5f                   	pop    %edi
 80482ee:	66 61                	popaw  
 80482f0:	69 6c 00 66 73 65 65 	imul   $0x6b656573,0x66(%eax,%eax,1),%ebp
 80482f7:	6b 
 80482f8:	00 66 63             	add    %ah,0x63(%esi)
 80482fb:	6c                   	insb   (%dx),%es:(%edi)
 80482fc:	6f                   	outsl  %ds:(%esi),(%dx)
 80482fd:	73 65                	jae    8048364 <_init-0x90>
 80482ff:	00 66 77             	add    %ah,0x77(%esi)
 8048302:	72 69                	jb     804836d <_init-0x87>
 8048304:	74 65                	je     804836b <_init-0x89>
 8048306:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048309:	6c                   	insb   (%dx),%es:(%edi)
 804830a:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 8048311:	72 74                	jb     8048387 <_init-0x6d>
 8048313:	5f                   	pop    %edi
 8048314:	6d                   	insl   (%dx),%es:(%edi)
 8048315:	61                   	popa   
 8048316:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%esi),%ebp
 804831d:	43                   	inc    %ebx
 804831e:	5f                   	pop    %edi
 804831f:	32 2e                	xor    (%esi),%ch
 8048321:	34 00                	xor    $0x0,%al
 8048323:	47                   	inc    %edi
 8048324:	4c                   	dec    %esp
 8048325:	49                   	dec    %ecx
 8048326:	42                   	inc    %edx
 8048327:	43                   	inc    %ebx
 8048328:	5f                   	pop    %edi
 8048329:	32 2e                	xor    (%esi),%ch
 804832b:	30 00                	xor    %al,(%eax)
 804832d:	47                   	inc    %edi
 804832e:	4c                   	dec    %esp
 804832f:	49                   	dec    %ecx
 8048330:	42                   	inc    %edx
 8048331:	43                   	inc    %ebx
 8048332:	5f                   	pop    %edi
 8048333:	32 2e                	xor    (%esi),%ch
 8048335:	31 00                	xor    %eax,(%eax)

Disassembly of section .gnu.version:

08048338 <.gnu.version>:
 8048338:	00 00                	add    %al,(%eax)
 804833a:	02 00                	add    (%eax),%al
 804833c:	03 00                	add    (%eax),%eax
 804833e:	04 00                	add    $0x0,%al
 8048340:	03 00                	add    (%eax),%eax
 8048342:	03 00                	add    (%eax),%eax
 8048344:	03 00                	add    (%eax),%eax
 8048346:	00 00                	add    %al,(%eax)
 8048348:	03 00                	add    (%eax),%eax
 804834a:	03 00                	add    (%eax),%eax
 804834c:	02 00                	add    (%eax),%al
 804834e:	03 00                	add    (%eax),%eax
 8048350:	01 00                	add    %eax,(%eax)

Disassembly of section .gnu.version_r:

08048354 <.gnu.version_r>:
 8048354:	01 00                	add    %eax,(%eax)
 8048356:	03 00                	add    (%eax),%eax
 8048358:	10 00                	adc    %al,(%eax)
 804835a:	00 00                	add    %al,(%eax)
 804835c:	10 00                	adc    %al,(%eax)
 804835e:	00 00                	add    %al,(%eax)
 8048360:	00 00                	add    %al,(%eax)
 8048362:	00 00                	add    %al,(%eax)
 8048364:	14 69                	adc    $0x69,%al
 8048366:	69 0d 00 00 04 00 7d 	imul   $0x7d,0x40000,%ecx
 804836d:	00 00 00 
 8048370:	10 00                	adc    %al,(%eax)
 8048372:	00 00                	add    %al,(%eax)
 8048374:	10 69 69             	adc    %ch,0x69(%ecx)
 8048377:	0d 00 00 03 00       	or     $0x30000,%eax
 804837c:	87 00                	xchg   %eax,(%eax)
 804837e:	00 00                	add    %al,(%eax)
 8048380:	10 00                	adc    %al,(%eax)
 8048382:	00 00                	add    %al,(%eax)
 8048384:	11 69 69             	adc    %ebp,0x69(%ecx)
 8048387:	0d 00 00 02 00       	or     $0x20000,%eax
 804838c:	91                   	xchg   %eax,%ecx
 804838d:	00 00                	add    %al,(%eax)
 804838f:	00 00                	add    %al,(%eax)
 8048391:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048394 <.rel.dyn>:
 8048394:	f0 9f                	lock lahf 
 8048396:	04 08                	add    $0x8,%al
 8048398:	06                   	push   %es
 8048399:	07                   	pop    %es
	...

Disassembly of section .rel.plt:

0804839c <.rel.plt>:
 804839c:	00 a0 04 08 07 01    	add    %ah,0x1070804(%eax)
 80483a2:	00 00                	add    %al,(%eax)
 80483a4:	04 a0                	add    $0xa0,%al
 80483a6:	04 08                	add    $0x8,%al
 80483a8:	07                   	pop    %es
 80483a9:	02 00                	add    (%eax),%al
 80483ab:	00 08                	add    %cl,(%eax)
 80483ad:	a0 04 08 07 03       	mov    0x3070804,%al
 80483b2:	00 00                	add    %al,(%eax)
 80483b4:	0c a0                	or     $0xa0,%al
 80483b6:	04 08                	add    $0x8,%al
 80483b8:	07                   	pop    %es
 80483b9:	04 00                	add    $0x0,%al
 80483bb:	00 10                	add    %dl,(%eax)
 80483bd:	a0 04 08 07 05       	mov    0x5070804,%al
 80483c2:	00 00                	add    %al,(%eax)
 80483c4:	14 a0                	adc    $0xa0,%al
 80483c6:	04 08                	add    $0x8,%al
 80483c8:	07                   	pop    %es
 80483c9:	06                   	push   %es
 80483ca:	00 00                	add    %al,(%eax)
 80483cc:	18 a0 04 08 07 07    	sbb    %ah,0x7070804(%eax)
 80483d2:	00 00                	add    %al,(%eax)
 80483d4:	1c a0                	sbb    $0xa0,%al
 80483d6:	04 08                	add    $0x8,%al
 80483d8:	07                   	pop    %es
 80483d9:	08 00                	or     %al,(%eax)
 80483db:	00 20                	add    %ah,(%eax)
 80483dd:	a0 04 08 07 09       	mov    0x9070804,%al
 80483e2:	00 00                	add    %al,(%eax)
 80483e4:	24 a0                	and    $0xa0,%al
 80483e6:	04 08                	add    $0x8,%al
 80483e8:	07                   	pop    %es
 80483e9:	0a 00                	or     (%eax),%al
 80483eb:	00 28                	add    %ch,(%eax)
 80483ed:	a0 04 08 07 0b       	mov    0xb070804,%al
	...

Disassembly of section .init:

080483f4 <_init>:
 80483f4:	53                   	push   %ebx
 80483f5:	83 ec 08             	sub    $0x8,%esp
 80483f8:	e8 00 00 00 00       	call   80483fd <_init+0x9>
 80483fd:	5b                   	pop    %ebx
 80483fe:	81 c3 f7 1b 00 00    	add    $0x1bf7,%ebx
 8048404:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804840a:	85 c0                	test   %eax,%eax
 804840c:	74 05                	je     8048413 <_init+0x1f>
 804840e:	e8 8d 00 00 00       	call   80484a0 <__gmon_start__@plt>
 8048413:	e8 68 01 00 00       	call   8048580 <frame_dummy>
 8048418:	e8 43 06 00 00       	call   8048a60 <__do_global_ctors_aux>
 804841d:	83 c4 08             	add    $0x8,%esp
 8048420:	5b                   	pop    %ebx
 8048421:	c3                   	ret    

Disassembly of section .plt:

08048430 <fclose@plt-0x10>:
 8048430:	ff 35 f8 9f 04 08    	pushl  0x8049ff8
 8048436:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 804843c:	00 00                	add    %al,(%eax)
	...

08048440 <fclose@plt>:
 8048440:	ff 25 00 a0 04 08    	jmp    *0x804a000
 8048446:	68 00 00 00 00       	push   $0x0
 804844b:	e9 e0 ff ff ff       	jmp    8048430 <_init+0x3c>

08048450 <time@plt>:
 8048450:	ff 25 04 a0 04 08    	jmp    *0x804a004
 8048456:	68 08 00 00 00       	push   $0x8
 804845b:	e9 d0 ff ff ff       	jmp    8048430 <_init+0x3c>

08048460 <__stack_chk_fail@plt>:
 8048460:	ff 25 08 a0 04 08    	jmp    *0x804a008
 8048466:	68 10 00 00 00       	push   $0x10
 804846b:	e9 c0 ff ff ff       	jmp    8048430 <_init+0x3c>

08048470 <fseek@plt>:
 8048470:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048476:	68 18 00 00 00       	push   $0x18
 804847b:	e9 b0 ff ff ff       	jmp    8048430 <_init+0x3c>

08048480 <fwrite@plt>:
 8048480:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048486:	68 20 00 00 00       	push   $0x20
 804848b:	e9 a0 ff ff ff       	jmp    8048430 <_init+0x3c>

08048490 <puts@plt>:
 8048490:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048496:	68 28 00 00 00       	push   $0x28
 804849b:	e9 90 ff ff ff       	jmp    8048430 <_init+0x3c>

080484a0 <__gmon_start__@plt>:
 80484a0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80484a6:	68 30 00 00 00       	push   $0x30
 80484ab:	e9 80 ff ff ff       	jmp    8048430 <_init+0x3c>

080484b0 <exit@plt>:
 80484b0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80484b6:	68 38 00 00 00       	push   $0x38
 80484bb:	e9 70 ff ff ff       	jmp    8048430 <_init+0x3c>

080484c0 <__libc_start_main@plt>:
 80484c0:	ff 25 20 a0 04 08    	jmp    *0x804a020
 80484c6:	68 40 00 00 00       	push   $0x40
 80484cb:	e9 60 ff ff ff       	jmp    8048430 <_init+0x3c>

080484d0 <fopen@plt>:
 80484d0:	ff 25 24 a0 04 08    	jmp    *0x804a024
 80484d6:	68 48 00 00 00       	push   $0x48
 80484db:	e9 50 ff ff ff       	jmp    8048430 <_init+0x3c>

080484e0 <strncpy@plt>:
 80484e0:	ff 25 28 a0 04 08    	jmp    *0x804a028
 80484e6:	68 50 00 00 00       	push   $0x50
 80484eb:	e9 40 ff ff ff       	jmp    8048430 <_init+0x3c>

Disassembly of section .text:

080484f0 <_start>:
 80484f0:	31 ed                	xor    %ebp,%ebp
 80484f2:	5e                   	pop    %esi
 80484f3:	89 e1                	mov    %esp,%ecx
 80484f5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484f8:	50                   	push   %eax
 80484f9:	54                   	push   %esp
 80484fa:	52                   	push   %edx
 80484fb:	68 50 8a 04 08       	push   $0x8048a50
 8048500:	68 e0 89 04 08       	push   $0x80489e0
 8048505:	51                   	push   %ecx
 8048506:	56                   	push   %esi
 8048507:	68 a4 85 04 08       	push   $0x80485a4
 804850c:	e8 af ff ff ff       	call   80484c0 <__libc_start_main@plt>
 8048511:	f4                   	hlt    
 8048512:	90                   	nop
 8048513:	90                   	nop
 8048514:	90                   	nop
 8048515:	90                   	nop
 8048516:	90                   	nop
 8048517:	90                   	nop
 8048518:	90                   	nop
 8048519:	90                   	nop
 804851a:	90                   	nop
 804851b:	90                   	nop
 804851c:	90                   	nop
 804851d:	90                   	nop
 804851e:	90                   	nop
 804851f:	90                   	nop

08048520 <__do_global_dtors_aux>:
 8048520:	55                   	push   %ebp
 8048521:	89 e5                	mov    %esp,%ebp
 8048523:	53                   	push   %ebx
 8048524:	83 ec 04             	sub    $0x4,%esp
 8048527:	80 3d 40 a0 04 08 00 	cmpb   $0x0,0x804a040
 804852e:	75 3f                	jne    804856f <__do_global_dtors_aux+0x4f>
 8048530:	a1 44 a0 04 08       	mov    0x804a044,%eax
 8048535:	bb 20 9f 04 08       	mov    $0x8049f20,%ebx
 804853a:	81 eb 1c 9f 04 08    	sub    $0x8049f1c,%ebx
 8048540:	c1 fb 02             	sar    $0x2,%ebx
 8048543:	83 eb 01             	sub    $0x1,%ebx
 8048546:	39 d8                	cmp    %ebx,%eax
 8048548:	73 1e                	jae    8048568 <__do_global_dtors_aux+0x48>
 804854a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048550:	83 c0 01             	add    $0x1,%eax
 8048553:	a3 44 a0 04 08       	mov    %eax,0x804a044
 8048558:	ff 14 85 1c 9f 04 08 	call   *0x8049f1c(,%eax,4)
 804855f:	a1 44 a0 04 08       	mov    0x804a044,%eax
 8048564:	39 d8                	cmp    %ebx,%eax
 8048566:	72 e8                	jb     8048550 <__do_global_dtors_aux+0x30>
 8048568:	c6 05 40 a0 04 08 01 	movb   $0x1,0x804a040
 804856f:	83 c4 04             	add    $0x4,%esp
 8048572:	5b                   	pop    %ebx
 8048573:	5d                   	pop    %ebp
 8048574:	c3                   	ret    
 8048575:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048580 <frame_dummy>:
 8048580:	55                   	push   %ebp
 8048581:	89 e5                	mov    %esp,%ebp
 8048583:	83 ec 18             	sub    $0x18,%esp
 8048586:	a1 24 9f 04 08       	mov    0x8049f24,%eax
 804858b:	85 c0                	test   %eax,%eax
 804858d:	74 12                	je     80485a1 <frame_dummy+0x21>
 804858f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048594:	85 c0                	test   %eax,%eax
 8048596:	74 09                	je     80485a1 <frame_dummy+0x21>
 8048598:	c7 04 24 24 9f 04 08 	movl   $0x8049f24,(%esp)
 804859f:	ff d0                	call   *%eax
 80485a1:	c9                   	leave  
 80485a2:	c3                   	ret    
 80485a3:	90                   	nop

080485a4 <main>:
#define FIRST_ZONE  0x10
#define MAX_ZONE_NUMBER  10


int main( int argc,  char** argv)
{
 80485a4:	55                   	push   %ebp
 80485a5:	89 e5                	mov    %esp,%ebp
 80485a7:	57                   	push   %edi
 80485a8:	53                   	push   %ebx
 80485a9:	83 e4 f0             	and    $0xfffffff0,%esp
 80485ac:	81 ec 60 01 00 00    	sub    $0x160,%esp
 80485b2:	8b 45 0c             	mov    0xc(%ebp),%eax
 80485b5:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80485b9:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80485bf:	89 84 24 5c 01 00 00 	mov    %eax,0x15c(%esp)
 80485c6:	31 c0                	xor    %eax,%eax
  struct  super_block  superblock;
  struct d_inode  root;
  struct direct  currentdir , predir;
  char buf[32];
  time_t  timer;    /* the orign define by c lib */
  if ( argc < 2 )
 80485c8:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 80485cc:	7f 18                	jg     80485e6 <main+0x42>
  {
    printf("缺少参数\n");
 80485ce:	c7 04 24 b0 8a 04 08 	movl   $0x8048ab0,(%esp)
 80485d5:	e8 b6 fe ff ff       	call   8048490 <puts@plt>
    exit(0);
 80485da:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80485e1:	e8 ca fe ff ff       	call   80484b0 <exit@plt>
  }
  fp = fopen (argv[1],"rb+");
 80485e6:	ba bd 8a 04 08       	mov    $0x8048abd,%edx
 80485eb:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80485ef:	83 c0 04             	add    $0x4,%eax
 80485f2:	8b 00                	mov    (%eax),%eax
 80485f4:	89 54 24 04          	mov    %edx,0x4(%esp)
 80485f8:	89 04 24             	mov    %eax,(%esp)
 80485fb:	e8 d0 fe ff ff       	call   80484d0 <fopen@plt>
 8048600:	89 84 24 b4 00 00 00 	mov    %eax,0xb4(%esp)
  if ( fp == NULL )
 8048607:	83 bc 24 b4 00 00 00 	cmpl   $0x0,0xb4(%esp)
 804860e:	00 
 804860f:	75 18                	jne    8048629 <main+0x85>
  {
     printf("不能打开文件\n");
 8048611:	c7 04 24 c1 8a 04 08 	movl   $0x8048ac1,(%esp)
 8048618:	e8 73 fe ff ff       	call   8048490 <puts@plt>
     exit(0);
 804861d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048624:	e8 87 fe ff ff       	call   80484b0 <exit@plt>
  }
  timer  = time(NULL);
 8048629:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048630:	e8 1b fe ff ff       	call   8048450 <time@plt>
 8048635:	89 84 24 b8 00 00 00 	mov    %eax,0xb8(%esp)
  /* init to zero */
  memset(buf, 0 , sizeof(buf) );
 804863c:	8d 84 24 3c 01 00 00 	lea    0x13c(%esp),%eax
 8048643:	89 c2                	mov    %eax,%edx
 8048645:	b9 00 00 00 00       	mov    $0x0,%ecx
 804864a:	b8 20 00 00 00       	mov    $0x20,%eax
 804864f:	89 c3                	mov    %eax,%ebx
 8048651:	83 e3 fc             	and    $0xfffffffc,%ebx
 8048654:	b8 00 00 00 00       	mov    $0x0,%eax
 8048659:	89 0c 02             	mov    %ecx,(%edx,%eax,1)
 804865c:	83 c0 04             	add    $0x4,%eax
 804865f:	39 d8                	cmp    %ebx,%eax
 8048661:	72 f6                	jb     8048659 <main+0xb5>
 8048663:	01 c2                	add    %eax,%edx
  memset(&superblock, 0 , sizeof(struct super_block));
 8048665:	8d 44 24 24          	lea    0x24(%esp),%eax
 8048669:	89 c3                	mov    %eax,%ebx
 804866b:	b8 00 00 00 00       	mov    $0x0,%eax
 8048670:	ba 13 00 00 00       	mov    $0x13,%edx
 8048675:	89 df                	mov    %ebx,%edi
 8048677:	89 d1                	mov    %edx,%ecx
 8048679:	f3 ab                	rep stos %eax,%es:(%edi)
  memset(&root, 0, sizeof(struct d_inode ));
 804867b:	8d 44 24 70          	lea    0x70(%esp),%eax
 804867f:	89 c3                	mov    %eax,%ebx
 8048681:	b8 00 00 00 00       	mov    $0x0,%eax
 8048686:	ba 10 00 00 00       	mov    $0x10,%edx
 804868b:	89 df                	mov    %ebx,%edi
 804868d:	89 d1                	mov    %edx,%ecx
 804868f:	f3 ab                	rep stos %eax,%es:(%edi)
  /* make a file system that compatible with minix3 system */
  superblock.s_ninodes = 0x300 ;
 8048691:	c7 44 24 24 00 03 00 	movl   $0x300,0x24(%esp)
 8048698:	00 
  superblock.s_nzones  = 0 ; 
 8048699:	66 c7 44 24 28 00 00 	movw   $0x0,0x28(%esp)
  superblock.s_magic   =  SUPER_BLOCK_V3;
 80486a0:	66 c7 44 24 3c 5a 4d 	movw   $0x4d5a,0x3c(%esp)
  superblock.s_imap_blocks  = 1 ;
 80486a7:	66 c7 44 24 2a 01 00 	movw   $0x1,0x2a(%esp)
  superblock.s_zmap_blocks  = 1 ;
 80486ae:	66 c7 44 24 2c 01 00 	movw   $0x1,0x2c(%esp)
  superblock.s_firstdatazone =FIRST_ZONE ;
 80486b5:	66 c7 44 24 2e 10 00 	movw   $0x10,0x2e(%esp)
  superblock.s_log_zone_size = 0;
 80486bc:	66 c7 44 24 30 00 00 	movw   $0x0,0x30(%esp)
  superblock.s_zones = 0x168;
 80486c3:	c7 44 24 38 68 01 00 	movl   $0x168,0x38(%esp)
 80486ca:	00 
  superblock.s_max_size = 0x7fffffff; 
 80486cb:	c7 44 24 34 ff ff ff 	movl   $0x7fffffff,0x34(%esp)
 80486d2:	7f 
  superblock.s_block_size = 0x1000;
 80486d3:	66 c7 44 24 40 00 10 	movw   $0x1000,0x40(%esp)
  fseek(fp, SUPER_BLOCK*SECT_SIZ,0);
 80486da:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80486e1:	00 
 80486e2:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
 80486e9:	00 
 80486ea:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
 80486f1:	89 04 24             	mov    %eax,(%esp)
 80486f4:	e8 77 fd ff ff       	call   8048470 <fseek@plt>
  fwrite(&superblock, sizeof(struct super_block) , 1,  fp );
 80486f9:	8d 44 24 24          	lea    0x24(%esp),%eax
 80486fd:	8b 94 24 b4 00 00 00 	mov    0xb4(%esp),%edx
 8048704:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048708:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804870f:	00 
 8048710:	c7 44 24 04 4c 00 00 	movl   $0x4c,0x4(%esp)
 8048717:	00 
 8048718:	89 04 24             	mov    %eax,(%esp)
 804871b:	e8 60 fd ff ff       	call   8048480 <fwrite@plt>
  
  /*  make root inode */
  root.d_mode = ROOT_DIR_TYPE ;
 8048720:	66 c7 44 24 70 ff 41 	movw   $0x41ff,0x70(%esp)
  root.d_nlinks = 0x2;
 8048727:	66 c7 44 24 72 02 00 	movw   $0x2,0x72(%esp)
  root.d_uid = 2 ;
 804872e:	66 c7 44 24 74 02 00 	movw   $0x2,0x74(%esp)
  root.d_gid = 2;
 8048735:	66 c7 44 24 76 02 00 	movw   $0x2,0x76(%esp)
  root.d_size =0x80;
 804873c:	c7 44 24 78 80 00 00 	movl   $0x80,0x78(%esp)
 8048743:	00 
  root.d_atime = 0;
 8048744:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%esp)
 804874b:	00 
  root.d_mtime = timer;
 804874c:	8b 84 24 b8 00 00 00 	mov    0xb8(%esp),%eax
 8048753:	89 84 24 80 00 00 00 	mov    %eax,0x80(%esp)
  root.d_ctime = 0;
 804875a:	c7 84 24 84 00 00 00 	movl   $0x0,0x84(%esp)
 8048761:	00 00 00 00 
  for ( i = 0 ; i < MAX_ZONE_NUMBER ; i++ )
 8048765:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%esp)
 804876c:	00 00 00 00 
 8048770:	eb 1a                	jmp    804878c <main+0x1e8>
  {
      root.d_zone[i] = 0 ;
 8048772:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 8048779:	83 c0 04             	add    $0x4,%eax
 804877c:	c7 44 84 78 00 00 00 	movl   $0x0,0x78(%esp,%eax,4)
 8048783:	00 
  root.d_gid = 2;
  root.d_size =0x80;
  root.d_atime = 0;
  root.d_mtime = timer;
  root.d_ctime = 0;
  for ( i = 0 ; i < MAX_ZONE_NUMBER ; i++ )
 8048784:	83 84 24 b0 00 00 00 	addl   $0x1,0xb0(%esp)
 804878b:	01 
 804878c:	83 bc 24 b0 00 00 00 	cmpl   $0x9,0xb0(%esp)
 8048793:	09 
 8048794:	7e dc                	jle    8048772 <main+0x1ce>
  {
      root.d_zone[i] = 0 ;
  } 
  root.d_zone[0] = FIRST_ZONE ;
 8048796:	c7 84 24 88 00 00 00 	movl   $0x10,0x88(%esp)
 804879d:	10 00 00 00 
  fseek(fp, (SUPER_BLOCK+2)*BLOCK_SIZ , 0);
 80487a1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80487a8:	00 
 80487a9:	c7 44 24 04 00 40 00 	movl   $0x4000,0x4(%esp)
 80487b0:	00 
 80487b1:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
 80487b8:	89 04 24             	mov    %eax,(%esp)
 80487bb:	e8 b0 fc ff ff       	call   8048470 <fseek@plt>
  fwrite(&root, sizeof(struct d_inode) , 1, fp);
 80487c0:	8d 44 24 70          	lea    0x70(%esp),%eax
 80487c4:	8b 94 24 b4 00 00 00 	mov    0xb4(%esp),%edx
 80487cb:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80487cf:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 80487d6:	00 
 80487d7:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 80487de:	00 
 80487df:	89 04 24             	mov    %eax,(%esp)
 80487e2:	e8 99 fc ff ff       	call   8048480 <fwrite@plt>

  /* make inode map and zone map   */
  fseek(fp, (SUPER_BLOCK)*BLOCK_SIZ, 0);
 80487e7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80487ee:	00 
 80487ef:	c7 44 24 04 00 20 00 	movl   $0x2000,0x4(%esp)
 80487f6:	00 
 80487f7:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
 80487fe:	89 04 24             	mov    %eax,(%esp)
 8048801:	e8 6a fc ff ff       	call   8048470 <fseek@plt>
  buf[0] = 3;
 8048806:	c6 84 24 3c 01 00 00 	movb   $0x3,0x13c(%esp)
 804880d:	03 
  fwrite(buf,sizeof(buf) , 1, fp );
 804880e:	8d 84 24 3c 01 00 00 	lea    0x13c(%esp),%eax
 8048815:	8b 94 24 b4 00 00 00 	mov    0xb4(%esp),%edx
 804881c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048820:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8048827:	00 
 8048828:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
 804882f:	00 
 8048830:	89 04 24             	mov    %eax,(%esp)
 8048833:	e8 48 fc ff ff       	call   8048480 <fwrite@plt>
  fseek(fp, (SUPER_BLOCK+1)*BLOCK_SIZ, 0);
 8048838:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804883f:	00 
 8048840:	c7 44 24 04 00 30 00 	movl   $0x3000,0x4(%esp)
 8048847:	00 
 8048848:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
 804884f:	89 04 24             	mov    %eax,(%esp)
 8048852:	e8 19 fc ff ff       	call   8048470 <fseek@plt>
  fwrite(buf , sizeof(buf) , 1 , fp );
 8048857:	8d 84 24 3c 01 00 00 	lea    0x13c(%esp),%eax
 804885e:	8b 94 24 b4 00 00 00 	mov    0xb4(%esp),%edx
 8048865:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048869:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8048870:	00 
 8048871:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
 8048878:	00 
 8048879:	89 04 24             	mov    %eax,(%esp)
 804887c:	e8 ff fb ff ff       	call   8048480 <fwrite@plt>
  /*  make directory item */
  currentdir.d_ino = 1 ;
 8048881:	c7 84 24 bc 00 00 00 	movl   $0x1,0xbc(%esp)
 8048888:	01 00 00 00 
  strncpy(currentdir.d_name, ".", sizeof(currentdir.d_name));
 804888c:	b8 d4 8a 04 08       	mov    $0x8048ad4,%eax
 8048891:	c7 44 24 08 3c 00 00 	movl   $0x3c,0x8(%esp)
 8048898:	00 
 8048899:	89 44 24 04          	mov    %eax,0x4(%esp)
 804889d:	8d 84 24 bc 00 00 00 	lea    0xbc(%esp),%eax
 80488a4:	83 c0 04             	add    $0x4,%eax
 80488a7:	89 04 24             	mov    %eax,(%esp)
 80488aa:	e8 31 fc ff ff       	call   80484e0 <strncpy@plt>
  predir.d_ino = 1 ; 
 80488af:	c7 84 24 fc 00 00 00 	movl   $0x1,0xfc(%esp)
 80488b6:	01 00 00 00 
  strncpy(predir.d_name, "..", sizeof(predir.d_name));
 80488ba:	b8 d6 8a 04 08       	mov    $0x8048ad6,%eax
 80488bf:	c7 44 24 08 3c 00 00 	movl   $0x3c,0x8(%esp)
 80488c6:	00 
 80488c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80488cb:	8d 84 24 fc 00 00 00 	lea    0xfc(%esp),%eax
 80488d2:	83 c0 04             	add    $0x4,%eax
 80488d5:	89 04 24             	mov    %eax,(%esp)
 80488d8:	e8 03 fc ff ff       	call   80484e0 <strncpy@plt>
  fseek(fp, FIRST_ZONE*BLOCK_SIZ, 0);
 80488dd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80488e4:	00 
 80488e5:	c7 44 24 04 00 00 01 	movl   $0x10000,0x4(%esp)
 80488ec:	00 
 80488ed:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
 80488f4:	89 04 24             	mov    %eax,(%esp)
 80488f7:	e8 74 fb ff ff       	call   8048470 <fseek@plt>
  fwrite(&currentdir ,  sizeof(struct direct) , 1 ,fp);
 80488fc:	8d 84 24 bc 00 00 00 	lea    0xbc(%esp),%eax
 8048903:	8b 94 24 b4 00 00 00 	mov    0xb4(%esp),%edx
 804890a:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804890e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8048915:	00 
 8048916:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 804891d:	00 
 804891e:	89 04 24             	mov    %eax,(%esp)
 8048921:	e8 5a fb ff ff       	call   8048480 <fwrite@plt>
  fwrite(&predir , sizeof(struct direct) , 1 , fp);
 8048926:	8d 84 24 fc 00 00 00 	lea    0xfc(%esp),%eax
 804892d:	8b 94 24 b4 00 00 00 	mov    0xb4(%esp),%edx
 8048934:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048938:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804893f:	00 
 8048940:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 8048947:	00 
 8048948:	89 04 24             	mov    %eax,(%esp)
 804894b:	e8 30 fb ff ff       	call   8048480 <fwrite@plt>
  buf[0] =  0x2f;
 8048950:	c6 84 24 3c 01 00 00 	movb   $0x2f,0x13c(%esp)
 8048957:	2f 
  buf[1] = 0x1f;
 8048958:	c6 84 24 3d 01 00 00 	movb   $0x1f,0x13d(%esp)
 804895f:	1f 
  fseek(fp, 0x167ffe, 0);
 8048960:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048967:	00 
 8048968:	c7 44 24 04 fe 7f 16 	movl   $0x167ffe,0x4(%esp)
 804896f:	00 
 8048970:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
 8048977:	89 04 24             	mov    %eax,(%esp)
 804897a:	e8 f1 fa ff ff       	call   8048470 <fseek@plt>
  fwrite(buf, 2, 1,  fp);
 804897f:	8d 84 24 3c 01 00 00 	lea    0x13c(%esp),%eax
 8048986:	8b 94 24 b4 00 00 00 	mov    0xb4(%esp),%edx
 804898d:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048991:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8048998:	00 
 8048999:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 80489a0:	00 
 80489a1:	89 04 24             	mov    %eax,(%esp)
 80489a4:	e8 d7 fa ff ff       	call   8048480 <fwrite@plt>
  fclose(fp);
 80489a9:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
 80489b0:	89 04 24             	mov    %eax,(%esp)
 80489b3:	e8 88 fa ff ff       	call   8048440 <fclose@plt>
  return 0;
 80489b8:	b8 00 00 00 00       	mov    $0x0,%eax
}
 80489bd:	8b 94 24 5c 01 00 00 	mov    0x15c(%esp),%edx
 80489c4:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 80489cb:	74 05                	je     80489d2 <main+0x42e>
 80489cd:	e8 8e fa ff ff       	call   8048460 <__stack_chk_fail@plt>
 80489d2:	8d 65 f8             	lea    -0x8(%ebp),%esp
 80489d5:	5b                   	pop    %ebx
 80489d6:	5f                   	pop    %edi
 80489d7:	5d                   	pop    %ebp
 80489d8:	c3                   	ret    
 80489d9:	90                   	nop
 80489da:	90                   	nop
 80489db:	90                   	nop
 80489dc:	90                   	nop
 80489dd:	90                   	nop
 80489de:	90                   	nop
 80489df:	90                   	nop

080489e0 <__libc_csu_init>:
 80489e0:	55                   	push   %ebp
 80489e1:	57                   	push   %edi
 80489e2:	56                   	push   %esi
 80489e3:	53                   	push   %ebx
 80489e4:	e8 69 00 00 00       	call   8048a52 <__i686.get_pc_thunk.bx>
 80489e9:	81 c3 0b 16 00 00    	add    $0x160b,%ebx
 80489ef:	83 ec 1c             	sub    $0x1c,%esp
 80489f2:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80489f6:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 80489fc:	e8 f3 f9 ff ff       	call   80483f4 <_init>
 8048a01:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8048a07:	29 c7                	sub    %eax,%edi
 8048a09:	c1 ff 02             	sar    $0x2,%edi
 8048a0c:	85 ff                	test   %edi,%edi
 8048a0e:	74 29                	je     8048a39 <__libc_csu_init+0x59>
 8048a10:	31 f6                	xor    %esi,%esi
 8048a12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048a18:	8b 44 24 38          	mov    0x38(%esp),%eax
 8048a1c:	89 2c 24             	mov    %ebp,(%esp)
 8048a1f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a23:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048a27:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048a2b:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 8048a32:	83 c6 01             	add    $0x1,%esi
 8048a35:	39 fe                	cmp    %edi,%esi
 8048a37:	75 df                	jne    8048a18 <__libc_csu_init+0x38>
 8048a39:	83 c4 1c             	add    $0x1c,%esp
 8048a3c:	5b                   	pop    %ebx
 8048a3d:	5e                   	pop    %esi
 8048a3e:	5f                   	pop    %edi
 8048a3f:	5d                   	pop    %ebp
 8048a40:	c3                   	ret    
 8048a41:	eb 0d                	jmp    8048a50 <__libc_csu_fini>
 8048a43:	90                   	nop
 8048a44:	90                   	nop
 8048a45:	90                   	nop
 8048a46:	90                   	nop
 8048a47:	90                   	nop
 8048a48:	90                   	nop
 8048a49:	90                   	nop
 8048a4a:	90                   	nop
 8048a4b:	90                   	nop
 8048a4c:	90                   	nop
 8048a4d:	90                   	nop
 8048a4e:	90                   	nop
 8048a4f:	90                   	nop

08048a50 <__libc_csu_fini>:
 8048a50:	f3 c3                	repz ret 

08048a52 <__i686.get_pc_thunk.bx>:
 8048a52:	8b 1c 24             	mov    (%esp),%ebx
 8048a55:	c3                   	ret    
 8048a56:	90                   	nop
 8048a57:	90                   	nop
 8048a58:	90                   	nop
 8048a59:	90                   	nop
 8048a5a:	90                   	nop
 8048a5b:	90                   	nop
 8048a5c:	90                   	nop
 8048a5d:	90                   	nop
 8048a5e:	90                   	nop
 8048a5f:	90                   	nop

08048a60 <__do_global_ctors_aux>:
 8048a60:	55                   	push   %ebp
 8048a61:	89 e5                	mov    %esp,%ebp
 8048a63:	53                   	push   %ebx
 8048a64:	83 ec 04             	sub    $0x4,%esp
 8048a67:	a1 14 9f 04 08       	mov    0x8049f14,%eax
 8048a6c:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048a6f:	74 13                	je     8048a84 <__do_global_ctors_aux+0x24>
 8048a71:	bb 14 9f 04 08       	mov    $0x8049f14,%ebx
 8048a76:	66 90                	xchg   %ax,%ax
 8048a78:	83 eb 04             	sub    $0x4,%ebx
 8048a7b:	ff d0                	call   *%eax
 8048a7d:	8b 03                	mov    (%ebx),%eax
 8048a7f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048a82:	75 f4                	jne    8048a78 <__do_global_ctors_aux+0x18>
 8048a84:	83 c4 04             	add    $0x4,%esp
 8048a87:	5b                   	pop    %ebx
 8048a88:	5d                   	pop    %ebp
 8048a89:	c3                   	ret    
 8048a8a:	90                   	nop
 8048a8b:	90                   	nop

Disassembly of section .fini:

08048a8c <_fini>:
 8048a8c:	53                   	push   %ebx
 8048a8d:	83 ec 08             	sub    $0x8,%esp
 8048a90:	e8 00 00 00 00       	call   8048a95 <_fini+0x9>
 8048a95:	5b                   	pop    %ebx
 8048a96:	81 c3 5f 15 00 00    	add    $0x155f,%ebx
 8048a9c:	e8 7f fa ff ff       	call   8048520 <__do_global_dtors_aux>
 8048aa1:	83 c4 08             	add    $0x8,%esp
 8048aa4:	5b                   	pop    %ebx
 8048aa5:	c3                   	ret    

Disassembly of section .rodata:

08048aa8 <_fp_hw>:
 8048aa8:	03 00                	add    (%eax),%eax
	...

08048aac <_IO_stdin_used>:
 8048aac:	01 00                	add    %eax,(%eax)
 8048aae:	02 00                	add    (%eax),%al
 8048ab0:	e7 bc                	out    %eax,$0xbc
 8048ab2:	ba e5 b0 91 e5       	mov    $0xe591b0e5,%edx
 8048ab7:	8f 82 e6 95 b0 00    	popl   0xb095e6(%edx)
 8048abd:	72 62                	jb     8048b21 <_IO_stdin_used+0x75>
 8048abf:	2b 00                	sub    (%eax),%eax
 8048ac1:	e4 b8                	in     $0xb8,%al
 8048ac3:	8d                   	(bad)  
 8048ac4:	e8 83 bd e6 89       	call   91eb484c <_end+0x89e69e14>
 8048ac9:	93                   	xchg   %eax,%ebx
 8048aca:	e5 bc                	in     $0xbc,%eax
 8048acc:	80 e6 96             	and    $0x96,%dh
 8048acf:	87 e4                	xchg   %esp,%esp
 8048ad1:	bb b6 00 2e 00       	mov    $0x2e00b6,%ebx
 8048ad6:	2e                   	cs
 8048ad7:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

08048adc <.eh_frame_hdr>:
 8048adc:	01 1b                	add    %ebx,(%ebx)
 8048ade:	03 3b                	add    (%ebx),%edi
 8048ae0:	30 00                	xor    %al,(%eax)
 8048ae2:	00 00                	add    %al,(%eax)
 8048ae4:	05 00 00 00 54       	add    $0x54000000,%eax
 8048ae9:	f9                   	stc    
 8048aea:	ff                   	(bad)  
 8048aeb:	ff 4c 00 00          	decl   0x0(%eax,%eax,1)
 8048aef:	00 c8                	add    %cl,%al
 8048af1:	fa                   	cli    
 8048af2:	ff                   	(bad)  
 8048af3:	ff 70 00             	pushl  0x0(%eax)
 8048af6:	00 00                	add    %al,(%eax)
 8048af8:	04 ff                	add    $0xff,%al
 8048afa:	ff                   	(bad)  
 8048afb:	ff 9c 00 00 00 74 ff 	lcall  *-0x8c0000(%eax,%eax,1)
 8048b02:	ff                   	(bad)  
 8048b03:	ff d8                	lcall  *<internal disassembler error>
 8048b05:	00 00                	add    %al,(%eax)
 8048b07:	00 76 ff             	add    %dh,-0x1(%esi)
 8048b0a:	ff                   	(bad)  
 8048b0b:	ff ec                	ljmp   *<internal disassembler error>
 8048b0d:	00 00                	add    %al,(%eax)
	...

Disassembly of section .eh_frame:

08048b10 <__FRAME_END__-0xcc>:
 8048b10:	14 00                	adc    $0x0,%al
 8048b12:	00 00                	add    %al,(%eax)
 8048b14:	00 00                	add    %al,(%eax)
 8048b16:	00 00                	add    %al,(%eax)
 8048b18:	01 7a 52             	add    %edi,0x52(%edx)
 8048b1b:	00 01                	add    %al,(%ecx)
 8048b1d:	7c 08                	jl     8048b27 <_IO_stdin_used+0x7b>
 8048b1f:	01 1b                	add    %ebx,(%ebx)
 8048b21:	0c 04                	or     $0x4,%al
 8048b23:	04 88                	add    $0x88,%al
 8048b25:	01 00                	add    %eax,(%eax)
 8048b27:	00 20                	add    %ah,(%eax)
 8048b29:	00 00                	add    %al,(%eax)
 8048b2b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8048b2e:	00 00                	add    %al,(%eax)
 8048b30:	00 f9                	add    %bh,%cl
 8048b32:	ff                   	(bad)  
 8048b33:	ff c0                	inc    %eax
 8048b35:	00 00                	add    %al,(%eax)
 8048b37:	00 00                	add    %al,(%eax)
 8048b39:	0e                   	push   %cs
 8048b3a:	08 46 0e             	or     %al,0xe(%esi)
 8048b3d:	0c 4a                	or     $0x4a,%al
 8048b3f:	0f 0b                	ud2    
 8048b41:	74 04                	je     8048b47 <_IO_stdin_used+0x9b>
 8048b43:	78 00                	js     8048b45 <_IO_stdin_used+0x99>
 8048b45:	3f                   	aas    
 8048b46:	1a 3b                	sbb    (%ebx),%bh
 8048b48:	2a 32                	sub    (%edx),%dh
 8048b4a:	24 22                	and    $0x22,%al
 8048b4c:	28 00                	sub    %al,(%eax)
 8048b4e:	00 00                	add    %al,(%eax)
 8048b50:	40                   	inc    %eax
 8048b51:	00 00                	add    %al,(%eax)
 8048b53:	00 50 fa             	add    %dl,-0x6(%eax)
 8048b56:	ff                   	(bad)  
 8048b57:	ff 35 04 00 00 00    	pushl  0x4
 8048b5d:	41                   	inc    %ecx
 8048b5e:	0e                   	push   %cs
 8048b5f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048b65:	67 83 04 87          	addl   $0xffffff87,(%si)
 8048b69:	03 03                	add    (%ebx),%eax
 8048b6b:	08 04 c3             	or     %al,(%ebx,%eax,8)
 8048b6e:	41                   	inc    %ecx
 8048b6f:	c7 41 0c 04 04 c5 00 	movl   $0xc50404,0xc(%ecx)
 8048b76:	00 00                	add    %al,(%eax)
 8048b78:	38 00                	cmp    %al,(%eax)
 8048b7a:	00 00                	add    %al,(%eax)
 8048b7c:	6c                   	insb   (%dx),%es:(%edi)
 8048b7d:	00 00                	add    %al,(%eax)
 8048b7f:	00 60 fe             	add    %ah,-0x2(%eax)
 8048b82:	ff                   	(bad)  
 8048b83:	ff 61 00             	jmp    *0x0(%ecx)
 8048b86:	00 00                	add    %al,(%eax)
 8048b88:	00 41 0e             	add    %al,0xe(%ecx)
 8048b8b:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8048b91:	87 03                	xchg   %eax,(%ebx)
 8048b93:	41                   	inc    %ecx
 8048b94:	0e                   	push   %cs
 8048b95:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8048b9b:	83 05 4e 0e 30 02 4a 	addl   $0x4a,0x2300e4e
 8048ba2:	0e                   	push   %cs
 8048ba3:	14 41                	adc    $0x41,%al
 8048ba5:	0e                   	push   %cs
 8048ba6:	10 c3                	adc    %al,%bl
 8048ba8:	41                   	inc    %ecx
 8048ba9:	0e                   	push   %cs
 8048baa:	0c c6                	or     $0xc6,%al
 8048bac:	41                   	inc    %ecx
 8048bad:	0e                   	push   %cs
 8048bae:	08 c7                	or     %al,%bh
 8048bb0:	41                   	inc    %ecx
 8048bb1:	0e                   	push   %cs
 8048bb2:	04 c5                	add    $0xc5,%al
 8048bb4:	10 00                	adc    %al,(%eax)
 8048bb6:	00 00                	add    %al,(%eax)
 8048bb8:	a8 00                	test   $0x0,%al
 8048bba:	00 00                	add    %al,(%eax)
 8048bbc:	94                   	xchg   %eax,%esp
 8048bbd:	fe                   	(bad)  
 8048bbe:	ff                   	(bad)  
 8048bbf:	ff 02                	incl   (%edx)
 8048bc1:	00 00                	add    %al,(%eax)
 8048bc3:	00 00                	add    %al,(%eax)
 8048bc5:	00 00                	add    %al,(%eax)
 8048bc7:	00 10                	add    %dl,(%eax)
 8048bc9:	00 00                	add    %al,(%eax)
 8048bcb:	00 bc 00 00 00 82 fe 	add    %bh,-0x17e0000(%eax,%eax,1)
 8048bd2:	ff                   	(bad)  
 8048bd3:	ff 04 00             	incl   (%eax,%eax,1)
 8048bd6:	00 00                	add    %al,(%eax)
 8048bd8:	00 00                	add    %al,(%eax)
	...

08048bdc <__FRAME_END__>:
 8048bdc:	00 00                	add    %al,(%eax)
	...

Disassembly of section .ctors:

08049f14 <__CTOR_LIST__>:
 8049f14:	ff                   	(bad)  
 8049f15:	ff                   	(bad)  
 8049f16:	ff                   	(bad)  
 8049f17:	ff 00                	incl   (%eax)

08049f18 <__CTOR_END__>:
 8049f18:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dtors:

08049f1c <__DTOR_LIST__>:
 8049f1c:	ff                   	(bad)  
 8049f1d:	ff                   	(bad)  
 8049f1e:	ff                   	(bad)  
 8049f1f:	ff 00                	incl   (%eax)

08049f20 <__DTOR_END__>:
 8049f20:	00 00                	add    %al,(%eax)
	...

Disassembly of section .jcr:

08049f24 <__JCR_END__>:
 8049f24:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

08049f28 <_DYNAMIC>:
 8049f28:	01 00                	add    %eax,(%eax)
 8049f2a:	00 00                	add    %al,(%eax)
 8049f2c:	10 00                	adc    %al,(%eax)
 8049f2e:	00 00                	add    %al,(%eax)
 8049f30:	0c 00                	or     $0x0,%al
 8049f32:	00 00                	add    %al,(%eax)
 8049f34:	f4                   	hlt    
 8049f35:	83 04 08 0d          	addl   $0xd,(%eax,%ecx,1)
 8049f39:	00 00                	add    %al,(%eax)
 8049f3b:	00 8c 8a 04 08 f5 fe 	add    %cl,-0x10af7fc(%edx,%ecx,4)
 8049f42:	ff 6f ac             	ljmp   *-0x54(%edi)
 8049f45:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 8049f4c:	9c                   	pushf  
 8049f4d:	82                   	(bad)  
 8049f4e:	04 08                	add    $0x8,%al
 8049f50:	06                   	push   %es
 8049f51:	00 00                	add    %al,(%eax)
 8049f53:	00 cc                	add    %cl,%ah
 8049f55:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 8049f5c:	9b                   	fwait
 8049f5d:	00 00                	add    %al,(%eax)
 8049f5f:	00 0b                	add    %cl,(%ebx)
 8049f61:	00 00                	add    %al,(%eax)
 8049f63:	00 10                	add    %dl,(%eax)
 8049f65:	00 00                	add    %al,(%eax)
 8049f67:	00 15 00 00 00 00    	add    %dl,0x0
 8049f6d:	00 00                	add    %al,(%eax)
 8049f6f:	00 03                	add    %al,(%ebx)
 8049f71:	00 00                	add    %al,(%eax)
 8049f73:	00 f4                	add    %dh,%ah
 8049f75:	9f                   	lahf   
 8049f76:	04 08                	add    $0x8,%al
 8049f78:	02 00                	add    (%eax),%al
 8049f7a:	00 00                	add    %al,(%eax)
 8049f7c:	58                   	pop    %eax
 8049f7d:	00 00                	add    %al,(%eax)
 8049f7f:	00 14 00             	add    %dl,(%eax,%eax,1)
 8049f82:	00 00                	add    %al,(%eax)
 8049f84:	11 00                	adc    %eax,(%eax)
 8049f86:	00 00                	add    %al,(%eax)
 8049f88:	17                   	pop    %ss
 8049f89:	00 00                	add    %al,(%eax)
 8049f8b:	00 9c 83 04 08 11 00 	add    %bl,0x110804(%ebx,%eax,4)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	94                   	xchg   %eax,%esp
 8049f95:	83 04 08 12          	addl   $0x12,(%eax,%ecx,1)
 8049f99:	00 00                	add    %al,(%eax)
 8049f9b:	00 08                	add    %cl,(%eax)
 8049f9d:	00 00                	add    %al,(%eax)
 8049f9f:	00 13                	add    %dl,(%ebx)
 8049fa1:	00 00                	add    %al,(%eax)
 8049fa3:	00 08                	add    %cl,(%eax)
 8049fa5:	00 00                	add    %al,(%eax)
 8049fa7:	00 fe                	add    %bh,%dh
 8049fa9:	ff                   	(bad)  
 8049faa:	ff 6f 54             	ljmp   *0x54(%edi)
 8049fad:	83 04 08 ff          	addl   $0xffffffff,(%eax,%ecx,1)
 8049fb1:	ff                   	(bad)  
 8049fb2:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fb5:	00 00                	add    %al,(%eax)
 8049fb7:	00 f0                	add    %dh,%al
 8049fb9:	ff                   	(bad)  
 8049fba:	ff 6f 38             	ljmp   *0x38(%edi)
 8049fbd:	83 04 08 00          	addl   $0x0,(%eax,%ecx,1)
	...

Disassembly of section .got:

08049ff0 <.got>:
 8049ff0:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

08049ff4 <_GLOBAL_OFFSET_TABLE_>:
 8049ff4:	28 9f 04 08 00 00    	sub    %bl,0x804(%edi)
 8049ffa:	00 00                	add    %al,(%eax)
 8049ffc:	00 00                	add    %al,(%eax)
 8049ffe:	00 00                	add    %al,(%eax)
 804a000:	46                   	inc    %esi
 804a001:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a004:	56                   	push   %esi
 804a005:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a008:	66                   	data16
 804a009:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a00c:	76 84                	jbe    8049f92 <_DYNAMIC+0x6a>
 804a00e:	04 08                	add    $0x8,%al
 804a010:	86 84 04 08 96 84 04 	xchg   %al,0x4849608(%esp,%eax,1)
 804a017:	08 a6 84 04 08 b6    	or     %ah,-0x49f7fb7c(%esi)
 804a01d:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a020:	c6 84 04 08 d6 84 04 	movb   $0x8,0x484d608(%esp,%eax,1)
 804a027:	08 
 804a028:	e6 84                	out    %al,$0x84
 804a02a:	04 08                	add    $0x8,%al

Disassembly of section .data:

0804a02c <__data_start>:
 804a02c:	00 00                	add    %al,(%eax)
	...

0804a030 <__dso_handle>:
 804a030:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

0804a040 <completed.6159>:
 804a040:	00 00                	add    %al,(%eax)
	...

0804a044 <dtor_idx.6161>:
	...

0804a060 <inode>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x804837c>
   a:	74 75                	je     81 <_init-0x8048373>
   c:	2f                   	das    
   d:	4c                   	dec    %esp
   e:	69 6e 61 72 6f 20 34 	imul   $0x34206f72,0x61(%esi),%ebp
  15:	2e 36 2e 33 2d 31 75 	cs ss xor %cs:%ss:0x75627531,%ebp
  1c:	62 75 
  1e:	6e                   	outsb  %ds:(%esi),(%dx)
  1f:	74 75                	je     96 <_init-0x804835e>
  21:	35 29 20 34 2e       	xor    $0x2e342029,%eax
  26:	36 2e 33 00          	ss xor %cs:%ss:(%eax),%eax

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	1c 00                	sbb    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	00 00                	add    %al,(%eax)
   8:	00 00                	add    %al,(%eax)
   a:	04 00                	add    $0x0,%al
   c:	00 00                	add    %al,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  11:	85 04 08             	test   %eax,(%eax,%ecx,1)
  14:	35 04 00 00 00       	xor    $0x4,%eax
  19:	00 00                	add    %al,(%eax)
  1b:	00 00                	add    %al,(%eax)
  1d:	00 00                	add    %al,(%eax)
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	47                   	inc    %edi
   1:	07                   	pop    %es
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	00 00                	add    %al,(%eax)
   8:	00 00                	add    %al,(%eax)
   a:	04 01                	add    $0x1,%al
   c:	17                   	pop    %ss
   d:	03 00                	add    (%eax),%eax
   f:	00 01                	add    %al,(%ecx)
  11:	9e                   	sahf   
  12:	00 00                	add    %al,(%eax)
  14:	00 b3 00 00 00 a4    	add    %dh,-0x5c000000(%ebx)
  1a:	85 04 08             	test   %eax,(%eax,%ecx,1)
  1d:	d9 89 04 08 00 00    	(bad)  0x804(%ecx)
  23:	00 00                	add    %al,(%eax)
  25:	02 30                	add    (%eax),%dh
  27:	00 00                	add    %al,(%eax)
  29:	00 02                	add    %al,(%edx)
  2b:	d4 30                	aam    $0x30
  2d:	00 00                	add    %al,(%eax)
  2f:	00 03                	add    %al,(%ebx)
  31:	04 07                	add    $0x7,%al
  33:	7e 00                	jle    35 <_init-0x80483bf>
  35:	00 00                	add    %al,(%eax)
  37:	03 01                	add    (%ecx),%eax
  39:	08 c3                	or     %al,%bl
  3b:	02 00                	add    (%eax),%al
  3d:	00 03                	add    %al,(%ebx)
  3f:	02 07                	add    (%edi),%al
  41:	e0 01                	loopne 44 <_init-0x80483b0>
  43:	00 00                	add    %al,(%eax)
  45:	03 04 07             	add    (%edi,%eax,1),%eax
  48:	79 00                	jns    4a <_init-0x80483aa>
  4a:	00 00                	add    %al,(%eax)
  4c:	03 01                	add    (%ecx),%eax
  4e:	06                   	push   %es
  4f:	c5 02                	lds    (%edx),%eax
  51:	00 00                	add    %al,(%eax)
  53:	03 02                	add    (%edx),%eax
  55:	05 e4 02 00 00       	add    $0x2e4,%eax
  5a:	04 04                	add    $0x4,%al
  5c:	05 69 6e 74 00       	add    $0x746e69,%eax
  61:	03 08                	add    (%eax),%ecx
  63:	05 a5 00 00 00       	add    $0xa5,%eax
  68:	03 08                	add    (%eax),%ecx
  6a:	07                   	pop    %es
  6b:	74 00                	je     6d <_init-0x8048387>
  6d:	00 00                	add    %al,(%eax)
  6f:	02 33                	add    (%ebx),%dh
  71:	01 00                	add    %eax,(%eax)
  73:	00 03                	add    %al,(%ebx)
  75:	38 61 00             	cmp    %ah,0x0(%ecx)
  78:	00 00                	add    %al,(%eax)
  7a:	02 00                	add    (%eax),%al
  7c:	00 00                	add    %al,(%eax)
  7e:	00 03                	add    %al,(%ebx)
  80:	8d 85 00 00 00 03    	lea    0x3000000(%ebp),%eax
  86:	04 05                	add    $0x5,%al
  88:	aa                   	stos   %al,%es:(%edi)
  89:	00 00                	add    %al,(%eax)
  8b:	00 02                	add    %al,(%edx)
  8d:	31 03                	xor    %eax,(%ebx)
  8f:	00 00                	add    %al,(%eax)
  91:	03 8e 6f 00 00 00    	add    0x6f(%esi),%ecx
  97:	02 93 03 00 00 03    	add    0x3000003(%ebx),%dl
  9d:	95                   	xchg   %eax,%ebp
  9e:	85 00                	test   %eax,(%eax)
  a0:	00 00                	add    %al,(%eax)
  a2:	05 04 06 04 aa       	add    $0xaa040604,%eax
  a7:	00 00                	add    %al,(%eax)
  a9:	00 03                	add    %al,(%ebx)
  ab:	01 06                	add    %eax,(%esi)
  ad:	cc                   	int3   
  ae:	02 00                	add    (%eax),%al
  b0:	00 02                	add    %al,(%edx)
  b2:	87 02                	xchg   %eax,(%edx)
  b4:	00 00                	add    %al,(%eax)
  b6:	04 31                	add    $0x31,%al
  b8:	bc 00 00 00 07       	mov    $0x7000000,%esp
  bd:	83 02 00             	addl   $0x0,(%edx)
  c0:	00 94 05 11 01 7d 02 	add    %dl,0x27d0111(%ebp,%eax,1)
  c7:	00 00                	add    %al,(%eax)
  c9:	08 f9                	or     %bh,%cl
  cb:	00 00                	add    %al,(%eax)
  cd:	00 05 12 01 5a 00    	add    %al,0x5a0112
  d3:	00 00                	add    %al,(%eax)
  d5:	02 23                	add    (%ebx),%ah
  d7:	00 08                	add    %cl,(%eax)
  d9:	11 00                	adc    %eax,(%eax)
  db:	00 00                	add    %al,(%eax)
  dd:	05 17 01 a4 00       	add    $0xa40117,%eax
  e2:	00 00                	add    %al,(%eax)
  e4:	02 23                	add    (%ebx),%ah
  e6:	04 08                	add    $0x8,%al
  e8:	db 00                	fildl  (%eax)
  ea:	00 00                	add    %al,(%eax)
  ec:	05 18 01 a4 00       	add    $0xa40118,%eax
  f1:	00 00                	add    %al,(%eax)
  f3:	02 23                	add    (%ebx),%ah
  f5:	08 08                	or     %cl,(%eax)
  f7:	3b 03                	cmp    (%ebx),%eax
  f9:	00 00                	add    %al,(%eax)
  fb:	05 19 01 a4 00       	add    $0xa40119,%eax
 100:	00 00                	add    %al,(%eax)
 102:	02 23                	add    (%ebx),%ah
 104:	0c 08                	or     $0x8,%al
 106:	0f 04                	(bad)  
 108:	00 00                	add    %al,(%eax)
 10a:	05 1a 01 a4 00       	add    $0xa4011a,%eax
 10f:	00 00                	add    %al,(%eax)
 111:	02 23                	add    (%ebx),%ah
 113:	10 08                	adc    %cl,(%eax)
 115:	cc                   	int3   
 116:	01 00                	add    %eax,(%eax)
 118:	00 05 1b 01 a4 00    	add    %al,0xa4011b
 11e:	00 00                	add    %al,(%eax)
 120:	02 23                	add    (%ebx),%ah
 122:	14 08                	adc    $0x8,%al
 124:	54                   	push   %esp
 125:	02 00                	add    (%eax),%al
 127:	00 05 1c 01 a4 00    	add    %al,0xa4011c
 12d:	00 00                	add    %al,(%eax)
 12f:	02 23                	add    (%ebx),%ah
 131:	18 08                	sbb    %cl,(%eax)
 133:	5f                   	pop    %edi
 134:	00 00                	add    %al,(%eax)
 136:	00 05 1d 01 a4 00    	add    %al,0xa4011d
 13c:	00 00                	add    %al,(%eax)
 13e:	02 23                	add    (%ebx),%ah
 140:	1c 08                	sbb    $0x8,%al
 142:	00 01                	add    %al,(%ecx)
 144:	00 00                	add    %al,(%eax)
 146:	05 1e 01 a4 00       	add    $0xa4011e,%eax
 14b:	00 00                	add    %al,(%eax)
 14d:	02 23                	add    (%ebx),%ah
 14f:	20 08                	and    %cl,(%eax)
 151:	f3 01 00             	repz add %eax,(%eax)
 154:	00 05 20 01 a4 00    	add    %al,0xa40120
 15a:	00 00                	add    %al,(%eax)
 15c:	02 23                	add    (%ebx),%ah
 15e:	24 08                	and    $0x8,%al
 160:	cf                   	iret   
 161:	03 00                	add    (%eax),%eax
 163:	00 05 21 01 a4 00    	add    %al,0xa40121
 169:	00 00                	add    %al,(%eax)
 16b:	02 23                	add    (%ebx),%ah
 16d:	28 08                	sub    %cl,(%eax)
 16f:	49                   	dec    %ecx
 170:	03 00                	add    (%eax),%eax
 172:	00 05 22 01 a4 00    	add    %al,0xa40122
 178:	00 00                	add    %al,(%eax)
 17a:	02 23                	add    (%ebx),%ah
 17c:	2c 08                	sub    $0x8,%al
 17e:	9a 02 00 00 05 24 01 	lcall  $0x124,$0x5000002
 185:	bb 02 00 00 02       	mov    $0x2000002,%ebx
 18a:	23 30                	and    (%eax),%esi
 18c:	08 1e                	or     %bl,(%esi)
 18e:	00 00                	add    %al,(%eax)
 190:	00 05 26 01 c1 02    	add    %al,0x2c10126
 196:	00 00                	add    %al,(%eax)
 198:	02 23                	add    (%ebx),%ah
 19a:	34 08                	xor    $0x8,%al
 19c:	c8 00 00 00          	enter  $0x0,$0x0
 1a0:	05 28 01 5a 00       	add    $0x5a0128,%eax
 1a5:	00 00                	add    %al,(%eax)
 1a7:	02 23                	add    (%ebx),%ah
 1a9:	38 08                	cmp    %cl,(%eax)
 1ab:	1f                   	pop    %ds
 1ac:	02 00                	add    (%eax),%al
 1ae:	00 05 2c 01 5a 00    	add    %al,0x5a012c
 1b4:	00 00                	add    %al,(%eax)
 1b6:	02 23                	add    (%ebx),%ah
 1b8:	3c 08                	cmp    $0x8,%al
 1ba:	50                   	push   %eax
 1bb:	01 00                	add    %eax,(%eax)
 1bd:	00 05 2e 01 7a 00    	add    %al,0x7a012e
 1c3:	00 00                	add    %al,(%eax)
 1c5:	02 23                	add    (%ebx),%ah
 1c7:	40                   	inc    %eax
 1c8:	08 0c 01             	or     %cl,(%ecx,%eax,1)
 1cb:	00 00                	add    %al,(%eax)
 1cd:	05 32 01 3e 00       	add    $0x3e0132,%eax
 1d2:	00 00                	add    %al,(%eax)
 1d4:	02 23                	add    (%ebx),%ah
 1d6:	44                   	inc    %esp
 1d7:	08 f4                	or     %dh,%ah
 1d9:	02 00                	add    (%eax),%al
 1db:	00 05 33 01 4c 00    	add    %al,0x4c0133
 1e1:	00 00                	add    %al,(%eax)
 1e3:	02 23                	add    (%ebx),%ah
 1e5:	46                   	inc    %esi
 1e6:	08 44 00 00          	or     %al,0x0(%eax,%eax,1)
 1ea:	00 05 34 01 c7 02    	add    %al,0x2c70134
 1f0:	00 00                	add    %al,(%eax)
 1f2:	02 23                	add    (%ebx),%ah
 1f4:	47                   	inc    %edi
 1f5:	08 0e                	or     %cl,(%esi)
 1f7:	02 00                	add    (%eax),%al
 1f9:	00 05 38 01 d7 02    	add    %al,0x2d70138
 1ff:	00 00                	add    %al,(%eax)
 201:	02 23                	add    (%ebx),%ah
 203:	48                   	dec    %eax
 204:	08 54 01 00          	or     %dl,0x0(%ecx,%eax,1)
 208:	00 05 41 01 8c 00    	add    %al,0x8c0141
 20e:	00 00                	add    %al,(%eax)
 210:	02 23                	add    (%ebx),%ah
 212:	4c                   	dec    %esp
 213:	08 67 03             	or     %ah,0x3(%edi)
 216:	00 00                	add    %al,(%eax)
 218:	05 4a 01 a2 00       	add    $0xa2014a,%eax
 21d:	00 00                	add    %al,(%eax)
 21f:	02 23                	add    (%ebx),%ah
 221:	54                   	push   %esp
 222:	08 6e 03             	or     %ch,0x3(%esi)
 225:	00 00                	add    %al,(%eax)
 227:	05 4b 01 a2 00       	add    $0xa2014b,%eax
 22c:	00 00                	add    %al,(%eax)
 22e:	02 23                	add    (%ebx),%ah
 230:	58                   	pop    %eax
 231:	08 75 03             	or     %dh,0x3(%ebp)
 234:	00 00                	add    %al,(%eax)
 236:	05 4c 01 a2 00       	add    $0xa2014c,%eax
 23b:	00 00                	add    %al,(%eax)
 23d:	02 23                	add    (%ebx),%ah
 23f:	5c                   	pop    %esp
 240:	08 7c 03 00          	or     %bh,0x0(%ebx,%eax,1)
 244:	00 05 4d 01 a2 00    	add    %al,0xa2014d
 24a:	00 00                	add    %al,(%eax)
 24c:	02 23                	add    (%ebx),%ah
 24e:	60                   	pusha  
 24f:	08 83 03 00 00 05    	or     %al,0x5000003(%ebx)
 255:	4e                   	dec    %esi
 256:	01 25 00 00 00 02    	add    %esp,0x2000000
 25c:	23 64 08 d2          	and    -0x2e(%eax,%ecx,1),%esp
 260:	02 00                	add    (%eax),%al
 262:	00 05 50 01 5a 00    	add    %al,0x5a0150
 268:	00 00                	add    %al,(%eax)
 26a:	02 23                	add    (%ebx),%ah
 26c:	68 08 a2 03 00       	push   $0x3a208
 271:	00 05 52 01 dd 02    	add    %al,0x2dd0152
 277:	00 00                	add    %al,(%eax)
 279:	02 23                	add    (%ebx),%ah
 27b:	6c                   	insb   (%dx),%es:(%edi)
 27c:	00 09                	add    %cl,(%ecx)
 27e:	78 02                	js     282 <_init-0x8048172>
 280:	00 00                	add    %al,(%eax)
 282:	05 b6 0a 7c 01       	add    $0x17c0ab6,%eax
 287:	00 00                	add    %al,(%eax)
 289:	0c 05                	or     $0x5,%al
 28b:	bc bb 02 00 00       	mov    $0x2bb,%esp
 290:	0b 2b                	or     (%ebx),%ebp
 292:	03 00                	add    (%eax),%eax
 294:	00 05 bd bb 02 00    	add    %al,0x2bbbd
 29a:	00 02                	add    %al,(%edx)
 29c:	23 00                	and    (%eax),%eax
 29e:	0b da                	or     %edx,%ebx
 2a0:	01 00                	add    %eax,(%eax)
 2a2:	00 05 be c1 02 00    	add    %al,0x2c1be
 2a8:	00 02                	add    %al,(%edx)
 2aa:	23 04 0b             	and    (%ebx,%ecx,1),%eax
 2ad:	95                   	xchg   %eax,%ebp
 2ae:	02 00                	add    (%eax),%al
 2b0:	00 05 c2 5a 00 00    	add    %al,0x5ac2
 2b6:	00 02                	add    %al,(%edx)
 2b8:	23 08                	and    (%eax),%ecx
 2ba:	00 06                	add    %al,(%esi)
 2bc:	04 84                	add    $0x84,%al
 2be:	02 00                	add    (%eax),%al
 2c0:	00 06                	add    %al,(%esi)
 2c2:	04 bc                	add    $0xbc,%al
 2c4:	00 00                	add    %al,(%eax)
 2c6:	00 0c aa             	add    %cl,(%edx,%ebp,4)
 2c9:	00 00                	add    %al,(%eax)
 2cb:	00 d7                	add    %dl,%bh
 2cd:	02 00                	add    (%eax),%al
 2cf:	00 0d 30 00 00 00    	add    %cl,0x30
 2d5:	00 00                	add    %al,(%eax)
 2d7:	06                   	push   %es
 2d8:	04 7d                	add    $0x7d,%al
 2da:	02 00                	add    (%eax),%al
 2dc:	00 0c aa             	add    %cl,(%edx,%ebp,4)
 2df:	00 00                	add    %al,(%eax)
 2e1:	00 ed                	add    %ch,%ch
 2e3:	02 00                	add    (%eax),%al
 2e5:	00 0d 30 00 00 00    	add    %cl,0x30
 2eb:	27                   	daa    
 2ec:	00 02                	add    %al,(%edx)
 2ee:	95                   	xchg   %eax,%ebp
 2ef:	03 00                	add    (%eax),%eax
 2f1:	00 06                	add    %al,(%esi)
 2f3:	4c                   	dec    %esp
 2f4:	97                   	xchg   %eax,%edi
 2f5:	00 00                	add    %al,(%eax)
 2f7:	00 0c aa             	add    %cl,(%edx,%ebp,4)
 2fa:	00 00                	add    %al,(%eax)
 2fc:	00 08                	add    %cl,(%eax)
 2fe:	03 00                	add    (%eax),%eax
 300:	00 0d 30 00 00 00    	add    %cl,0x30
 306:	1f                   	pop    %ds
 307:	00 02                	add    %al,(%edx)
 309:	bc 01 00 00 07       	mov    $0x7000001,%esp
 30e:	03 30                	add    (%eax),%esi
 310:	00 00                	add    %al,(%eax)
 312:	00 02                	add    %al,(%edx)
 314:	9c                   	pushf  
 315:	03 00                	add    (%eax),%eax
 317:	00 07                	add    %al,(%edi)
 319:	04 3e                	add    $0x3e,%al
 31b:	00 00                	add    %al,(%eax)
 31d:	00 02                	add    %al,(%edx)
 31f:	32 02                	xor    (%edx),%al
 321:	00 00                	add    %al,(%eax)
 323:	07                   	pop    %es
 324:	05 37 00 00 00       	add    $0x37,%eax
 329:	02 d8                	add    %al,%bl
 32b:	02 00                	add    (%eax),%al
 32d:	00 07                	add    %al,(%edi)
 32f:	07                   	pop    %es
 330:	30 00                	xor    %al,(%eax)
 332:	00 00                	add    %al,(%eax)
 334:	02 f1                	add    %cl,%dh
 336:	03 00                	add    (%eax),%eax
 338:	00 07                	add    %al,(%edi)
 33a:	08 30                	or     %dh,(%eax)
 33c:	00 00                	add    %al,(%eax)
 33e:	00 02                	add    %al,(%edx)
 340:	ab                   	stos   %eax,%es:(%edi)
 341:	03 00                	add    (%eax),%eax
 343:	00 07                	add    %al,(%edi)
 345:	09 3e                	or     %edi,(%esi)
 347:	00 00                	add    %al,(%eax)
 349:	00 02                	add    %al,(%edx)
 34b:	0f 03 00             	lsl    (%eax),%eax
 34e:	00 07                	add    %al,(%edi)
 350:	0a 3e                	or     (%esi),%bh
 352:	00 00                	add    %al,(%eax)
 354:	00 02                	add    %al,(%edx)
 356:	4a                   	dec    %edx
 357:	01 00                	add    %eax,(%eax)
 359:	00 07                	add    %al,(%edi)
 35b:	0b 30                	or     (%eax),%esi
 35d:	00 00                	add    %al,(%eax)
 35f:	00 0a                	add    %cl,(%edx)
 361:	18 01                	sbb    %al,(%ecx)
 363:	00 00                	add    %al,(%eax)
 365:	4c                   	dec    %esp
 366:	08 18                	or     %bl,(%eax)
 368:	bd 04 00 00 0b       	mov    $0xb000004,%ebp
 36d:	72 01                	jb     370 <_init-0x8048084>
 36f:	00 00                	add    %al,(%eax)
 371:	08 19                	or     %bl,(%ecx)
 373:	29 03                	sub    %eax,(%ebx)
 375:	00 00                	add    %al,(%eax)
 377:	02 23                	add    (%ebx),%ah
 379:	00 0b                	add    %cl,(%ebx)
 37b:	08 00                	or     %al,(%eax)
 37d:	00 00                	add    %al,(%eax)
 37f:	08 1a                	or     %bl,(%edx)
 381:	4a                   	dec    %edx
 382:	03 00                	add    (%eax),%eax
 384:	00 02                	add    %al,(%edx)
 386:	23 04 0b             	and    (%ebx,%ecx,1),%eax
 389:	b5 02                	mov    $0x2,%ch
 38b:	00 00                	add    %al,(%eax)
 38d:	08 1b                	or     %bl,(%ebx)
 38f:	13 03                	adc    (%ebx),%eax
 391:	00 00                	add    %al,(%eax)
 393:	02 23                	add    (%ebx),%ah
 395:	06                   	push   %es
 396:	0b c1                	or     %ecx,%eax
 398:	03 00                	add    (%eax),%eax
 39a:	00 08                	add    %cl,(%eax)
 39c:	1c 13                	sbb    $0x13,%al
 39e:	03 00                	add    (%eax),%eax
 3a0:	00 02                	add    %al,(%edx)
 3a2:	23 08                	and    (%eax),%ecx
 3a4:	0b f8                	or     %eax,%edi
 3a6:	03 00                	add    (%eax),%eax
 3a8:	00 08                	add    %cl,(%eax)
 3aa:	1d 4a 03 00 00       	sbb    $0x34a,%eax
 3af:	02 23                	add    (%ebx),%ah
 3b1:	0a 0b                	or     (%ebx),%cl
 3b3:	a2 01 00 00 08       	mov    %al,0x8000001
 3b8:	1e                   	push   %ds
 3b9:	13 03                	adc    (%ebx),%eax
 3bb:	00 00                	add    %al,(%eax)
 3bd:	02 23                	add    (%ebx),%ah
 3bf:	0c 0b                	or     $0xb,%al
 3c1:	6c                   	insb   (%dx),%es:(%edi)
 3c2:	01 00                	add    %eax,(%eax)
 3c4:	00 08                	add    %cl,(%eax)
 3c6:	1f                   	pop    %ds
 3c7:	13 03                	adc    (%ebx),%eax
 3c9:	00 00                	add    %al,(%eax)
 3cb:	02 23                	add    (%ebx),%ah
 3cd:	0e                   	push   %cs
 3ce:	0b 14 02             	or     (%edx,%eax,1),%edx
 3d1:	00 00                	add    %al,(%eax)
 3d3:	08 20                	or     %ah,(%eax)
 3d5:	34 03                	xor    $0x3,%al
 3d7:	00 00                	add    %al,(%eax)
 3d9:	02 23                	add    (%ebx),%ah
 3db:	10 0b                	adc    %cl,(%ebx)
 3dd:	b2 03                	mov    $0x3,%dl
 3df:	00 00                	add    %al,(%eax)
 3e1:	08 21                	or     %ah,(%ecx)
 3e3:	08 03                	or     %al,(%ebx)
 3e5:	00 00                	add    %al,(%eax)
 3e7:	02 23                	add    (%ebx),%ah
 3e9:	14 0b                	adc    $0xb,%al
 3eb:	25 04 00 00 08       	and    $0x8000004,%eax
 3f0:	22 13                	and    (%ebx),%dl
 3f2:	03 00                	add    (%eax),%eax
 3f4:	00 02                	add    %al,(%edx)
 3f6:	23 18                	and    (%eax),%ebx
 3f8:	0b 90 00 00 00 08    	or     0x8000000(%eax),%edx
 3fe:	24 53                	and    $0x53,%al
 400:	00 00                	add    %al,(%eax)
 402:	00 02                	add    %al,(%edx)
 404:	23 1a                	and    (%edx),%ebx
 406:	0b 37                	or     (%edi),%esi
 408:	00 00                	add    %al,(%eax)
 40a:	00 08                	add    %cl,(%eax)
 40c:	25 3e 00 00 00       	and    $0x3e,%eax
 411:	02 23                	add    (%ebx),%ah
 413:	1c 0b                	sbb    $0xb,%al
 415:	24 01                	and    $0x1,%al
 417:	00 00                	add    %al,(%eax)
 419:	08 26                	or     %ah,(%esi)
 41b:	aa                   	stos   %al,%es:(%edi)
 41c:	00 00                	add    %al,(%eax)
 41e:	00 02                	add    %al,(%edx)
 420:	23 1e                	and    (%esi),%ebx
 422:	0b 08                	or     (%eax),%ecx
 424:	04 00                	add    $0x0,%al
 426:	00 08                	add    %cl,(%eax)
 428:	27                   	daa    
 429:	8e 05 00 00 02 23    	mov    0x23020000,%es
 42f:	20 0b                	and    %cl,(%ebx)
 431:	62 02                	bound  %eax,(%edx)
 433:	00 00                	add    %al,(%eax)
 435:	08 28                	or     %ch,(%eax)
 437:	8e 05 00 00 02 23    	mov    0x23020000,%es
 43d:	24 0b                	and    $0xb,%al
 43f:	87 01                	xchg   %eax,(%ecx)
 441:	00 00                	add    %al,(%eax)
 443:	08 29                	or     %ch,(%ecx)
 445:	30 00                	xor    %al,(%eax)
 447:	00 00                	add    %al,(%eax)
 449:	02 23                	add    (%ebx),%ah
 44b:	28 0b                	sub    %cl,(%ebx)
 44d:	2a 00                	sub    (%eax),%al
 44f:	00 00                	add    %al,(%eax)
 451:	08 2a                	or     %ch,(%edx)
 453:	3f                   	aas    
 454:	03 00                	add    (%eax),%eax
 456:	00 02                	add    %al,(%edx)
 458:	23 2c 0b             	and    (%ebx,%ecx,1),%ebp
 45b:	c2 01 00             	ret    $0x1
 45e:	00 08                	add    %cl,(%eax)
 460:	2b 5a 00             	sub    0x0(%edx),%ebx
 463:	00 00                	add    %al,(%eax)
 465:	02 23                	add    (%ebx),%ah
 467:	30 0b                	xor    %cl,(%ebx)
 469:	8a 03                	mov    (%ebx),%al
 46b:	00 00                	add    %al,(%eax)
 46d:	08 2c 5a             	or     %ch,(%edx,%ebx,2)
 470:	00 00                	add    %al,(%eax)
 472:	00 02                	add    %al,(%edx)
 474:	23 34 0b             	and    (%ebx,%ecx,1),%esi
 477:	ab                   	stos   %eax,%es:(%edi)
 478:	02 00                	add    (%eax),%al
 47a:	00 08                	add    %cl,(%eax)
 47c:	2d 5a 00 00 00       	sub    $0x5a,%eax
 481:	02 23                	add    (%ebx),%ah
 483:	38 0b                	cmp    %cl,(%ebx)
 485:	b2 01                	mov    $0x1,%dl
 487:	00 00                	add    %al,(%eax)
 489:	08 2e                	or     %ch,(%esi)
 48b:	5a                   	pop    %edx
 48c:	00 00                	add    %al,(%eax)
 48e:	00 02                	add    %al,(%edx)
 490:	23 3c 0b             	and    (%ebx,%ecx,1),%edi
 493:	5d                   	pop    %ebp
 494:	03 00                	add    (%eax),%eax
 496:	00 08                	add    %cl,(%eax)
 498:	2f                   	das    
 499:	5a                   	pop    %edx
 49a:	00 00                	add    %al,(%eax)
 49c:	00 02                	add    %al,(%edx)
 49e:	23 40 0b             	and    0xb(%eax),%eax
 4a1:	5c                   	pop    %esp
 4a2:	01 00                	add    %eax,(%eax)
 4a4:	00 08                	add    %cl,(%eax)
 4a6:	30 55 03             	xor    %dl,0x3(%ebp)
 4a9:	00 00                	add    %al,(%eax)
 4ab:	02 23                	add    (%ebx),%ah
 4ad:	44                   	inc    %esp
 4ae:	0b ef                	or     %edi,%ebp
 4b0:	00 00                	add    %al,(%eax)
 4b2:	00 08                	add    %cl,(%eax)
 4b4:	31 55 03             	xor    %edx,0x3(%ebp)
 4b7:	00 00                	add    %al,(%eax)
 4b9:	02 23                	add    (%ebx),%ah
 4bb:	48                   	dec    %eax
 4bc:	00 0a                	add    %cl,(%edx)
 4be:	6e                   	outsb  %ds:(%esi),(%dx)
 4bf:	00 00                	add    %al,(%eax)
 4c1:	00 54 09 1e          	add    %dl,0x1e(%ecx,%ecx,1)
 4c5:	8e 05 00 00 0b ba    	mov    0xba0b0000,%es
 4cb:	03 00                	add    (%eax),%eax
 4cd:	00 09                	add    %cl,(%ecx)
 4cf:	1f                   	pop    %ds
 4d0:	13 03                	adc    (%ebx),%eax
 4d2:	00 00                	add    %al,(%eax)
 4d4:	02 23                	add    (%ebx),%ah
 4d6:	00 0b                	add    %cl,(%ebx)
 4d8:	56                   	push   %esi
 4d9:	00 00                	add    %al,(%eax)
 4db:	00 09                	add    %cl,(%ecx)
 4dd:	20 13                	and    %dl,(%ebx)
 4df:	03 00                	add    (%eax),%eax
 4e1:	00 02                	add    %al,(%edx)
 4e3:	23 02                	and    (%edx),%eax
 4e5:	0b ee                	or     %esi,%ebp
 4e7:	02 00                	add    (%eax),%al
 4e9:	00 09                	add    %cl,(%ecx)
 4eb:	21 13                	and    %edx,(%ebx)
 4ed:	03 00                	add    (%eax),%eax
 4ef:	00 02                	add    %al,(%edx)
 4f1:	23 04 0b             	and    (%ebx,%ecx,1),%eax
 4f4:	66 01 00             	add    %ax,(%eax)
 4f7:	00 09                	add    %cl,(%ecx)
 4f9:	22 13                	and    (%ebx),%dl
 4fb:	03 00                	add    (%eax),%eax
 4fd:	00 02                	add    %al,(%edx)
 4ff:	23 06                	and    (%esi),%eax
 501:	0b e8                	or     %eax,%ebp
 503:	00 00                	add    %al,(%eax)
 505:	00 09                	add    %cl,(%ecx)
 507:	23 34 03             	and    (%ebx,%eax,1),%esi
 50a:	00 00                	add    %al,(%eax)
 50c:	02 23                	add    (%ebx),%ah
 50e:	08 0b                	or     %cl,(%ebx)
 510:	4c                   	dec    %esp
 511:	02 00                	add    (%eax),%al
 513:	00 09                	add    %cl,(%ecx)
 515:	24 ed                	and    $0xed,%al
 517:	02 00                	add    (%eax),%al
 519:	00 02                	add    %al,(%edx)
 51b:	23 0c 0b             	and    (%ebx,%ecx,1),%ecx
 51e:	a3 02 00 00 09       	mov    %eax,0x9000002
 523:	25 ed 02 00 00       	and    $0x2ed,%eax
 528:	02 23                	add    (%ebx),%ah
 52a:	10 0b                	adc    %cl,(%ebx)
 52c:	9a 01 00 00 09 26 ed 	lcall  $0xed26,$0x9000001
 533:	02 00                	add    (%eax),%al
 535:	00 02                	add    %al,(%edx)
 537:	23 14 0b             	and    (%ebx,%ecx,1),%edx
 53a:	01 02                	add    %eax,(%edx)
 53c:	00 00                	add    %al,(%eax)
 53e:	09 27                	or     %esp,(%edi)
 540:	58                   	pop    %eax
 541:	06                   	push   %es
 542:	00 00                	add    %al,(%eax)
 544:	02 23                	add    (%ebx),%ah
 546:	18 0b                	sbb    %cl,(%ebx)
 548:	08 02                	or     %al,(%edx)
 54a:	00 00                	add    %al,(%eax)
 54c:	09 29                	or     %ebp,(%ecx)
 54e:	3f                   	aas    
 54f:	03 00                	add    (%eax),%eax
 551:	00 02                	add    %al,(%edx)
 553:	23 40 0b             	and    0xb(%eax),%eax
 556:	09 03                	or     %eax,(%ebx)
 558:	00 00                	add    %al,(%eax)
 55a:	09 2a                	or     %ebp,(%edx)
 55c:	29 03                	sub    %eax,(%ebx)
 55e:	00 00                	add    %al,(%eax)
 560:	02 23                	add    (%ebx),%ah
 562:	44                   	inc    %esp
 563:	0b 42 01             	or     0x1(%edx),%eax
 566:	00 00                	add    %al,(%eax)
 568:	09 2b                	or     %ebp,(%ebx)
 56a:	08 03                	or     %al,(%ebx)
 56c:	00 00                	add    %al,(%eax)
 56e:	02 23                	add    (%ebx),%ah
 570:	48                   	dec    %eax
 571:	0b 3f                	or     (%edi),%edi
 573:	02 00                	add    (%eax),%al
 575:	00 09                	add    %cl,(%ecx)
 577:	2c 1e                	sub    $0x1e,%al
 579:	03 00                	add    (%eax),%eax
 57b:	00 02                	add    %al,(%edx)
 57d:	23 4c 0b 8b          	and    -0x75(%ebx,%ecx,1),%ecx
 581:	00 00                	add    %al,(%eax)
 583:	00 09                	add    %cl,(%ecx)
 585:	2d 68 06 00 00       	sub    $0x668,%eax
 58a:	02 23                	add    (%ebx),%ah
 58c:	50                   	push   %eax
 58d:	00 06                	add    %al,(%esi)
 58f:	04 bd                	add    $0xbd,%al
 591:	04 00                	add    $0x0,%al
 593:	00 0a                	add    %cl,(%edx)
 595:	97                   	xchg   %eax,%edi
 596:	00 00                	add    %al,(%eax)
 598:	00 40 09             	add    %al,0x9(%eax)
 59b:	08 bd 05 00 00 0b    	or     %bh,0xb000005(%ebp)
 5a1:	72 02                	jb     5a5 <_init-0x8047e4f>
 5a3:	00 00                	add    %al,(%eax)
 5a5:	09 09                	or     %ecx,(%ecx)
 5a7:	29 03                	sub    %eax,(%ebx)
 5a9:	00 00                	add    %al,(%eax)
 5ab:	02 23                	add    (%ebx),%ah
 5ad:	00 0b                	add    %cl,(%ebx)
 5af:	e5 03                	in     $0x3,%eax
 5b1:	00 00                	add    %al,(%eax)
 5b3:	09 0a                	or     %ecx,(%edx)
 5b5:	bd 05 00 00 02       	mov    $0x2000005,%ebp
 5ba:	23 04 00             	and    (%eax,%eax,1),%eax
 5bd:	0c aa                	or     $0xaa,%al
 5bf:	00 00                	add    %al,(%eax)
 5c1:	00 cd                	add    %cl,%ch
 5c3:	05 00 00 0d 30       	add    $0x300d0000,%eax
 5c8:	00 00                	add    %al,(%eax)
 5ca:	00 3b                	add    %bh,(%ebx)
 5cc:	00 0a                	add    %cl,(%edx)
 5ce:	6c                   	insb   (%dx),%es:(%edi)
 5cf:	00 00                	add    %al,(%eax)
 5d1:	00 40 09             	add    %al,0x9(%eax)
 5d4:	11 58 06             	adc    %ebx,0x6(%eax)
 5d7:	00 00                	add    %al,(%eax)
 5d9:	0b d1                	or     %ecx,%edx
 5db:	02 00                	add    (%eax),%al
 5dd:	00 09                	add    %cl,(%ecx)
 5df:	12 13                	adc    (%ebx),%dl
 5e1:	03 00                	add    (%eax),%eax
 5e3:	00 02                	add    %al,(%edx)
 5e5:	23 00                	and    (%eax),%eax
 5e7:	0b 8c 02 00 00 09 13 	or     0x13090000(%edx,%eax,1),%ecx
 5ee:	13 03                	adc    (%ebx),%eax
 5f0:	00 00                	add    %al,(%eax)
 5f2:	02 23                	add    (%ebx),%ah
 5f4:	02 0b                	add    (%ebx),%cl
 5f6:	03 03                	add    (%ebx),%eax
 5f8:	00 00                	add    %al,(%eax)
 5fa:	09 14 13             	or     %edx,(%ebx,%edx,1)
 5fd:	03 00                	add    (%eax),%eax
 5ff:	00 02                	add    %al,(%edx)
 601:	23 04 0b             	and    (%ebx,%ecx,1),%eax
 604:	3c 01                	cmp    $0x1,%al
 606:	00 00                	add    %al,(%eax)
 608:	09 15 13 03 00 00    	or     %edx,0x313
 60e:	02 23                	add    (%ebx),%ah
 610:	06                   	push   %es
 611:	0b 1e                	or     (%esi),%ebx
 613:	04 00                	add    $0x0,%al
 615:	00 09                	add    %cl,(%ecx)
 617:	16                   	push   %ss
 618:	34 03                	xor    $0x3,%al
 61a:	00 00                	add    %al,(%eax)
 61c:	02 23                	add    (%ebx),%ah
 61e:	08 0b                	or     %cl,(%ebx)
 620:	37                   	aaa    
 621:	02 00                	add    (%eax),%al
 623:	00 09                	add    %cl,(%ecx)
 625:	17                   	pop    %ss
 626:	ed                   	in     (%dx),%eax
 627:	02 00                	add    (%eax),%al
 629:	00 02                	add    %al,(%edx)
 62b:	23 0c 0b             	and    (%ebx,%ecx,1),%ecx
 62e:	4e                   	dec    %esi
 62f:	00 00                	add    %al,(%eax)
 631:	00 09                	add    %cl,(%ecx)
 633:	18 ed                	sbb    %ch,%ch
 635:	02 00                	add    (%eax),%al
 637:	00 02                	add    %al,(%edx)
 639:	23 10                	and    (%eax),%edx
 63b:	0b 23                	or     (%ebx),%esp
 63d:	03 00                	add    (%eax),%eax
 63f:	00 09                	add    %cl,(%ecx)
 641:	19 ed                	sbb    %ebp,%ebp
 643:	02 00                	add    (%eax),%al
 645:	00 02                	add    %al,(%edx)
 647:	23 14 0b             	and    (%ebx,%ecx,1),%edx
 64a:	6b 02 00             	imul   $0x0,(%edx),%eax
 64d:	00 09                	add    %cl,(%ecx)
 64f:	1a 58 06             	sbb    0x6(%eax),%bl
 652:	00 00                	add    %al,(%eax)
 654:	02 23                	add    (%ebx),%ah
 656:	18 00                	sbb    %al,(%eax)
 658:	0c 08                	or     $0x8,%al
 65a:	03 00                	add    (%eax),%eax
 65c:	00 68 06             	add    %ch,0x6(%eax)
 65f:	00 00                	add    %al,(%eax)
 661:	0d 30 00 00 00       	or     $0x30,%eax
 666:	09 00                	or     %eax,(%eax)
 668:	06                   	push   %es
 669:	04 60                	add    $0x60,%al
 66b:	03 00                	add    (%eax),%eax
 66d:	00 0e                	add    %cl,(%esi)
 66f:	01 47 02             	add    %eax,0x2(%edi)
 672:	00 00                	add    %al,(%eax)
 674:	01 15 01 5a 00 00    	add    %edx,0x5a01
 67a:	00 a4 85 04 08 d9 89 	add    %ah,-0x7626f7fc(%ebp,%eax,4)
 681:	04 08                	add    $0x8,%al
 683:	00 00                	add    %al,(%eax)
 685:	00 00                	add    %al,(%eax)
 687:	1c 07                	sbb    $0x7,%al
 689:	00 00                	add    %al,(%eax)
 68b:	0f ec 03             	paddsb (%ebx),%mm0
 68e:	00 00                	add    %al,(%eax)
 690:	01 15 5a 00 00 00    	add    %edx,0x5a
 696:	02 91 00 0f df 02    	add    0x2df0f00(%ecx),%dl
 69c:	00 00                	add    %al,(%eax)
 69e:	01 15 1c 07 00 00    	add    %edx,0x71c
 6a4:	02 74 1c 10          	add    0x10(%esp,%ebx,1),%dh
 6a8:	66                   	data16
 6a9:	70 00                	jo     6ab <_init-0x8047d49>
 6ab:	01 17                	add    %edx,(%edi)
 6ad:	22 07                	and    (%edi),%al
 6af:	00 00                	add    %al,(%eax)
 6b1:	03 74 b4 01          	add    0x1(%esp,%esi,4),%esi
 6b5:	10 69 00             	adc    %ch,0x0(%ecx)
 6b8:	01 18                	add    %ebx,(%eax)
 6ba:	5a                   	pop    %edx
 6bb:	00 00                	add    %al,(%eax)
 6bd:	00 03                	add    %al,(%ebx)
 6bf:	74 b0                	je     671 <_init-0x8047d83>
 6c1:	01 11                	add    %edx,(%ecx)
 6c3:	d0 00                	rolb   (%eax)
 6c5:	00 00                	add    %al,(%eax)
 6c7:	01 19                	add    %ebx,(%ecx)
 6c9:	60                   	pusha  
 6ca:	03 00                	add    (%eax),%eax
 6cc:	00 02                	add    %al,(%edx)
 6ce:	74 24                	je     6f4 <_init-0x8047d00>
 6d0:	11 25 00 00 00 01    	adc    %esp,0x1000000
 6d6:	1a cd                	sbb    %ch,%cl
 6d8:	05 00 00 03 74       	add    $0x74030000,%eax
 6dd:	f0 00 11             	lock add %dl,(%ecx)
 6e0:	27                   	daa    
 6e1:	02 00                	add    (%eax),%al
 6e3:	00 01                	add    %al,(%ecx)
 6e5:	1b 94 05 00 00 03 74 	sbb    0x74030000(%ebp,%eax,1),%edx
 6ec:	bc 01 11 56 03       	mov    $0x3561101,%esp
 6f1:	00 00                	add    %al,(%eax)
 6f3:	01 1b                	add    %ebx,(%ebx)
 6f5:	94                   	xchg   %eax,%esp
 6f6:	05 00 00 03 74       	add    $0x74030000,%eax
 6fb:	fc                   	cld    
 6fc:	01 10                	add    %edx,(%eax)
 6fe:	62 75 66             	bound  %esi,0x66(%ebp)
 701:	00 01                	add    %al,(%ecx)
 703:	1c f8                	sbb    $0xf8,%al
 705:	02 00                	add    (%eax),%al
 707:	00 03                	add    %al,(%ebx)
 709:	74 bc                	je     6c7 <_init-0x8047d2d>
 70b:	02 11                	add    (%ecx),%dl
 70d:	df 03                	fild   (%ebx)
 70f:	00 00                	add    %al,(%eax)
 711:	01 1d ed 02 00 00    	add    %ebx,0x2ed
 717:	03 74 b8 01          	add    0x1(%eax,%edi,4),%esi
 71b:	00 06                	add    %al,(%esi)
 71d:	04 a4                	add    $0xa4,%al
 71f:	00 00                	add    %al,(%eax)
 721:	00 06                	add    %al,(%esi)
 723:	04 b1                	add    $0xb1,%al
 725:	00 00                	add    %al,(%eax)
 727:	00 0c bd 04 00 00 38 	add    %cl,0x38000004(,%edi,4)
 72e:	07                   	pop    %es
 72f:	00 00                	add    %al,(%eax)
 731:	0d 30 00 00 00       	or     $0x30,%eax
 736:	1d 00 12 6e 00       	sbb    $0x6e1200,%eax
 73b:	00 00                	add    %al,(%eax)
 73d:	09 2e                	or     %ebp,(%esi)
 73f:	28 07                	sub    %al,(%edi)
 741:	00 00                	add    %al,(%eax)
 743:	01 05 03 60 a0 04    	add    %eax,0x4a06003
 749:	08 00                	or     %al,(%eax)

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%ecx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
   8:	0e                   	push   %cs
   9:	1b 0e                	sbb    (%esi),%ecx
   b:	11 01                	adc    %eax,(%ecx)
   d:	12 01                	adc    (%ecx),%al
   f:	10 06                	adc    %al,(%esi)
  11:	00 00                	add    %al,(%eax)
  13:	02 16                	add    (%esi),%dl
  15:	00 03                	add    %al,(%ebx)
  17:	0e                   	push   %cs
  18:	3a 0b                	cmp    (%ebx),%cl
  1a:	3b 0b                	cmp    (%ebx),%ecx
  1c:	49                   	dec    %ecx
  1d:	13 00                	adc    (%eax),%eax
  1f:	00 03                	add    %al,(%ebx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%ebx),%ecx
  25:	3e 0b 03             	or     %ds:(%ebx),%eax
  28:	0e                   	push   %cs
  29:	00 00                	add    %al,(%eax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%ebx)
  2f:	0b 3e                	or     (%esi),%edi
  31:	0b 03                	or     (%ebx),%eax
  33:	08 00                	or     %al,(%eax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f
  3b:	00 00                	add    %al,(%eax)
  3d:	06                   	push   %es
  3e:	0f 00 0b             	str    (%ebx)
  41:	0b 49 13             	or     0x13(%ecx),%ecx
  44:	00 00                	add    %al,(%eax)
  46:	07                   	pop    %es
  47:	13 01                	adc    (%ecx),%eax
  49:	03 0e                	add    (%esi),%ecx
  4b:	0b 0b                	or     (%ebx),%ecx
  4d:	3a 0b                	cmp    (%ebx),%cl
  4f:	3b 05 01 13 00 00    	cmp    0x1301,%eax
  55:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300
  5b:	0b 3b                	or     (%ebx),%edi
  5d:	05 49 13 38 0a       	add    $0xa381349,%eax
  62:	00 00                	add    %al,(%eax)
  64:	09 16                	or     %edx,(%esi)
  66:	00 03                	add    %al,(%ebx)
  68:	0e                   	push   %cs
  69:	3a 0b                	cmp    (%ebx),%cl
  6b:	3b 0b                	cmp    (%ebx),%ecx
  6d:	00 00                	add    %al,(%eax)
  6f:	0a 13                	or     (%ebx),%dl
  71:	01 03                	add    %eax,(%ebx)
  73:	0e                   	push   %cs
  74:	0b 0b                	or     (%ebx),%ecx
  76:	3a 0b                	cmp    (%ebx),%cl
  78:	3b 0b                	cmp    (%ebx),%ecx
  7a:	01 13                	add    %edx,(%ebx)
  7c:	00 00                	add    %al,(%eax)
  7e:	0b 0d 00 03 0e 3a    	or     0x3a0e0300,%ecx
  84:	0b 3b                	or     (%ebx),%edi
  86:	0b 49 13             	or     0x13(%ecx),%ecx
  89:	38 0a                	cmp    %cl,(%edx)
  8b:	00 00                	add    %al,(%eax)
  8d:	0c 01                	or     $0x1,%al
  8f:	01 49 13             	add    %ecx,0x13(%ecx)
  92:	01 13                	add    %edx,(%ebx)
  94:	00 00                	add    %al,(%eax)
  96:	0d 21 00 49 13       	or     $0x13490021,%eax
  9b:	2f                   	das    
  9c:	0b 00                	or     (%eax),%eax
  9e:	00 0e                	add    %cl,(%esi)
  a0:	2e 01 3f             	add    %edi,%cs:(%edi)
  a3:	0c 03                	or     $0x3,%al
  a5:	0e                   	push   %cs
  a6:	3a 0b                	cmp    (%ebx),%cl
  a8:	3b 0b                	cmp    (%ebx),%ecx
  aa:	27                   	daa    
  ab:	0c 49                	or     $0x49,%al
  ad:	13 11                	adc    (%ecx),%edx
  af:	01 12                	add    %edx,(%edx)
  b1:	01 40 06             	add    %eax,0x6(%eax)
  b4:	01 13                	add    %edx,(%ebx)
  b6:	00 00                	add    %al,(%eax)
  b8:	0f 05                	syscall 
  ba:	00 03                	add    %al,(%ebx)
  bc:	0e                   	push   %cs
  bd:	3a 0b                	cmp    (%ebx),%cl
  bf:	3b 0b                	cmp    (%ebx),%ecx
  c1:	49                   	dec    %ecx
  c2:	13 02                	adc    (%edx),%eax
  c4:	0a 00                	or     (%eax),%al
  c6:	00 10                	add    %dl,(%eax)
  c8:	34 00                	xor    $0x0,%al
  ca:	03 08                	add    (%eax),%ecx
  cc:	3a 0b                	cmp    (%ebx),%cl
  ce:	3b 0b                	cmp    (%ebx),%ecx
  d0:	49                   	dec    %ecx
  d1:	13 02                	adc    (%edx),%eax
  d3:	0a 00                	or     (%eax),%al
  d5:	00 11                	add    %dl,(%ecx)
  d7:	34 00                	xor    $0x0,%al
  d9:	03 0e                	add    (%esi),%ecx
  db:	3a 0b                	cmp    (%ebx),%cl
  dd:	3b 0b                	cmp    (%ebx),%ecx
  df:	49                   	dec    %ecx
  e0:	13 02                	adc    (%edx),%eax
  e2:	0a 00                	or     (%eax),%al
  e4:	00 12                	add    %dl,(%edx)
  e6:	34 00                	xor    $0x0,%al
  e8:	03 0e                	add    (%esi),%ecx
  ea:	3a 0b                	cmp    (%ebx),%cl
  ec:	3b 0b                	cmp    (%ebx),%ecx
  ee:	49                   	dec    %ecx
  ef:	13 3f                	adc    (%edi),%edi
  f1:	0c 02                	or     $0x2,%al
  f3:	0a 00                	or     (%eax),%al
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	4e                   	dec    %esi
   1:	01 00                	add    %eax,(%eax)
   3:	00 02                	add    %al,(%edx)
   5:	00 d1                	add    %dl,%cl
   7:	00 00                	add    %al,(%eax)
   9:	00 01                	add    %al,(%ecx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	push   %cs
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%eax)
  15:	00 00                	add    %al,(%eax)
  17:	01 00                	add    %eax,(%eax)
  19:	00 01                	add    %al,(%ecx)
  1b:	2f                   	das    
  1c:	75 73                	jne    91 <_init-0x8048363>
  1e:	72 2f                	jb     4f <_init-0x80483a5>
  20:	6c                   	insb   (%dx),%es:(%edi)
  21:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%edx),%esp
  28:	69 36 38 36 2d 6c    	imul   $0x6c2d3638,(%esi),%esi
  2e:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%esi),%ebp
  35:	75 2f                	jne    66 <_init-0x804838e>
  37:	34 2e                	xor    $0x2e,%al
  39:	36                   	ss
  3a:	2f                   	das    
  3b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  42:	00 2f                	add    %ch,(%edi)
  44:	75 73                	jne    b9 <_init-0x804833b>
  46:	72 2f                	jb     77 <_init-0x804837d>
  48:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  4f:	2f                   	das    
  50:	69 33 38 36 2d 6c    	imul   $0x6c2d3638,(%ebx),%esi
  56:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%esi),%ebp
  5d:	75 2f                	jne    8e <_init-0x8048366>
  5f:	62 69 74             	bound  %ebp,0x74(%ecx)
  62:	73 00                	jae    64 <_init-0x8048390>
  64:	2f                   	das    
  65:	75 73                	jne    da <_init-0x804831a>
  67:	72 2f                	jb     98 <_init-0x804835c>
  69:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  70:	00 68 00             	add    %ch,0x0(%eax)
  73:	00 6d 6b             	add    %ch,0x6b(%ebp)
  76:	66                   	data16
  77:	73 2e                	jae    a7 <_init-0x804834d>
  79:	63 00                	arpl   %ax,(%eax)
  7b:	00 00                	add    %al,(%eax)
  7d:	00 73 74             	add    %dh,0x74(%ebx)
  80:	64                   	fs
  81:	64                   	fs
  82:	65                   	gs
  83:	66                   	data16
  84:	2e                   	cs
  85:	68 00 01 00 00       	push   $0x100
  8a:	74 79                	je     105 <_init-0x80482ef>
  8c:	70 65                	jo     f3 <_init-0x8048301>
  8e:	73 2e                	jae    be <_init-0x8048336>
  90:	68 00 02 00 00       	push   $0x200
  95:	73 74                	jae    10b <_init-0x80482e9>
  97:	64 69 6f 2e 68 00 03 	imul   $0x30068,%fs:0x2e(%edi),%ebp
  9e:	00 
  9f:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
  a3:	69 6f 2e 68 00 03 00 	imul   $0x30068,0x2e(%edi),%ebp
  aa:	00 74 69 6d          	add    %dh,0x6d(%ecx,%ebp,2)
  ae:	65                   	gs
  af:	2e                   	cs
  b0:	68 00 03 00 00       	push   $0x300
  b5:	74 79                	je     130 <_init-0x80482c4>
  b7:	70 65                	jo     11e <_init-0x80482d6>
  b9:	2e                   	cs
  ba:	68 00 04 00 00       	push   $0x400
  bf:	73 75                	jae    136 <_init-0x80482be>
  c1:	70 65                	jo     128 <_init-0x80482cc>
  c3:	72 62                	jb     127 <_init-0x80482cd>
  c5:	6c                   	insb   (%dx),%es:(%edi)
  c6:	6f                   	outsl  %ds:(%esi),(%dx)
  c7:	63 6b 2e             	arpl   %bp,0x2e(%ebx)
  ca:	68 00 04 00 00       	push   $0x400
  cf:	69 6e 6f 64 65 2e 68 	imul   $0x682e6564,0x6f(%esi),%ebp
  d6:	00 04 00             	add    %al,(%eax,%eax,1)
  d9:	00 00                	add    %al,(%eax)
  db:	00 05 02 a4 85 04    	add    %al,0x485a402
  e1:	08 03                	or     %al,(%ebx)
  e3:	15 01 08 4a ec       	adc    $0xec4a0801,%eax
  e8:	68 bb bc 08 f3       	push   $0xf308bcbb
  ed:	a0 bb bc 08 30       	mov    0x3008bcbb,%al
  f2:	02 29                	add    (%ecx),%ch
  f4:	13 08                	adc    (%eax),%ecx
  f6:	59                   	pop    %ecx
  f7:	08 5a 83             	or     %bl,-0x7d(%edx)
  fa:	75 75                	jne    171 <_init-0x8048283>
  fc:	75 75                	jne    173 <_init-0x8048281>
  fe:	75 75                	jne    175 <_init-0x804827f>
 100:	83 83 75 08 d7 02 27 	addl   $0x27,0x2d70875(%ebx)
 107:	15 75 75 75 75       	adc    $0x75757575,%eax
 10c:	83 83 d7 ad 00 02 04 	addl   $0x4,0x200add7(%ebx)
 113:	02 ca                	add    %dl,%cl
 115:	00 02                	add    %al,(%edx)
 117:	04 02                	add    $0x2,%al
 119:	08 1e                	or     %bl,(%esi)
 11b:	00 02                	add    %al,(%edx)
 11d:	04 01                	add    $0x1,%al
 11f:	06                   	push   %es
 120:	82                   	(bad)  
 121:	06                   	push   %es
 122:	a2 ad 08 d7 02       	mov    %al,0x2d708ad
 127:	27                   	daa    
 128:	15 08 d7 83 02       	adc    $0x283d708,%eax
 12d:	2a 13                	sub    (%ebx),%dl
 12f:	08 d7                	or     %dl,%bh
 131:	02 2a                	add    (%edx),%ch
 133:	14 ad                	adc    $0xad,%al
 135:	02 23                	add    (%ebx),%ah
 137:	13 ad 02 23 13 08    	adc    0x8132302(%ebp),%ebp
 13d:	d7                   	xlat   %ds:(%ebx)
 13e:	02 2a                	add    (%edx),%ch
 140:	13 02                	adc    (%edx),%eax
 142:	2a 13                	sub    (%ebx),%dl
 144:	83 83 08 d7 02 2a 13 	addl   $0x13,0x2a02d708(%ebx)
 14b:	e5 59                	in     $0x59,%eax
 14d:	02 1c 00             	add    (%eax,%eax,1),%bl
 150:	01 01                	add    %eax,(%ecx)

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	5f                   	pop    %edi
   1:	5f                   	pop    %edi
   2:	6f                   	outsl  %ds:(%esi),(%dx)
   3:	66 66 5f             	data32 pop %di
   6:	74 00                	je     8 <_init-0x80483ec>
   8:	73 5f                	jae    69 <_init-0x804838b>
   a:	6e                   	outsb  %ds:(%esi),(%dx)
   b:	7a 6f                	jp     7c <_init-0x8048378>
   d:	6e                   	outsb  %ds:(%esi),(%dx)
   e:	65                   	gs
   f:	73 00                	jae    11 <_init-0x80483e3>
  11:	5f                   	pop    %edi
  12:	49                   	dec    %ecx
  13:	4f                   	dec    %edi
  14:	5f                   	pop    %edi
  15:	72 65                	jb     7c <_init-0x8048378>
  17:	61                   	popa   
  18:	64                   	fs
  19:	5f                   	pop    %edi
  1a:	70 74                	jo     90 <_init-0x8048364>
  1c:	72 00                	jb     1e <_init-0x80483d6>
  1e:	5f                   	pop    %edi
  1f:	63 68 61             	arpl   %bp,0x61(%eax)
  22:	69 6e 00 72 6f 6f 74 	imul   $0x746f6f72,0x0(%esi),%ebp
  29:	00 73 5f             	add    %dh,0x5f(%ebx)
  2c:	64                   	fs
  2d:	65                   	gs
  2e:	76 00                	jbe    30 <_init-0x80483c4>
  30:	73 69                	jae    9b <_init-0x8048359>
  32:	7a 65                	jp     99 <_init-0x804835b>
  34:	5f                   	pop    %edi
  35:	74 00                	je     37 <_init-0x80483bd>
  37:	73 5f                	jae    98 <_init-0x804835c>
  39:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
  3d:	6b 5f 73 69          	imul   $0x69,0x73(%edi),%ebx
  41:	7a 65                	jp     a8 <_init-0x804834c>
  43:	00 5f 73             	add    %bl,0x73(%edi)
  46:	68 6f 72 74 62       	push   $0x6274726f
  4b:	75 66                	jne    b3 <_init-0x8048341>
  4d:	00 64 5f 6d          	add    %ah,0x6d(%edi,%ebx,2)
  51:	74 69                	je     bc <_init-0x8048338>
  53:	6d                   	insl   (%dx),%es:(%edi)
  54:	65 00 69 5f          	add    %ch,%gs:0x5f(%ecx)
  58:	6e                   	outsb  %ds:(%esi),(%dx)
  59:	6c                   	insb   (%dx),%es:(%edi)
  5a:	69 6e 6b 73 00 5f 49 	imul   $0x495f0073,0x6b(%esi),%ebp
  61:	4f                   	dec    %edi
  62:	5f                   	pop    %edi
  63:	62 75 66             	bound  %esi,0x66(%ebp)
  66:	5f                   	pop    %edi
  67:	62 61 73             	bound  %esp,0x73(%ecx)
  6a:	65 00 64 5f 69       	add    %ah,%gs:0x69(%edi,%ebx,2)
  6f:	6e                   	outsb  %ds:(%esi),(%dx)
  70:	6f                   	outsl  %ds:(%esi),(%dx)
  71:	64 65 00 6c 6f 6e    	fs add %ch,%fs:%gs:0x6e(%edi,%ebp,2)
  77:	67 20 6c 6f          	and    %ch,0x6f(%si)
  7b:	6e                   	outsb  %ds:(%esi),(%dx)
  7c:	67 20 75 6e          	and    %dh,0x6e(%di)
  80:	73 69                	jae    eb <_init-0x8048309>
  82:	67 6e                	outsb  %ds:(%si),(%dx)
  84:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
  89:	74 00                	je     8b <_init-0x8048369>
  8b:	69 5f 73 70 00 73 5f 	imul   $0x5f730070,0x73(%edi),%ebx
  92:	70 61                	jo     f5 <_init-0x80482ff>
  94:	64 32 00             	xor    %fs:(%eax),%al
  97:	64 69 72 65 63 74 00 	imul   $0x6d007463,%fs:0x65(%edx),%esi
  9e:	6d 
  9f:	6b 66 73 2e          	imul   $0x2e,0x73(%esi),%esp
  a3:	63 00                	arpl   %ax,(%eax)
  a5:	6c                   	insb   (%dx),%es:(%edi)
  a6:	6f                   	outsl  %ds:(%esi),(%dx)
  a7:	6e                   	outsb  %ds:(%esi),(%dx)
  a8:	67 20 6c 6f          	and    %ch,0x6f(%si)
  ac:	6e                   	outsb  %ds:(%esi),(%dx)
  ad:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
  b1:	74 00                	je     b3 <_init-0x8048341>
  b3:	2f                   	das    
  b4:	68 6f 6d 65 2f       	push   $0x2f656d6f
  b9:	74 68                	je     123 <_init-0x80482d1>
  bb:	69 6e 6b 73 2f 63 6f 	imul   $0x6f632f73,0x6b(%esi),%ebp
  c2:	64                   	fs
  c3:	65                   	gs
  c4:	2f                   	das    
  c5:	66                   	data16
  c6:	73 00                	jae    c8 <_init-0x804832c>
  c8:	5f                   	pop    %edi
  c9:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%ebp,%eiz,2),%bp
  d0:	73 75                	jae    147 <_init-0x80482ad>
  d2:	70 65                	jo     139 <_init-0x80482bb>
  d4:	72 62                	jb     138 <_init-0x80482bc>
  d6:	6c                   	insb   (%dx),%es:(%edi)
  d7:	6f                   	outsl  %ds:(%esi),(%dx)
  d8:	63 6b 00             	arpl   %bp,0x0(%ebx)
  db:	5f                   	pop    %edi
  dc:	49                   	dec    %ecx
  dd:	4f                   	dec    %edi
  de:	5f                   	pop    %edi
  df:	72 65                	jb     146 <_init-0x80482ae>
  e1:	61                   	popa   
  e2:	64                   	fs
  e3:	5f                   	pop    %edi
  e4:	65 6e                	outsb  %gs:(%esi),(%dx)
  e6:	64 00 69 5f          	add    %ch,%fs:0x5f(%ecx)
  ea:	73 69                	jae    155 <_init-0x804829f>
  ec:	7a 65                	jp     153 <_init-0x80482a1>
  ee:	00 73 5f             	add    %dh,0x5f(%ebx)
  f1:	7a 73                	jp     166 <_init-0x804828e>
  f3:	65                   	gs
  f4:	61                   	popa   
  f5:	72 63                	jb     15a <_init-0x804829a>
  f7:	68 00 5f 66 6c       	push   $0x6c665f00
  fc:	61                   	popa   
  fd:	67 73 00             	addr16 jae 100 <_init-0x80482f4>
 100:	5f                   	pop    %edi
 101:	49                   	dec    %ecx
 102:	4f                   	dec    %edi
 103:	5f                   	pop    %edi
 104:	62 75 66             	bound  %esi,0x66(%ebp)
 107:	5f                   	pop    %edi
 108:	65 6e                	outsb  %gs:(%esi),(%dx)
 10a:	64 00 5f 63          	add    %bl,%fs:0x63(%edi)
 10e:	75 72                	jne    182 <_init-0x8048272>
 110:	5f                   	pop    %edi
 111:	63 6f 6c             	arpl   %bp,0x6c(%edi)
 114:	75 6d                	jne    183 <_init-0x8048271>
 116:	6e                   	outsb  %ds:(%esi),(%dx)
 117:	00 73 75             	add    %dh,0x75(%ebx)
 11a:	70 65                	jo     181 <_init-0x8048273>
 11c:	72 5f                	jb     17d <_init-0x8048277>
 11e:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
 122:	6b 00 73             	imul   $0x73,(%eax),%eax
 125:	5f                   	pop    %edi
 126:	64 69 73 6b 5f 76 65 	imul   $0x7265765f,%fs:0x6b(%ebx),%esi
 12d:	72 
 12e:	73 69                	jae    199 <_init-0x804825b>
 130:	6f                   	outsl  %ds:(%esi),(%dx)
 131:	6e                   	outsb  %ds:(%esi),(%dx)
 132:	00 5f 5f             	add    %bl,0x5f(%edi)
 135:	71 75                	jno    1ac <_init-0x8048248>
 137:	61                   	popa   
 138:	64                   	fs
 139:	5f                   	pop    %edi
 13a:	74 00                	je     13c <_init-0x80482b8>
 13c:	64                   	fs
 13d:	5f                   	pop    %edi
 13e:	67 69 64 00 69 5f 63 	imul   $0x6f635f69,0x0(%si),%esp
 145:	6f 
 146:	75 6e                	jne    1b6 <_init-0x804823e>
 148:	74 00                	je     14a <_init-0x80482aa>
 14a:	62 69 74             	bound  %ebp,0x74(%ecx)
 14d:	5f                   	pop    %edi
 14e:	74 00                	je     150 <_init-0x80482a4>
 150:	5f                   	pop    %edi
 151:	6f                   	outsl  %ds:(%esi),(%dx)
 152:	6c                   	insb   (%dx),%es:(%edi)
 153:	64                   	fs
 154:	5f                   	pop    %edi
 155:	6f                   	outsl  %ds:(%esi),(%dx)
 156:	66                   	data16
 157:	66                   	data16
 158:	73 65                	jae    1bf <_init-0x8048235>
 15a:	74 00                	je     15c <_init-0x8048298>
 15c:	73 5f                	jae    1bd <_init-0x8048237>
 15e:	69 73 65 61 72 63 68 	imul   $0x68637261,0x65(%ebx),%esi
 165:	00 69 5f             	add    %ch,0x5f(%ecx)
 168:	67 69 64 00 73 5f 70 	imul   $0x61705f73,0x0(%si),%esp
 16f:	61 
 170:	64 00 73 5f          	add    %dh,%fs:0x5f(%ebx)
 174:	6e                   	outsb  %ds:(%esi),(%dx)
 175:	69 6e 6f 64 65 73 00 	imul   $0x736564,0x6f(%esi),%ebp
 17c:	5f                   	pop    %edi
 17d:	49                   	dec    %ecx
 17e:	4f                   	dec    %edi
 17f:	5f                   	pop    %edi
 180:	6d                   	insl   (%dx),%es:(%edi)
 181:	61                   	popa   
 182:	72 6b                	jb     1ef <_init-0x8048205>
 184:	65                   	gs
 185:	72 00                	jb     187 <_init-0x804826d>
 187:	73 5f                	jae    1e8 <_init-0x804820c>
 189:	69 6e 6f 64 65 73 5f 	imul   $0x5f736564,0x6f(%esi),%ebp
 190:	70 65                	jo     1f7 <_init-0x80481fd>
 192:	72 5f                	jb     1f3 <_init-0x8048201>
 194:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
 198:	6b 00 69             	imul   $0x69,(%eax),%eax
 19b:	5f                   	pop    %edi
 19c:	63 74 69 6d          	arpl   %si,0x6d(%ecx,%ebp,2)
 1a0:	65 00 73 5f          	add    %dh,%gs:0x5f(%ebx)
 1a4:	6c                   	insb   (%dx),%es:(%edi)
 1a5:	6f                   	outsl  %ds:(%esi),(%dx)
 1a6:	67 5f                	addr16 pop %edi
 1a8:	7a 6f                	jp     219 <_init-0x80481db>
 1aa:	6e                   	outsb  %ds:(%esi),(%dx)
 1ab:	65                   	gs
 1ac:	5f                   	pop    %edi
 1ad:	73 69                	jae    218 <_init-0x80481dc>
 1af:	7a 65                	jp     216 <_init-0x80481de>
 1b1:	00 73 5f             	add    %dh,0x5f(%ebx)
 1b4:	6e                   	outsb  %ds:(%esi),(%dx)
 1b5:	64                   	fs
 1b6:	7a 6f                	jp     227 <_init-0x80481cd>
 1b8:	6e                   	outsb  %ds:(%esi),(%dx)
 1b9:	65                   	gs
 1ba:	73 00                	jae    1bc <_init-0x8048238>
 1bc:	75 33                	jne    1f1 <_init-0x8048203>
 1be:	32 5f 74             	xor    0x74(%edi),%bl
 1c1:	00 73 5f             	add    %dh,0x5f(%ebx)
 1c4:	72 64                	jb     22a <_init-0x80481ca>
 1c6:	5f                   	pop    %edi
 1c7:	6f                   	outsl  %ds:(%esi),(%dx)
 1c8:	6e                   	outsb  %ds:(%esi),(%dx)
 1c9:	6c                   	insb   (%dx),%es:(%edi)
 1ca:	79 00                	jns    1cc <_init-0x8048228>
 1cc:	5f                   	pop    %edi
 1cd:	49                   	dec    %ecx
 1ce:	4f                   	dec    %edi
 1cf:	5f                   	pop    %edi
 1d0:	77 72                	ja     244 <_init-0x80481b0>
 1d2:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%ebp,%eiz,2),%esi
 1d9:	00 
 1da:	5f                   	pop    %edi
 1db:	73 62                	jae    23f <_init-0x80481b5>
 1dd:	75 66                	jne    245 <_init-0x80481af>
 1df:	00 73 68             	add    %dh,0x68(%ebx)
 1e2:	6f                   	outsl  %ds:(%esi),(%dx)
 1e3:	72 74                	jb     259 <_init-0x804819b>
 1e5:	20 75 6e             	and    %dh,0x6e(%ebp)
 1e8:	73 69                	jae    253 <_init-0x80481a1>
 1ea:	67 6e                	outsb  %ds:(%si),(%dx)
 1ec:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
 1f1:	74 00                	je     1f3 <_init-0x8048201>
 1f3:	5f                   	pop    %edi
 1f4:	49                   	dec    %ecx
 1f5:	4f                   	dec    %edi
 1f6:	5f                   	pop    %edi
 1f7:	73 61                	jae    25a <_init-0x804819a>
 1f9:	76 65                	jbe    260 <_init-0x8048194>
 1fb:	5f                   	pop    %edi
 1fc:	62 61 73             	bound  %esp,0x73(%ecx)
 1ff:	65 00 69 5f          	add    %ch,%gs:0x5f(%ecx)
 203:	7a 6f                	jp     274 <_init-0x8048180>
 205:	6e                   	outsb  %ds:(%esi),(%dx)
 206:	65 00 69 5f          	add    %ch,%gs:0x5f(%ecx)
 20a:	64                   	fs
 20b:	65                   	gs
 20c:	76 00                	jbe    20e <_init-0x80481e6>
 20e:	5f                   	pop    %edi
 20f:	6c                   	insb   (%dx),%es:(%edi)
 210:	6f                   	outsl  %ds:(%esi),(%dx)
 211:	63 6b 00             	arpl   %bp,0x0(%ebx)
 214:	73 5f                	jae    275 <_init-0x804817f>
 216:	6d                   	insl   (%dx),%es:(%edi)
 217:	61                   	popa   
 218:	78 5f                	js     279 <_init-0x804817b>
 21a:	73 69                	jae    285 <_init-0x804816f>
 21c:	7a 65                	jp     283 <_init-0x8048171>
 21e:	00 5f 66             	add    %bl,0x66(%edi)
 221:	6c                   	insb   (%dx),%es:(%edi)
 222:	61                   	popa   
 223:	67 73 32             	addr16 jae 258 <_init-0x804819c>
 226:	00 63 75             	add    %ah,0x75(%ebx)
 229:	72 72                	jb     29d <_init-0x8048157>
 22b:	65 6e                	outsb  %gs:(%esi),(%dx)
 22d:	74 64                	je     293 <_init-0x8048161>
 22f:	69 72 00 75 38 5f 74 	imul   $0x745f3875,0x0(%edx),%esi
 236:	00 64 5f 61          	add    %ah,0x61(%edi,%ebx,2)
 23a:	74 69                	je     2a5 <_init-0x804814f>
 23c:	6d                   	insl   (%dx),%es:(%edi)
 23d:	65 00 69 5f          	add    %ch,%gs:0x5f(%ecx)
 241:	64 69 72 74 79 00 6d 	imul   $0x616d0079,%fs:0x74(%edx),%esi
 248:	61 
 249:	69 6e 00 69 5f 61 74 	imul   $0x74615f69,0x0(%esi),%ebp
 250:	69 6d 65 00 5f 49 4f 	imul   $0x4f495f00,0x65(%ebp),%ebp
 257:	5f                   	pop    %edi
 258:	77 72                	ja     2cc <_init-0x8048128>
 25a:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%ebp,%eiz,2),%esi
 261:	00 
 262:	73 5f                	jae    2c3 <_init-0x8048131>
 264:	69 6d 6f 75 6e 74 00 	imul   $0x746e75,0x6f(%ebp),%ebp
 26b:	64                   	fs
 26c:	5f                   	pop    %edi
 26d:	7a 6f                	jp     2de <_init-0x8048116>
 26f:	6e                   	outsb  %ds:(%esi),(%dx)
 270:	65 00 64 5f 69       	add    %ah,%gs:0x69(%edi,%ebx,2)
 275:	6e                   	outsb  %ds:(%esi),(%dx)
 276:	6f                   	outsl  %ds:(%esi),(%dx)
 277:	00 5f 49             	add    %bl,0x49(%edi)
 27a:	4f                   	dec    %edi
 27b:	5f                   	pop    %edi
 27c:	6c                   	insb   (%dx),%es:(%edi)
 27d:	6f                   	outsl  %ds:(%esi),(%dx)
 27e:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 281:	74 00                	je     283 <_init-0x8048171>
 283:	5f                   	pop    %edi
 284:	49                   	dec    %ecx
 285:	4f                   	dec    %edi
 286:	5f                   	pop    %edi
 287:	46                   	inc    %esi
 288:	49                   	dec    %ecx
 289:	4c                   	dec    %esp
 28a:	45                   	inc    %ebp
 28b:	00 64 5f 6e          	add    %ah,0x6e(%edi,%ebx,2)
 28f:	6c                   	insb   (%dx),%es:(%edi)
 290:	69 6e 6b 73 00 5f 70 	imul   $0x705f0073,0x6b(%esi),%ebp
 297:	6f                   	outsl  %ds:(%esi),(%dx)
 298:	73 00                	jae    29a <_init-0x804815a>
 29a:	5f                   	pop    %edi
 29b:	6d                   	insl   (%dx),%es:(%edi)
 29c:	61                   	popa   
 29d:	72 6b                	jb     30a <_init-0x80480ea>
 29f:	65                   	gs
 2a0:	72 73                	jb     315 <_init-0x80480df>
 2a2:	00 69 5f             	add    %ch,0x5f(%ecx)
 2a5:	6d                   	insl   (%dx),%es:(%edi)
 2a6:	74 69                	je     311 <_init-0x80480e3>
 2a8:	6d                   	insl   (%dx),%es:(%edi)
 2a9:	65 00 73 5f          	add    %dh,%gs:0x5f(%ebx)
 2ad:	76 65                	jbe    314 <_init-0x80480e0>
 2af:	72 73                	jb     324 <_init-0x80480d0>
 2b1:	69 6f 6e 00 73 5f 69 	imul   $0x695f7300,0x6e(%edi),%ebp
 2b8:	6d                   	insl   (%dx),%es:(%edi)
 2b9:	61                   	popa   
 2ba:	70 5f                	jo     31b <_init-0x80480d9>
 2bc:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
 2c0:	6b 73 00 75          	imul   $0x75,0x0(%ebx),%esi
 2c4:	6e                   	outsb  %ds:(%esi),(%dx)
 2c5:	73 69                	jae    330 <_init-0x80480c4>
 2c7:	67 6e                	outsb  %ds:(%si),(%dx)
 2c9:	65 64 20 63 68       	gs and %ah,%fs:%gs:0x68(%ebx)
 2ce:	61                   	popa   
 2cf:	72 00                	jb     2d1 <_init-0x8048123>
 2d1:	64                   	fs
 2d2:	5f                   	pop    %edi
 2d3:	6d                   	insl   (%dx),%es:(%edi)
 2d4:	6f                   	outsl  %ds:(%esi),(%dx)
 2d5:	64 65 00 69 6e       	fs add %ch,%fs:%gs:0x6e(%ecx)
 2da:	6f                   	outsl  %ds:(%esi),(%dx)
 2db:	31 5f 74             	xor    %ebx,0x74(%edi)
 2de:	00 61 72             	add    %ah,0x72(%ecx)
 2e1:	67 76 00             	addr16 jbe 2e4 <_init-0x8048110>
 2e4:	73 68                	jae    34e <_init-0x80480a6>
 2e6:	6f                   	outsl  %ds:(%esi),(%dx)
 2e7:	72 74                	jb     35d <_init-0x8048097>
 2e9:	20 69 6e             	and    %ch,0x6e(%ecx)
 2ec:	74 00                	je     2ee <_init-0x8048106>
 2ee:	69 5f 75 69 64 00 5f 	imul   $0x5f006469,0x75(%edi),%ebx
 2f5:	76 74                	jbe    36b <_init-0x8048089>
 2f7:	61                   	popa   
 2f8:	62 6c 65 5f          	bound  %ebp,0x5f(%ebp,%eiz,2)
 2fc:	6f                   	outsl  %ds:(%esi),(%dx)
 2fd:	66                   	data16
 2fe:	66                   	data16
 2ff:	73 65                	jae    366 <_init-0x804808e>
 301:	74 00                	je     303 <_init-0x80480f1>
 303:	64                   	fs
 304:	5f                   	pop    %edi
 305:	75 69                	jne    370 <_init-0x8048084>
 307:	64 00 69 5f          	add    %ch,%fs:0x5f(%ecx)
 30b:	6e                   	outsb  %ds:(%esi),(%dx)
 30c:	75 6d                	jne    37b <_init-0x8048079>
 30e:	00 7a 6f             	add    %bh,0x6f(%edx)
 311:	6e                   	outsb  %ds:(%esi),(%dx)
 312:	65 31 5f 74          	xor    %ebx,%gs:0x74(%edi)
 316:	00 47 4e             	add    %al,0x4e(%edi)
 319:	55                   	push   %ebp
 31a:	20 43 20             	and    %al,0x20(%ebx)
 31d:	34 2e                	xor    $0x2e,%al
 31f:	36 2e 33 00          	ss xor %cs:%ss:(%eax),%eax
 323:	64                   	fs
 324:	5f                   	pop    %edi
 325:	63 74 69 6d          	arpl   %si,0x6d(%ecx,%ebp,2)
 329:	65 00 5f 6e          	add    %bl,%gs:0x6e(%edi)
 32d:	65                   	gs
 32e:	78 74                	js     3a4 <_init-0x8048050>
 330:	00 5f 5f             	add    %bl,0x5f(%edi)
 333:	6f                   	outsl  %ds:(%esi),(%dx)
 334:	66                   	data16
 335:	66                   	data16
 336:	36                   	ss
 337:	34 5f                	xor    $0x5f,%al
 339:	74 00                	je     33b <_init-0x80480b9>
 33b:	5f                   	pop    %edi
 33c:	49                   	dec    %ecx
 33d:	4f                   	dec    %edi
 33e:	5f                   	pop    %edi
 33f:	72 65                	jb     3a6 <_init-0x804804e>
 341:	61                   	popa   
 342:	64                   	fs
 343:	5f                   	pop    %edi
 344:	62 61 73             	bound  %esp,0x73(%ecx)
 347:	65 00 5f 49          	add    %bl,%gs:0x49(%edi)
 34b:	4f                   	dec    %edi
 34c:	5f                   	pop    %edi
 34d:	73 61                	jae    3b0 <_init-0x8048044>
 34f:	76 65                	jbe    3b6 <_init-0x804803e>
 351:	5f                   	pop    %edi
 352:	65 6e                	outsb  %gs:(%esi),(%dx)
 354:	64 00 70 72          	add    %dh,%fs:0x72(%eax)
 358:	65 64 69 72 00 73 5f 	gs imul $0x696e5f73,%fs:%gs:0x0(%edx),%esi
 35f:	6e 69 
 361:	6e                   	outsb  %ds:(%esi),(%dx)
 362:	64 69 72 73 00 5f 5f 	imul   $0x705f5f00,%fs:0x73(%edx),%esi
 369:	70 
 36a:	61                   	popa   
 36b:	64 31 00             	xor    %eax,%fs:(%eax)
 36e:	5f                   	pop    %edi
 36f:	5f                   	pop    %edi
 370:	70 61                	jo     3d3 <_init-0x8048021>
 372:	64 32 00             	xor    %fs:(%eax),%al
 375:	5f                   	pop    %edi
 376:	5f                   	pop    %edi
 377:	70 61                	jo     3da <_init-0x804801a>
 379:	64 33 00             	xor    %fs:(%eax),%eax
 37c:	5f                   	pop    %edi
 37d:	5f                   	pop    %edi
 37e:	70 61                	jo     3e1 <_init-0x8048013>
 380:	64                   	fs
 381:	34 00                	xor    $0x0,%al
 383:	5f                   	pop    %edi
 384:	5f                   	pop    %edi
 385:	70 61                	jo     3e8 <_init-0x804800c>
 387:	64                   	fs
 388:	35 00 73 5f 6e       	xor    $0x6e5f7300,%eax
 38d:	61                   	popa   
 38e:	74 69                	je     3f9 <_init-0x8047ffb>
 390:	76 65                	jbe    3f7 <_init-0x8047ffd>
 392:	00 5f 5f             	add    %bl,0x5f(%edi)
 395:	74 69                	je     400 <_init-0x8047ff4>
 397:	6d                   	insl   (%dx),%es:(%edi)
 398:	65                   	gs
 399:	5f                   	pop    %edi
 39a:	74 00                	je     39c <_init-0x8048058>
 39c:	75 31                	jne    3cf <_init-0x8048025>
 39e:	36                   	ss
 39f:	5f                   	pop    %edi
 3a0:	74 00                	je     3a2 <_init-0x8048052>
 3a2:	5f                   	pop    %edi
 3a3:	75 6e                	jne    413 <_init-0x8047fe1>
 3a5:	75 73                	jne    41a <_init-0x8047fda>
 3a7:	65 64 32 00          	gs xor %fs:%gs:(%eax),%al
 3ab:	64                   	fs
 3ac:	65                   	gs
 3ad:	76 31                	jbe    3e0 <_init-0x8048014>
 3af:	5f                   	pop    %edi
 3b0:	74 00                	je     3b2 <_init-0x8048042>
 3b2:	73 5f                	jae    413 <_init-0x8047fe1>
 3b4:	7a 6f                	jp     425 <_init-0x8047fcf>
 3b6:	6e                   	outsb  %ds:(%esi),(%dx)
 3b7:	65                   	gs
 3b8:	73 00                	jae    3ba <_init-0x804803a>
 3ba:	69 5f 6d 6f 64 65 00 	imul   $0x65646f,0x6d(%edi),%ebx
 3c1:	73 5f                	jae    422 <_init-0x8047fd2>
 3c3:	7a 6d                	jp     432 <_init-0x8047fc2>
 3c5:	61                   	popa   
 3c6:	70 5f                	jo     427 <_init-0x8047fcd>
 3c8:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
 3cc:	6b 73 00 5f          	imul   $0x5f,0x0(%ebx),%esi
 3d0:	49                   	dec    %ecx
 3d1:	4f                   	dec    %edi
 3d2:	5f                   	pop    %edi
 3d3:	62 61 63             	bound  %esp,0x63(%ecx)
 3d6:	6b 75 70 5f          	imul   $0x5f,0x70(%ebp),%esi
 3da:	62 61 73             	bound  %esp,0x73(%ecx)
 3dd:	65 00 74 69 6d       	add    %dh,%gs:0x6d(%ecx,%ebp,2)
 3e2:	65                   	gs
 3e3:	72 00                	jb     3e5 <_init-0x804800f>
 3e5:	64                   	fs
 3e6:	5f                   	pop    %edi
 3e7:	6e                   	outsb  %ds:(%esi),(%dx)
 3e8:	61                   	popa   
 3e9:	6d                   	insl   (%dx),%es:(%edi)
 3ea:	65 00 61 72          	add    %ah,%gs:0x72(%ecx)
 3ee:	67 63 00             	arpl   %ax,(%bx,%si)
 3f1:	6f                   	outsl  %ds:(%esi),(%dx)
 3f2:	66 66 31 5f 74       	data32 xor %bx,0x74(%edi)
 3f7:	00 73 5f             	add    %dh,0x5f(%ebx)
 3fa:	66 69 72 73 74 64    	imul   $0x6474,0x73(%edx),%si
 400:	61                   	popa   
 401:	74 61                	je     464 <_init-0x8047f90>
 403:	7a 6f                	jp     474 <_init-0x8047f80>
 405:	6e                   	outsb  %ds:(%esi),(%dx)
 406:	65 00 73 5f          	add    %dh,%gs:0x5f(%ebx)
 40a:	69 73 75 70 00 5f 49 	imul   $0x495f0070,0x75(%ebx),%esi
 411:	4f                   	dec    %edi
 412:	5f                   	pop    %edi
 413:	77 72                	ja     487 <_init-0x8047f6d>
 415:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%ebp,%eiz,2),%esi
 41c:	65 
 41d:	00 64 5f 73          	add    %ah,0x73(%edi,%ebx,2)
 421:	69 7a 65 00 73 5f 6d 	imul   $0x6d5f7300,0x65(%edx),%edi
 428:	61                   	popa   
 429:	67                   	addr16
 42a:	69                   	.byte 0x69
 42b:	63 00                	arpl   %ax,(%eax)

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00 00                	add    %al,(%eax)
   2:	00 00                	add    %al,(%eax)
   4:	01 00                	add    %eax,(%eax)
   6:	00 00                	add    %al,(%eax)
   8:	02 00                	add    (%eax),%al
   a:	74 04                	je     10 <_init-0x80483e4>
   c:	01 00                	add    %eax,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	03 00                	add    (%eax),%eax
  12:	00 00                	add    %al,(%eax)
  14:	02 00                	add    (%eax),%al
  16:	74 08                	je     20 <_init-0x80483d4>
  18:	03 00                	add    (%eax),%eax
  1a:	00 00                	add    %al,(%eax)
  1c:	34 04                	xor    $0x4,%al
  1e:	00 00                	add    %al,(%eax)
  20:	02 00                	add    (%eax),%al
  22:	75 08                	jne    2c <_init-0x80483c8>
  24:	34 04                	xor    $0x4,%al
  26:	00 00                	add    %al,(%eax)
  28:	35 04 00 00 02       	xor    $0x2000004,%eax
  2d:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
  31:	00 00                	add    %al,(%eax)
  33:	00 00                	add    %al,(%eax)
  35:	00 00                	add    %al,(%eax)
	...
