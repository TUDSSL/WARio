
/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src/coremark.uninstr.elf:     file format elf32-littlearm


Disassembly of section .text:

0000c000 <g_am_pfnVectors>:
    c000:	f8 ff 05 10 05 0a 01 00 55 0a 01 00 59 0a 01 00     ........U...Y...
    c010:	59 0a 01 00 59 0a 01 00 59 0a 01 00 59 0a 01 00     Y...Y...Y...Y...
	...
    c02c:	5d 0a 01 00 5d 0a 01 00 00 00 00 00 5d 0a 01 00     ]...].......]...
    c03c:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c04c:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c05c:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c06c:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c07c:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c08c:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c09c:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c0ac:	5d 0a 01 00 5d 0a 01 00 5d 0a 01 00 5d 0a 01 00     ]...]...]...]...
    c0bc:	5d 0a 01 00                                         ]...

0000c0c0 <__Patchable>:
	...

0000c100 <__aeabi_drsub>:
    c100:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
    c104:	e002      	b.n	c10c <__adddf3>
    c106:	bf00      	nop

0000c108 <__aeabi_dsub>:
    c108:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

0000c10c <__adddf3>:
    c10c:	b530      	push	{r4, r5, lr}
    c10e:	ea4f 0441 	mov.w	r4, r1, lsl #1
    c112:	ea4f 0543 	mov.w	r5, r3, lsl #1
    c116:	ea94 0f05 	teq	r4, r5
    c11a:	bf08      	it	eq
    c11c:	ea90 0f02 	teqeq	r0, r2
    c120:	bf1f      	itttt	ne
    c122:	ea54 0c00 	orrsne.w	ip, r4, r0
    c126:	ea55 0c02 	orrsne.w	ip, r5, r2
    c12a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
    c12e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
    c132:	f000 80e2 	beq.w	c2fa <__adddf3+0x1ee>
    c136:	ea4f 5454 	mov.w	r4, r4, lsr #21
    c13a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
    c13e:	bfb8      	it	lt
    c140:	426d      	neglt	r5, r5
    c142:	dd0c      	ble.n	c15e <__adddf3+0x52>
    c144:	442c      	add	r4, r5
    c146:	ea80 0202 	eor.w	r2, r0, r2
    c14a:	ea81 0303 	eor.w	r3, r1, r3
    c14e:	ea82 0000 	eor.w	r0, r2, r0
    c152:	ea83 0101 	eor.w	r1, r3, r1
    c156:	ea80 0202 	eor.w	r2, r0, r2
    c15a:	ea81 0303 	eor.w	r3, r1, r3
    c15e:	2d36      	cmp	r5, #54	; 0x36
    c160:	bf88      	it	hi
    c162:	bd30      	pophi	{r4, r5, pc}
    c164:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
    c168:	ea4f 3101 	mov.w	r1, r1, lsl #12
    c16c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
    c170:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
    c174:	d002      	beq.n	c17c <__adddf3+0x70>
    c176:	4240      	negs	r0, r0
    c178:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
    c17c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
    c180:	ea4f 3303 	mov.w	r3, r3, lsl #12
    c184:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
    c188:	d002      	beq.n	c190 <__adddf3+0x84>
    c18a:	4252      	negs	r2, r2
    c18c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
    c190:	ea94 0f05 	teq	r4, r5
    c194:	f000 80a7 	beq.w	c2e6 <__adddf3+0x1da>
    c198:	f1a4 0401 	sub.w	r4, r4, #1
    c19c:	f1d5 0e20 	rsbs	lr, r5, #32
    c1a0:	db0d      	blt.n	c1be <__adddf3+0xb2>
    c1a2:	fa02 fc0e 	lsl.w	ip, r2, lr
    c1a6:	fa22 f205 	lsr.w	r2, r2, r5
    c1aa:	1880      	adds	r0, r0, r2
    c1ac:	f141 0100 	adc.w	r1, r1, #0
    c1b0:	fa03 f20e 	lsl.w	r2, r3, lr
    c1b4:	1880      	adds	r0, r0, r2
    c1b6:	fa43 f305 	asr.w	r3, r3, r5
    c1ba:	4159      	adcs	r1, r3
    c1bc:	e00e      	b.n	c1dc <__adddf3+0xd0>
    c1be:	f1a5 0520 	sub.w	r5, r5, #32
    c1c2:	f10e 0e20 	add.w	lr, lr, #32
    c1c6:	2a01      	cmp	r2, #1
    c1c8:	fa03 fc0e 	lsl.w	ip, r3, lr
    c1cc:	bf28      	it	cs
    c1ce:	f04c 0c02 	orrcs.w	ip, ip, #2
    c1d2:	fa43 f305 	asr.w	r3, r3, r5
    c1d6:	18c0      	adds	r0, r0, r3
    c1d8:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
    c1dc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    c1e0:	d507      	bpl.n	c1f2 <__adddf3+0xe6>
    c1e2:	f04f 0e00 	mov.w	lr, #0
    c1e6:	f1dc 0c00 	rsbs	ip, ip, #0
    c1ea:	eb7e 0000 	sbcs.w	r0, lr, r0
    c1ee:	eb6e 0101 	sbc.w	r1, lr, r1
    c1f2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
    c1f6:	d31b      	bcc.n	c230 <__adddf3+0x124>
    c1f8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
    c1fc:	d30c      	bcc.n	c218 <__adddf3+0x10c>
    c1fe:	0849      	lsrs	r1, r1, #1
    c200:	ea5f 0030 	movs.w	r0, r0, rrx
    c204:	ea4f 0c3c 	mov.w	ip, ip, rrx
    c208:	f104 0401 	add.w	r4, r4, #1
    c20c:	ea4f 5244 	mov.w	r2, r4, lsl #21
    c210:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
    c214:	f080 809a 	bcs.w	c34c <__adddf3+0x240>
    c218:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
    c21c:	bf08      	it	eq
    c21e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
    c222:	f150 0000 	adcs.w	r0, r0, #0
    c226:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    c22a:	ea41 0105 	orr.w	r1, r1, r5
    c22e:	bd30      	pop	{r4, r5, pc}
    c230:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
    c234:	4140      	adcs	r0, r0
    c236:	eb41 0101 	adc.w	r1, r1, r1
    c23a:	3c01      	subs	r4, #1
    c23c:	bf28      	it	cs
    c23e:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
    c242:	d2e9      	bcs.n	c218 <__adddf3+0x10c>
    c244:	f091 0f00 	teq	r1, #0
    c248:	bf04      	itt	eq
    c24a:	4601      	moveq	r1, r0
    c24c:	2000      	moveq	r0, #0
    c24e:	fab1 f381 	clz	r3, r1
    c252:	bf08      	it	eq
    c254:	3320      	addeq	r3, #32
    c256:	f1a3 030b 	sub.w	r3, r3, #11
    c25a:	f1b3 0220 	subs.w	r2, r3, #32
    c25e:	da0c      	bge.n	c27a <__adddf3+0x16e>
    c260:	320c      	adds	r2, #12
    c262:	dd08      	ble.n	c276 <__adddf3+0x16a>
    c264:	f102 0c14 	add.w	ip, r2, #20
    c268:	f1c2 020c 	rsb	r2, r2, #12
    c26c:	fa01 f00c 	lsl.w	r0, r1, ip
    c270:	fa21 f102 	lsr.w	r1, r1, r2
    c274:	e00c      	b.n	c290 <__adddf3+0x184>
    c276:	f102 0214 	add.w	r2, r2, #20
    c27a:	bfd8      	it	le
    c27c:	f1c2 0c20 	rsble	ip, r2, #32
    c280:	fa01 f102 	lsl.w	r1, r1, r2
    c284:	fa20 fc0c 	lsr.w	ip, r0, ip
    c288:	bfdc      	itt	le
    c28a:	ea41 010c 	orrle.w	r1, r1, ip
    c28e:	4090      	lslle	r0, r2
    c290:	1ae4      	subs	r4, r4, r3
    c292:	bfa2      	ittt	ge
    c294:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
    c298:	4329      	orrge	r1, r5
    c29a:	bd30      	popge	{r4, r5, pc}
    c29c:	ea6f 0404 	mvn.w	r4, r4
    c2a0:	3c1f      	subs	r4, #31
    c2a2:	da1c      	bge.n	c2de <__adddf3+0x1d2>
    c2a4:	340c      	adds	r4, #12
    c2a6:	dc0e      	bgt.n	c2c6 <__adddf3+0x1ba>
    c2a8:	f104 0414 	add.w	r4, r4, #20
    c2ac:	f1c4 0220 	rsb	r2, r4, #32
    c2b0:	fa20 f004 	lsr.w	r0, r0, r4
    c2b4:	fa01 f302 	lsl.w	r3, r1, r2
    c2b8:	ea40 0003 	orr.w	r0, r0, r3
    c2bc:	fa21 f304 	lsr.w	r3, r1, r4
    c2c0:	ea45 0103 	orr.w	r1, r5, r3
    c2c4:	bd30      	pop	{r4, r5, pc}
    c2c6:	f1c4 040c 	rsb	r4, r4, #12
    c2ca:	f1c4 0220 	rsb	r2, r4, #32
    c2ce:	fa20 f002 	lsr.w	r0, r0, r2
    c2d2:	fa01 f304 	lsl.w	r3, r1, r4
    c2d6:	ea40 0003 	orr.w	r0, r0, r3
    c2da:	4629      	mov	r1, r5
    c2dc:	bd30      	pop	{r4, r5, pc}
    c2de:	fa21 f004 	lsr.w	r0, r1, r4
    c2e2:	4629      	mov	r1, r5
    c2e4:	bd30      	pop	{r4, r5, pc}
    c2e6:	f094 0f00 	teq	r4, #0
    c2ea:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
    c2ee:	bf06      	itte	eq
    c2f0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
    c2f4:	3401      	addeq	r4, #1
    c2f6:	3d01      	subne	r5, #1
    c2f8:	e74e      	b.n	c198 <__adddf3+0x8c>
    c2fa:	ea7f 5c64 	mvns.w	ip, r4, asr #21
    c2fe:	bf18      	it	ne
    c300:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
    c304:	d029      	beq.n	c35a <__adddf3+0x24e>
    c306:	ea94 0f05 	teq	r4, r5
    c30a:	bf08      	it	eq
    c30c:	ea90 0f02 	teqeq	r0, r2
    c310:	d005      	beq.n	c31e <__adddf3+0x212>
    c312:	ea54 0c00 	orrs.w	ip, r4, r0
    c316:	bf04      	itt	eq
    c318:	4619      	moveq	r1, r3
    c31a:	4610      	moveq	r0, r2
    c31c:	bd30      	pop	{r4, r5, pc}
    c31e:	ea91 0f03 	teq	r1, r3
    c322:	bf1e      	ittt	ne
    c324:	2100      	movne	r1, #0
    c326:	2000      	movne	r0, #0
    c328:	bd30      	popne	{r4, r5, pc}
    c32a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
    c32e:	d105      	bne.n	c33c <__adddf3+0x230>
    c330:	0040      	lsls	r0, r0, #1
    c332:	4149      	adcs	r1, r1
    c334:	bf28      	it	cs
    c336:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
    c33a:	bd30      	pop	{r4, r5, pc}
    c33c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
    c340:	bf3c      	itt	cc
    c342:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
    c346:	bd30      	popcc	{r4, r5, pc}
    c348:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    c34c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
    c350:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
    c354:	f04f 0000 	mov.w	r0, #0
    c358:	bd30      	pop	{r4, r5, pc}
    c35a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
    c35e:	bf1a      	itte	ne
    c360:	4619      	movne	r1, r3
    c362:	4610      	movne	r0, r2
    c364:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
    c368:	bf1c      	itt	ne
    c36a:	460b      	movne	r3, r1
    c36c:	4602      	movne	r2, r0
    c36e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
    c372:	bf06      	itte	eq
    c374:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
    c378:	ea91 0f03 	teqeq	r1, r3
    c37c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
    c380:	bd30      	pop	{r4, r5, pc}
    c382:	bf00      	nop

0000c384 <__aeabi_ui2d>:
    c384:	f090 0f00 	teq	r0, #0
    c388:	bf04      	itt	eq
    c38a:	2100      	moveq	r1, #0
    c38c:	4770      	bxeq	lr
    c38e:	b530      	push	{r4, r5, lr}
    c390:	f44f 6480 	mov.w	r4, #1024	; 0x400
    c394:	f104 0432 	add.w	r4, r4, #50	; 0x32
    c398:	f04f 0500 	mov.w	r5, #0
    c39c:	f04f 0100 	mov.w	r1, #0
    c3a0:	e750      	b.n	c244 <__adddf3+0x138>
    c3a2:	bf00      	nop

0000c3a4 <__aeabi_i2d>:
    c3a4:	f090 0f00 	teq	r0, #0
    c3a8:	bf04      	itt	eq
    c3aa:	2100      	moveq	r1, #0
    c3ac:	4770      	bxeq	lr
    c3ae:	b530      	push	{r4, r5, lr}
    c3b0:	f44f 6480 	mov.w	r4, #1024	; 0x400
    c3b4:	f104 0432 	add.w	r4, r4, #50	; 0x32
    c3b8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
    c3bc:	bf48      	it	mi
    c3be:	4240      	negmi	r0, r0
    c3c0:	f04f 0100 	mov.w	r1, #0
    c3c4:	e73e      	b.n	c244 <__adddf3+0x138>
    c3c6:	bf00      	nop

0000c3c8 <__aeabi_f2d>:
    c3c8:	0042      	lsls	r2, r0, #1
    c3ca:	ea4f 01e2 	mov.w	r1, r2, asr #3
    c3ce:	ea4f 0131 	mov.w	r1, r1, rrx
    c3d2:	ea4f 7002 	mov.w	r0, r2, lsl #28
    c3d6:	bf1f      	itttt	ne
    c3d8:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
    c3dc:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
    c3e0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
    c3e4:	4770      	bxne	lr
    c3e6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
    c3ea:	bf08      	it	eq
    c3ec:	4770      	bxeq	lr
    c3ee:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
    c3f2:	bf04      	itt	eq
    c3f4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
    c3f8:	4770      	bxeq	lr
    c3fa:	b530      	push	{r4, r5, lr}
    c3fc:	f44f 7460 	mov.w	r4, #896	; 0x380
    c400:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    c404:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
    c408:	e71c      	b.n	c244 <__adddf3+0x138>
    c40a:	bf00      	nop

0000c40c <__aeabi_ul2d>:
    c40c:	ea50 0201 	orrs.w	r2, r0, r1
    c410:	bf08      	it	eq
    c412:	4770      	bxeq	lr
    c414:	b530      	push	{r4, r5, lr}
    c416:	f04f 0500 	mov.w	r5, #0
    c41a:	e00a      	b.n	c432 <__aeabi_l2d+0x16>

0000c41c <__aeabi_l2d>:
    c41c:	ea50 0201 	orrs.w	r2, r0, r1
    c420:	bf08      	it	eq
    c422:	4770      	bxeq	lr
    c424:	b530      	push	{r4, r5, lr}
    c426:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
    c42a:	d502      	bpl.n	c432 <__aeabi_l2d+0x16>
    c42c:	4240      	negs	r0, r0
    c42e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
    c432:	f44f 6480 	mov.w	r4, #1024	; 0x400
    c436:	f104 0432 	add.w	r4, r4, #50	; 0x32
    c43a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
    c43e:	f43f aed8 	beq.w	c1f2 <__adddf3+0xe6>
    c442:	f04f 0203 	mov.w	r2, #3
    c446:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
    c44a:	bf18      	it	ne
    c44c:	3203      	addne	r2, #3
    c44e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
    c452:	bf18      	it	ne
    c454:	3203      	addne	r2, #3
    c456:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
    c45a:	f1c2 0320 	rsb	r3, r2, #32
    c45e:	fa00 fc03 	lsl.w	ip, r0, r3
    c462:	fa20 f002 	lsr.w	r0, r0, r2
    c466:	fa01 fe03 	lsl.w	lr, r1, r3
    c46a:	ea40 000e 	orr.w	r0, r0, lr
    c46e:	fa21 f102 	lsr.w	r1, r1, r2
    c472:	4414      	add	r4, r2
    c474:	e6bd      	b.n	c1f2 <__adddf3+0xe6>
    c476:	bf00      	nop

0000c478 <__aeabi_dmul>:
    c478:	b570      	push	{r4, r5, r6, lr}
    c47a:	f04f 0cff 	mov.w	ip, #255	; 0xff
    c47e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
    c482:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
    c486:	bf1d      	ittte	ne
    c488:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
    c48c:	ea94 0f0c 	teqne	r4, ip
    c490:	ea95 0f0c 	teqne	r5, ip
    c494:	f000 f8de 	bleq	c654 <__aeabi_dmul+0x1dc>
    c498:	442c      	add	r4, r5
    c49a:	ea81 0603 	eor.w	r6, r1, r3
    c49e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
    c4a2:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
    c4a6:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
    c4aa:	bf18      	it	ne
    c4ac:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
    c4b0:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    c4b4:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
    c4b8:	d038      	beq.n	c52c <__aeabi_dmul+0xb4>
    c4ba:	fba0 ce02 	umull	ip, lr, r0, r2
    c4be:	f04f 0500 	mov.w	r5, #0
    c4c2:	fbe1 e502 	umlal	lr, r5, r1, r2
    c4c6:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
    c4ca:	fbe0 e503 	umlal	lr, r5, r0, r3
    c4ce:	f04f 0600 	mov.w	r6, #0
    c4d2:	fbe1 5603 	umlal	r5, r6, r1, r3
    c4d6:	f09c 0f00 	teq	ip, #0
    c4da:	bf18      	it	ne
    c4dc:	f04e 0e01 	orrne.w	lr, lr, #1
    c4e0:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
    c4e4:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
    c4e8:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
    c4ec:	d204      	bcs.n	c4f8 <__aeabi_dmul+0x80>
    c4ee:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
    c4f2:	416d      	adcs	r5, r5
    c4f4:	eb46 0606 	adc.w	r6, r6, r6
    c4f8:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
    c4fc:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
    c500:	ea4f 20c5 	mov.w	r0, r5, lsl #11
    c504:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
    c508:	ea4f 2ece 	mov.w	lr, lr, lsl #11
    c50c:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
    c510:	bf88      	it	hi
    c512:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
    c516:	d81e      	bhi.n	c556 <__aeabi_dmul+0xde>
    c518:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
    c51c:	bf08      	it	eq
    c51e:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
    c522:	f150 0000 	adcs.w	r0, r0, #0
    c526:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    c52a:	bd70      	pop	{r4, r5, r6, pc}
    c52c:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
    c530:	ea46 0101 	orr.w	r1, r6, r1
    c534:	ea40 0002 	orr.w	r0, r0, r2
    c538:	ea81 0103 	eor.w	r1, r1, r3
    c53c:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
    c540:	bfc2      	ittt	gt
    c542:	ebd4 050c 	rsbsgt	r5, r4, ip
    c546:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
    c54a:	bd70      	popgt	{r4, r5, r6, pc}
    c54c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    c550:	f04f 0e00 	mov.w	lr, #0
    c554:	3c01      	subs	r4, #1
    c556:	f300 80ab 	bgt.w	c6b0 <__aeabi_dmul+0x238>
    c55a:	f114 0f36 	cmn.w	r4, #54	; 0x36
    c55e:	bfde      	ittt	le
    c560:	2000      	movle	r0, #0
    c562:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
    c566:	bd70      	pople	{r4, r5, r6, pc}
    c568:	f1c4 0400 	rsb	r4, r4, #0
    c56c:	3c20      	subs	r4, #32
    c56e:	da35      	bge.n	c5dc <__aeabi_dmul+0x164>
    c570:	340c      	adds	r4, #12
    c572:	dc1b      	bgt.n	c5ac <__aeabi_dmul+0x134>
    c574:	f104 0414 	add.w	r4, r4, #20
    c578:	f1c4 0520 	rsb	r5, r4, #32
    c57c:	fa00 f305 	lsl.w	r3, r0, r5
    c580:	fa20 f004 	lsr.w	r0, r0, r4
    c584:	fa01 f205 	lsl.w	r2, r1, r5
    c588:	ea40 0002 	orr.w	r0, r0, r2
    c58c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
    c590:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
    c594:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    c598:	fa21 f604 	lsr.w	r6, r1, r4
    c59c:	eb42 0106 	adc.w	r1, r2, r6
    c5a0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    c5a4:	bf08      	it	eq
    c5a6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    c5aa:	bd70      	pop	{r4, r5, r6, pc}
    c5ac:	f1c4 040c 	rsb	r4, r4, #12
    c5b0:	f1c4 0520 	rsb	r5, r4, #32
    c5b4:	fa00 f304 	lsl.w	r3, r0, r4
    c5b8:	fa20 f005 	lsr.w	r0, r0, r5
    c5bc:	fa01 f204 	lsl.w	r2, r1, r4
    c5c0:	ea40 0002 	orr.w	r0, r0, r2
    c5c4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    c5c8:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    c5cc:	f141 0100 	adc.w	r1, r1, #0
    c5d0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    c5d4:	bf08      	it	eq
    c5d6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    c5da:	bd70      	pop	{r4, r5, r6, pc}
    c5dc:	f1c4 0520 	rsb	r5, r4, #32
    c5e0:	fa00 f205 	lsl.w	r2, r0, r5
    c5e4:	ea4e 0e02 	orr.w	lr, lr, r2
    c5e8:	fa20 f304 	lsr.w	r3, r0, r4
    c5ec:	fa01 f205 	lsl.w	r2, r1, r5
    c5f0:	ea43 0302 	orr.w	r3, r3, r2
    c5f4:	fa21 f004 	lsr.w	r0, r1, r4
    c5f8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    c5fc:	fa21 f204 	lsr.w	r2, r1, r4
    c600:	ea20 0002 	bic.w	r0, r0, r2
    c604:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
    c608:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    c60c:	bf08      	it	eq
    c60e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    c612:	bd70      	pop	{r4, r5, r6, pc}
    c614:	f094 0f00 	teq	r4, #0
    c618:	d10f      	bne.n	c63a <__aeabi_dmul+0x1c2>
    c61a:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
    c61e:	0040      	lsls	r0, r0, #1
    c620:	eb41 0101 	adc.w	r1, r1, r1
    c624:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    c628:	bf08      	it	eq
    c62a:	3c01      	subeq	r4, #1
    c62c:	d0f7      	beq.n	c61e <__aeabi_dmul+0x1a6>
    c62e:	ea41 0106 	orr.w	r1, r1, r6
    c632:	f095 0f00 	teq	r5, #0
    c636:	bf18      	it	ne
    c638:	4770      	bxne	lr
    c63a:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
    c63e:	0052      	lsls	r2, r2, #1
    c640:	eb43 0303 	adc.w	r3, r3, r3
    c644:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
    c648:	bf08      	it	eq
    c64a:	3d01      	subeq	r5, #1
    c64c:	d0f7      	beq.n	c63e <__aeabi_dmul+0x1c6>
    c64e:	ea43 0306 	orr.w	r3, r3, r6
    c652:	4770      	bx	lr
    c654:	ea94 0f0c 	teq	r4, ip
    c658:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
    c65c:	bf18      	it	ne
    c65e:	ea95 0f0c 	teqne	r5, ip
    c662:	d00c      	beq.n	c67e <__aeabi_dmul+0x206>
    c664:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    c668:	bf18      	it	ne
    c66a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    c66e:	d1d1      	bne.n	c614 <__aeabi_dmul+0x19c>
    c670:	ea81 0103 	eor.w	r1, r1, r3
    c674:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    c678:	f04f 0000 	mov.w	r0, #0
    c67c:	bd70      	pop	{r4, r5, r6, pc}
    c67e:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    c682:	bf06      	itte	eq
    c684:	4610      	moveq	r0, r2
    c686:	4619      	moveq	r1, r3
    c688:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    c68c:	d019      	beq.n	c6c2 <__aeabi_dmul+0x24a>
    c68e:	ea94 0f0c 	teq	r4, ip
    c692:	d102      	bne.n	c69a <__aeabi_dmul+0x222>
    c694:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
    c698:	d113      	bne.n	c6c2 <__aeabi_dmul+0x24a>
    c69a:	ea95 0f0c 	teq	r5, ip
    c69e:	d105      	bne.n	c6ac <__aeabi_dmul+0x234>
    c6a0:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
    c6a4:	bf1c      	itt	ne
    c6a6:	4610      	movne	r0, r2
    c6a8:	4619      	movne	r1, r3
    c6aa:	d10a      	bne.n	c6c2 <__aeabi_dmul+0x24a>
    c6ac:	ea81 0103 	eor.w	r1, r1, r3
    c6b0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    c6b4:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    c6b8:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
    c6bc:	f04f 0000 	mov.w	r0, #0
    c6c0:	bd70      	pop	{r4, r5, r6, pc}
    c6c2:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    c6c6:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
    c6ca:	bd70      	pop	{r4, r5, r6, pc}

0000c6cc <__aeabi_ddiv>:
    c6cc:	b570      	push	{r4, r5, r6, lr}
    c6ce:	f04f 0cff 	mov.w	ip, #255	; 0xff
    c6d2:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
    c6d6:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
    c6da:	bf1d      	ittte	ne
    c6dc:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
    c6e0:	ea94 0f0c 	teqne	r4, ip
    c6e4:	ea95 0f0c 	teqne	r5, ip
    c6e8:	f000 f8a7 	bleq	c83a <__aeabi_ddiv+0x16e>
    c6ec:	eba4 0405 	sub.w	r4, r4, r5
    c6f0:	ea81 0e03 	eor.w	lr, r1, r3
    c6f4:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
    c6f8:	ea4f 3101 	mov.w	r1, r1, lsl #12
    c6fc:	f000 8088 	beq.w	c810 <__aeabi_ddiv+0x144>
    c700:	ea4f 3303 	mov.w	r3, r3, lsl #12
    c704:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
    c708:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
    c70c:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
    c710:	ea4f 2202 	mov.w	r2, r2, lsl #8
    c714:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
    c718:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
    c71c:	ea4f 2600 	mov.w	r6, r0, lsl #8
    c720:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
    c724:	429d      	cmp	r5, r3
    c726:	bf08      	it	eq
    c728:	4296      	cmpeq	r6, r2
    c72a:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
    c72e:	f504 7440 	add.w	r4, r4, #768	; 0x300
    c732:	d202      	bcs.n	c73a <__aeabi_ddiv+0x6e>
    c734:	085b      	lsrs	r3, r3, #1
    c736:	ea4f 0232 	mov.w	r2, r2, rrx
    c73a:	1ab6      	subs	r6, r6, r2
    c73c:	eb65 0503 	sbc.w	r5, r5, r3
    c740:	085b      	lsrs	r3, r3, #1
    c742:	ea4f 0232 	mov.w	r2, r2, rrx
    c746:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
    c74a:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
    c74e:	ebb6 0e02 	subs.w	lr, r6, r2
    c752:	eb75 0e03 	sbcs.w	lr, r5, r3
    c756:	bf22      	ittt	cs
    c758:	1ab6      	subcs	r6, r6, r2
    c75a:	4675      	movcs	r5, lr
    c75c:	ea40 000c 	orrcs.w	r0, r0, ip
    c760:	085b      	lsrs	r3, r3, #1
    c762:	ea4f 0232 	mov.w	r2, r2, rrx
    c766:	ebb6 0e02 	subs.w	lr, r6, r2
    c76a:	eb75 0e03 	sbcs.w	lr, r5, r3
    c76e:	bf22      	ittt	cs
    c770:	1ab6      	subcs	r6, r6, r2
    c772:	4675      	movcs	r5, lr
    c774:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
    c778:	085b      	lsrs	r3, r3, #1
    c77a:	ea4f 0232 	mov.w	r2, r2, rrx
    c77e:	ebb6 0e02 	subs.w	lr, r6, r2
    c782:	eb75 0e03 	sbcs.w	lr, r5, r3
    c786:	bf22      	ittt	cs
    c788:	1ab6      	subcs	r6, r6, r2
    c78a:	4675      	movcs	r5, lr
    c78c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
    c790:	085b      	lsrs	r3, r3, #1
    c792:	ea4f 0232 	mov.w	r2, r2, rrx
    c796:	ebb6 0e02 	subs.w	lr, r6, r2
    c79a:	eb75 0e03 	sbcs.w	lr, r5, r3
    c79e:	bf22      	ittt	cs
    c7a0:	1ab6      	subcs	r6, r6, r2
    c7a2:	4675      	movcs	r5, lr
    c7a4:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
    c7a8:	ea55 0e06 	orrs.w	lr, r5, r6
    c7ac:	d018      	beq.n	c7e0 <__aeabi_ddiv+0x114>
    c7ae:	ea4f 1505 	mov.w	r5, r5, lsl #4
    c7b2:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
    c7b6:	ea4f 1606 	mov.w	r6, r6, lsl #4
    c7ba:	ea4f 03c3 	mov.w	r3, r3, lsl #3
    c7be:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
    c7c2:	ea4f 02c2 	mov.w	r2, r2, lsl #3
    c7c6:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
    c7ca:	d1c0      	bne.n	c74e <__aeabi_ddiv+0x82>
    c7cc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    c7d0:	d10b      	bne.n	c7ea <__aeabi_ddiv+0x11e>
    c7d2:	ea41 0100 	orr.w	r1, r1, r0
    c7d6:	f04f 0000 	mov.w	r0, #0
    c7da:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
    c7de:	e7b6      	b.n	c74e <__aeabi_ddiv+0x82>
    c7e0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    c7e4:	bf04      	itt	eq
    c7e6:	4301      	orreq	r1, r0
    c7e8:	2000      	moveq	r0, #0
    c7ea:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
    c7ee:	bf88      	it	hi
    c7f0:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
    c7f4:	f63f aeaf 	bhi.w	c556 <__aeabi_dmul+0xde>
    c7f8:	ebb5 0c03 	subs.w	ip, r5, r3
    c7fc:	bf04      	itt	eq
    c7fe:	ebb6 0c02 	subseq.w	ip, r6, r2
    c802:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
    c806:	f150 0000 	adcs.w	r0, r0, #0
    c80a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    c80e:	bd70      	pop	{r4, r5, r6, pc}
    c810:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
    c814:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
    c818:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
    c81c:	bfc2      	ittt	gt
    c81e:	ebd4 050c 	rsbsgt	r5, r4, ip
    c822:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
    c826:	bd70      	popgt	{r4, r5, r6, pc}
    c828:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    c82c:	f04f 0e00 	mov.w	lr, #0
    c830:	3c01      	subs	r4, #1
    c832:	e690      	b.n	c556 <__aeabi_dmul+0xde>
    c834:	ea45 0e06 	orr.w	lr, r5, r6
    c838:	e68d      	b.n	c556 <__aeabi_dmul+0xde>
    c83a:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
    c83e:	ea94 0f0c 	teq	r4, ip
    c842:	bf08      	it	eq
    c844:	ea95 0f0c 	teqeq	r5, ip
    c848:	f43f af3b 	beq.w	c6c2 <__aeabi_dmul+0x24a>
    c84c:	ea94 0f0c 	teq	r4, ip
    c850:	d10a      	bne.n	c868 <__aeabi_ddiv+0x19c>
    c852:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
    c856:	f47f af34 	bne.w	c6c2 <__aeabi_dmul+0x24a>
    c85a:	ea95 0f0c 	teq	r5, ip
    c85e:	f47f af25 	bne.w	c6ac <__aeabi_dmul+0x234>
    c862:	4610      	mov	r0, r2
    c864:	4619      	mov	r1, r3
    c866:	e72c      	b.n	c6c2 <__aeabi_dmul+0x24a>
    c868:	ea95 0f0c 	teq	r5, ip
    c86c:	d106      	bne.n	c87c <__aeabi_ddiv+0x1b0>
    c86e:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
    c872:	f43f aefd 	beq.w	c670 <__aeabi_dmul+0x1f8>
    c876:	4610      	mov	r0, r2
    c878:	4619      	mov	r1, r3
    c87a:	e722      	b.n	c6c2 <__aeabi_dmul+0x24a>
    c87c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    c880:	bf18      	it	ne
    c882:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    c886:	f47f aec5 	bne.w	c614 <__aeabi_dmul+0x19c>
    c88a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
    c88e:	f47f af0d 	bne.w	c6ac <__aeabi_dmul+0x234>
    c892:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
    c896:	f47f aeeb 	bne.w	c670 <__aeabi_dmul+0x1f8>
    c89a:	e712      	b.n	c6c2 <__aeabi_dmul+0x24a>

0000c89c <__aeabi_d2iz>:
    c89c:	ea4f 0241 	mov.w	r2, r1, lsl #1
    c8a0:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
    c8a4:	d215      	bcs.n	c8d2 <__aeabi_d2iz+0x36>
    c8a6:	d511      	bpl.n	c8cc <__aeabi_d2iz+0x30>
    c8a8:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
    c8ac:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
    c8b0:	d912      	bls.n	c8d8 <__aeabi_d2iz+0x3c>
    c8b2:	ea4f 23c1 	mov.w	r3, r1, lsl #11
    c8b6:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
    c8ba:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
    c8be:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
    c8c2:	fa23 f002 	lsr.w	r0, r3, r2
    c8c6:	bf18      	it	ne
    c8c8:	4240      	negne	r0, r0
    c8ca:	4770      	bx	lr
    c8cc:	f04f 0000 	mov.w	r0, #0
    c8d0:	4770      	bx	lr
    c8d2:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
    c8d6:	d105      	bne.n	c8e4 <__aeabi_d2iz+0x48>
    c8d8:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
    c8dc:	bf08      	it	eq
    c8de:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
    c8e2:	4770      	bx	lr
    c8e4:	f04f 0000 	mov.w	r0, #0
    c8e8:	4770      	bx	lr
    c8ea:	bf00      	nop

0000c8ec <__aeabi_d2uiz>:
    c8ec:	004a      	lsls	r2, r1, #1
    c8ee:	d211      	bcs.n	c914 <__aeabi_d2uiz+0x28>
    c8f0:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
    c8f4:	d211      	bcs.n	c91a <__aeabi_d2uiz+0x2e>
    c8f6:	d50d      	bpl.n	c914 <__aeabi_d2uiz+0x28>
    c8f8:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
    c8fc:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
    c900:	d40e      	bmi.n	c920 <__aeabi_d2uiz+0x34>
    c902:	ea4f 23c1 	mov.w	r3, r1, lsl #11
    c906:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
    c90a:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
    c90e:	fa23 f002 	lsr.w	r0, r3, r2
    c912:	4770      	bx	lr
    c914:	f04f 0000 	mov.w	r0, #0
    c918:	4770      	bx	lr
    c91a:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
    c91e:	d102      	bne.n	c926 <__aeabi_d2uiz+0x3a>
    c920:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    c924:	4770      	bx	lr
    c926:	f04f 0000 	mov.w	r0, #0
    c92a:	4770      	bx	lr

0000c92c <__gedf2>:
    c92c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
    c930:	e006      	b.n	c940 <__cmpdf2+0x4>
    c932:	bf00      	nop

0000c934 <__ledf2>:
    c934:	f04f 0c01 	mov.w	ip, #1
    c938:	e002      	b.n	c940 <__cmpdf2+0x4>
    c93a:	bf00      	nop

0000c93c <__cmpdf2>:
    c93c:	f04f 0c01 	mov.w	ip, #1
    c940:	f84d cd04 	str.w	ip, [sp, #-4]!
    c944:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    c948:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    c94c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    c950:	bf18      	it	ne
    c952:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
    c956:	d01b      	beq.n	c990 <__cmpdf2+0x54>
    c958:	b001      	add	sp, #4
    c95a:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
    c95e:	bf0c      	ite	eq
    c960:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
    c964:	ea91 0f03 	teqne	r1, r3
    c968:	bf02      	ittt	eq
    c96a:	ea90 0f02 	teqeq	r0, r2
    c96e:	2000      	moveq	r0, #0
    c970:	4770      	bxeq	lr
    c972:	f110 0f00 	cmn.w	r0, #0
    c976:	ea91 0f03 	teq	r1, r3
    c97a:	bf58      	it	pl
    c97c:	4299      	cmppl	r1, r3
    c97e:	bf08      	it	eq
    c980:	4290      	cmpeq	r0, r2
    c982:	bf2c      	ite	cs
    c984:	17d8      	asrcs	r0, r3, #31
    c986:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
    c98a:	f040 0001 	orr.w	r0, r0, #1
    c98e:	4770      	bx	lr
    c990:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    c994:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    c998:	d102      	bne.n	c9a0 <__cmpdf2+0x64>
    c99a:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
    c99e:	d107      	bne.n	c9b0 <__cmpdf2+0x74>
    c9a0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    c9a4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    c9a8:	d1d6      	bne.n	c958 <__cmpdf2+0x1c>
    c9aa:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
    c9ae:	d0d3      	beq.n	c958 <__cmpdf2+0x1c>
    c9b0:	f85d 0b04 	ldr.w	r0, [sp], #4
    c9b4:	4770      	bx	lr
    c9b6:	bf00      	nop

0000c9b8 <__aeabi_cdrcmple>:
    c9b8:	4684      	mov	ip, r0
    c9ba:	4610      	mov	r0, r2
    c9bc:	4662      	mov	r2, ip
    c9be:	468c      	mov	ip, r1
    c9c0:	4619      	mov	r1, r3
    c9c2:	4663      	mov	r3, ip
    c9c4:	e000      	b.n	c9c8 <__aeabi_cdcmpeq>
    c9c6:	bf00      	nop

0000c9c8 <__aeabi_cdcmpeq>:
    c9c8:	b501      	push	{r0, lr}
    c9ca:	f7ff ffb7 	bl	c93c <__cmpdf2>
    c9ce:	2800      	cmp	r0, #0
    c9d0:	bf48      	it	mi
    c9d2:	f110 0f00 	cmnmi.w	r0, #0
    c9d6:	bd01      	pop	{r0, pc}

0000c9d8 <__aeabi_dcmpeq>:
    c9d8:	f84d ed08 	str.w	lr, [sp, #-8]!
    c9dc:	f7ff fff4 	bl	c9c8 <__aeabi_cdcmpeq>
    c9e0:	bf0c      	ite	eq
    c9e2:	2001      	moveq	r0, #1
    c9e4:	2000      	movne	r0, #0
    c9e6:	f85d fb08 	ldr.w	pc, [sp], #8
    c9ea:	bf00      	nop

0000c9ec <__aeabi_dcmplt>:
    c9ec:	f84d ed08 	str.w	lr, [sp, #-8]!
    c9f0:	f7ff ffea 	bl	c9c8 <__aeabi_cdcmpeq>
    c9f4:	bf34      	ite	cc
    c9f6:	2001      	movcc	r0, #1
    c9f8:	2000      	movcs	r0, #0
    c9fa:	f85d fb08 	ldr.w	pc, [sp], #8
    c9fe:	bf00      	nop

0000ca00 <__aeabi_dcmple>:
    ca00:	f84d ed08 	str.w	lr, [sp, #-8]!
    ca04:	f7ff ffe0 	bl	c9c8 <__aeabi_cdcmpeq>
    ca08:	bf94      	ite	ls
    ca0a:	2001      	movls	r0, #1
    ca0c:	2000      	movhi	r0, #0
    ca0e:	f85d fb08 	ldr.w	pc, [sp], #8
    ca12:	bf00      	nop

0000ca14 <__aeabi_dcmpge>:
    ca14:	f84d ed08 	str.w	lr, [sp, #-8]!
    ca18:	f7ff ffce 	bl	c9b8 <__aeabi_cdrcmple>
    ca1c:	bf94      	ite	ls
    ca1e:	2001      	movls	r0, #1
    ca20:	2000      	movhi	r0, #0
    ca22:	f85d fb08 	ldr.w	pc, [sp], #8
    ca26:	bf00      	nop

0000ca28 <__aeabi_dcmpgt>:
    ca28:	f84d ed08 	str.w	lr, [sp, #-8]!
    ca2c:	f7ff ffc4 	bl	c9b8 <__aeabi_cdrcmple>
    ca30:	bf34      	ite	cc
    ca32:	2001      	movcc	r0, #1
    ca34:	2000      	movcs	r0, #0
    ca36:	f85d fb08 	ldr.w	pc, [sp], #8
    ca3a:	bf00      	nop

0000ca3c <__aeabi_dcmpun>:
    ca3c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    ca40:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    ca44:	d102      	bne.n	ca4c <__aeabi_dcmpun+0x10>
    ca46:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
    ca4a:	d10a      	bne.n	ca62 <__aeabi_dcmpun+0x26>
    ca4c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    ca50:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    ca54:	d102      	bne.n	ca5c <__aeabi_dcmpun+0x20>
    ca56:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
    ca5a:	d102      	bne.n	ca62 <__aeabi_dcmpun+0x26>
    ca5c:	f04f 0000 	mov.w	r0, #0
    ca60:	4770      	bx	lr
    ca62:	f04f 0001 	mov.w	r0, #1
    ca66:	4770      	bx	lr

0000ca68 <calc_func>:
                               list_cmp      cmp,
                               core_results *res);

ee_s16
calc_func(ee_s16 *pdata, core_results *res)
{
    ca68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    ca6c:	b082      	sub	sp, #8
    ee_s16 data = *pdata;
    ca6e:	8807      	ldrh	r7, [r0, #0]
    ca70:	4680      	mov	r8, r0
    ee_s16 retval;
    ee_u8  optype
        = (data >> 7)
          & 1;  /* bit 7 indicates if the function result has been cached */
    if (optype) /* if cached, use cache */
    ca72:	0638      	lsls	r0, r7, #24
    ca74:	d41e      	bmi.n	cab4 <calc_func+0x4c>
    ca76:	460d      	mov	r5, r1
        return (data & 0x007f);
    else
    {                             /* otherwise calculate and cache the result */
        ee_s16 flag = data & 0x7; /* bits 0-2 is type of function to perform */
        ee_s16 dtype
            = ((data >> 3)
    ca78:	f3c7 01c3 	ubfx	r1, r7, #3, #4
        ee_s16 flag = data & 0x7; /* bits 0-2 is type of function to perform */
    ca7c:	f007 0007 	and.w	r0, r7, #7
               & 0xf);       /* bits 3-6 is specific data for the operation */
        dtype |= dtype << 4; /* replicate the lower 4 bits to get an 8b value */
        switch (flag)
    ca80:	2801      	cmp	r0, #1
        dtype |= dtype << 4; /* replicate the lower 4 bits to get an 8b value */
    ca82:	ea41 1401 	orr.w	r4, r1, r1, lsl #4
        switch (flag)
    ca86:	d01a      	beq.n	cabe <calc_func+0x56>
    ca88:	463e      	mov	r6, r7
    ca8a:	bb48      	cbnz	r0, cae0 <calc_func+0x78>
        {
            case 0:
                if (dtype < 0x22) /* set min period for bit corruption */
                    dtype = 0x22;
                retval = core_bench_state(res->size,
                                          res->memblock[3],
    ca8c:	e9d5 1005 	ldrd	r1, r0, [r5, #20]
                                          res->seed1,
    ca90:	f9b5 2000 	ldrsh.w	r2, [r5]
                                          res->seed2,
    ca94:	f9b5 3002 	ldrsh.w	r3, [r5, #2]
                                          dtype,
                                          res->crc);
    ca98:	8f2e      	ldrh	r6, [r5, #56]	; 0x38
                if (dtype < 0x22) /* set min period for bit corruption */
    ca9a:	2c22      	cmp	r4, #34	; 0x22
    ca9c:	bf98      	it	ls
    ca9e:	2422      	movls	r4, #34	; 0x22
                retval = core_bench_state(res->size,
    caa0:	e9cd 4600 	strd	r4, r6, [sp]
    caa4:	f002 f868 	bl	eb78 <core_bench_state>
                if (res->crcstate == 0)
    caa8:	8fe9      	ldrh	r1, [r5, #62]	; 0x3e
                retval = core_bench_state(res->size,
    caaa:	4606      	mov	r6, r0
                if (res->crcstate == 0)
    caac:	2900      	cmp	r1, #0
                    res->crcstate = retval;
    caae:	bf08      	it	eq
    cab0:	87ee      	strheq	r6, [r5, #62]	; 0x3e
    cab2:	e015      	b.n	cae0 <calc_func+0x78>
        return (data & 0x007f);
    cab4:	f007 007f 	and.w	r0, r7, #127	; 0x7f
        res->crc = crcu16(retval, res->crc);
        retval &= 0x007f;
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
        return retval;
    }
}
    cab8:	b002      	add	sp, #8
    caba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
        changing the matrix values slightly by a constant amount each time.
*/
ee_u16
core_bench_matrix(mat_params *p, ee_s16 seed, ee_u16 crc)
{
    ee_u32  N   = p->N;
    cabe:	f105 0328 	add.w	r3, r5, #40	; 0x28
    cac2:	cb0d      	ldmia	r3, {r0, r2, r3}
    MATRES *C   = p->C;
    cac4:	6b69      	ldr	r1, [r5, #52]	; 0x34
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
    cac6:	8f2e      	ldrh	r6, [r5, #56]	; 0x38
    MATDAT *A   = p->A;
    MATDAT *B   = p->B;
    MATDAT  val = (MATDAT)seed;

    crc = crc16(matrix_test(N, C, A, B, val), crc);
    cac8:	9400      	str	r4, [sp, #0]
    caca:	f001 f89d 	bl	dc08 <matrix_test>
    return crc;
}
ee_u16
crc16(ee_s16 newval, ee_u16 crc)
{
    return crcu16((ee_u16)newval, crc);
    cace:	b280      	uxth	r0, r0
    cad0:	4631      	mov	r1, r6
    cad2:	f002 fa89 	bl	efe8 <crcu16>
                if (res->crcmatrix == 0)
    cad6:	8fa9      	ldrh	r1, [r5, #60]	; 0x3c
    cad8:	4606      	mov	r6, r0
    cada:	2900      	cmp	r1, #0
                    res->crcmatrix = retval;
    cadc:	bf08      	it	eq
    cade:	87ae      	strheq	r6, [r5, #60]	; 0x3c
        res->crc = crcu16(retval, res->crc);
    cae0:	8f29      	ldrh	r1, [r5, #56]	; 0x38
    cae2:	4630      	mov	r0, r6
    cae4:	f002 fa80 	bl	efe8 <crcu16>
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
    cae8:	f366 0706 	bfi	r7, r6, #0, #7
    caec:	f047 0180 	orr.w	r1, r7, #128	; 0x80
        res->crc = crcu16(retval, res->crc);
    caf0:	8728      	strh	r0, [r5, #56]	; 0x38
        retval &= 0x007f;
    caf2:	f006 007f 	and.w	r0, r6, #127	; 0x7f
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
    caf6:	f8a8 1000 	strh.w	r1, [r8]
}
    cafa:	b002      	add	sp, #8
    cafc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000cb00 <core_bench_list>:
        - Single remove/reinsert
        * At the end of this function, the list is back to original state
*/
ee_u16
core_bench_list(core_results *res, ee_s16 finder_idx)
{
    cb00:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cb04:	b089      	sub	sp, #36	; 0x24
    cb06:	4604      	mov	r4, r0
    ee_u16     retval = 0;
    ee_u16     found = 0, missed = 0;
    list_head *list     = res->list;
    ee_s16     find_num = res->seed3;
    cb08:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
    list_head *list     = res->list;
    cb0c:	f8d4 a024 	ldr.w	sl, [r4, #36]	; 0x24
    ee_s16     i;

    info.idx = finder_idx;
    /* find <find_num> values in the list, and change the list each time
     * (reverse and cache if value found) */
    for (i = 0; i < find_num; i++)
    cb10:	2801      	cmp	r0, #1
    cb12:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
    cb16:	f2c0 80a7 	blt.w	cc68 <core_bench_list+0x168>
    cb1a:	2200      	movs	r2, #0
    cb1c:	f04f 0800 	mov.w	r8, #0
    cb20:	f04f 0900 	mov.w	r9, #0
    cb24:	2300      	movs	r3, #0
    cb26:	468e      	mov	lr, r1
    cb28:	9304      	str	r3, [sp, #16]
        Found item, or NULL if not found.
*/
list_head *
core_list_find(list_head *list, list_data *info)
{
    if (info->idx >= 0)
    cb2a:	fa0f f38e 	sxth.w	r3, lr
    cb2e:	4563      	cmp	r3, ip
    cb30:	4653      	mov	r3, sl
    cb32:	dc1a      	bgt.n	cb6a <core_bench_list+0x6a>
    cb34:	e036      	b.n	cba4 <core_bench_list+0xa4>
    cb36:	bf00      	nop
            retval += (list->next->info->data16 >> 8) & 1;
    cb38:	f8da 3000 	ldr.w	r3, [sl]
            missed++;
    cb3c:	9d04      	ldr	r5, [sp, #16]
            retval += (list->next->info->data16 >> 8) & 1;
    cb3e:	685b      	ldr	r3, [r3, #4]
            missed++;
    cb40:	3501      	adds	r5, #1
            retval += (list->next->info->data16 >> 8) & 1;
    cb42:	881b      	ldrh	r3, [r3, #0]
    cb44:	9504      	str	r5, [sp, #16]
    cb46:	f3c3 2300 	ubfx	r3, r3, #8, #1
    cb4a:	4498      	add	r8, r3
        if (info.idx >= 0)
    cb4c:	ea6f 030e 	mvn.w	r3, lr
    for (i = 0; i < find_num; i++)
    cb50:	3201      	adds	r2, #1
        if (info.idx >= 0)
    cb52:	b29b      	uxth	r3, r3
    for (i = 0; i < find_num; i++)
    cb54:	b212      	sxth	r2, r2
    cb56:	4282      	cmp	r2, r0
        if (info.idx >= 0)
    cb58:	eb0e 3ed3 	add.w	lr, lr, r3, lsr #15
    for (i = 0; i < find_num; i++)
    cb5c:	f280 807e 	bge.w	cc5c <core_bench_list+0x15c>
    if (info->idx >= 0)
    cb60:	fa0f f38e 	sxth.w	r3, lr
    cb64:	4563      	cmp	r3, ip
    cb66:	4653      	mov	r3, sl
    cb68:	dd1c      	ble.n	cba4 <core_bench_list+0xa4>
    cb6a:	4653      	mov	r3, sl
    {
        while (list && (list->info->idx != info->idx))
    cb6c:	685f      	ldr	r7, [r3, #4]
    cb6e:	887e      	ldrh	r6, [r7, #2]
    cb70:	fa1f f78e 	uxth.w	r7, lr
    cb74:	42be      	cmp	r6, r7
    cb76:	d030      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cb78:	681b      	ldr	r3, [r3, #0]
        while (list && (list->info->idx != info->idx))
    cb7a:	b36b      	cbz	r3, cbd8 <core_bench_list+0xd8>
    cb7c:	685e      	ldr	r6, [r3, #4]
    cb7e:	8876      	ldrh	r6, [r6, #2]
    cb80:	42be      	cmp	r6, r7
    cb82:	d02a      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cb84:	681b      	ldr	r3, [r3, #0]
    cb86:	b33b      	cbz	r3, cbd8 <core_bench_list+0xd8>
        while (list && (list->info->idx != info->idx))
    cb88:	685e      	ldr	r6, [r3, #4]
    cb8a:	8876      	ldrh	r6, [r6, #2]
    cb8c:	42be      	cmp	r6, r7
    cb8e:	d024      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cb90:	681b      	ldr	r3, [r3, #0]
    cb92:	b30b      	cbz	r3, cbd8 <core_bench_list+0xd8>
        while (list && (list->info->idx != info->idx))
    cb94:	685e      	ldr	r6, [r3, #4]
    cb96:	8876      	ldrh	r6, [r6, #2]
    cb98:	42be      	cmp	r6, r7
    cb9a:	d01e      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cb9c:	681b      	ldr	r3, [r3, #0]
        while (list && (list->info->idx != info->idx))
    cb9e:	2b00      	cmp	r3, #0
    cba0:	d1e4      	bne.n	cb6c <core_bench_list+0x6c>
    cba2:	e019      	b.n	cbd8 <core_bench_list+0xd8>
        return list;
    }
    else
    {
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cba4:	685f      	ldr	r7, [r3, #4]
    cba6:	783e      	ldrb	r6, [r7, #0]
    cba8:	b2d7      	uxtb	r7, r2
    cbaa:	407e      	eors	r6, r7
    cbac:	d015      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cbae:	681b      	ldr	r3, [r3, #0]
    cbb0:	b193      	cbz	r3, cbd8 <core_bench_list+0xd8>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cbb2:	685e      	ldr	r6, [r3, #4]
    cbb4:	7836      	ldrb	r6, [r6, #0]
    cbb6:	407e      	eors	r6, r7
    cbb8:	d00f      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cbba:	681b      	ldr	r3, [r3, #0]
    cbbc:	b163      	cbz	r3, cbd8 <core_bench_list+0xd8>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cbbe:	685e      	ldr	r6, [r3, #4]
    cbc0:	7836      	ldrb	r6, [r6, #0]
    cbc2:	407e      	eors	r6, r7
    cbc4:	d009      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cbc6:	681b      	ldr	r3, [r3, #0]
    cbc8:	b133      	cbz	r3, cbd8 <core_bench_list+0xd8>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cbca:	685e      	ldr	r6, [r3, #4]
    cbcc:	7836      	ldrb	r6, [r6, #0]
    cbce:	407e      	eors	r6, r7
    cbd0:	d003      	beq.n	cbda <core_bench_list+0xda>
            list = list->next;
    cbd2:	681b      	ldr	r3, [r3, #0]
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cbd4:	2b00      	cmp	r3, #0
    cbd6:	d1e5      	bne.n	cba4 <core_bench_list+0xa4>
    cbd8:	2300      	movs	r3, #0

list_head *
core_list_reverse(list_head *list)
{
    list_head *next = NULL, *tmp;
    while (list)
    cbda:	f1ba 0f00 	cmp.w	sl, #0
    cbde:	d017      	beq.n	cc10 <core_bench_list+0x110>
    cbe0:	4657      	mov	r7, sl
    cbe2:	f04f 0a00 	mov.w	sl, #0
    cbe6:	bf00      	nop
    {
        tmp        = list->next;
    cbe8:	683e      	ldr	r6, [r7, #0]
        list->next = next;
    cbea:	f8c7 a000 	str.w	sl, [r7]
    while (list)
    cbee:	b34e      	cbz	r6, cc44 <core_bench_list+0x144>
        tmp        = list->next;
    cbf0:	6835      	ldr	r5, [r6, #0]
        list->next = next;
    cbf2:	6037      	str	r7, [r6, #0]
    while (list)
    cbf4:	b355      	cbz	r5, cc4c <core_bench_list+0x14c>
        tmp        = list->next;
    cbf6:	f8d5 a000 	ldr.w	sl, [r5]
        list->next = next;
    cbfa:	602e      	str	r6, [r5, #0]
    while (list)
    cbfc:	f1ba 0f00 	cmp.w	sl, #0
    cc00:	d028      	beq.n	cc54 <core_bench_list+0x154>
        tmp        = list->next;
    cc02:	f8da 7000 	ldr.w	r7, [sl]
        list->next = next;
    cc06:	f8ca 5000 	str.w	r5, [sl]
    while (list)
    cc0a:	2f00      	cmp	r7, #0
    cc0c:	d1ec      	bne.n	cbe8 <core_bench_list+0xe8>
    cc0e:	e001      	b.n	cc14 <core_bench_list+0x114>
    cc10:	f04f 0a00 	mov.w	sl, #0
        if (this_find == NULL)
    cc14:	2b00      	cmp	r3, #0
    cc16:	f43f af8f 	beq.w	cb38 <core_bench_list+0x38>
            if (this_find->info->data16 & 0x1) /* use found value */
    cc1a:	685f      	ldr	r7, [r3, #4]
            found++;
    cc1c:	f109 0901 	add.w	r9, r9, #1
            if (this_find->info->data16 & 0x1) /* use found value */
    cc20:	883f      	ldrh	r7, [r7, #0]
    cc22:	07fe      	lsls	r6, r7, #31
                retval += (this_find->info->data16 >> 9) & 1;
    cc24:	bf1c      	itt	ne
    cc26:	f3c7 2740 	ubfxne	r7, r7, #9, #1
    cc2a:	44b8      	addne	r8, r7
            if (this_find->next != NULL)
    cc2c:	681f      	ldr	r7, [r3, #0]
    cc2e:	2f00      	cmp	r7, #0
    cc30:	f43f af8c 	beq.w	cb4c <core_bench_list+0x4c>
                this_find->next = finder->next;
    cc34:	683e      	ldr	r6, [r7, #0]
    cc36:	601e      	str	r6, [r3, #0]
                finder->next    = list->next;
    cc38:	f8da 3000 	ldr.w	r3, [sl]
    cc3c:	603b      	str	r3, [r7, #0]
                list->next      = finder;
    cc3e:	f8ca 7000 	str.w	r7, [sl]
    cc42:	e783      	b.n	cb4c <core_bench_list+0x4c>
    cc44:	46ba      	mov	sl, r7
        if (this_find == NULL)
    cc46:	2b00      	cmp	r3, #0
    cc48:	d1e7      	bne.n	cc1a <core_bench_list+0x11a>
    cc4a:	e775      	b.n	cb38 <core_bench_list+0x38>
    cc4c:	46b2      	mov	sl, r6
    cc4e:	2b00      	cmp	r3, #0
    cc50:	d1e3      	bne.n	cc1a <core_bench_list+0x11a>
    cc52:	e771      	b.n	cb38 <core_bench_list+0x38>
    cc54:	46aa      	mov	sl, r5
    cc56:	2b00      	cmp	r3, #0
    cc58:	d1df      	bne.n	cc1a <core_bench_list+0x11a>
    cc5a:	e76d      	b.n	cb38 <core_bench_list+0x38>
    for (i = 0; i < find_num; i++)
    cc5c:	3801      	subs	r0, #1
    cc5e:	b2c0      	uxtb	r0, r0
    cc60:	9000      	str	r0, [sp, #0]
    if (finder_idx > 0)
    cc62:	2901      	cmp	r1, #1
    cc64:	da0c      	bge.n	cc80 <core_bench_list+0x180>
    cc66:	e09e      	b.n	cda6 <core_bench_list+0x2a6>
    cc68:	2000      	movs	r0, #0
    cc6a:	9000      	str	r0, [sp, #0]
    cc6c:	2000      	movs	r0, #0
    cc6e:	468e      	mov	lr, r1
    ee_u16     found = 0, missed = 0;
    cc70:	9004      	str	r0, [sp, #16]
    cc72:	f04f 0900 	mov.w	r9, #0
    cc76:	f04f 0800 	mov.w	r8, #0
    if (finder_idx > 0)
    cc7a:	2901      	cmp	r1, #1
    cc7c:	f2c0 8093 	blt.w	cda6 <core_bench_list+0x2a6>
    cc80:	2701      	movs	r7, #1
    cc82:	f8cd e00c 	str.w	lr, [sp, #12]
    cc86:	e9cd 9801 	strd	r9, r8, [sp, #4]
        list = NULL;
        tail = NULL;

        nmerges = 0; /* count number of merges we do in this pass */

        while (p)
    cc8a:	2f01      	cmp	r7, #1
    cc8c:	da11      	bge.n	ccb2 <core_bench_list+0x1b2>
    cc8e:	e089      	b.n	cda4 <core_bench_list+0x2a4>

            /* now p has stepped `insize' places along, and q has too */
            p = q;
        }

        tail->next = NULL;
    cc90:	2000      	movs	r0, #0
    cc92:	f8c8 0000 	str.w	r0, [r8]
    cc96:	f8dd a020 	ldr.w	sl, [sp, #32]
    cc9a:	f8dd e00c 	ldr.w	lr, [sp, #12]
    cc9e:	e9dd 9801 	ldrd	r9, r8, [sp, #4]

        /* If we have done only one merge, we're finished. */
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    cca2:	2901      	cmp	r1, #1
            return list;

        /* Otherwise repeat, merging lists twice the size */
        insize *= 2;
    cca4:	ea4f 0747 	mov.w	r7, r7, lsl #1
    cca8:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    ccac:	d97b      	bls.n	cda6 <core_bench_list+0x2a6>
        while (p)
    ccae:	2f01      	cmp	r7, #1
    ccb0:	db78      	blt.n	cda4 <core_bench_list+0x2a4>
            for (i = 0; i < insize; i++)
    ccb2:	4278      	negs	r0, r7
    ccb4:	9005      	str	r0, [sp, #20]
    ccb6:	2100      	movs	r1, #0
    ccb8:	f04f 0800 	mov.w	r8, #0
    ccbc:	46d1      	mov	r9, sl
    ccbe:	2000      	movs	r0, #0
    ccc0:	9008      	str	r0, [sp, #32]
    ccc2:	9706      	str	r7, [sp, #24]
    ccc4:	e005      	b.n	ccd2 <core_bench_list+0x1d2>
    ccc6:	bf00      	nop
    ccc8:	e9dd 7106 	ldrd	r7, r1, [sp, #24]
        while (p)
    cccc:	f1b9 0f00 	cmp.w	r9, #0
    ccd0:	d0de      	beq.n	cc90 <core_bench_list+0x190>
            nmerges++; /* there exists a merge to be done */
    ccd2:	3101      	adds	r1, #1
    ccd4:	9e05      	ldr	r6, [sp, #20]
    ccd6:	4648      	mov	r0, r9
    ccd8:	4642      	mov	r2, r8
    ccda:	9107      	str	r1, [sp, #28]
    ccdc:	f04f 0b04 	mov.w	fp, #4
    cce0:	4649      	mov	r1, r9
                q = q->next;
    cce2:	6809      	ldr	r1, [r1, #0]
    cce4:	b1a9      	cbz	r1, cd12 <core_bench_list+0x212>
    cce6:	eb06 030b 	add.w	r3, r6, fp
            for (i = 0; i < insize; i++)
    ccea:	2b03      	cmp	r3, #3
    ccec:	d014      	beq.n	cd18 <core_bench_list+0x218>
                q = q->next;
    ccee:	6809      	ldr	r1, [r1, #0]
                if (!q)
    ccf0:	b1a1      	cbz	r1, cd1c <core_bench_list+0x21c>
            for (i = 0; i < insize; i++)
    ccf2:	2b02      	cmp	r3, #2
    ccf4:	d015      	beq.n	cd22 <core_bench_list+0x222>
                q = q->next;
    ccf6:	6809      	ldr	r1, [r1, #0]
                if (!q)
    ccf8:	b1a9      	cbz	r1, cd26 <core_bench_list+0x226>
            for (i = 0; i < insize; i++)
    ccfa:	2b01      	cmp	r3, #1
    ccfc:	d016      	beq.n	cd2c <core_bench_list+0x22c>
                q = q->next;
    ccfe:	6809      	ldr	r1, [r1, #0]
                if (!q)
    cd00:	b341      	cbz	r1, cd54 <core_bench_list+0x254>
            for (i = 0; i < insize; i++)
    cd02:	f10b 0b04 	add.w	fp, fp, #4
    cd06:	eb06 030b 	add.w	r3, r6, fp
    cd0a:	2b04      	cmp	r3, #4
    cd0c:	d1e9      	bne.n	cce2 <core_bench_list+0x1e2>
    cd0e:	46bb      	mov	fp, r7
    cd10:	e020      	b.n	cd54 <core_bench_list+0x254>
                if (!q)
    cd12:	f1ab 0b03 	sub.w	fp, fp, #3
    cd16:	e01d      	b.n	cd54 <core_bench_list+0x254>
    cd18:	46bb      	mov	fp, r7
    cd1a:	e01b      	b.n	cd54 <core_bench_list+0x254>
    cd1c:	f1ab 0b02 	sub.w	fp, fp, #2
    cd20:	e018      	b.n	cd54 <core_bench_list+0x254>
    cd22:	46bb      	mov	fp, r7
    cd24:	e016      	b.n	cd54 <core_bench_list+0x254>
    cd26:	f1ab 0b01 	sub.w	fp, fp, #1
    cd2a:	e013      	b.n	cd54 <core_bench_list+0x254>
    cd2c:	46bb      	mov	fp, r7
    cd2e:	e011      	b.n	cd54 <core_bench_list+0x254>
                else if (qsize == 0 || !q)
    cd30:	f1b9 0f00 	cmp.w	r9, #0
    cd34:	bf18      	it	ne
    cd36:	2f00      	cmpne	r7, #0
    cd38:	d120      	bne.n	cd7c <core_bench_list+0x27c>
    cd3a:	f8da 0000 	ldr.w	r0, [sl]
    cd3e:	f1ab 0b01 	sub.w	fp, fp, #1
    cd42:	4649      	mov	r1, r9
    cd44:	4652      	mov	r2, sl
                if (tail)
    cd46:	f1b8 0f00 	cmp.w	r8, #0
                    tail->next = e;
    cd4a:	bf12      	itee	ne
    cd4c:	f8c8 2000 	strne.w	r2, [r8]
    cd50:	4613      	moveq	r3, r2
    cd52:	9208      	streq	r2, [sp, #32]
        p    = list;
    cd54:	4682      	mov	sl, r0
    cd56:	4689      	mov	r9, r1
    cd58:	4690      	mov	r8, r2
            while (psize > 0 || (qsize > 0 && q))
    cd5a:	f1bb 0f00 	cmp.w	fp, #0
    cd5e:	dce7      	bgt.n	cd30 <core_bench_list+0x230>
    cd60:	f1b9 0f00 	cmp.w	r9, #0
    cd64:	d0b0      	beq.n	ccc8 <core_bench_list+0x1c8>
    cd66:	2f01      	cmp	r7, #1
    cd68:	dbae      	blt.n	ccc8 <core_bench_list+0x1c8>
                if (psize == 0)
    cd6a:	f1bb 0f00 	cmp.w	fp, #0
    cd6e:	d1df      	bne.n	cd30 <core_bench_list+0x230>
                    q = q->next;
    cd70:	f8d9 1000 	ldr.w	r1, [r9]
                    qsize--;
    cd74:	3f01      	subs	r7, #1
    cd76:	f04f 0b00 	mov.w	fp, #0
    cd7a:	e010      	b.n	cd9e <core_bench_list+0x29e>
                else if (cmp(p->info, q->info, res) <= 0)
    cd7c:	f8da 0004 	ldr.w	r0, [sl, #4]
    cd80:	f8d9 5004 	ldr.w	r5, [r9, #4]
    ee_s16 val1 = calc_func(&(a->data16), res);
    cd84:	4621      	mov	r1, r4
    cd86:	f7ff fe6f 	bl	ca68 <calc_func>
    cd8a:	4606      	mov	r6, r0
    ee_s16 val2 = calc_func(&(b->data16), res);
    cd8c:	4628      	mov	r0, r5
    cd8e:	4621      	mov	r1, r4
    cd90:	f7ff fe6a 	bl	ca68 <calc_func>
                else if (cmp(p->info, q->info, res) <= 0)
    cd94:	4286      	cmp	r6, r0
    cd96:	ddd0      	ble.n	cd3a <core_bench_list+0x23a>
                    q = q->next;
    cd98:	f8d9 1000 	ldr.w	r1, [r9]
                    qsize--;
    cd9c:	3f01      	subs	r7, #1
    cd9e:	4650      	mov	r0, sl
    cda0:	464a      	mov	r2, r9
    cda2:	e7d0      	b.n	cd46 <core_bench_list+0x246>
        while (p)
    cda4:	e7fe      	b.n	cda4 <core_bench_list+0x2a4>
    cda6:	9804      	ldr	r0, [sp, #16]
    remover = core_list_remove(list->next);
    cda8:	f8da 1000 	ldr.w	r1, [sl]
    cdac:	ebc0 0089 	rsb	r0, r0, r9, lsl #2
    cdb0:	4440      	add	r0, r8
    list_head *ret = item->next;
    cdb2:	e9d1 5800 	ldrd	r5, r8, [r1]
    item->next = item->next->next;
    cdb6:	e9d5 3200 	ldrd	r3, r2, [r5]
    item->info = ret->info;
    cdba:	604a      	str	r2, [r1, #4]
    if (info->idx >= 0)
    cdbc:	fa0f f28e 	sxth.w	r2, lr
    ret->info  = tmp;
    cdc0:	f8c5 8004 	str.w	r8, [r5, #4]
    item->next = item->next->next;
    cdc4:	600b      	str	r3, [r1, #0]
    cdc6:	2100      	movs	r1, #0
    if (info->idx >= 0)
    cdc8:	4562      	cmp	r2, ip
    ret->next  = NULL;
    cdca:	6029      	str	r1, [r5, #0]
    if (info->idx >= 0)
    cdcc:	dd1f      	ble.n	ce0e <core_bench_list+0x30e>
        while (list && (list->info->idx != info->idx))
    cdce:	f1ba 0f00 	cmp.w	sl, #0
    cdd2:	d03a      	beq.n	ce4a <core_bench_list+0x34a>
    cdd4:	fa1f f18e 	uxth.w	r1, lr
    cdd8:	4656      	mov	r6, sl
    cdda:	6872      	ldr	r2, [r6, #4]
    cddc:	8852      	ldrh	r2, [r2, #2]
    cdde:	428a      	cmp	r2, r1
    cde0:	d036      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    cde2:	6836      	ldr	r6, [r6, #0]
        while (list && (list->info->idx != info->idx))
    cde4:	b38e      	cbz	r6, ce4a <core_bench_list+0x34a>
    cde6:	6872      	ldr	r2, [r6, #4]
    cde8:	8852      	ldrh	r2, [r2, #2]
    cdea:	428a      	cmp	r2, r1
    cdec:	d030      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    cdee:	6836      	ldr	r6, [r6, #0]
        while (list && (list->info->idx != info->idx))
    cdf0:	b35e      	cbz	r6, ce4a <core_bench_list+0x34a>
    cdf2:	6872      	ldr	r2, [r6, #4]
    cdf4:	8852      	ldrh	r2, [r2, #2]
    cdf6:	428a      	cmp	r2, r1
    cdf8:	d02a      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    cdfa:	6836      	ldr	r6, [r6, #0]
        while (list && (list->info->idx != info->idx))
    cdfc:	b32e      	cbz	r6, ce4a <core_bench_list+0x34a>
    cdfe:	6872      	ldr	r2, [r6, #4]
    ce00:	8852      	ldrh	r2, [r2, #2]
    ce02:	428a      	cmp	r2, r1
    ce04:	d024      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    ce06:	6836      	ldr	r6, [r6, #0]
        while (list && (list->info->idx != info->idx))
    ce08:	2e00      	cmp	r6, #0
    ce0a:	d1e6      	bne.n	cdda <core_bench_list+0x2da>
    ce0c:	e01d      	b.n	ce4a <core_bench_list+0x34a>
    ce0e:	9a00      	ldr	r2, [sp, #0]
        while (list && ((list->info->data16 & 0xff) != info->data16))
    ce10:	f1ba 0f00 	cmp.w	sl, #0
    ce14:	d019      	beq.n	ce4a <core_bench_list+0x34a>
    ce16:	4656      	mov	r6, sl
    ce18:	6871      	ldr	r1, [r6, #4]
    ce1a:	7809      	ldrb	r1, [r1, #0]
    ce1c:	428a      	cmp	r2, r1
    ce1e:	d017      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    ce20:	6836      	ldr	r6, [r6, #0]
    ce22:	b196      	cbz	r6, ce4a <core_bench_list+0x34a>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    ce24:	6871      	ldr	r1, [r6, #4]
    ce26:	7809      	ldrb	r1, [r1, #0]
    ce28:	428a      	cmp	r2, r1
    ce2a:	d011      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    ce2c:	6836      	ldr	r6, [r6, #0]
    ce2e:	b166      	cbz	r6, ce4a <core_bench_list+0x34a>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    ce30:	6871      	ldr	r1, [r6, #4]
    ce32:	7809      	ldrb	r1, [r1, #0]
    ce34:	428a      	cmp	r2, r1
    ce36:	d00b      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    ce38:	6836      	ldr	r6, [r6, #0]
    ce3a:	b136      	cbz	r6, ce4a <core_bench_list+0x34a>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    ce3c:	6871      	ldr	r1, [r6, #4]
    ce3e:	7809      	ldrb	r1, [r1, #0]
    ce40:	428a      	cmp	r2, r1
    ce42:	d005      	beq.n	ce50 <core_bench_list+0x350>
            list = list->next;
    ce44:	6836      	ldr	r6, [r6, #0]
        while (list && ((list->info->data16 & 0xff) != info->data16))
    ce46:	2e00      	cmp	r6, #0
    ce48:	d1e6      	bne.n	ce18 <core_bench_list+0x318>
        finder = list->next;
    ce4a:	f8da 6000 	ldr.w	r6, [sl]
    while (finder)
    ce4e:	b156      	cbz	r6, ce66 <core_bench_list+0x366>
    ce50:	f8da 1004 	ldr.w	r1, [sl, #4]
    ce54:	880c      	ldrh	r4, [r1, #0]
    ce56:	bf00      	nop
    ce58:	b281      	uxth	r1, r0
    ce5a:	4620      	mov	r0, r4
    ce5c:	f002 f8c4 	bl	efe8 <crcu16>
        finder = finder->next;
    ce60:	6836      	ldr	r6, [r6, #0]
    while (finder)
    ce62:	2e00      	cmp	r6, #0
    ce64:	d1f8      	bne.n	ce58 <core_bench_list+0x358>
    remover = core_list_undo_remove(remover, list->next);
    ce66:	f8da 1000 	ldr.w	r1, [sl]
    ce6a:	f04f 0e01 	mov.w	lr, #1
    item_removed->next  = item_modified->next;
    ce6e:	e9d1 3200 	ldrd	r3, r2, [r1]
    item_removed->info  = item_modified->info;
    ce72:	606a      	str	r2, [r5, #4]
    item_modified->info = tmp;
    ce74:	f8c1 8004 	str.w	r8, [r1, #4]
    item_removed->next  = item_modified->next;
    ce78:	602b      	str	r3, [r5, #0]
    item_modified->next = item_removed;
    ce7a:	600d      	str	r5, [r1, #0]
        while (p)
    ce7c:	f1be 0f01 	cmp.w	lr, #1
    ce80:	da0b      	bge.n	ce9a <core_bench_list+0x39a>
    ce82:	e07d      	b.n	cf80 <core_bench_list+0x480>
        tail->next = NULL;
    ce84:	2100      	movs	r1, #0
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    ce86:	f1b8 0f01 	cmp.w	r8, #1
        insize *= 2;
    ce8a:	ea4f 0e4e 	mov.w	lr, lr, lsl #1
    ce8e:	46e2      	mov	sl, ip
        tail->next = NULL;
    ce90:	6039      	str	r1, [r7, #0]
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    ce92:	d976      	bls.n	cf82 <core_bench_list+0x482>
        while (p)
    ce94:	f1be 0f01 	cmp.w	lr, #1
    ce98:	db72      	blt.n	cf80 <core_bench_list+0x480>
            for (i = 0; i < insize; i++)
    ce9a:	f1ce 0900 	rsb	r9, lr, #0
    ce9e:	f04f 0800 	mov.w	r8, #0
    cea2:	2700      	movs	r7, #0
    cea4:	4654      	mov	r4, sl
    cea6:	f04f 0c00 	mov.w	ip, #0
    ceaa:	e001      	b.n	ceb0 <core_bench_list+0x3b0>
        while (p)
    ceac:	2c00      	cmp	r4, #0
    ceae:	d0e9      	beq.n	ce84 <core_bench_list+0x384>
    ceb0:	4625      	mov	r5, r4
    ceb2:	463b      	mov	r3, r7
            nmerges++; /* there exists a merge to be done */
    ceb4:	f108 0801 	add.w	r8, r8, #1
    ceb8:	f04f 0b04 	mov.w	fp, #4
    cebc:	4622      	mov	r2, r4
                q = q->next;
    cebe:	6812      	ldr	r2, [r2, #0]
    cec0:	b1aa      	cbz	r2, ceee <core_bench_list+0x3ee>
    cec2:	eb09 040b 	add.w	r4, r9, fp
            for (i = 0; i < insize; i++)
    cec6:	2c03      	cmp	r4, #3
    cec8:	d00f      	beq.n	ceea <core_bench_list+0x3ea>
                q = q->next;
    ceca:	6812      	ldr	r2, [r2, #0]
                if (!q)
    cecc:	b192      	cbz	r2, cef4 <core_bench_list+0x3f4>
            for (i = 0; i < insize; i++)
    cece:	2c02      	cmp	r4, #2
    ced0:	d00b      	beq.n	ceea <core_bench_list+0x3ea>
                q = q->next;
    ced2:	6812      	ldr	r2, [r2, #0]
                if (!q)
    ced4:	b18a      	cbz	r2, cefa <core_bench_list+0x3fa>
            for (i = 0; i < insize; i++)
    ced6:	2c01      	cmp	r4, #1
    ced8:	d007      	beq.n	ceea <core_bench_list+0x3ea>
                q = q->next;
    ceda:	6812      	ldr	r2, [r2, #0]
                if (!q)
    cedc:	b182      	cbz	r2, cf00 <core_bench_list+0x400>
            for (i = 0; i < insize; i++)
    cede:	f10b 0b04 	add.w	fp, fp, #4
    cee2:	eb09 010b 	add.w	r1, r9, fp
    cee6:	2904      	cmp	r1, #4
    cee8:	d1e9      	bne.n	cebe <core_bench_list+0x3be>
    ceea:	46f3      	mov	fp, lr
    ceec:	e008      	b.n	cf00 <core_bench_list+0x400>
                if (!q)
    ceee:	f1ab 0b03 	sub.w	fp, fp, #3
    cef2:	e005      	b.n	cf00 <core_bench_list+0x400>
    cef4:	f1ab 0b02 	sub.w	fp, fp, #2
    cef8:	e002      	b.n	cf00 <core_bench_list+0x400>
    cefa:	f1ab 0b01 	sub.w	fp, fp, #1
    cefe:	bf00      	nop
    cf00:	46f2      	mov	sl, lr
    cf02:	e00d      	b.n	cf20 <core_bench_list+0x420>
                else if (qsize == 0 || !q)
    cf04:	2c00      	cmp	r4, #0
    cf06:	bf18      	it	ne
    cf08:	f1ba 0f00 	cmpne.w	sl, #0
    cf0c:	d11c      	bne.n	cf48 <core_bench_list+0x448>
    cf0e:	6835      	ldr	r5, [r6, #0]
    cf10:	f1ab 0b01 	sub.w	fp, fp, #1
    cf14:	4622      	mov	r2, r4
    cf16:	4633      	mov	r3, r6
                if (tail)
    cf18:	2f00      	cmp	r7, #0
                    tail->next = e;
    cf1a:	bf14      	ite	ne
    cf1c:	603b      	strne	r3, [r7, #0]
    cf1e:	469c      	moveq	ip, r3
        p    = list;
    cf20:	462e      	mov	r6, r5
    cf22:	4614      	mov	r4, r2
    cf24:	461f      	mov	r7, r3
            while (psize > 0 || (qsize > 0 && q))
    cf26:	f1bb 0f00 	cmp.w	fp, #0
    cf2a:	dceb      	bgt.n	cf04 <core_bench_list+0x404>
    cf2c:	2c00      	cmp	r4, #0
    cf2e:	d0bd      	beq.n	ceac <core_bench_list+0x3ac>
    cf30:	f1ba 0f01 	cmp.w	sl, #1
    cf34:	dbba      	blt.n	ceac <core_bench_list+0x3ac>
                if (psize == 0)
    cf36:	f1bb 0f00 	cmp.w	fp, #0
    cf3a:	d1e3      	bne.n	cf04 <core_bench_list+0x404>
                    q = q->next;
    cf3c:	6822      	ldr	r2, [r4, #0]
                    qsize--;
    cf3e:	f1aa 0a01 	sub.w	sl, sl, #1
    cf42:	f04f 0b00 	mov.w	fp, #0
    cf46:	e017      	b.n	cf78 <core_bench_list+0x478>
                else if (cmp(p->info, q->info, res) <= 0)
    cf48:	6872      	ldr	r2, [r6, #4]
    cf4a:	6863      	ldr	r3, [r4, #4]
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
    cf4c:	f9b2 5000 	ldrsh.w	r5, [r2]
    return a->idx - b->idx;
    cf50:	f9b2 1002 	ldrsh.w	r1, [r2, #2]
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
    cf54:	0a2d      	lsrs	r5, r5, #8
    cf56:	f365 251f 	bfi	r5, r5, #8, #24
    cf5a:	8015      	strh	r5, [r2, #0]
    return a->idx - b->idx;
    cf5c:	f9b3 2002 	ldrsh.w	r2, [r3, #2]
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    cf60:	f9b3 5000 	ldrsh.w	r5, [r3]
                else if (cmp(p->info, q->info, res) <= 0)
    cf64:	4291      	cmp	r1, r2
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    cf66:	ea4f 2115 	mov.w	r1, r5, lsr #8
    cf6a:	f361 211f 	bfi	r1, r1, #8, #24
    cf6e:	8019      	strh	r1, [r3, #0]
                else if (cmp(p->info, q->info, res) <= 0)
    cf70:	ddcd      	ble.n	cf0e <core_bench_list+0x40e>
                    q = q->next;
    cf72:	6822      	ldr	r2, [r4, #0]
                    qsize--;
    cf74:	f1aa 0a01 	sub.w	sl, sl, #1
    cf78:	4635      	mov	r5, r6
    cf7a:	4623      	mov	r3, r4
    cf7c:	e7cc      	b.n	cf18 <core_bench_list+0x418>
    cf7e:	bf00      	nop
        while (p)
    cf80:	e7fe      	b.n	cf80 <core_bench_list+0x480>
    cf82:	f8da 5000 	ldr.w	r5, [sl]
    while (finder)
    cf86:	b155      	cbz	r5, cf9e <core_bench_list+0x49e>
    cf88:	f8da 1004 	ldr.w	r1, [sl, #4]
    cf8c:	880c      	ldrh	r4, [r1, #0]
    cf8e:	bf00      	nop
    cf90:	b281      	uxth	r1, r0
    cf92:	4620      	mov	r0, r4
    cf94:	f002 f828 	bl	efe8 <crcu16>
    cf98:	682d      	ldr	r5, [r5, #0]
    cf9a:	2d00      	cmp	r5, #0
    cf9c:	d1f8      	bne.n	cf90 <core_bench_list+0x490>
    return retval;
    cf9e:	b280      	uxth	r0, r0
    cfa0:	b009      	add	sp, #36	; 0x24
    cfa2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    cfa6:	d4d4      	bmi.n	cf52 <core_bench_list+0x452>

0000cfa8 <core_list_init>:
{
    cfa8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cfac:	f64c 43cd 	movw	r3, #52429	; 0xcccd
    cfb0:	f6cc 43cc 	movt	r3, #52428	; 0xcccc
    ee_u32 size     = (blksize / per_item)
    cfb4:	fba0 0303 	umull	r0, r3, r0, r3
    cfb8:	f06f 0001 	mvn.w	r0, #1
                  - 2; /* to accomodate systems with 64b pointers, and make sure
    cfbc:	eb00 1913 	add.w	r9, r0, r3, lsr #4
    list_head *memblock_end  = memblock + size;
    cfc0:	eb01 0ac9 	add.w	sl, r1, r9, lsl #3
    cfc4:	2500      	movs	r5, #0
    cfc6:	f248 0080 	movw	r0, #32896	; 0x8080
    list_data *datablock_end = datablock + size;
    cfca:	eb0a 0e89 	add.w	lr, sl, r9, lsl #2
    list->next         = NULL;
    cfce:	e9c1 5a00 	strd	r5, sl, [r1]
    list->info->idx    = 0x0000;
    cfd2:	f8aa 5002 	strh.w	r5, [sl, #2]
    list->info->data16 = (ee_s16)0x8080;
    cfd6:	f821 0039 	strh.w	r0, [r1, r9, lsl #3]
    memblock++;
    cfda:	f101 0008 	add.w	r0, r1, #8
    if ((*memblock + 1) >= memblock_end)
    cfde:	f1b9 0f03 	cmp.w	r9, #3
    datablock++;
    cfe2:	f10a 0b04 	add.w	fp, sl, #4
    if ((*memblock + 1) >= memblock_end)
    cfe6:	db15      	blt.n	d014 <core_list_init+0x6c>
    if ((*datablock + 1) >= datablock_end)
    cfe8:	f10b 0404 	add.w	r4, fp, #4
    cfec:	45a6      	cmp	lr, r4
    cfee:	f04f 0500 	mov.w	r5, #0
    cff2:	d90f      	bls.n	d014 <core_list_init+0x6c>
    cff4:	f64f 73ff 	movw	r3, #65535	; 0xffff
    insert_point->next = newitem;
    cff8:	6008      	str	r0, [r1, #0]
    newitem->next      = insert_point->next;
    cffa:	608d      	str	r5, [r1, #8]
    newitem->info = *datablock;
    cffc:	f8c1 b00c 	str.w	fp, [r1, #12]
    to->data16 = from->data16;
    d000:	f8ab 3000 	strh.w	r3, [fp]
    d004:	f647 73ff 	movw	r3, #32767	; 0x7fff
    d008:	4605      	mov	r5, r0
    d00a:	f101 0010 	add.w	r0, r1, #16
    to->idx    = from->idx;
    d00e:	f8ab 3002 	strh.w	r3, [fp, #2]
    d012:	46a3      	mov	fp, r4
    d014:	2700      	movs	r7, #0
    d016:	f647 78ff 	movw	r8, #32767	; 0x7fff
    if ((*memblock + 1) >= memblock_end)
    d01a:	f100 0408 	add.w	r4, r0, #8
    d01e:	4554      	cmp	r4, sl
    d020:	d307      	bcc.n	d032 <core_list_init+0x8a>
    d022:	bf00      	nop
    for (i = 0; i < size; i++)
    d024:	3701      	adds	r7, #1
    d026:	454f      	cmp	r7, r9
    d028:	d21d      	bcs.n	d066 <core_list_init+0xbe>
    if ((*memblock + 1) >= memblock_end)
    d02a:	f100 0408 	add.w	r4, r0, #8
    d02e:	4554      	cmp	r4, sl
    d030:	d2f8      	bcs.n	d024 <core_list_init+0x7c>
    if ((*datablock + 1) >= datablock_end)
    d032:	f10b 0304 	add.w	r3, fp, #4
    d036:	4573      	cmp	r3, lr
    d038:	d2f4      	bcs.n	d024 <core_list_init+0x7c>
    d03a:	ea87 0602 	eor.w	r6, r7, r2
    d03e:	f007 0c07 	and.w	ip, r7, #7
    d042:	f366 0cc6 	bfi	ip, r6, #3, #4
    d046:	ea4c 260c 	orr.w	r6, ip, ip, lsl #8
    newitem->next      = insert_point->next;
    d04a:	6005      	str	r5, [r0, #0]
    insert_point->next = newitem;
    d04c:	6008      	str	r0, [r1, #0]
    newitem->info = *datablock;
    d04e:	f8c0 b004 	str.w	fp, [r0, #4]
    to->data16 = from->data16;
    d052:	f8ab 6000 	strh.w	r6, [fp]
    to->idx    = from->idx;
    d056:	f8ab 8002 	strh.w	r8, [fp, #2]
    d05a:	4605      	mov	r5, r0
    d05c:	469b      	mov	fp, r3
    d05e:	4620      	mov	r0, r4
    for (i = 0; i < size; i++)
    d060:	3701      	adds	r7, #1
    d062:	454f      	cmp	r7, r9
    d064:	d3e1      	bcc.n	d02a <core_list_init+0x82>
    while (finder->next != NULL)
    d066:	6828      	ldr	r0, [r5, #0]
    d068:	b300      	cbz	r0, d0ac <core_list_init+0x104>
    d06a:	f64c 43cd 	movw	r3, #52429	; 0xcccd
    d06e:	f6cc 43cc 	movt	r3, #52428	; 0xcccc
    d072:	fba9 3703 	umull	r3, r7, r9, r3
    d076:	08bb      	lsrs	r3, r7, #2
    d078:	2701      	movs	r7, #1
    d07a:	4606      	mov	r6, r0
        if (i < size / 5) /* first 20% of the list in order */
    d07c:	429f      	cmp	r7, r3
    d07e:	f107 0401 	add.w	r4, r7, #1
    d082:	d20a      	bcs.n	d09a <core_list_init+0xf2>
    d084:	686d      	ldr	r5, [r5, #4]
    while (finder->next != NULL)
    d086:	6830      	ldr	r0, [r6, #0]
    d088:	806f      	strh	r7, [r5, #2]
    d08a:	4635      	mov	r5, r6
    d08c:	4627      	mov	r7, r4
    d08e:	b168      	cbz	r0, d0ac <core_list_init+0x104>
    d090:	4606      	mov	r6, r0
        if (i < size / 5) /* first 20% of the list in order */
    d092:	429f      	cmp	r7, r3
    d094:	f107 0401 	add.w	r4, r7, #1
    d098:	d3f4      	bcc.n	d084 <core_list_init+0xdc>
            ee_u16 pat = (ee_u16)(i++ ^ seed); /* get a pseudo random number */
    d09a:	ea87 0002 	eor.w	r0, r7, r2
                                & (((i & 0x07) << 8)
    d09e:	f36f 309f 	bfc	r0, #14, #18
            finder->info->idx = 0x3fff
    d0a2:	f004 0707 	and.w	r7, r4, #7
    d0a6:	ea40 2707 	orr.w	r7, r0, r7, lsl #8
    d0aa:	e7eb      	b.n	d084 <core_list_init+0xdc>
    d0ac:	f04f 0e01 	mov.w	lr, #1
    d0b0:	f04f 0c00 	mov.w	ip, #0
        while (p)
    d0b4:	f1be 0f01 	cmp.w	lr, #1
    d0b8:	da0a      	bge.n	d0d0 <core_list_init+0x128>
    d0ba:	e07b      	b.n	d1b4 <core_list_init+0x20c>
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    d0bc:	f1b8 0f01 	cmp.w	r8, #1
        insize *= 2;
    d0c0:	ea4f 0e4e 	mov.w	lr, lr, lsl #1
        tail->next = NULL;
    d0c4:	f8c6 c000 	str.w	ip, [r6]
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    d0c8:	d975      	bls.n	d1b6 <core_list_init+0x20e>
        while (p)
    d0ca:	f1be 0f01 	cmp.w	lr, #1
    d0ce:	db71      	blt.n	d1b4 <core_list_init+0x20c>
            for (i = 0; i < insize; i++)
    d0d0:	f1ce 0900 	rsb	r9, lr, #0
    d0d4:	f04f 0800 	mov.w	r8, #0
    d0d8:	2600      	movs	r6, #0
    d0da:	460d      	mov	r5, r1
    d0dc:	2100      	movs	r1, #0
    d0de:	e001      	b.n	d0e4 <core_list_init+0x13c>
        while (p)
    d0e0:	2d00      	cmp	r5, #0
    d0e2:	d0eb      	beq.n	d0bc <core_list_init+0x114>
    d0e4:	462f      	mov	r7, r5
    d0e6:	4633      	mov	r3, r6
            nmerges++; /* there exists a merge to be done */
    d0e8:	f108 0801 	add.w	r8, r8, #1
    d0ec:	f04f 0b04 	mov.w	fp, #4
    d0f0:	462c      	mov	r4, r5
                q = q->next;
    d0f2:	6824      	ldr	r4, [r4, #0]
    d0f4:	b1ac      	cbz	r4, d122 <core_list_init+0x17a>
    d0f6:	eb09 020b 	add.w	r2, r9, fp
            for (i = 0; i < insize; i++)
    d0fa:	2a03      	cmp	r2, #3
    d0fc:	d00f      	beq.n	d11e <core_list_init+0x176>
                q = q->next;
    d0fe:	6824      	ldr	r4, [r4, #0]
                if (!q)
    d100:	b194      	cbz	r4, d128 <core_list_init+0x180>
            for (i = 0; i < insize; i++)
    d102:	2a02      	cmp	r2, #2
    d104:	d00b      	beq.n	d11e <core_list_init+0x176>
                q = q->next;
    d106:	6824      	ldr	r4, [r4, #0]
                if (!q)
    d108:	b18c      	cbz	r4, d12e <core_list_init+0x186>
            for (i = 0; i < insize; i++)
    d10a:	2a01      	cmp	r2, #1
    d10c:	d007      	beq.n	d11e <core_list_init+0x176>
                q = q->next;
    d10e:	6824      	ldr	r4, [r4, #0]
                if (!q)
    d110:	b184      	cbz	r4, d134 <core_list_init+0x18c>
            for (i = 0; i < insize; i++)
    d112:	f10b 0b04 	add.w	fp, fp, #4
    d116:	eb09 000b 	add.w	r0, r9, fp
    d11a:	2804      	cmp	r0, #4
    d11c:	d1e9      	bne.n	d0f2 <core_list_init+0x14a>
    d11e:	46f3      	mov	fp, lr
    d120:	e008      	b.n	d134 <core_list_init+0x18c>
                if (!q)
    d122:	f1ab 0b03 	sub.w	fp, fp, #3
    d126:	e005      	b.n	d134 <core_list_init+0x18c>
    d128:	f1ab 0b02 	sub.w	fp, fp, #2
    d12c:	e002      	b.n	d134 <core_list_init+0x18c>
    d12e:	f1ab 0b01 	sub.w	fp, fp, #1
    d132:	bf00      	nop
    d134:	46f2      	mov	sl, lr
    d136:	e00d      	b.n	d154 <core_list_init+0x1ac>
                else if (qsize == 0 || !q)
    d138:	2d00      	cmp	r5, #0
    d13a:	bf18      	it	ne
    d13c:	f1ba 0f00 	cmpne.w	sl, #0
    d140:	d11c      	bne.n	d17c <core_list_init+0x1d4>
    d142:	6817      	ldr	r7, [r2, #0]
    d144:	f1ab 0b01 	sub.w	fp, fp, #1
    d148:	462c      	mov	r4, r5
    d14a:	4613      	mov	r3, r2
                if (tail)
    d14c:	2e00      	cmp	r6, #0
                    tail->next = e;
    d14e:	bf14      	ite	ne
    d150:	6033      	strne	r3, [r6, #0]
    d152:	4619      	moveq	r1, r3
        p    = list;
    d154:	463a      	mov	r2, r7
    d156:	4625      	mov	r5, r4
    d158:	461e      	mov	r6, r3
            while (psize > 0 || (qsize > 0 && q))
    d15a:	f1bb 0f00 	cmp.w	fp, #0
    d15e:	dceb      	bgt.n	d138 <core_list_init+0x190>
    d160:	2d00      	cmp	r5, #0
    d162:	d0bd      	beq.n	d0e0 <core_list_init+0x138>
    d164:	f1ba 0f01 	cmp.w	sl, #1
    d168:	dbba      	blt.n	d0e0 <core_list_init+0x138>
                if (psize == 0)
    d16a:	f1bb 0f00 	cmp.w	fp, #0
    d16e:	d1e3      	bne.n	d138 <core_list_init+0x190>
                    q = q->next;
    d170:	682c      	ldr	r4, [r5, #0]
                    qsize--;
    d172:	f1aa 0a01 	sub.w	sl, sl, #1
    d176:	f04f 0b00 	mov.w	fp, #0
    d17a:	e017      	b.n	d1ac <core_list_init+0x204>
                else if (cmp(p->info, q->info, res) <= 0)
    d17c:	6853      	ldr	r3, [r2, #4]
    d17e:	686c      	ldr	r4, [r5, #4]
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
    d180:	f9b3 7000 	ldrsh.w	r7, [r3]
    return a->idx - b->idx;
    d184:	f9b3 0002 	ldrsh.w	r0, [r3, #2]
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
    d188:	0a3f      	lsrs	r7, r7, #8
    d18a:	f367 271f 	bfi	r7, r7, #8, #24
    d18e:	801f      	strh	r7, [r3, #0]
    return a->idx - b->idx;
    d190:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    d194:	f9b4 7000 	ldrsh.w	r7, [r4]
                else if (cmp(p->info, q->info, res) <= 0)
    d198:	4298      	cmp	r0, r3
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    d19a:	ea4f 2017 	mov.w	r0, r7, lsr #8
    d19e:	f360 201f 	bfi	r0, r0, #8, #24
    d1a2:	8020      	strh	r0, [r4, #0]
                else if (cmp(p->info, q->info, res) <= 0)
    d1a4:	ddcd      	ble.n	d142 <core_list_init+0x19a>
                    q = q->next;
    d1a6:	682c      	ldr	r4, [r5, #0]
                    qsize--;
    d1a8:	f1aa 0a01 	sub.w	sl, sl, #1
    d1ac:	4617      	mov	r7, r2
    d1ae:	462b      	mov	r3, r5
    d1b0:	e7cc      	b.n	d14c <core_list_init+0x1a4>
    d1b2:	bf00      	nop
        while (p)
    d1b4:	e7fe      	b.n	d1b4 <core_list_init+0x20c>
    return list;
    d1b6:	4608      	mov	r0, r1
    d1b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0000d1bc <main>:
    int   argc = 0;
    char *argv[1];
#else
MAIN_RETURN_TYPE
main(int argc, char *argv[])
{
    d1bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d1c0:	f5ad 6d04 	sub.w	sp, sp, #2112	; 0x840
    d1c4:	b081      	sub	sp, #4
    d1c6:	2001      	movs	r0, #1
            retval = seed1_volatile;
    d1c8:	f240 0710 	movw	r7, #16
    }
    if (sizeof(ee_u32) != 4)
    {
        ee_printf("ERROR! Please define ee_u32 to a 32b unsigned type!\n");
    }
    p->portable_id = 1;
    d1cc:	f88d 0842 	strb.w	r0, [sp, #2114]	; 0x842
    d1d0:	f2c1 0700 	movt	r7, #4096	; 0x1000
    d1d4:	683a      	ldr	r2, [r7, #0]
            retval = seed3_volatile;
    d1d6:	f240 0300 	movw	r3, #0
    if (sizeof(struct list_head_s) > 128)
    {
        ee_printf("list_head structure too big for comparable data!\n");
        return MAIN_RETURN_VAL;
    }
    results[0].seed1      = get_seed(1);
    d1da:	f8ad 2800 	strh.w	r2, [sp, #2048]	; 0x800
            retval = seed2_volatile;
    d1de:	6878      	ldr	r0, [r7, #4]
            retval = seed3_volatile;
    d1e0:	f2c1 0300 	movt	r3, #4096	; 0x1000
    results[0].seed2      = get_seed(2);
    d1e4:	f8ad 0802 	strh.w	r0, [sp, #2050]	; 0x802
    d1e8:	6819      	ldr	r1, [r3, #0]
    results[0].seed3      = get_seed(3);
    d1ea:	f8ad 1804 	strh.w	r1, [sp, #2052]	; 0x804
            retval = seed4_volatile;
    d1ee:	685b      	ldr	r3, [r3, #4]
    results[0].iterations = get_seed_32(4);
    d1f0:	f8cd 381c 	str.w	r3, [sp, #2076]	; 0x81c
            retval = seed5_volatile;
    d1f4:	f8d7 c008 	ldr.w	ip, [r7, #8]
    if (results[0].execs == 0)
    { /* if not supplied, execute all algorithms */
        results[0].execs = ALL_ALGORITHMS_MASK;
    }
    /* put in some default values based on one seed only for easy testing */
    if ((results[0].seed1 == 0) && (results[0].seed2 == 0)
    d1f8:	ea40 0302 	orr.w	r3, r0, r2
    if (results[0].execs == 0)
    d1fc:	f1bc 0f00 	cmp.w	ip, #0
    if ((results[0].seed1 == 0) && (results[0].seed2 == 0)
    d200:	ea43 0301 	orr.w	r3, r3, r1
    if (results[0].execs == 0)
    d204:	bf08      	it	eq
    d206:	f04f 0c07 	moveq.w	ip, #7
    if ((results[0].seed1 == 0) && (results[0].seed2 == 0)
    d20a:	041b      	lsls	r3, r3, #16
    d20c:	f8cd c820 	str.w	ip, [sp, #2080]	; 0x820
    d210:	d009      	beq.n	d226 <main+0x6a>
    results[0].seed1      = get_seed(1);
    d212:	b293      	uxth	r3, r2
    { /* perfromance run */
        results[0].seed1 = 0;
        results[0].seed2 = 0;
        results[0].seed3 = 0x66;
    }
    if ((results[0].seed1 == 1) && (results[0].seed2 == 0)
    d214:	2b01      	cmp	r3, #1
    d216:	bf04      	itt	eq
    d218:	4308      	orreq	r0, r1
    d21a:	ea5f 4000 	movseq.w	r0, r0, lsl #16
    d21e:	d10a      	bne.n	d236 <main+0x7a>
    d220:	f243 4215 	movw	r2, #13333	; 0x3415
    d224:	e000      	b.n	d228 <main+0x6c>
    d226:	2200      	movs	r2, #0
    d228:	2066      	movs	r0, #102	; 0x66
    d22a:	f8ad 2800 	strh.w	r2, [sp, #2048]	; 0x800
    d22e:	f8ad 2802 	strh.w	r2, [sp, #2050]	; 0x802
    d232:	f8ad 0804 	strh.w	r0, [sp, #2052]	; 0x804
#endif
    /* Data init */
    /* Find out how space much we have based on number of algorithms */
    for (i = 0; i < NUM_ALGORITHMS; i++)
    {
        if ((1 << (ee_u32)i) & results[0].execs)
    d236:	f01c 0701 	ands.w	r7, ip, #1
    d23a:	f00c 0302 	and.w	r3, ip, #2
    d23e:	eb07 0053 	add.w	r0, r7, r3, lsr #1
    d242:	f00c 0504 	and.w	r5, ip, #4
    d246:	eb00 0095 	add.w	r0, r0, r5, lsr #2
    d24a:	f44f 64fa 	mov.w	r4, #2000	; 0x7d0
            num_algorithms++;
    }
    for (i = 0; i < MULTITHREAD; i++)
        results[i].size = results[i].size / num_algorithms;
    d24e:	fbb4 f0f0 	udiv	r0, r4, r0
    d252:	f04f 0600 	mov.w	r6, #0
    d256:	a90c      	add	r1, sp, #48	; 0x30
    d258:	f8ad 6840 	strh.w	r6, [sp, #2112]	; 0x840
    results[i].memblock[0] = stack_memblock + i * TOTAL_DATA_SIZE;
    d25c:	f8cd 1808 	str.w	r1, [sp, #2056]	; 0x808
        results[i].size = results[i].size / num_algorithms;
    d260:	f8cd 0818 	str.w	r0, [sp, #2072]	; 0x818
        ee_u32 ctx;
        if ((1 << (ee_u32)i) & results[0].execs)
        {
            for (ctx = 0; ctx < MULTITHREAD; ctx++)
                results[ctx].memblock[i + 1]
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d264:	bf1c      	itt	ne
    d266:	f8cd 180c 	strne.w	r1, [sp, #2060]	; 0x80c
    d26a:	2601      	movne	r6, #1
        if ((1 << (ee_u32)i) & results[0].execs)
    d26c:	b963      	cbnz	r3, d288 <main+0xcc>
    d26e:	2d00      	cmp	r5, #0
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d270:	bf1c      	itt	ne
    d272:	fb10 1606 	smlabbne	r6, r0, r6, r1
    d276:	f8cd 6814 	strne.w	r6, [sp, #2068]	; 0x814
    d27a:	b997      	cbnz	r7, d2a2 <main+0xe6>
        if (results[i].execs & ID_LIST)
        {
            results[i].list = core_list_init(
                results[0].size, results[i].memblock[1], results[i].seed1);
        }
        if (results[i].execs & ID_MATRIX)
    d27c:	b9e3      	cbnz	r3, d2b8 <main+0xfc>
                             results[i].memblock[2],
                             (ee_s32)results[i].seed1
                                 | (((ee_s32)results[i].seed2) << 16),
                             &(results[i].mat));
        }
        if (results[i].execs & ID_STATE)
    d27e:	ea5f 704c 	movs.w	r0, ip, lsl #29
    d282:	f100 8153 	bmi.w	d52c <main+0x370>
    d286:	e1e5      	b.n	d654 <main+0x498>
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d288:	fb10 1406 	smlabb	r4, r0, r6, r1
            j++;
    d28c:	3601      	adds	r6, #1
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d28e:	f8cd 4810 	str.w	r4, [sp, #2064]	; 0x810
        if ((1 << (ee_u32)i) & results[0].execs)
    d292:	2d00      	cmp	r5, #0
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d294:	bf1c      	itt	ne
    d296:	fb10 1606 	smlabbne	r6, r0, r6, r1
    d29a:	f8cd 6814 	strne.w	r6, [sp, #2068]	; 0x814
        if (results[i].execs & ID_LIST)
    d29e:	2f00      	cmp	r7, #0
    d2a0:	d0ec      	beq.n	d27c <main+0xc0>
            results[i].list = core_list_init(
    d2a2:	b212      	sxth	r2, r2
    d2a4:	f7ff fe80 	bl	cfa8 <core_list_init>
        if (results[i].execs & ID_MATRIX)
    d2a8:	f8dd c820 	ldr.w	ip, [sp, #2080]	; 0x820
            results[i].list = core_list_init(
    d2ac:	f8cd 0824 	str.w	r0, [sp, #2084]	; 0x824
        if (results[i].execs & ID_MATRIX)
    d2b0:	f00c 0302 	and.w	r3, ip, #2
    d2b4:	2b00      	cmp	r3, #0
    d2b6:	d0e2      	beq.n	d27e <main+0xc2>
                             (ee_s32)results[i].seed1
    d2b8:	f9bd 0800 	ldrsh.w	r0, [sp, #2048]	; 0x800
                                 | (((ee_s32)results[i].seed2) << 16),
    d2bc:	f8bd 2802 	ldrh.w	r2, [sp, #2050]	; 0x802
            core_init_matrix(results[0].size,
    d2c0:	f8dd 7818 	ldr.w	r7, [sp, #2072]	; 0x818
                                 | (((ee_s32)results[i].seed2) << 16),
    d2c4:	ea40 4602 	orr.w	r6, r0, r2, lsl #16
                             results[i].memblock[2],
    d2c8:	f8dd 1810 	ldr.w	r1, [sp, #2064]	; 0x810
    MATDAT *A;
    MATDAT *B;
    ee_s32  order = 1;
    MATDAT  val;
    ee_u32  i = 0, j = 0;
    if (seed == 0)
    d2cc:	2e00      	cmp	r6, #0
    d2ce:	bf08      	it	eq
    d2d0:	2601      	moveq	r6, #1
        seed = 1;
    while (j < blksize)
    d2d2:	b307      	cbz	r7, d316 <main+0x15a>
    d2d4:	2320      	movs	r3, #32
    d2d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    d2da:	bf00      	nop
    {
        i++;
        j = i * i * 2 * 4;
    d2dc:	f100 0902 	add.w	r9, r0, #2
    d2e0:	f1a3 0218 	sub.w	r2, r3, #24
    d2e4:	fb02 f209 	mul.w	r2, r2, r9
    while (j < blksize)
    d2e8:	42ba      	cmp	r2, r7
    d2ea:	d220      	bcs.n	d32e <main+0x172>
        j = i * i * 2 * 4;
    d2ec:	1cc2      	adds	r2, r0, #3
    d2ee:	f1a3 0510 	sub.w	r5, r3, #16
    d2f2:	4355      	muls	r5, r2
    while (j < blksize)
    d2f4:	42bd      	cmp	r5, r7
    d2f6:	d21e      	bcs.n	d336 <main+0x17a>
        j = i * i * 2 * 4;
    d2f8:	f100 0904 	add.w	r9, r0, #4
    d2fc:	f1a3 0508 	sub.w	r5, r3, #8
    d300:	fb05 f509 	mul.w	r5, r5, r9
    while (j < blksize)
    d304:	42bd      	cmp	r5, r7
    d306:	d215      	bcs.n	d334 <main+0x178>
        j = i * i * 2 * 4;
    d308:	3005      	adds	r0, #5
    d30a:	4358      	muls	r0, r3
    while (j < blksize)
    d30c:	3320      	adds	r3, #32
    d30e:	42b8      	cmp	r0, r7
    d310:	4648      	mov	r0, r9
    d312:	d3e3      	bcc.n	d2dc <main+0x120>
    d314:	e00f      	b.n	d336 <main+0x17a>
    }
    N = i - 1;
    A = (MATDAT *)align_mem(memblk);
    d316:	1cc8      	adds	r0, r1, #3
    d318:	f020 0a03 	bic.w	sl, r0, #3
    B = A + N * N;
    d31c:	f10a 0702 	add.w	r7, sl, #2
    d320:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
    d324:	2001      	movs	r0, #1
    d326:	f8cd c010 	str.w	ip, [sp, #16]

    for (i = 0; i < N; i++)
    d32a:	9003      	str	r0, [sp, #12]
    d32c:	e012      	b.n	d354 <main+0x198>
    A = (MATDAT *)align_mem(memblk);
    d32e:	f100 0901 	add.w	r9, r0, #1
    d332:	e000      	b.n	d336 <main+0x17a>
    d334:	4691      	mov	r9, r2
    d336:	1cc8      	adds	r0, r1, #3
    d338:	f020 0a03 	bic.w	sl, r0, #3
    B = A + N * N;
    d33c:	fb09 f009 	mul.w	r0, r9, r9
    for (i = 0; i < N; i++)
    d340:	f1b9 0f00 	cmp.w	r9, #0
    B = A + N * N;
    d344:	eb0a 0140 	add.w	r1, sl, r0, lsl #1
    for (i = 0; i < N; i++)
    d348:	9107      	str	r1, [sp, #28]
    d34a:	f000 80da 	beq.w	d502 <main+0x346>
    d34e:	9f07      	ldr	r7, [sp, #28]
    d350:	e9cd 0c03 	strd	r0, ip, [sp, #12]
    d354:	f1a9 0001 	sub.w	r0, r9, #1
    d358:	f009 0103 	and.w	r1, r9, #3
    d35c:	900a      	str	r0, [sp, #40]	; 0x28
    d35e:	eba9 0301 	sub.w	r3, r9, r1
    d362:	ea4f 0049 	mov.w	r0, r9, lsl #1
    d366:	f04f 0e01 	mov.w	lr, #1
    d36a:	2200      	movs	r2, #0
    d36c:	f64f 75ff 	movw	r5, #65535	; 0xffff
    d370:	46d0      	mov	r8, sl
    d372:	9009      	str	r0, [sp, #36]	; 0x24
    d374:	4638      	mov	r0, r7
    d376:	9707      	str	r7, [sp, #28]
    d378:	910b      	str	r1, [sp, #44]	; 0x2c
    d37a:	e9cd a905 	strd	sl, r9, [sp, #20]
    {
        for (j = 0; j < N; j++)
    d37e:	980a      	ldr	r0, [sp, #40]	; 0x28
    d380:	2803      	cmp	r0, #3
    d382:	d213      	bcs.n	d3ac <main+0x1f0>
    d384:	e00c      	b.n	d3a0 <main+0x1e4>
    d386:	bf00      	nop
            val          = matrix_clip(val, 0);
            B[i * N + j] = val;
            val          = (val + order);
            val          = matrix_clip(val, 1);
            A[i * N + j] = val;
            order++;
    d388:	4686      	mov	lr, r0
    d38a:	4662      	mov	r2, ip
    d38c:	9809      	ldr	r0, [sp, #36]	; 0x24
    for (i = 0; i < N; i++)
    d38e:	3201      	adds	r2, #1
    d390:	4480      	add	r8, r0
    d392:	454a      	cmp	r2, r9
    d394:	4407      	add	r7, r0
    d396:	f000 80b1 	beq.w	d4fc <main+0x340>
        for (j = 0; j < N; j++)
    d39a:	980a      	ldr	r0, [sp, #40]	; 0x28
    d39c:	2803      	cmp	r0, #3
    d39e:	d205      	bcs.n	d3ac <main+0x1f0>
    d3a0:	f04f 0b00 	mov.w	fp, #0
    d3a4:	2900      	cmp	r1, #0
    d3a6:	d164      	bne.n	d472 <main+0x2b6>
    d3a8:	e7f0      	b.n	d38c <main+0x1d0>
    d3aa:	bf00      	nop
    d3ac:	ea4f 0c4e 	mov.w	ip, lr, lsl #1
    d3b0:	f04f 0900 	mov.w	r9, #0
    d3b4:	f04f 0b00 	mov.w	fp, #0
    d3b8:	9208      	str	r2, [sp, #32]
    d3ba:	bf00      	nop
            seed         = ((order * seed) % 65536);
    d3bc:	eb0e 0a0b 	add.w	sl, lr, fp
    d3c0:	fb0a f006 	mul.w	r0, sl, r6
    d3c4:	17c2      	asrs	r2, r0, #31
    d3c6:	eb00 4212 	add.w	r2, r0, r2, lsr #16
    d3ca:	43aa      	bics	r2, r5
    d3cc:	1a80      	subs	r0, r0, r2
            val          = matrix_clip(val, 0);
    d3ce:	eb0a 0200 	add.w	r2, sl, r0
            val          = matrix_clip(val, 1);
    d3d2:	eb0c 0409 	add.w	r4, ip, r9
            B[i * N + j] = val;
    d3d6:	f827 2009 	strh.w	r2, [r7, r9]
            val          = matrix_clip(val, 1);
    d3da:	1822      	adds	r2, r4, r0
    d3dc:	b2d2      	uxtb	r2, r2
            A[i * N + j] = val;
    d3de:	f828 2009 	strh.w	r2, [r8, r9]
        for (j = 0; j < N; j++)
    d3e2:	f10a 0201 	add.w	r2, sl, #1
            seed         = ((order * seed) % 65536);
    d3e6:	4350      	muls	r0, r2
    d3e8:	17c2      	asrs	r2, r0, #31
    d3ea:	eb00 4212 	add.w	r2, r0, r2, lsr #16
    d3ee:	f36f 020f 	bfc	r2, #0, #16
    d3f2:	1a80      	subs	r0, r0, r2
            val          = matrix_clip(val, 0);
    d3f4:	eb0a 0200 	add.w	r2, sl, r0
    d3f8:	3201      	adds	r2, #1
            B[i * N + j] = val;
    d3fa:	eb07 064b 	add.w	r6, r7, fp, lsl #1
    d3fe:	8072      	strh	r2, [r6, #2]
            val          = matrix_clip(val, 1);
    d400:	1822      	adds	r2, r4, r0
    d402:	3202      	adds	r2, #2
    d404:	b2d2      	uxtb	r2, r2
            A[i * N + j] = val;
    d406:	eb08 014b 	add.w	r1, r8, fp, lsl #1
    d40a:	804a      	strh	r2, [r1, #2]
        for (j = 0; j < N; j++)
    d40c:	f10a 0202 	add.w	r2, sl, #2
            seed         = ((order * seed) % 65536);
    d410:	4350      	muls	r0, r2
    d412:	17c2      	asrs	r2, r0, #31
    d414:	eb00 4212 	add.w	r2, r0, r2, lsr #16
    d418:	f36f 020f 	bfc	r2, #0, #16
    d41c:	1a80      	subs	r0, r0, r2
            val          = matrix_clip(val, 0);
    d41e:	eb0a 0200 	add.w	r2, sl, r0
    d422:	3202      	adds	r2, #2
            B[i * N + j] = val;
    d424:	80b2      	strh	r2, [r6, #4]
            val          = matrix_clip(val, 1);
    d426:	1822      	adds	r2, r4, r0
    d428:	3204      	adds	r2, #4
    d42a:	b2d2      	uxtb	r2, r2
            A[i * N + j] = val;
    d42c:	808a      	strh	r2, [r1, #4]
        for (j = 0; j < N; j++)
    d42e:	f10a 0103 	add.w	r1, sl, #3
            seed         = ((order * seed) % 65536);
    d432:	4348      	muls	r0, r1
    d434:	17c1      	asrs	r1, r0, #31
    d436:	eb00 4111 	add.w	r1, r0, r1, lsr #16
    d43a:	f36f 010f 	bfc	r1, #0, #16
    d43e:	1a46      	subs	r6, r0, r1
            val          = matrix_clip(val, 0);
    d440:	eb0a 0106 	add.w	r1, sl, r6
            B[i * N + j] = val;
    d444:	eb07 0009 	add.w	r0, r7, r9
            val          = matrix_clip(val, 0);
    d448:	3103      	adds	r1, #3
            B[i * N + j] = val;
    d44a:	80c1      	strh	r1, [r0, #6]
            val          = matrix_clip(val, 1);
    d44c:	19a1      	adds	r1, r4, r6
    d44e:	3106      	adds	r1, #6
        for (j = 0; j < N; j++)
    d450:	f10b 0b04 	add.w	fp, fp, #4
            A[i * N + j] = val;
    d454:	eb08 0009 	add.w	r0, r8, r9
            val          = matrix_clip(val, 1);
    d458:	b2c9      	uxtb	r1, r1
        for (j = 0; j < N; j++)
    d45a:	455b      	cmp	r3, fp
    d45c:	f109 0908 	add.w	r9, r9, #8
            A[i * N + j] = val;
    d460:	80c1      	strh	r1, [r0, #6]
        for (j = 0; j < N; j++)
    d462:	d1ab      	bne.n	d3bc <main+0x200>
    d464:	e9dd a905 	ldrd	sl, r9, [sp, #20]
    d468:	990b      	ldr	r1, [sp, #44]	; 0x2c
    d46a:	9a08      	ldr	r2, [sp, #32]
    d46c:	44de      	add	lr, fp
    d46e:	2900      	cmp	r1, #0
    d470:	d08c      	beq.n	d38c <main+0x1d0>
            seed         = ((order * seed) % 65536);
    d472:	fb0e f106 	mul.w	r1, lr, r6
    d476:	4694      	mov	ip, r2
    d478:	fb02 f009 	mul.w	r0, r2, r9
    d47c:	17ca      	asrs	r2, r1, #31
    d47e:	eb01 4212 	add.w	r2, r1, r2, lsr #16
    d482:	43aa      	bics	r2, r5
    d484:	1a8e      	subs	r6, r1, r2
            B[i * N + j] = val;
    d486:	eb0b 0400 	add.w	r4, fp, r0
    d48a:	f8dd b01c 	ldr.w	fp, [sp, #28]
            val          = (seed + order);
    d48e:	eb06 010e 	add.w	r1, r6, lr
            B[i * N + j] = val;
    d492:	f82b 1014 	strh.w	r1, [fp, r4, lsl #1]
            val          = (val + order);
    d496:	eb01 000e 	add.w	r0, r1, lr
    d49a:	990b      	ldr	r1, [sp, #44]	; 0x2c
            val          = matrix_clip(val, 1);
    d49c:	b2c0      	uxtb	r0, r0
            A[i * N + j] = val;
    d49e:	f82a 0014 	strh.w	r0, [sl, r4, lsl #1]
        for (j = 0; j < N; j++)
    d4a2:	2901      	cmp	r1, #1
            order++;
    d4a4:	f10e 0001 	add.w	r0, lr, #1
        for (j = 0; j < N; j++)
    d4a8:	f43f af6e 	beq.w	d388 <main+0x1cc>
            seed         = ((order * seed) % 65536);
    d4ac:	fb00 f106 	mul.w	r1, r0, r6
    d4b0:	17ca      	asrs	r2, r1, #31
    d4b2:	eb01 4212 	add.w	r2, r1, r2, lsr #16
    d4b6:	43aa      	bics	r2, r5
    d4b8:	1a8e      	subs	r6, r1, r2
            val          = (seed + order);
    d4ba:	1831      	adds	r1, r6, r0
            B[i * N + j] = val;
    d4bc:	1c62      	adds	r2, r4, #1
    d4be:	f82b 1012 	strh.w	r1, [fp, r2, lsl #1]
            val          = (val + order);
    d4c2:	4408      	add	r0, r1
    d4c4:	990b      	ldr	r1, [sp, #44]	; 0x2c
            val          = matrix_clip(val, 1);
    d4c6:	b2c0      	uxtb	r0, r0
            A[i * N + j] = val;
    d4c8:	f82a 0012 	strh.w	r0, [sl, r2, lsl #1]
        for (j = 0; j < N; j++)
    d4cc:	2902      	cmp	r1, #2
            order++;
    d4ce:	f10e 0002 	add.w	r0, lr, #2
        for (j = 0; j < N; j++)
    d4d2:	f43f af59 	beq.w	d388 <main+0x1cc>
            seed         = ((order * seed) % 65536);
    d4d6:	fb00 f106 	mul.w	r1, r0, r6
    d4da:	17ca      	asrs	r2, r1, #31
    d4dc:	eb01 4212 	add.w	r2, r1, r2, lsr #16
    d4e0:	43aa      	bics	r2, r5
    d4e2:	1a8e      	subs	r6, r1, r2
            val          = (seed + order);
    d4e4:	1831      	adds	r1, r6, r0
            B[i * N + j] = val;
    d4e6:	1ca2      	adds	r2, r4, #2
            val          = (val + order);
    d4e8:	4408      	add	r0, r1
            B[i * N + j] = val;
    d4ea:	f82b 1012 	strh.w	r1, [fp, r2, lsl #1]
    d4ee:	990b      	ldr	r1, [sp, #44]	; 0x2c
            val          = matrix_clip(val, 1);
    d4f0:	b2c0      	uxtb	r0, r0
            A[i * N + j] = val;
    d4f2:	f82a 0012 	strh.w	r0, [sl, r2, lsl #1]
            order++;
    d4f6:	f10e 0e03 	add.w	lr, lr, #3
    d4fa:	e746      	b.n	d38a <main+0x1ce>
    d4fc:	e9dd 0c03 	ldrd	r0, ip, [sp, #12]
    d500:	e002      	b.n	d508 <main+0x34c>
    d502:	2000      	movs	r0, #0
    d504:	f04f 0900 	mov.w	r9, #0
    d508:	9907      	ldr	r1, [sp, #28]
        }
    }

    p->A = A;
    d50a:	f8cd a82c 	str.w	sl, [sp, #2092]	; 0x82c
    p->B = B;
    p->C = (MATRES *)align_mem(B + N * N);
    d50e:	eb01 0040 	add.w	r0, r1, r0, lsl #1
    d512:	3003      	adds	r0, #3
    d514:	f020 0003 	bic.w	r0, r0, #3
    p->B = B;
    d518:	f8cd 1830 	str.w	r1, [sp, #2096]	; 0x830
    p->C = (MATRES *)align_mem(B + N * N);
    d51c:	f8cd 0834 	str.w	r0, [sp, #2100]	; 0x834
    p->N = N;
    d520:	f8cd 9828 	str.w	r9, [sp, #2088]	; 0x828
        if (results[i].execs & ID_STATE)
    d524:	ea5f 704c 	movs.w	r0, ip, lsl #29
    d528:	f140 8094 	bpl.w	d654 <main+0x498>
        {
            core_init_state(
                results[0].size, results[i].seed1, results[i].memblock[3]);
    d52c:	f8dd 1818 	ldr.w	r1, [sp, #2072]	; 0x818
    d530:	f8dd c814 	ldr.w	ip, [sp, #2068]	; 0x814
    ee_u8 *buf = 0;
#if CORE_DEBUG
    ee_u8 *start = p;
    ee_printf("State: %d,%d\n", size, seed);
#endif
    size--;
    d534:	f1a1 0901 	sub.w	r9, r1, #1
    next = 0;
    while ((total + next + 1) < size)
    d538:	f1b9 0f02 	cmp.w	r9, #2
    d53c:	d37d      	bcc.n	d63a <main+0x47e>
    d53e:	f8bd 7800 	ldrh.w	r7, [sp, #2048]	; 0x800
    d542:	f241 1ae8 	movw	sl, #4584	; 0x11e8
    d546:	f241 1318 	movw	r3, #4376	; 0x1118
    d54a:	f10c 0001 	add.w	r0, ip, #1
    d54e:	2600      	movs	r6, #0
    d550:	f2c0 0a01 	movt	sl, #1
    d554:	f2c0 0301 	movt	r3, #1
    d558:	f04f 0b0c 	mov.w	fp, #12
    d55c:	2500      	movs	r5, #0
    d55e:	f04f 0e00 	mov.w	lr, #0
    d562:	9108      	str	r1, [sp, #32]
    d564:	9009      	str	r0, [sp, #36]	; 0x24
    d566:	e9cd 9c0a 	strd	r9, ip, [sp, #40]	; 0x28
    d56a:	b9cd      	cbnz	r5, d5a0 <main+0x3e4>
    d56c:	e006      	b.n	d57c <main+0x3c0>
    d56e:	bf00      	nop
    {
        if (next > 0)
        {
            for (i = 0; i < next; i++)
                *(p + total + i) = buf[i];
            *(p + total + i) = ',';
    d570:	212c      	movs	r1, #44	; 0x2c
    d572:	5541      	strb	r1, [r0, r5]
            total += next + 1;
    d574:	eb05 000e 	add.w	r0, r5, lr
    d578:	f100 0e01 	add.w	lr, r0, #1
        }
        seed++;
    d57c:	3701      	adds	r7, #1
        switch (seed & 0x7)
    d57e:	b238      	sxth	r0, r7
    d580:	f000 0107 	and.w	r1, r0, #7
    d584:	f85a 2021 	ldr.w	r2, [sl, r1, lsl #2]
    d588:	f853 5021 	ldr.w	r5, [r3, r1, lsl #2]
    d58c:	ea0b 0050 	and.w	r0, fp, r0, lsr #1
    d590:	5816      	ldr	r6, [r2, r0]
    while ((total + next + 1) < size)
    d592:	eb0e 0005 	add.w	r0, lr, r5
    d596:	3001      	adds	r0, #1
    d598:	4548      	cmp	r0, r9
    d59a:	d251      	bcs.n	d640 <main+0x484>
        if (next > 0)
    d59c:	2d00      	cmp	r5, #0
    d59e:	d0ed      	beq.n	d57c <main+0x3c0>
            for (i = 0; i < next; i++)
    d5a0:	1e68      	subs	r0, r5, #1
    d5a2:	2803      	cmp	r0, #3
    d5a4:	f005 0403 	and.w	r4, r5, #3
    d5a8:	d214      	bcs.n	d5d4 <main+0x418>
    d5aa:	2100      	movs	r1, #0
    d5ac:	2c00      	cmp	r4, #0
    d5ae:	eb0c 000e 	add.w	r0, ip, lr
    d5b2:	d0dd      	beq.n	d570 <main+0x3b4>
                *(p + total + i) = buf[i];
    d5b4:	5c72      	ldrb	r2, [r6, r1]
            for (i = 0; i < next; i++)
    d5b6:	2c01      	cmp	r4, #1
                *(p + total + i) = buf[i];
    d5b8:	5442      	strb	r2, [r0, r1]
            for (i = 0; i < next; i++)
    d5ba:	d0d9      	beq.n	d570 <main+0x3b4>
    d5bc:	1c4a      	adds	r2, r1, #1
                *(p + total + i) = buf[i];
    d5be:	f816 8002 	ldrb.w	r8, [r6, r2]
            for (i = 0; i < next; i++)
    d5c2:	2c02      	cmp	r4, #2
                *(p + total + i) = buf[i];
    d5c4:	f800 8002 	strb.w	r8, [r0, r2]
            for (i = 0; i < next; i++)
    d5c8:	d0d2      	beq.n	d570 <main+0x3b4>
    d5ca:	3102      	adds	r1, #2
                *(p + total + i) = buf[i];
    d5cc:	5c72      	ldrb	r2, [r6, r1]
    d5ce:	5442      	strb	r2, [r0, r1]
    d5d0:	e7ce      	b.n	d570 <main+0x3b4>
    d5d2:	bf00      	nop
            for (i = 0; i < next; i++)
    d5d4:	9809      	ldr	r0, [sp, #36]	; 0x24
    d5d6:	1b61      	subs	r1, r4, r5
    d5d8:	eb00 0c0e 	add.w	ip, r0, lr
    d5dc:	f106 0801 	add.w	r8, r6, #1
    d5e0:	f06f 0003 	mvn.w	r0, #3
                *(p + total + i) = buf[i];
    d5e4:	eb08 0900 	add.w	r9, r8, r0
    d5e8:	f899 a003 	ldrb.w	sl, [r9, #3]
    d5ec:	eb0c 0b00 	add.w	fp, ip, r0
    d5f0:	f88b a003 	strb.w	sl, [fp, #3]
    d5f4:	f899 2004 	ldrb.w	r2, [r9, #4]
            for (i = 0; i < next; i++)
    d5f8:	3004      	adds	r0, #4
                *(p + total + i) = buf[i];
    d5fa:	f88b 2004 	strb.w	r2, [fp, #4]
    d5fe:	f899 2005 	ldrb.w	r2, [r9, #5]
            for (i = 0; i < next; i++)
    d602:	180b      	adds	r3, r1, r0
                *(p + total + i) = buf[i];
    d604:	f88b 2005 	strb.w	r2, [fp, #5]
    d608:	f899 2006 	ldrb.w	r2, [r9, #6]
            for (i = 0; i < next; i++)
    d60c:	3304      	adds	r3, #4
                *(p + total + i) = buf[i];
    d60e:	f88b 2006 	strb.w	r2, [fp, #6]
            for (i = 0; i < next; i++)
    d612:	d1e7      	bne.n	d5e4 <main+0x428>
    d614:	f241 13e8 	movw	r3, #4584	; 0x11e8
    d618:	f2c0 0301 	movt	r3, #1
    d61c:	e9dd 9c0a 	ldrd	r9, ip, [sp, #40]	; 0x28
    d620:	469a      	mov	sl, r3
    d622:	f241 1318 	movw	r3, #4376	; 0x1118
    d626:	1d01      	adds	r1, r0, #4
    d628:	f2c0 0301 	movt	r3, #1
    d62c:	f04f 0b0c 	mov.w	fp, #12
    d630:	2c00      	cmp	r4, #0
    d632:	eb0c 000e 	add.w	r0, ip, lr
    d636:	d1bd      	bne.n	d5b4 <main+0x3f8>
    d638:	e79a      	b.n	d570 <main+0x3b4>
    d63a:	f04f 0e00 	mov.w	lr, #0
    d63e:	e002      	b.n	d646 <main+0x48a>
    d640:	9908      	ldr	r1, [sp, #32]
            default: /* Never happen, just to make some compilers happy */
                break;
        }
    }
    size++;
    while (total < size)
    d642:	4571      	cmp	r1, lr
    d644:	d906      	bls.n	d654 <main+0x498>
    d646:	eb0c 000e 	add.w	r0, ip, lr
    d64a:	eba1 020e 	sub.w	r2, r1, lr
    { /* fill the rest with 0 */
        *(p + total) = 0;
    d64e:	2100      	movs	r1, #0
    d650:	f003 fb1d 	bl	10c8e <memset>
        }
    }

    /* automatically determine number of iterations if not set */
    if (results[0].iterations == 0)
    d654:	f8dd 081c 	ldr.w	r0, [sp, #2076]	; 0x81c
    d658:	f64f 7aff 	movw	sl, #65535	; 0xffff
    d65c:	2800      	cmp	r0, #0
    d65e:	d172      	bne.n	d746 <main+0x58a>
    d660:	f241 2bd0 	movw	fp, #4816	; 0x12d0
    d664:	f240 0900 	movw	r9, #0
    d668:	2001      	movs	r0, #1
    d66a:	f04f 0800 	mov.w	r8, #0
    d66e:	f2c4 1b63 	movt	fp, #16739	; 0x4163
    d672:	f6c3 79f0 	movt	r9, #16368	; 0x3ff0
    d676:	f50d 6600 	add.w	r6, sp, #2048	; 0x800
    d67a:	fa0f f78a 	sxth.w	r7, sl
    {
        secs_ret secs_passed = 0;
        ee_u32   divisor;
        results[0].iterations = 1;
    d67e:	f8cd 081c 	str.w	r0, [sp, #2076]	; 0x81c
    d682:	bf00      	nop
        while (secs_passed < (secs_ret)1)
        {
            results[0].iterations *= 10;
    d684:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    d688:	0040      	lsls	r0, r0, #1
    d68a:	f8cd 081c 	str.w	r0, [sp, #2076]	; 0x81c
    GETMYTIME(&start_time_val);
    d68e:	f001 fd36 	bl	f0fe <clock>
    d692:	f240 0210 	movw	r2, #16
    d696:	f2c1 0200 	movt	r2, #4096	; 0x1000
    d69a:	6151      	str	r1, [r2, #20]
    d69c:	6110      	str	r0, [r2, #16]
    ee_u32        iterations = res->iterations;
    d69e:	f8dd 481c 	ldr.w	r4, [sp, #2076]	; 0x81c
    res->crclist             = 0;
    d6a2:	f8cd 883c 	str.w	r8, [sp, #2108]	; 0x83c
    d6a6:	f8cd 8838 	str.w	r8, [sp, #2104]	; 0x838
    d6aa:	b1ec      	cbz	r4, d6e8 <main+0x52c>
    d6ac:	2500      	movs	r5, #0
    d6ae:	bf00      	nop
        crc      = core_bench_list(res, 1);
    d6b0:	4630      	mov	r0, r6
    d6b2:	2101      	movs	r1, #1
    d6b4:	f7ff fa24 	bl	cb00 <core_bench_list>
        res->crc = crcu16(crc, res->crc);
    d6b8:	f8bd 1838 	ldrh.w	r1, [sp, #2104]	; 0x838
    d6bc:	f001 fc94 	bl	efe8 <crcu16>
    d6c0:	f8ad 0838 	strh.w	r0, [sp, #2104]	; 0x838
        crc      = core_bench_list(res, -1);
    d6c4:	4630      	mov	r0, r6
    d6c6:	4639      	mov	r1, r7
    d6c8:	f7ff fa1a 	bl	cb00 <core_bench_list>
        res->crc = crcu16(crc, res->crc);
    d6cc:	f8bd 1838 	ldrh.w	r1, [sp, #2104]	; 0x838
    d6d0:	f001 fc8a 	bl	efe8 <crcu16>
        if (i == 0)
    d6d4:	2d00      	cmp	r5, #0
    for (i = 0; i < iterations; i++)
    d6d6:	f105 0501 	add.w	r5, r5, #1
        res->crc = crcu16(crc, res->crc);
    d6da:	f8ad 0838 	strh.w	r0, [sp, #2104]	; 0x838
            res->crclist = res->crc;
    d6de:	bf08      	it	eq
    d6e0:	f8ad 083a 	strheq.w	r0, [sp, #2106]	; 0x83a
    for (i = 0; i < iterations; i++)
    d6e4:	42ac      	cmp	r4, r5
    d6e6:	d1e3      	bne.n	d6b0 <main+0x4f4>
    GETMYTIME(&stop_time_val);
    d6e8:	f001 fd09 	bl	f0fe <clock>
    d6ec:	f240 0210 	movw	r2, #16
    d6f0:	f2c1 0200 	movt	r2, #4096	; 0x1000
    d6f4:	61d1      	str	r1, [r2, #28]
    d6f6:	6190      	str	r0, [r2, #24]
        = (CORE_TICKS)(MYTIMEDIFF(stop_time_val, start_time_val));
    d6f8:	6990      	ldr	r0, [r2, #24]
    d6fa:	69d1      	ldr	r1, [r2, #28]
    d6fc:	6911      	ldr	r1, [r2, #16]
    d6fe:	6952      	ldr	r2, [r2, #20]
    d700:	1a40      	subs	r0, r0, r1
    secs_ret retval = ((secs_ret)ticks) / (secs_ret)EE_TICKS_PER_SEC;
    d702:	f7fe fe3f 	bl	c384 <__aeabi_ui2d>
    d706:	2200      	movs	r2, #0
    d708:	465b      	mov	r3, fp
    d70a:	f7fe ffdf 	bl	c6cc <__aeabi_ddiv>
        while (secs_passed < (secs_ret)1)
    d70e:	2200      	movs	r2, #0
    d710:	464b      	mov	r3, r9
    d712:	4604      	mov	r4, r0
    d714:	460d      	mov	r5, r1
    d716:	f7ff f90d 	bl	c934 <__ledf2>
    d71a:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
    d71e:	dc02      	bgt.n	d726 <main+0x56a>
            results[0].iterations *= 10;
    d720:	f8dd 081c 	ldr.w	r0, [sp, #2076]	; 0x81c
    d724:	e7ae      	b.n	d684 <main+0x4c8>
            stop_time();
            secs_passed = time_in_secs(get_time());
        }
        /* now we know it executes for at least 1 sec, set actual run time at
         * about 10 secs */
        divisor = (ee_u32)secs_passed;
    d726:	4620      	mov	r0, r4
    d728:	4629      	mov	r1, r5
    d72a:	f7ff f8df 	bl	c8ec <__aeabi_d2uiz>
        if (divisor == 0) /* some machines cast float to int as 0 since this
    d72e:	2800      	cmp	r0, #0
    d730:	bf08      	it	eq
    d732:	2001      	moveq	r0, #1
    d734:	210a      	movs	r1, #10
                             conversion is not defined by ANSI, but we know at
                             least one second passed */
            divisor = 1;
        results[0].iterations *= 1 + 10 / divisor;
    d736:	fbb1 f0f0 	udiv	r0, r1, r0
    d73a:	f8dd 181c 	ldr.w	r1, [sp, #2076]	; 0x81c
    d73e:	3001      	adds	r0, #1
    d740:	4348      	muls	r0, r1
    d742:	f8cd 081c 	str.w	r0, [sp, #2076]	; 0x81c
    GETMYTIME(&start_time_val);
    d746:	f001 fcda 	bl	f0fe <clock>
    d74a:	f240 0210 	movw	r2, #16
    d74e:	f2c1 0200 	movt	r2, #4096	; 0x1000
    d752:	6151      	str	r1, [r2, #20]
    d754:	6110      	str	r0, [r2, #16]
    ee_u32        iterations = res->iterations;
    d756:	f8dd 681c 	ldr.w	r6, [sp, #2076]	; 0x81c
    d75a:	2000      	movs	r0, #0
    res->crclist             = 0;
    d75c:	f8cd 083c 	str.w	r0, [sp, #2108]	; 0x83c
    d760:	f8cd 0838 	str.w	r0, [sp, #2104]	; 0x838
    for (i = 0; i < iterations; i++)
    d764:	b306      	cbz	r6, d7a8 <main+0x5ec>
    d766:	2700      	movs	r7, #0
    d768:	f50d 6400 	add.w	r4, sp, #2048	; 0x800
    d76c:	fa0f f58a 	sxth.w	r5, sl
        crc      = core_bench_list(res, 1);
    d770:	4620      	mov	r0, r4
    d772:	2101      	movs	r1, #1
    d774:	f7ff f9c4 	bl	cb00 <core_bench_list>
        res->crc = crcu16(crc, res->crc);
    d778:	f8bd 1838 	ldrh.w	r1, [sp, #2104]	; 0x838
    d77c:	f001 fc34 	bl	efe8 <crcu16>
    d780:	f8ad 0838 	strh.w	r0, [sp, #2104]	; 0x838
        crc      = core_bench_list(res, -1);
    d784:	4620      	mov	r0, r4
    d786:	4629      	mov	r1, r5
    d788:	f7ff f9ba 	bl	cb00 <core_bench_list>
        res->crc = crcu16(crc, res->crc);
    d78c:	f8bd 1838 	ldrh.w	r1, [sp, #2104]	; 0x838
    d790:	f001 fc2a 	bl	efe8 <crcu16>
        if (i == 0)
    d794:	2f00      	cmp	r7, #0
    for (i = 0; i < iterations; i++)
    d796:	f107 0701 	add.w	r7, r7, #1
        res->crc = crcu16(crc, res->crc);
    d79a:	f8ad 0838 	strh.w	r0, [sp, #2104]	; 0x838
            res->crclist = res->crc;
    d79e:	bf08      	it	eq
    d7a0:	f8ad 083a 	strheq.w	r0, [sp, #2106]	; 0x83a
    for (i = 0; i < iterations; i++)
    d7a4:	42be      	cmp	r6, r7
    d7a6:	d1e3      	bne.n	d770 <main+0x5b4>
    GETMYTIME(&stop_time_val);
    d7a8:	f001 fca9 	bl	f0fe <clock>
    d7ac:	f240 0210 	movw	r2, #16
    d7b0:	f2c1 0200 	movt	r2, #4096	; 0x1000
    d7b4:	4613      	mov	r3, r2
    d7b6:	61d1      	str	r1, [r2, #28]
    d7b8:	6190      	str	r0, [r2, #24]
        = (CORE_TICKS)(MYTIMEDIFF(stop_time_val, start_time_val));
    d7ba:	6991      	ldr	r1, [r2, #24]
    d7bc:	69d0      	ldr	r0, [r2, #28]
    d7be:	6912      	ldr	r2, [r2, #16]
    d7c0:	6958      	ldr	r0, [r3, #20]
    iterate(&results[0]);
#endif
    stop_time();
    total_time = get_time();
    /* get a function of the input to report */
    seedcrc = crc16(results[0].seed1, seedcrc);
    d7c2:	f8bd 0800 	ldrh.w	r0, [sp, #2048]	; 0x800
    d7c6:	1a8d      	subs	r5, r1, r2
    return crcu16((ee_u16)newval, crc);
    d7c8:	2100      	movs	r1, #0
    d7ca:	f001 fc0d 	bl	efe8 <crcu16>
    seedcrc = crc16(results[0].seed2, seedcrc);
    d7ce:	f8bd 1802 	ldrh.w	r1, [sp, #2050]	; 0x802
    d7d2:	4602      	mov	r2, r0
    d7d4:	4608      	mov	r0, r1
    d7d6:	4611      	mov	r1, r2
    d7d8:	f001 fc06 	bl	efe8 <crcu16>
    seedcrc = crc16(results[0].seed3, seedcrc);
    d7dc:	f8bd 1804 	ldrh.w	r1, [sp, #2052]	; 0x804
    d7e0:	4602      	mov	r2, r0
    d7e2:	4608      	mov	r0, r1
    d7e4:	4611      	mov	r1, r2
    d7e6:	f001 fbff 	bl	efe8 <crcu16>
    seedcrc = crc16(results[0].size, seedcrc);
    d7ea:	f8bd 1818 	ldrh.w	r1, [sp, #2072]	; 0x818
    d7ee:	4602      	mov	r2, r0
    d7f0:	4608      	mov	r0, r1
    d7f2:	4611      	mov	r1, r2
    d7f4:	f001 fbf8 	bl	efe8 <crcu16>
    d7f8:	4604      	mov	r4, r0
    d7fa:	f647 3004 	movw	r0, #31492	; 0x7b04

    switch (seedcrc)
    d7fe:	4284      	cmp	r4, r0
    d800:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
    d804:	dd12      	ble.n	d82c <main+0x670>
    d806:	f64e 10f5 	movw	r0, #59893	; 0xe9f5
    d80a:	4284      	cmp	r4, r0
    d80c:	d01d      	beq.n	d84a <main+0x68e>
    d80e:	f648 2002 	movw	r0, #35330	; 0x8a02
    d812:	4284      	cmp	r4, r0
    d814:	d01f      	beq.n	d856 <main+0x69a>
    d816:	f647 3005 	movw	r0, #31493	; 0x7b05
    d81a:	4284      	cmp	r4, r0
    d81c:	f040 80b4 	bne.w	d988 <main+0x7cc>
    d820:	f241 0055 	movw	r0, #4181	; 0x1055
    d824:	2601      	movs	r6, #1
    d826:	f2c0 0001 	movt	r0, #1
    d82a:	e01f      	b.n	d86c <main+0x6b0>
    d82c:	f641 00f2 	movw	r0, #6386	; 0x18f2
    d830:	4284      	cmp	r4, r0
    d832:	d016      	beq.n	d862 <main+0x6a6>
    d834:	f644 60af 	movw	r0, #20143	; 0x4eaf
    d838:	4284      	cmp	r4, r0
    d83a:	f040 80a5 	bne.w	d988 <main+0x7cc>
    d83e:	f640 509c 	movw	r0, #3484	; 0xd9c
    d842:	2602      	movs	r6, #2
    d844:	f2c0 0001 	movt	r0, #1
    d848:	e010      	b.n	d86c <main+0x6b0>
    d84a:	f640 40b6 	movw	r0, #3254	; 0xcb6
    d84e:	2603      	movs	r6, #3
    d850:	f2c0 0001 	movt	r0, #1
    d854:	e00a      	b.n	d86c <main+0x6b0>
    d856:	f640 708f 	movw	r0, #3983	; 0xf8f
    d85a:	f2c0 0001 	movt	r0, #1
    d85e:	2600      	movs	r6, #0
    d860:	e004      	b.n	d86c <main+0x6b0>
    d862:	f640 70bc 	movw	r0, #4028	; 0xfbc
    d866:	2604      	movs	r6, #4
    d868:	f2c0 0001 	movt	r0, #1
    d86c:	f001 fc4e 	bl	f10c <printf_>
    d870:	f240 0700 	movw	r7, #0
    d874:	f2c1 0700 	movt	r7, #4096	; 0x1000
            total_errors = -1;
            break;
    }
    if (known_id >= 0)
    {
        for (i = 0; i < default_num_contexts; i++)
    d878:	68b8      	ldr	r0, [r7, #8]
    d87a:	2800      	cmp	r0, #0
    d87c:	f000 8082 	beq.w	d984 <main+0x7c8>
    d880:	f241 1b42 	movw	fp, #4418	; 0x1142
    d884:	f241 1938 	movw	r9, #4408	; 0x1138
    d888:	e9cd 540a 	strd	r5, r4, [sp, #40]	; 0x28
    d88c:	f04f 0800 	mov.w	r8, #0
    d890:	f2c0 0b01 	movt	fp, #1
    d894:	f2c0 0901 	movt	r9, #1
    d898:	2400      	movs	r4, #0
    d89a:	2500      	movs	r5, #0
    d89c:	f04f 0a00 	mov.w	sl, #0
        {
            results[i].err = 0;
            if ((results[i].execs & ID_LIST)
    d8a0:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
            results[i].err = 0;
    d8a4:	f8ad 8840 	strh.w	r8, [sp, #2112]	; 0x840
                && (results[i].crclist != list_known_crc[known_id]))
    d8a8:	07c8      	lsls	r0, r1, #31
    d8aa:	d12b      	bne.n	d904 <main+0x748>
    d8ac:	e00c      	b.n	d8c8 <main+0x70c>
    d8ae:	bf00      	nop
        for (i = 0; i < default_num_contexts; i++)
    d8b0:	3501      	adds	r5, #1
    d8b2:	68b9      	ldr	r1, [r7, #8]
    d8b4:	b2ac      	uxth	r4, r5
    d8b6:	42a1      	cmp	r1, r4
                          i,
                          results[i].crcstate,
                          state_known_crc[known_id]);
                results[i].err++;
            }
            total_errors += results[i].err;
    d8b8:	4482      	add	sl, r0
        for (i = 0; i < default_num_contexts; i++)
    d8ba:	d960      	bls.n	d97e <main+0x7c2>
            if ((results[i].execs & ID_LIST)
    d8bc:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
            results[i].err = 0;
    d8c0:	f8ad 8840 	strh.w	r8, [sp, #2112]	; 0x840
                && (results[i].crclist != list_known_crc[known_id]))
    d8c4:	07c8      	lsls	r0, r1, #31
    d8c6:	d11d      	bne.n	d904 <main+0x748>
    d8c8:	2000      	movs	r0, #0
                && (results[i].crcmatrix != matrix_known_crc[known_id]))
    d8ca:	078a      	lsls	r2, r1, #30
    d8cc:	d524      	bpl.n	d918 <main+0x75c>
    d8ce:	f8bd 283c 	ldrh.w	r2, [sp, #2108]	; 0x83c
    d8d2:	f83b 3016 	ldrh.w	r3, [fp, r6, lsl #1]
            if ((results[i].execs & ID_MATRIX)
    d8d6:	429a      	cmp	r2, r3
    d8d8:	d01e      	beq.n	d918 <main+0x75c>
                ee_printf("[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n",
    d8da:	f640 506b 	movw	r0, #3435	; 0xd6b
    d8de:	f2c0 0001 	movt	r0, #1
    d8e2:	4621      	mov	r1, r4
    d8e4:	f001 fc12 	bl	f10c <printf_>
                results[i].err++;
    d8e8:	f8bd 0840 	ldrh.w	r0, [sp, #2112]	; 0x840
    d8ec:	f240 0700 	movw	r7, #0
            if ((results[i].execs & ID_STATE)
    d8f0:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
    d8f4:	f2c1 0700 	movt	r7, #4096	; 0x1000
                results[i].err++;
    d8f8:	3001      	adds	r0, #1
    d8fa:	f8ad 0840 	strh.w	r0, [sp, #2112]	; 0x840
                && (results[i].crcstate != state_known_crc[known_id]))
    d8fe:	0749      	lsls	r1, r1, #29
    d900:	d5d6      	bpl.n	d8b0 <main+0x6f4>
    d902:	e00b      	b.n	d91c <main+0x760>
                && (results[i].crclist != list_known_crc[known_id]))
    d904:	f8bd 283a 	ldrh.w	r2, [sp, #2106]	; 0x83a
    d908:	f839 3016 	ldrh.w	r3, [r9, r6, lsl #1]
            if ((results[i].execs & ID_LIST)
    d90c:	429a      	cmp	r2, r3
    d90e:	d121      	bne.n	d954 <main+0x798>
    d910:	2000      	movs	r0, #0
                && (results[i].crcmatrix != matrix_known_crc[known_id]))
    d912:	078a      	lsls	r2, r1, #30
    d914:	d4db      	bmi.n	d8ce <main+0x712>
    d916:	bf00      	nop
                && (results[i].crcstate != state_known_crc[known_id]))
    d918:	0749      	lsls	r1, r1, #29
    d91a:	d5c9      	bpl.n	d8b0 <main+0x6f4>
    d91c:	f241 114c 	movw	r1, #4428	; 0x114c
    d920:	f2c0 0101 	movt	r1, #1
    d924:	f8bd 283e 	ldrh.w	r2, [sp, #2110]	; 0x83e
    d928:	f831 3016 	ldrh.w	r3, [r1, r6, lsl #1]
            if ((results[i].execs & ID_STATE)
    d92c:	429a      	cmp	r2, r3
    d92e:	d0bf      	beq.n	d8b0 <main+0x6f4>
                ee_printf("[%u]ERROR! state crc 0x%04x - should be 0x%04x\n",
    d930:	f640 705f 	movw	r0, #3935	; 0xf5f
    d934:	f2c0 0001 	movt	r0, #1
    d938:	4621      	mov	r1, r4
    d93a:	f001 fbe7 	bl	f10c <printf_>
                results[i].err++;
    d93e:	f8bd 0840 	ldrh.w	r0, [sp, #2112]	; 0x840
    d942:	f240 0700 	movw	r7, #0
    d946:	f2c1 0700 	movt	r7, #4096	; 0x1000
    d94a:	3001      	adds	r0, #1
    d94c:	f8ad 0840 	strh.w	r0, [sp, #2112]	; 0x840
    d950:	e7ae      	b.n	d8b0 <main+0x6f4>
    d952:	bf00      	nop
                ee_printf("[%u]ERROR! list crc 0x%04x - should be 0x%04x\n",
    d954:	f241 0093 	movw	r0, #4243	; 0x1093
    d958:	f2c0 0001 	movt	r0, #1
    d95c:	4621      	mov	r1, r4
    d95e:	f001 fbd5 	bl	f10c <printf_>
                results[i].err++;
    d962:	f8bd 0840 	ldrh.w	r0, [sp, #2112]	; 0x840
    d966:	f240 0700 	movw	r7, #0
            if ((results[i].execs & ID_MATRIX)
    d96a:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
    d96e:	f2c1 0700 	movt	r7, #4096	; 0x1000
                results[i].err++;
    d972:	3001      	adds	r0, #1
    d974:	f8ad 0840 	strh.w	r0, [sp, #2112]	; 0x840
                && (results[i].crcmatrix != matrix_known_crc[known_id]))
    d978:	078a      	lsls	r2, r1, #30
    d97a:	d4a8      	bmi.n	d8ce <main+0x712>
    d97c:	e7cc      	b.n	d918 <main+0x75c>
    d97e:	e9dd 540a 	ldrd	r5, r4, [sp, #40]	; 0x28
    d982:	e001      	b.n	d988 <main+0x7cc>
    d984:	f04f 0a00 	mov.w	sl, #0
        }
    }
    total_errors += check_data_types();
    /* and report results */
    ee_printf("CoreMark Size    : %lu\n", (long unsigned)results[0].size);
    d988:	f8dd 1818 	ldr.w	r1, [sp, #2072]	; 0x818
    d98c:	f241 00e6 	movw	r0, #4326	; 0x10e6
    d990:	f2c0 0001 	movt	r0, #1
    d994:	f001 fbba 	bl	f10c <printf_>
    ee_printf("Total ticks      : %lu\n", (long unsigned)total_time);
    d998:	f640 409e 	movw	r0, #3230	; 0xc9e
    d99c:	f2c0 0001 	movt	r0, #1
    d9a0:	4629      	mov	r1, r5
    d9a2:	f001 fbb3 	bl	f10c <printf_>
    secs_ret retval = ((secs_ret)ticks) / (secs_ret)EE_TICKS_PER_SEC;
    d9a6:	4628      	mov	r0, r5
    d9a8:	f7fe fcec 	bl	c384 <__aeabi_ui2d>
    d9ac:	f241 23d0 	movw	r3, #4816	; 0x12d0
    d9b0:	f2c4 1363 	movt	r3, #16739	; 0x4163
    d9b4:	2200      	movs	r2, #0
    d9b6:	f7fe fe89 	bl	c6cc <__aeabi_ddiv>
    d9ba:	4681      	mov	r9, r0
#if HAS_FLOAT
    ee_printf("Total time (secs): %f\n", time_in_secs(total_time));
    d9bc:	f640 7030 	movw	r0, #3888	; 0xf30
    d9c0:	f2c0 0001 	movt	r0, #1
    d9c4:	464a      	mov	r2, r9
    d9c6:	460b      	mov	r3, r1
    d9c8:	460f      	mov	r7, r1
    d9ca:	f001 fb9f 	bl	f10c <printf_>
    if (time_in_secs(total_time) > 0)
    d9ce:	4648      	mov	r0, r9
    d9d0:	4639      	mov	r1, r7
    d9d2:	2200      	movs	r2, #0
    d9d4:	2300      	movs	r3, #0
    d9d6:	f7fe ffa9 	bl	c92c <__gedf2>
    d9da:	2801      	cmp	r0, #1
    d9dc:	db15      	blt.n	da0a <main+0x84e>
        ee_printf("Iterations/Sec   : %f\n",
                  default_num_contexts * results[0].iterations
    d9de:	f240 0000 	movw	r0, #0
    d9e2:	f2c1 0000 	movt	r0, #4096	; 0x1000
    d9e6:	6880      	ldr	r0, [r0, #8]
    d9e8:	f8dd 181c 	ldr.w	r1, [sp, #2076]	; 0x81c
    d9ec:	4348      	muls	r0, r1
    d9ee:	f7fe fcc9 	bl	c384 <__aeabi_ui2d>
                      / time_in_secs(total_time));
    d9f2:	464a      	mov	r2, r9
    d9f4:	463b      	mov	r3, r7
    d9f6:	f7fe fe69 	bl	c6cc <__aeabi_ddiv>
    d9fa:	4602      	mov	r2, r0
        ee_printf("Iterations/Sec   : %f\n",
    d9fc:	f241 00fe 	movw	r0, #4350	; 0x10fe
    da00:	f2c0 0001 	movt	r0, #1
    da04:	460b      	mov	r3, r1
    da06:	f001 fb81 	bl	f10c <printf_>
    da0a:	2300      	movs	r3, #0
    da0c:	f2c4 0324 	movt	r3, #16420	; 0x4024
    if (time_in_secs(total_time) > 0)
        ee_printf("Iterations/Sec   : %d\n",
                  default_num_contexts * results[0].iterations
                      / time_in_secs(total_time));
#endif
    if (time_in_secs(total_time) < 10)
    da10:	4648      	mov	r0, r9
    da12:	4639      	mov	r1, r7
    da14:	2200      	movs	r2, #0
    da16:	f7fe ff8d 	bl	c934 <__ledf2>
    da1a:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
    da1e:	dc07      	bgt.n	da30 <main+0x874>
    {
        ee_printf(
    da20:	f640 6001 	movw	r0, #3585	; 0xe01
    da24:	f2c0 0001 	movt	r0, #1
    da28:	f001 fb70 	bl	f10c <printf_>
            "ERROR! Must execute for at least 10 secs for a valid result!\n");
        total_errors++;
    da2c:	f10a 0a01 	add.w	sl, sl, #1
    da30:	f240 0000 	movw	r0, #0
    da34:	f2c1 0000 	movt	r0, #4096	; 0x1000
    }

    ee_printf("Iterations       : %lu\n",
              (long unsigned)default_num_contexts * results[0].iterations);
    da38:	6880      	ldr	r0, [r0, #8]
    da3a:	f8dd 181c 	ldr.w	r1, [sp, #2076]	; 0x81c
    da3e:	4341      	muls	r1, r0
    ee_printf("Iterations       : %lu\n",
    da40:	f640 603f 	movw	r0, #3647	; 0xe3f
    da44:	f2c0 0001 	movt	r0, #1
    da48:	f001 fb60 	bl	f10c <printf_>
    ee_printf("Compiler version : %s\n", COMPILER_VERSION);
    da4c:	f640 7847 	movw	r8, #3911	; 0xf47
    da50:	f640 6096 	movw	r0, #3734	; 0xe96
    da54:	f2c0 0801 	movt	r8, #1
    da58:	f2c0 0001 	movt	r0, #1
    da5c:	4641      	mov	r1, r8
    da5e:	f001 fb55 	bl	f10c <printf_>
    ee_printf("Compiler flags   : %s\n", COMPILER_FLAGS);
    da62:	f640 7b57 	movw	fp, #3927	; 0xf57
    da66:	f640 60ad 	movw	r0, #3757	; 0xead
    da6a:	f2c0 0b01 	movt	fp, #1
    da6e:	f2c0 0001 	movt	r0, #1
    da72:	4659      	mov	r1, fp
    da74:	f001 fb4a 	bl	f10c <printf_>
#if (MULTITHREAD > 1)
    ee_printf("Parallel %s : %d\n", PARALLEL_METHOD, default_num_contexts);
#endif
    ee_printf("Memory location  : %s\n", MEM_LOCATION);
    da78:	f241 00c2 	movw	r0, #4290	; 0x10c2
    da7c:	f640 51f2 	movw	r1, #3570	; 0xdf2
    da80:	f2c0 0001 	movt	r0, #1
    da84:	f2c0 0101 	movt	r1, #1
    da88:	f001 fb40 	bl	f10c <printf_>
    /* output for verification */
    ee_printf("seedcrc          : 0x%04x\n", seedcrc);
    da8c:	f640 6071 	movw	r0, #3697	; 0xe71
    da90:	f2c0 0001 	movt	r0, #1
    da94:	4621      	mov	r1, r4
    da96:	f001 fb39 	bl	f10c <printf_>
    if (results[0].execs & ID_LIST)
        for (i = 0; i < default_num_contexts; i++)
    da9a:	f240 0000 	movw	r0, #0
    if (results[0].execs & ID_LIST)
    da9e:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
        for (i = 0; i < default_num_contexts; i++)
    daa2:	f2c1 0000 	movt	r0, #4096	; 0x1000
    daa6:	6880      	ldr	r0, [r0, #8]
    if (results[0].execs & ID_LIST)
    daa8:	07ca      	lsls	r2, r1, #31
    daaa:	bf18      	it	ne
    daac:	2800      	cmpne	r0, #0
    daae:	f040 8090 	bne.w	dbd2 <main+0xa16>
            ee_printf("[%d]crclist       : 0x%04x\n", i, results[i].crclist);
    if (results[0].execs & ID_MATRIX)
    dab2:	078a      	lsls	r2, r1, #30
    dab4:	d516      	bpl.n	dae4 <main+0x928>
    dab6:	b1a8      	cbz	r0, dae4 <main+0x928>
    dab8:	f640 544f 	movw	r4, #3407	; 0xd4f
    dabc:	2100      	movs	r1, #0
    dabe:	f2c0 0401 	movt	r4, #1
    dac2:	2500      	movs	r5, #0
        for (i = 0; i < default_num_contexts; i++)
            ee_printf("[%d]crcmatrix     : 0x%04x\n", i, results[i].crcmatrix);
    dac4:	f8bd 283c 	ldrh.w	r2, [sp, #2108]	; 0x83c
    dac8:	4620      	mov	r0, r4
    daca:	f001 fb1f 	bl	f10c <printf_>
        for (i = 0; i < default_num_contexts; i++)
    dace:	f240 0000 	movw	r0, #0
    dad2:	f2c1 0000 	movt	r0, #4096	; 0x1000
    dad6:	3501      	adds	r5, #1
    dad8:	6880      	ldr	r0, [r0, #8]
    dada:	b2a9      	uxth	r1, r5
    dadc:	4288      	cmp	r0, r1
    dade:	d8f1      	bhi.n	dac4 <main+0x908>
    if (results[0].execs & ID_STATE)
    dae0:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
    dae4:	0749      	lsls	r1, r1, #29
    dae6:	d515      	bpl.n	db14 <main+0x958>
    dae8:	b1a0      	cbz	r0, db14 <main+0x958>
    daea:	f640 74ef 	movw	r4, #4079	; 0xfef
    daee:	2100      	movs	r1, #0
    daf0:	f2c0 0401 	movt	r4, #1
    daf4:	2500      	movs	r5, #0
    daf6:	bf00      	nop
        for (i = 0; i < default_num_contexts; i++)
            ee_printf("[%d]crcstate      : 0x%04x\n", i, results[i].crcstate);
    daf8:	f8bd 283e 	ldrh.w	r2, [sp, #2110]	; 0x83e
    dafc:	4620      	mov	r0, r4
    dafe:	f001 fb05 	bl	f10c <printf_>
        for (i = 0; i < default_num_contexts; i++)
    db02:	f240 0000 	movw	r0, #0
    db06:	f2c1 0000 	movt	r0, #4096	; 0x1000
    db0a:	3501      	adds	r5, #1
    db0c:	6880      	ldr	r0, [r0, #8]
    db0e:	b2a9      	uxth	r1, r5
    db10:	4288      	cmp	r0, r1
    db12:	d8f1      	bhi.n	daf8 <main+0x93c>
    for (i = 0; i < default_num_contexts; i++)
    db14:	b1a0      	cbz	r0, db40 <main+0x984>
    db16:	f241 0430 	movw	r4, #4144	; 0x1030
    db1a:	2100      	movs	r1, #0
    db1c:	f2c0 0401 	movt	r4, #1
    db20:	2500      	movs	r5, #0
    db22:	bf00      	nop
        ee_printf("[%d]crcfinal      : 0x%04x\n", i, results[i].crc);
    db24:	f8bd 2838 	ldrh.w	r2, [sp, #2104]	; 0x838
    db28:	4620      	mov	r0, r4
    db2a:	f001 faef 	bl	f10c <printf_>
    for (i = 0; i < default_num_contexts; i++)
    db2e:	f240 0000 	movw	r0, #0
    db32:	f2c1 0000 	movt	r0, #4096	; 0x1000
    db36:	3501      	adds	r5, #1
    db38:	6880      	ldr	r0, [r0, #8]
    db3a:	b2a9      	uxth	r1, r5
    db3c:	4288      	cmp	r0, r1
    db3e:	d8f1      	bhi.n	db24 <main+0x968>
    if (total_errors == 0)
    db40:	ea5f 400a 	movs.w	r0, sl, lsl #16
    db44:	d00d      	beq.n	db62 <main+0x9a6>
    db46:	f640 40e3 	movw	r0, #3299	; 0xce3
#endif
            ee_printf("\n");
        }
#endif
    }
    if (total_errors > 0)
    db4a:	fa0f f18a 	sxth.w	r1, sl
    db4e:	f640 6257 	movw	r2, #3671	; 0xe57
    db52:	f2c0 0001 	movt	r0, #1
    db56:	f2c0 0201 	movt	r2, #1
    db5a:	2900      	cmp	r1, #0
    db5c:	bfc8      	it	gt
    db5e:	4610      	movgt	r0, r2
    db60:	e02f      	b.n	dbc2 <main+0xa06>
        ee_printf(
    db62:	f640 60e7 	movw	r0, #3815	; 0xee7
    db66:	f2c0 0001 	movt	r0, #1
    db6a:	f001 facf 	bl	f10c <printf_>
        if (known_id == 3)
    db6e:	2e03      	cmp	r6, #3
    db70:	d129      	bne.n	dbc6 <main+0xa0a>
                      default_num_contexts * results[0].iterations
    db72:	f240 0000 	movw	r0, #0
    db76:	f2c1 0000 	movt	r0, #4096	; 0x1000
    db7a:	6880      	ldr	r0, [r0, #8]
    db7c:	f8dd 181c 	ldr.w	r1, [sp, #2076]	; 0x81c
    db80:	4348      	muls	r0, r1
    db82:	f7fe fbff 	bl	c384 <__aeabi_ui2d>
                          / time_in_secs(total_time),
    db86:	464a      	mov	r2, r9
    db88:	463b      	mov	r3, r7
    db8a:	f7fe fd9f 	bl	c6cc <__aeabi_ddiv>
    db8e:	4602      	mov	r2, r0
            ee_printf("CoreMark 1.0 : %f / %s %s",
    db90:	f640 60c4 	movw	r0, #3780	; 0xec4
    db94:	f2c0 0001 	movt	r0, #1
    db98:	460b      	mov	r3, r1
    db9a:	f8cd 8000 	str.w	r8, [sp]
    db9e:	f8cd b004 	str.w	fp, [sp, #4]
    dba2:	f001 fab3 	bl	f10c <printf_>
            ee_printf(" / %s", MEM_LOCATION);
    dba6:	f640 7059 	movw	r0, #3929	; 0xf59
    dbaa:	f640 51f2 	movw	r1, #3570	; 0xdf2
    dbae:	f2c0 0001 	movt	r0, #1
    dbb2:	f2c0 0101 	movt	r1, #1
    dbb6:	f001 faa9 	bl	f10c <printf_>
    dbba:	f640 70e8 	movw	r0, #4072	; 0xfe8
    dbbe:	f2c0 0001 	movt	r0, #1
    dbc2:	f001 faa3 	bl	f10c <printf_>
        portable_free(results[i].memblock[0]);
#endif
    /* And last call any target specific code for finalizing */
    portable_fini(&(results[0].port));

    return MAIN_RETURN_VAL;
    dbc6:	2000      	movs	r0, #0
    dbc8:	f50d 6d04 	add.w	sp, sp, #2112	; 0x840
    dbcc:	b001      	add	sp, #4
    dbce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    dbd2:	f241 0414 	movw	r4, #4116	; 0x1014
    dbd6:	2100      	movs	r1, #0
    dbd8:	f2c0 0401 	movt	r4, #1
    dbdc:	2500      	movs	r5, #0
    dbde:	bf00      	nop
            ee_printf("[%d]crclist       : 0x%04x\n", i, results[i].crclist);
    dbe0:	f8bd 283a 	ldrh.w	r2, [sp, #2106]	; 0x83a
    dbe4:	4620      	mov	r0, r4
    dbe6:	f001 fa91 	bl	f10c <printf_>
        for (i = 0; i < default_num_contexts; i++)
    dbea:	f240 0000 	movw	r0, #0
    dbee:	f2c1 0000 	movt	r0, #4096	; 0x1000
    dbf2:	3501      	adds	r5, #1
    dbf4:	6880      	ldr	r0, [r0, #8]
    dbf6:	b2a9      	uxth	r1, r5
    dbf8:	4288      	cmp	r0, r1
    dbfa:	d8f1      	bhi.n	dbe0 <main+0xa24>
    if (results[0].execs & ID_MATRIX)
    dbfc:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
    dc00:	078a      	lsls	r2, r1, #30
    dc02:	f53f af58 	bmi.w	dab6 <main+0x8fa>
    dc06:	e76d      	b.n	dae4 <main+0x928>

0000dc08 <matrix_test>:
{
    dc08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    dc0c:	b097      	sub	sp, #92	; 0x5c
*/
void
matrix_add_const(ee_u32 N, MATDAT *A, MATDAT val)
{
    ee_u32 i, j;
    for (i = 0; i < N; i++)
    dc0e:	2800      	cmp	r0, #0
    dc10:	9110      	str	r1, [sp, #64]	; 0x40
    dc12:	f000 8093 	beq.w	dd3c <matrix_test+0x134>
    dc16:	4604      	mov	r4, r0
    dc18:	9d20      	ldr	r5, [sp, #128]	; 0x80
    dc1a:	3801      	subs	r0, #1
    dc1c:	f004 0101 	and.w	r1, r4, #1
    dc20:	930f      	str	r3, [sp, #60]	; 0x3c
    dc22:	9012      	str	r0, [sp, #72]	; 0x48
    dc24:	4610      	mov	r0, r2
    dc26:	920e      	str	r2, [sp, #56]	; 0x38
    dc28:	9416      	str	r4, [sp, #88]	; 0x58
    dc2a:	9103      	str	r1, [sp, #12]
    dc2c:	f000 809a 	beq.w	dd64 <matrix_test+0x15c>
    dc30:	f004 0e03 	and.w	lr, r4, #3
    dc34:	eb02 0044 	add.w	r0, r2, r4, lsl #1
    dc38:	eba4 0801 	sub.w	r8, r4, r1
    dc3c:	eba4 030e 	sub.w	r3, r4, lr
    dc40:	4611      	mov	r1, r2
    dc42:	f1a2 0902 	sub.w	r9, r2, #2
    dc46:	ea4f 0c84 	mov.w	ip, r4, lsl #2
    dc4a:	f1a0 0a08 	sub.w	sl, r0, #8
    dc4e:	f04f 0b00 	mov.w	fp, #0
    {
        for (j = 0; j < N; j++)
    dc52:	9812      	ldr	r0, [sp, #72]	; 0x48
    dc54:	2400      	movs	r4, #0
    dc56:	2803      	cmp	r0, #3
    dc58:	d320      	bcc.n	dc9c <matrix_test+0x94>
    dc5a:	e00b      	b.n	dc74 <matrix_test+0x6c>
    for (i = 0; i < N; i++)
    dc5c:	f10b 0b02 	add.w	fp, fp, #2
    dc60:	f1b8 0802 	subs.w	r8, r8, #2
    dc64:	44e1      	add	r9, ip
    dc66:	4461      	add	r1, ip
    dc68:	44e2      	add	sl, ip
    dc6a:	d07d      	beq.n	dd68 <matrix_test+0x160>
        for (j = 0; j < N; j++)
    dc6c:	9812      	ldr	r0, [sp, #72]	; 0x48
    dc6e:	2400      	movs	r4, #0
    dc70:	2803      	cmp	r0, #3
    dc72:	d313      	bcc.n	dc9c <matrix_test+0x94>
    dc74:	464e      	mov	r6, r9
    dc76:	bf00      	nop
        {
            A[i * N + j] += val;
    dc78:	8877      	ldrh	r7, [r6, #2]
    dc7a:	442f      	add	r7, r5
    dc7c:	8077      	strh	r7, [r6, #2]
    dc7e:	eb01 0744 	add.w	r7, r1, r4, lsl #1
    dc82:	887a      	ldrh	r2, [r7, #2]
    dc84:	88b8      	ldrh	r0, [r7, #4]
    dc86:	442a      	add	r2, r5
    dc88:	4428      	add	r0, r5
    dc8a:	807a      	strh	r2, [r7, #2]
    dc8c:	80b8      	strh	r0, [r7, #4]
    dc8e:	f836 0f08 	ldrh.w	r0, [r6, #8]!
        for (j = 0; j < N; j++)
    dc92:	3404      	adds	r4, #4
            A[i * N + j] += val;
    dc94:	4428      	add	r0, r5
        for (j = 0; j < N; j++)
    dc96:	42a3      	cmp	r3, r4
            A[i * N + j] += val;
    dc98:	8030      	strh	r0, [r6, #0]
        for (j = 0; j < N; j++)
    dc9a:	d1ed      	bne.n	dc78 <matrix_test+0x70>
    dc9c:	f1be 0f00 	cmp.w	lr, #0
    dca0:	d018      	beq.n	dcd4 <matrix_test+0xcc>
    dca2:	9816      	ldr	r0, [sp, #88]	; 0x58
    dca4:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    dca6:	fb0b f000 	mul.w	r0, fp, r0
            A[i * N + j] += val;
    dcaa:	4404      	add	r4, r0
    dcac:	f832 0014 	ldrh.w	r0, [r2, r4, lsl #1]
        for (j = 0; j < N; j++)
    dcb0:	f1be 0f01 	cmp.w	lr, #1
            A[i * N + j] += val;
    dcb4:	4428      	add	r0, r5
    dcb6:	f822 0014 	strh.w	r0, [r2, r4, lsl #1]
        for (j = 0; j < N; j++)
    dcba:	d00b      	beq.n	dcd4 <matrix_test+0xcc>
            A[i * N + j] += val;
    dcbc:	980e      	ldr	r0, [sp, #56]	; 0x38
        for (j = 0; j < N; j++)
    dcbe:	f1be 0f02 	cmp.w	lr, #2
            A[i * N + j] += val;
    dcc2:	eb00 0444 	add.w	r4, r0, r4, lsl #1
    dcc6:	8860      	ldrh	r0, [r4, #2]
    dcc8:	4428      	add	r0, r5
    dcca:	8060      	strh	r0, [r4, #2]
        for (j = 0; j < N; j++)
    dccc:	d002      	beq.n	dcd4 <matrix_test+0xcc>
            A[i * N + j] += val;
    dcce:	88a0      	ldrh	r0, [r4, #4]
    dcd0:	4428      	add	r0, r5
    dcd2:	80a0      	strh	r0, [r4, #4]
        for (j = 0; j < N; j++)
    dcd4:	9812      	ldr	r0, [sp, #72]	; 0x48
    dcd6:	2400      	movs	r4, #0
    dcd8:	2803      	cmp	r0, #3
    dcda:	d311      	bcc.n	dd00 <matrix_test+0xf8>
    dcdc:	4656      	mov	r6, sl
    dcde:	bf00      	nop
            A[i * N + j] += val;
    dce0:	f836 0f08 	ldrh.w	r0, [r6, #8]!
        for (j = 0; j < N; j++)
    dce4:	3404      	adds	r4, #4
            A[i * N + j] += val;
    dce6:	4428      	add	r0, r5
    dce8:	8872      	ldrh	r2, [r6, #2]
    dcea:	8030      	strh	r0, [r6, #0]
    dcec:	1950      	adds	r0, r2, r5
    dcee:	88b2      	ldrh	r2, [r6, #4]
    dcf0:	8070      	strh	r0, [r6, #2]
    dcf2:	1950      	adds	r0, r2, r5
    dcf4:	88f2      	ldrh	r2, [r6, #6]
    dcf6:	80b0      	strh	r0, [r6, #4]
    dcf8:	1950      	adds	r0, r2, r5
        for (j = 0; j < N; j++)
    dcfa:	42a3      	cmp	r3, r4
            A[i * N + j] += val;
    dcfc:	80f0      	strh	r0, [r6, #6]
    dcfe:	d1ef      	bne.n	dce0 <matrix_test+0xd8>
        for (j = 0; j < N; j++)
    dd00:	f1be 0f00 	cmp.w	lr, #0
    dd04:	d0aa      	beq.n	dc5c <matrix_test+0x54>
    dd06:	9a16      	ldr	r2, [sp, #88]	; 0x58
    dd08:	f04b 0001 	orr.w	r0, fp, #1
    dd0c:	4350      	muls	r0, r2
    dd0e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
            A[i * N + j] += val;
    dd10:	4404      	add	r4, r0
    dd12:	f832 0014 	ldrh.w	r0, [r2, r4, lsl #1]
        for (j = 0; j < N; j++)
    dd16:	f1be 0f01 	cmp.w	lr, #1
            A[i * N + j] += val;
    dd1a:	4428      	add	r0, r5
    dd1c:	f822 0014 	strh.w	r0, [r2, r4, lsl #1]
    dd20:	d09c      	beq.n	dc5c <matrix_test+0x54>
    dd22:	980e      	ldr	r0, [sp, #56]	; 0x38
        for (j = 0; j < N; j++)
    dd24:	f1be 0f02 	cmp.w	lr, #2
            A[i * N + j] += val;
    dd28:	eb00 0444 	add.w	r4, r0, r4, lsl #1
    dd2c:	8860      	ldrh	r0, [r4, #2]
    dd2e:	4428      	add	r0, r5
    dd30:	8060      	strh	r0, [r4, #2]
    dd32:	d093      	beq.n	dc5c <matrix_test+0x54>
    dd34:	88a0      	ldrh	r0, [r4, #4]
    dd36:	4428      	add	r0, r5
    dd38:	80a0      	strh	r0, [r4, #4]
    dd3a:	e78f      	b.n	dc5c <matrix_test+0x54>
    dd3c:	2000      	movs	r0, #0
    dd3e:	2100      	movs	r1, #0
    dd40:	f001 f952 	bl	efe8 <crcu16>
    dd44:	4601      	mov	r1, r0
    dd46:	2000      	movs	r0, #0
    dd48:	f001 f94e 	bl	efe8 <crcu16>
    dd4c:	4601      	mov	r1, r0
    dd4e:	2000      	movs	r0, #0
    dd50:	f001 f94a 	bl	efe8 <crcu16>
    dd54:	4601      	mov	r1, r0
    dd56:	2000      	movs	r0, #0
    dd58:	f001 f946 	bl	efe8 <crcu16>
    return crc;
    dd5c:	b200      	sxth	r0, r0
    dd5e:	b017      	add	sp, #92	; 0x5c
    dd60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    dd64:	f04f 0b00 	mov.w	fp, #0
    dd68:	f8dd 800c 	ldr.w	r8, [sp, #12]
    dd6c:	e9dd 9a0e 	ldrd	r9, sl, [sp, #56]	; 0x38
        for (j = 0; j < N; j++)
    dd70:	f1b8 0f00 	cmp.w	r8, #0
    dd74:	d03c      	beq.n	ddf0 <matrix_test+0x1e8>
    dd76:	9816      	ldr	r0, [sp, #88]	; 0x58
    dd78:	9912      	ldr	r1, [sp, #72]	; 0x48
    dd7a:	fb0b fc00 	mul.w	ip, fp, r0
    dd7e:	2903      	cmp	r1, #3
    dd80:	f000 0e03 	and.w	lr, r0, #3
    dd84:	d204      	bcs.n	dd90 <matrix_test+0x188>
    dd86:	2200      	movs	r2, #0
    dd88:	f1be 0f00 	cmp.w	lr, #0
    dd8c:	d11b      	bne.n	ddc6 <matrix_test+0x1be>
    dd8e:	e02f      	b.n	ddf0 <matrix_test+0x1e8>
    dd90:	eb09 074c 	add.w	r7, r9, ip, lsl #1
    dd94:	eba0 030e 	sub.w	r3, r0, lr
    dd98:	1ebe      	subs	r6, r7, #2
    dd9a:	2200      	movs	r2, #0
            A[i * N + j] += val;
    dd9c:	8874      	ldrh	r4, [r6, #2]
    dd9e:	442c      	add	r4, r5
    dda0:	8074      	strh	r4, [r6, #2]
    dda2:	eb07 0442 	add.w	r4, r7, r2, lsl #1
    dda6:	8861      	ldrh	r1, [r4, #2]
    dda8:	88a0      	ldrh	r0, [r4, #4]
    ddaa:	4429      	add	r1, r5
    ddac:	4428      	add	r0, r5
    ddae:	8061      	strh	r1, [r4, #2]
    ddb0:	80a0      	strh	r0, [r4, #4]
    ddb2:	f836 0f08 	ldrh.w	r0, [r6, #8]!
        for (j = 0; j < N; j++)
    ddb6:	3204      	adds	r2, #4
            A[i * N + j] += val;
    ddb8:	4428      	add	r0, r5
        for (j = 0; j < N; j++)
    ddba:	4293      	cmp	r3, r2
            A[i * N + j] += val;
    ddbc:	8030      	strh	r0, [r6, #0]
        for (j = 0; j < N; j++)
    ddbe:	d1ed      	bne.n	dd9c <matrix_test+0x194>
    ddc0:	f1be 0f00 	cmp.w	lr, #0
    ddc4:	d014      	beq.n	ddf0 <matrix_test+0x1e8>
            A[i * N + j] += val;
    ddc6:	eb02 010c 	add.w	r1, r2, ip
    ddca:	f839 0011 	ldrh.w	r0, [r9, r1, lsl #1]
        for (j = 0; j < N; j++)
    ddce:	f1be 0f01 	cmp.w	lr, #1
            A[i * N + j] += val;
    ddd2:	4428      	add	r0, r5
    ddd4:	f829 0011 	strh.w	r0, [r9, r1, lsl #1]
        for (j = 0; j < N; j++)
    ddd8:	d00a      	beq.n	ddf0 <matrix_test+0x1e8>
            A[i * N + j] += val;
    ddda:	eb09 0141 	add.w	r1, r9, r1, lsl #1
    ddde:	8848      	ldrh	r0, [r1, #2]
        for (j = 0; j < N; j++)
    dde0:	f1be 0f02 	cmp.w	lr, #2
            A[i * N + j] += val;
    dde4:	4428      	add	r0, r5
    dde6:	8048      	strh	r0, [r1, #2]
        for (j = 0; j < N; j++)
    dde8:	d002      	beq.n	ddf0 <matrix_test+0x1e8>
            A[i * N + j] += val;
    ddea:	8888      	ldrh	r0, [r1, #4]
    ddec:	4428      	add	r0, r5
    ddee:	8088      	strh	r0, [r1, #4]
    for (i = 0; i < N; i++)
    ddf0:	9812      	ldr	r0, [sp, #72]	; 0x48
    ddf2:	2800      	cmp	r0, #0
    ddf4:	f000 80bf 	beq.w	df76 <_store_byte+0xc9>
    ddf8:	9916      	ldr	r1, [sp, #88]	; 0x58
    ddfa:	9a10      	ldr	r2, [sp, #64]	; 0x40
    ddfc:	f001 0003 	and.w	r0, r1, #3
    de00:	eba1 0308 	sub.w	r3, r1, r8
    de04:	900d      	str	r0, [sp, #52]	; 0x34
    de06:	eba1 0800 	sub.w	r8, r1, r0
    de0a:	00c8      	lsls	r0, r1, #3
    de0c:	900c      	str	r0, [sp, #48]	; 0x30
    de0e:	0088      	lsls	r0, r1, #2
    de10:	900b      	str	r0, [sp, #44]	; 0x2c
    de12:	eb02 0081 	add.w	r0, r2, r1, lsl #2
    de16:	3808      	subs	r0, #8
    de18:	9015      	str	r0, [sp, #84]	; 0x54
    de1a:	eb09 0041 	add.w	r0, r9, r1, lsl #1
    de1e:	f1a2 0710 	sub.w	r7, r2, #16
    de22:	f1a9 0602 	sub.w	r6, r9, #2
    de26:	46cb      	mov	fp, r9
    de28:	f1a0 0908 	sub.w	r9, r0, #8
    de2c:	f04f 0c00 	mov.w	ip, #0
    de30:	e011      	b.n	de56 <matrix_test+0x24e>
    de32:	bf00      	nop
    de34:	9b14      	ldr	r3, [sp, #80]	; 0x50
    de36:	9f13      	ldr	r7, [sp, #76]	; 0x4c
    de38:	980c      	ldr	r0, [sp, #48]	; 0x30
    de3a:	9e11      	ldr	r6, [sp, #68]	; 0x44
    de3c:	990b      	ldr	r1, [sp, #44]	; 0x2c
    de3e:	9c15      	ldr	r4, [sp, #84]	; 0x54
    de40:	f10c 0c02 	add.w	ip, ip, #2
    de44:	3b02      	subs	r3, #2
    de46:	4407      	add	r7, r0
    de48:	440e      	add	r6, r1
    de4a:	448b      	add	fp, r1
    de4c:	4404      	add	r4, r0
    de4e:	4489      	add	r9, r1
    de50:	9415      	str	r4, [sp, #84]	; 0x54
    de52:	f000 8093 	beq.w	df7c <_store_byte+0xcf>
        for (j = 0; j < N; j++)
    de56:	9812      	ldr	r0, [sp, #72]	; 0x48
    de58:	2400      	movs	r4, #0
    de5a:	2803      	cmp	r0, #3
    de5c:	e9cd 7313 	strd	r7, r3, [sp, #76]	; 0x4c
    de60:	9611      	str	r6, [sp, #68]	; 0x44
    de62:	d319      	bcc.n	de98 <matrix_test+0x290>
    de64:	46ba      	mov	sl, r7
    de66:	bf00      	nop
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    de68:	f936 0f08 	ldrsh.w	r0, [r6, #8]!
    de6c:	f936 ec06 	ldrsh.w	lr, [r6, #-6]
    de70:	4368      	muls	r0, r5
    de72:	fb0e f305 	mul.w	r3, lr, r5
    de76:	f84a 3f10 	str.w	r3, [sl, #16]!
    de7a:	eb0b 0344 	add.w	r3, fp, r4, lsl #1
    de7e:	f9b3 7002 	ldrsh.w	r7, [r3, #2]
    de82:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
        for (j = 0; j < N; j++)
    de86:	3404      	adds	r4, #4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    de88:	436f      	muls	r7, r5
    de8a:	436b      	muls	r3, r5
        for (j = 0; j < N; j++)
    de8c:	45a0      	cmp	r8, r4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    de8e:	e9ca 7301 	strd	r7, r3, [sl, #4]
    de92:	f8ca 000c 	str.w	r0, [sl, #12]
        for (j = 0; j < N; j++)
    de96:	d1e7      	bne.n	de68 <matrix_test+0x260>
    de98:	f8dd e034 	ldr.w	lr, [sp, #52]	; 0x34
    de9c:	f1be 0f00 	cmp.w	lr, #0
    dea0:	d020      	beq.n	dee4 <_store_byte+0x37>
    dea2:	9816      	ldr	r0, [sp, #88]	; 0x58
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    dea4:	990e      	ldr	r1, [sp, #56]	; 0x38
    dea6:	fb0c f000 	mul.w	r0, ip, r0
    deaa:	4420      	add	r0, r4
    deac:	f931 3010 	ldrsh.w	r3, [r1, r0, lsl #1]
        for (j = 0; j < N; j++)
    deb0:	f1be 0f01 	cmp.w	lr, #1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    deb4:	fb05 f303 	mul.w	r3, r5, r3
    deb8:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
        for (j = 0; j < N; j++)
    debc:	d012      	beq.n	dee4 <_store_byte+0x37>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    debe:	990e      	ldr	r1, [sp, #56]	; 0x38
    dec0:	1c43      	adds	r3, r0, #1
    dec2:	f931 7013 	ldrsh.w	r7, [r1, r3, lsl #1]
        for (j = 0; j < N; j++)
    dec6:	f1be 0f02 	cmp.w	lr, #2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    deca:	fb05 f707 	mul.w	r7, r5, r7
    dece:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
        for (j = 0; j < N; j++)
    ded2:	d007      	beq.n	dee4 <_store_byte+0x37>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    ded4:	990e      	ldr	r1, [sp, #56]	; 0x38
    ded6:	3002      	adds	r0, #2
    ded8:	f931 3010 	ldrsh.w	r3, [r1, r0, lsl #1]
    dedc:	436b      	muls	r3, r5
    dede:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
    dee2:	bf00      	nop
        for (j = 0; j < N; j++)
    dee4:	9812      	ldr	r0, [sp, #72]	; 0x48
    dee6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
    deea:	2803      	cmp	r0, #3
    deec:	f04f 0400 	mov.w	r4, #0
    def0:	d318      	bcc.n	df24 <_store_byte+0x77>
    def2:	9815      	ldr	r0, [sp, #84]	; 0x54
    def4:	464e      	mov	r6, r9
    def6:	bf00      	nop
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    def8:	f936 3f08 	ldrsh.w	r3, [r6, #8]!
    defc:	9a20      	ldr	r2, [sp, #128]	; 0x80
    defe:	436b      	muls	r3, r5
    df00:	f9b6 5004 	ldrsh.w	r5, [r6, #4]
    df04:	f9b6 7002 	ldrsh.w	r7, [r6, #2]
    df08:	4355      	muls	r5, r2
    df0a:	f9b6 1006 	ldrsh.w	r1, [r6, #6]
    df0e:	f840 5f10 	str.w	r5, [r0, #16]!
    df12:	9d20      	ldr	r5, [sp, #128]	; 0x80
        for (j = 0; j < N; j++)
    df14:	3404      	adds	r4, #4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    df16:	436f      	muls	r7, r5
    df18:	4369      	muls	r1, r5
        for (j = 0; j < N; j++)
    df1a:	45a0      	cmp	r8, r4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    df1c:	e940 3702 	strd	r3, r7, [r0, #-8]
    df20:	6041      	str	r1, [r0, #4]
    df22:	d1e9      	bne.n	def8 <_store_byte+0x4b>
    df24:	9a10      	ldr	r2, [sp, #64]	; 0x40
        for (j = 0; j < N; j++)
    df26:	f1be 0f00 	cmp.w	lr, #0
    df2a:	f43f af83 	beq.w	de34 <matrix_test+0x22c>
    df2e:	9916      	ldr	r1, [sp, #88]	; 0x58
    df30:	f04c 0001 	orr.w	r0, ip, #1
    df34:	4348      	muls	r0, r1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    df36:	990e      	ldr	r1, [sp, #56]	; 0x38
    df38:	4420      	add	r0, r4
    df3a:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
        for (j = 0; j < N; j++)
    df3e:	f1be 0f01 	cmp.w	lr, #1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    df42:	fb05 f101 	mul.w	r1, r5, r1
    df46:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
    df4a:	f43f af73 	beq.w	de34 <matrix_test+0x22c>
    df4e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    df50:	1c41      	adds	r1, r0, #1
    df52:	f932 3011 	ldrsh.w	r3, [r2, r1, lsl #1]
    df56:	9a10      	ldr	r2, [sp, #64]	; 0x40
    df58:	436b      	muls	r3, r5
        for (j = 0; j < N; j++)
    df5a:	f1be 0f02 	cmp.w	lr, #2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    df5e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
    df62:	f43f af67 	beq.w	de34 <matrix_test+0x22c>
    df66:	990e      	ldr	r1, [sp, #56]	; 0x38
    df68:	3002      	adds	r0, #2
    df6a:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
    df6e:	4369      	muls	r1, r5
    df70:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
    df74:	e75e      	b.n	de34 <matrix_test+0x22c>
    df76:	9a10      	ldr	r2, [sp, #64]	; 0x40
    df78:	f04f 0c00 	mov.w	ip, #0
        for (j = 0; j < N; j++)
    df7c:	9803      	ldr	r0, [sp, #12]
    df7e:	f24f 0e00 	movw	lr, #61440	; 0xf000
    df82:	2800      	cmp	r0, #0
    df84:	f6cf 7eff 	movt	lr, #65535	; 0xffff
    df88:	d051      	beq.n	e02e <_store_byte+0x181>
    df8a:	9816      	ldr	r0, [sp, #88]	; 0x58
    df8c:	9912      	ldr	r1, [sp, #72]	; 0x48
    df8e:	fb0c fc00 	mul.w	ip, ip, r0
    df92:	2903      	cmp	r1, #3
    df94:	f000 0803 	and.w	r8, r0, #3
    df98:	d205      	bcs.n	dfa6 <_store_byte+0xf9>
    df9a:	2300      	movs	r3, #0
    df9c:	9a10      	ldr	r2, [sp, #64]	; 0x40
    df9e:	f1b8 0f00 	cmp.w	r8, #0
    dfa2:	d125      	bne.n	dff0 <_store_byte+0x143>
    dfa4:	e043      	b.n	e02e <_store_byte+0x181>
    dfa6:	eba0 0908 	sub.w	r9, r0, r8
    dfaa:	eb02 008c 	add.w	r0, r2, ip, lsl #2
    dfae:	f1a0 0610 	sub.w	r6, r0, #16
    dfb2:	980e      	ldr	r0, [sp, #56]	; 0x38
    dfb4:	2300      	movs	r3, #0
    dfb6:	eb00 044c 	add.w	r4, r0, ip, lsl #1
    dfba:	1ea0      	subs	r0, r4, #2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    dfbc:	f930 2f08 	ldrsh.w	r2, [r0, #8]!
    dfc0:	f930 1c06 	ldrsh.w	r1, [r0, #-6]
    dfc4:	436a      	muls	r2, r5
    dfc6:	4369      	muls	r1, r5
    dfc8:	f846 1f10 	str.w	r1, [r6, #16]!
    dfcc:	eb04 0143 	add.w	r1, r4, r3, lsl #1
    dfd0:	f9b1 7002 	ldrsh.w	r7, [r1, #2]
    dfd4:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
        for (j = 0; j < N; j++)
    dfd8:	3304      	adds	r3, #4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    dfda:	436f      	muls	r7, r5
    dfdc:	4369      	muls	r1, r5
        for (j = 0; j < N; j++)
    dfde:	4599      	cmp	r9, r3
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    dfe0:	e9c6 7101 	strd	r7, r1, [r6, #4]
    dfe4:	60f2      	str	r2, [r6, #12]
        for (j = 0; j < N; j++)
    dfe6:	d1e9      	bne.n	dfbc <_store_byte+0x10f>
    dfe8:	9a10      	ldr	r2, [sp, #64]	; 0x40
    dfea:	f1b8 0f00 	cmp.w	r8, #0
    dfee:	d01e      	beq.n	e02e <_store_byte+0x181>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    dff0:	990e      	ldr	r1, [sp, #56]	; 0x38
    dff2:	eb03 000c 	add.w	r0, r3, ip
    dff6:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
        for (j = 0; j < N; j++)
    dffa:	f1b8 0f01 	cmp.w	r8, #1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    dffe:	fb05 f101 	mul.w	r1, r5, r1
    e002:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
        for (j = 0; j < N; j++)
    e006:	d012      	beq.n	e02e <_store_byte+0x181>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e008:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    e00a:	1c41      	adds	r1, r0, #1
    e00c:	f932 2011 	ldrsh.w	r2, [r2, r1, lsl #1]
    e010:	9b10      	ldr	r3, [sp, #64]	; 0x40
    e012:	436a      	muls	r2, r5
    e014:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
    e018:	9a10      	ldr	r2, [sp, #64]	; 0x40
        for (j = 0; j < N; j++)
    e01a:	f1b8 0f02 	cmp.w	r8, #2
    e01e:	d006      	beq.n	e02e <_store_byte+0x181>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e020:	990e      	ldr	r1, [sp, #56]	; 0x38
    e022:	3002      	adds	r0, #2
    e024:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
    e028:	4369      	muls	r1, r5
    e02a:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
    e02e:	ea45 0b0e 	orr.w	fp, r5, lr
    e032:	9d16      	ldr	r5, [sp, #88]	; 0x58
    for (i = 0; i < N; i++)
    e034:	f1a2 0c10 	sub.w	ip, r2, #16
    e038:	f005 0403 	and.w	r4, r5, #3
    e03c:	1b28      	subs	r0, r5, r4
    e03e:	900d      	str	r0, [sp, #52]	; 0x34
    e040:	f8dd 9034 	ldr.w	r9, [sp, #52]	; 0x34
    e044:	00a8      	lsls	r0, r5, #2
    e046:	f04f 0e00 	mov.w	lr, #0
    e04a:	2300      	movs	r3, #0
    e04c:	f04f 0800 	mov.w	r8, #0
    e050:	2200      	movs	r2, #0
    e052:	9006      	str	r0, [sp, #24]
    e054:	f8cd c008 	str.w	ip, [sp, #8]
    e058:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
    e05c:	9411      	str	r4, [sp, #68]	; 0x44
        for (j = 0; j < N; j++)
    e05e:	9812      	ldr	r0, [sp, #72]	; 0x48
    e060:	2100      	movs	r1, #0
    e062:	2803      	cmp	r0, #3
    e064:	d353      	bcc.n	e10e <_store_byte+0x261>
    e066:	e016      	b.n	e096 <_store_byte+0x1e9>
            cur = C[i * N + j];
    e068:	f8d8 7008 	ldr.w	r7, [r8, #8]
            if (tmp > clipval)
    e06c:	2000      	movs	r0, #0
            tmp += cur;
    e06e:	443a      	add	r2, r7
            if (tmp > clipval)
    e070:	428f      	cmp	r7, r1
    e072:	bfc8      	it	gt
    e074:	2001      	movgt	r0, #1
    e076:	455a      	cmp	r2, fp
    e078:	bfc4      	itt	gt
    e07a:	200a      	movgt	r0, #10
    e07c:	2200      	movgt	r2, #0
    e07e:	4403      	add	r3, r0
    for (i = 0; i < N; i++)
    e080:	9806      	ldr	r0, [sp, #24]
    e082:	f10e 0e01 	add.w	lr, lr, #1
    e086:	4484      	add	ip, r0
    e088:	45ae      	cmp	lr, r5
    e08a:	46b8      	mov	r8, r7
    e08c:	d069      	beq.n	e162 <_store_byte+0x2b5>
        for (j = 0; j < N; j++)
    e08e:	9812      	ldr	r0, [sp, #72]	; 0x48
    e090:	2100      	movs	r1, #0
    e092:	2803      	cmp	r0, #3
    e094:	d33b      	bcc.n	e10e <_store_byte+0x261>
    e096:	4667      	mov	r7, ip
            cur = C[i * N + j];
    e098:	f857 6f10 	ldr.w	r6, [r7, #16]!
            if (tmp > clipval)
    e09c:	2400      	movs	r4, #0
            tmp += cur;
    e09e:	4432      	add	r2, r6
            if (tmp > clipval)
    e0a0:	4546      	cmp	r6, r8
    e0a2:	bfc8      	it	gt
    e0a4:	2401      	movgt	r4, #1
    e0a6:	455a      	cmp	r2, fp
    e0a8:	bfc8      	it	gt
    e0aa:	240a      	movgt	r4, #10
            cur = C[i * N + j];
    e0ac:	f107 0804 	add.w	r8, r7, #4
    e0b0:	eb03 0b04 	add.w	fp, r3, r4
    e0b4:	e898 0118 	ldmia.w	r8, {r3, r4, r8}
            tmp += cur;
    e0b8:	9814      	ldr	r0, [sp, #80]	; 0x50
        for (j = 0; j < N; j++)
    e0ba:	3104      	adds	r1, #4
            tmp += cur;
    e0bc:	4282      	cmp	r2, r0
    e0be:	4618      	mov	r0, r3
    e0c0:	bfd8      	it	le
    e0c2:	4410      	addle	r0, r2
            if (tmp > clipval)
    e0c4:	2200      	movs	r2, #0
    e0c6:	42b3      	cmp	r3, r6
    e0c8:	bfc8      	it	gt
    e0ca:	2201      	movgt	r2, #1
    e0cc:	9e14      	ldr	r6, [sp, #80]	; 0x50
    e0ce:	42b0      	cmp	r0, r6
    e0d0:	bfc8      	it	gt
    e0d2:	220a      	movgt	r2, #10
            tmp += cur;
    e0d4:	4626      	mov	r6, r4
    e0d6:	445a      	add	r2, fp
    e0d8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
    e0dc:	bfd8      	it	le
    e0de:	4406      	addle	r6, r0
            if (tmp > clipval)
    e0e0:	2000      	movs	r0, #0
    e0e2:	429c      	cmp	r4, r3
    e0e4:	bfc8      	it	gt
    e0e6:	2001      	movgt	r0, #1
    e0e8:	455e      	cmp	r6, fp
    e0ea:	bfc8      	it	gt
    e0ec:	200a      	movgt	r0, #10
    e0ee:	4410      	add	r0, r2
            tmp += cur;
    e0f0:	4642      	mov	r2, r8
            if (tmp > clipval)
    e0f2:	f04f 0300 	mov.w	r3, #0
            tmp += cur;
    e0f6:	bfd8      	it	le
    e0f8:	4432      	addle	r2, r6
            if (tmp > clipval)
    e0fa:	45a0      	cmp	r8, r4
    e0fc:	bfc8      	it	gt
    e0fe:	2301      	movgt	r3, #1
    e100:	455a      	cmp	r2, fp
    e102:	bfc4      	itt	gt
    e104:	230a      	movgt	r3, #10
    e106:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e108:	4589      	cmp	r9, r1
    e10a:	4403      	add	r3, r0
    e10c:	d1c4      	bne.n	e098 <_store_byte+0x1eb>
    e10e:	9c11      	ldr	r4, [sp, #68]	; 0x44
            cur = C[i * N + j];
    e110:	4647      	mov	r7, r8
        for (j = 0; j < N; j++)
    e112:	2c00      	cmp	r4, #0
    e114:	d0b4      	beq.n	e080 <_store_byte+0x1d3>
    e116:	fb0e f005 	mul.w	r0, lr, r5
    e11a:	4626      	mov	r6, r4
    e11c:	9c10      	ldr	r4, [sp, #64]	; 0x40
            cur = C[i * N + j];
    e11e:	4401      	add	r1, r0
    e120:	f854 7021 	ldr.w	r7, [r4, r1, lsl #2]
            if (tmp > clipval)
    e124:	2000      	movs	r0, #0
            tmp += cur;
    e126:	443a      	add	r2, r7
            if (tmp > clipval)
    e128:	4547      	cmp	r7, r8
    e12a:	bfc8      	it	gt
    e12c:	2001      	movgt	r0, #1
    e12e:	455a      	cmp	r2, fp
    e130:	bfc4      	itt	gt
    e132:	200a      	movgt	r0, #10
    e134:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e136:	2e01      	cmp	r6, #1
    e138:	4403      	add	r3, r0
    e13a:	d0a1      	beq.n	e080 <_store_byte+0x1d3>
            cur = C[i * N + j];
    e13c:	eb04 0881 	add.w	r8, r4, r1, lsl #2
    e140:	f8d8 1004 	ldr.w	r1, [r8, #4]
            if (tmp > clipval)
    e144:	2000      	movs	r0, #0
            tmp += cur;
    e146:	440a      	add	r2, r1
            if (tmp > clipval)
    e148:	42b9      	cmp	r1, r7
    e14a:	bfc8      	it	gt
    e14c:	2001      	movgt	r0, #1
    e14e:	455a      	cmp	r2, fp
    e150:	bfc4      	itt	gt
    e152:	200a      	movgt	r0, #10
    e154:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e156:	2e02      	cmp	r6, #2
    e158:	4403      	add	r3, r0
    e15a:	f47f af85 	bne.w	e068 <_store_byte+0x1bb>
            cur = C[i * N + j];
    e15e:	460f      	mov	r7, r1
    e160:	e78e      	b.n	e080 <_store_byte+0x1d3>
    e162:	b298      	uxth	r0, r3
    e164:	2100      	movs	r1, #0
    e166:	f04f 0800 	mov.w	r8, #0
    e16a:	f000 ff3d 	bl	efe8 <crcu16>
*/
void
matrix_mul_vect(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j;
    for (i = 0; i < N; i++)
    e16e:	9912      	ldr	r1, [sp, #72]	; 0x48
    e170:	900b      	str	r0, [sp, #44]	; 0x2c
    e172:	2900      	cmp	r1, #0
    e174:	f000 80cf 	beq.w	e316 <_store_byte+0x469>
    e178:	9803      	ldr	r0, [sp, #12]
    e17a:	f8dd e038 	ldr.w	lr, [sp, #56]	; 0x38
    e17e:	1a2a      	subs	r2, r5, r0
    e180:	f1aa 0008 	sub.w	r0, sl, #8
    e184:	eb0e 0145 	add.w	r1, lr, r5, lsl #1
    e188:	900c      	str	r0, [sp, #48]	; 0x30
    e18a:	f1a1 0008 	sub.w	r0, r1, #8
    e18e:	9910      	ldr	r1, [sp, #64]	; 0x40
    e190:	f04f 0800 	mov.w	r8, #0
    e194:	9015      	str	r0, [sp, #84]	; 0x54
    e196:	e00d      	b.n	e1b4 <_store_byte+0x307>
    e198:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    e19a:	9806      	ldr	r0, [sp, #24]
    e19c:	9b15      	ldr	r3, [sp, #84]	; 0x54
    e19e:	9910      	ldr	r1, [sp, #64]	; 0x40
    e1a0:	f108 0802 	add.w	r8, r8, #2
    e1a4:	3a02      	subs	r2, #2
    e1a6:	4486      	add	lr, r0
    e1a8:	4403      	add	r3, r0
    {
        C[i] = 0;
        for (j = 0; j < N; j++)
        {
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e1aa:	f841 602c 	str.w	r6, [r1, ip, lsl #2]
    for (i = 0; i < N; i++)
    e1ae:	9315      	str	r3, [sp, #84]	; 0x54
    e1b0:	f000 80b2 	beq.w	e318 <_store_byte+0x46b>
        C[i] = 0;
    e1b4:	2000      	movs	r0, #0
    e1b6:	f841 0028 	str.w	r0, [r1, r8, lsl #2]
        for (j = 0; j < N; j++)
    e1ba:	9812      	ldr	r0, [sp, #72]	; 0x48
    e1bc:	f8dd 9034 	ldr.w	r9, [sp, #52]	; 0x34
    e1c0:	2803      	cmp	r0, #3
    e1c2:	f04f 0400 	mov.w	r4, #0
    e1c6:	f04f 0600 	mov.w	r6, #0
    e1ca:	9213      	str	r2, [sp, #76]	; 0x4c
    e1cc:	d329      	bcc.n	e222 <_store_byte+0x375>
    e1ce:	2400      	movs	r4, #0
    e1d0:	f06f 0701 	mvn.w	r7, #1
    e1d4:	2600      	movs	r6, #0
    e1d6:	bf00      	nop
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e1d8:	eb0e 0307 	add.w	r3, lr, r7
    e1dc:	eb0a 0007 	add.w	r0, sl, r7
    e1e0:	f9b3 2002 	ldrsh.w	r2, [r3, #2]
    e1e4:	f9b0 1002 	ldrsh.w	r1, [r0, #2]
    e1e8:	f9b3 b008 	ldrsh.w	fp, [r3, #8]
    e1ec:	fb11 4102 	smlabb	r1, r1, r2, r4
    e1f0:	eb0e 0246 	add.w	r2, lr, r6, lsl #1
    e1f4:	eb0a 0446 	add.w	r4, sl, r6, lsl #1
    e1f8:	f9b2 3002 	ldrsh.w	r3, [r2, #2]
    e1fc:	f9b4 c002 	ldrsh.w	ip, [r4, #2]
    e200:	f9b2 2004 	ldrsh.w	r2, [r2, #4]
    e204:	f9b4 4004 	ldrsh.w	r4, [r4, #4]
    e208:	fb1c 1103 	smlabb	r1, ip, r3, r1
    e20c:	f9b0 0008 	ldrsh.w	r0, [r0, #8]
    e210:	fb14 1102 	smlabb	r1, r4, r2, r1
        for (j = 0; j < N; j++)
    e214:	3604      	adds	r6, #4
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e216:	fb10 140b 	smlabb	r4, r0, fp, r1
        for (j = 0; j < N; j++)
    e21a:	45b1      	cmp	r9, r6
    e21c:	f107 0708 	add.w	r7, r7, #8
    e220:	d1da      	bne.n	e1d8 <_store_byte+0x32b>
    e222:	9a11      	ldr	r2, [sp, #68]	; 0x44
    e224:	b302      	cbz	r2, e268 <_store_byte+0x3bb>
    e226:	fb08 f305 	mul.w	r3, r8, r5
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e22a:	990e      	ldr	r1, [sp, #56]	; 0x38
    e22c:	18f0      	adds	r0, r6, r3
    e22e:	f931 0010 	ldrsh.w	r0, [r1, r0, lsl #1]
    e232:	f93a 1016 	ldrsh.w	r1, [sl, r6, lsl #1]
        for (j = 0; j < N; j++)
    e236:	2a01      	cmp	r2, #1
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e238:	fb11 4400 	smlabb	r4, r1, r0, r4
        for (j = 0; j < N; j++)
    e23c:	d014      	beq.n	e268 <_store_byte+0x3bb>
    e23e:	1c70      	adds	r0, r6, #1
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e240:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    e242:	18c1      	adds	r1, r0, r3
    e244:	f937 1011 	ldrsh.w	r1, [r7, r1, lsl #1]
    e248:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
        for (j = 0; j < N; j++)
    e24c:	2a02      	cmp	r2, #2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e24e:	fb10 4401 	smlabb	r4, r0, r1, r4
        for (j = 0; j < N; j++)
    e252:	d009      	beq.n	e268 <_store_byte+0x3bb>
    e254:	1cb0      	adds	r0, r6, #2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e256:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    e258:	18c1      	adds	r1, r0, r3
    e25a:	f932 1011 	ldrsh.w	r1, [r2, r1, lsl #1]
    e25e:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
    e262:	fb10 4401 	smlabb	r4, r0, r1, r4
    e266:	bf00      	nop
    e268:	9810      	ldr	r0, [sp, #64]	; 0x40
    for (i = 0; i < N; i++)
    e26a:	f048 0c01 	orr.w	ip, r8, #1
    e26e:	2600      	movs	r6, #0
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e270:	f840 4028 	str.w	r4, [r0, r8, lsl #2]
        C[i] = 0;
    e274:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
        for (j = 0; j < N; j++)
    e278:	9812      	ldr	r0, [sp, #72]	; 0x48
    e27a:	f8dd 9034 	ldr.w	r9, [sp, #52]	; 0x34
    e27e:	2803      	cmp	r0, #3
    e280:	f04f 0700 	mov.w	r7, #0
    e284:	d31f      	bcc.n	e2c6 <_store_byte+0x419>
    e286:	9b15      	ldr	r3, [sp, #84]	; 0x54
    e288:	f8dd b030 	ldr.w	fp, [sp, #48]	; 0x30
    e28c:	2600      	movs	r6, #0
    e28e:	2700      	movs	r7, #0
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e290:	f933 0f08 	ldrsh.w	r0, [r3, #8]!
    e294:	f93b 1f08 	ldrsh.w	r1, [fp, #8]!
    e298:	f9b3 2004 	ldrsh.w	r2, [r3, #4]
    e29c:	fb11 6000 	smlabb	r0, r1, r0, r6
    e2a0:	f9b3 1002 	ldrsh.w	r1, [r3, #2]
    e2a4:	f9bb 5002 	ldrsh.w	r5, [fp, #2]
    e2a8:	f9bb 4004 	ldrsh.w	r4, [fp, #4]
    e2ac:	fb15 0001 	smlabb	r0, r5, r1, r0
    e2b0:	f9b3 6006 	ldrsh.w	r6, [r3, #6]
    e2b4:	f9bb 1006 	ldrsh.w	r1, [fp, #6]
    e2b8:	fb14 0002 	smlabb	r0, r4, r2, r0
        for (j = 0; j < N; j++)
    e2bc:	3704      	adds	r7, #4
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e2be:	fb11 0606 	smlabb	r6, r1, r6, r0
        for (j = 0; j < N; j++)
    e2c2:	45b9      	cmp	r9, r7
    e2c4:	d1e4      	bne.n	e290 <_store_byte+0x3e3>
    e2c6:	9a11      	ldr	r2, [sp, #68]	; 0x44
    e2c8:	9d16      	ldr	r5, [sp, #88]	; 0x58
    e2ca:	2a00      	cmp	r2, #0
    e2cc:	f43f af64 	beq.w	e198 <_store_byte+0x2eb>
    e2d0:	fb0c f305 	mul.w	r3, ip, r5
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e2d4:	990e      	ldr	r1, [sp, #56]	; 0x38
    e2d6:	18f8      	adds	r0, r7, r3
    e2d8:	f931 0010 	ldrsh.w	r0, [r1, r0, lsl #1]
    e2dc:	f93a 1017 	ldrsh.w	r1, [sl, r7, lsl #1]
        for (j = 0; j < N; j++)
    e2e0:	2a01      	cmp	r2, #1
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e2e2:	fb11 6600 	smlabb	r6, r1, r0, r6
    e2e6:	f43f af57 	beq.w	e198 <_store_byte+0x2eb>
    e2ea:	1c78      	adds	r0, r7, #1
    e2ec:	9c0e      	ldr	r4, [sp, #56]	; 0x38
    e2ee:	18c1      	adds	r1, r0, r3
    e2f0:	f934 1011 	ldrsh.w	r1, [r4, r1, lsl #1]
    e2f4:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
        for (j = 0; j < N; j++)
    e2f8:	2a02      	cmp	r2, #2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e2fa:	fb10 6601 	smlabb	r6, r0, r1, r6
    e2fe:	f43f af4b 	beq.w	e198 <_store_byte+0x2eb>
    e302:	1cb8      	adds	r0, r7, #2
    e304:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    e306:	18c1      	adds	r1, r0, r3
    e308:	f932 1011 	ldrsh.w	r1, [r2, r1, lsl #1]
    e30c:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
    e310:	fb10 6601 	smlabb	r6, r0, r1, r6
    e314:	e740      	b.n	e198 <_store_byte+0x2eb>
    e316:	9910      	ldr	r1, [sp, #64]	; 0x40
        for (j = 0; j < N; j++)
    e318:	9803      	ldr	r0, [sp, #12]
    e31a:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
    e31e:	2800      	cmp	r0, #0
    e320:	d061      	beq.n	e3e6 <_store_byte+0x539>
    e322:	2000      	movs	r0, #0
        C[i] = 0;
    e324:	f841 0028 	str.w	r0, [r1, r8, lsl #2]
        for (j = 0; j < N; j++)
    e328:	9912      	ldr	r1, [sp, #72]	; 0x48
    e32a:	2903      	cmp	r1, #3
    e32c:	fb08 f105 	mul.w	r1, r8, r5
    e330:	9115      	str	r1, [sp, #84]	; 0x54
    e332:	d204      	bcs.n	e33e <_store_byte+0x491>
    e334:	2200      	movs	r2, #0
    e336:	9f11      	ldr	r7, [sp, #68]	; 0x44
    e338:	9c15      	ldr	r4, [sp, #84]	; 0x54
    e33a:	bb8f      	cbnz	r7, e3a0 <_store_byte+0x4f3>
    e33c:	e04e      	b.n	e3dc <_store_byte+0x52f>
    e33e:	980e      	ldr	r0, [sp, #56]	; 0x38
    e340:	f8dd 9034 	ldr.w	r9, [sp, #52]	; 0x34
    e344:	eb00 0e41 	add.w	lr, r0, r1, lsl #1
    e348:	2000      	movs	r0, #0
    e34a:	f06f 0701 	mvn.w	r7, #1
    e34e:	2200      	movs	r2, #0
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e350:	eb0e 0607 	add.w	r6, lr, r7
    e354:	eb0a 0407 	add.w	r4, sl, r7
    e358:	f9b6 1002 	ldrsh.w	r1, [r6, #2]
    e35c:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
    e360:	f9b6 b008 	ldrsh.w	fp, [r6, #8]
    e364:	fb13 0001 	smlabb	r0, r3, r1, r0
    e368:	eb0e 0142 	add.w	r1, lr, r2, lsl #1
    e36c:	eb0a 0342 	add.w	r3, sl, r2, lsl #1
    e370:	f9b1 6002 	ldrsh.w	r6, [r1, #2]
    e374:	f9b3 c002 	ldrsh.w	ip, [r3, #2]
    e378:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
    e37c:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
    e380:	fb1c 0006 	smlabb	r0, ip, r6, r0
    e384:	f9b4 6008 	ldrsh.w	r6, [r4, #8]
    e388:	fb13 0001 	smlabb	r0, r3, r1, r0
        for (j = 0; j < N; j++)
    e38c:	3204      	adds	r2, #4
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e38e:	fb16 000b 	smlabb	r0, r6, fp, r0
        for (j = 0; j < N; j++)
    e392:	4591      	cmp	r9, r2
    e394:	f107 0708 	add.w	r7, r7, #8
    e398:	d1da      	bne.n	e350 <_store_byte+0x4a3>
    e39a:	9f11      	ldr	r7, [sp, #68]	; 0x44
    e39c:	9c15      	ldr	r4, [sp, #84]	; 0x54
    e39e:	b1ef      	cbz	r7, e3dc <_store_byte+0x52f>
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e3a0:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    e3a2:	1911      	adds	r1, r2, r4
    e3a4:	f933 1011 	ldrsh.w	r1, [r3, r1, lsl #1]
    e3a8:	f93a 3012 	ldrsh.w	r3, [sl, r2, lsl #1]
        for (j = 0; j < N; j++)
    e3ac:	2f01      	cmp	r7, #1
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e3ae:	fb13 0001 	smlabb	r0, r3, r1, r0
        for (j = 0; j < N; j++)
    e3b2:	d013      	beq.n	e3dc <_store_byte+0x52f>
    e3b4:	1c51      	adds	r1, r2, #1
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e3b6:	9e0e      	ldr	r6, [sp, #56]	; 0x38
    e3b8:	190b      	adds	r3, r1, r4
    e3ba:	f936 3013 	ldrsh.w	r3, [r6, r3, lsl #1]
    e3be:	f93a 1011 	ldrsh.w	r1, [sl, r1, lsl #1]
        for (j = 0; j < N; j++)
    e3c2:	2f02      	cmp	r7, #2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e3c4:	fb11 0003 	smlabb	r0, r1, r3, r0
        for (j = 0; j < N; j++)
    e3c8:	d008      	beq.n	e3dc <_store_byte+0x52f>
    e3ca:	1c91      	adds	r1, r2, #2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e3cc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    e3ce:	190a      	adds	r2, r1, r4
    e3d0:	f933 2012 	ldrsh.w	r2, [r3, r2, lsl #1]
    e3d4:	f93a 1011 	ldrsh.w	r1, [sl, r1, lsl #1]
    e3d8:	fb11 0002 	smlabb	r0, r1, r2, r0
    e3dc:	9910      	ldr	r1, [sp, #64]	; 0x40
    e3de:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
    e3e2:	f841 0028 	str.w	r0, [r1, r8, lsl #2]
    e3e6:	f8dd e008 	ldr.w	lr, [sp, #8]
    e3ea:	f8dd 9034 	ldr.w	r9, [sp, #52]	; 0x34
    e3ee:	f04f 0c00 	mov.w	ip, #0
    e3f2:	2300      	movs	r3, #0
    e3f4:	f04f 0800 	mov.w	r8, #0
    e3f8:	2200      	movs	r2, #0
        for (j = 0; j < N; j++)
    e3fa:	9812      	ldr	r0, [sp, #72]	; 0x48
    e3fc:	2100      	movs	r1, #0
    e3fe:	2803      	cmp	r0, #3
    e400:	d353      	bcc.n	e4aa <_store_byte+0x5fd>
    e402:	e016      	b.n	e432 <_store_byte+0x585>
            cur = C[i * N + j];
    e404:	68a6      	ldr	r6, [r4, #8]
            if (tmp > clipval)
    e406:	2000      	movs	r0, #0
            tmp += cur;
    e408:	4432      	add	r2, r6
            if (tmp > clipval)
    e40a:	428e      	cmp	r6, r1
    e40c:	bfc8      	it	gt
    e40e:	2001      	movgt	r0, #1
    e410:	455a      	cmp	r2, fp
    e412:	bfc4      	itt	gt
    e414:	200a      	movgt	r0, #10
    e416:	2200      	movgt	r2, #0
    e418:	4403      	add	r3, r0
    e41a:	bf00      	nop
    for (i = 0; i < N; i++)
    e41c:	9806      	ldr	r0, [sp, #24]
    e41e:	f10c 0c01 	add.w	ip, ip, #1
    e422:	4486      	add	lr, r0
    e424:	45ac      	cmp	ip, r5
    e426:	46b0      	mov	r8, r6
    e428:	d066      	beq.n	e4f8 <_store_byte+0x64b>
        for (j = 0; j < N; j++)
    e42a:	9812      	ldr	r0, [sp, #72]	; 0x48
    e42c:	2100      	movs	r1, #0
    e42e:	2803      	cmp	r0, #3
    e430:	d33b      	bcc.n	e4aa <_store_byte+0x5fd>
    e432:	4676      	mov	r6, lr
            cur = C[i * N + j];
    e434:	f856 7f10 	ldr.w	r7, [r6, #16]!
            if (tmp > clipval)
    e438:	2400      	movs	r4, #0
            tmp += cur;
    e43a:	443a      	add	r2, r7
            if (tmp > clipval)
    e43c:	4547      	cmp	r7, r8
    e43e:	bfc8      	it	gt
    e440:	2401      	movgt	r4, #1
    e442:	455a      	cmp	r2, fp
    e444:	bfc8      	it	gt
    e446:	240a      	movgt	r4, #10
            cur = C[i * N + j];
    e448:	f106 0804 	add.w	r8, r6, #4
    e44c:	eb03 0b04 	add.w	fp, r3, r4
    e450:	e898 0118 	ldmia.w	r8, {r3, r4, r8}
            tmp += cur;
    e454:	9814      	ldr	r0, [sp, #80]	; 0x50
        for (j = 0; j < N; j++)
    e456:	3104      	adds	r1, #4
            tmp += cur;
    e458:	4282      	cmp	r2, r0
    e45a:	4618      	mov	r0, r3
    e45c:	bfd8      	it	le
    e45e:	4410      	addle	r0, r2
            if (tmp > clipval)
    e460:	2200      	movs	r2, #0
    e462:	42bb      	cmp	r3, r7
    e464:	bfc8      	it	gt
    e466:	2201      	movgt	r2, #1
    e468:	9f14      	ldr	r7, [sp, #80]	; 0x50
    e46a:	42b8      	cmp	r0, r7
    e46c:	bfc8      	it	gt
    e46e:	220a      	movgt	r2, #10
            tmp += cur;
    e470:	4627      	mov	r7, r4
    e472:	445a      	add	r2, fp
    e474:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
    e478:	bfd8      	it	le
    e47a:	4407      	addle	r7, r0
            if (tmp > clipval)
    e47c:	2000      	movs	r0, #0
    e47e:	429c      	cmp	r4, r3
    e480:	bfc8      	it	gt
    e482:	2001      	movgt	r0, #1
    e484:	455f      	cmp	r7, fp
    e486:	bfc8      	it	gt
    e488:	200a      	movgt	r0, #10
    e48a:	4410      	add	r0, r2
            tmp += cur;
    e48c:	4642      	mov	r2, r8
            if (tmp > clipval)
    e48e:	f04f 0300 	mov.w	r3, #0
            tmp += cur;
    e492:	bfd8      	it	le
    e494:	443a      	addle	r2, r7
            if (tmp > clipval)
    e496:	45a0      	cmp	r8, r4
    e498:	bfc8      	it	gt
    e49a:	2301      	movgt	r3, #1
    e49c:	455a      	cmp	r2, fp
    e49e:	bfc4      	itt	gt
    e4a0:	230a      	movgt	r3, #10
    e4a2:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e4a4:	4589      	cmp	r9, r1
    e4a6:	4403      	add	r3, r0
    e4a8:	d1c4      	bne.n	e434 <_store_byte+0x587>
    e4aa:	9f11      	ldr	r7, [sp, #68]	; 0x44
            cur = C[i * N + j];
    e4ac:	4646      	mov	r6, r8
        for (j = 0; j < N; j++)
    e4ae:	2f00      	cmp	r7, #0
    e4b0:	d0b4      	beq.n	e41c <_store_byte+0x56f>
    e4b2:	fb0c f005 	mul.w	r0, ip, r5
    e4b6:	9c10      	ldr	r4, [sp, #64]	; 0x40
            cur = C[i * N + j];
    e4b8:	4401      	add	r1, r0
    e4ba:	f854 6021 	ldr.w	r6, [r4, r1, lsl #2]
            if (tmp > clipval)
    e4be:	2000      	movs	r0, #0
            tmp += cur;
    e4c0:	4432      	add	r2, r6
            if (tmp > clipval)
    e4c2:	4546      	cmp	r6, r8
    e4c4:	bfc8      	it	gt
    e4c6:	2001      	movgt	r0, #1
    e4c8:	455a      	cmp	r2, fp
    e4ca:	bfc4      	itt	gt
    e4cc:	200a      	movgt	r0, #10
    e4ce:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e4d0:	2f01      	cmp	r7, #1
    e4d2:	4403      	add	r3, r0
    e4d4:	d0a2      	beq.n	e41c <_store_byte+0x56f>
            cur = C[i * N + j];
    e4d6:	eb04 0481 	add.w	r4, r4, r1, lsl #2
    e4da:	6861      	ldr	r1, [r4, #4]
            if (tmp > clipval)
    e4dc:	2000      	movs	r0, #0
            tmp += cur;
    e4de:	440a      	add	r2, r1
            if (tmp > clipval)
    e4e0:	42b1      	cmp	r1, r6
    e4e2:	bfc8      	it	gt
    e4e4:	2001      	movgt	r0, #1
    e4e6:	455a      	cmp	r2, fp
    e4e8:	bfc4      	itt	gt
    e4ea:	200a      	movgt	r0, #10
    e4ec:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e4ee:	2f02      	cmp	r7, #2
    e4f0:	4403      	add	r3, r0
    e4f2:	d187      	bne.n	e404 <_store_byte+0x557>
            cur = C[i * N + j];
    e4f4:	460e      	mov	r6, r1
    e4f6:	e791      	b.n	e41c <_store_byte+0x56f>
    e4f8:	990b      	ldr	r1, [sp, #44]	; 0x2c
    e4fa:	b298      	uxth	r0, r3
    e4fc:	f000 fd74 	bl	efe8 <crcu16>
    e500:	9008      	str	r0, [sp, #32]
*/
void
matrix_mul_matrix(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j, k;
    for (i = 0; i < N; i++)
    e502:	0068      	lsls	r0, r5, #1
    e504:	9005      	str	r0, [sp, #20]
    e506:	eb05 0045 	add.w	r0, r5, r5, lsl #1
    e50a:	0040      	lsls	r0, r0, #1
    e50c:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
    e510:	900c      	str	r0, [sp, #48]	; 0x30
    e512:	00e8      	lsls	r0, r5, #3
    e514:	9015      	str	r0, [sp, #84]	; 0x54
    e516:	9810      	ldr	r0, [sp, #64]	; 0x40
    e518:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
    e51c:	f1a8 0102 	sub.w	r1, r8, #2
    e520:	2200      	movs	r2, #0
    e522:	9101      	str	r1, [sp, #4]
    e524:	910a      	str	r1, [sp, #40]	; 0x28
    e526:	e008      	b.n	e53a <_store_byte+0x68d>
    e528:	9a09      	ldr	r2, [sp, #36]	; 0x24
    e52a:	9905      	ldr	r1, [sp, #20]
    e52c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    e52e:	3201      	adds	r2, #1
    e530:	440b      	add	r3, r1
    e532:	42aa      	cmp	r2, r5
    e534:	4488      	add	r8, r1
    e536:	930a      	str	r3, [sp, #40]	; 0x28
    e538:	d06c      	beq.n	e614 <_store_byte+0x767>
    e53a:	fb02 f105 	mul.w	r1, r2, r5
    e53e:	46d6      	mov	lr, sl
    e540:	f04f 0c00 	mov.w	ip, #0
    e544:	9209      	str	r2, [sp, #36]	; 0x24
    {
        for (j = 0; j < N; j++)
    e546:	910b      	str	r1, [sp, #44]	; 0x2c
    e548:	e00a      	b.n	e560 <_store_byte+0x6b3>
    e54a:	bf00      	nop
    e54c:	9810      	ldr	r0, [sp, #64]	; 0x40
        {
            C[i * N + j] = 0;
            for (k = 0; k < N; k++)
            {
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e54e:	9a13      	ldr	r2, [sp, #76]	; 0x4c
        for (j = 0; j < N; j++)
    e550:	f10c 0c01 	add.w	ip, ip, #1
    e554:	45ac      	cmp	ip, r5
    e556:	f10e 0e02 	add.w	lr, lr, #2
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e55a:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
        for (j = 0; j < N; j++)
    e55e:	d0e3      	beq.n	e528 <_store_byte+0x67b>
            C[i * N + j] = 0;
    e560:	eb0c 0201 	add.w	r2, ip, r1
    e564:	2100      	movs	r1, #0
    e566:	f840 1022 	str.w	r1, [r0, r2, lsl #2]
            for (k = 0; k < N; k++)
    e56a:	9812      	ldr	r0, [sp, #72]	; 0x48
    e56c:	990c      	ldr	r1, [sp, #48]	; 0x30
    e56e:	2803      	cmp	r0, #3
    e570:	f04f 0600 	mov.w	r6, #0
    e574:	f04f 0700 	mov.w	r7, #0
    e578:	9213      	str	r2, [sp, #76]	; 0x4c
    e57a:	d323      	bcc.n	e5c4 <_store_byte+0x717>
    e57c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    e57e:	2600      	movs	r6, #0
    e580:	4670      	mov	r0, lr
    e582:	2700      	movs	r7, #0
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e584:	f932 9f08 	ldrsh.w	r9, [r2, #8]!
    e588:	f9b0 a000 	ldrsh.w	sl, [r0]
    e58c:	f932 3c06 	ldrsh.w	r3, [r2, #-6]
    e590:	9c16      	ldr	r4, [sp, #88]	; 0x58
    e592:	fb1a 6303 	smlabb	r3, sl, r3, r6
    e596:	eb08 0647 	add.w	r6, r8, r7, lsl #1
    e59a:	f930 5014 	ldrsh.w	r5, [r0, r4, lsl #1]
    e59e:	f9b6 4002 	ldrsh.w	r4, [r6, #2]
    e5a2:	f9b6 6004 	ldrsh.w	r6, [r6, #4]
    e5a6:	fb15 3304 	smlabb	r3, r5, r4, r3
    e5aa:	9d16      	ldr	r5, [sp, #88]	; 0x58
            for (k = 0; k < N; k++)
    e5ac:	3704      	adds	r7, #4
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e5ae:	f930 4025 	ldrsh.w	r4, [r0, r5, lsl #2]
            for (k = 0; k < N; k++)
    e5b2:	45bb      	cmp	fp, r7
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e5b4:	fb14 3306 	smlabb	r3, r4, r6, r3
    e5b8:	5e44      	ldrsh	r4, [r0, r1]
    e5ba:	fb14 3609 	smlabb	r6, r4, r9, r3
            for (k = 0; k < N; k++)
    e5be:	9b15      	ldr	r3, [sp, #84]	; 0x54
    e5c0:	4418      	add	r0, r3
    e5c2:	d1df      	bne.n	e584 <_store_byte+0x6d7>
    e5c4:	9c11      	ldr	r4, [sp, #68]	; 0x44
    e5c6:	e9dd 3a0e 	ldrd	r3, sl, [sp, #56]	; 0x38
    e5ca:	990b      	ldr	r1, [sp, #44]	; 0x2c
    e5cc:	2c00      	cmp	r4, #0
    e5ce:	d0bd      	beq.n	e54c <_store_byte+0x69f>
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e5d0:	fb07 c205 	mla	r2, r7, r5, ip
    e5d4:	1878      	adds	r0, r7, r1
    e5d6:	f933 0010 	ldrsh.w	r0, [r3, r0, lsl #1]
    e5da:	f93a 2012 	ldrsh.w	r2, [sl, r2, lsl #1]
            for (k = 0; k < N; k++)
    e5de:	2c01      	cmp	r4, #1
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e5e0:	fb12 6600 	smlabb	r6, r2, r0, r6
    e5e4:	d0b2      	beq.n	e54c <_store_byte+0x69f>
    e5e6:	1c78      	adds	r0, r7, #1
    e5e8:	1842      	adds	r2, r0, r1
    e5ea:	fb00 c005 	mla	r0, r0, r5, ip
    e5ee:	f933 2012 	ldrsh.w	r2, [r3, r2, lsl #1]
    e5f2:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
            for (k = 0; k < N; k++)
    e5f6:	2c02      	cmp	r4, #2
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e5f8:	fb10 6602 	smlabb	r6, r0, r2, r6
            for (k = 0; k < N; k++)
    e5fc:	d0a6      	beq.n	e54c <_store_byte+0x69f>
    e5fe:	1cb8      	adds	r0, r7, #2
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e600:	1842      	adds	r2, r0, r1
    e602:	fb00 c005 	mla	r0, r0, r5, ip
    e606:	f933 2012 	ldrsh.w	r2, [r3, r2, lsl #1]
    e60a:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
    e60e:	fb10 6602 	smlabb	r6, r0, r2, r6
    e612:	e79b      	b.n	e54c <_store_byte+0x69f>
    e614:	f8dd c008 	ldr.w	ip, [sp, #8]
    e618:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
    e61c:	f04f 0e00 	mov.w	lr, #0
    e620:	2100      	movs	r1, #0
    e622:	f04f 0900 	mov.w	r9, #0
    e626:	2300      	movs	r3, #0
        for (j = 0; j < N; j++)
    e628:	9812      	ldr	r0, [sp, #72]	; 0x48
    e62a:	2200      	movs	r2, #0
    e62c:	2803      	cmp	r0, #3
    e62e:	d351      	bcc.n	e6d4 <_store_byte+0x827>
    e630:	e015      	b.n	e65e <_store_byte+0x7b1>
            cur = C[i * N + j];
    e632:	68b7      	ldr	r7, [r6, #8]
            if (tmp > clipval)
    e634:	2000      	movs	r0, #0
            tmp += cur;
    e636:	443b      	add	r3, r7
            if (tmp > clipval)
    e638:	4297      	cmp	r7, r2
    e63a:	bfc8      	it	gt
    e63c:	2001      	movgt	r0, #1
    e63e:	4543      	cmp	r3, r8
    e640:	bfc4      	itt	gt
    e642:	200a      	movgt	r0, #10
    e644:	2300      	movgt	r3, #0
    e646:	4401      	add	r1, r0
    for (i = 0; i < N; i++)
    e648:	9806      	ldr	r0, [sp, #24]
    e64a:	f10e 0e01 	add.w	lr, lr, #1
    e64e:	4484      	add	ip, r0
    e650:	45ae      	cmp	lr, r5
    e652:	46b9      	mov	r9, r7
    e654:	d06a      	beq.n	e72c <_store_byte+0x87f>
        for (j = 0; j < N; j++)
    e656:	9812      	ldr	r0, [sp, #72]	; 0x48
    e658:	2200      	movs	r2, #0
    e65a:	2803      	cmp	r0, #3
    e65c:	d33a      	bcc.n	e6d4 <_store_byte+0x827>
    e65e:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
    e662:	4667      	mov	r7, ip
            cur = C[i * N + j];
    e664:	f857 6f10 	ldr.w	r6, [r7, #16]!
            if (tmp > clipval)
    e668:	2500      	movs	r5, #0
            tmp += cur;
    e66a:	4433      	add	r3, r6
            if (tmp > clipval)
    e66c:	454e      	cmp	r6, r9
    e66e:	bfc8      	it	gt
    e670:	2501      	movgt	r5, #1
    e672:	4543      	cmp	r3, r8
    e674:	bfc8      	it	gt
    e676:	250a      	movgt	r5, #10
            cur = C[i * N + j];
    e678:	e9d7 4001 	ldrd	r4, r0, [r7, #4]
    e67c:	4429      	add	r1, r5
            tmp += cur;
    e67e:	4625      	mov	r5, r4
            cur = C[i * N + j];
    e680:	f8d7 900c 	ldr.w	r9, [r7, #12]
            tmp += cur;
    e684:	4543      	cmp	r3, r8
    e686:	bfd8      	it	le
    e688:	441d      	addle	r5, r3
            if (tmp > clipval)
    e68a:	2300      	movs	r3, #0
    e68c:	42b4      	cmp	r4, r6
    e68e:	bfc8      	it	gt
    e690:	2301      	movgt	r3, #1
    e692:	4545      	cmp	r5, r8
    e694:	bfc8      	it	gt
    e696:	230a      	movgt	r3, #10
    e698:	4419      	add	r1, r3
            tmp += cur;
    e69a:	4606      	mov	r6, r0
            if (tmp > clipval)
    e69c:	f04f 0300 	mov.w	r3, #0
            tmp += cur;
    e6a0:	bfd8      	it	le
    e6a2:	442e      	addle	r6, r5
            if (tmp > clipval)
    e6a4:	42a0      	cmp	r0, r4
    e6a6:	bfc8      	it	gt
    e6a8:	2301      	movgt	r3, #1
    e6aa:	4546      	cmp	r6, r8
    e6ac:	bfc8      	it	gt
    e6ae:	230a      	movgt	r3, #10
    e6b0:	4419      	add	r1, r3
            tmp += cur;
    e6b2:	464b      	mov	r3, r9
    e6b4:	bfd8      	it	le
    e6b6:	4433      	addle	r3, r6
            if (tmp > clipval)
    e6b8:	4581      	cmp	r9, r0
    e6ba:	f04f 0000 	mov.w	r0, #0
    e6be:	bfc8      	it	gt
    e6c0:	2001      	movgt	r0, #1
    e6c2:	4543      	cmp	r3, r8
        for (j = 0; j < N; j++)
    e6c4:	f102 0204 	add.w	r2, r2, #4
            if (tmp > clipval)
    e6c8:	bfc4      	itt	gt
    e6ca:	200a      	movgt	r0, #10
    e6cc:	2300      	movgt	r3, #0
        for (j = 0; j < N; j++)
    e6ce:	4592      	cmp	sl, r2
    e6d0:	4401      	add	r1, r0
    e6d2:	d1c7      	bne.n	e664 <_store_byte+0x7b7>
    e6d4:	9811      	ldr	r0, [sp, #68]	; 0x44
    e6d6:	9d16      	ldr	r5, [sp, #88]	; 0x58
    e6d8:	2800      	cmp	r0, #0
            cur = C[i * N + j];
    e6da:	464f      	mov	r7, r9
        for (j = 0; j < N; j++)
    e6dc:	d0b4      	beq.n	e648 <_store_byte+0x79b>
    e6de:	fb0e f005 	mul.w	r0, lr, r5
    e6e2:	9e10      	ldr	r6, [sp, #64]	; 0x40
            cur = C[i * N + j];
    e6e4:	4402      	add	r2, r0
    e6e6:	f856 7022 	ldr.w	r7, [r6, r2, lsl #2]
            if (tmp > clipval)
    e6ea:	2000      	movs	r0, #0
    e6ec:	454f      	cmp	r7, r9
    e6ee:	bfc8      	it	gt
    e6f0:	2001      	movgt	r0, #1
    e6f2:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
            tmp += cur;
    e6f6:	443b      	add	r3, r7
            if (tmp > clipval)
    e6f8:	4543      	cmp	r3, r8
    e6fa:	bfc4      	itt	gt
    e6fc:	200a      	movgt	r0, #10
    e6fe:	2300      	movgt	r3, #0
    e700:	9c11      	ldr	r4, [sp, #68]	; 0x44
    e702:	4401      	add	r1, r0
        for (j = 0; j < N; j++)
    e704:	2c01      	cmp	r4, #1
    e706:	d09f      	beq.n	e648 <_store_byte+0x79b>
            cur = C[i * N + j];
    e708:	eb06 0682 	add.w	r6, r6, r2, lsl #2
    e70c:	6872      	ldr	r2, [r6, #4]
            if (tmp > clipval)
    e70e:	2000      	movs	r0, #0
            tmp += cur;
    e710:	4413      	add	r3, r2
            if (tmp > clipval)
    e712:	42ba      	cmp	r2, r7
    e714:	bfc8      	it	gt
    e716:	2001      	movgt	r0, #1
    e718:	4543      	cmp	r3, r8
    e71a:	bfc4      	itt	gt
    e71c:	200a      	movgt	r0, #10
    e71e:	2300      	movgt	r3, #0
        for (j = 0; j < N; j++)
    e720:	2c02      	cmp	r4, #2
    e722:	4401      	add	r1, r0
    e724:	f47f af85 	bne.w	e632 <_store_byte+0x785>
            cur = C[i * N + j];
    e728:	4617      	mov	r7, r2
    e72a:	e78d      	b.n	e648 <_store_byte+0x79b>
    e72c:	b288      	uxth	r0, r1
    e72e:	9908      	ldr	r1, [sp, #32]
    e730:	f000 fc5a 	bl	efe8 <crcu16>
    e734:	9000      	str	r0, [sp, #0]
    e736:	9801      	ldr	r0, [sp, #4]
    e738:	990e      	ldr	r1, [sp, #56]	; 0x38
    e73a:	9007      	str	r0, [sp, #28]
    e73c:	9810      	ldr	r0, [sp, #64]	; 0x40
    e73e:	f8dd b030 	ldr.w	fp, [sp, #48]	; 0x30
    e742:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
    e746:	2200      	movs	r2, #0
    e748:	e00c      	b.n	e764 <_store_byte+0x8b7>
    e74a:	bf00      	nop
    e74c:	9905      	ldr	r1, [sp, #20]
*/
void
matrix_mul_matrix_bitextract(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j, k;
    for (i = 0; i < N; i++)
    e74e:	9b07      	ldr	r3, [sp, #28]
    e750:	9a04      	ldr	r2, [sp, #16]
    e752:	440b      	add	r3, r1
    e754:	9307      	str	r3, [sp, #28]
    e756:	9b09      	ldr	r3, [sp, #36]	; 0x24
    e758:	3201      	adds	r2, #1
    e75a:	440b      	add	r3, r1
    e75c:	42aa      	cmp	r2, r5
    e75e:	4619      	mov	r1, r3
    e760:	f000 80a8 	beq.w	e8b4 <_store_byte+0xa07>
    e764:	9204      	str	r2, [sp, #16]
    e766:	fb02 fc05 	mul.w	ip, r2, r5
    e76a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    e76c:	9109      	str	r1, [sp, #36]	; 0x24
    e76e:	2100      	movs	r1, #0
    e770:	9213      	str	r2, [sp, #76]	; 0x4c
    {
        for (j = 0; j < N; j++)
    e772:	f8cd c020 	str.w	ip, [sp, #32]
    e776:	e00a      	b.n	e78e <_store_byte+0x8e1>
    e778:	9810      	ldr	r0, [sp, #64]	; 0x40
        {
            C[i * N + j] = 0;
            for (k = 0; k < N; k++)
            {
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e77a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
        for (j = 0; j < N; j++)
    e77c:	3101      	adds	r1, #1
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e77e:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
        for (j = 0; j < N; j++)
    e782:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    e784:	42a9      	cmp	r1, r5
    e786:	f102 0202 	add.w	r2, r2, #2
    e78a:	9213      	str	r2, [sp, #76]	; 0x4c
    e78c:	d0de      	beq.n	e74c <_store_byte+0x89f>
    e78e:	910b      	str	r1, [sp, #44]	; 0x2c
            C[i * N + j] = 0;
    e790:	eb01 020c 	add.w	r2, r1, ip
    e794:	2100      	movs	r1, #0
    e796:	f840 1022 	str.w	r1, [r0, r2, lsl #2]
            for (k = 0; k < N; k++)
    e79a:	9812      	ldr	r0, [sp, #72]	; 0x48
    e79c:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
    e7a0:	2803      	cmp	r0, #3
    e7a2:	980d      	ldr	r0, [sp, #52]	; 0x34
    e7a4:	f04f 0600 	mov.w	r6, #0
    e7a8:	f04f 0700 	mov.w	r7, #0
    e7ac:	46ae      	mov	lr, r5
    e7ae:	920a      	str	r2, [sp, #40]	; 0x28
    e7b0:	d33b      	bcc.n	e82a <_store_byte+0x97d>
    e7b2:	f8dd c04c 	ldr.w	ip, [sp, #76]	; 0x4c
    e7b6:	9b07      	ldr	r3, [sp, #28]
    e7b8:	2600      	movs	r6, #0
    e7ba:	2700      	movs	r7, #0
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e7bc:	f933 5f08 	ldrsh.w	r5, [r3, #8]!
    e7c0:	f9bc 4000 	ldrsh.w	r4, [ip]
    e7c4:	f933 1c06 	ldrsh.w	r1, [r3, #-6]
    e7c8:	4361      	muls	r1, r4
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e7ca:	f3c1 0483 	ubfx	r4, r1, #2, #4
    e7ce:	f3c1 1146 	ubfx	r1, r1, #5, #7
    e7d2:	fb14 6101 	smlabb	r1, r4, r1, r6
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e7d6:	eb08 0447 	add.w	r4, r8, r7, lsl #1
    e7da:	f93c 601e 	ldrsh.w	r6, [ip, lr, lsl #1]
    e7de:	f9b4 9002 	ldrsh.w	r9, [r4, #2]
    e7e2:	f9b4 4004 	ldrsh.w	r4, [r4, #4]
    e7e6:	fb06 f609 	mul.w	r6, r6, r9
    e7ea:	4681      	mov	r9, r0
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e7ec:	f3c6 0083 	ubfx	r0, r6, #2, #4
    e7f0:	f3c6 1646 	ubfx	r6, r6, #5, #7
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e7f4:	f93c 202e 	ldrsh.w	r2, [ip, lr, lsl #2]
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e7f8:	fb10 1006 	smlabb	r0, r0, r6, r1
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e7fc:	fb02 f104 	mul.w	r1, r2, r4
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e800:	f3c1 0283 	ubfx	r2, r1, #2, #4
    e804:	f3c1 1146 	ubfx	r1, r1, #5, #7
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e808:	f93c 400b 	ldrsh.w	r4, [ip, fp]
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e80c:	fb12 0001 	smlabb	r0, r2, r1, r0
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e810:	fb04 f105 	mul.w	r1, r4, r5
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e814:	f3c1 0283 	ubfx	r2, r1, #2, #4
    e818:	f3c1 1146 	ubfx	r1, r1, #5, #7
    e81c:	fb12 0601 	smlabb	r6, r2, r1, r0
            for (k = 0; k < N; k++)
    e820:	3704      	adds	r7, #4
    e822:	4648      	mov	r0, r9
    e824:	45b9      	cmp	r9, r7
    e826:	44d4      	add	ip, sl
    e828:	d1c8      	bne.n	e7bc <_store_byte+0x90f>
    e82a:	9c11      	ldr	r4, [sp, #68]	; 0x44
    e82c:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
    e830:	f8dd c020 	ldr.w	ip, [sp, #32]
    e834:	990b      	ldr	r1, [sp, #44]	; 0x2c
    e836:	2c00      	cmp	r4, #0
    e838:	4675      	mov	r5, lr
    e83a:	d09d      	beq.n	e778 <_store_byte+0x8cb>
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e83c:	9816      	ldr	r0, [sp, #88]	; 0x58
    e83e:	eb07 030c 	add.w	r3, r7, ip
    e842:	fb07 1500 	mla	r5, r7, r0, r1
    e846:	980f      	ldr	r0, [sp, #60]	; 0x3c
    e848:	f939 3013 	ldrsh.w	r3, [r9, r3, lsl #1]
    e84c:	f930 5015 	ldrsh.w	r5, [r0, r5, lsl #1]
            for (k = 0; k < N; k++)
    e850:	2c01      	cmp	r4, #1
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e852:	fb05 f303 	mul.w	r3, r5, r3
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e856:	f3c3 0583 	ubfx	r5, r3, #2, #4
    e85a:	f3c3 1346 	ubfx	r3, r3, #5, #7
    e85e:	fb15 6603 	smlabb	r6, r5, r3, r6
    e862:	9d16      	ldr	r5, [sp, #88]	; 0x58
    e864:	d088      	beq.n	e778 <_store_byte+0x8cb>
    e866:	1c78      	adds	r0, r7, #1
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e868:	eb00 020c 	add.w	r2, r0, ip
    e86c:	fb00 1005 	mla	r0, r0, r5, r1
    e870:	f939 3012 	ldrsh.w	r3, [r9, r2, lsl #1]
    e874:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
            for (k = 0; k < N; k++)
    e876:	2c02      	cmp	r4, #2
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e878:	f932 0010 	ldrsh.w	r0, [r2, r0, lsl #1]
    e87c:	fb03 f000 	mul.w	r0, r3, r0
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e880:	f3c0 0283 	ubfx	r2, r0, #2, #4
    e884:	f3c0 1046 	ubfx	r0, r0, #5, #7
    e888:	fb12 6600 	smlabb	r6, r2, r0, r6
            for (k = 0; k < N; k++)
    e88c:	f43f af74 	beq.w	e778 <_store_byte+0x8cb>
    e890:	1cb8      	adds	r0, r7, #2
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    e892:	eb00 020c 	add.w	r2, r0, ip
    e896:	fb00 1005 	mla	r0, r0, r5, r1
    e89a:	f939 3012 	ldrsh.w	r3, [r9, r2, lsl #1]
    e89e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    e8a0:	f932 0010 	ldrsh.w	r0, [r2, r0, lsl #1]
    e8a4:	4358      	muls	r0, r3
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    e8a6:	f3c0 0283 	ubfx	r2, r0, #2, #4
    e8aa:	f3c0 1046 	ubfx	r0, r0, #5, #7
    e8ae:	fb12 6600 	smlabb	r6, r2, r0, r6
    e8b2:	e761      	b.n	e778 <_store_byte+0x8cb>
    e8b4:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
    e8b8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
    e8bc:	9902      	ldr	r1, [sp, #8]
    e8be:	f04f 0c00 	mov.w	ip, #0
    e8c2:	2300      	movs	r3, #0
    e8c4:	f04f 0e00 	mov.w	lr, #0
    e8c8:	2200      	movs	r2, #0
        for (j = 0; j < N; j++)
    e8ca:	9812      	ldr	r0, [sp, #72]	; 0x48
    e8cc:	2803      	cmp	r0, #3
    e8ce:	d21b      	bcs.n	e908 <_store_byte+0xa5b>
    e8d0:	e017      	b.n	e902 <_store_byte+0xa55>
            cur = C[i * N + j];
    e8d2:	68b7      	ldr	r7, [r6, #8]
            if (tmp > clipval)
    e8d4:	2000      	movs	r0, #0
            tmp += cur;
    e8d6:	443a      	add	r2, r7
            if (tmp > clipval)
    e8d8:	428f      	cmp	r7, r1
    e8da:	bfc8      	it	gt
    e8dc:	2001      	movgt	r0, #1
    e8de:	455a      	cmp	r2, fp
    e8e0:	bfc4      	itt	gt
    e8e2:	200a      	movgt	r0, #10
    e8e4:	2200      	movgt	r2, #0
    e8e6:	4403      	add	r3, r0
    for (i = 0; i < N; i++)
    e8e8:	9806      	ldr	r0, [sp, #24]
    e8ea:	4641      	mov	r1, r8
    e8ec:	eb08 0100 	add.w	r1, r8, r0
    e8f0:	9816      	ldr	r0, [sp, #88]	; 0x58
    e8f2:	f10c 0c01 	add.w	ip, ip, #1
    e8f6:	4584      	cmp	ip, r0
    e8f8:	46be      	mov	lr, r7
    e8fa:	d06d      	beq.n	e9d8 <_store_byte+0xb2b>
        for (j = 0; j < N; j++)
    e8fc:	9812      	ldr	r0, [sp, #72]	; 0x48
    e8fe:	2803      	cmp	r0, #3
    e900:	d202      	bcs.n	e908 <_store_byte+0xa5b>
    e902:	4688      	mov	r8, r1
    e904:	2400      	movs	r4, #0
    e906:	e03c      	b.n	e982 <_store_byte+0xad5>
    e908:	2400      	movs	r4, #0
    e90a:	4688      	mov	r8, r1
    e90c:	460f      	mov	r7, r1
    e90e:	bf00      	nop
            cur = C[i * N + j];
    e910:	f857 6f10 	ldr.w	r6, [r7, #16]!
            if (tmp > clipval)
    e914:	2100      	movs	r1, #0
            tmp += cur;
    e916:	4432      	add	r2, r6
            if (tmp > clipval)
    e918:	4576      	cmp	r6, lr
    e91a:	bfc8      	it	gt
    e91c:	2101      	movgt	r1, #1
    e91e:	455a      	cmp	r2, fp
    e920:	bfc8      	it	gt
    e922:	210a      	movgt	r1, #10
    e924:	440b      	add	r3, r1
            cur = C[i * N + j];
    e926:	e9d7 1001 	ldrd	r1, r0, [r7, #4]
    e92a:	f8d7 e00c 	ldr.w	lr, [r7, #12]
            tmp += cur;
    e92e:	460d      	mov	r5, r1
    e930:	455a      	cmp	r2, fp
    e932:	bfd8      	it	le
    e934:	4415      	addle	r5, r2
            if (tmp > clipval)
    e936:	2200      	movs	r2, #0
    e938:	42b1      	cmp	r1, r6
    e93a:	bfc8      	it	gt
    e93c:	2201      	movgt	r2, #1
    e93e:	455d      	cmp	r5, fp
    e940:	bfc8      	it	gt
    e942:	220a      	movgt	r2, #10
    e944:	441a      	add	r2, r3
            tmp += cur;
    e946:	4603      	mov	r3, r0
    e948:	bfd8      	it	le
    e94a:	442b      	addle	r3, r5
            if (tmp > clipval)
    e94c:	4288      	cmp	r0, r1
    e94e:	f04f 0100 	mov.w	r1, #0
    e952:	bfc8      	it	gt
    e954:	2101      	movgt	r1, #1
    e956:	455b      	cmp	r3, fp
    e958:	bfc8      	it	gt
    e95a:	210a      	movgt	r1, #10
    e95c:	4411      	add	r1, r2
            tmp += cur;
    e95e:	4672      	mov	r2, lr
    e960:	bfd8      	it	le
    e962:	441a      	addle	r2, r3
            if (tmp > clipval)
    e964:	4586      	cmp	lr, r0
    e966:	f04f 0000 	mov.w	r0, #0
    e96a:	bfc8      	it	gt
    e96c:	2001      	movgt	r0, #1
    e96e:	455a      	cmp	r2, fp
        for (j = 0; j < N; j++)
    e970:	f104 0404 	add.w	r4, r4, #4
            if (tmp > clipval)
    e974:	bfc4      	itt	gt
    e976:	200a      	movgt	r0, #10
    e978:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e97a:	45a2      	cmp	sl, r4
    e97c:	eb01 0300 	add.w	r3, r1, r0
    e980:	d1c6      	bne.n	e910 <_store_byte+0xa63>
    e982:	9811      	ldr	r0, [sp, #68]	; 0x44
    e984:	9d20      	ldr	r5, [sp, #128]	; 0x80
    e986:	2800      	cmp	r0, #0
            cur = C[i * N + j];
    e988:	4677      	mov	r7, lr
        for (j = 0; j < N; j++)
    e98a:	d0ad      	beq.n	e8e8 <_store_byte+0xa3b>
    e98c:	9816      	ldr	r0, [sp, #88]	; 0x58
    e98e:	9910      	ldr	r1, [sp, #64]	; 0x40
    e990:	fb0c f000 	mul.w	r0, ip, r0
            cur = C[i * N + j];
    e994:	1826      	adds	r6, r4, r0
    e996:	f851 7026 	ldr.w	r7, [r1, r6, lsl #2]
            if (tmp > clipval)
    e99a:	2000      	movs	r0, #0
            tmp += cur;
    e99c:	443a      	add	r2, r7
            if (tmp > clipval)
    e99e:	4577      	cmp	r7, lr
    e9a0:	bfc8      	it	gt
    e9a2:	2001      	movgt	r0, #1
    e9a4:	455a      	cmp	r2, fp
    e9a6:	bfc4      	itt	gt
    e9a8:	200a      	movgt	r0, #10
    e9aa:	2200      	movgt	r2, #0
    e9ac:	9c11      	ldr	r4, [sp, #68]	; 0x44
    e9ae:	4403      	add	r3, r0
        for (j = 0; j < N; j++)
    e9b0:	2c01      	cmp	r4, #1
    e9b2:	d099      	beq.n	e8e8 <_store_byte+0xa3b>
            cur = C[i * N + j];
    e9b4:	eb01 0686 	add.w	r6, r1, r6, lsl #2
    e9b8:	6871      	ldr	r1, [r6, #4]
            if (tmp > clipval)
    e9ba:	2000      	movs	r0, #0
            tmp += cur;
    e9bc:	440a      	add	r2, r1
            if (tmp > clipval)
    e9be:	42b9      	cmp	r1, r7
    e9c0:	bfc8      	it	gt
    e9c2:	2001      	movgt	r0, #1
    e9c4:	455a      	cmp	r2, fp
    e9c6:	bfc4      	itt	gt
    e9c8:	200a      	movgt	r0, #10
    e9ca:	2200      	movgt	r2, #0
        for (j = 0; j < N; j++)
    e9cc:	2c02      	cmp	r4, #2
    e9ce:	4403      	add	r3, r0
    e9d0:	f47f af7f 	bne.w	e8d2 <_store_byte+0xa25>
            cur = C[i * N + j];
    e9d4:	460f      	mov	r7, r1
    e9d6:	e787      	b.n	e8e8 <_store_byte+0xa3b>
    e9d8:	9900      	ldr	r1, [sp, #0]
    e9da:	b298      	uxth	r0, r3
    e9dc:	f000 fb04 	bl	efe8 <crcu16>
    for (i = 0; i < N; i++)
    e9e0:	9912      	ldr	r1, [sp, #72]	; 0x48
    e9e2:	2900      	cmp	r1, #0
    e9e4:	f000 8082 	beq.w	eaec <_store_byte+0xc3f>
    e9e8:	9916      	ldr	r1, [sp, #88]	; 0x58
    e9ea:	f8dd b00c 	ldr.w	fp, [sp, #12]
    e9ee:	f8dd 8004 	ldr.w	r8, [sp, #4]
    e9f2:	eba1 0c0b 	sub.w	ip, r1, fp
    e9f6:	eb09 0141 	add.w	r1, r9, r1, lsl #1
    e9fa:	f1a1 0e08 	sub.w	lr, r1, #8
    e9fe:	2100      	movs	r1, #0
    ea00:	464e      	mov	r6, r9
        for (j = 0; j < N; j++)
    ea02:	9a12      	ldr	r2, [sp, #72]	; 0x48
    ea04:	2700      	movs	r7, #0
    ea06:	2a03      	cmp	r2, #3
    ea08:	d324      	bcc.n	ea54 <_store_byte+0xba7>
    ea0a:	e00b      	b.n	ea24 <_store_byte+0xb77>
    ea0c:	9a06      	ldr	r2, [sp, #24]
    for (i = 0; i < N; i++)
    ea0e:	3102      	adds	r1, #2
    ea10:	f1bc 0c02 	subs.w	ip, ip, #2
    ea14:	4490      	add	r8, r2
    ea16:	4416      	add	r6, r2
    ea18:	4496      	add	lr, r2
    ea1a:	d06a      	beq.n	eaf2 <_store_byte+0xc45>
        for (j = 0; j < N; j++)
    ea1c:	9a12      	ldr	r2, [sp, #72]	; 0x48
    ea1e:	2700      	movs	r7, #0
    ea20:	2a03      	cmp	r2, #3
    ea22:	d317      	bcc.n	ea54 <_store_byte+0xba7>
    ea24:	4644      	mov	r4, r8
    ea26:	bf00      	nop
            A[i * N + j] += val;
    ea28:	8863      	ldrh	r3, [r4, #2]
    ea2a:	9a20      	ldr	r2, [sp, #128]	; 0x80
    ea2c:	1b5b      	subs	r3, r3, r5
    ea2e:	8063      	strh	r3, [r4, #2]
    ea30:	eb06 0347 	add.w	r3, r6, r7, lsl #1
    ea34:	885d      	ldrh	r5, [r3, #2]
        for (j = 0; j < N; j++)
    ea36:	3704      	adds	r7, #4
            A[i * N + j] += val;
    ea38:	1aad      	subs	r5, r5, r2
    ea3a:	889a      	ldrh	r2, [r3, #4]
    ea3c:	805d      	strh	r5, [r3, #2]
    ea3e:	9d20      	ldr	r5, [sp, #128]	; 0x80
        for (j = 0; j < N; j++)
    ea40:	45ba      	cmp	sl, r7
            A[i * N + j] += val;
    ea42:	eba2 0205 	sub.w	r2, r2, r5
    ea46:	809a      	strh	r2, [r3, #4]
    ea48:	f834 2f08 	ldrh.w	r2, [r4, #8]!
    ea4c:	eba2 0205 	sub.w	r2, r2, r5
    ea50:	8022      	strh	r2, [r4, #0]
        for (j = 0; j < N; j++)
    ea52:	d1e9      	bne.n	ea28 <_store_byte+0xb7b>
    ea54:	9c11      	ldr	r4, [sp, #68]	; 0x44
    ea56:	b1bc      	cbz	r4, ea88 <_store_byte+0xbdb>
    ea58:	9a16      	ldr	r2, [sp, #88]	; 0x58
    ea5a:	2c01      	cmp	r4, #1
    ea5c:	fb01 f202 	mul.w	r2, r1, r2
            A[i * N + j] += val;
    ea60:	eb07 0302 	add.w	r3, r7, r2
    ea64:	f839 2013 	ldrh.w	r2, [r9, r3, lsl #1]
    ea68:	eba2 0205 	sub.w	r2, r2, r5
    ea6c:	f829 2013 	strh.w	r2, [r9, r3, lsl #1]
        for (j = 0; j < N; j++)
    ea70:	d00a      	beq.n	ea88 <_store_byte+0xbdb>
            A[i * N + j] += val;
    ea72:	eb09 0343 	add.w	r3, r9, r3, lsl #1
    ea76:	885a      	ldrh	r2, [r3, #2]
        for (j = 0; j < N; j++)
    ea78:	2c02      	cmp	r4, #2
            A[i * N + j] += val;
    ea7a:	eba2 0205 	sub.w	r2, r2, r5
    ea7e:	805a      	strh	r2, [r3, #2]
        for (j = 0; j < N; j++)
    ea80:	d002      	beq.n	ea88 <_store_byte+0xbdb>
            A[i * N + j] += val;
    ea82:	889a      	ldrh	r2, [r3, #4]
    ea84:	1b52      	subs	r2, r2, r5
    ea86:	809a      	strh	r2, [r3, #4]
        for (j = 0; j < N; j++)
    ea88:	9a12      	ldr	r2, [sp, #72]	; 0x48
    ea8a:	2700      	movs	r7, #0
    ea8c:	2a03      	cmp	r2, #3
    ea8e:	d311      	bcc.n	eab4 <_store_byte+0xc07>
    ea90:	4673      	mov	r3, lr
    ea92:	bf00      	nop
            A[i * N + j] += val;
    ea94:	f833 2f08 	ldrh.w	r2, [r3, #8]!
        for (j = 0; j < N; j++)
    ea98:	3704      	adds	r7, #4
            A[i * N + j] += val;
    ea9a:	1b52      	subs	r2, r2, r5
    ea9c:	885c      	ldrh	r4, [r3, #2]
    ea9e:	801a      	strh	r2, [r3, #0]
    eaa0:	1b62      	subs	r2, r4, r5
    eaa2:	889c      	ldrh	r4, [r3, #4]
    eaa4:	805a      	strh	r2, [r3, #2]
    eaa6:	1b62      	subs	r2, r4, r5
    eaa8:	88dc      	ldrh	r4, [r3, #6]
    eaaa:	809a      	strh	r2, [r3, #4]
    eaac:	1b62      	subs	r2, r4, r5
        for (j = 0; j < N; j++)
    eaae:	45ba      	cmp	sl, r7
            A[i * N + j] += val;
    eab0:	80da      	strh	r2, [r3, #6]
    eab2:	d1ef      	bne.n	ea94 <_store_byte+0xbe7>
    eab4:	9c11      	ldr	r4, [sp, #68]	; 0x44
        for (j = 0; j < N; j++)
    eab6:	2c00      	cmp	r4, #0
    eab8:	d0a8      	beq.n	ea0c <_store_byte+0xb5f>
    eaba:	9b16      	ldr	r3, [sp, #88]	; 0x58
    eabc:	f041 0201 	orr.w	r2, r1, #1
    eac0:	435a      	muls	r2, r3
            A[i * N + j] += val;
    eac2:	18bb      	adds	r3, r7, r2
    eac4:	f839 2013 	ldrh.w	r2, [r9, r3, lsl #1]
        for (j = 0; j < N; j++)
    eac8:	2c01      	cmp	r4, #1
            A[i * N + j] += val;
    eaca:	eba2 0205 	sub.w	r2, r2, r5
    eace:	f829 2013 	strh.w	r2, [r9, r3, lsl #1]
    ead2:	d09b      	beq.n	ea0c <_store_byte+0xb5f>
    ead4:	eb09 0343 	add.w	r3, r9, r3, lsl #1
    ead8:	885a      	ldrh	r2, [r3, #2]
        for (j = 0; j < N; j++)
    eada:	2c02      	cmp	r4, #2
            A[i * N + j] += val;
    eadc:	eba2 0205 	sub.w	r2, r2, r5
    eae0:	805a      	strh	r2, [r3, #2]
    eae2:	d093      	beq.n	ea0c <_store_byte+0xb5f>
    eae4:	889a      	ldrh	r2, [r3, #4]
    eae6:	1b52      	subs	r2, r2, r5
    eae8:	809a      	strh	r2, [r3, #4]
    eaea:	e78f      	b.n	ea0c <_store_byte+0xb5f>
    eaec:	f8dd b00c 	ldr.w	fp, [sp, #12]
    eaf0:	2100      	movs	r1, #0
        for (j = 0; j < N; j++)
    eaf2:	f1bb 0f00 	cmp.w	fp, #0
    eaf6:	d03a      	beq.n	eb6e <_store_byte+0xcc1>
    eaf8:	9a12      	ldr	r2, [sp, #72]	; 0x48
    eafa:	2a03      	cmp	r2, #3
    eafc:	9a16      	ldr	r2, [sp, #88]	; 0x58
    eafe:	fb02 f101 	mul.w	r1, r2, r1
    eb02:	d203      	bcs.n	eb0c <_store_byte+0xc5f>
    eb04:	2200      	movs	r2, #0
    eb06:	9b11      	ldr	r3, [sp, #68]	; 0x44
    eb08:	b9eb      	cbnz	r3, eb46 <_store_byte+0xc99>
    eb0a:	e030      	b.n	eb6e <_store_byte+0xcc1>
    eb0c:	eb09 0341 	add.w	r3, r9, r1, lsl #1
    eb10:	1e9f      	subs	r7, r3, #2
    eb12:	2200      	movs	r2, #0
            A[i * N + j] += val;
    eb14:	887e      	ldrh	r6, [r7, #2]
    eb16:	9c20      	ldr	r4, [sp, #128]	; 0x80
    eb18:	1b76      	subs	r6, r6, r5
    eb1a:	807e      	strh	r6, [r7, #2]
    eb1c:	eb03 0642 	add.w	r6, r3, r2, lsl #1
    eb20:	8875      	ldrh	r5, [r6, #2]
        for (j = 0; j < N; j++)
    eb22:	3204      	adds	r2, #4
            A[i * N + j] += val;
    eb24:	1b2d      	subs	r5, r5, r4
    eb26:	88b4      	ldrh	r4, [r6, #4]
    eb28:	8075      	strh	r5, [r6, #2]
    eb2a:	9d20      	ldr	r5, [sp, #128]	; 0x80
        for (j = 0; j < N; j++)
    eb2c:	4592      	cmp	sl, r2
            A[i * N + j] += val;
    eb2e:	eba4 0505 	sub.w	r5, r4, r5
    eb32:	80b5      	strh	r5, [r6, #4]
    eb34:	9d20      	ldr	r5, [sp, #128]	; 0x80
    eb36:	f837 6f08 	ldrh.w	r6, [r7, #8]!
    eb3a:	eba6 0605 	sub.w	r6, r6, r5
    eb3e:	803e      	strh	r6, [r7, #0]
        for (j = 0; j < N; j++)
    eb40:	d1e8      	bne.n	eb14 <_store_byte+0xc67>
    eb42:	9b11      	ldr	r3, [sp, #68]	; 0x44
    eb44:	b19b      	cbz	r3, eb6e <_store_byte+0xcc1>
            A[i * N + j] += val;
    eb46:	4411      	add	r1, r2
    eb48:	f839 2011 	ldrh.w	r2, [r9, r1, lsl #1]
        for (j = 0; j < N; j++)
    eb4c:	2b01      	cmp	r3, #1
            A[i * N + j] += val;
    eb4e:	eba2 0205 	sub.w	r2, r2, r5
    eb52:	f829 2011 	strh.w	r2, [r9, r1, lsl #1]
        for (j = 0; j < N; j++)
    eb56:	d00a      	beq.n	eb6e <_store_byte+0xcc1>
            A[i * N + j] += val;
    eb58:	eb09 0141 	add.w	r1, r9, r1, lsl #1
    eb5c:	884a      	ldrh	r2, [r1, #2]
        for (j = 0; j < N; j++)
    eb5e:	2b02      	cmp	r3, #2
            A[i * N + j] += val;
    eb60:	eba2 0205 	sub.w	r2, r2, r5
    eb64:	804a      	strh	r2, [r1, #2]
        for (j = 0; j < N; j++)
    eb66:	d002      	beq.n	eb6e <_store_byte+0xcc1>
            A[i * N + j] += val;
    eb68:	888a      	ldrh	r2, [r1, #4]
    eb6a:	1b52      	subs	r2, r2, r5
    eb6c:	808a      	strh	r2, [r1, #4]
    return crc;
    eb6e:	b200      	sxth	r0, r0
    eb70:	b017      	add	sp, #92	; 0x5c
    eb72:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    eb76:	d4d4      	bmi.n	eb22 <_store_byte+0xc75>

0000eb78 <core_bench_state>:
{
    eb78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    eb7c:	b093      	sub	sp, #76	; 0x4c
    eb7e:	4681      	mov	r9, r0
    eb80:	981d      	ldr	r0, [sp, #116]	; 0x74
    eb82:	469a      	mov	sl, r3
    eb84:	9001      	str	r0, [sp, #4]
    while (*p != 0)
    eb86:	7808      	ldrb	r0, [r1, #0]
    eb88:	f8dd b070 	ldr.w	fp, [sp, #112]	; 0x70
    eb8c:	4690      	mov	r8, r2
    eb8e:	460e      	mov	r6, r1
    eb90:	2800      	cmp	r0, #0
    eb92:	f04f 0000 	mov.w	r0, #0
    ee_u8 *p = memblock;
    eb96:	9102      	str	r1, [sp, #8]
        final_counts[i] = track_counts[i] = 0;
    eb98:	e9cd 0003 	strd	r0, r0, [sp, #12]
    eb9c:	e9cd 0005 	strd	r0, r0, [sp, #20]
    eba0:	e9cd 0007 	strd	r0, r0, [sp, #28]
    eba4:	e9cd 0009 	strd	r0, r0, [sp, #36]	; 0x24
    eba8:	e9cd 000b 	strd	r0, r0, [sp, #44]	; 0x2c
    ebac:	e9cd 000d 	strd	r0, r0, [sp, #52]	; 0x34
    ebb0:	e9cd 000f 	strd	r0, r0, [sp, #60]	; 0x3c
    ebb4:	e9cd 0011 	strd	r0, r0, [sp, #68]	; 0x44
    while (*p != 0)
    ebb8:	d00f      	beq.n	ebda <core_bench_state+0x62>
    ebba:	af02      	add	r7, sp, #8
    ebbc:	ad03      	add	r5, sp, #12
    ebbe:	ac0b      	add	r4, sp, #44	; 0x2c
        enum CORE_STATE fstate = core_state_transition(&p, track_counts);
    ebc0:	4638      	mov	r0, r7
    ebc2:	4629      	mov	r1, r5
    ebc4:	f000 f924 	bl	ee10 <core_state_transition>
    while (*p != 0)
    ebc8:	9902      	ldr	r1, [sp, #8]
        final_counts[fstate]++;
    ebca:	f854 2020 	ldr.w	r2, [r4, r0, lsl #2]
    while (*p != 0)
    ebce:	7809      	ldrb	r1, [r1, #0]
        final_counts[fstate]++;
    ebd0:	3201      	adds	r2, #1
    while (*p != 0)
    ebd2:	2900      	cmp	r1, #0
        final_counts[fstate]++;
    ebd4:	f844 2020 	str.w	r2, [r4, r0, lsl #2]
    while (*p != 0)
    ebd8:	d1f2      	bne.n	ebc0 <core_bench_state+0x48>
    while (p < (memblock + blksize))
    ebda:	f1b9 0f01 	cmp.w	r9, #1
    ebde:	eb06 0509 	add.w	r5, r6, r9
    ebe2:	9602      	str	r6, [sp, #8]
    ebe4:	db34      	blt.n	ec50 <core_bench_state+0xd8>
    ebe6:	ea4f 0c8b 	mov.w	ip, fp, lsl #2
    ebea:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
    ebee:	ea4f 024b 	mov.w	r2, fp, lsl #1
    ebf2:	4633      	mov	r3, r6
        if (*p != ',')
    ebf4:	781f      	ldrb	r7, [r3, #0]
    ebf6:	2f2c      	cmp	r7, #44	; 0x2c
            *p ^= (ee_u8)seed1;
    ebf8:	bf1c      	itt	ne
    ebfa:	ea87 0008 	eorne.w	r0, r7, r8
    ebfe:	7018      	strbne	r0, [r3, #0]
        p += step;
    ec00:	eb03 070b 	add.w	r7, r3, fp
    while (p < (memblock + blksize))
    ec04:	42af      	cmp	r7, r5
    ec06:	9702      	str	r7, [sp, #8]
    ec08:	d222      	bcs.n	ec50 <core_bench_state+0xd8>
        if (*p != ',')
    ec0a:	783c      	ldrb	r4, [r7, #0]
    ec0c:	2c2c      	cmp	r4, #44	; 0x2c
            *p ^= (ee_u8)seed1;
    ec0e:	bf1c      	itt	ne
    ec10:	ea84 0008 	eorne.w	r0, r4, r8
    ec14:	7038      	strbne	r0, [r7, #0]
    ec16:	189c      	adds	r4, r3, r2
    while (p < (memblock + blksize))
    ec18:	42ac      	cmp	r4, r5
    ec1a:	9402      	str	r4, [sp, #8]
    ec1c:	d218      	bcs.n	ec50 <core_bench_state+0xd8>
        if (*p != ',')
    ec1e:	7820      	ldrb	r0, [r4, #0]
    ec20:	282c      	cmp	r0, #44	; 0x2c
            *p ^= (ee_u8)seed1;
    ec22:	bf1c      	itt	ne
    ec24:	ea80 0008 	eorne.w	r0, r0, r8
    ec28:	7020      	strbne	r0, [r4, #0]
    ec2a:	185c      	adds	r4, r3, r1
    while (p < (memblock + blksize))
    ec2c:	42ac      	cmp	r4, r5
    ec2e:	9402      	str	r4, [sp, #8]
    ec30:	d20e      	bcs.n	ec50 <core_bench_state+0xd8>
        if (*p != ',')
    ec32:	7820      	ldrb	r0, [r4, #0]
    ec34:	445f      	add	r7, fp
    ec36:	282c      	cmp	r0, #44	; 0x2c
    ec38:	445f      	add	r7, fp
            *p ^= (ee_u8)seed1;
    ec3a:	bf1c      	itt	ne
    ec3c:	ea80 0008 	eorne.w	r0, r0, r8
    ec40:	7020      	strbne	r0, [r4, #0]
    ec42:	eb03 000c 	add.w	r0, r3, ip
        p += step;
    ec46:	eb07 030b 	add.w	r3, r7, fp
    while (p < (memblock + blksize))
    ec4a:	42ab      	cmp	r3, r5
    ec4c:	9002      	str	r0, [sp, #8]
    ec4e:	d3d1      	bcc.n	ebf4 <core_bench_state+0x7c>
    while (*p != 0)
    ec50:	7830      	ldrb	r0, [r6, #0]
    p = memblock;
    ec52:	9602      	str	r6, [sp, #8]
    while (*p != 0)
    ec54:	b188      	cbz	r0, ec7a <core_bench_state+0x102>
    ec56:	ac02      	add	r4, sp, #8
    ec58:	af03      	add	r7, sp, #12
    ec5a:	f10d 082c 	add.w	r8, sp, #44	; 0x2c
    ec5e:	bf00      	nop
        enum CORE_STATE fstate = core_state_transition(&p, track_counts);
    ec60:	4620      	mov	r0, r4
    ec62:	4639      	mov	r1, r7
    ec64:	f000 f8d4 	bl	ee10 <core_state_transition>
    while (*p != 0)
    ec68:	9902      	ldr	r1, [sp, #8]
        final_counts[fstate]++;
    ec6a:	f858 2020 	ldr.w	r2, [r8, r0, lsl #2]
    while (*p != 0)
    ec6e:	7809      	ldrb	r1, [r1, #0]
        final_counts[fstate]++;
    ec70:	3201      	adds	r2, #1
    while (*p != 0)
    ec72:	2900      	cmp	r1, #0
        final_counts[fstate]++;
    ec74:	f848 2020 	str.w	r2, [r8, r0, lsl #2]
    while (*p != 0)
    ec78:	d1f2      	bne.n	ec60 <core_bench_state+0xe8>
    while (p < (memblock + blksize))
    ec7a:	f1b9 0f01 	cmp.w	r9, #1
    ec7e:	9602      	str	r6, [sp, #8]
    ec80:	db33      	blt.n	ecea <core_bench_state+0x172>
    ec82:	ea4f 008b 	mov.w	r0, fp, lsl #2
    ec86:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
    ec8a:	ea4f 024b 	mov.w	r2, fp, lsl #1
    ec8e:	bf00      	nop
        if (*p != ',')
    ec90:	7833      	ldrb	r3, [r6, #0]
    ec92:	2b2c      	cmp	r3, #44	; 0x2c
            *p ^= (ee_u8)seed2;
    ec94:	bf1c      	itt	ne
    ec96:	ea83 030a 	eorne.w	r3, r3, sl
    ec9a:	7033      	strbne	r3, [r6, #0]
        p += step;
    ec9c:	eb06 030b 	add.w	r3, r6, fp
    while (p < (memblock + blksize))
    eca0:	42ab      	cmp	r3, r5
    eca2:	9302      	str	r3, [sp, #8]
    eca4:	d221      	bcs.n	ecea <core_bench_state+0x172>
        if (*p != ',')
    eca6:	781f      	ldrb	r7, [r3, #0]
    eca8:	2f2c      	cmp	r7, #44	; 0x2c
            *p ^= (ee_u8)seed2;
    ecaa:	bf1c      	itt	ne
    ecac:	ea87 070a 	eorne.w	r7, r7, sl
    ecb0:	701f      	strbne	r7, [r3, #0]
    ecb2:	18b7      	adds	r7, r6, r2
    while (p < (memblock + blksize))
    ecb4:	42af      	cmp	r7, r5
    ecb6:	9702      	str	r7, [sp, #8]
    ecb8:	d217      	bcs.n	ecea <core_bench_state+0x172>
        if (*p != ',')
    ecba:	783c      	ldrb	r4, [r7, #0]
    ecbc:	2c2c      	cmp	r4, #44	; 0x2c
            *p ^= (ee_u8)seed2;
    ecbe:	bf1c      	itt	ne
    ecc0:	ea84 040a 	eorne.w	r4, r4, sl
    ecc4:	703c      	strbne	r4, [r7, #0]
    ecc6:	1877      	adds	r7, r6, r1
    while (p < (memblock + blksize))
    ecc8:	42af      	cmp	r7, r5
    ecca:	9702      	str	r7, [sp, #8]
    eccc:	d20d      	bcs.n	ecea <core_bench_state+0x172>
        if (*p != ',')
    ecce:	783c      	ldrb	r4, [r7, #0]
    ecd0:	445b      	add	r3, fp
    ecd2:	445b      	add	r3, fp
    ecd4:	2c2c      	cmp	r4, #44	; 0x2c
            *p ^= (ee_u8)seed2;
    ecd6:	bf1c      	itt	ne
    ecd8:	ea84 040a 	eorne.w	r4, r4, sl
    ecdc:	703c      	strbne	r4, [r7, #0]
    ecde:	1837      	adds	r7, r6, r0
        p += step;
    ece0:	eb03 060b 	add.w	r6, r3, fp
    while (p < (memblock + blksize))
    ece4:	42ae      	cmp	r6, r5
    ece6:	9702      	str	r7, [sp, #8]
    ece8:	d3d2      	bcc.n	ec90 <core_bench_state+0x118>
        crc = crcu32(final_counts[i], crc);
    ecea:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
    ecec:	9901      	ldr	r1, [sp, #4]
    ecee:	b2a0      	uxth	r0, r4
    ecf0:	f000 f97a 	bl	efe8 <crcu16>
    ecf4:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ecf6:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ecf8:	f000 f976 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    ecfc:	9c03      	ldr	r4, [sp, #12]
    ecfe:	4601      	mov	r1, r0
    ed00:	b2a0      	uxth	r0, r4
    ed02:	f000 f971 	bl	efe8 <crcu16>
    ed06:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed08:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed0a:	f000 f96d 	bl	efe8 <crcu16>
        crc = crcu32(final_counts[i], crc);
    ed0e:	9c0c      	ldr	r4, [sp, #48]	; 0x30
    ed10:	4601      	mov	r1, r0
    ed12:	b2a0      	uxth	r0, r4
    ed14:	f000 f968 	bl	efe8 <crcu16>
    ed18:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed1a:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed1c:	f000 f964 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    ed20:	9c04      	ldr	r4, [sp, #16]
    ed22:	4601      	mov	r1, r0
    ed24:	b2a0      	uxth	r0, r4
    ed26:	f000 f95f 	bl	efe8 <crcu16>
    ed2a:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed2c:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed2e:	f000 f95b 	bl	efe8 <crcu16>
        crc = crcu32(final_counts[i], crc);
    ed32:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    ed34:	4601      	mov	r1, r0
    ed36:	b2a0      	uxth	r0, r4
    ed38:	f000 f956 	bl	efe8 <crcu16>
    ed3c:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed3e:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed40:	f000 f952 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    ed44:	9c05      	ldr	r4, [sp, #20]
    ed46:	4601      	mov	r1, r0
    ed48:	b2a0      	uxth	r0, r4
    ed4a:	f000 f94d 	bl	efe8 <crcu16>
    ed4e:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed50:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed52:	f000 f949 	bl	efe8 <crcu16>
        crc = crcu32(final_counts[i], crc);
    ed56:	9c0e      	ldr	r4, [sp, #56]	; 0x38
    ed58:	4601      	mov	r1, r0
    ed5a:	b2a0      	uxth	r0, r4
    ed5c:	f000 f944 	bl	efe8 <crcu16>
    ed60:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed62:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed64:	f000 f940 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    ed68:	9c06      	ldr	r4, [sp, #24]
    ed6a:	4601      	mov	r1, r0
    ed6c:	b2a0      	uxth	r0, r4
    ed6e:	f000 f93b 	bl	efe8 <crcu16>
    ed72:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed74:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed76:	f000 f937 	bl	efe8 <crcu16>
        crc = crcu32(final_counts[i], crc);
    ed7a:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
    ed7c:	4601      	mov	r1, r0
    ed7e:	b2a0      	uxth	r0, r4
    ed80:	f000 f932 	bl	efe8 <crcu16>
    ed84:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed86:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed88:	f000 f92e 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    ed8c:	9c07      	ldr	r4, [sp, #28]
    ed8e:	4601      	mov	r1, r0
    ed90:	b2a0      	uxth	r0, r4
    ed92:	f000 f929 	bl	efe8 <crcu16>
    ed96:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ed98:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ed9a:	f000 f925 	bl	efe8 <crcu16>
        crc = crcu32(final_counts[i], crc);
    ed9e:	9c10      	ldr	r4, [sp, #64]	; 0x40
    eda0:	4601      	mov	r1, r0
    eda2:	b2a0      	uxth	r0, r4
    eda4:	f000 f920 	bl	efe8 <crcu16>
    eda8:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    edaa:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    edac:	f000 f91c 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    edb0:	9c08      	ldr	r4, [sp, #32]
    edb2:	4601      	mov	r1, r0
    edb4:	b2a0      	uxth	r0, r4
    edb6:	f000 f917 	bl	efe8 <crcu16>
    edba:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    edbc:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    edbe:	f000 f913 	bl	efe8 <crcu16>
        crc = crcu32(final_counts[i], crc);
    edc2:	9c11      	ldr	r4, [sp, #68]	; 0x44
    edc4:	4601      	mov	r1, r0
    edc6:	b2a0      	uxth	r0, r4
    edc8:	f000 f90e 	bl	efe8 <crcu16>
    edcc:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    edce:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    edd0:	f000 f90a 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    edd4:	9c09      	ldr	r4, [sp, #36]	; 0x24
    edd6:	4601      	mov	r1, r0
    edd8:	b2a0      	uxth	r0, r4
    edda:	f000 f905 	bl	efe8 <crcu16>
    edde:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ede0:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ede2:	f000 f901 	bl	efe8 <crcu16>
        crc = crcu32(final_counts[i], crc);
    ede6:	9c12      	ldr	r4, [sp, #72]	; 0x48
    ede8:	4601      	mov	r1, r0
    edea:	b2a0      	uxth	r0, r4
    edec:	f000 f8fc 	bl	efe8 <crcu16>
    edf0:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    edf2:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    edf4:	f000 f8f8 	bl	efe8 <crcu16>
        crc = crcu32(track_counts[i], crc);
    edf8:	9c0a      	ldr	r4, [sp, #40]	; 0x28
    edfa:	4601      	mov	r1, r0
    edfc:	b2a0      	uxth	r0, r4
    edfe:	f000 f8f3 	bl	efe8 <crcu16>
    ee02:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    ee04:	0c20      	lsrs	r0, r4, #16
    return crcu16((ee_u16)newval, crc);
    ee06:	b013      	add	sp, #76	; 0x4c
    ee08:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ee0c:	f000 b8ec 	b.w	efe8 <crcu16>

0000ee10 <core_state_transition>:
   end state is returned (either specific format determined or invalid).
*/

enum CORE_STATE
core_state_transition(ee_u8 **instr, ee_u32 *transition_count)
{
    ee10:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    ee_u8 *         str = *instr;
    ee14:	6803      	ldr	r3, [r0, #0]
    ee16:	4686      	mov	lr, r0
    ee_u8           NEXT_SYMBOL;
    enum CORE_STATE state = CORE_START;
    for (; *str && state != CORE_INVALID; str++)
    ee18:	781e      	ldrb	r6, [r3, #0]
    ee1a:	2e00      	cmp	r6, #0
    ee1c:	f000 80cb 	beq.w	efb6 <core_state_transition+0x1a6>
    ee20:	f101 0c04 	add.w	ip, r1, #4
    ee24:	f101 020c 	add.w	r2, r1, #12
    ee28:	f101 0414 	add.w	r4, r1, #20
    ee2c:	f101 0810 	add.w	r8, r1, #16
    ee30:	3301      	adds	r3, #1
    ee32:	2000      	movs	r0, #0
    {
        NEXT_SYMBOL = *str;
        if (NEXT_SYMBOL == ',') /* end of this input */
    ee34:	b2f7      	uxtb	r7, r6
    ee36:	2f2c      	cmp	r7, #44	; 0x2c
    ee38:	d10b      	bne.n	ee52 <core_state_transition+0x42>
    ee3a:	e0c2      	b.n	efc2 <core_state_transition+0x1b2>
    for (; *str && state != CORE_INVALID; str++)
    ee3c:	f813 6b01 	ldrb.w	r6, [r3], #1
    ee40:	2801      	cmp	r0, #1
    ee42:	bf18      	it	ne
    ee44:	2e00      	cmpne	r6, #0
    ee46:	f000 80bb 	beq.w	efc0 <core_state_transition+0x1b0>
        if (NEXT_SYMBOL == ',') /* end of this input */
    ee4a:	b2f7      	uxtb	r7, r6
    ee4c:	2f2c      	cmp	r7, #44	; 0x2c
    ee4e:	f000 80b8 	beq.w	efc2 <core_state_transition+0x1b2>
        {
            str++;
            break;
        }
        switch (state)
    ee52:	2807      	cmp	r0, #7
    ee54:	d8f2      	bhi.n	ee3c <core_state_transition+0x2c>
    ee56:	e8df f000 	tbb	[pc, r0]
    ee5a:	1011      	.short	0x1011
    ee5c:	54453621 	.word	0x54453621
    ee60:	6504      	.short	0x6504
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    ee62:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
    ee66:	698d      	ldr	r5, [r1, #24]
    ee68:	b2c0      	uxtb	r0, r0
    ee6a:	3501      	adds	r5, #1
    ee6c:	2809      	cmp	r0, #9
    ee6e:	f04f 0007 	mov.w	r0, #7
    ee72:	618d      	str	r5, [r1, #24]
    ee74:	bf88      	it	hi
    ee76:	2001      	movhi	r0, #1
    ee78:	e7e0      	b.n	ee3c <core_state_transition+0x2c>
    ee7a:	e7df      	b.n	ee3c <core_state_transition+0x2c>
    ee7c:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
    ee80:	b2c0      	uxtb	r0, r0
        {
            case CORE_START:
                if (ee_isdigit(NEXT_SYMBOL))
    ee82:	280a      	cmp	r0, #10
    ee84:	d35c      	bcc.n	ef40 <core_state_transition+0x130>
                {
                    state = CORE_INT;
                }
                else if (NEXT_SYMBOL == '+' || NEXT_SYMBOL == '-')
    ee86:	2f2b      	cmp	r7, #43	; 0x2b
    ee88:	f04f 0002 	mov.w	r0, #2
    ee8c:	bf18      	it	ne
    ee8e:	2f2d      	cmpne	r7, #45	; 0x2d
    ee90:	d057      	beq.n	ef42 <core_state_transition+0x132>
    ee92:	2f2e      	cmp	r7, #46	; 0x2e
    ee94:	f040 8088 	bne.w	efa8 <core_state_transition+0x198>
    ee98:	2005      	movs	r0, #5
    ee9a:	e052      	b.n	ef42 <core_state_transition+0x132>
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    ee9c:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
    eea0:	b2c0      	uxtb	r0, r0
                    transition_count[CORE_INVALID]++;
                }
                transition_count[CORE_START]++;
                break;
            case CORE_S1:
                if (ee_isdigit(NEXT_SYMBOL))
    eea2:	2809      	cmp	r0, #9
    eea4:	d958      	bls.n	ef58 <core_state_transition+0x148>
    eea6:	6888      	ldr	r0, [r1, #8]
    eea8:	2f2e      	cmp	r7, #46	; 0x2e
    eeaa:	f100 0001 	add.w	r0, r0, #1
    eeae:	6088      	str	r0, [r1, #8]
    eeb0:	f04f 0001 	mov.w	r0, #1
    eeb4:	bf08      	it	eq
    eeb6:	2005      	moveq	r0, #5
    for (; *str && state != CORE_INVALID; str++)
    eeb8:	f813 6b01 	ldrb.w	r6, [r3], #1
    eebc:	2801      	cmp	r0, #1
    eebe:	bf18      	it	ne
    eec0:	2e00      	cmpne	r6, #0
    eec2:	d1c2      	bne.n	ee4a <core_state_transition+0x3a>
    eec4:	e07c      	b.n	efc0 <core_state_transition+0x1b0>
                    state = CORE_INVALID;
                    transition_count[CORE_FLOAT]++;
                }
                break;
            case CORE_S2:
                if (NEXT_SYMBOL == '+' || NEXT_SYMBOL == '-')
    eec6:	2f2d      	cmp	r7, #45	; 0x2d
    eec8:	bf18      	it	ne
    eeca:	2f2b      	cmpne	r7, #43	; 0x2b
    eecc:	d17d      	bne.n	efca <core_state_transition+0x1ba>
                {
                    state = CORE_EXPONENT;
                    transition_count[CORE_S2]++;
    eece:	6810      	ldr	r0, [r2, #0]
    eed0:	3001      	adds	r0, #1
    eed2:	6010      	str	r0, [r2, #0]
    eed4:	2006      	movs	r0, #6
    for (; *str && state != CORE_INVALID; str++)
    eed6:	f813 6b01 	ldrb.w	r6, [r3], #1
    eeda:	2801      	cmp	r0, #1
    eedc:	bf18      	it	ne
    eede:	2e00      	cmpne	r6, #0
    eee0:	d1b3      	bne.n	ee4a <core_state_transition+0x3a>
    eee2:	e06d      	b.n	efc0 <core_state_transition+0x1b0>
                if (NEXT_SYMBOL == '.')
    eee4:	2f2e      	cmp	r7, #46	; 0x2e
    eee6:	d143      	bne.n	ef70 <core_state_transition+0x160>
                    transition_count[CORE_INT]++;
    eee8:	f8d8 0000 	ldr.w	r0, [r8]
    eeec:	3001      	adds	r0, #1
    eeee:	f8c8 0000 	str.w	r0, [r8]
    eef2:	2005      	movs	r0, #5
    for (; *str && state != CORE_INVALID; str++)
    eef4:	f813 6b01 	ldrb.w	r6, [r3], #1
    eef8:	2801      	cmp	r0, #1
    eefa:	bf18      	it	ne
    eefc:	2e00      	cmpne	r6, #0
    eefe:	d1a4      	bne.n	ee4a <core_state_transition+0x3a>
    ef00:	e05e      	b.n	efc0 <core_state_transition+0x1b0>
                if (NEXT_SYMBOL == 'E' || NEXT_SYMBOL == 'e')
    ef02:	f046 0020 	orr.w	r0, r6, #32
    ef06:	b2c0      	uxtb	r0, r0
    ef08:	2865      	cmp	r0, #101	; 0x65
    ef0a:	d13f      	bne.n	ef8c <core_state_transition+0x17c>
                    transition_count[CORE_FLOAT]++;
    ef0c:	6820      	ldr	r0, [r4, #0]
    ef0e:	3001      	adds	r0, #1
    ef10:	6020      	str	r0, [r4, #0]
    ef12:	2003      	movs	r0, #3
    for (; *str && state != CORE_INVALID; str++)
    ef14:	f813 6b01 	ldrb.w	r6, [r3], #1
    ef18:	2801      	cmp	r0, #1
    ef1a:	bf18      	it	ne
    ef1c:	2e00      	cmpne	r6, #0
    ef1e:	f47f af94 	bne.w	ee4a <core_state_transition+0x3a>
    ef22:	e04d      	b.n	efc0 <core_state_transition+0x1b0>
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    ef24:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
    ef28:	b2c0      	uxtb	r0, r0
                    state = CORE_INVALID;
                    transition_count[CORE_EXPONENT]++;
                }
                break;
            case CORE_SCIENTIFIC:
                if (!ee_isdigit(NEXT_SYMBOL))
    ef2a:	280a      	cmp	r0, #10
    ef2c:	d252      	bcs.n	efd4 <core_state_transition+0x1c4>
    ef2e:	2007      	movs	r0, #7
    for (; *str && state != CORE_INVALID; str++)
    ef30:	f813 6b01 	ldrb.w	r6, [r3], #1
    ef34:	2801      	cmp	r0, #1
    ef36:	bf18      	it	ne
    ef38:	2e00      	cmpne	r6, #0
    ef3a:	f47f af86 	bne.w	ee4a <core_state_transition+0x3a>
    ef3e:	e03f      	b.n	efc0 <core_state_transition+0x1b0>
    ef40:	2004      	movs	r0, #4
                transition_count[CORE_START]++;
    ef42:	680d      	ldr	r5, [r1, #0]
    ef44:	3501      	adds	r5, #1
    ef46:	600d      	str	r5, [r1, #0]
    for (; *str && state != CORE_INVALID; str++)
    ef48:	f813 6b01 	ldrb.w	r6, [r3], #1
    ef4c:	2801      	cmp	r0, #1
    ef4e:	bf18      	it	ne
    ef50:	2e00      	cmpne	r6, #0
    ef52:	f47f af7a 	bne.w	ee4a <core_state_transition+0x3a>
    ef56:	e033      	b.n	efc0 <core_state_transition+0x1b0>
                    transition_count[CORE_S1]++;
    ef58:	6888      	ldr	r0, [r1, #8]
    ef5a:	3001      	adds	r0, #1
    ef5c:	6088      	str	r0, [r1, #8]
    ef5e:	2004      	movs	r0, #4
    for (; *str && state != CORE_INVALID; str++)
    ef60:	f813 6b01 	ldrb.w	r6, [r3], #1
    ef64:	2801      	cmp	r0, #1
    ef66:	bf18      	it	ne
    ef68:	2e00      	cmpne	r6, #0
    ef6a:	f47f af6e 	bne.w	ee4a <core_state_transition+0x3a>
    ef6e:	e027      	b.n	efc0 <core_state_transition+0x1b0>
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    ef70:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
    ef74:	b2c0      	uxtb	r0, r0
                else if (!ee_isdigit(NEXT_SYMBOL))
    ef76:	2809      	cmp	r0, #9
    ef78:	d829      	bhi.n	efce <core_state_transition+0x1be>
    ef7a:	2004      	movs	r0, #4
    for (; *str && state != CORE_INVALID; str++)
    ef7c:	f813 6b01 	ldrb.w	r6, [r3], #1
    ef80:	2801      	cmp	r0, #1
    ef82:	bf18      	it	ne
    ef84:	2e00      	cmpne	r6, #0
    ef86:	f47f af60 	bne.w	ee4a <core_state_transition+0x3a>
    ef8a:	e019      	b.n	efc0 <core_state_transition+0x1b0>
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    ef8c:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
    ef90:	b2c0      	uxtb	r0, r0
                else if (!ee_isdigit(NEXT_SYMBOL))
    ef92:	2809      	cmp	r0, #9
    ef94:	d81d      	bhi.n	efd2 <core_state_transition+0x1c2>
    ef96:	2005      	movs	r0, #5
    for (; *str && state != CORE_INVALID; str++)
    ef98:	f813 6b01 	ldrb.w	r6, [r3], #1
    ef9c:	2801      	cmp	r0, #1
    ef9e:	bf18      	it	ne
    efa0:	2e00      	cmpne	r6, #0
    efa2:	f47f af52 	bne.w	ee4a <core_state_transition+0x3a>
    efa6:	e00b      	b.n	efc0 <core_state_transition+0x1b0>
                    transition_count[CORE_INVALID]++;
    efa8:	f8dc 0000 	ldr.w	r0, [ip]
    efac:	3001      	adds	r0, #1
    efae:	f8cc 0000 	str.w	r0, [ip]
    efb2:	2001      	movs	r0, #1
    efb4:	e7c5      	b.n	ef42 <core_state_transition+0x132>
    efb6:	2000      	movs	r0, #0
                break;
            default:
                break;
        }
    }
    *instr = str;
    efb8:	f8ce 3000 	str.w	r3, [lr]
    return state;
    efbc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    *instr = str;
    efc0:	3b01      	subs	r3, #1
    efc2:	f8ce 3000 	str.w	r3, [lr]
    return state;
    efc6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    efca:	4694      	mov	ip, r2
    efcc:	e002      	b.n	efd4 <core_state_transition+0x1c4>
    efce:	46c4      	mov	ip, r8
    efd0:	e000      	b.n	efd4 <core_state_transition+0x1c4>
    efd2:	46a4      	mov	ip, r4
    efd4:	f8dc 0000 	ldr.w	r0, [ip]
    efd8:	3001      	adds	r0, #1
    efda:	f8cc 0000 	str.w	r0, [ip]
    efde:	2001      	movs	r0, #1
    *instr = str;
    efe0:	f8ce 3000 	str.w	r3, [lr]
    return state;
    efe4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000efe8 <crcu16>:
{
    efe8:	b510      	push	{r4, lr}
    efea:	f24a 0e01 	movw	lr, #40961	; 0xa001
    efee:	f6cf 7eff 	movt	lr, #65535	; 0xffff
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    eff2:	ea81 0c00 	eor.w	ip, r1, r0
        if (carry)
    eff6:	ea8e 0251 	eor.w	r2, lr, r1, lsr #1
    crc = crcu8((ee_u8)(newval), crc);
    effa:	b2c4      	uxtb	r4, r0
        if (carry)
    effc:	ea5f 73cc 	movs.w	r3, ip, lsl #31
    f000:	bf08      	it	eq
    f002:	084a      	lsreq	r2, r1, #1
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f004:	ea82 0154 	eor.w	r1, r2, r4, lsr #1
        crc >>= 1;
    f008:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f00c:	07c9      	lsls	r1, r1, #31
    f00e:	bf18      	it	ne
    f010:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f014:	ea82 0194 	eor.w	r1, r2, r4, lsr #2
        crc >>= 1;
    f018:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f01c:	07c9      	lsls	r1, r1, #31
    f01e:	bf18      	it	ne
    f020:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f024:	ea82 01d4 	eor.w	r1, r2, r4, lsr #3
        crc >>= 1;
    f028:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f02c:	07c9      	lsls	r1, r1, #31
    f02e:	bf18      	it	ne
    f030:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f034:	ea82 1114 	eor.w	r1, r2, r4, lsr #4
        crc >>= 1;
    f038:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f03c:	07c9      	lsls	r1, r1, #31
    f03e:	bf18      	it	ne
    f040:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f044:	ea82 1154 	eor.w	r1, r2, r4, lsr #5
        crc >>= 1;
    f048:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f04c:	07c9      	lsls	r1, r1, #31
    f04e:	bf18      	it	ne
    f050:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f054:	ea82 1194 	eor.w	r1, r2, r4, lsr #6
        crc >>= 1;
    f058:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f05c:	07c9      	lsls	r1, r1, #31
    f05e:	bf18      	it	ne
    f060:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f064:	f002 0101 	and.w	r1, r2, #1
        crc >>= 1;
    f068:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f06c:	ebb1 1fd4 	cmp.w	r1, r4, lsr #7
    f070:	bf18      	it	ne
    f072:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f076:	ea82 2110 	eor.w	r1, r2, r0, lsr #8
        crc >>= 1;
    f07a:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f07e:	07c9      	lsls	r1, r1, #31
    f080:	bf18      	it	ne
    f082:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f086:	ea82 2150 	eor.w	r1, r2, r0, lsr #9
        crc >>= 1;
    f08a:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f08e:	07c9      	lsls	r1, r1, #31
    f090:	bf18      	it	ne
    f092:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f096:	ea82 2190 	eor.w	r1, r2, r0, lsr #10
        crc >>= 1;
    f09a:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f09e:	07c9      	lsls	r1, r1, #31
    f0a0:	bf18      	it	ne
    f0a2:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f0a6:	ea82 21d0 	eor.w	r1, r2, r0, lsr #11
        crc >>= 1;
    f0aa:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f0ae:	07c9      	lsls	r1, r1, #31
    f0b0:	bf18      	it	ne
    f0b2:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f0b6:	ea82 3110 	eor.w	r1, r2, r0, lsr #12
        crc >>= 1;
    f0ba:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f0be:	07c9      	lsls	r1, r1, #31
    f0c0:	bf18      	it	ne
    f0c2:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f0c6:	ea82 3150 	eor.w	r1, r2, r0, lsr #13
        crc >>= 1;
    f0ca:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f0ce:	07c9      	lsls	r1, r1, #31
    f0d0:	bf18      	it	ne
    f0d2:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f0d6:	ea82 3190 	eor.w	r1, r2, r0, lsr #14
        crc >>= 1;
    f0da:	f3c2 024e 	ubfx	r2, r2, #1, #15
        if (carry)
    f0de:	07c9      	lsls	r1, r1, #31
    f0e0:	bf18      	it	ne
    f0e2:	ea82 020e 	eorne.w	r2, r2, lr
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f0e6:	f002 0301 	and.w	r3, r2, #1
        crc >>= 1;
    f0ea:	f3c2 014e 	ubfx	r1, r2, #1, #15
    f0ee:	f24a 0201 	movw	r2, #40961	; 0xa001
        if (carry)
    f0f2:	ebb3 3fd0 	cmp.w	r3, r0, lsr #15
    f0f6:	bf18      	it	ne
    f0f8:	4051      	eorne	r1, r2
    return crc;
    f0fa:	4608      	mov	r0, r1
    f0fc:	bd10      	pop	{r4, pc}

0000f0fe <clock>:
  return dummy;
    f0fe:	f240 0130 	movw	r1, #48	; 0x30
    f102:	f2c1 0100 	movt	r1, #4096	; 0x1000
    f106:	6808      	ldr	r0, [r1, #0]
    f108:	6849      	ldr	r1, [r1, #4]
    f10a:	4770      	bx	lr

0000f10c <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    f10c:	b083      	sub	sp, #12
    f10e:	b580      	push	{r7, lr}
    f110:	b083      	sub	sp, #12
    f112:	4684      	mov	ip, r0
    f114:	a805      	add	r0, sp, #20
    f116:	c00e      	stmia	r0!, {r1, r2, r3}
  va_list va;
  va_start(va, format);
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    f118:	f24f 1045 	movw	r0, #61765	; 0xf145
    f11c:	f10d 0e14 	add.w	lr, sp, #20
    f120:	f2c0 0000 	movt	r0, #0
    f124:	f10d 0107 	add.w	r1, sp, #7
    f128:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    f12c:	4663      	mov	r3, ip
  va_start(va, format);
    f12e:	f8cd e008 	str.w	lr, [sp, #8]
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    f132:	f8cd e000 	str.w	lr, [sp]
    f136:	f000 f80b 	bl	f150 <_vsnprintf>
  va_end(va);
  return ret;
    f13a:	b003      	add	sp, #12
    f13c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    f140:	b003      	add	sp, #12
    f142:	4770      	bx	lr

0000f144 <_out_char>:
  if (character) {
    f144:	2800      	cmp	r0, #0
    _putchar(character);
    f146:	bf18      	it	ne
    f148:	f001 bc4f 	bne.w	109ea <_putchar>
}
    f14c:	4770      	bx	lr
    f14e:	d4d4      	bmi.n	f0fa <crcu16+0x112>

0000f150 <_vsnprintf>:
{
    f150:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    f154:	b099      	sub	sp, #100	; 0x64
    f156:	4688      	mov	r8, r1
    f158:	9922      	ldr	r1, [sp, #136]	; 0x88
  if (!buffer) {
    f15a:	f64f 4b35 	movw	fp, #64565	; 0xfc35
    f15e:	461e      	mov	r6, r3
    f160:	4617      	mov	r7, r2
    f162:	f2c0 0b00 	movt	fp, #0
    f166:	f04f 0a00 	mov.w	sl, #0
    f16a:	910f      	str	r1, [sp, #60]	; 0x3c
    f16c:	f1b8 0f00 	cmp.w	r8, #0
    f170:	bf18      	it	ne
    f172:	4683      	movne	fp, r0
    f174:	e9cd b20d 	strd	fp, r2, [sp, #52]	; 0x34
  while (*format)
    f178:	1c74      	adds	r4, r6, #1
    f17a:	f106 0902 	add.w	r9, r6, #2
    f17e:	7830      	ldrb	r0, [r6, #0]
    f180:	2800      	cmp	r0, #0
    f182:	f000 854b 	beq.w	fc1c <_vsnprintf+0xacc>
    f186:	bf00      	nop
    f188:	2825      	cmp	r0, #37	; 0x25
    f18a:	d00f      	beq.n	f1ac <_vsnprintf+0x5c>
      out(*format, buffer, idx++, maxlen);
    f18c:	4641      	mov	r1, r8
    f18e:	4652      	mov	r2, sl
    f190:	463b      	mov	r3, r7
    f192:	f10a 0501 	add.w	r5, sl, #1
    f196:	47d8      	blx	fp
      format++;
    f198:	3601      	adds	r6, #1
      continue;
    f19a:	3401      	adds	r4, #1
    f19c:	f109 0901 	add.w	r9, r9, #1
    f1a0:	46aa      	mov	sl, r5
  while (*format)
    f1a2:	7830      	ldrb	r0, [r6, #0]
    f1a4:	2800      	cmp	r0, #0
    f1a6:	d1ef      	bne.n	f188 <_vsnprintf+0x38>
    f1a8:	f000 bd38 	b.w	fc1c <_vsnprintf+0xacc>
    f1ac:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
    f1ae:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
    f1b2:	f04f 0800 	mov.w	r8, #0
      switch (*format) {
    f1b6:	7820      	ldrb	r0, [r4, #0]
    f1b8:	f1a0 0220 	sub.w	r2, r0, #32
    f1bc:	2a10      	cmp	r2, #16
    f1be:	d90b      	bls.n	f1d8 <_vsnprintf+0x88>
    f1c0:	e020      	b.n	f204 <_vsnprintf+0xb4>
    f1c2:	bf00      	nop
    f1c4:	ea48 0801 	orr.w	r8, r8, r1
    } while (n);
    f1c8:	3401      	adds	r4, #1
    f1ca:	f109 0901 	add.w	r9, r9, #1
      switch (*format) {
    f1ce:	7820      	ldrb	r0, [r4, #0]
    f1d0:	f1a0 0220 	sub.w	r2, r0, #32
    f1d4:	2a10      	cmp	r2, #16
    f1d6:	d815      	bhi.n	f204 <_vsnprintf+0xb4>
    f1d8:	2101      	movs	r1, #1
    f1da:	e8df f002 	tbb	[pc, r2]
    f1de:	130c      	.short	0x130c
    f1e0:	13130a13 	.word	0x13130a13
    f1e4:	13131313 	.word	0x13131313
    f1e8:	10130e13 	.word	0x10130e13
    f1ec:	00091313 	.word	0x00091313
    f1f0:	e7e8      	b.n	f1c4 <_vsnprintf+0x74>
    f1f2:	2110      	movs	r1, #16
    f1f4:	e7e6      	b.n	f1c4 <_vsnprintf+0x74>
    f1f6:	2108      	movs	r1, #8
    f1f8:	e7e4      	b.n	f1c4 <_vsnprintf+0x74>
    f1fa:	2104      	movs	r1, #4
    f1fc:	e7e2      	b.n	f1c4 <_vsnprintf+0x74>
    f1fe:	2102      	movs	r1, #2
    f200:	e7e0      	b.n	f1c4 <_vsnprintf+0x74>
    f202:	bf00      	nop
  return (ch >= '0') && (ch <= '9');
    f204:	f1a0 0130 	sub.w	r1, r0, #48	; 0x30
    f208:	b2c9      	uxtb	r1, r1
    if (_is_digit(*format)) {
    f20a:	2909      	cmp	r1, #9
    f20c:	f200 8090 	bhi.w	f330 <_vsnprintf+0x1e0>
    f210:	f04f 0b00 	mov.w	fp, #0
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f214:	eb0b 018b 	add.w	r1, fp, fp, lsl #2
    f218:	0049      	lsls	r1, r1, #1
    f21a:	fa51 f180 	uxtab	r1, r1, r0
  while (_is_digit(**str)) {
    f21e:	f899 0000 	ldrb.w	r0, [r9]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f222:	f1a1 0b30 	sub.w	fp, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f226:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
    f22a:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f22c:	2a0a      	cmp	r2, #10
    f22e:	d22d      	bcs.n	f28c <_vsnprintf+0x13c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f230:	eb0b 018b 	add.w	r1, fp, fp, lsl #2
    f234:	eb00 0141 	add.w	r1, r0, r1, lsl #1
  while (_is_digit(**str)) {
    f238:	f899 0001 	ldrb.w	r0, [r9, #1]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f23c:	f1a1 0b30 	sub.w	fp, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f240:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
    f244:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f246:	2a09      	cmp	r2, #9
    f248:	f200 8137 	bhi.w	f4ba <_vsnprintf+0x36a>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f24c:	eb0b 018b 	add.w	r1, fp, fp, lsl #2
    f250:	eb00 0141 	add.w	r1, r0, r1, lsl #1
  while (_is_digit(**str)) {
    f254:	f899 0002 	ldrb.w	r0, [r9, #2]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f258:	f1a1 0b30 	sub.w	fp, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f25c:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
    f260:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f262:	2a09      	cmp	r2, #9
    f264:	f200 8139 	bhi.w	f4da <_vsnprintf+0x38a>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f268:	eb0b 018b 	add.w	r1, fp, fp, lsl #2
    f26c:	eb00 0141 	add.w	r1, r0, r1, lsl #1
  while (_is_digit(**str)) {
    f270:	f899 0003 	ldrb.w	r0, [r9, #3]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f274:	f1a1 0b30 	sub.w	fp, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f278:	f1a0 0130 	sub.w	r1, r0, #48	; 0x30
    f27c:	b2c9      	uxtb	r1, r1
  while (_is_digit(**str)) {
    f27e:	290a      	cmp	r1, #10
    f280:	f109 0904 	add.w	r9, r9, #4
    f284:	d3c6      	bcc.n	f214 <_vsnprintf+0xc4>
    if (*format == '.') {
    f286:	f1a9 0901 	sub.w	r9, r9, #1
    f28a:	bf00      	nop
    f28c:	282e      	cmp	r0, #46	; 0x2e
    f28e:	d177      	bne.n	f380 <_vsnprintf+0x230>
      if (_is_digit(*format)) {
    f290:	4649      	mov	r1, r9
    f292:	f811 0f01 	ldrb.w	r0, [r1, #1]!
      flags |= FLAGS_PRECISION;
    f296:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
  return (ch >= '0') && (ch <= '9');
    f29a:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
    f29e:	b2d2      	uxtb	r2, r2
      if (_is_digit(*format)) {
    f2a0:	2a09      	cmp	r2, #9
    f2a2:	d858      	bhi.n	f356 <_vsnprintf+0x206>
  while (_is_digit(**str)) {
    f2a4:	f109 0902 	add.w	r9, r9, #2
    f2a8:	f04f 0e00 	mov.w	lr, #0
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f2ac:	eb0e 018e 	add.w	r1, lr, lr, lsl #2
    f2b0:	0049      	lsls	r1, r1, #1
    f2b2:	fa51 f180 	uxtab	r1, r1, r0
  while (_is_digit(**str)) {
    f2b6:	f899 0000 	ldrb.w	r0, [r9]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f2ba:	f1a1 0e30 	sub.w	lr, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f2be:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
    f2c2:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f2c4:	2a0a      	cmp	r2, #10
    f2c6:	d25d      	bcs.n	f384 <_vsnprintf+0x234>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f2c8:	eb0e 018e 	add.w	r1, lr, lr, lsl #2
    f2cc:	eb00 0141 	add.w	r1, r0, r1, lsl #1
  while (_is_digit(**str)) {
    f2d0:	f899 0001 	ldrb.w	r0, [r9, #1]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f2d4:	f1a1 0e30 	sub.w	lr, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f2d8:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
    f2dc:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f2de:	2a09      	cmp	r2, #9
    f2e0:	f200 8158 	bhi.w	f594 <_vsnprintf+0x444>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f2e4:	eb0e 018e 	add.w	r1, lr, lr, lsl #2
    f2e8:	eb00 0141 	add.w	r1, r0, r1, lsl #1
  while (_is_digit(**str)) {
    f2ec:	f899 0002 	ldrb.w	r0, [r9, #2]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f2f0:	f1a1 0e30 	sub.w	lr, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f2f4:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
    f2f8:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f2fa:	2a09      	cmp	r2, #9
    f2fc:	f200 8153 	bhi.w	f5a6 <_vsnprintf+0x456>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f300:	eb0e 018e 	add.w	r1, lr, lr, lsl #2
    f304:	eb00 0141 	add.w	r1, r0, r1, lsl #1
  while (_is_digit(**str)) {
    f308:	f899 0003 	ldrb.w	r0, [r9, #3]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f30c:	f1a1 0e30 	sub.w	lr, r1, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f310:	f1a0 0130 	sub.w	r1, r0, #48	; 0x30
    f314:	b2c9      	uxtb	r1, r1
  while (_is_digit(**str)) {
    f316:	290a      	cmp	r1, #10
    f318:	f109 0904 	add.w	r9, r9, #4
    f31c:	d3c6      	bcc.n	f2ac <_vsnprintf+0x15c>
    switch (*format) {
    f31e:	f1a9 0901 	sub.w	r9, r9, #1
    f322:	3868      	subs	r0, #104	; 0x68
    f324:	ea4f 0070 	mov.w	r0, r0, ror #1
    f328:	2809      	cmp	r0, #9
    f32a:	d930      	bls.n	f38e <_vsnprintf+0x23e>
    f32c:	e046      	b.n	f3bc <_vsnprintf+0x26c>
    f32e:	bf00      	nop
    else if (*format == '*') {
    f330:	282a      	cmp	r0, #42	; 0x2a
    f332:	d11f      	bne.n	f374 <_vsnprintf+0x224>
      const int w = va_arg(va, int);
    f334:	f855 0b04 	ldr.w	r0, [r5], #4
      if (w < 0) {
    f338:	2800      	cmp	r0, #0
    f33a:	4683      	mov	fp, r0
    f33c:	bf48      	it	mi
    f33e:	f1c0 0b00 	rsbmi	fp, r0, #0
    f342:	2800      	cmp	r0, #0
    if (*format == '.') {
    f344:	f814 0f01 	ldrb.w	r0, [r4, #1]!
      if (w < 0) {
    f348:	bf48      	it	mi
    f34a:	f048 0802 	orrmi.w	r8, r8, #2
    f34e:	46a1      	mov	r9, r4
    if (*format == '.') {
    f350:	282e      	cmp	r0, #46	; 0x2e
    f352:	d09d      	beq.n	f290 <_vsnprintf+0x140>
    f354:	e014      	b.n	f380 <_vsnprintf+0x230>
      else if (*format == '*') {
    f356:	282a      	cmp	r0, #42	; 0x2a
    f358:	f040 80b5 	bne.w	f4c6 <_vsnprintf+0x376>
        const int prec = (int)va_arg(va, int);
    f35c:	f855 1b04 	ldr.w	r1, [r5], #4
    switch (*format) {
    f360:	f819 0f02 	ldrb.w	r0, [r9, #2]!
        precision = prec > 0 ? (unsigned int)prec : 0U;
    f364:	ea21 7ee1 	bic.w	lr, r1, r1, asr #31
    switch (*format) {
    f368:	3868      	subs	r0, #104	; 0x68
    f36a:	ea4f 0070 	mov.w	r0, r0, ror #1
    f36e:	2809      	cmp	r0, #9
    f370:	d90d      	bls.n	f38e <_vsnprintf+0x23e>
    f372:	e023      	b.n	f3bc <_vsnprintf+0x26c>
    f374:	f04f 0b00 	mov.w	fp, #0
    f378:	46a1      	mov	r9, r4
    if (*format == '.') {
    f37a:	282e      	cmp	r0, #46	; 0x2e
    f37c:	f43f af88 	beq.w	f290 <_vsnprintf+0x140>
    f380:	f04f 0e00 	mov.w	lr, #0
    switch (*format) {
    f384:	3868      	subs	r0, #104	; 0x68
    f386:	ea4f 0070 	mov.w	r0, r0, ror #1
    f38a:	2809      	cmp	r0, #9
    f38c:	d816      	bhi.n	f3bc <_vsnprintf+0x26c>
    f38e:	e8df f000 	tbb	[pc, r0]
    f392:	1108      	.short	0x1108
    f394:	15151583 	.word	0x15151583
    f398:	05151505 	.word	0x05151505
    f39c:	f448 7880 	orr.w	r8, r8, #256	; 0x100
    f3a0:	e00a      	b.n	f3b8 <_vsnprintf+0x268>
        if (*format == 'h') {
    f3a2:	4649      	mov	r1, r9
    f3a4:	f811 0f01 	ldrb.w	r0, [r1, #1]!
    f3a8:	2868      	cmp	r0, #104	; 0x68
    f3aa:	f040 80de 	bne.w	f56a <_vsnprintf+0x41a>
          flags |= FLAGS_CHAR;
    f3ae:	f048 08c0 	orr.w	r8, r8, #192	; 0xc0
    f3b2:	e078      	b.n	f4a6 <_vsnprintf+0x356>
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    f3b4:	f448 7800 	orr.w	r8, r8, #512	; 0x200
    f3b8:	f109 0901 	add.w	r9, r9, #1
    switch (*format) {
    f3bc:	f899 0000 	ldrb.w	r0, [r9]
    f3c0:	f1a0 0225 	sub.w	r2, r0, #37	; 0x25
    f3c4:	2a53      	cmp	r2, #83	; 0x53
    f3c6:	f200 80e1 	bhi.w	f58c <_vsnprintf+0x43c>
    f3ca:	2108      	movs	r1, #8
    f3cc:	2710      	movs	r7, #16
    f3ce:	e8df f012 	tbh	[pc, r2, lsl #1]
    f3d2:	00f3      	.short	0x00f3
    f3d4:	00dd00dd 	.word	0x00dd00dd
    f3d8:	00dd00dd 	.word	0x00dd00dd
    f3dc:	00dd00dd 	.word	0x00dd00dd
    f3e0:	00dd00dd 	.word	0x00dd00dd
    f3e4:	00dd00dd 	.word	0x00dd00dd
    f3e8:	00dd00dd 	.word	0x00dd00dd
    f3ec:	00dd00dd 	.word	0x00dd00dd
    f3f0:	00dd00dd 	.word	0x00dd00dd
    f3f4:	00dd00dd 	.word	0x00dd00dd
    f3f8:	00dd00dd 	.word	0x00dd00dd
    f3fc:	00dd00dd 	.word	0x00dd00dd
    f400:	00dd00dd 	.word	0x00dd00dd
    f404:	00dd00dd 	.word	0x00dd00dd
    f408:	00dd00dd 	.word	0x00dd00dd
    f40c:	00dd00dd 	.word	0x00dd00dd
    f410:	00ab00dd 	.word	0x00ab00dd
    f414:	00a9008a 	.word	0x00a9008a
    f418:	00dd00dd 	.word	0x00dd00dd
    f41c:	00dd00dd 	.word	0x00dd00dd
    f420:	00dd00dd 	.word	0x00dd00dd
    f424:	00dd00dd 	.word	0x00dd00dd
    f428:	00dd00dd 	.word	0x00dd00dd
    f42c:	00dd00dd 	.word	0x00dd00dd
    f430:	00dd00dd 	.word	0x00dd00dd
    f434:	00dd00dd 	.word	0x00dd00dd
    f438:	00dd0057 	.word	0x00dd0057
    f43c:	00dd00dd 	.word	0x00dd00dd
    f440:	00dd00dd 	.word	0x00dd00dd
    f444:	00dd00dd 	.word	0x00dd00dd
    f448:	00dd00dd 	.word	0x00dd00dd
    f44c:	01d60104 	.word	0x01d60104
    f450:	00ab0054 	.word	0x00ab0054
    f454:	00a9008a 	.word	0x00a9008a
    f458:	005400dd 	.word	0x005400dd
    f45c:	00dd00dd 	.word	0x00dd00dd
    f460:	00dd00dd 	.word	0x00dd00dd
    f464:	010500dd 	.word	0x010500dd
    f468:	00dd01df 	.word	0x00dd01df
    f46c:	01f100dd 	.word	0x01f100dd
    f470:	005400dd 	.word	0x005400dd
    f474:	00dd00dd 	.word	0x00dd00dd
    f478:	0057      	.short	0x0057
          flags &= ~FLAGS_HASH;   // no hash for dec format
    f47a:	f028 0810 	bic.w	r8, r8, #16
    f47e:	270a      	movs	r7, #10
        if (*format == 'X') {
    f480:	2858      	cmp	r0, #88	; 0x58
    f482:	bf08      	it	eq
    f484:	f048 0820 	orreq.w	r8, r8, #32
        if ((*format != 'i') && (*format != 'd')) {
    f488:	2864      	cmp	r0, #100	; 0x64
    f48a:	f000 80aa 	beq.w	f5e2 <_vsnprintf+0x492>
    f48e:	2869      	cmp	r0, #105	; 0x69
    f490:	4639      	mov	r1, r7
    f492:	f000 80a6 	beq.w	f5e2 <_vsnprintf+0x492>
    f496:	e0a1      	b.n	f5dc <_vsnprintf+0x48c>
        if (*format == 'l') {
    f498:	4649      	mov	r1, r9
    f49a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
    f49e:	286c      	cmp	r0, #108	; 0x6c
    f4a0:	d16c      	bne.n	f57c <_vsnprintf+0x42c>
          flags |= FLAGS_LONG_LONG;
    f4a2:	f448 7840 	orr.w	r8, r8, #768	; 0x300
    f4a6:	f109 0902 	add.w	r9, r9, #2
    switch (*format) {
    f4aa:	f899 0000 	ldrb.w	r0, [r9]
    f4ae:	f1a0 0225 	sub.w	r2, r0, #37	; 0x25
    f4b2:	2a53      	cmp	r2, #83	; 0x53
    f4b4:	f67f af89 	bls.w	f3ca <_vsnprintf+0x27a>
    f4b8:	e068      	b.n	f58c <_vsnprintf+0x43c>
    if (*format == '.') {
    f4ba:	f109 0901 	add.w	r9, r9, #1
    f4be:	282e      	cmp	r0, #46	; 0x2e
    f4c0:	f43f aee6 	beq.w	f290 <_vsnprintf+0x140>
    f4c4:	e75c      	b.n	f380 <_vsnprintf+0x230>
    f4c6:	f04f 0e00 	mov.w	lr, #0
    f4ca:	4689      	mov	r9, r1
    switch (*format) {
    f4cc:	3868      	subs	r0, #104	; 0x68
    f4ce:	ea4f 0070 	mov.w	r0, r0, ror #1
    f4d2:	2809      	cmp	r0, #9
    f4d4:	f67f af5b 	bls.w	f38e <_vsnprintf+0x23e>
    f4d8:	e770      	b.n	f3bc <_vsnprintf+0x26c>
    if (*format == '.') {
    f4da:	f109 0902 	add.w	r9, r9, #2
    f4de:	282e      	cmp	r0, #46	; 0x2e
    f4e0:	f43f aed6 	beq.w	f290 <_vsnprintf+0x140>
    f4e4:	e74c      	b.n	f380 <_vsnprintf+0x230>
        if (*format == 'F') flags |= FLAGS_UPPERCASE;
    f4e6:	2846      	cmp	r0, #70	; 0x46
        idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
    f4e8:	f105 0007 	add.w	r0, r5, #7
    f4ec:	f020 0007 	bic.w	r0, r0, #7
    f4f0:	4601      	mov	r1, r0
    f4f2:	6846      	ldr	r6, [r0, #4]
    f4f4:	f851 0b08 	ldr.w	r0, [r1], #8
    f4f8:	4652      	mov	r2, sl
    f4fa:	910f      	str	r1, [sp, #60]	; 0x3c
        if (*format == 'F') flags |= FLAGS_UPPERCASE;
    f4fc:	bf08      	it	eq
    f4fe:	f048 0820 	orreq.w	r8, r8, #32
        idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
    f502:	9000      	str	r0, [sp, #0]
    f504:	e9cd eb02 	strd	lr, fp, [sp, #8]
    f508:	f8cd 8010 	str.w	r8, [sp, #16]
    f50c:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
    f510:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    f514:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    f516:	4658      	mov	r0, fp
    f518:	4641      	mov	r1, r8
    f51a:	463b      	mov	r3, r7
    f51c:	9601      	str	r6, [sp, #4]
    f51e:	f000 fb8b 	bl	fc38 <_ftoa>
    f522:	e2c2      	b.n	faaa <_vsnprintf+0x95a>
        if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
    f524:	f448 6800 	orr.w	r8, r8, #2048	; 0x800
        if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
    f528:	f040 0002 	orr.w	r0, r0, #2
    f52c:	2847      	cmp	r0, #71	; 0x47
        idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
    f52e:	f105 0007 	add.w	r0, r5, #7
    f532:	f020 0007 	bic.w	r0, r0, #7
    f536:	4601      	mov	r1, r0
        if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
    f538:	bf08      	it	eq
    f53a:	f048 0820 	orreq.w	r8, r8, #32
        idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
    f53e:	6846      	ldr	r6, [r0, #4]
    f540:	f851 0b08 	ldr.w	r0, [r1], #8
    f544:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    f546:	9000      	str	r0, [sp, #0]
    f548:	e9cd eb02 	strd	lr, fp, [sp, #8]
    f54c:	f8cd 8010 	str.w	r8, [sp, #16]
    f550:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
    f554:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    f558:	910f      	str	r1, [sp, #60]	; 0x3c
    f55a:	4658      	mov	r0, fp
    f55c:	4641      	mov	r1, r8
    f55e:	4652      	mov	r2, sl
    f560:	463b      	mov	r3, r7
    f562:	9601      	str	r6, [sp, #4]
    f564:	f000 feb2 	bl	102cc <_etoa>
    f568:	e29f      	b.n	faaa <_vsnprintf+0x95a>
    f56a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
    f56e:	4689      	mov	r9, r1
    switch (*format) {
    f570:	f1a0 0225 	sub.w	r2, r0, #37	; 0x25
    f574:	2a53      	cmp	r2, #83	; 0x53
    f576:	f67f af28 	bls.w	f3ca <_vsnprintf+0x27a>
    f57a:	e007      	b.n	f58c <_vsnprintf+0x43c>
    f57c:	f448 7880 	orr.w	r8, r8, #256	; 0x100
    f580:	4689      	mov	r9, r1
    f582:	f1a0 0225 	sub.w	r2, r0, #37	; 0x25
    f586:	2a53      	cmp	r2, #83	; 0x53
    f588:	f67f af1f 	bls.w	f3ca <_vsnprintf+0x27a>
        out(*format, buffer, idx++, maxlen);
    f58c:	f10a 0401 	add.w	r4, sl, #1
    f590:	950f      	str	r5, [sp, #60]	; 0x3c
    f592:	e015      	b.n	f5c0 <_vsnprintf+0x470>
    switch (*format) {
    f594:	f109 0901 	add.w	r9, r9, #1
    f598:	3868      	subs	r0, #104	; 0x68
    f59a:	ea4f 0070 	mov.w	r0, r0, ror #1
    f59e:	2809      	cmp	r0, #9
    f5a0:	f67f aef5 	bls.w	f38e <_vsnprintf+0x23e>
    f5a4:	e70a      	b.n	f3bc <_vsnprintf+0x26c>
    f5a6:	f109 0902 	add.w	r9, r9, #2
    f5aa:	3868      	subs	r0, #104	; 0x68
    f5ac:	ea4f 0070 	mov.w	r0, r0, ror #1
    f5b0:	2809      	cmp	r0, #9
    f5b2:	f67f aeec 	bls.w	f38e <_vsnprintf+0x23e>
    f5b6:	e701      	b.n	f3bc <_vsnprintf+0x26c>
    f5b8:	950f      	str	r5, [sp, #60]	; 0x3c
        out('%', buffer, idx++, maxlen);
    f5ba:	f10a 0401 	add.w	r4, sl, #1
    f5be:	2025      	movs	r0, #37	; 0x25
    f5c0:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    f5c4:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    f5c6:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
    f5ca:	4641      	mov	r1, r8
    f5cc:	4652      	mov	r2, sl
    f5ce:	463b      	mov	r3, r7
    f5d0:	47d8      	blx	fp
    f5d2:	46a2      	mov	sl, r4
    f5d4:	f109 0601 	add.w	r6, r9, #1
    f5d8:	e5ce      	b.n	f178 <_vsnprintf+0x28>
    f5da:	2102      	movs	r1, #2
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
    f5dc:	f028 080c 	bic.w	r8, r8, #12
    f5e0:	460f      	mov	r7, r1
        if (flags & FLAGS_PRECISION) {
    f5e2:	ea5f 5148 	movs.w	r1, r8, lsl #21
    f5e6:	bf48      	it	mi
    f5e8:	f028 0801 	bicmi.w	r8, r8, #1
        if ((*format == 'i') || (*format == 'd')) {
    f5ec:	2869      	cmp	r0, #105	; 0x69
    f5ee:	9710      	str	r7, [sp, #64]	; 0x40
    f5f0:	d001      	beq.n	f5f6 <_vsnprintf+0x4a6>
    f5f2:	2864      	cmp	r0, #100	; 0x64
    f5f4:	d111      	bne.n	f61a <_vsnprintf+0x4ca>
          if (flags & FLAGS_LONG_LONG) {
    f5f6:	ea5f 5088 	movs.w	r0, r8, lsl #22
    f5fa:	d41f      	bmi.n	f63c <_vsnprintf+0x4ec>
          else if (flags & FLAGS_LONG) {
    f5fc:	ea5f 50c8 	movs.w	r0, r8, lsl #23
    f600:	d430      	bmi.n	f664 <_vsnprintf+0x514>
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
    f602:	ea5f 6048 	movs.w	r0, r8, lsl #25
    f606:	f100 810e 	bmi.w	f826 <_vsnprintf+0x6d6>
    f60a:	f8d5 c000 	ldr.w	ip, [r5]
    f60e:	ea5f 6008 	movs.w	r0, r8, lsl #24
    f612:	bf48      	it	mi
    f614:	fa0f fc8c 	sxthmi.w	ip, ip
    f618:	e107      	b.n	f82a <_vsnprintf+0x6da>
          if (flags & FLAGS_LONG_LONG) {
    f61a:	ea5f 5088 	movs.w	r0, r8, lsl #22
    f61e:	d457      	bmi.n	f6d0 <_vsnprintf+0x580>
          else if (flags & FLAGS_LONG) {
    f620:	ea5f 50c8 	movs.w	r0, r8, lsl #23
    f624:	f100 8111 	bmi.w	f84a <_vsnprintf+0x6fa>
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
    f628:	ea5f 6048 	movs.w	r0, r8, lsl #25
    f62c:	f100 81fb 	bmi.w	fa26 <_vsnprintf+0x8d6>
    f630:	6828      	ldr	r0, [r5, #0]
    f632:	ea5f 6108 	movs.w	r1, r8, lsl #24
    f636:	bf48      	it	mi
    f638:	b280      	uxthmi	r0, r0
    f63a:	e1f5      	b.n	fa28 <_vsnprintf+0x8d8>
            const long long value = va_arg(va, long long);
    f63c:	1de8      	adds	r0, r5, #7
    f63e:	f020 0007 	bic.w	r0, r0, #7
    f642:	4602      	mov	r2, r0
    f644:	6843      	ldr	r3, [r0, #4]
    f646:	f852 0b08 	ldr.w	r0, [r2], #8
  if (!value) {
    f64a:	ea50 0103 	orrs.w	r1, r0, r3
    f64e:	bf08      	it	eq
    f650:	f028 0810 	biceq.w	r8, r8, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    f654:	2900      	cmp	r1, #0
    f656:	920f      	str	r2, [sp, #60]	; 0x3c
    f658:	d152      	bne.n	f700 <_vsnprintf+0x5b0>
    f65a:	f418 6180 	ands.w	r1, r8, #1024	; 0x400
    f65e:	d04f      	beq.n	f700 <_vsnprintf+0x5b0>
    f660:	2000      	movs	r0, #0
    f662:	e086      	b.n	f772 <_vsnprintf+0x622>
            const long value = va_arg(va, long);
    f664:	f855 cb04 	ldr.w	ip, [r5], #4
  if (!value) {
    f668:	f1bc 0f00 	cmp.w	ip, #0
    f66c:	bf08      	it	eq
    f66e:	f028 0810 	biceq.w	r8, r8, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    f672:	f1bc 0f00 	cmp.w	ip, #0
    f676:	950f      	str	r5, [sp, #60]	; 0x3c
    f678:	d103      	bne.n	f682 <_vsnprintf+0x532>
    f67a:	f418 6080 	ands.w	r0, r8, #1024	; 0x400
    f67e:	f040 80e2 	bne.w	f846 <_vsnprintf+0x6f6>
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    f682:	4660      	mov	r0, ip
    f684:	f008 0120 	and.w	r1, r8, #32
    f688:	f1bc 0f00 	cmp.w	ip, #0
    f68c:	bf48      	it	mi
    f68e:	f1cc 0000 	rsbmi	r0, ip, #0
    f692:	f081 0161 	eor.w	r1, r1, #97	; 0x61
    f696:	9f10      	ldr	r7, [sp, #64]	; 0x40
    f698:	f101 06f6 	add.w	r6, r1, #246	; 0xf6
    f69c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
      value /= base;
    f6a0:	fbb0 f1f7 	udiv	r1, r0, r7
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f6a4:	4633      	mov	r3, r6
    f6a6:	fb01 0517 	mls	r5, r1, r7, r0
    f6aa:	f005 04fe 	and.w	r4, r5, #254	; 0xfe
    f6ae:	2c0a      	cmp	r4, #10
    f6b0:	bf38      	it	cc
    f6b2:	2330      	movcc	r3, #48	; 0x30
    f6b4:	442b      	add	r3, r5
    f6b6:	1c95      	adds	r5, r2, #2
    f6b8:	ac11      	add	r4, sp, #68	; 0x44
    f6ba:	4414      	add	r4, r2
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f6bc:	2d1f      	cmp	r5, #31
    f6be:	f102 0201 	add.w	r2, r2, #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f6c2:	7063      	strb	r3, [r4, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f6c4:	f200 815a 	bhi.w	f97c <_vsnprintf+0x82c>
    f6c8:	42b8      	cmp	r0, r7
    f6ca:	4608      	mov	r0, r1
    f6cc:	d2e8      	bcs.n	f6a0 <_vsnprintf+0x550>
    f6ce:	e155      	b.n	f97c <_vsnprintf+0x82c>
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
    f6d0:	1de8      	adds	r0, r5, #7
    f6d2:	f020 0007 	bic.w	r0, r0, #7
    f6d6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
    f6da:	f8d0 9004 	ldr.w	r9, [r0, #4]
    f6de:	f850 4b08 	ldr.w	r4, [r0], #8
    f6e2:	900f      	str	r0, [sp, #60]	; 0x3c
  if (!value) {
    f6e4:	ea54 0009 	orrs.w	r0, r4, r9
    f6e8:	bf08      	it	eq
    f6ea:	f028 0810 	biceq.w	r8, r8, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    f6ee:	2800      	cmp	r0, #0
    f6f0:	f040 80d8 	bne.w	f8a4 <_vsnprintf+0x754>
    f6f4:	f418 6080 	ands.w	r0, r8, #1024	; 0x400
    f6f8:	f000 80d4 	beq.w	f8a4 <_vsnprintf+0x754>
    f6fc:	2000      	movs	r0, #0
    f6fe:	e0fc      	b.n	f8fa <_vsnprintf+0x7aa>
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    f700:	eb10 70e3 	adds.w	r0, r0, r3, asr #31
    f704:	ea80 74e3 	eor.w	r4, r0, r3, asr #31
    f708:	eb43 70e3 	adc.w	r0, r3, r3, asr #31
    f70c:	ea80 76e3 	eor.w	r6, r0, r3, asr #31
    f710:	f008 0020 	and.w	r0, r8, #32
    f714:	f080 0061 	eor.w	r0, r0, #97	; 0x61
    f718:	e9cd e909 	strd	lr, r9, [sp, #36]	; 0x24
    f71c:	30f6      	adds	r0, #246	; 0xf6
    f71e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
    f722:	9308      	str	r3, [sp, #32]
    f724:	900c      	str	r0, [sp, #48]	; 0x30
    f726:	bf00      	nop
      value /= base;
    f728:	4620      	mov	r0, r4
    f72a:	4631      	mov	r1, r6
    f72c:	463a      	mov	r2, r7
    f72e:	2300      	movs	r3, #0
    f730:	f001 f995 	bl	10a5e <__udivdi3>
    f734:	9f10      	ldr	r7, [sp, #64]	; 0x40
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f736:	ad11      	add	r5, sp, #68	; 0x44
    f738:	fb00 4217 	mls	r2, r0, r7, r4
    f73c:	444d      	add	r5, r9
    f73e:	f002 03fe 	and.w	r3, r2, #254	; 0xfe
    f742:	2b0a      	cmp	r3, #10
    f744:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    f746:	bf38      	it	cc
    f748:	2330      	movcc	r3, #48	; 0x30
    f74a:	441a      	add	r2, r3
    f74c:	f109 0302 	add.w	r3, r9, #2
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f750:	2b1f      	cmp	r3, #31
    f752:	f109 0901 	add.w	r9, r9, #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f756:	706a      	strb	r2, [r5, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f758:	d805      	bhi.n	f766 <_vsnprintf+0x616>
    f75a:	1be2      	subs	r2, r4, r7
    f75c:	f176 0200 	sbcs.w	r2, r6, #0
    f760:	4604      	mov	r4, r0
    f762:	460e      	mov	r6, r1
    f764:	d2e0      	bcs.n	f728 <_vsnprintf+0x5d8>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    f766:	f109 0001 	add.w	r0, r9, #1
    f76a:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
    f76e:	e9dd 3e08 	ldrd	r3, lr, [sp, #32]
    f772:	0fd9      	lsrs	r1, r3, #31
    f774:	aa11      	add	r2, sp, #68	; 0x44
    f776:	e9cd 2000 	strd	r2, r0, [sp]
    f77a:	9102      	str	r1, [sp, #8]
    f77c:	e186      	b.n	fa8c <_vsnprintf+0x93c>
        if (!(flags & FLAGS_LEFT)) {
    f77e:	f018 0602 	ands.w	r6, r8, #2
    f782:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
    f786:	f000 8103 	beq.w	f990 <_vsnprintf+0x840>
    f78a:	f04f 0901 	mov.w	r9, #1
    f78e:	e193      	b.n	fab8 <_vsnprintf+0x968>
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    f790:	f855 1b04 	ldr.w	r1, [r5], #4
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    f794:	f048 0021 	orr.w	r0, r8, #33	; 0x21
  if (!value) {
    f798:	2900      	cmp	r1, #0
    f79a:	bf08      	it	eq
    f79c:	f020 0010 	biceq.w	r0, r0, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    f7a0:	2900      	cmp	r1, #0
    f7a2:	950f      	str	r5, [sp, #60]	; 0x3c
    f7a4:	f040 8112 	bne.w	f9cc <_vsnprintf+0x87c>
    f7a8:	f410 6280 	ands.w	r2, r0, #1024	; 0x400
    f7ac:	f000 810e 	beq.w	f9cc <_vsnprintf+0x87c>
    f7b0:	2100      	movs	r1, #0
    f7b2:	e124      	b.n	f9fe <_vsnprintf+0x8ae>
    f7b4:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
        const char* p = va_arg(va, char*);
    f7b8:	f855 9b04 	ldr.w	r9, [r5], #4
  for (s = str; *s && maxsize--; ++s);
    f7bc:	f899 0000 	ldrb.w	r0, [r9]
    f7c0:	4649      	mov	r1, r9
    f7c2:	2800      	cmp	r0, #0
    f7c4:	950f      	str	r5, [sp, #60]	; 0x3c
    f7c6:	f000 81a4 	beq.w	fb12 <_vsnprintf+0x9c2>
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    f7ca:	4671      	mov	r1, lr
    f7cc:	f1be 0f00 	cmp.w	lr, #0
    f7d0:	bf08      	it	eq
    f7d2:	f04f 31ff 	moveq.w	r1, #4294967295	; 0xffffffff
  for (s = str; *s && maxsize--; ++s);
    f7d6:	f1a1 0c03 	sub.w	ip, r1, #3
    f7da:	1e8a      	subs	r2, r1, #2
    f7dc:	1e4b      	subs	r3, r1, #1
    f7de:	1f0e      	subs	r6, r1, #4
    f7e0:	2500      	movs	r5, #0
    f7e2:	bf00      	nop
    f7e4:	42ab      	cmp	r3, r5
    f7e6:	eb09 0405 	add.w	r4, r9, r5
    f7ea:	f000 818d 	beq.w	fb08 <_vsnprintf+0x9b8>
    f7ee:	7861      	ldrb	r1, [r4, #1]
    f7f0:	2900      	cmp	r1, #0
    f7f2:	f000 8189 	beq.w	fb08 <_vsnprintf+0x9b8>
    f7f6:	42aa      	cmp	r2, r5
    f7f8:	f000 8188 	beq.w	fb0c <_vsnprintf+0x9bc>
    f7fc:	78a1      	ldrb	r1, [r4, #2]
    f7fe:	2900      	cmp	r1, #0
    f800:	f000 8184 	beq.w	fb0c <_vsnprintf+0x9bc>
    f804:	45ac      	cmp	ip, r5
    f806:	f000 8183 	beq.w	fb10 <_vsnprintf+0x9c0>
    f80a:	78e1      	ldrb	r1, [r4, #3]
    f80c:	2900      	cmp	r1, #0
    f80e:	f000 817f 	beq.w	fb10 <_vsnprintf+0x9c0>
    f812:	42ae      	cmp	r6, r5
    f814:	f105 0104 	add.w	r1, r5, #4
    f818:	d003      	beq.n	f822 <_vsnprintf+0x6d2>
    f81a:	7925      	ldrb	r5, [r4, #4]
    f81c:	2d00      	cmp	r5, #0
    f81e:	460d      	mov	r5, r1
    f820:	d1e0      	bne.n	f7e4 <_vsnprintf+0x694>
  return (unsigned int)(s - str);
    f822:	4449      	add	r1, r9
    f824:	e175      	b.n	fb12 <_vsnprintf+0x9c2>
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
    f826:	f895 c000 	ldrb.w	ip, [r5]
  if (!value) {
    f82a:	f1bc 0f00 	cmp.w	ip, #0
    f82e:	bf08      	it	eq
    f830:	f028 0810 	biceq.w	r8, r8, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    f834:	f1bc 0f00 	cmp.w	ip, #0
    f838:	f105 0504 	add.w	r5, r5, #4
    f83c:	950f      	str	r5, [sp, #60]	; 0x3c
    f83e:	d178      	bne.n	f932 <_vsnprintf+0x7e2>
    f840:	f418 6080 	ands.w	r0, r8, #1024	; 0x400
    f844:	d075      	beq.n	f932 <_vsnprintf+0x7e2>
    f846:	2000      	movs	r0, #0
    f848:	e099      	b.n	f97e <_vsnprintf+0x82e>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    f84a:	f855 0b04 	ldr.w	r0, [r5], #4
  if (!value) {
    f84e:	2800      	cmp	r0, #0
    f850:	bf08      	it	eq
    f852:	f028 0810 	biceq.w	r8, r8, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    f856:	950f      	str	r5, [sp, #60]	; 0x3c
    f858:	b918      	cbnz	r0, f862 <_vsnprintf+0x712>
    f85a:	f418 6180 	ands.w	r1, r8, #1024	; 0x400
    f85e:	f040 80ee 	bne.w	fa3e <_vsnprintf+0x8ee>
    f862:	f008 0120 	and.w	r1, r8, #32
    f866:	f081 0161 	eor.w	r1, r1, #97	; 0x61
    f86a:	f101 04f6 	add.w	r4, r1, #246	; 0xf6
    f86e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
    f872:	bf00      	nop
      value /= base;
    f874:	fbb0 f3f7 	udiv	r3, r0, r7
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f878:	4622      	mov	r2, r4
    f87a:	fb03 0617 	mls	r6, r3, r7, r0
    f87e:	f006 05fe 	and.w	r5, r6, #254	; 0xfe
    f882:	2d0a      	cmp	r5, #10
    f884:	bf38      	it	cc
    f886:	2230      	movcc	r2, #48	; 0x30
    f888:	4432      	add	r2, r6
    f88a:	1c8e      	adds	r6, r1, #2
    f88c:	ad11      	add	r5, sp, #68	; 0x44
    f88e:	440d      	add	r5, r1
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f890:	2e1f      	cmp	r6, #31
    f892:	f101 0101 	add.w	r1, r1, #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f896:	706a      	strb	r2, [r5, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f898:	f200 80f2 	bhi.w	fa80 <_vsnprintf+0x930>
    f89c:	42b8      	cmp	r0, r7
    f89e:	4618      	mov	r0, r3
    f8a0:	d2e8      	bcs.n	f874 <_vsnprintf+0x724>
    f8a2:	e0ed      	b.n	fa80 <_vsnprintf+0x930>
    f8a4:	f008 0020 	and.w	r0, r8, #32
    f8a8:	f080 0061 	eor.w	r0, r0, #97	; 0x61
    f8ac:	30f6      	adds	r0, #246	; 0xf6
    f8ae:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
    f8b2:	f8cd e024 	str.w	lr, [sp, #36]	; 0x24
    f8b6:	900c      	str	r0, [sp, #48]	; 0x30
      value /= base;
    f8b8:	4620      	mov	r0, r4
    f8ba:	4649      	mov	r1, r9
    f8bc:	463a      	mov	r2, r7
    f8be:	2300      	movs	r3, #0
    f8c0:	f001 f8cd 	bl	10a5e <__udivdi3>
    f8c4:	9f10      	ldr	r7, [sp, #64]	; 0x40
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f8c6:	ae11      	add	r6, sp, #68	; 0x44
    f8c8:	fb00 4217 	mls	r2, r0, r7, r4
    f8cc:	442e      	add	r6, r5
    f8ce:	f002 03fe 	and.w	r3, r2, #254	; 0xfe
    f8d2:	2b0a      	cmp	r3, #10
    f8d4:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    f8d6:	bf38      	it	cc
    f8d8:	2330      	movcc	r3, #48	; 0x30
    f8da:	441a      	add	r2, r3
    f8dc:	1cab      	adds	r3, r5, #2
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f8de:	2b1f      	cmp	r3, #31
    f8e0:	f105 0501 	add.w	r5, r5, #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f8e4:	7072      	strb	r2, [r6, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f8e6:	d805      	bhi.n	f8f4 <_vsnprintf+0x7a4>
    f8e8:	1be2      	subs	r2, r4, r7
    f8ea:	f179 0200 	sbcs.w	r2, r9, #0
    f8ee:	4604      	mov	r4, r0
    f8f0:	4689      	mov	r9, r1
    f8f2:	d2e1      	bcs.n	f8b8 <_vsnprintf+0x768>
    f8f4:	f8dd e024 	ldr.w	lr, [sp, #36]	; 0x24
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    f8f8:	1c68      	adds	r0, r5, #1
    f8fa:	a911      	add	r1, sp, #68	; 0x44
    f8fc:	e9cd 1000 	strd	r1, r0, [sp]
    f900:	2000      	movs	r0, #0
    f902:	a902      	add	r1, sp, #8
    f904:	e881 4081 	stmia.w	r1, {r0, r7, lr}
    f908:	f8cd b014 	str.w	fp, [sp, #20]
    f90c:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
    f910:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    f912:	990b      	ldr	r1, [sp, #44]	; 0x2c
    f914:	4658      	mov	r0, fp
    f916:	4652      	mov	r2, sl
    f918:	463b      	mov	r3, r7
    f91a:	f8cd 8018 	str.w	r8, [sp, #24]
    f91e:	4688      	mov	r8, r1
    f920:	f000 ff36 	bl	10790 <_ntoa_format>
    f924:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
    f928:	4682      	mov	sl, r0
    f92a:	f109 0601 	add.w	r6, r9, #1
    f92e:	f7ff bc23 	b.w	f178 <_vsnprintf+0x28>
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    f932:	4660      	mov	r0, ip
    f934:	f008 0120 	and.w	r1, r8, #32
    f938:	f1bc 0f00 	cmp.w	ip, #0
    f93c:	bf48      	it	mi
    f93e:	f1cc 0000 	rsbmi	r0, ip, #0
    f942:	f081 0161 	eor.w	r1, r1, #97	; 0x61
    f946:	9f10      	ldr	r7, [sp, #64]	; 0x40
    f948:	f101 06f6 	add.w	r6, r1, #246	; 0xf6
    f94c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
      value /= base;
    f950:	fbb0 f1f7 	udiv	r1, r0, r7
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f954:	4633      	mov	r3, r6
    f956:	fb01 0517 	mls	r5, r1, r7, r0
    f95a:	f005 04fe 	and.w	r4, r5, #254	; 0xfe
    f95e:	2c0a      	cmp	r4, #10
    f960:	bf38      	it	cc
    f962:	2330      	movcc	r3, #48	; 0x30
    f964:	442b      	add	r3, r5
    f966:	1c95      	adds	r5, r2, #2
    f968:	ac11      	add	r4, sp, #68	; 0x44
    f96a:	4414      	add	r4, r2
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f96c:	2d1f      	cmp	r5, #31
    f96e:	f102 0201 	add.w	r2, r2, #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f972:	7063      	strb	r3, [r4, #1]
    f974:	d802      	bhi.n	f97c <_vsnprintf+0x82c>
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f976:	42b8      	cmp	r0, r7
    f978:	4608      	mov	r0, r1
    f97a:	d2e9      	bcs.n	f950 <_vsnprintf+0x800>
    f97c:	1c50      	adds	r0, r2, #1
    f97e:	aa11      	add	r2, sp, #68	; 0x44
    f980:	e9cd 2000 	strd	r2, r0, [sp]
    f984:	9810      	ldr	r0, [sp, #64]	; 0x40
    f986:	ea4f 71dc 	mov.w	r1, ip, lsr #31
    f98a:	9102      	str	r1, [sp, #8]
    f98c:	9003      	str	r0, [sp, #12]
    f98e:	e07e      	b.n	fa8e <_vsnprintf+0x93e>
          while (l++ < width) {
    f990:	f1bb 0f02 	cmp.w	fp, #2
    f994:	f0c0 808e 	bcc.w	fab4 <_vsnprintf+0x964>
    f998:	e9cd 560f 	strd	r5, r6, [sp, #60]	; 0x3c
    f99c:	e9dd 670d 	ldrd	r6, r7, [sp, #52]	; 0x34
    f9a0:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    f9a4:	f10b 0901 	add.w	r9, fp, #1
    f9a8:	f1cb 0500 	rsb	r5, fp, #0
    f9ac:	2400      	movs	r4, #0
    f9ae:	bf00      	nop
            out(' ', buffer, idx++, maxlen);
    f9b0:	eb0a 0204 	add.w	r2, sl, r4
    f9b4:	2020      	movs	r0, #32
    f9b6:	4641      	mov	r1, r8
    f9b8:	463b      	mov	r3, r7
    f9ba:	47b0      	blx	r6
          while (l++ < width) {
    f9bc:	3401      	adds	r4, #1
    f9be:	1928      	adds	r0, r5, r4
    f9c0:	3001      	adds	r0, #1
    f9c2:	d1f5      	bne.n	f9b0 <_vsnprintf+0x860>
    f9c4:	e9dd 560f 	ldrd	r5, r6, [sp, #60]	; 0x3c
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    f9c8:	44a2      	add	sl, r4
    f9ca:	e075      	b.n	fab8 <_vsnprintf+0x968>
    f9cc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f9d0:	f001 060e 	and.w	r6, r1, #14
    f9d4:	2e0a      	cmp	r6, #10
    f9d6:	f04f 0637 	mov.w	r6, #55	; 0x37
      const char digit = (char)(value % base);
    f9da:	f001 030f 	and.w	r3, r1, #15
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f9de:	bf38      	it	cc
    f9e0:	2630      	movcc	r6, #48	; 0x30
    f9e2:	4433      	add	r3, r6
    f9e4:	1c96      	adds	r6, r2, #2
    f9e6:	af11      	add	r7, sp, #68	; 0x44
    f9e8:	18bd      	adds	r5, r7, r2
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f9ea:	2e1f      	cmp	r6, #31
    f9ec:	f102 0201 	add.w	r2, r2, #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    f9f0:	706b      	strb	r3, [r5, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    f9f2:	d803      	bhi.n	f9fc <_vsnprintf+0x8ac>
    f9f4:	290f      	cmp	r1, #15
    f9f6:	ea4f 1111 	mov.w	r1, r1, lsr #4
    f9fa:	d8e9      	bhi.n	f9d0 <_vsnprintf+0x880>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    f9fc:	1c51      	adds	r1, r2, #1
    f9fe:	aa11      	add	r2, sp, #68	; 0x44
    fa00:	e9dd b70d 	ldrd	fp, r7, [sp, #52]	; 0x34
    fa04:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    fa08:	e9cd 2100 	strd	r2, r1, [sp]
    fa0c:	2100      	movs	r1, #0
    fa0e:	9102      	str	r1, [sp, #8]
    fa10:	2110      	movs	r1, #16
    fa12:	2608      	movs	r6, #8
    fa14:	e9cd 1e03 	strd	r1, lr, [sp, #12]
    fa18:	9006      	str	r0, [sp, #24]
    fa1a:	4658      	mov	r0, fp
    fa1c:	4641      	mov	r1, r8
    fa1e:	4652      	mov	r2, sl
    fa20:	463b      	mov	r3, r7
    fa22:	9605      	str	r6, [sp, #20]
    fa24:	e03f      	b.n	faa6 <_vsnprintf+0x956>
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
    fa26:	7828      	ldrb	r0, [r5, #0]
  if (!value) {
    fa28:	2800      	cmp	r0, #0
    fa2a:	bf08      	it	eq
    fa2c:	f028 0810 	biceq.w	r8, r8, #16
    fa30:	f105 0504 	add.w	r5, r5, #4
  if (!(flags & FLAGS_PRECISION) || value) {
    fa34:	950f      	str	r5, [sp, #60]	; 0x3c
    fa36:	b920      	cbnz	r0, fa42 <_vsnprintf+0x8f2>
    fa38:	f418 6180 	ands.w	r1, r8, #1024	; 0x400
    fa3c:	d001      	beq.n	fa42 <_vsnprintf+0x8f2>
    fa3e:	2000      	movs	r0, #0
    fa40:	e01f      	b.n	fa82 <_vsnprintf+0x932>
    fa42:	f008 0120 	and.w	r1, r8, #32
    fa46:	f081 0161 	eor.w	r1, r1, #97	; 0x61
    fa4a:	f101 04f6 	add.w	r4, r1, #246	; 0xf6
    fa4e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
    fa52:	bf00      	nop
      value /= base;
    fa54:	fbb0 f3f7 	udiv	r3, r0, r7
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    fa58:	4622      	mov	r2, r4
    fa5a:	fb03 0617 	mls	r6, r3, r7, r0
    fa5e:	f006 05fe 	and.w	r5, r6, #254	; 0xfe
    fa62:	2d0a      	cmp	r5, #10
    fa64:	bf38      	it	cc
    fa66:	2230      	movcc	r2, #48	; 0x30
    fa68:	4432      	add	r2, r6
    fa6a:	1c8e      	adds	r6, r1, #2
    fa6c:	ad11      	add	r5, sp, #68	; 0x44
    fa6e:	440d      	add	r5, r1
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    fa70:	2e1f      	cmp	r6, #31
    fa72:	f101 0101 	add.w	r1, r1, #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    fa76:	706a      	strb	r2, [r5, #1]
    fa78:	d802      	bhi.n	fa80 <_vsnprintf+0x930>
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    fa7a:	42b8      	cmp	r0, r7
    fa7c:	4618      	mov	r0, r3
    fa7e:	d2e9      	bcs.n	fa54 <_vsnprintf+0x904>
    fa80:	1c48      	adds	r0, r1, #1
    fa82:	a911      	add	r1, sp, #68	; 0x44
    fa84:	e9cd 1000 	strd	r1, r0, [sp]
    fa88:	2000      	movs	r0, #0
    fa8a:	9002      	str	r0, [sp, #8]
    fa8c:	9703      	str	r7, [sp, #12]
    fa8e:	e9cd eb04 	strd	lr, fp, [sp, #16]
    fa92:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
    fa96:	990b      	ldr	r1, [sp, #44]	; 0x2c
    fa98:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    fa9a:	4658      	mov	r0, fp
    fa9c:	4652      	mov	r2, sl
    fa9e:	463b      	mov	r3, r7
    faa0:	f8cd 8018 	str.w	r8, [sp, #24]
    faa4:	4688      	mov	r8, r1
    faa6:	f000 fe73 	bl	10790 <_ntoa_format>
    faaa:	4682      	mov	sl, r0
    faac:	f109 0601 	add.w	r6, r9, #1
    fab0:	f7ff bb62 	b.w	f178 <_vsnprintf+0x28>
    fab4:	f04f 0902 	mov.w	r9, #2
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    fab8:	f815 0b04 	ldrb.w	r0, [r5], #4
    fabc:	990b      	ldr	r1, [sp, #44]	; 0x2c
    fabe:	e9dd 730d 	ldrd	r7, r3, [sp, #52]	; 0x34
    fac2:	4652      	mov	r2, sl
    fac4:	f10a 0401 	add.w	r4, sl, #1
    fac8:	47b8      	blx	r7
        if (flags & FLAGS_LEFT) {
    faca:	950f      	str	r5, [sp, #60]	; 0x3c
    facc:	b19e      	cbz	r6, faf6 <_vsnprintf+0x9a6>
    face:	45d9      	cmp	r9, fp
    fad0:	d211      	bcs.n	faf6 <_vsnprintf+0x9a6>
          while (l++ < width) {
    fad2:	ebab 0509 	sub.w	r5, fp, r9
    fad6:	e9dd b70d 	ldrd	fp, r7, [sp, #52]	; 0x34
    fada:	e9dd 980a 	ldrd	r9, r8, [sp, #40]	; 0x28
    fade:	bf00      	nop
            out(' ', buffer, idx++, maxlen);
    fae0:	2020      	movs	r0, #32
    fae2:	4641      	mov	r1, r8
    fae4:	4622      	mov	r2, r4
    fae6:	463b      	mov	r3, r7
    fae8:	f104 0a01 	add.w	sl, r4, #1
    faec:	47d8      	blx	fp
          while (l++ < width) {
    faee:	3d01      	subs	r5, #1
    faf0:	4654      	mov	r4, sl
    faf2:	d1f5      	bne.n	fae0 <_vsnprintf+0x990>
    faf4:	e56e      	b.n	f5d4 <_vsnprintf+0x484>
    faf6:	e9dd 980a 	ldrd	r9, r8, [sp, #40]	; 0x28
    fafa:	e9dd b70d 	ldrd	fp, r7, [sp, #52]	; 0x34
    fafe:	46a2      	mov	sl, r4
    fb00:	f109 0601 	add.w	r6, r9, #1
    fb04:	f7ff bb38 	b.w	f178 <_vsnprintf+0x28>
  return (unsigned int)(s - str);
    fb08:	1c61      	adds	r1, r4, #1
    fb0a:	e002      	b.n	fb12 <_vsnprintf+0x9c2>
    fb0c:	1ca1      	adds	r1, r4, #2
    fb0e:	e000      	b.n	fb12 <_vsnprintf+0x9c2>
    fb10:	1ce1      	adds	r1, r4, #3
    fb12:	eba1 0209 	sub.w	r2, r1, r9
        if (flags & FLAGS_PRECISION) {
    fb16:	f408 6380 	and.w	r3, r8, #1024	; 0x400
    fb1a:	4572      	cmp	r2, lr
    fb1c:	4671      	mov	r1, lr
    fb1e:	bf38      	it	cc
    fb20:	4611      	movcc	r1, r2
    fb22:	2b00      	cmp	r3, #0
    fb24:	bf08      	it	eq
    fb26:	4611      	moveq	r1, r2
        if (!(flags & FLAGS_LEFT)) {
    fb28:	f018 0202 	ands.w	r2, r8, #2
    fb2c:	9210      	str	r2, [sp, #64]	; 0x40
    fb2e:	d124      	bne.n	fb7a <_vsnprintf+0xa2a>
          while (l++ < width) {
    fb30:	4559      	cmp	r1, fp
    fb32:	d221      	bcs.n	fb78 <_vsnprintf+0xa28>
    fb34:	e9dd 870d 	ldrd	r8, r7, [sp, #52]	; 0x34
    fb38:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
    fb3a:	f10b 0001 	add.w	r0, fp, #1
    fb3e:	ebab 0501 	sub.w	r5, fp, r1
    fb42:	2400      	movs	r4, #0
    fb44:	e9cd 3e08 	strd	r3, lr, [sp, #32]
    fb48:	900c      	str	r0, [sp, #48]	; 0x30
    fb4a:	bf00      	nop
            out(' ', buffer, idx++, maxlen);
    fb4c:	eb0a 0204 	add.w	r2, sl, r4
    fb50:	2020      	movs	r0, #32
    fb52:	4631      	mov	r1, r6
    fb54:	463b      	mov	r3, r7
    fb56:	47c0      	blx	r8
          while (l++ < width) {
    fb58:	3401      	adds	r4, #1
    fb5a:	42a5      	cmp	r5, r4
    fb5c:	d1f6      	bne.n	fb4c <_vsnprintf+0x9fc>
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    fb5e:	f899 0000 	ldrb.w	r0, [r9]
    fb62:	e9dd 3e08 	ldrd	r3, lr, [sp, #32]
    fb66:	44a2      	add	sl, r4
    fb68:	46b0      	mov	r8, r6
    fb6a:	b958      	cbnz	r0, fb84 <_vsnprintf+0xa34>
    fb6c:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
    fb70:	4656      	mov	r6, sl
        if (flags & FLAGS_LEFT) {
    fb72:	9810      	ldr	r0, [sp, #64]	; 0x40
    fb74:	bbc0      	cbnz	r0, fbe8 <_vsnprintf+0xa98>
    fb76:	e04a      	b.n	fc0e <_vsnprintf+0xabe>
    fb78:	3101      	adds	r1, #1
    fb7a:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    fb7e:	910c      	str	r1, [sp, #48]	; 0x30
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    fb80:	2800      	cmp	r0, #0
    fb82:	d0f3      	beq.n	fb6c <_vsnprintf+0xa1c>
    fb84:	b1cb      	cbz	r3, fbba <_vsnprintf+0xa6a>
    fb86:	f109 0401 	add.w	r4, r9, #1
    fb8a:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
    fb8e:	bf00      	nop
    fb90:	f1be 0f00 	cmp.w	lr, #0
    fb94:	d025      	beq.n	fbe2 <_vsnprintf+0xa92>
          out(*(p++), buffer, idx++, maxlen);
    fb96:	e9dd 730d 	ldrd	r7, r3, [sp, #52]	; 0x34
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    fb9a:	f1ae 0e01 	sub.w	lr, lr, #1
          out(*(p++), buffer, idx++, maxlen);
    fb9e:	b2c0      	uxtb	r0, r0
    fba0:	4641      	mov	r1, r8
    fba2:	4652      	mov	r2, sl
    fba4:	f10a 0601 	add.w	r6, sl, #1
    fba8:	4675      	mov	r5, lr
    fbaa:	47b8      	blx	r7
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    fbac:	f814 0b01 	ldrb.w	r0, [r4], #1
    fbb0:	46ae      	mov	lr, r5
    fbb2:	2800      	cmp	r0, #0
    fbb4:	46b2      	mov	sl, r6
    fbb6:	d1eb      	bne.n	fb90 <_vsnprintf+0xa40>
    fbb8:	e014      	b.n	fbe4 <_vsnprintf+0xa94>
    fbba:	f1a9 0401 	sub.w	r4, r9, #1
    fbbe:	e9dd 750d 	ldrd	r7, r5, [sp, #52]	; 0x34
    fbc2:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
    fbc6:	bf00      	nop
          out(*(p++), buffer, idx++, maxlen);
    fbc8:	b2c0      	uxtb	r0, r0
    fbca:	4641      	mov	r1, r8
    fbcc:	4652      	mov	r2, sl
    fbce:	462b      	mov	r3, r5
    fbd0:	f10a 0601 	add.w	r6, sl, #1
    fbd4:	47b8      	blx	r7
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    fbd6:	78a0      	ldrb	r0, [r4, #2]
    fbd8:	3401      	adds	r4, #1
    fbda:	2800      	cmp	r0, #0
    fbdc:	46b2      	mov	sl, r6
    fbde:	d1f3      	bne.n	fbc8 <_vsnprintf+0xa78>
    fbe0:	e000      	b.n	fbe4 <_vsnprintf+0xa94>
    fbe2:	4656      	mov	r6, sl
        if (flags & FLAGS_LEFT) {
    fbe4:	9810      	ldr	r0, [sp, #64]	; 0x40
    fbe6:	b190      	cbz	r0, fc0e <_vsnprintf+0xabe>
    fbe8:	980c      	ldr	r0, [sp, #48]	; 0x30
    fbea:	4558      	cmp	r0, fp
    fbec:	d20f      	bcs.n	fc0e <_vsnprintf+0xabe>
          while (l++ < width) {
    fbee:	ebab 0400 	sub.w	r4, fp, r0
    fbf2:	e9dd b70d 	ldrd	fp, r7, [sp, #52]	; 0x34
    fbf6:	bf00      	nop
            out(' ', buffer, idx++, maxlen);
    fbf8:	2020      	movs	r0, #32
    fbfa:	4641      	mov	r1, r8
    fbfc:	4632      	mov	r2, r6
    fbfe:	463b      	mov	r3, r7
    fc00:	f106 0a01 	add.w	sl, r6, #1
    fc04:	47d8      	blx	fp
          while (l++ < width) {
    fc06:	3c01      	subs	r4, #1
    fc08:	4656      	mov	r6, sl
    fc0a:	d1f5      	bne.n	fbf8 <_vsnprintf+0xaa8>
    fc0c:	e4e2      	b.n	f5d4 <_vsnprintf+0x484>
    fc0e:	e9dd b70d 	ldrd	fp, r7, [sp, #52]	; 0x34
    fc12:	46b2      	mov	sl, r6
    fc14:	f109 0601 	add.w	r6, r9, #1
    fc18:	f7ff baae 	b.w	f178 <_vsnprintf+0x28>
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    fc1c:	4652      	mov	r2, sl
    fc1e:	2000      	movs	r0, #0
    fc20:	4641      	mov	r1, r8
    fc22:	463b      	mov	r3, r7
    fc24:	45ba      	cmp	sl, r7
    fc26:	bf28      	it	cs
    fc28:	1e7a      	subcs	r2, r7, #1
    fc2a:	47d8      	blx	fp
  return (int)idx;
    fc2c:	4650      	mov	r0, sl
    fc2e:	b019      	add	sp, #100	; 0x64
    fc30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0000fc34 <_out_null>:
}
    fc34:	4770      	bx	lr
    fc36:	d4d4      	bmi.n	fbe2 <_vsnprintf+0xa92>

0000fc38 <_ftoa>:
{
    fc38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    fc3c:	b095      	sub	sp, #84	; 0x54
    fc3e:	e9dd 7b1e 	ldrd	r7, fp, [sp, #120]	; 0x78
    fc42:	461e      	mov	r6, r3
    fc44:	4688      	mov	r8, r1
    fc46:	4681      	mov	r9, r0
    fc48:	e9dd 4521 	ldrd	r4, r5, [sp, #132]	; 0x84
    fc4c:	4692      	mov	sl, r2
  if (value != value)
    fc4e:	4638      	mov	r0, r7
    fc50:	4659      	mov	r1, fp
    fc52:	463a      	mov	r2, r7
    fc54:	465b      	mov	r3, fp
    fc56:	f7fc fef1 	bl	ca3c <__aeabi_dcmpun>
    fc5a:	2800      	cmp	r0, #0
    fc5c:	d159      	bne.n	fd12 <_ftoa+0xda>
  if (value < -DBL_MAX)
    fc5e:	4638      	mov	r0, r7
    fc60:	4659      	mov	r1, fp
    fc62:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    fc66:	f46f 1380 	mvn.w	r3, #1048576	; 0x100000
    fc6a:	f7fc fe63 	bl	c934 <__ledf2>
    fc6e:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
    fc72:	f300 8090 	bgt.w	fd96 <_ftoa+0x15e>
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
    fc76:	f005 0b02 	and.w	fp, r5, #2
    fc7a:	2c05      	cmp	r4, #5
    fc7c:	4654      	mov	r4, sl
    fc7e:	d313      	bcc.n	fca8 <_ftoa+0x70>
    fc80:	4628      	mov	r0, r5
    fc82:	f015 0001 	ands.w	r0, r5, #1
    fc86:	4654      	mov	r4, sl
    fc88:	d10e      	bne.n	fca8 <_ftoa+0x70>
    fc8a:	f1bb 0f00 	cmp.w	fp, #0
    fc8e:	4654      	mov	r4, sl
    fc90:	d10a      	bne.n	fca8 <_ftoa+0x70>
    for (size_t i = len; i < width; i++) {
    fc92:	9821      	ldr	r0, [sp, #132]	; 0x84
    fc94:	4652      	mov	r2, sl
    fc96:	1f07      	subs	r7, r0, #4
      out(' ', buffer, idx++, maxlen);
    fc98:	2020      	movs	r0, #32
    fc9a:	4641      	mov	r1, r8
    fc9c:	4633      	mov	r3, r6
    fc9e:	1c54      	adds	r4, r2, #1
    fca0:	47c8      	blx	r9
    for (size_t i = len; i < width; i++) {
    fca2:	3f01      	subs	r7, #1
    fca4:	4622      	mov	r2, r4
    fca6:	d1f7      	bne.n	fc98 <_ftoa+0x60>
    fca8:	9d21      	ldr	r5, [sp, #132]	; 0x84
    out(buf[--len], buffer, idx++, maxlen);
    fcaa:	202d      	movs	r0, #45	; 0x2d
    fcac:	4641      	mov	r1, r8
    fcae:	4622      	mov	r2, r4
    fcb0:	4633      	mov	r3, r6
    fcb2:	f8cd a030 	str.w	sl, [sp, #48]	; 0x30
    fcb6:	1c67      	adds	r7, r4, #1
    fcb8:	47c8      	blx	r9
    fcba:	2069      	movs	r0, #105	; 0x69
    fcbc:	4641      	mov	r1, r8
    fcbe:	463a      	mov	r2, r7
    fcc0:	4633      	mov	r3, r6
    fcc2:	f104 0a02 	add.w	sl, r4, #2
    fcc6:	47c8      	blx	r9
    fcc8:	206e      	movs	r0, #110	; 0x6e
    fcca:	4641      	mov	r1, r8
    fccc:	4652      	mov	r2, sl
    fcce:	4633      	mov	r3, r6
    fcd0:	1ce7      	adds	r7, r4, #3
    fcd2:	47c8      	blx	r9
    fcd4:	2066      	movs	r0, #102	; 0x66
    fcd6:	4641      	mov	r1, r8
    fcd8:	463a      	mov	r2, r7
    fcda:	4633      	mov	r3, r6
    fcdc:	3404      	adds	r4, #4
    fcde:	47c8      	blx	r9
  if (flags & FLAGS_LEFT) {
    fce0:	f1bb 0f00 	cmp.w	fp, #0
    fce4:	f000 82ec 	beq.w	102c0 <_ftoa+0x688>
    fce8:	f8dd b030 	ldr.w	fp, [sp, #48]	; 0x30
    fcec:	eba4 000b 	sub.w	r0, r4, fp
    fcf0:	42a8      	cmp	r0, r5
    fcf2:	f080 82e5 	bcs.w	102c0 <_ftoa+0x688>
    fcf6:	46aa      	mov	sl, r5
    while (idx - start_idx < width) {
    fcf8:	f1cb 0500 	rsb	r5, fp, #0
      out(' ', buffer, idx++, maxlen);
    fcfc:	2020      	movs	r0, #32
    fcfe:	4641      	mov	r1, r8
    fd00:	4622      	mov	r2, r4
    fd02:	4633      	mov	r3, r6
    fd04:	1c67      	adds	r7, r4, #1
    fd06:	47c8      	blx	r9
    while (idx - start_idx < width) {
    fd08:	19e8      	adds	r0, r5, r7
    fd0a:	4550      	cmp	r0, sl
    fd0c:	463c      	mov	r4, r7
    fd0e:	d3f5      	bcc.n	fcfc <_ftoa+0xc4>
    fd10:	e2d2      	b.n	102b8 <_ftoa+0x680>
    fd12:	4628      	mov	r0, r5
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
    fd14:	f005 0502 	and.w	r5, r5, #2
    fd18:	4621      	mov	r1, r4
    fd1a:	2c04      	cmp	r4, #4
    fd1c:	4654      	mov	r4, sl
    fd1e:	d30f      	bcc.n	fd40 <_ftoa+0x108>
    fd20:	f010 0001 	ands.w	r0, r0, #1
    fd24:	4654      	mov	r4, sl
    fd26:	d10b      	bne.n	fd40 <_ftoa+0x108>
    fd28:	4654      	mov	r4, sl
    fd2a:	b94d      	cbnz	r5, fd40 <_ftoa+0x108>
    for (size_t i = len; i < width; i++) {
    fd2c:	1ecf      	subs	r7, r1, #3
    fd2e:	4652      	mov	r2, sl
      out(' ', buffer, idx++, maxlen);
    fd30:	2020      	movs	r0, #32
    fd32:	4641      	mov	r1, r8
    fd34:	4633      	mov	r3, r6
    fd36:	1c54      	adds	r4, r2, #1
    fd38:	47c8      	blx	r9
    for (size_t i = len; i < width; i++) {
    fd3a:	3f01      	subs	r7, #1
    fd3c:	4622      	mov	r2, r4
    fd3e:	d1f7      	bne.n	fd30 <_ftoa+0xf8>
    out(buf[--len], buffer, idx++, maxlen);
    fd40:	206e      	movs	r0, #110	; 0x6e
    fd42:	4641      	mov	r1, r8
    fd44:	4622      	mov	r2, r4
    fd46:	4633      	mov	r3, r6
    fd48:	46d3      	mov	fp, sl
    fd4a:	1c67      	adds	r7, r4, #1
    fd4c:	47c8      	blx	r9
    fd4e:	2061      	movs	r0, #97	; 0x61
    fd50:	4641      	mov	r1, r8
    fd52:	463a      	mov	r2, r7
    fd54:	4633      	mov	r3, r6
    fd56:	f104 0a02 	add.w	sl, r4, #2
    fd5a:	47c8      	blx	r9
    fd5c:	206e      	movs	r0, #110	; 0x6e
    fd5e:	4641      	mov	r1, r8
    fd60:	4652      	mov	r2, sl
    fd62:	4633      	mov	r3, r6
    fd64:	3403      	adds	r4, #3
    fd66:	47c8      	blx	r9
  if (flags & FLAGS_LEFT) {
    fd68:	2d00      	cmp	r5, #0
    fd6a:	f000 82a9 	beq.w	102c0 <_ftoa+0x688>
    fd6e:	f8dd a084 	ldr.w	sl, [sp, #132]	; 0x84
    fd72:	eba4 000b 	sub.w	r0, r4, fp
    fd76:	4550      	cmp	r0, sl
    fd78:	f080 82a2 	bcs.w	102c0 <_ftoa+0x688>
    while (idx - start_idx < width) {
    fd7c:	f1cb 0500 	rsb	r5, fp, #0
      out(' ', buffer, idx++, maxlen);
    fd80:	2020      	movs	r0, #32
    fd82:	4641      	mov	r1, r8
    fd84:	4622      	mov	r2, r4
    fd86:	4633      	mov	r3, r6
    fd88:	1c67      	adds	r7, r4, #1
    fd8a:	47c8      	blx	r9
    while (idx - start_idx < width) {
    fd8c:	19e8      	adds	r0, r5, r7
    fd8e:	4550      	cmp	r0, sl
    fd90:	463c      	mov	r4, r7
    fd92:	d3f5      	bcc.n	fd80 <_ftoa+0x148>
    fd94:	e290      	b.n	102b8 <_ftoa+0x680>
    fd96:	f64f 73ff 	movw	r3, #65535	; 0xffff
    fd9a:	f6c7 73ef 	movt	r3, #32751	; 0x7fef
  if (value > DBL_MAX)
    fd9e:	4638      	mov	r0, r7
    fda0:	4659      	mov	r1, fp
    fda2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    fda6:	f7fc fdc1 	bl	c92c <__gedf2>
    fdaa:	2801      	cmp	r0, #1
    fdac:	db51      	blt.n	fe52 <_ftoa+0x21a>
    return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
    fdae:	f015 0004 	ands.w	r0, r5, #4
    fdb2:	f640 50ed 	movw	r0, #3565	; 0xded
    fdb6:	4629      	mov	r1, r5
    fdb8:	f241 05e2 	movw	r5, #4322	; 0x10e2
    fdbc:	f2c0 0001 	movt	r0, #1
    fdc0:	f2c0 0501 	movt	r5, #1
    fdc4:	f04f 0b03 	mov.w	fp, #3
    fdc8:	bf18      	it	ne
    fdca:	4605      	movne	r5, r0
    fdcc:	bf18      	it	ne
    fdce:	f04f 0b04 	movne.w	fp, #4
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
    fdd2:	f001 0702 	and.w	r7, r1, #2
    fdd6:	07c8      	lsls	r0, r1, #31
    fdd8:	4654      	mov	r4, sl
    fdda:	f8cd a030 	str.w	sl, [sp, #48]	; 0x30
    fdde:	d112      	bne.n	fe06 <_ftoa+0x1ce>
    fde0:	9c0c      	ldr	r4, [sp, #48]	; 0x30
    fde2:	b987      	cbnz	r7, fe06 <_ftoa+0x1ce>
    fde4:	9821      	ldr	r0, [sp, #132]	; 0x84
    fde6:	9c0c      	ldr	r4, [sp, #48]	; 0x30
    fde8:	4583      	cmp	fp, r0
    fdea:	d20c      	bcs.n	fe06 <_ftoa+0x1ce>
    for (size_t i = len; i < width; i++) {
    fdec:	9821      	ldr	r0, [sp, #132]	; 0x84
    fdee:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    fdf0:	eba0 0a0b 	sub.w	sl, r0, fp
      out(' ', buffer, idx++, maxlen);
    fdf4:	2020      	movs	r0, #32
    fdf6:	4641      	mov	r1, r8
    fdf8:	4633      	mov	r3, r6
    fdfa:	1c54      	adds	r4, r2, #1
    fdfc:	47c8      	blx	r9
    for (size_t i = len; i < width; i++) {
    fdfe:	f1ba 0a01 	subs.w	sl, sl, #1
    fe02:	4622      	mov	r2, r4
    fe04:	d1f6      	bne.n	fdf4 <_ftoa+0x1bc>
    fe06:	46ba      	mov	sl, r7
  while (len) {
    fe08:	3d01      	subs	r5, #1
    fe0a:	bf00      	nop
    out(buf[--len], buffer, idx++, maxlen);
    fe0c:	f815 000b 	ldrb.w	r0, [r5, fp]
    fe10:	4622      	mov	r2, r4
    fe12:	4641      	mov	r1, r8
    fe14:	4633      	mov	r3, r6
    fe16:	f1ab 0701 	sub.w	r7, fp, #1
    fe1a:	3401      	adds	r4, #1
    fe1c:	47c8      	blx	r9
  while (len) {
    fe1e:	2f00      	cmp	r7, #0
    fe20:	46bb      	mov	fp, r7
    fe22:	d1f3      	bne.n	fe0c <_ftoa+0x1d4>
  if (flags & FLAGS_LEFT) {
    fe24:	f1ba 0f00 	cmp.w	sl, #0
    fe28:	f8dd a084 	ldr.w	sl, [sp, #132]	; 0x84
    fe2c:	f000 8248 	beq.w	102c0 <_ftoa+0x688>
    fe30:	990c      	ldr	r1, [sp, #48]	; 0x30
    fe32:	1a60      	subs	r0, r4, r1
    fe34:	4550      	cmp	r0, sl
    fe36:	f080 8243 	bcs.w	102c0 <_ftoa+0x688>
    while (idx - start_idx < width) {
    fe3a:	424d      	negs	r5, r1
      out(' ', buffer, idx++, maxlen);
    fe3c:	2020      	movs	r0, #32
    fe3e:	4641      	mov	r1, r8
    fe40:	4622      	mov	r2, r4
    fe42:	4633      	mov	r3, r6
    fe44:	1c67      	adds	r7, r4, #1
    fe46:	47c8      	blx	r9
    while (idx - start_idx < width) {
    fe48:	19e8      	adds	r0, r5, r7
    fe4a:	4550      	cmp	r0, sl
    fe4c:	463c      	mov	r4, r7
    fe4e:	d3f5      	bcc.n	fe3c <_ftoa+0x204>
    fe50:	e232      	b.n	102b8 <_ftoa+0x680>
    fe52:	f64c 5365 	movw	r3, #52581	; 0xcd65
    fe56:	f2c4 13cd 	movt	r3, #16845	; 0x41cd
  if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
    fe5a:	4638      	mov	r0, r7
    fe5c:	4659      	mov	r1, fp
    fe5e:	2200      	movs	r2, #0
    fe60:	f7fc fd64 	bl	c92c <__gedf2>
    fe64:	2800      	cmp	r0, #0
    fe66:	dc5e      	bgt.n	ff26 <_ftoa+0x2ee>
    fe68:	f64c 5365 	movw	r3, #52581	; 0xcd65
    fe6c:	f2cc 13cd 	movt	r3, #49613	; 0xc1cd
    fe70:	4638      	mov	r0, r7
    fe72:	4659      	mov	r1, fp
    fe74:	2200      	movs	r2, #0
    fe76:	2400      	movs	r4, #0
    fe78:	f7fc fd5c 	bl	c934 <__ledf2>
    fe7c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
    fe80:	dd51      	ble.n	ff26 <_ftoa+0x2ee>
  if (value < 0) {
    fe82:	9821      	ldr	r0, [sp, #132]	; 0x84
    fe84:	4659      	mov	r1, fp
    fe86:	900b      	str	r0, [sp, #44]	; 0x2c
    fe88:	4638      	mov	r0, r7
    fe8a:	2200      	movs	r2, #0
    fe8c:	2300      	movs	r3, #0
    fe8e:	f8cd a030 	str.w	sl, [sp, #48]	; 0x30
    fe92:	f7fc fd4f 	bl	c934 <__ledf2>
    fe96:	4682      	mov	sl, r0
    fe98:	2800      	cmp	r0, #0
    fe9a:	f04f 0000 	mov.w	r0, #0
    fe9e:	bf48      	it	mi
    fea0:	2001      	movmi	r0, #1
    fea2:	9007      	str	r0, [sp, #28]
    fea4:	2000      	movs	r0, #0
    fea6:	2100      	movs	r1, #0
    fea8:	463a      	mov	r2, r7
    feaa:	465b      	mov	r3, fp
    feac:	f7fc f92c 	bl	c108 <__aeabi_dsub>
    feb0:	f1ba 0f00 	cmp.w	sl, #0
    feb4:	bf58      	it	pl
    feb6:	4659      	movpl	r1, fp
    feb8:	9109      	str	r1, [sp, #36]	; 0x24
    feba:	bf58      	it	pl
    febc:	4638      	movpl	r0, r7
    febe:	900a      	str	r0, [sp, #40]	; 0x28
  if (!(flags & FLAGS_PRECISION)) {
    fec0:	9822      	ldr	r0, [sp, #136]	; 0x88
    fec2:	f8dd a080 	ldr.w	sl, [sp, #128]	; 0x80
    fec6:	0540      	lsls	r0, r0, #21
    fec8:	bf58      	it	pl
    feca:	f04f 0a06 	movpl.w	sl, #6
  while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
    fece:	f1ba 0f0a 	cmp.w	sl, #10
    fed2:	d347      	bcc.n	ff64 <_ftoa+0x32c>
    fed4:	f1aa 000a 	sub.w	r0, sl, #10
    fed8:	281f      	cmp	r0, #31
    feda:	bf28      	it	cs
    fedc:	201f      	movcs	r0, #31
    fede:	1c42      	adds	r2, r0, #1
    fee0:	a80d      	add	r0, sp, #52	; 0x34
    buf[len++] = '0';
    fee2:	2130      	movs	r1, #48	; 0x30
    fee4:	f000 fed3 	bl	10c8e <memset>
  while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
    fee8:	f1aa 0404 	sub.w	r4, sl, #4
    feec:	f1aa 0203 	sub.w	r2, sl, #3
    fef0:	f1aa 0302 	sub.w	r3, sl, #2
    fef4:	2000      	movs	r0, #0
    fef6:	2704      	movs	r7, #4
    fef8:	eb0a 0500 	add.w	r5, sl, r0
    fefc:	1e69      	subs	r1, r5, #1
    fefe:	2909      	cmp	r1, #9
    ff00:	d923      	bls.n	ff4a <_ftoa+0x312>
    ff02:	1819      	adds	r1, r3, r0
    ff04:	290a      	cmp	r1, #10
    ff06:	d324      	bcc.n	ff52 <_ftoa+0x31a>
    ff08:	1811      	adds	r1, r2, r0
    ff0a:	290a      	cmp	r1, #10
    ff0c:	d326      	bcc.n	ff5c <_ftoa+0x324>
    ff0e:	1821      	adds	r1, r4, r0
    ff10:	290a      	cmp	r1, #10
    ff12:	f1a0 0004 	sub.w	r0, r0, #4
    ff16:	d303      	bcc.n	ff20 <_ftoa+0x2e8>
    ff18:	2f20      	cmp	r7, #32
    ff1a:	f107 0704 	add.w	r7, r7, #4
    ff1e:	d3eb      	bcc.n	fef8 <_ftoa+0x2c0>
  int whole = (int)value;
    ff20:	4244      	negs	r4, r0
    ff22:	4482      	add	sl, r0
    ff24:	e01e      	b.n	ff64 <_ftoa+0x32c>
    return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
    ff26:	9820      	ldr	r0, [sp, #128]	; 0x80
    ff28:	e9cd 7b00 	strd	r7, fp, [sp]
    ff2c:	9002      	str	r0, [sp, #8]
    ff2e:	9821      	ldr	r0, [sp, #132]	; 0x84
    ff30:	4641      	mov	r1, r8
    ff32:	9003      	str	r0, [sp, #12]
    ff34:	4648      	mov	r0, r9
    ff36:	4652      	mov	r2, sl
    ff38:	4633      	mov	r3, r6
    ff3a:	9504      	str	r5, [sp, #16]
    ff3c:	f000 f9c6 	bl	102cc <_etoa>
    ff40:	4607      	mov	r7, r0
}
    ff42:	4638      	mov	r0, r7
    ff44:	b015      	add	sp, #84	; 0x54
    ff46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
  int whole = (int)value;
    ff4a:	f1c0 0401 	rsb	r4, r0, #1
    ff4e:	468a      	mov	sl, r1
    ff50:	e008      	b.n	ff64 <_ftoa+0x32c>
    ff52:	f1c0 0402 	rsb	r4, r0, #2
    ff56:	f1a5 0a02 	sub.w	sl, r5, #2
    ff5a:	e003      	b.n	ff64 <_ftoa+0x32c>
    ff5c:	f1c0 0403 	rsb	r4, r0, #3
    ff60:	f1a5 0a03 	sub.w	sl, r5, #3
    ff64:	9d0a      	ldr	r5, [sp, #40]	; 0x28
    ff66:	9f09      	ldr	r7, [sp, #36]	; 0x24
    ff68:	4628      	mov	r0, r5
    ff6a:	4639      	mov	r1, r7
    ff6c:	f7fc fc96 	bl	c89c <__aeabi_d2iz>
    ff70:	4683      	mov	fp, r0
  double tmp = (value - whole) * pow10[prec];
    ff72:	f7fc fa17 	bl	c3a4 <__aeabi_i2d>
    ff76:	4602      	mov	r2, r0
    ff78:	460b      	mov	r3, r1
    ff7a:	4628      	mov	r0, r5
    ff7c:	4639      	mov	r1, r7
    ff7e:	f7fc f8c3 	bl	c108 <__aeabi_dsub>
    ff82:	f241 1298 	movw	r2, #4504	; 0x1198
    ff86:	f2c0 0201 	movt	r2, #1
    ff8a:	eb02 03ca 	add.w	r3, r2, sl, lsl #3
    ff8e:	f852 203a 	ldr.w	r2, [r2, sl, lsl #3]
    ff92:	685b      	ldr	r3, [r3, #4]
    ff94:	f8cd a020 	str.w	sl, [sp, #32]
    ff98:	e9cd 2305 	strd	r2, r3, [sp, #20]
    ff9c:	f7fc fa6c 	bl	c478 <__aeabi_dmul>
    ffa0:	4682      	mov	sl, r0
    ffa2:	460d      	mov	r5, r1
  unsigned long frac = (unsigned long)tmp;
    ffa4:	f7fc fca2 	bl	c8ec <__aeabi_d2uiz>
    ffa8:	4607      	mov	r7, r0
  diff = tmp - frac;
    ffaa:	f7fc f9eb 	bl	c384 <__aeabi_ui2d>
    ffae:	4602      	mov	r2, r0
    ffb0:	460b      	mov	r3, r1
    ffb2:	4650      	mov	r0, sl
    ffb4:	4629      	mov	r1, r5
    ffb6:	f7fc f8a7 	bl	c108 <__aeabi_dsub>
    ffba:	2300      	movs	r3, #0
    ffbc:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
  if (diff > 0.5) {
    ffc0:	2200      	movs	r2, #0
  diff = tmp - frac;
    ffc2:	4682      	mov	sl, r0
    ffc4:	460d      	mov	r5, r1
  if (diff > 0.5) {
    ffc6:	f7fc fcb1 	bl	c92c <__gedf2>
    ffca:	2801      	cmp	r0, #1
    ffcc:	f2c0 808f 	blt.w	100ee <_ftoa+0x4b6>
    ++frac;
    ffd0:	3701      	adds	r7, #1
    if (frac >= pow10[prec]) {
    ffd2:	4638      	mov	r0, r7
    ffd4:	f7fc f9d6 	bl	c384 <__aeabi_ui2d>
    ffd8:	4602      	mov	r2, r0
    ffda:	460b      	mov	r3, r1
    ffdc:	e9dd 0105 	ldrd	r0, r1, [sp, #20]
    ffe0:	f7fc fca8 	bl	c934 <__ledf2>
    ffe4:	f8dd c020 	ldr.w	ip, [sp, #32]
    ffe8:	2800      	cmp	r0, #0
      ++whole;
    ffea:	bfdc      	itt	le
    ffec:	f10b 0b01 	addle.w	fp, fp, #1
    fff0:	2700      	movle	r7, #0
  if (prec == 0U) {
    fff2:	f1bc 0f00 	cmp.w	ip, #0
    fff6:	f000 8090 	beq.w	1011a <_ftoa+0x4e2>
    fffa:	f10d 0e34 	add.w	lr, sp, #52	; 0x34
    fffe:	f64c 40cd 	movw	r0, #52429	; 0xcccd
    while (len < PRINTF_FTOA_BUFFER_SIZE) {
   10002:	eb0e 0104 	add.w	r1, lr, r4
   10006:	2200      	movs	r2, #0
   10008:	f6cc 40cc 	movt	r0, #52428	; 0xcccc
   1000c:	18a3      	adds	r3, r4, r2
   1000e:	2b20      	cmp	r3, #32
   10010:	f000 809c 	beq.w	1014c <_ftoa+0x514>
      if (!(frac /= 10U)) {
   10014:	fba7 3500 	umull	r3, r5, r7, r0
   10018:	08eb      	lsrs	r3, r5, #3
   1001a:	eb03 0583 	add.w	r5, r3, r3, lsl #2
   1001e:	eba7 0545 	sub.w	r5, r7, r5, lsl #1
      buf[len++] = (char)(48U + (frac % 10U));
   10022:	f045 0530 	orr.w	r5, r5, #48	; 0x30
   10026:	548d      	strb	r5, [r1, r2]
      if (!(frac /= 10U)) {
   10028:	3201      	adds	r2, #1
   1002a:	2f09      	cmp	r7, #9
   1002c:	461f      	mov	r7, r3
   1002e:	d8ed      	bhi.n	1000c <_ftoa+0x3d4>
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   10030:	18a3      	adds	r3, r4, r2
   10032:	2700      	movs	r7, #0
   10034:	2b20      	cmp	r3, #32
   10036:	bf38      	it	cc
   10038:	2701      	movcc	r7, #1
   1003a:	2b1f      	cmp	r3, #31
   1003c:	d84f      	bhi.n	100de <_ftoa+0x4a6>
   1003e:	4594      	cmp	ip, r2
   10040:	d04d      	beq.n	100de <_ftoa+0x4a6>
   10042:	f1ac 0003 	sub.w	r0, ip, #3
   10046:	9009      	str	r0, [sp, #36]	; 0x24
   10048:	f1ac 0002 	sub.w	r0, ip, #2
   1004c:	900a      	str	r0, [sp, #40]	; 0x28
   1004e:	f1ac 0001 	sub.w	r0, ip, #1
   10052:	f1ac 0304 	sub.w	r3, ip, #4
   10056:	f04f 0e30 	mov.w	lr, #48	; 0x30
   1005a:	9308      	str	r3, [sp, #32]
      buf[len++] = '0';
   1005c:	eb04 0c02 	add.w	ip, r4, r2
   10060:	f10c 0301 	add.w	r3, ip, #1
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   10064:	2b20      	cmp	r3, #32
   10066:	f04f 0700 	mov.w	r7, #0
   1006a:	bf38      	it	cc
   1006c:	2701      	movcc	r7, #1
   1006e:	2b1f      	cmp	r3, #31
      buf[len++] = '0';
   10070:	f801 e002 	strb.w	lr, [r1, r2]
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   10074:	d831      	bhi.n	100da <_ftoa+0x4a2>
   10076:	4290      	cmp	r0, r2
   10078:	d02f      	beq.n	100da <_ftoa+0x4a2>
      buf[len++] = '0';
   1007a:	f10c 0302 	add.w	r3, ip, #2
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   1007e:	2b20      	cmp	r3, #32
   10080:	f04f 0700 	mov.w	r7, #0
      buf[len++] = '0';
   10084:	eb01 0a02 	add.w	sl, r1, r2
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   10088:	bf38      	it	cc
   1008a:	2701      	movcc	r7, #1
   1008c:	2b1f      	cmp	r3, #31
      buf[len++] = '0';
   1008e:	f88a e001 	strb.w	lr, [sl, #1]
   10092:	d822      	bhi.n	100da <_ftoa+0x4a2>
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   10094:	9d0a      	ldr	r5, [sp, #40]	; 0x28
   10096:	4295      	cmp	r5, r2
   10098:	d01f      	beq.n	100da <_ftoa+0x4a2>
      buf[len++] = '0';
   1009a:	f10c 0303 	add.w	r3, ip, #3
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   1009e:	2b20      	cmp	r3, #32
   100a0:	f04f 0700 	mov.w	r7, #0
   100a4:	bf38      	it	cc
   100a6:	2701      	movcc	r7, #1
   100a8:	2b1f      	cmp	r3, #31
      buf[len++] = '0';
   100aa:	f88a e002 	strb.w	lr, [sl, #2]
   100ae:	d814      	bhi.n	100da <_ftoa+0x4a2>
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   100b0:	9d09      	ldr	r5, [sp, #36]	; 0x24
   100b2:	4295      	cmp	r5, r2
   100b4:	d011      	beq.n	100da <_ftoa+0x4a2>
      buf[len++] = '0';
   100b6:	f10c 0304 	add.w	r3, ip, #4
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   100ba:	2b20      	cmp	r3, #32
   100bc:	f04f 0700 	mov.w	r7, #0
      buf[len++] = '0';
   100c0:	f88a e003 	strb.w	lr, [sl, #3]
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   100c4:	bf38      	it	cc
   100c6:	2701      	movcc	r7, #1
   100c8:	2b1f      	cmp	r3, #31
   100ca:	f102 0304 	add.w	r3, r2, #4
   100ce:	d803      	bhi.n	100d8 <_ftoa+0x4a0>
   100d0:	9d08      	ldr	r5, [sp, #32]
   100d2:	4295      	cmp	r5, r2
   100d4:	461a      	mov	r2, r3
   100d6:	d1c1      	bne.n	1005c <_ftoa+0x424>
   100d8:	4423      	add	r3, r4
   100da:	f10d 0e34 	add.w	lr, sp, #52	; 0x34
    if (len < PRINTF_FTOA_BUFFER_SIZE) {
   100de:	2f00      	cmp	r7, #0
   100e0:	bf0f      	iteee	eq
   100e2:	461c      	moveq	r4, r3
      buf[len++] = '.';
   100e4:	1c5c      	addne	r4, r3, #1
   100e6:	202e      	movne	r0, #46	; 0x2e
   100e8:	f80e 0003 	strbne.w	r0, [lr, r3]
   100ec:	e02f      	b.n	1014e <_ftoa+0x516>
   100ee:	2300      	movs	r3, #0
   100f0:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
  else if (diff < 0.5) {
   100f4:	4650      	mov	r0, sl
   100f6:	4629      	mov	r1, r5
   100f8:	2200      	movs	r2, #0
   100fa:	f7fc fc1b 	bl	c934 <__ledf2>
   100fe:	2800      	cmp	r0, #0
   10100:	d405      	bmi.n	1010e <_ftoa+0x4d6>
  else if ((frac == 0U) || (frac & 1U)) {
   10102:	f007 0001 	and.w	r0, r7, #1
   10106:	2f00      	cmp	r7, #0
   10108:	bf08      	it	eq
   1010a:	2001      	moveq	r0, #1
   1010c:	4407      	add	r7, r0
   1010e:	f8dd c020 	ldr.w	ip, [sp, #32]
  if (prec == 0U) {
   10112:	f1bc 0f00 	cmp.w	ip, #0
   10116:	f47f af70 	bne.w	fffa <_ftoa+0x3c2>
    diff = value - (double)whole;
   1011a:	4658      	mov	r0, fp
   1011c:	f7fc f942 	bl	c3a4 <__aeabi_i2d>
   10120:	4602      	mov	r2, r0
   10122:	460b      	mov	r3, r1
   10124:	e9dd 1009 	ldrd	r1, r0, [sp, #36]	; 0x24
   10128:	f7fb ffee 	bl	c108 <__aeabi_dsub>
   1012c:	2300      	movs	r3, #0
   1012e:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
    if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
   10132:	2200      	movs	r2, #0
   10134:	2500      	movs	r5, #0
   10136:	f7fc fbfd 	bl	c934 <__ledf2>
   1013a:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   1013e:	bfc8      	it	gt
   10140:	2501      	movgt	r5, #1
   10142:	ea0b 0005 	and.w	r0, fp, r5
   10146:	9d22      	ldr	r5, [sp, #136]	; 0x88
   10148:	4483      	add	fp, r0
   1014a:	e001      	b.n	10150 <_ftoa+0x518>
   1014c:	2420      	movs	r4, #32
   1014e:	9d22      	ldr	r5, [sp, #136]	; 0x88
   10150:	f246 6067 	movw	r0, #26215	; 0x6667
   10154:	f2c6 6066 	movt	r0, #26214	; 0x6666
   10158:	af0d      	add	r7, sp, #52	; 0x34
   1015a:	bf00      	nop
  while (len < PRINTF_FTOA_BUFFER_SIZE) {
   1015c:	2c1f      	cmp	r4, #31
   1015e:	d813      	bhi.n	10188 <_ftoa+0x550>
    if (!(whole /= 10)) {
   10160:	fb5b f100 	smmul	r1, fp, r0
   10164:	108a      	asrs	r2, r1, #2
   10166:	eb02 71d1 	add.w	r1, r2, r1, lsr #31
   1016a:	eb01 0281 	add.w	r2, r1, r1, lsl #2
   1016e:	ebab 0242 	sub.w	r2, fp, r2, lsl #1
    buf[len++] = (char)(48 + (whole % 10));
   10172:	3230      	adds	r2, #48	; 0x30
   10174:	f104 0a01 	add.w	sl, r4, #1
   10178:	553a      	strb	r2, [r7, r4]
    if (!(whole /= 10)) {
   1017a:	f10b 0209 	add.w	r2, fp, #9
   1017e:	2a12      	cmp	r2, #18
   10180:	4654      	mov	r4, sl
   10182:	468b      	mov	fp, r1
   10184:	d8ea      	bhi.n	1015c <_ftoa+0x524>
   10186:	e000      	b.n	1018a <_ftoa+0x552>
   10188:	46a2      	mov	sl, r4
  if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
   1018a:	f005 0003 	and.w	r0, r5, #3
   1018e:	2801      	cmp	r0, #1
   10190:	d141      	bne.n	10216 <_ftoa+0x5de>
   10192:	9921      	ldr	r1, [sp, #132]	; 0x84
    if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
   10194:	b151      	cbz	r1, 101ac <_ftoa+0x574>
   10196:	f015 000c 	ands.w	r0, r5, #12
   1019a:	bf18      	it	ne
   1019c:	2001      	movne	r0, #1
   1019e:	9a07      	ldr	r2, [sp, #28]
   101a0:	4310      	orrs	r0, r2
   101a2:	1a09      	subs	r1, r1, r0
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
   101a4:	458a      	cmp	sl, r1
   101a6:	910b      	str	r1, [sp, #44]	; 0x2c
   101a8:	d304      	bcc.n	101b4 <_ftoa+0x57c>
   101aa:	e034      	b.n	10216 <_ftoa+0x5de>
   101ac:	2100      	movs	r1, #0
   101ae:	458a      	cmp	sl, r1
   101b0:	910b      	str	r1, [sp, #44]	; 0x2c
   101b2:	d230      	bcs.n	10216 <_ftoa+0x5de>
   101b4:	f1ba 0f1f 	cmp.w	sl, #31
   101b8:	d82d      	bhi.n	10216 <_ftoa+0x5de>
   101ba:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   101bc:	ea6f 010a 	mvn.w	r1, sl
   101c0:	4411      	add	r1, r2
   101c2:	f1ca 021f 	rsb	r2, sl, #31
   101c6:	4291      	cmp	r1, r2
   101c8:	bf38      	it	cc
   101ca:	460a      	movcc	r2, r1
   101cc:	eb07 000a 	add.w	r0, r7, sl
   101d0:	3201      	adds	r2, #1
      buf[len++] = '0';
   101d2:	2130      	movs	r1, #48	; 0x30
   101d4:	f000 fd5b 	bl	10c8e <memset>
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
   101d8:	990b      	ldr	r1, [sp, #44]	; 0x2c
   101da:	f10a 0001 	add.w	r0, sl, #1
   101de:	4288      	cmp	r0, r1
   101e0:	bf38      	it	cc
   101e2:	2820      	cmpcc	r0, #32
   101e4:	d216      	bcs.n	10214 <_ftoa+0x5dc>
   101e6:	990b      	ldr	r1, [sp, #44]	; 0x2c
   101e8:	f10a 0002 	add.w	r0, sl, #2
   101ec:	4288      	cmp	r0, r1
   101ee:	d211      	bcs.n	10214 <_ftoa+0x5dc>
   101f0:	281f      	cmp	r0, #31
   101f2:	d80f      	bhi.n	10214 <_ftoa+0x5dc>
   101f4:	990b      	ldr	r1, [sp, #44]	; 0x2c
   101f6:	f10a 0003 	add.w	r0, sl, #3
   101fa:	4288      	cmp	r0, r1
   101fc:	d20a      	bcs.n	10214 <_ftoa+0x5dc>
   101fe:	281f      	cmp	r0, #31
   10200:	d808      	bhi.n	10214 <_ftoa+0x5dc>
   10202:	980b      	ldr	r0, [sp, #44]	; 0x2c
      buf[len++] = '0';
   10204:	f10a 0a04 	add.w	sl, sl, #4
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
   10208:	4582      	cmp	sl, r0
   1020a:	d204      	bcs.n	10216 <_ftoa+0x5de>
   1020c:	f1ba 0f20 	cmp.w	sl, #32
   10210:	d3e2      	bcc.n	101d8 <_ftoa+0x5a0>
   10212:	e000      	b.n	10216 <_ftoa+0x5de>
    buf[len++] = (char)(48 + (whole % 10));
   10214:	4682      	mov	sl, r0
  if (len < PRINTF_FTOA_BUFFER_SIZE) {
   10216:	f1ba 0f1f 	cmp.w	sl, #31
   1021a:	f005 0001 	and.w	r0, r5, #1
   1021e:	d80e      	bhi.n	1023e <_ftoa+0x606>
    if (negative) {
   10220:	9907      	ldr	r1, [sp, #28]
   10222:	b109      	cbz	r1, 10228 <_ftoa+0x5f0>
   10224:	212d      	movs	r1, #45	; 0x2d
   10226:	e006      	b.n	10236 <_ftoa+0x5fe>
    else if (flags & FLAGS_PLUS) {
   10228:	0769      	lsls	r1, r5, #29
   1022a:	d403      	bmi.n	10234 <_ftoa+0x5fc>
    else if (flags & FLAGS_SPACE) {
   1022c:	0729      	lsls	r1, r5, #28
   1022e:	d506      	bpl.n	1023e <_ftoa+0x606>
   10230:	2120      	movs	r1, #32
   10232:	e000      	b.n	10236 <_ftoa+0x5fe>
   10234:	212b      	movs	r1, #43	; 0x2b
   10236:	f807 100a 	strb.w	r1, [r7, sl]
   1023a:	f10a 0a01 	add.w	sl, sl, #1
   1023e:	9c0c      	ldr	r4, [sp, #48]	; 0x30
   10240:	f005 0b02 	and.w	fp, r5, #2
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   10244:	b9b0      	cbnz	r0, 10274 <_ftoa+0x63c>
   10246:	9c0c      	ldr	r4, [sp, #48]	; 0x30
   10248:	f1bb 0f00 	cmp.w	fp, #0
   1024c:	d112      	bne.n	10274 <_ftoa+0x63c>
   1024e:	980b      	ldr	r0, [sp, #44]	; 0x2c
   10250:	9c0c      	ldr	r4, [sp, #48]	; 0x30
   10252:	4582      	cmp	sl, r0
   10254:	d20e      	bcs.n	10274 <_ftoa+0x63c>
   10256:	e9dd 540b 	ldrd	r5, r4, [sp, #44]	; 0x2c
   1025a:	bf00      	nop
   1025c:	4622      	mov	r2, r4
      out(' ', buffer, idx++, maxlen);
   1025e:	2020      	movs	r0, #32
   10260:	4641      	mov	r1, r8
   10262:	4633      	mov	r3, r6
   10264:	3401      	adds	r4, #1
   10266:	47c8      	blx	r9
    for (size_t i = len; i < width; i++) {
   10268:	3d01      	subs	r5, #1
   1026a:	45aa      	cmp	sl, r5
   1026c:	d1f6      	bne.n	1025c <_ftoa+0x624>
  while (len) {
   1026e:	f1ba 0f00 	cmp.w	sl, #0
   10272:	d00d      	beq.n	10290 <_ftoa+0x658>
   10274:	3f01      	subs	r7, #1
   10276:	4622      	mov	r2, r4
    out(buf[--len], buffer, idx++, maxlen);
   10278:	f817 000a 	ldrb.w	r0, [r7, sl]
   1027c:	4641      	mov	r1, r8
   1027e:	4633      	mov	r3, r6
   10280:	f1aa 0501 	sub.w	r5, sl, #1
   10284:	1c54      	adds	r4, r2, #1
   10286:	47c8      	blx	r9
  while (len) {
   10288:	2d00      	cmp	r5, #0
   1028a:	4622      	mov	r2, r4
   1028c:	46aa      	mov	sl, r5
   1028e:	d1f3      	bne.n	10278 <_ftoa+0x640>
  if (flags & FLAGS_LEFT) {
   10290:	f1bb 0f00 	cmp.w	fp, #0
   10294:	d014      	beq.n	102c0 <_ftoa+0x688>
   10296:	990c      	ldr	r1, [sp, #48]	; 0x30
   10298:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
   1029c:	1a60      	subs	r0, r4, r1
   1029e:	4550      	cmp	r0, sl
   102a0:	d20e      	bcs.n	102c0 <_ftoa+0x688>
    while (idx - start_idx < width) {
   102a2:	424d      	negs	r5, r1
      out(' ', buffer, idx++, maxlen);
   102a4:	2020      	movs	r0, #32
   102a6:	4641      	mov	r1, r8
   102a8:	4622      	mov	r2, r4
   102aa:	4633      	mov	r3, r6
   102ac:	1c67      	adds	r7, r4, #1
   102ae:	47c8      	blx	r9
    while (idx - start_idx < width) {
   102b0:	19e8      	adds	r0, r5, r7
   102b2:	4550      	cmp	r0, sl
   102b4:	463c      	mov	r4, r7
   102b6:	d3f5      	bcc.n	102a4 <_ftoa+0x66c>
}
   102b8:	4638      	mov	r0, r7
   102ba:	b015      	add	sp, #84	; 0x54
   102bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   102c0:	4627      	mov	r7, r4
   102c2:	4638      	mov	r0, r7
   102c4:	b015      	add	sp, #84	; 0x54
   102c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   102ca:	d4d4      	bmi.n	10276 <_ftoa+0x63e>

000102cc <_etoa>:
{
   102cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   102d0:	b099      	sub	sp, #100	; 0x64
   102d2:	468a      	mov	sl, r1
   102d4:	e9dd 1b25 	ldrd	r1, fp, [sp, #148]	; 0x94
   102d8:	4680      	mov	r8, r0
   102da:	e9dd 0622 	ldrd	r0, r6, [sp, #136]	; 0x88
   102de:	9110      	str	r1, [sp, #64]	; 0x40
   102e0:	461c      	mov	r4, r3
   102e2:	9f24      	ldr	r7, [sp, #144]	; 0x90
   102e4:	4615      	mov	r5, r2
  if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
   102e6:	4631      	mov	r1, r6
   102e8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   102ec:	f46f 1380 	mvn.w	r3, #1048576	; 0x100000
   102f0:	4681      	mov	r9, r0
   102f2:	f7fc fb1f 	bl	c934 <__ledf2>
   102f6:	2800      	cmp	r0, #0
   102f8:	f100 8111 	bmi.w	1051e <_etoa+0x252>
   102fc:	4648      	mov	r0, r9
   102fe:	4631      	mov	r1, r6
   10300:	464a      	mov	r2, r9
   10302:	4633      	mov	r3, r6
   10304:	f7fc fb9a 	bl	ca3c <__aeabi_dcmpun>
   10308:	2800      	cmp	r0, #0
   1030a:	f040 8108 	bne.w	1051e <_etoa+0x252>
   1030e:	f64f 73ff 	movw	r3, #65535	; 0xffff
   10312:	f6c7 73ef 	movt	r3, #32751	; 0x7fef
   10316:	4648      	mov	r0, r9
   10318:	4631      	mov	r1, r6
   1031a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   1031e:	f7fc fb05 	bl	c92c <__gedf2>
   10322:	2801      	cmp	r0, #1
   10324:	f280 80fb 	bge.w	1051e <_etoa+0x252>
  const bool negative = value < 0;
   10328:	4648      	mov	r0, r9
   1032a:	4631      	mov	r1, r6
   1032c:	2200      	movs	r2, #0
   1032e:	2300      	movs	r3, #0
   10330:	e9cd 540b 	strd	r5, r4, [sp, #44]	; 0x2c
   10334:	464d      	mov	r5, r9
   10336:	f8cd 9020 	str.w	r9, [sp, #32]
   1033a:	2400      	movs	r4, #0
   1033c:	f7fc fafa 	bl	c934 <__ledf2>
   10340:	2800      	cmp	r0, #0
   10342:	bf48      	it	mi
   10344:	2401      	movmi	r4, #1
   10346:	9409      	str	r4, [sp, #36]	; 0x24
  if (negative) {
   10348:	bf48      	it	mi
   1034a:	f086 4600 	eormi.w	r6, r6, #2147483648	; 0x80000000
  if (!(flags & FLAGS_PRECISION)) {
   1034e:	f41b 6080 	ands.w	r0, fp, #1024	; 0x400
   10352:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
   10356:	9006      	str	r0, [sp, #24]
   10358:	bf08      	it	eq
   1035a:	2706      	moveq	r7, #6
   1035c:	970e      	str	r7, [sp, #56]	; 0x38
  int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
   1035e:	f3c6 500a 	ubfx	r0, r6, #20, #11
   10362:	f2a0 30ff 	subw	r0, r0, #1023	; 0x3ff
   10366:	f240 31ff 	movw	r1, #1023	; 0x3ff
  conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
   1036a:	4634      	mov	r4, r6
   1036c:	f361 541f 	bfi	r4, r1, #20, #12
  int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
   10370:	f7fc f818 	bl	c3a4 <__aeabi_i2d>
   10374:	f647 12fb 	movw	r2, #31227	; 0x79fb
   10378:	f244 4313 	movw	r3, #17427	; 0x4413
   1037c:	f2c5 029f 	movt	r2, #20639	; 0x509f
   10380:	f6c3 73d3 	movt	r3, #16339	; 0x3fd3
   10384:	f7fc f878 	bl	c478 <__aeabi_dmul>
   10388:	f64c 02b3 	movw	r2, #51379	; 0xc8b3
   1038c:	f648 2328 	movw	r3, #35368	; 0x8a28
   10390:	f6c8 3260 	movt	r2, #35680	; 0x8b60
   10394:	f6c3 73c6 	movt	r3, #16326	; 0x3fc6
   10398:	f7fb feb8 	bl	c10c <__adddf3>
   1039c:	2300      	movs	r3, #0
   1039e:	4607      	mov	r7, r0
   103a0:	4689      	mov	r9, r1
   103a2:	f6cb 73f8 	movt	r3, #49144	; 0xbff8
   103a6:	4628      	mov	r0, r5
   103a8:	4621      	mov	r1, r4
   103aa:	2200      	movs	r2, #0
   103ac:	f7fb feae 	bl	c10c <__adddf3>
   103b0:	f244 3261 	movw	r2, #17249	; 0x4361
   103b4:	f248 73a7 	movw	r3, #34727	; 0x87a7
   103b8:	f2c6 326f 	movt	r2, #25455	; 0x636f
   103bc:	f6c3 73d2 	movt	r3, #16338	; 0x3fd2
   103c0:	f7fc f85a 	bl	c478 <__aeabi_dmul>
   103c4:	463a      	mov	r2, r7
   103c6:	464b      	mov	r3, r9
   103c8:	f7fb fea0 	bl	c10c <__adddf3>
   103cc:	f7fc fa66 	bl	c89c <__aeabi_d2iz>
   103d0:	900d      	str	r0, [sp, #52]	; 0x34
  exp2 = (int)(expval * 3.321928094887362 + 0.5);
   103d2:	f7fb ffe7 	bl	c3a4 <__aeabi_i2d>
   103d6:	f24a 3271 	movw	r2, #41841	; 0xa371
   103da:	f249 334f 	movw	r3, #37711	; 0x934f
   103de:	f6c0 1279 	movt	r2, #2425	; 0x979
   103e2:	f2c4 030a 	movt	r3, #16394	; 0x400a
   103e6:	4607      	mov	r7, r0
   103e8:	460c      	mov	r4, r1
   103ea:	f7fc f845 	bl	c478 <__aeabi_dmul>
   103ee:	2300      	movs	r3, #0
   103f0:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
   103f4:	2200      	movs	r2, #0
   103f6:	f7fb fe89 	bl	c10c <__adddf3>
   103fa:	f7fc fa4f 	bl	c89c <__aeabi_d2iz>
   103fe:	f245 5216 	movw	r2, #21782	; 0x5516
   10402:	f646 33b1 	movw	r3, #27569	; 0x6bb1
   10406:	4605      	mov	r5, r0
   10408:	f6cb 32b5 	movt	r2, #48053	; 0xbbb5
   1040c:	f2c4 0302 	movt	r3, #16386	; 0x4002
  const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
   10410:	4638      	mov	r0, r7
   10412:	4621      	mov	r1, r4
   10414:	f7fc f830 	bl	c478 <__aeabi_dmul>
   10418:	4604      	mov	r4, r0
   1041a:	4628      	mov	r0, r5
   1041c:	460f      	mov	r7, r1
   1041e:	f7fb ffc1 	bl	c3a4 <__aeabi_i2d>
   10422:	f643 12ef 	movw	r2, #14831	; 0x39ef
   10426:	f642 6342 	movw	r3, #11842	; 0x2e42
   1042a:	f6cf 62fa 	movt	r2, #65274	; 0xfefa
   1042e:	f6cb 73e6 	movt	r3, #49126	; 0xbfe6
   10432:	f7fc f821 	bl	c478 <__aeabi_dmul>
   10436:	4602      	mov	r2, r0
   10438:	460b      	mov	r3, r1
   1043a:	4620      	mov	r0, r4
   1043c:	4639      	mov	r1, r7
   1043e:	f7fb fe65 	bl	c10c <__adddf3>
  const double z2 = z * z;
   10442:	4602      	mov	r2, r0
   10444:	460b      	mov	r3, r1
  const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
   10446:	4604      	mov	r4, r0
   10448:	460f      	mov	r7, r1
  const double z2 = z * z;
   1044a:	f7fc f815 	bl	c478 <__aeabi_dmul>
   1044e:	4683      	mov	fp, r0
  conv.U = (uint64_t)(exp2 + 1023) << 52U;
   10450:	f205 30ff 	addw	r0, r5, #1023	; 0x3ff
  const double z2 = z * z;
   10454:	4689      	mov	r9, r1
  conv.U = (uint64_t)(exp2 + 1023) << 52U;
   10456:	0505      	lsls	r5, r0, #20
  conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
   10458:	4620      	mov	r0, r4
   1045a:	4639      	mov	r1, r7
   1045c:	4622      	mov	r2, r4
   1045e:	463b      	mov	r3, r7
   10460:	f7fb fe54 	bl	c10c <__adddf3>
   10464:	900f      	str	r0, [sp, #60]	; 0x3c
   10466:	9107      	str	r1, [sp, #28]
   10468:	2000      	movs	r0, #0
   1046a:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
   1046e:	4622      	mov	r2, r4
   10470:	463b      	mov	r3, r7
   10472:	f7fb fe49 	bl	c108 <__aeabi_dsub>
   10476:	2300      	movs	r3, #0
   10478:	4604      	mov	r4, r0
   1047a:	460f      	mov	r7, r1
   1047c:	f2c4 032c 	movt	r3, #16428	; 0x402c
   10480:	4658      	mov	r0, fp
   10482:	4649      	mov	r1, r9
   10484:	2200      	movs	r2, #0
   10486:	f7fc f921 	bl	c6cc <__aeabi_ddiv>
   1048a:	2300      	movs	r3, #0
   1048c:	f2c4 0324 	movt	r3, #16420	; 0x4024
   10490:	2200      	movs	r2, #0
   10492:	f7fb fe3b 	bl	c10c <__adddf3>
   10496:	4602      	mov	r2, r0
   10498:	460b      	mov	r3, r1
   1049a:	4658      	mov	r0, fp
   1049c:	4649      	mov	r1, r9
   1049e:	f7fc f915 	bl	c6cc <__aeabi_ddiv>
   104a2:	2300      	movs	r3, #0
   104a4:	f2c4 0318 	movt	r3, #16408	; 0x4018
   104a8:	2200      	movs	r2, #0
   104aa:	f7fb fe2f 	bl	c10c <__adddf3>
   104ae:	4602      	mov	r2, r0
   104b0:	460b      	mov	r3, r1
   104b2:	4658      	mov	r0, fp
   104b4:	4649      	mov	r1, r9
   104b6:	46b1      	mov	r9, r6
   104b8:	f7fc f908 	bl	c6cc <__aeabi_ddiv>
   104bc:	4602      	mov	r2, r0
   104be:	460b      	mov	r3, r1
   104c0:	4620      	mov	r0, r4
   104c2:	4639      	mov	r1, r7
   104c4:	f7fb fe22 	bl	c10c <__adddf3>
   104c8:	4602      	mov	r2, r0
   104ca:	460b      	mov	r3, r1
   104cc:	980f      	ldr	r0, [sp, #60]	; 0x3c
   104ce:	9907      	ldr	r1, [sp, #28]
   104d0:	f7fc f8fc 	bl	c6cc <__aeabi_ddiv>
   104d4:	2300      	movs	r3, #0
   104d6:	f6c3 73f0 	movt	r3, #16368	; 0x3ff0
   104da:	2200      	movs	r2, #0
   104dc:	f7fb fe16 	bl	c10c <__adddf3>
   104e0:	2200      	movs	r2, #0
   104e2:	462b      	mov	r3, r5
   104e4:	f7fb ffc8 	bl	c478 <__aeabi_dmul>
   104e8:	9e08      	ldr	r6, [sp, #32]
   104ea:	4604      	mov	r4, r0
   104ec:	460d      	mov	r5, r1
  if (value < conv.F) {
   104ee:	4630      	mov	r0, r6
   104f0:	4649      	mov	r1, r9
   104f2:	4622      	mov	r2, r4
   104f4:	462b      	mov	r3, r5
   104f6:	f7fc fa1d 	bl	c934 <__ledf2>
   104fa:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   104fe:	dc17      	bgt.n	10530 <_etoa+0x264>
   10500:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
   10504:	2300      	movs	r3, #0
   10506:	f2c4 0324 	movt	r3, #16420	; 0x4024
    conv.F /= 10;
   1050a:	4620      	mov	r0, r4
   1050c:	4629      	mov	r1, r5
   1050e:	2200      	movs	r2, #0
    expval--;
   10510:	f1ab 0b01 	sub.w	fp, fp, #1
    conv.F /= 10;
   10514:	f7fc f8da 	bl	c6cc <__aeabi_ddiv>
   10518:	4604      	mov	r4, r0
   1051a:	460d      	mov	r5, r1
   1051c:	e00a      	b.n	10534 <_etoa+0x268>
    return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
   1051e:	4640      	mov	r0, r8
   10520:	4651      	mov	r1, sl
   10522:	462a      	mov	r2, r5
   10524:	4623      	mov	r3, r4
   10526:	b019      	add	sp, #100	; 0x64
   10528:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1052c:	f7ff bb84 	b.w	fc38 <_ftoa>
   10530:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
  unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
   10534:	f10b 0063 	add.w	r0, fp, #99	; 0x63
   10538:	2105      	movs	r1, #5
   1053a:	28c7      	cmp	r0, #199	; 0xc7
   1053c:	bf38      	it	cc
   1053e:	2104      	movcc	r1, #4
   10540:	910f      	str	r1, [sp, #60]	; 0x3c
   10542:	9f0a      	ldr	r7, [sp, #40]	; 0x28
  if (flags & FLAGS_ADAPT_EXP) {
   10544:	0538      	lsls	r0, r7, #20
   10546:	9810      	ldr	r0, [sp, #64]	; 0x40
   10548:	d404      	bmi.n	10554 <_etoa+0x288>
   1054a:	46ac      	mov	ip, r5
   1054c:	4622      	mov	r2, r4
   1054e:	464d      	mov	r5, r9
   10550:	4634      	mov	r4, r6
   10552:	e03a      	b.n	105ca <_etoa+0x2fe>
   10554:	f244 322d 	movw	r2, #17197	; 0x432d
   10558:	f243 63e2 	movw	r3, #14050	; 0x36e2
   1055c:	f6ce 321c 	movt	r2, #60188	; 0xeb1c
   10560:	f6c3 731a 	movt	r3, #16154	; 0x3f1a
    if ((value >= 1e-4) && (value < 1e6)) {
   10564:	4630      	mov	r0, r6
   10566:	4649      	mov	r1, r9
   10568:	f7fc f9e0 	bl	c92c <__gedf2>
   1056c:	2800      	cmp	r0, #0
   1056e:	d41e      	bmi.n	105ae <_etoa+0x2e2>
   10570:	f248 4380 	movw	r3, #33920	; 0x8480
   10574:	f2c4 132e 	movt	r3, #16686	; 0x412e
   10578:	4630      	mov	r0, r6
   1057a:	4649      	mov	r1, r9
   1057c:	2200      	movs	r2, #0
   1057e:	f7fc f9d9 	bl	c934 <__ledf2>
   10582:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   10586:	dc12      	bgt.n	105ae <_etoa+0x2e2>
   10588:	4622      	mov	r2, r4
   1058a:	4634      	mov	r4, r6
   1058c:	9e0e      	ldr	r6, [sp, #56]	; 0x38
      if ((int)prec > expval) {
   1058e:	ea6f 000b 	mvn.w	r0, fp
   10592:	2100      	movs	r1, #0
   10594:	455e      	cmp	r6, fp
   10596:	bfc8      	it	gt
   10598:	1831      	addgt	r1, r6, r0
   1059a:	2000      	movs	r0, #0
   1059c:	46ac      	mov	ip, r5
   1059e:	464d      	mov	r5, r9
      flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
   105a0:	f447 6780 	orr.w	r7, r7, #1024	; 0x400
   105a4:	910e      	str	r1, [sp, #56]	; 0x38
   105a6:	f04f 0b00 	mov.w	fp, #0
    }
   105aa:	900f      	str	r0, [sp, #60]	; 0x3c
   105ac:	e00c      	b.n	105c8 <_etoa+0x2fc>
   105ae:	990e      	ldr	r1, [sp, #56]	; 0x38
   105b0:	46ac      	mov	ip, r5
   105b2:	4622      	mov	r2, r4
   105b4:	464d      	mov	r5, r9
   105b6:	4634      	mov	r4, r6
      if ((prec > 0) && (flags & FLAGS_PRECISION)) {
   105b8:	b121      	cbz	r1, 105c4 <_etoa+0x2f8>
   105ba:	9806      	ldr	r0, [sp, #24]
   105bc:	eba1 2190 	sub.w	r1, r1, r0, lsr #10
   105c0:	910e      	str	r1, [sp, #56]	; 0x38
   105c2:	e001      	b.n	105c8 <_etoa+0x2fc>
   105c4:	2000      	movs	r0, #0
   105c6:	900e      	str	r0, [sp, #56]	; 0x38
   105c8:	9810      	ldr	r0, [sp, #64]	; 0x40
   105ca:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
  if ((flags & FLAGS_LEFT) && minwidth) {
   105ce:	f007 0102 	and.w	r1, r7, #2
  if (width > minwidth) {
   105d2:	ebb0 0009 	subs.w	r0, r0, r9
   105d6:	bf38      	it	cc
   105d8:	2000      	movcc	r0, #0
  if ((flags & FLAGS_LEFT) && minwidth) {
   105da:	4606      	mov	r6, r0
   105dc:	f1b9 0f00 	cmp.w	r9, #0
   105e0:	bf18      	it	ne
   105e2:	2600      	movne	r6, #0
   105e4:	910a      	str	r1, [sp, #40]	; 0x28
   105e6:	2900      	cmp	r1, #0
   105e8:	bf08      	it	eq
   105ea:	4606      	moveq	r6, r0
  if (expval) {
   105ec:	4620      	mov	r0, r4
   105ee:	4629      	mov	r1, r5
   105f0:	4663      	mov	r3, ip
   105f2:	f7fc f86b 	bl	c6cc <__aeabi_ddiv>
   105f6:	f1bb 0f00 	cmp.w	fp, #0
   105fa:	bf04      	itt	eq
   105fc:	4620      	moveq	r0, r4
   105fe:	4629      	moveq	r1, r5
  idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
   10600:	9a09      	ldr	r2, [sp, #36]	; 0x24
   10602:	f427 6500 	bic.w	r5, r7, #2048	; 0x800
   10606:	2a00      	cmp	r2, #0
   10608:	bf18      	it	ne
   1060a:	f081 4100 	eorne.w	r1, r1, #2147483648	; 0x80000000
   1060e:	e9cd 0100 	strd	r0, r1, [sp]
   10612:	980e      	ldr	r0, [sp, #56]	; 0x38
   10614:	4651      	mov	r1, sl
   10616:	e9cd 0602 	strd	r0, r6, [sp, #8]
   1061a:	e9dd 260b 	ldrd	r2, r6, [sp, #44]	; 0x2c
   1061e:	4640      	mov	r0, r8
   10620:	4633      	mov	r3, r6
   10622:	9504      	str	r5, [sp, #16]
   10624:	f7ff fb08 	bl	fc38 <_ftoa>
  if (minwidth) {
   10628:	f1b9 0f00 	cmp.w	r9, #0
  idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
   1062c:	4604      	mov	r4, r0
  if (minwidth) {
   1062e:	f000 80a5 	beq.w	1077c <_etoa+0x4b0>
    out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
   10632:	f007 0020 	and.w	r0, r7, #32
   10636:	f080 0065 	eor.w	r0, r0, #101	; 0x65
   1063a:	4651      	mov	r1, sl
   1063c:	4622      	mov	r2, r4
   1063e:	4633      	mov	r3, r6
   10640:	47c0      	blx	r8
    idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
   10642:	4659      	mov	r1, fp
   10644:	f64c 42cd 	movw	r2, #52429	; 0xcccd
   10648:	f1bb 0f00 	cmp.w	fp, #0
   1064c:	bf48      	it	mi
   1064e:	f1cb 0100 	rsbmi	r1, fp, #0
   10652:	f8cd b034 	str.w	fp, [sp, #52]	; 0x34
   10656:	f04f 0b00 	mov.w	fp, #0
   1065a:	f6cc 42cc 	movt	r2, #52428	; 0xcccc
   1065e:	ad11      	add	r5, sp, #68	; 0x44
      value /= base;
   10660:	fba1 0302 	umull	r0, r3, r1, r2
   10664:	08db      	lsrs	r3, r3, #3
   10666:	eb03 0083 	add.w	r0, r3, r3, lsl #2
   1066a:	465e      	mov	r6, fp
   1066c:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
   10670:	f10b 0b01 	add.w	fp, fp, #1
   10674:	f040 0730 	orr.w	r7, r0, #48	; 0x30
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
   10678:	f1bb 0f20 	cmp.w	fp, #32
   1067c:	f04f 0000 	mov.w	r0, #0
   10680:	bf38      	it	cc
   10682:	2001      	movcc	r0, #1
   10684:	f1bb 0f1f 	cmp.w	fp, #31
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
   10688:	55af      	strb	r7, [r5, r6]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
   1068a:	d802      	bhi.n	10692 <_etoa+0x3c6>
   1068c:	2909      	cmp	r1, #9
   1068e:	4619      	mov	r1, r3
   10690:	d8e6      	bhi.n	10660 <_etoa+0x394>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
   10692:	990f      	ldr	r1, [sp, #60]	; 0x3c
   10694:	f1a1 0902 	sub.w	r9, r1, #2
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10698:	45cb      	cmp	fp, r9
   1069a:	d241      	bcs.n	10720 <_etoa+0x454>
   1069c:	f1bb 0f1f 	cmp.w	fp, #31
   106a0:	d83e      	bhi.n	10720 <_etoa+0x454>
   106a2:	990f      	ldr	r1, [sp, #60]	; 0x3c
   106a4:	f1cb 021f 	rsb	r2, fp, #31
   106a8:	eba1 010b 	sub.w	r1, r1, fp
   106ac:	3903      	subs	r1, #3
   106ae:	4291      	cmp	r1, r2
   106b0:	bf38      	it	cc
   106b2:	460a      	movcc	r2, r1
   106b4:	eb05 000b 	add.w	r0, r5, fp
   106b8:	3201      	adds	r2, #1
      buf[len++] = '0';
   106ba:	2130      	movs	r1, #48	; 0x30
   106bc:	f000 fae7 	bl	10c8e <memset>
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   106c0:	f10b 0101 	add.w	r1, fp, #1
   106c4:	2920      	cmp	r1, #32
   106c6:	f04f 0000 	mov.w	r0, #0
   106ca:	bf38      	it	cc
   106cc:	2001      	movcc	r0, #1
   106ce:	4549      	cmp	r1, r9
   106d0:	bf38      	it	cc
   106d2:	2920      	cmpcc	r1, #32
   106d4:	d223      	bcs.n	1071e <_etoa+0x452>
   106d6:	f10b 0102 	add.w	r1, fp, #2
   106da:	2920      	cmp	r1, #32
   106dc:	f04f 0000 	mov.w	r0, #0
   106e0:	bf38      	it	cc
   106e2:	2001      	movcc	r0, #1
   106e4:	4549      	cmp	r1, r9
   106e6:	d21a      	bcs.n	1071e <_etoa+0x452>
   106e8:	291f      	cmp	r1, #31
   106ea:	d818      	bhi.n	1071e <_etoa+0x452>
   106ec:	f10b 0103 	add.w	r1, fp, #3
   106f0:	2920      	cmp	r1, #32
   106f2:	f04f 0000 	mov.w	r0, #0
   106f6:	bf38      	it	cc
   106f8:	2001      	movcc	r0, #1
   106fa:	4549      	cmp	r1, r9
   106fc:	d20f      	bcs.n	1071e <_etoa+0x452>
   106fe:	291f      	cmp	r1, #31
   10700:	d80d      	bhi.n	1071e <_etoa+0x452>
      buf[len++] = '0';
   10702:	f10b 0b04 	add.w	fp, fp, #4
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10706:	f1bb 0f20 	cmp.w	fp, #32
   1070a:	f04f 0000 	mov.w	r0, #0
   1070e:	bf38      	it	cc
   10710:	2001      	movcc	r0, #1
   10712:	45cb      	cmp	fp, r9
   10714:	d204      	bcs.n	10720 <_etoa+0x454>
   10716:	f1bb 0f20 	cmp.w	fp, #32
   1071a:	d3d1      	bcc.n	106c0 <_etoa+0x3f4>
   1071c:	e000      	b.n	10720 <_etoa+0x454>
   1071e:	468b      	mov	fp, r1
   10720:	f104 0701 	add.w	r7, r4, #1
  if (len < PRINTF_NTOA_BUFFER_SIZE) {
   10724:	b148      	cbz	r0, 1073a <_etoa+0x46e>
   10726:	9a0d      	ldr	r2, [sp, #52]	; 0x34
   10728:	f10b 0001 	add.w	r0, fp, #1
   1072c:	212b      	movs	r1, #43	; 0x2b
   1072e:	2a00      	cmp	r2, #0
   10730:	bf48      	it	mi
   10732:	212d      	movmi	r1, #45	; 0x2d
   10734:	f805 100b 	strb.w	r1, [r5, fp]
   10738:	e000      	b.n	1073c <_etoa+0x470>
   1073a:	2020      	movs	r0, #32
   1073c:	9e0c      	ldr	r6, [sp, #48]	; 0x30
   1073e:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
  while (len) {
   10742:	1e6c      	subs	r4, r5, #1
    out(buf[--len], buffer, idx++, maxlen);
   10744:	1e45      	subs	r5, r0, #1
   10746:	5c20      	ldrb	r0, [r4, r0]
   10748:	463a      	mov	r2, r7
   1074a:	4651      	mov	r1, sl
   1074c:	4633      	mov	r3, r6
   1074e:	3701      	adds	r7, #1
   10750:	47c0      	blx	r8
  while (len) {
   10752:	2d00      	cmp	r5, #0
   10754:	4628      	mov	r0, r5
   10756:	d1f5      	bne.n	10744 <_etoa+0x478>
    if (flags & FLAGS_LEFT) {
   10758:	980a      	ldr	r0, [sp, #40]	; 0x28
   1075a:	b198      	cbz	r0, 10784 <_etoa+0x4b8>
   1075c:	990b      	ldr	r1, [sp, #44]	; 0x2c
   1075e:	1a78      	subs	r0, r7, r1
   10760:	4548      	cmp	r0, r9
   10762:	d20f      	bcs.n	10784 <_etoa+0x4b8>
      while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
   10764:	424d      	negs	r5, r1
   10766:	bf00      	nop
   10768:	2020      	movs	r0, #32
   1076a:	4651      	mov	r1, sl
   1076c:	463a      	mov	r2, r7
   1076e:	4633      	mov	r3, r6
   10770:	1c7c      	adds	r4, r7, #1
   10772:	47c0      	blx	r8
   10774:	1928      	adds	r0, r5, r4
   10776:	4548      	cmp	r0, r9
   10778:	4627      	mov	r7, r4
   1077a:	d3f5      	bcc.n	10768 <_etoa+0x49c>
}
   1077c:	4620      	mov	r0, r4
   1077e:	b019      	add	sp, #100	; 0x64
   10780:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10784:	463c      	mov	r4, r7
   10786:	4620      	mov	r0, r4
   10788:	b019      	add	sp, #100	; 0x64
   1078a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1078e:	d4d4      	bmi.n	1073a <_etoa+0x46e>

00010790 <_ntoa_format>:
{
   10790:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10794:	b083      	sub	sp, #12
   10796:	9c12      	ldr	r4, [sp, #72]	; 0x48
   10798:	f10d 0c30 	add.w	ip, sp, #48	; 0x30
   1079c:	461e      	mov	r6, r3
   1079e:	e9dd 7510 	ldrd	r7, r5, [sp, #64]	; 0x40
   107a2:	e89c 1808 	ldmia.w	ip, {r3, fp, ip}
   107a6:	468a      	mov	sl, r1
   107a8:	4681      	mov	r9, r0
  if (!(flags & FLAGS_LEFT)) {
   107aa:	f014 0002 	ands.w	r0, r4, #2
   107ae:	e9cd 0201 	strd	r0, r2, [sp, #4]
   107b2:	d13b      	bne.n	1082c <_ntoa_format+0x9c>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
   107b4:	2d00      	cmp	r5, #0
   107b6:	f004 0801 	and.w	r8, r4, #1
   107ba:	bf18      	it	ne
   107bc:	f1b8 0f00 	cmpne.w	r8, #0
   107c0:	f040 8087 	bne.w	108d2 <_ntoa_format+0x142>
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   107c4:	45bb      	cmp	fp, r7
   107c6:	d22e      	bcs.n	10826 <_ntoa_format+0x96>
   107c8:	f1bb 0f1f 	cmp.w	fp, #31
   107cc:	d82b      	bhi.n	10826 <_ntoa_format+0x96>
   107ce:	ea6f 010b 	mvn.w	r1, fp
   107d2:	4439      	add	r1, r7
   107d4:	f1cb 021f 	rsb	r2, fp, #31
   107d8:	4291      	cmp	r1, r2
   107da:	bf38      	it	cc
   107dc:	460a      	movcc	r2, r1
   107de:	eb03 000b 	add.w	r0, r3, fp
   107e2:	3201      	adds	r2, #1
      buf[len++] = '0';
   107e4:	2130      	movs	r1, #48	; 0x30
   107e6:	f000 fa52 	bl	10c8e <memset>
   107ea:	f8dd c038 	ldr.w	ip, [sp, #56]	; 0x38
   107ee:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   107f0:	f10b 0001 	add.w	r0, fp, #1
   107f4:	42b8      	cmp	r0, r7
   107f6:	bf38      	it	cc
   107f8:	2820      	cmpcc	r0, #32
   107fa:	d213      	bcs.n	10824 <_ntoa_format+0x94>
   107fc:	f10b 0002 	add.w	r0, fp, #2
   10800:	42b8      	cmp	r0, r7
   10802:	d20f      	bcs.n	10824 <_ntoa_format+0x94>
   10804:	281f      	cmp	r0, #31
   10806:	d80d      	bhi.n	10824 <_ntoa_format+0x94>
   10808:	f10b 0003 	add.w	r0, fp, #3
   1080c:	42b8      	cmp	r0, r7
   1080e:	d209      	bcs.n	10824 <_ntoa_format+0x94>
   10810:	281f      	cmp	r0, #31
   10812:	d807      	bhi.n	10824 <_ntoa_format+0x94>
      buf[len++] = '0';
   10814:	f10b 0b04 	add.w	fp, fp, #4
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10818:	45bb      	cmp	fp, r7
   1081a:	d204      	bcs.n	10826 <_ntoa_format+0x96>
   1081c:	f1bb 0f20 	cmp.w	fp, #32
   10820:	d3e6      	bcc.n	107f0 <_ntoa_format+0x60>
   10822:	e000      	b.n	10826 <_ntoa_format+0x96>
   10824:	4683      	mov	fp, r0
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10826:	f1b8 0f00 	cmp.w	r8, #0
   1082a:	d11f      	bne.n	1086c <_ntoa_format+0xdc>
  if (flags & FLAGS_HASH) {
   1082c:	06e0      	lsls	r0, r4, #27
   1082e:	d56c      	bpl.n	1090a <_ntoa_format+0x17a>
   10830:	980f      	ldr	r0, [sp, #60]	; 0x3c
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
   10832:	0561      	lsls	r1, r4, #21
   10834:	d410      	bmi.n	10858 <_ntoa_format+0xc8>
   10836:	f1bb 0f00 	cmp.w	fp, #0
   1083a:	d00d      	beq.n	10858 <_ntoa_format+0xc8>
   1083c:	45bb      	cmp	fp, r7
   1083e:	bf18      	it	ne
   10840:	45ab      	cmpne	fp, r5
   10842:	d109      	bne.n	10858 <_ntoa_format+0xc8>
      len--;
   10844:	f1bb 0101 	subs.w	r1, fp, #1
      if (len && (base == 16U)) {
   10848:	460a      	mov	r2, r1
   1084a:	bf18      	it	ne
   1084c:	f1ab 0202 	subne.w	r2, fp, #2
   10850:	2810      	cmp	r0, #16
   10852:	bf18      	it	ne
   10854:	460a      	movne	r2, r1
   10856:	4693      	mov	fp, r2
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10858:	2810      	cmp	r0, #16
   1085a:	d133      	bne.n	108c4 <_ntoa_format+0x134>
   1085c:	f014 0020 	ands.w	r0, r4, #32
   10860:	d142      	bne.n	108e8 <_ntoa_format+0x158>
   10862:	f1bb 0f1f 	cmp.w	fp, #31
   10866:	d83f      	bhi.n	108e8 <_ntoa_format+0x158>
   10868:	2078      	movs	r0, #120	; 0x78
   1086a:	e042      	b.n	108f2 <_ntoa_format+0x162>
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   1086c:	45ab      	cmp	fp, r5
   1086e:	d2dd      	bcs.n	1082c <_ntoa_format+0x9c>
   10870:	f1bb 0f1f 	cmp.w	fp, #31
   10874:	d8da      	bhi.n	1082c <_ntoa_format+0x9c>
   10876:	2030      	movs	r0, #48	; 0x30
      buf[len++] = '0';
   10878:	f10b 0101 	add.w	r1, fp, #1
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   1087c:	42a9      	cmp	r1, r5
      buf[len++] = '0';
   1087e:	f803 000b 	strb.w	r0, [r3, fp]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10882:	bf38      	it	cc
   10884:	2920      	cmpcc	r1, #32
   10886:	f080 80a5 	bcs.w	109d4 <_ntoa_format+0x244>
      buf[len++] = '0';
   1088a:	f10b 0202 	add.w	r2, fp, #2
   1088e:	eb03 010b 	add.w	r1, r3, fp
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10892:	42aa      	cmp	r2, r5
      buf[len++] = '0';
   10894:	7048      	strb	r0, [r1, #1]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10896:	f080 808e 	bcs.w	109b6 <_ntoa_format+0x226>
   1089a:	2a1f      	cmp	r2, #31
   1089c:	f200 808b 	bhi.w	109b6 <_ntoa_format+0x226>
      buf[len++] = '0';
   108a0:	f10b 0203 	add.w	r2, fp, #3
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   108a4:	42aa      	cmp	r2, r5
      buf[len++] = '0';
   108a6:	7088      	strb	r0, [r1, #2]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   108a8:	f080 8085 	bcs.w	109b6 <_ntoa_format+0x226>
   108ac:	2a1f      	cmp	r2, #31
   108ae:	f200 8082 	bhi.w	109b6 <_ntoa_format+0x226>
      buf[len++] = '0';
   108b2:	f10b 0b04 	add.w	fp, fp, #4
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   108b6:	45ab      	cmp	fp, r5
      buf[len++] = '0';
   108b8:	70c8      	strb	r0, [r1, #3]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   108ba:	d2b7      	bcs.n	1082c <_ntoa_format+0x9c>
   108bc:	f1bb 0f20 	cmp.w	fp, #32
   108c0:	d3da      	bcc.n	10878 <_ntoa_format+0xe8>
   108c2:	e7b3      	b.n	1082c <_ntoa_format+0x9c>
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   108c4:	2802      	cmp	r0, #2
   108c6:	d118      	bne.n	108fa <_ntoa_format+0x16a>
   108c8:	f1bb 0f1f 	cmp.w	fp, #31
   108cc:	d815      	bhi.n	108fa <_ntoa_format+0x16a>
   108ce:	2062      	movs	r0, #98	; 0x62
   108d0:	e00f      	b.n	108f2 <_ntoa_format+0x162>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
   108d2:	f014 000c 	ands.w	r0, r4, #12
   108d6:	bf18      	it	ne
   108d8:	2001      	movne	r0, #1
   108da:	ea40 000c 	orr.w	r0, r0, ip
   108de:	1a2d      	subs	r5, r5, r0
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   108e0:	45bb      	cmp	fp, r7
   108e2:	f4ff af71 	bcc.w	107c8 <_ntoa_format+0x38>
   108e6:	e79e      	b.n	10826 <_ntoa_format+0x96>
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   108e8:	b138      	cbz	r0, 108fa <_ntoa_format+0x16a>
   108ea:	f1bb 0f1f 	cmp.w	fp, #31
   108ee:	d804      	bhi.n	108fa <_ntoa_format+0x16a>
   108f0:	2058      	movs	r0, #88	; 0x58
   108f2:	f803 000b 	strb.w	r0, [r3, fp]
   108f6:	f10b 0b01 	add.w	fp, fp, #1
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
   108fa:	f1bb 0f1f 	cmp.w	fp, #31
   108fe:	d810      	bhi.n	10922 <_ntoa_format+0x192>
   10900:	2030      	movs	r0, #48	; 0x30
      buf[len++] = '0';
   10902:	f803 000b 	strb.w	r0, [r3, fp]
   10906:	f10b 0b01 	add.w	fp, fp, #1
  if (len < PRINTF_NTOA_BUFFER_SIZE) {
   1090a:	f1bb 0f1f 	cmp.w	fp, #31
   1090e:	d808      	bhi.n	10922 <_ntoa_format+0x192>
    if (negative) {
   10910:	f1bc 0f00 	cmp.w	ip, #0
   10914:	d001      	beq.n	1091a <_ntoa_format+0x18a>
   10916:	202d      	movs	r0, #45	; 0x2d
   10918:	e053      	b.n	109c2 <_ntoa_format+0x232>
    else if (flags & FLAGS_PLUS) {
   1091a:	0760      	lsls	r0, r4, #29
   1091c:	d449      	bmi.n	109b2 <_ntoa_format+0x222>
    else if (flags & FLAGS_SPACE) {
   1091e:	0720      	lsls	r0, r4, #28
   10920:	d44e      	bmi.n	109c0 <_ntoa_format+0x230>
   10922:	4698      	mov	r8, r3
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   10924:	07e0      	lsls	r0, r4, #31
   10926:	9c02      	ldr	r4, [sp, #8]
   10928:	d110      	bne.n	1094c <_ntoa_format+0x1bc>
   1092a:	9801      	ldr	r0, [sp, #4]
   1092c:	9c02      	ldr	r4, [sp, #8]
   1092e:	b968      	cbnz	r0, 1094c <_ntoa_format+0x1bc>
   10930:	9c02      	ldr	r4, [sp, #8]
   10932:	45ab      	cmp	fp, r5
   10934:	d20a      	bcs.n	1094c <_ntoa_format+0x1bc>
   10936:	9a02      	ldr	r2, [sp, #8]
    for (size_t i = len; i < width; i++) {
   10938:	eba5 070b 	sub.w	r7, r5, fp
      out(' ', buffer, idx++, maxlen);
   1093c:	2020      	movs	r0, #32
   1093e:	4651      	mov	r1, sl
   10940:	4633      	mov	r3, r6
   10942:	1c54      	adds	r4, r2, #1
   10944:	47c8      	blx	r9
    for (size_t i = len; i < width; i++) {
   10946:	3f01      	subs	r7, #1
   10948:	4622      	mov	r2, r4
   1094a:	d1f7      	bne.n	1093c <_ntoa_format+0x1ac>
  while (len) {
   1094c:	f1bb 0f00 	cmp.w	fp, #0
   10950:	9500      	str	r5, [sp, #0]
   10952:	d011      	beq.n	10978 <_ntoa_format+0x1e8>
   10954:	f1a8 0801 	sub.w	r8, r8, #1
    out(buf[--len], buffer, idx++, maxlen);
   10958:	f818 000b 	ldrb.w	r0, [r8, fp]
   1095c:	4651      	mov	r1, sl
   1095e:	4622      	mov	r2, r4
   10960:	4633      	mov	r3, r6
   10962:	f1ab 0501 	sub.w	r5, fp, #1
   10966:	1c67      	adds	r7, r4, #1
   10968:	47c8      	blx	r9
  while (len) {
   1096a:	2d00      	cmp	r5, #0
   1096c:	463c      	mov	r4, r7
   1096e:	46ab      	mov	fp, r5
   10970:	d1f2      	bne.n	10958 <_ntoa_format+0x1c8>
  if (flags & FLAGS_LEFT) {
   10972:	9801      	ldr	r0, [sp, #4]
   10974:	b918      	cbnz	r0, 1097e <_ntoa_format+0x1ee>
   10976:	e017      	b.n	109a8 <_ntoa_format+0x218>
   10978:	4627      	mov	r7, r4
   1097a:	9801      	ldr	r0, [sp, #4]
   1097c:	b1a0      	cbz	r0, 109a8 <_ntoa_format+0x218>
   1097e:	9902      	ldr	r1, [sp, #8]
   10980:	f8dd 8000 	ldr.w	r8, [sp]
   10984:	1a78      	subs	r0, r7, r1
   10986:	4540      	cmp	r0, r8
   10988:	d20e      	bcs.n	109a8 <_ntoa_format+0x218>
    while (idx - start_idx < width) {
   1098a:	424d      	negs	r5, r1
      out(' ', buffer, idx++, maxlen);
   1098c:	2020      	movs	r0, #32
   1098e:	4651      	mov	r1, sl
   10990:	463a      	mov	r2, r7
   10992:	4633      	mov	r3, r6
   10994:	1c7c      	adds	r4, r7, #1
   10996:	47c8      	blx	r9
    while (idx - start_idx < width) {
   10998:	1928      	adds	r0, r5, r4
   1099a:	4540      	cmp	r0, r8
   1099c:	4627      	mov	r7, r4
   1099e:	d3f5      	bcc.n	1098c <_ntoa_format+0x1fc>
  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
   109a0:	4620      	mov	r0, r4
   109a2:	b003      	add	sp, #12
   109a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   109a8:	463c      	mov	r4, r7
   109aa:	4620      	mov	r0, r4
   109ac:	b003      	add	sp, #12
   109ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   109b2:	202b      	movs	r0, #43	; 0x2b
   109b4:	e005      	b.n	109c2 <_ntoa_format+0x232>
   109b6:	4693      	mov	fp, r2
  if (flags & FLAGS_HASH) {
   109b8:	06e0      	lsls	r0, r4, #27
   109ba:	f53f af39 	bmi.w	10830 <_ntoa_format+0xa0>
   109be:	e7a4      	b.n	1090a <_ntoa_format+0x17a>
   109c0:	2020      	movs	r0, #32
   109c2:	4698      	mov	r8, r3
   109c4:	f803 000b 	strb.w	r0, [r3, fp]
   109c8:	f10b 0b01 	add.w	fp, fp, #1
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   109cc:	07e0      	lsls	r0, r4, #31
   109ce:	9c02      	ldr	r4, [sp, #8]
   109d0:	d0ab      	beq.n	1092a <_ntoa_format+0x19a>
   109d2:	e7bb      	b.n	1094c <_ntoa_format+0x1bc>
   109d4:	468b      	mov	fp, r1
  if (flags & FLAGS_HASH) {
   109d6:	06e0      	lsls	r0, r4, #27
   109d8:	f53f af2a 	bmi.w	10830 <_ntoa_format+0xa0>
   109dc:	e795      	b.n	1090a <_ntoa_format+0x17a>

000109de <putc>:
#define NO_OPT __attribute__((optimize("O0")))
#endif

NO_OPT
int putc(int character, void *stream)
{
   109de:	b082      	sub	sp, #8
   109e0:	9001      	str	r0, [sp, #4]
   109e2:	9100      	str	r1, [sp, #0]
    (void)stream;
    return character;
   109e4:	9801      	ldr	r0, [sp, #4]
   109e6:	b002      	add	sp, #8
   109e8:	4770      	bx	lr

000109ea <_putchar>:
}

NO_OPT
void _putchar(char character) {
   109ea:	b580      	push	{r7, lr}
   109ec:	b082      	sub	sp, #8
   109ee:	f88d 0007 	strb.w	r0, [sp, #7]
    putc(character, &character);
   109f2:	f89d 0007 	ldrb.w	r0, [sp, #7]
   109f6:	f10d 0107 	add.w	r1, sp, #7
   109fa:	f7ff fff0 	bl	109de <putc>
}
   109fe:	b002      	add	sp, #8
   10a00:	bd80      	pop	{r7, pc}
   10a02:	d4d4      	bmi.n	109ae <_ntoa_format+0x21e>

00010a04 <Reset_Handler>:
Reset_Handler(void)
{
    //
    // Set the vector table pointer.
    //
    __asm("    ldr    r0, =0xE000ED08\n"
   10a04:	480c      	ldr	r0, [pc, #48]	; (10a38 <zero_loop+0x10>)
   10a06:	490d      	ldr	r1, [pc, #52]	; (10a3c <zero_loop+0x14>)
   10a08:	6001      	str	r1, [r0, #0]
          "    str    r1, [r0]");

    //
    // Set the stack pointer.
    //
    __asm("    ldr    sp, [r1]");
   10a0a:	f8d1 d000 	ldr.w	sp, [r1]
//          "isb\n");
//#endif
    //
    // Copy the data segment initializers from flash to SRAM.
    //
    __asm("    ldr     r0, =_init_data\n"
   10a0e:	480c      	ldr	r0, [pc, #48]	; (10a40 <zero_loop+0x18>)
   10a10:	490c      	ldr	r1, [pc, #48]	; (10a44 <zero_loop+0x1c>)
   10a12:	4a0d      	ldr	r2, [pc, #52]	; (10a48 <zero_loop+0x20>)

00010a14 <copy_loop>:
   10a14:	f850 3b04 	ldr.w	r3, [r0], #4
   10a18:	f841 3b04 	str.w	r3, [r1], #4
   10a1c:	4291      	cmp	r1, r2
   10a1e:	dbf9      	blt.n	10a14 <copy_loop>
          "        cmp     r1, r2\n"
          "        blt     copy_loop\n");
    //
    // Zero fill the bss segment.
    //
    __asm("    ldr     r0, =_sbss\n"
   10a20:	480a      	ldr	r0, [pc, #40]	; (10a4c <zero_loop+0x24>)
   10a22:	490b      	ldr	r1, [pc, #44]	; (10a50 <zero_loop+0x28>)
   10a24:	f04f 0200 	mov.w	r2, #0

00010a28 <zero_loop>:
   10a28:	4288      	cmp	r0, r1
   10a2a:	bfb8      	it	lt
   10a2c:	f840 2b04 	strlt.w	r2, [r0], #4
   10a30:	dbfa      	blt.n	10a28 <zero_loop>

    //
    // Call the application's entry point.
    //
    //main();
    __asm("    bl   main\n");
   10a32:	f7fc fbc3 	bl	d1bc <main>

    //
    // If main returns then execute a break point instruction
    //
    __asm("    bkpt     ");
   10a36:	be00      	bkpt	0x0000
   10a38:	e000ed08 	.word	0xe000ed08
   10a3c:	0000c000 	.word	0x0000c000
   10a40:	00011208 	.word	0x00011208
   10a44:	10000000 	.word	0x10000000
   10a48:	1000000c 	.word	0x1000000c
   10a4c:	10000010 	.word	0x10000010
   10a50:	10000038 	.word	0x10000038

00010a54 <NMI_Handler>:
NMI_Handler(void)
{
    //
    // Go into an infinite loop.
    //
    while(1)
   10a54:	e7fe      	b.n	10a54 <NMI_Handler>
   10a56:	d4d4      	bmi.n	10a02 <_putchar+0x18>

00010a58 <BusFault_Handler>:
HardFault_Handler(void)
{
    //
    // Go into an infinite loop.
    //
    while(1)
   10a58:	e7fe      	b.n	10a58 <BusFault_Handler>
   10a5a:	d4d4      	bmi.n	10a06 <Reset_Handler+0x2>

00010a5c <DebugMon_Handler>:
am_default_isr(void)
{
    //
    // Go into an infinite loop.
    //
    while(1)
   10a5c:	e7fe      	b.n	10a5c <DebugMon_Handler>

00010a5e <__udivdi3>:
   10a5e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
   10a62:	468c      	mov	ip, r1
   10a64:	4606      	mov	r6, r0
   10a66:	4605      	mov	r5, r0
   10a68:	4614      	mov	r4, r2
   10a6a:	4608      	mov	r0, r1
   10a6c:	4619      	mov	r1, r3
   10a6e:	2b00      	cmp	r3, #0
   10a70:	f040 80ae 	bne.w	10bd0 <__udivdi3+0x172>
   10a74:	4562      	cmp	r2, ip
   10a76:	fab2 f682 	clz	r6, r2
   10a7a:	d938      	bls.n	10aee <__udivdi3+0x90>
   10a7c:	b13e      	cbz	r6, 10a8e <__udivdi3+0x30>
   10a7e:	f1c6 0320 	rsb	r3, r6, #32
   10a82:	fa25 f303 	lsr.w	r3, r5, r3
   10a86:	40b0      	lsls	r0, r6
   10a88:	40b4      	lsls	r4, r6
   10a8a:	4318      	orrs	r0, r3
   10a8c:	40b5      	lsls	r5, r6
   10a8e:	ea4f 4c14 	mov.w	ip, r4, lsr #16
   10a92:	b2a6      	uxth	r6, r4
   10a94:	fbb0 fefc 	udiv	lr, r0, ip
   10a98:	0c2a      	lsrs	r2, r5, #16
   10a9a:	fb0c 001e 	mls	r0, ip, lr, r0
   10a9e:	fb0e f806 	mul.w	r8, lr, r6
   10aa2:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
   10aa6:	4598      	cmp	r8, r3
   10aa8:	d91f      	bls.n	10aea <__udivdi3+0x8c>
   10aaa:	18e3      	adds	r3, r4, r3
   10aac:	f10e 37ff 	add.w	r7, lr, #4294967295	; 0xffffffff
   10ab0:	d204      	bcs.n	10abc <__udivdi3+0x5e>
   10ab2:	4598      	cmp	r8, r3
   10ab4:	d902      	bls.n	10abc <__udivdi3+0x5e>
   10ab6:	f1ae 0702 	sub.w	r7, lr, #2
   10aba:	4423      	add	r3, r4
   10abc:	eba3 0308 	sub.w	r3, r3, r8
   10ac0:	b2ad      	uxth	r5, r5
   10ac2:	fbb3 f2fc 	udiv	r2, r3, ip
   10ac6:	fb0c 3312 	mls	r3, ip, r2, r3
   10aca:	4356      	muls	r6, r2
   10acc:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
   10ad0:	429e      	cmp	r6, r3
   10ad2:	d97b      	bls.n	10bcc <__udivdi3+0x16e>
   10ad4:	18e3      	adds	r3, r4, r3
   10ad6:	f102 30ff 	add.w	r0, r2, #4294967295	; 0xffffffff
   10ada:	d202      	bcs.n	10ae2 <__udivdi3+0x84>
   10adc:	429e      	cmp	r6, r3
   10ade:	d900      	bls.n	10ae2 <__udivdi3+0x84>
   10ae0:	1e90      	subs	r0, r2, #2
   10ae2:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
   10ae6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
   10aea:	4677      	mov	r7, lr
   10aec:	e7e6      	b.n	10abc <__udivdi3+0x5e>
   10aee:	b902      	cbnz	r2, 10af2 <__udivdi3+0x94>
   10af0:	deff      	udf	#255	; 0xff
   10af2:	bb56      	cbnz	r6, 10b4a <__udivdi3+0xec>
   10af4:	ebac 0302 	sub.w	r3, ip, r2
   10af8:	2101      	movs	r1, #1
   10afa:	0c20      	lsrs	r0, r4, #16
   10afc:	b2a6      	uxth	r6, r4
   10afe:	fbb3 fcf0 	udiv	ip, r3, r0
   10b02:	0c2a      	lsrs	r2, r5, #16
   10b04:	fb00 331c 	mls	r3, r0, ip, r3
   10b08:	fb0c fe06 	mul.w	lr, ip, r6
   10b0c:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
   10b10:	459e      	cmp	lr, r3
   10b12:	d959      	bls.n	10bc8 <__udivdi3+0x16a>
   10b14:	18e3      	adds	r3, r4, r3
   10b16:	f10c 37ff 	add.w	r7, ip, #4294967295	; 0xffffffff
   10b1a:	d204      	bcs.n	10b26 <__udivdi3+0xc8>
   10b1c:	459e      	cmp	lr, r3
   10b1e:	d902      	bls.n	10b26 <__udivdi3+0xc8>
   10b20:	f1ac 0702 	sub.w	r7, ip, #2
   10b24:	4423      	add	r3, r4
   10b26:	eba3 030e 	sub.w	r3, r3, lr
   10b2a:	b2ad      	uxth	r5, r5
   10b2c:	fbb3 f2f0 	udiv	r2, r3, r0
   10b30:	fb00 3312 	mls	r3, r0, r2, r3
   10b34:	4356      	muls	r6, r2
   10b36:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
   10b3a:	429e      	cmp	r6, r3
   10b3c:	d946      	bls.n	10bcc <__udivdi3+0x16e>
   10b3e:	18e4      	adds	r4, r4, r3
   10b40:	f102 30ff 	add.w	r0, r2, #4294967295	; 0xffffffff
   10b44:	d2cd      	bcs.n	10ae2 <__udivdi3+0x84>
   10b46:	42a6      	cmp	r6, r4
   10b48:	e7c9      	b.n	10ade <__udivdi3+0x80>
   10b4a:	f1c6 0020 	rsb	r0, r6, #32
   10b4e:	fa2c f700 	lsr.w	r7, ip, r0
   10b52:	fa0c f306 	lsl.w	r3, ip, r6
   10b56:	40b4      	lsls	r4, r6
   10b58:	fa25 f000 	lsr.w	r0, r5, r0
   10b5c:	ea40 0203 	orr.w	r2, r0, r3
   10b60:	ea4f 4c14 	mov.w	ip, r4, lsr #16
   10b64:	40b5      	lsls	r5, r6
   10b66:	b2a3      	uxth	r3, r4
   10b68:	fbb7 f6fc 	udiv	r6, r7, ip
   10b6c:	0c11      	lsrs	r1, r2, #16
   10b6e:	fb0c 7716 	mls	r7, ip, r6, r7
   10b72:	fb06 fe03 	mul.w	lr, r6, r3
   10b76:	ea41 4007 	orr.w	r0, r1, r7, lsl #16
   10b7a:	4586      	cmp	lr, r0
   10b7c:	d920      	bls.n	10bc0 <__udivdi3+0x162>
   10b7e:	1820      	adds	r0, r4, r0
   10b80:	f106 31ff 	add.w	r1, r6, #4294967295	; 0xffffffff
   10b84:	d203      	bcs.n	10b8e <__udivdi3+0x130>
   10b86:	4586      	cmp	lr, r0
   10b88:	d901      	bls.n	10b8e <__udivdi3+0x130>
   10b8a:	1eb1      	subs	r1, r6, #2
   10b8c:	4420      	add	r0, r4
   10b8e:	eba0 000e 	sub.w	r0, r0, lr
   10b92:	b292      	uxth	r2, r2
   10b94:	fbb0 f7fc 	udiv	r7, r0, ip
   10b98:	fb0c 0017 	mls	r0, ip, r7, r0
   10b9c:	fb07 f603 	mul.w	r6, r7, r3
   10ba0:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
   10ba4:	429e      	cmp	r6, r3
   10ba6:	d90d      	bls.n	10bc4 <__udivdi3+0x166>
   10ba8:	18e3      	adds	r3, r4, r3
   10baa:	f107 32ff 	add.w	r2, r7, #4294967295	; 0xffffffff
   10bae:	d203      	bcs.n	10bb8 <__udivdi3+0x15a>
   10bb0:	429e      	cmp	r6, r3
   10bb2:	d901      	bls.n	10bb8 <__udivdi3+0x15a>
   10bb4:	1eba      	subs	r2, r7, #2
   10bb6:	4423      	add	r3, r4
   10bb8:	1b9b      	subs	r3, r3, r6
   10bba:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
   10bbe:	e79c      	b.n	10afa <__udivdi3+0x9c>
   10bc0:	4631      	mov	r1, r6
   10bc2:	e7e4      	b.n	10b8e <__udivdi3+0x130>
   10bc4:	463a      	mov	r2, r7
   10bc6:	e7f7      	b.n	10bb8 <__udivdi3+0x15a>
   10bc8:	4667      	mov	r7, ip
   10bca:	e7ac      	b.n	10b26 <__udivdi3+0xc8>
   10bcc:	4610      	mov	r0, r2
   10bce:	e788      	b.n	10ae2 <__udivdi3+0x84>
   10bd0:	4563      	cmp	r3, ip
   10bd2:	d859      	bhi.n	10c88 <__udivdi3+0x22a>
   10bd4:	fab3 f483 	clz	r4, r3
   10bd8:	b934      	cbnz	r4, 10be8 <__udivdi3+0x18a>
   10bda:	4563      	cmp	r3, ip
   10bdc:	d301      	bcc.n	10be2 <__udivdi3+0x184>
   10bde:	42b2      	cmp	r2, r6
   10be0:	d852      	bhi.n	10c88 <__udivdi3+0x22a>
   10be2:	2100      	movs	r1, #0
   10be4:	2001      	movs	r0, #1
   10be6:	e77e      	b.n	10ae6 <__udivdi3+0x88>
   10be8:	f1c4 0020 	rsb	r0, r4, #32
   10bec:	fa22 f700 	lsr.w	r7, r2, r0
   10bf0:	40a3      	lsls	r3, r4
   10bf2:	431f      	orrs	r7, r3
   10bf4:	fa02 f504 	lsl.w	r5, r2, r4
   10bf8:	fa0c f304 	lsl.w	r3, ip, r4
   10bfc:	fa26 f200 	lsr.w	r2, r6, r0
   10c00:	fa2c f900 	lsr.w	r9, ip, r0
   10c04:	4313      	orrs	r3, r2
   10c06:	ea4f 4817 	mov.w	r8, r7, lsr #16
   10c0a:	b2ba      	uxth	r2, r7
   10c0c:	fbb9 fef8 	udiv	lr, r9, r8
   10c10:	0c18      	lsrs	r0, r3, #16
   10c12:	fb08 911e 	mls	r1, r8, lr, r9
   10c16:	fb0e fc02 	mul.w	ip, lr, r2
   10c1a:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
   10c1e:	458c      	cmp	ip, r1
   10c20:	d92e      	bls.n	10c80 <__udivdi3+0x222>
   10c22:	1879      	adds	r1, r7, r1
   10c24:	f10e 30ff 	add.w	r0, lr, #4294967295	; 0xffffffff
   10c28:	d204      	bcs.n	10c34 <__udivdi3+0x1d6>
   10c2a:	458c      	cmp	ip, r1
   10c2c:	d902      	bls.n	10c34 <__udivdi3+0x1d6>
   10c2e:	f1ae 0002 	sub.w	r0, lr, #2
   10c32:	4439      	add	r1, r7
   10c34:	eba1 010c 	sub.w	r1, r1, ip
   10c38:	fbb1 fef8 	udiv	lr, r1, r8
   10c3c:	fb0e fc02 	mul.w	ip, lr, r2
   10c40:	fb08 111e 	mls	r1, r8, lr, r1
   10c44:	b29a      	uxth	r2, r3
   10c46:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
   10c4a:	4594      	cmp	ip, r2
   10c4c:	d91a      	bls.n	10c84 <__udivdi3+0x226>
   10c4e:	18ba      	adds	r2, r7, r2
   10c50:	f10e 33ff 	add.w	r3, lr, #4294967295	; 0xffffffff
   10c54:	d204      	bcs.n	10c60 <__udivdi3+0x202>
   10c56:	4594      	cmp	ip, r2
   10c58:	d902      	bls.n	10c60 <__udivdi3+0x202>
   10c5a:	f1ae 0302 	sub.w	r3, lr, #2
   10c5e:	443a      	add	r2, r7
   10c60:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
   10c64:	eba2 020c 	sub.w	r2, r2, ip
   10c68:	fba0 5305 	umull	r5, r3, r0, r5
   10c6c:	429a      	cmp	r2, r3
   10c6e:	d304      	bcc.n	10c7a <__udivdi3+0x21c>
   10c70:	d104      	bne.n	10c7c <__udivdi3+0x21e>
   10c72:	fa06 f404 	lsl.w	r4, r6, r4
   10c76:	42ac      	cmp	r4, r5
   10c78:	d200      	bcs.n	10c7c <__udivdi3+0x21e>
   10c7a:	3801      	subs	r0, #1
   10c7c:	2100      	movs	r1, #0
   10c7e:	e732      	b.n	10ae6 <__udivdi3+0x88>
   10c80:	4670      	mov	r0, lr
   10c82:	e7d7      	b.n	10c34 <__udivdi3+0x1d6>
   10c84:	4673      	mov	r3, lr
   10c86:	e7eb      	b.n	10c60 <__udivdi3+0x202>
   10c88:	2100      	movs	r1, #0
   10c8a:	4608      	mov	r0, r1
   10c8c:	e72b      	b.n	10ae6 <__udivdi3+0x88>

00010c8e <memset>:
   10c8e:	4402      	add	r2, r0
   10c90:	4603      	mov	r3, r0
   10c92:	4293      	cmp	r3, r2
   10c94:	d100      	bne.n	10c98 <memset+0xa>
   10c96:	4770      	bx	lr
   10c98:	f803 1b01 	strb.w	r1, [r3], #1
   10c9c:	e7f9      	b.n	10c92 <memset+0x4>
   10c9e:	6f54      	ldr	r4, [r2, #116]	; 0x74
   10ca0:	6174      	str	r4, [r6, #20]
   10ca2:	206c      	movs	r0, #108	; 0x6c
   10ca4:	6974      	ldr	r4, [r6, #20]
   10ca6:	6b63      	ldr	r3, [r4, #52]	; 0x34
   10ca8:	2073      	movs	r0, #115	; 0x73
   10caa:	2020      	movs	r0, #32
   10cac:	2020      	movs	r0, #32
   10cae:	3a20      	subs	r2, #32
   10cb0:	2520      	movs	r5, #32
   10cb2:	756c      	strb	r4, [r5, #21]
   10cb4:	000a      	movs	r2, r1
   10cb6:	4b32      	ldr	r3, [pc, #200]	; (10d80 <memset+0xf2>)
   10cb8:	7020      	strb	r0, [r4, #0]
   10cba:	7265      	strb	r5, [r4, #9]
   10cbc:	6f66      	ldr	r6, [r4, #116]	; 0x74
   10cbe:	6d72      	ldr	r2, [r6, #84]	; 0x54
   10cc0:	6e61      	ldr	r1, [r4, #100]	; 0x64
   10cc2:	6563      	str	r3, [r4, #84]	; 0x54
   10cc4:	7220      	strb	r0, [r4, #8]
   10cc6:	6e75      	ldr	r5, [r6, #100]	; 0x64
   10cc8:	7020      	strb	r0, [r4, #0]
   10cca:	7261      	strb	r1, [r4, #9]
   10ccc:	6d61      	ldr	r1, [r4, #84]	; 0x54
   10cce:	7465      	strb	r5, [r4, #17]
   10cd0:	7265      	strb	r5, [r4, #9]
   10cd2:	2073      	movs	r0, #115	; 0x73
   10cd4:	6f66      	ldr	r6, [r4, #116]	; 0x74
   10cd6:	2072      	movs	r0, #114	; 0x72
   10cd8:	6f63      	ldr	r3, [r4, #116]	; 0x74
   10cda:	6572      	str	r2, [r6, #84]	; 0x54
   10cdc:	616d      	str	r5, [r5, #20]
   10cde:	6b72      	ldr	r2, [r6, #52]	; 0x34
   10ce0:	0a2e      	lsrs	r6, r5, #8
   10ce2:	4300      	orrs	r0, r0
   10ce4:	6e61      	ldr	r1, [r4, #100]	; 0x64
   10ce6:	6f6e      	ldr	r6, [r5, #116]	; 0x74
   10ce8:	2074      	movs	r0, #116	; 0x74
   10cea:	6176      	str	r6, [r6, #20]
   10cec:	696c      	ldr	r4, [r5, #20]
   10cee:	6164      	str	r4, [r4, #20]
   10cf0:	6574      	str	r4, [r6, #84]	; 0x54
   10cf2:	6f20      	ldr	r0, [r4, #112]	; 0x70
   10cf4:	6570      	str	r0, [r6, #84]	; 0x54
   10cf6:	6172      	str	r2, [r6, #20]
   10cf8:	6974      	ldr	r4, [r6, #20]
   10cfa:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   10cfc:	6620      	str	r0, [r4, #96]	; 0x60
   10cfe:	726f      	strb	r7, [r5, #9]
   10d00:	7420      	strb	r0, [r4, #16]
   10d02:	6568      	str	r0, [r5, #84]	; 0x54
   10d04:	6573      	str	r3, [r6, #84]	; 0x54
   10d06:	7320      	strb	r0, [r4, #12]
   10d08:	6565      	str	r5, [r4, #84]	; 0x54
   10d0a:	2064      	movs	r0, #100	; 0x64
   10d0c:	6176      	str	r6, [r6, #20]
   10d0e:	756c      	strb	r4, [r5, #21]
   10d10:	7365      	strb	r5, [r4, #13]
   10d12:	202c      	movs	r0, #44	; 0x2c
   10d14:	6c70      	ldr	r0, [r6, #68]	; 0x44
   10d16:	6165      	str	r5, [r4, #20]
   10d18:	6573      	str	r3, [r6, #84]	; 0x54
   10d1a:	6320      	str	r0, [r4, #48]	; 0x30
   10d1c:	6d6f      	ldr	r7, [r5, #84]	; 0x54
   10d1e:	6170      	str	r0, [r6, #20]
   10d20:	6572      	str	r2, [r6, #84]	; 0x54
   10d22:	7720      	strb	r0, [r4, #28]
   10d24:	7469      	strb	r1, [r5, #17]
   10d26:	2068      	movs	r0, #104	; 0x68
   10d28:	6572      	str	r2, [r6, #84]	; 0x54
   10d2a:	7573      	strb	r3, [r6, #21]
   10d2c:	746c      	strb	r4, [r5, #17]
   10d2e:	2073      	movs	r0, #115	; 0x73
   10d30:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   10d32:	6120      	str	r0, [r4, #16]
   10d34:	6b20      	ldr	r0, [r4, #48]	; 0x30
   10d36:	6f6e      	ldr	r6, [r5, #116]	; 0x74
   10d38:	6e77      	ldr	r7, [r6, #100]	; 0x64
   10d3a:	7020      	strb	r0, [r4, #0]
   10d3c:	616c      	str	r4, [r5, #20]
   10d3e:	6674      	str	r4, [r6, #100]	; 0x64
   10d40:	726f      	strb	r7, [r5, #9]
   10d42:	2e6d      	cmp	r6, #109	; 0x6d
   10d44:	000a      	movs	r2, r1
   10d46:	3433      	adds	r4, #51	; 0x33
   10d48:	302e      	adds	r0, #46	; 0x2e
   10d4a:	2d65      	cmp	r5, #101	; 0x65
   10d4c:	5e54      	ldrsh	r4, [r2, r1]
   10d4e:	5b00      	ldrh	r0, [r0, r4]
   10d50:	6425      	str	r5, [r4, #64]	; 0x40
   10d52:	635d      	str	r5, [r3, #52]	; 0x34
   10d54:	6372      	str	r2, [r6, #52]	; 0x34
   10d56:	616d      	str	r5, [r5, #20]
   10d58:	7274      	strb	r4, [r6, #9]
   10d5a:	7869      	ldrb	r1, [r5, #1]
   10d5c:	2020      	movs	r0, #32
   10d5e:	2020      	movs	r0, #32
   10d60:	3a20      	subs	r2, #32
   10d62:	3020      	adds	r0, #32
   10d64:	2578      	movs	r5, #120	; 0x78
   10d66:	3430      	adds	r4, #48	; 0x30
   10d68:	0a78      	lsrs	r0, r7, #9
   10d6a:	5b00      	ldrh	r0, [r0, r4]
   10d6c:	7525      	strb	r5, [r4, #20]
   10d6e:	455d      	cmp	r5, fp
   10d70:	5252      	strh	r2, [r2, r1]
   10d72:	524f      	strh	r7, [r1, r1]
   10d74:	2021      	movs	r0, #33	; 0x21
   10d76:	616d      	str	r5, [r5, #20]
   10d78:	7274      	strb	r4, [r6, #9]
   10d7a:	7869      	ldrb	r1, [r5, #1]
   10d7c:	6320      	str	r0, [r4, #48]	; 0x30
   10d7e:	6372      	str	r2, [r6, #52]	; 0x34
   10d80:	3020      	adds	r0, #32
   10d82:	2578      	movs	r5, #120	; 0x78
   10d84:	3430      	adds	r4, #48	; 0x30
   10d86:	2078      	movs	r0, #120	; 0x78
   10d88:	202d      	movs	r0, #45	; 0x2d
   10d8a:	6873      	ldr	r3, [r6, #4]
   10d8c:	756f      	strb	r7, [r5, #21]
   10d8e:	646c      	str	r4, [r5, #68]	; 0x44
   10d90:	6220      	str	r0, [r4, #32]
   10d92:	2065      	movs	r0, #101	; 0x65
   10d94:	7830      	ldrb	r0, [r6, #0]
   10d96:	3025      	adds	r0, #37	; 0x25
   10d98:	7834      	ldrb	r4, [r6, #0]
   10d9a:	000a      	movs	r2, r1
   10d9c:	7250      	strb	r0, [r2, #9]
   10d9e:	666f      	str	r7, [r5, #100]	; 0x64
   10da0:	6c69      	ldr	r1, [r5, #68]	; 0x44
   10da2:	2065      	movs	r0, #101	; 0x65
   10da4:	6567      	str	r7, [r4, #84]	; 0x54
   10da6:	656e      	str	r6, [r5, #84]	; 0x54
   10da8:	6172      	str	r2, [r6, #20]
   10daa:	6974      	ldr	r4, [r6, #20]
   10dac:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   10dae:	7220      	strb	r0, [r4, #8]
   10db0:	6e75      	ldr	r5, [r6, #100]	; 0x64
   10db2:	7020      	strb	r0, [r4, #0]
   10db4:	7261      	strb	r1, [r4, #9]
   10db6:	6d61      	ldr	r1, [r4, #84]	; 0x54
   10db8:	7465      	strb	r5, [r4, #17]
   10dba:	7265      	strb	r5, [r4, #9]
   10dbc:	2073      	movs	r0, #115	; 0x73
   10dbe:	6f66      	ldr	r6, [r4, #116]	; 0x74
   10dc0:	2072      	movs	r0, #114	; 0x72
   10dc2:	6f63      	ldr	r3, [r4, #116]	; 0x74
   10dc4:	6572      	str	r2, [r6, #84]	; 0x54
   10dc6:	616d      	str	r5, [r5, #20]
   10dc8:	6b72      	ldr	r2, [r6, #52]	; 0x34
   10dca:	0a2e      	lsrs	r6, r5, #8
   10dcc:	3500      	adds	r5, #0
   10dce:	352e      	adds	r5, #46	; 0x2e
   10dd0:	3030      	adds	r0, #48	; 0x30
   10dd2:	2b65      	cmp	r3, #101	; 0x65
   10dd4:	0033      	movs	r3, r6
   10dd6:	2e2d      	cmp	r6, #45	; 0x2d
   10dd8:	3231      	adds	r2, #49	; 0x31
   10dda:	6533      	str	r3, [r6, #80]	; 0x50
   10ddc:	322d      	adds	r2, #45	; 0x2d
   10dde:	2e00      	cmp	r6, #0
   10de0:	3231      	adds	r2, #49	; 0x31
   10de2:	3433      	adds	r4, #51	; 0x33
   10de4:	3035      	adds	r0, #53	; 0x35
   10de6:	0030      	movs	r0, r6
   10de8:	382d      	subs	r0, #45	; 0x2d
   10dea:	3437      	adds	r4, #55	; 0x37
   10dec:	6600      	str	r0, [r0, #96]	; 0x60
   10dee:	696e      	ldr	r6, [r5, #20]
   10df0:	002b      	movs	r3, r5
   10df2:	5453      	strb	r3, [r2, r1]
   10df4:	4341      	muls	r1, r0
   10df6:	004b      	lsls	r3, r1, #1
   10df8:	302b      	adds	r0, #43	; 0x2b
   10dfa:	362e      	adds	r6, #46	; 0x2e
   10dfc:	2d65      	cmp	r5, #101	; 0x65
   10dfe:	3231      	adds	r2, #49	; 0x31
   10e00:	4500      	cmp	r0, r0
   10e02:	5252      	strh	r2, [r2, r1]
   10e04:	524f      	strh	r7, [r1, r1]
   10e06:	2021      	movs	r0, #33	; 0x21
   10e08:	754d      	strb	r5, [r1, #21]
   10e0a:	7473      	strb	r3, [r6, #17]
   10e0c:	6520      	str	r0, [r4, #80]	; 0x50
   10e0e:	6578      	str	r0, [r7, #84]	; 0x54
   10e10:	7563      	strb	r3, [r4, #21]
   10e12:	6574      	str	r4, [r6, #84]	; 0x54
   10e14:	6620      	str	r0, [r4, #96]	; 0x60
   10e16:	726f      	strb	r7, [r5, #9]
   10e18:	6120      	str	r0, [r4, #16]
   10e1a:	2074      	movs	r0, #116	; 0x74
   10e1c:	656c      	str	r4, [r5, #84]	; 0x54
   10e1e:	7361      	strb	r1, [r4, #13]
   10e20:	2074      	movs	r0, #116	; 0x74
   10e22:	3031      	adds	r0, #49	; 0x31
   10e24:	7320      	strb	r0, [r4, #12]
   10e26:	6365      	str	r5, [r4, #52]	; 0x34
   10e28:	2073      	movs	r0, #115	; 0x73
   10e2a:	6f66      	ldr	r6, [r4, #116]	; 0x74
   10e2c:	2072      	movs	r0, #114	; 0x72
   10e2e:	2061      	movs	r0, #97	; 0x61
   10e30:	6176      	str	r6, [r6, #20]
   10e32:	696c      	ldr	r4, [r5, #20]
   10e34:	2064      	movs	r0, #100	; 0x64
   10e36:	6572      	str	r2, [r6, #84]	; 0x54
   10e38:	7573      	strb	r3, [r6, #21]
   10e3a:	746c      	strb	r4, [r5, #17]
   10e3c:	0a21      	lsrs	r1, r4, #8
   10e3e:	4900      	ldr	r1, [pc, #0]	; (10e40 <memset+0x1b2>)
   10e40:	6574      	str	r4, [r6, #84]	; 0x54
   10e42:	6172      	str	r2, [r6, #20]
   10e44:	6974      	ldr	r4, [r6, #20]
   10e46:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   10e48:	2073      	movs	r0, #115	; 0x73
   10e4a:	2020      	movs	r0, #32
   10e4c:	2020      	movs	r0, #32
   10e4e:	2020      	movs	r0, #32
   10e50:	203a      	movs	r0, #58	; 0x3a
   10e52:	6c25      	ldr	r5, [r4, #64]	; 0x40
   10e54:	0a75      	lsrs	r5, r6, #9
   10e56:	4500      	cmp	r0, r0
   10e58:	7272      	strb	r2, [r6, #9]
   10e5a:	726f      	strb	r7, [r5, #9]
   10e5c:	2073      	movs	r0, #115	; 0x73
   10e5e:	6564      	str	r4, [r4, #84]	; 0x54
   10e60:	6574      	str	r4, [r6, #84]	; 0x54
   10e62:	7463      	strb	r3, [r4, #17]
   10e64:	6465      	str	r5, [r4, #68]	; 0x44
   10e66:	000a      	movs	r2, r1
   10e68:	3054      	adds	r0, #84	; 0x54
   10e6a:	332e      	adds	r3, #46	; 0x2e
   10e6c:	2d65      	cmp	r5, #101	; 0x65
   10e6e:	4631      	mov	r1, r6
   10e70:	7300      	strb	r0, [r0, #12]
   10e72:	6565      	str	r5, [r4, #84]	; 0x54
   10e74:	6364      	str	r4, [r4, #52]	; 0x34
   10e76:	6372      	str	r2, [r6, #52]	; 0x34
   10e78:	2020      	movs	r0, #32
   10e7a:	2020      	movs	r0, #32
   10e7c:	2020      	movs	r0, #32
   10e7e:	2020      	movs	r0, #32
   10e80:	2020      	movs	r0, #32
   10e82:	203a      	movs	r0, #58	; 0x3a
   10e84:	7830      	ldrb	r0, [r6, #0]
   10e86:	3025      	adds	r0, #37	; 0x25
   10e88:	7834      	ldrb	r4, [r6, #0]
   10e8a:	000a      	movs	r2, r1
   10e8c:	312b      	adds	r1, #43	; 0x2b
   10e8e:	3232      	adds	r2, #50	; 0x32
   10e90:	3500      	adds	r5, #0
   10e92:	3130      	adds	r1, #48	; 0x30
   10e94:	0032      	movs	r2, r6
   10e96:	6f43      	ldr	r3, [r0, #116]	; 0x74
   10e98:	706d      	strb	r5, [r5, #1]
   10e9a:	6c69      	ldr	r1, [r5, #68]	; 0x44
   10e9c:	7265      	strb	r5, [r4, #9]
   10e9e:	7620      	strb	r0, [r4, #24]
   10ea0:	7265      	strb	r5, [r4, #9]
   10ea2:	6973      	ldr	r3, [r6, #20]
   10ea4:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   10ea6:	3a20      	subs	r2, #32
   10ea8:	2520      	movs	r5, #32
   10eaa:	0a73      	lsrs	r3, r6, #9
   10eac:	4300      	orrs	r0, r0
   10eae:	6d6f      	ldr	r7, [r5, #84]	; 0x54
   10eb0:	6970      	ldr	r0, [r6, #20]
   10eb2:	656c      	str	r4, [r5, #84]	; 0x54
   10eb4:	2072      	movs	r0, #114	; 0x72
   10eb6:	6c66      	ldr	r6, [r4, #68]	; 0x44
   10eb8:	6761      	str	r1, [r4, #116]	; 0x74
   10eba:	2073      	movs	r0, #115	; 0x73
   10ebc:	2020      	movs	r0, #32
   10ebe:	203a      	movs	r0, #58	; 0x3a
   10ec0:	7325      	strb	r5, [r4, #12]
   10ec2:	000a      	movs	r2, r1
   10ec4:	6f43      	ldr	r3, [r0, #116]	; 0x74
   10ec6:	6572      	str	r2, [r6, #84]	; 0x54
   10ec8:	614d      	str	r5, [r1, #20]
   10eca:	6b72      	ldr	r2, [r6, #52]	; 0x34
   10ecc:	3120      	adds	r1, #32
   10ece:	302e      	adds	r0, #46	; 0x2e
   10ed0:	3a20      	subs	r2, #32
   10ed2:	2520      	movs	r5, #32
   10ed4:	2066      	movs	r0, #102	; 0x66
   10ed6:	202f      	movs	r0, #47	; 0x2f
   10ed8:	7325      	strb	r5, [r4, #12]
   10eda:	2520      	movs	r5, #32
   10edc:	0073      	lsls	r3, r6, #1
   10ede:	3533      	adds	r5, #51	; 0x33
   10ee0:	352e      	adds	r5, #46	; 0x2e
   10ee2:	3434      	adds	r4, #52	; 0x34
   10ee4:	3030      	adds	r0, #48	; 0x30
   10ee6:	4300      	orrs	r0, r0
   10ee8:	726f      	strb	r7, [r5, #9]
   10eea:	6572      	str	r2, [r6, #84]	; 0x54
   10eec:	7463      	strb	r3, [r4, #17]
   10eee:	6f20      	ldr	r0, [r4, #112]	; 0x70
   10ef0:	6570      	str	r0, [r6, #84]	; 0x54
   10ef2:	6172      	str	r2, [r6, #20]
   10ef4:	6974      	ldr	r4, [r6, #20]
   10ef6:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   10ef8:	7620      	strb	r0, [r4, #24]
   10efa:	6c61      	ldr	r1, [r4, #68]	; 0x44
   10efc:	6469      	str	r1, [r5, #68]	; 0x44
   10efe:	7461      	strb	r1, [r4, #17]
   10f00:	6465      	str	r5, [r4, #68]	; 0x44
   10f02:	202e      	movs	r0, #46	; 0x2e
   10f04:	6553      	str	r3, [r2, #84]	; 0x54
   10f06:	2065      	movs	r0, #101	; 0x65
   10f08:	4552      	cmp	r2, sl
   10f0a:	4441      	add	r1, r8
   10f0c:	454d      	cmp	r5, r9
   10f0e:	6d2e      	ldr	r6, [r5, #80]	; 0x50
   10f10:	2064      	movs	r0, #100	; 0x64
   10f12:	6f66      	ldr	r6, [r4, #116]	; 0x74
   10f14:	2072      	movs	r0, #114	; 0x72
   10f16:	7572      	strb	r2, [r6, #21]
   10f18:	206e      	movs	r0, #110	; 0x6e
   10f1a:	6e61      	ldr	r1, [r4, #100]	; 0x64
   10f1c:	2064      	movs	r0, #100	; 0x64
   10f1e:	6572      	str	r2, [r6, #84]	; 0x54
   10f20:	6f70      	ldr	r0, [r6, #116]	; 0x74
   10f22:	7472      	strb	r2, [r6, #17]
   10f24:	6e69      	ldr	r1, [r5, #100]	; 0x64
   10f26:	2067      	movs	r0, #103	; 0x67
   10f28:	7572      	strb	r2, [r6, #21]
   10f2a:	656c      	str	r4, [r5, #84]	; 0x54
   10f2c:	2e73      	cmp	r6, #115	; 0x73
   10f2e:	000a      	movs	r2, r1
   10f30:	6f54      	ldr	r4, [r2, #116]	; 0x74
   10f32:	6174      	str	r4, [r6, #20]
   10f34:	206c      	movs	r0, #108	; 0x6c
   10f36:	6974      	ldr	r4, [r6, #20]
   10f38:	656d      	str	r5, [r5, #84]	; 0x54
   10f3a:	2820      	cmp	r0, #32
   10f3c:	6573      	str	r3, [r6, #84]	; 0x54
   10f3e:	7363      	strb	r3, [r4, #13]
   10f40:	3a29      	subs	r2, #41	; 0x29
   10f42:	2520      	movs	r5, #32
   10f44:	0a66      	lsrs	r6, r4, #9
   10f46:	4700      	bx	r0
   10f48:	4343      	muls	r3, r0
   10f4a:	6c43      	ldr	r3, [r0, #68]	; 0x44
   10f4c:	6e61      	ldr	r1, [r4, #100]	; 0x64
   10f4e:	2067      	movs	r0, #103	; 0x67
   10f50:	2e39      	cmp	r6, #57	; 0x39
   10f52:	2e30      	cmp	r6, #48	; 0x30
   10f54:	2031      	movs	r0, #49	; 0x31
   10f56:	6100      	str	r0, [r0, #16]
   10f58:	2000      	movs	r0, #0
   10f5a:	202f      	movs	r0, #47	; 0x2f
   10f5c:	7325      	strb	r5, [r4, #12]
   10f5e:	5b00      	ldrh	r0, [r0, r4]
   10f60:	7525      	strb	r5, [r4, #20]
   10f62:	455d      	cmp	r5, fp
   10f64:	5252      	strh	r2, [r2, r1]
   10f66:	524f      	strh	r7, [r1, r1]
   10f68:	2021      	movs	r0, #33	; 0x21
   10f6a:	7473      	strb	r3, [r6, #17]
   10f6c:	7461      	strb	r1, [r4, #17]
   10f6e:	2065      	movs	r0, #101	; 0x65
   10f70:	7263      	strb	r3, [r4, #9]
   10f72:	2063      	movs	r0, #99	; 0x63
   10f74:	7830      	ldrb	r0, [r6, #0]
   10f76:	3025      	adds	r0, #37	; 0x25
   10f78:	7834      	ldrb	r4, [r6, #0]
   10f7a:	2d20      	cmp	r5, #32
   10f7c:	7320      	strb	r0, [r4, #12]
   10f7e:	6f68      	ldr	r0, [r5, #116]	; 0x74
   10f80:	6c75      	ldr	r5, [r6, #68]	; 0x44
   10f82:	2064      	movs	r0, #100	; 0x64
   10f84:	6562      	str	r2, [r4, #84]	; 0x54
   10f86:	3020      	adds	r0, #32
   10f88:	2578      	movs	r5, #120	; 0x78
   10f8a:	3430      	adds	r4, #48	; 0x30
   10f8c:	0a78      	lsrs	r0, r7, #9
   10f8e:	3600      	adds	r6, #0
   10f90:	206b      	movs	r0, #107	; 0x6b
   10f92:	6570      	str	r0, [r6, #84]	; 0x54
   10f94:	6672      	str	r2, [r6, #100]	; 0x64
   10f96:	726f      	strb	r7, [r5, #9]
   10f98:	616d      	str	r5, [r5, #20]
   10f9a:	636e      	str	r6, [r5, #52]	; 0x34
   10f9c:	2065      	movs	r0, #101	; 0x65
   10f9e:	7572      	strb	r2, [r6, #21]
   10fa0:	206e      	movs	r0, #110	; 0x6e
   10fa2:	6170      	str	r0, [r6, #20]
   10fa4:	6172      	str	r2, [r6, #20]
   10fa6:	656d      	str	r5, [r5, #84]	; 0x54
   10fa8:	6574      	str	r4, [r6, #84]	; 0x54
   10faa:	7372      	strb	r2, [r6, #13]
   10fac:	6620      	str	r0, [r4, #96]	; 0x60
   10fae:	726f      	strb	r7, [r5, #9]
   10fb0:	6320      	str	r0, [r4, #48]	; 0x30
   10fb2:	726f      	strb	r7, [r5, #9]
   10fb4:	6d65      	ldr	r5, [r4, #84]	; 0x54
   10fb6:	7261      	strb	r1, [r4, #9]
   10fb8:	2e6b      	cmp	r6, #107	; 0x6b
   10fba:	000a      	movs	r2, r1
   10fbc:	4b32      	ldr	r3, [pc, #200]	; (11088 <memset+0x3fa>)
   10fbe:	7620      	strb	r0, [r4, #24]
   10fc0:	6c61      	ldr	r1, [r4, #68]	; 0x44
   10fc2:	6469      	str	r1, [r5, #68]	; 0x44
   10fc4:	7461      	strb	r1, [r4, #17]
   10fc6:	6f69      	ldr	r1, [r5, #116]	; 0x74
   10fc8:	206e      	movs	r0, #110	; 0x6e
   10fca:	7572      	strb	r2, [r6, #21]
   10fcc:	206e      	movs	r0, #110	; 0x6e
   10fce:	6170      	str	r0, [r6, #20]
   10fd0:	6172      	str	r2, [r6, #20]
   10fd2:	656d      	str	r5, [r5, #84]	; 0x54
   10fd4:	6574      	str	r4, [r6, #84]	; 0x54
   10fd6:	7372      	strb	r2, [r6, #13]
   10fd8:	6620      	str	r0, [r4, #96]	; 0x60
   10fda:	726f      	strb	r7, [r5, #9]
   10fdc:	6320      	str	r0, [r4, #48]	; 0x30
   10fde:	726f      	strb	r7, [r5, #9]
   10fe0:	6d65      	ldr	r5, [r4, #84]	; 0x54
   10fe2:	7261      	strb	r1, [r4, #9]
   10fe4:	2e6b      	cmp	r6, #107	; 0x6b
   10fe6:	000a      	movs	r2, r1
   10fe8:	000a      	movs	r2, r1
   10fea:	3231      	adds	r2, #49	; 0x31
   10fec:	3433      	adds	r4, #51	; 0x33
   10fee:	5b00      	ldrh	r0, [r0, r4]
   10ff0:	6425      	str	r5, [r4, #64]	; 0x40
   10ff2:	635d      	str	r5, [r3, #52]	; 0x34
   10ff4:	6372      	str	r2, [r6, #52]	; 0x34
   10ff6:	7473      	strb	r3, [r6, #17]
   10ff8:	7461      	strb	r1, [r4, #17]
   10ffa:	2065      	movs	r0, #101	; 0x65
   10ffc:	2020      	movs	r0, #32
   10ffe:	2020      	movs	r0, #32
   11000:	3a20      	subs	r2, #32
   11002:	3020      	adds	r0, #32
   11004:	2578      	movs	r5, #120	; 0x78
   11006:	3430      	adds	r4, #48	; 0x30
   11008:	0a78      	lsrs	r0, r7, #9
   1100a:	2d00      	cmp	r5, #0
   1100c:	3738      	adds	r7, #56	; 0x38
   1100e:	2b65      	cmp	r3, #101	; 0x65
   11010:	3338      	adds	r3, #56	; 0x38
   11012:	0032      	movs	r2, r6
   11014:	255b      	movs	r5, #91	; 0x5b
   11016:	5d64      	ldrb	r4, [r4, r5]
   11018:	7263      	strb	r3, [r4, #9]
   1101a:	6c63      	ldr	r3, [r4, #68]	; 0x44
   1101c:	7369      	strb	r1, [r5, #13]
   1101e:	2074      	movs	r0, #116	; 0x74
   11020:	2020      	movs	r0, #32
   11022:	2020      	movs	r0, #32
   11024:	2020      	movs	r0, #32
   11026:	203a      	movs	r0, #58	; 0x3a
   11028:	7830      	ldrb	r0, [r6, #0]
   1102a:	3025      	adds	r0, #37	; 0x25
   1102c:	7834      	ldrb	r4, [r6, #0]
   1102e:	000a      	movs	r2, r1
   11030:	255b      	movs	r5, #91	; 0x5b
   11032:	5d64      	ldrb	r4, [r4, r5]
   11034:	7263      	strb	r3, [r4, #9]
   11036:	6663      	str	r3, [r4, #100]	; 0x64
   11038:	6e69      	ldr	r1, [r5, #100]	; 0x64
   1103a:	6c61      	ldr	r1, [r4, #68]	; 0x44
   1103c:	2020      	movs	r0, #32
   1103e:	2020      	movs	r0, #32
   11040:	2020      	movs	r0, #32
   11042:	203a      	movs	r0, #58	; 0x3a
   11044:	7830      	ldrb	r0, [r6, #0]
   11046:	3025      	adds	r0, #37	; 0x25
   11048:	7834      	ldrb	r4, [r6, #0]
   1104a:	000a      	movs	r2, r1
   1104c:	302b      	adds	r0, #43	; 0x2b
   1104e:	362e      	adds	r6, #46	; 0x2e
   11050:	3434      	adds	r4, #52	; 0x34
   11052:	3030      	adds	r0, #48	; 0x30
   11054:	3600      	adds	r6, #0
   11056:	206b      	movs	r0, #107	; 0x6b
   11058:	6176      	str	r6, [r6, #20]
   1105a:	696c      	ldr	r4, [r5, #20]
   1105c:	6164      	str	r4, [r4, #20]
   1105e:	6974      	ldr	r4, [r6, #20]
   11060:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   11062:	7220      	strb	r0, [r4, #8]
   11064:	6e75      	ldr	r5, [r6, #100]	; 0x64
   11066:	7020      	strb	r0, [r4, #0]
   11068:	7261      	strb	r1, [r4, #9]
   1106a:	6d61      	ldr	r1, [r4, #84]	; 0x54
   1106c:	7465      	strb	r5, [r4, #17]
   1106e:	7265      	strb	r5, [r4, #9]
   11070:	2073      	movs	r0, #115	; 0x73
   11072:	6f66      	ldr	r6, [r4, #116]	; 0x74
   11074:	2072      	movs	r0, #114	; 0x72
   11076:	6f63      	ldr	r3, [r4, #116]	; 0x74
   11078:	6572      	str	r2, [r6, #84]	; 0x54
   1107a:	616d      	str	r5, [r5, #20]
   1107c:	6b72      	ldr	r2, [r6, #52]	; 0x34
   1107e:	0a2e      	lsrs	r6, r5, #8
   11080:	2d00      	cmp	r5, #0
   11082:	2e54      	cmp	r6, #84	; 0x54
   11084:	2b54      	cmp	r3, #84	; 0x54
   11086:	542b      	strb	r3, [r5, r0]
   11088:	0071      	lsls	r1, r6, #1
   1108a:	312d      	adds	r1, #45	; 0x2d
   1108c:	3031      	adds	r0, #49	; 0x31
   1108e:	372e      	adds	r7, #46	; 0x2e
   11090:	3030      	adds	r0, #48	; 0x30
   11092:	5b00      	ldrh	r0, [r0, r4]
   11094:	7525      	strb	r5, [r4, #20]
   11096:	455d      	cmp	r5, fp
   11098:	5252      	strh	r2, [r2, r1]
   1109a:	524f      	strh	r7, [r1, r1]
   1109c:	2021      	movs	r0, #33	; 0x21
   1109e:	696c      	ldr	r4, [r5, #20]
   110a0:	7473      	strb	r3, [r6, #17]
   110a2:	6320      	str	r0, [r4, #48]	; 0x30
   110a4:	6372      	str	r2, [r6, #52]	; 0x34
   110a6:	3020      	adds	r0, #32
   110a8:	2578      	movs	r5, #120	; 0x78
   110aa:	3430      	adds	r4, #48	; 0x30
   110ac:	2078      	movs	r0, #120	; 0x78
   110ae:	202d      	movs	r0, #45	; 0x2d
   110b0:	6873      	ldr	r3, [r6, #4]
   110b2:	756f      	strb	r7, [r5, #21]
   110b4:	646c      	str	r4, [r5, #68]	; 0x44
   110b6:	6220      	str	r0, [r4, #32]
   110b8:	2065      	movs	r0, #101	; 0x65
   110ba:	7830      	ldrb	r0, [r6, #0]
   110bc:	3025      	adds	r0, #37	; 0x25
   110be:	7834      	ldrb	r4, [r6, #0]
   110c0:	000a      	movs	r2, r1
   110c2:	654d      	str	r5, [r1, #84]	; 0x54
   110c4:	6f6d      	ldr	r5, [r5, #116]	; 0x74
   110c6:	7972      	ldrb	r2, [r6, #5]
   110c8:	6c20      	ldr	r0, [r4, #64]	; 0x40
   110ca:	636f      	str	r7, [r5, #52]	; 0x34
   110cc:	7461      	strb	r1, [r4, #17]
   110ce:	6f69      	ldr	r1, [r5, #116]	; 0x74
   110d0:	206e      	movs	r0, #110	; 0x6e
   110d2:	3a20      	subs	r2, #32
   110d4:	2520      	movs	r5, #32
   110d6:	0a73      	lsrs	r3, r6, #9
   110d8:	3100      	adds	r1, #0
   110da:	3354      	adds	r3, #84	; 0x54
   110dc:	342e      	adds	r4, #46	; 0x2e
   110de:	3465      	adds	r4, #101	; 0x65
   110e0:	007a      	lsls	r2, r7, #1
   110e2:	6e66      	ldr	r6, [r4, #100]	; 0x64
   110e4:	0069      	lsls	r1, r5, #1
   110e6:	6f43      	ldr	r3, [r0, #116]	; 0x74
   110e8:	6572      	str	r2, [r6, #84]	; 0x54
   110ea:	614d      	str	r5, [r1, #20]
   110ec:	6b72      	ldr	r2, [r6, #52]	; 0x34
   110ee:	5320      	strh	r0, [r4, r4]
   110f0:	7a69      	ldrb	r1, [r5, #9]
   110f2:	2065      	movs	r0, #101	; 0x65
   110f4:	2020      	movs	r0, #32
   110f6:	3a20      	subs	r2, #32
   110f8:	2520      	movs	r5, #32
   110fa:	756c      	strb	r4, [r5, #21]
   110fc:	000a      	movs	r2, r1
   110fe:	7449      	strb	r1, [r1, #17]
   11100:	7265      	strb	r5, [r4, #9]
   11102:	7461      	strb	r1, [r4, #17]
   11104:	6f69      	ldr	r1, [r5, #116]	; 0x74
   11106:	736e      	strb	r6, [r5, #13]
   11108:	532f      	strh	r7, [r5, r4]
   1110a:	6365      	str	r5, [r4, #52]	; 0x34
   1110c:	2020      	movs	r0, #32
   1110e:	3a20      	subs	r2, #32
   11110:	2520      	movs	r5, #32
   11112:	0a66      	lsrs	r6, r4, #9
   11114:	d400      	bmi.n	11118 <memset+0x48a>
   11116:	d4d4      	bmi.n	110c2 <memset+0x434>
   11118:	0004      	movs	r4, r0
   1111a:	0000      	movs	r0, r0
   1111c:	0004      	movs	r4, r0
   1111e:	0000      	movs	r0, r0
   11120:	0004      	movs	r4, r0
   11122:	0000      	movs	r0, r0
   11124:	0008      	movs	r0, r1
   11126:	0000      	movs	r0, r0
   11128:	0008      	movs	r0, r1
   1112a:	0000      	movs	r0, r0
   1112c:	0008      	movs	r0, r1
   1112e:	0000      	movs	r0, r0
   11130:	0008      	movs	r0, r1
   11132:	0000      	movs	r0, r0
   11134:	0008      	movs	r0, r1
	...

00011138 <list_known_crc>:
   11138:	d4b0 3340 6a79 e714 e3c1                    ..@3yj....

00011142 <matrix_known_crc>:
   11142:	be52 1199 5608 1fd7 0747                    R....V..G.

0001114c <state_known_crc>:
   1114c:	5e47 39bf e5a4 8e3a 8d84 d4d4               G^.9..:.....

00011158 <intpat>:
   11158:	0e91 0001 0fea 0001 0de8 0001 0e8c 0001     ................

00011168 <floatpat>:
   11168:	0ede 0001 0ddf 0001 108a 0001 104c 0001     ............L...

00011178 <scipat>:
   11178:	0dcd 0001 0dd6 0001 100b 0001 0df8 0001     ................

00011188 <errpat>:
   11188:	0e68 0001 1081 0001 10d9 0001 0d46 0001     h...........F...

00011198 <_ftoa.pow10>:
   11198:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
   111a8:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
   111b8:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
   111c8:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
   111d8:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A

000111e8 <.Lswitch.table.core_init_state>:
   111e8:	1158 0001 1158 0001 1158 0001 1168 0001     X...X...X...h...
   111f8:	1168 0001 1178 0001 1178 0001 1188 0001     h...x...x.......
