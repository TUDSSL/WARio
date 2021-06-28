
coremark.elf:     file format elf32-littlearm


Disassembly of section .text:

0000c000 <g_am_pfnVectors>:
    c000:	f8 ff 05 10 bd 13 01 00 0d 14 01 00 11 14 01 00     ................
    c010:	11 14 01 00 11 14 01 00 11 14 01 00 11 14 01 00     ................
	...
    c02c:	15 14 01 00 15 14 01 00 00 00 00 00 15 14 01 00     ................
    c03c:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c04c:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c05c:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c06c:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c07c:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c08c:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c09c:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c0ac:	15 14 01 00 15 14 01 00 15 14 01 00 15 14 01 00     ................
    c0bc:	15 14 01 00                                         ....

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
    ca68:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    ca6c:	b082      	sub	sp, #8
    ee_s16 data = *pdata;
    ca6e:	8807      	ldrh	r7, [r0, #0]
    ca70:	4681      	mov	r9, r0
    ee_s16 retval;
    ee_u8  optype
        = (data >> 7)
          & 1;  /* bit 7 indicates if the function result has been cached */
    if (optype) /* if cached, use cache */
    ca72:	0638      	lsls	r0, r7, #24
    ca74:	d42d      	bmi.n	cad2 <calc_func+0x6a>
        return (data & 0x007f);
    else
    {                             /* otherwise calculate and cache the result */
        ee_s16 flag = data & 0x7; /* bits 0-2 is type of function to perform */
        ee_s16 dtype
            = ((data >> 3)
    ca76:	f3c7 00c3 	ubfx	r0, r7, #3, #4
               & 0xf);       /* bits 3-6 is specific data for the operation */
        dtype |= dtype << 4; /* replicate the lower 4 bits to get an 8b value */
    ca7a:	ea40 1400 	orr.w	r4, r0, r0, lsl #4
    ca7e:	f007 0007 	and.w	r0, r7, #7
                break;
            default:
                retval = data;
                break;
        }
        res->crc = crcu16(retval, res->crc);
    ca82:	f240 0830 	movw	r8, #48	; 0x30
    ca86:	460d      	mov	r5, r1
    ca88:	2801      	cmp	r0, #1
    ca8a:	f2c1 0800 	movt	r8, #4096	; 0x1000
    ca8e:	d025      	beq.n	cadc <calc_func+0x74>
    ca90:	2800      	cmp	r0, #0
    ca92:	463e      	mov	r6, r7
    ca94:	d148      	bne.n	cb28 <calc_func+0xc0>
    ca96:	2c22      	cmp	r4, #34	; 0x22
    ca98:	bf98      	it	ls
    ca9a:	2422      	movls	r4, #34	; 0x22
                retval = core_bench_state(res->size,
    ca9c:	f8d8 6000 	ldr.w	r6, [r8]
                                          res->memblock[3],
    caa0:	e9d5 1005 	ldrd	r1, r0, [r5, #20]
                                          res->seed1,
    caa4:	f9b5 2000 	ldrsh.w	r2, [r5]
                                          res->seed2,
    caa8:	f9b5 3002 	ldrsh.w	r3, [r5, #2]
                                          res->crc);
    caac:	f8b5 c038 	ldrh.w	ip, [r5, #56]	; 0x38
                retval = core_bench_state(res->size,
    cab0:	3601      	adds	r6, #1
    cab2:	f8c8 6000 	str.w	r6, [r8]
    cab6:	e9cd 4c00 	strd	r4, ip, [sp]
    caba:	f002 fb63 	bl	f184 <core_bench_state>
                if (res->crcstate == 0)
    cabe:	8fe9      	ldrh	r1, [r5, #62]	; 0x3e
                retval = core_bench_state(res->size,
    cac0:	4606      	mov	r6, r0
                if (res->crcstate == 0)
    cac2:	bb89      	cbnz	r1, cb28 <calc_func+0xc0>
                    res->crcstate = retval;
    cac4:	f8d8 0000 	ldr.w	r0, [r8]
    cac8:	3001      	adds	r0, #1
    caca:	f8c8 0000 	str.w	r0, [r8]
    cace:	87ee      	strh	r6, [r5, #62]	; 0x3e
    cad0:	e02a      	b.n	cb28 <calc_func+0xc0>
        return (data & 0x007f);
    cad2:	f007 007f 	and.w	r0, r7, #127	; 0x7f
        retval &= 0x007f;
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
        return retval;
    }
}
    cad6:	b002      	add	sp, #8
    cad8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
                retval = core_bench_matrix(&(res->mat), dtype, res->crc);
    cadc:	f8d8 6000 	ldr.w	r6, [r8]
    cae0:	f8b5 a038 	ldrh.w	sl, [r5, #56]	; 0x38
    cae4:	1c70      	adds	r0, r6, #1
    cae6:	f8c8 0000 	str.w	r0, [r8]
        changing the matrix values slightly by a constant amount each time.
*/
ee_u16
core_bench_matrix(mat_params *p, ee_s16 seed, ee_u16 crc)
{
    ee_u32  N   = p->N;
    caea:	f105 0328 	add.w	r3, r5, #40	; 0x28
    caee:	cb0d      	ldmia	r3, {r0, r2, r3}
    MATRES *C   = p->C;
    caf0:	6b69      	ldr	r1, [r5, #52]	; 0x34
    MATDAT *A   = p->A;
    MATDAT *B   = p->B;
    MATDAT  val = (MATDAT)seed;

    crc = crc16(matrix_test(N, C, A, B, val), crc);
    caf2:	3602      	adds	r6, #2
    caf4:	f8c8 6000 	str.w	r6, [r8]
    caf8:	9400      	str	r4, [sp, #0]
    cafa:	f001 fb73 	bl	e1e4 <matrix_test>
    cafe:	f8d8 1000 	ldr.w	r1, [r8]
    return crc;
}
ee_u16
crc16(ee_s16 newval, ee_u16 crc)
{
    return crcu16((ee_u16)newval, crc);
    cb02:	b280      	uxth	r0, r0
    cb04:	1c4a      	adds	r2, r1, #1
    cb06:	3102      	adds	r1, #2
    cb08:	f8c8 2000 	str.w	r2, [r8]
    cb0c:	f8c8 1000 	str.w	r1, [r8]
    cb10:	4651      	mov	r1, sl
    cb12:	f002 fd16 	bl	f542 <crcu16>
                if (res->crcmatrix == 0)
    cb16:	8fa9      	ldrh	r1, [r5, #60]	; 0x3c
    cb18:	4606      	mov	r6, r0
    cb1a:	b929      	cbnz	r1, cb28 <calc_func+0xc0>
                    res->crcmatrix = retval;
    cb1c:	f8d8 0000 	ldr.w	r0, [r8]
    cb20:	3001      	adds	r0, #1
    cb22:	f8c8 0000 	str.w	r0, [r8]
    cb26:	87ae      	strh	r6, [r5, #60]	; 0x3c
        res->crc = crcu16(retval, res->crc);
    cb28:	f8d8 0000 	ldr.w	r0, [r8]
    cb2c:	8f29      	ldrh	r1, [r5, #56]	; 0x38
    cb2e:	3001      	adds	r0, #1
    cb30:	f8c8 0000 	str.w	r0, [r8]
    cb34:	4630      	mov	r0, r6
    cb36:	f002 fd04 	bl	f542 <crcu16>
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
    cb3a:	f366 0706 	bfi	r7, r6, #0, #7
    cb3e:	f047 0180 	orr.w	r1, r7, #128	; 0x80
        res->crc = crcu16(retval, res->crc);
    cb42:	8728      	strh	r0, [r5, #56]	; 0x38
        retval &= 0x007f;
    cb44:	f006 007f 	and.w	r0, r6, #127	; 0x7f
        *pdata = (data & 0xff00) | 0x0080 | retval; /* cache the result */
    cb48:	f8a9 1000 	strh.w	r1, [r9]
}
    cb4c:	b002      	add	sp, #8
    cb4e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    cb52:	d4d4      	bmi.n	cafe <calc_func+0x96>

0000cb54 <core_bench_list>:
        - Single remove/reinsert
        * At the end of this function, the list is back to original state
*/
ee_u16
core_bench_list(core_results *res, ee_s16 finder_idx)
{
    cb54:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cb58:	b089      	sub	sp, #36	; 0x24
    ee_u16     retval = 0;
    ee_u16     found = 0, missed = 0;
    list_head *list     = res->list;
    ee_s16     find_num = res->seed3;
    cb5a:	f9b0 e004 	ldrsh.w	lr, [r0, #4]
    list_head *list     = res->list;
    cb5e:	6a44      	ldr	r4, [r0, #36]	; 0x24
    cb60:	f240 0530 	movw	r5, #48	; 0x30
    cb64:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
    cb68:	f04f 0a00 	mov.w	sl, #0
    ee_s16     i;

    info.idx = finder_idx;
    /* find <find_num> values in the list, and change the list each time
     * (reverse and cache if value found) */
    for (i = 0; i < find_num; i++)
    cb6c:	f1be 0f01 	cmp.w	lr, #1
    cb70:	f2c1 0500 	movt	r5, #4096	; 0x1000
    cb74:	9006      	str	r0, [sp, #24]
    cb76:	f2c0 80de 	blt.w	cd36 <core_bench_list+0x1e2>
    cb7a:	2600      	movs	r6, #0
    cb7c:	2000      	movs	r0, #0
    cb7e:	f04f 0c00 	mov.w	ip, #0
    cb82:	f04f 0800 	mov.w	r8, #0
    cb86:	9002      	str	r0, [sp, #8]
    cb88:	4608      	mov	r0, r1
    cb8a:	9103      	str	r1, [sp, #12]
    cb8c:	e005      	b.n	cb9a <core_bench_list+0x46>
    cb8e:	bf00      	nop
    cb90:	1c70      	adds	r0, r6, #1
    cb92:	b206      	sxth	r6, r0
    cb94:	4576      	cmp	r6, lr
    cb96:	f280 80c9 	bge.w	cd2c <core_bench_list+0x1d8>
        Found item, or NULL if not found.
*/
list_head *
core_list_find(list_head *list, list_data *info)
{
    if (info->idx >= 0)
    cb9a:	9a03      	ldr	r2, [sp, #12]
        this_find   = core_list_find(list, &info);
    cb9c:	682b      	ldr	r3, [r5, #0]
    if (info->idx >= 0)
    cb9e:	fa0f f982 	sxth.w	r9, r2
        this_find   = core_list_find(list, &info);
    cba2:	1c58      	adds	r0, r3, #1
    if (info->idx >= 0)
    cba4:	45d9      	cmp	r9, fp
        this_find   = core_list_find(list, &info);
    cba6:	6028      	str	r0, [r5, #0]
    if (info->idx >= 0)
    cba8:	dd20      	ble.n	cbec <core_bench_list+0x98>
    {
        while (list && (list->info->idx != info->idx))
    cbaa:	2c00      	cmp	r4, #0
    cbac:	d03c      	beq.n	cc28 <core_bench_list+0xd4>
    cbae:	4620      	mov	r0, r4
    cbb0:	6842      	ldr	r2, [r0, #4]
    cbb2:	4625      	mov	r5, r4
    cbb4:	9c03      	ldr	r4, [sp, #12]
    cbb6:	8852      	ldrh	r2, [r2, #2]
    cbb8:	b2a7      	uxth	r7, r4
    cbba:	42ba      	cmp	r2, r7
    cbbc:	d03d      	beq.n	cc3a <core_bench_list+0xe6>
            list = list->next;
    cbbe:	6800      	ldr	r0, [r0, #0]
        while (list && (list->info->idx != info->idx))
    cbc0:	b3d0      	cbz	r0, cc38 <core_bench_list+0xe4>
    cbc2:	6842      	ldr	r2, [r0, #4]
    cbc4:	8852      	ldrh	r2, [r2, #2]
    cbc6:	42ba      	cmp	r2, r7
    cbc8:	d037      	beq.n	cc3a <core_bench_list+0xe6>
            list = list->next;
    cbca:	6800      	ldr	r0, [r0, #0]
    cbcc:	462c      	mov	r4, r5
        while (list && (list->info->idx != info->idx))
    cbce:	b348      	cbz	r0, cc24 <core_bench_list+0xd0>
    cbd0:	6842      	ldr	r2, [r0, #4]
    cbd2:	8852      	ldrh	r2, [r2, #2]
    cbd4:	42ba      	cmp	r2, r7
    cbd6:	d031      	beq.n	cc3c <core_bench_list+0xe8>
            list = list->next;
    cbd8:	6800      	ldr	r0, [r0, #0]
        while (list && (list->info->idx != info->idx))
    cbda:	b318      	cbz	r0, cc24 <core_bench_list+0xd0>
    cbdc:	6842      	ldr	r2, [r0, #4]
    cbde:	8852      	ldrh	r2, [r2, #2]
    cbe0:	42ba      	cmp	r2, r7
    cbe2:	d02b      	beq.n	cc3c <core_bench_list+0xe8>
            list = list->next;
    cbe4:	6800      	ldr	r0, [r0, #0]
        while (list && (list->info->idx != info->idx))
    cbe6:	2800      	cmp	r0, #0
    cbe8:	d1e2      	bne.n	cbb0 <core_bench_list+0x5c>
    cbea:	e01b      	b.n	cc24 <core_bench_list+0xd0>
    cbec:	4620      	mov	r0, r4
        return list;
    }
    else
    {
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cbee:	b1dc      	cbz	r4, cc28 <core_bench_list+0xd4>
    cbf0:	6842      	ldr	r2, [r0, #4]
    cbf2:	b2f7      	uxtb	r7, r6
    cbf4:	7812      	ldrb	r2, [r2, #0]
    cbf6:	407a      	eors	r2, r7
    cbf8:	d020      	beq.n	cc3c <core_bench_list+0xe8>
            list = list->next;
    cbfa:	6800      	ldr	r0, [r0, #0]
    cbfc:	b190      	cbz	r0, cc24 <core_bench_list+0xd0>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cbfe:	6842      	ldr	r2, [r0, #4]
    cc00:	7812      	ldrb	r2, [r2, #0]
    cc02:	407a      	eors	r2, r7
    cc04:	d01a      	beq.n	cc3c <core_bench_list+0xe8>
            list = list->next;
    cc06:	6800      	ldr	r0, [r0, #0]
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cc08:	b160      	cbz	r0, cc24 <core_bench_list+0xd0>
    cc0a:	6842      	ldr	r2, [r0, #4]
    cc0c:	7812      	ldrb	r2, [r2, #0]
    cc0e:	407a      	eors	r2, r7
    cc10:	d014      	beq.n	cc3c <core_bench_list+0xe8>
            list = list->next;
    cc12:	6800      	ldr	r0, [r0, #0]
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cc14:	b130      	cbz	r0, cc24 <core_bench_list+0xd0>
    cc16:	6842      	ldr	r2, [r0, #4]
    cc18:	7812      	ldrb	r2, [r2, #0]
    cc1a:	407a      	eors	r2, r7
    cc1c:	d00e      	beq.n	cc3c <core_bench_list+0xe8>
            list = list->next;
    cc1e:	6800      	ldr	r0, [r0, #0]
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cc20:	2800      	cmp	r0, #0
    cc22:	d1e5      	bne.n	cbf0 <core_bench_list+0x9c>
    cc24:	2000      	movs	r0, #0
    cc26:	e009      	b.n	cc3c <core_bench_list+0xe8>
        list        = core_list_reverse(list);
    cc28:	f240 0230 	movw	r2, #48	; 0x30
    cc2c:	1c98      	adds	r0, r3, #2
    cc2e:	f2c1 0200 	movt	r2, #4096	; 0x1000
    cc32:	6010      	str	r0, [r2, #0]
    cc34:	2400      	movs	r4, #0
    cc36:	e059      	b.n	ccec <core_bench_list+0x198>
    cc38:	2000      	movs	r0, #0
    cc3a:	462c      	mov	r4, r5
    cc3c:	f240 0530 	movw	r5, #48	; 0x30
    cc40:	1c9a      	adds	r2, r3, #2
    cc42:	f2c1 0500 	movt	r5, #4096	; 0x1000
    cc46:	602a      	str	r2, [r5, #0]

list_head *
core_list_reverse(list_head *list)
{
    list_head *next = NULL, *tmp;
    while (list)
    cc48:	b334      	cbz	r4, cc98 <core_bench_list+0x144>
    {
        tmp        = list->next;
    cc4a:	6827      	ldr	r7, [r4, #0]
        list->next = next;
    cc4c:	1cda      	adds	r2, r3, #3
    cc4e:	602a      	str	r2, [r5, #0]
    cc50:	f8c4 a000 	str.w	sl, [r4]
    while (list)
    cc54:	b30f      	cbz	r7, cc9a <core_bench_list+0x146>
    cc56:	f240 0530 	movw	r5, #48	; 0x30
    cc5a:	f2c1 0500 	movt	r5, #4096	; 0x1000
    cc5e:	bf00      	nop
        list->next = next;
    cc60:	682a      	ldr	r2, [r5, #0]
        tmp        = list->next;
    cc62:	683b      	ldr	r3, [r7, #0]
        list->next = next;
    cc64:	3201      	adds	r2, #1
    cc66:	602a      	str	r2, [r5, #0]
    cc68:	603c      	str	r4, [r7, #0]
    while (list)
    cc6a:	b3db      	cbz	r3, cce4 <core_bench_list+0x190>
        list->next = next;
    cc6c:	682c      	ldr	r4, [r5, #0]
        tmp        = list->next;
    cc6e:	681a      	ldr	r2, [r3, #0]
        list->next = next;
    cc70:	3401      	adds	r4, #1
    while (list)
    cc72:	2a00      	cmp	r2, #0
        list->next = next;
    cc74:	602c      	str	r4, [r5, #0]
    cc76:	601f      	str	r7, [r3, #0]
    while (list)
    cc78:	d050      	beq.n	cd1c <core_bench_list+0x1c8>
        list->next = next;
    cc7a:	682f      	ldr	r7, [r5, #0]
        tmp        = list->next;
    cc7c:	6814      	ldr	r4, [r2, #0]
        list->next = next;
    cc7e:	3701      	adds	r7, #1
    while (list)
    cc80:	2c00      	cmp	r4, #0
        list->next = next;
    cc82:	602f      	str	r7, [r5, #0]
    cc84:	6013      	str	r3, [r2, #0]
    while (list)
    cc86:	d04d      	beq.n	cd24 <core_bench_list+0x1d0>
        list->next = next;
    cc88:	682b      	ldr	r3, [r5, #0]
        tmp        = list->next;
    cc8a:	6827      	ldr	r7, [r4, #0]
        list->next = next;
    cc8c:	3301      	adds	r3, #1
    while (list)
    cc8e:	2f00      	cmp	r7, #0
        list->next = next;
    cc90:	602b      	str	r3, [r5, #0]
    cc92:	6022      	str	r2, [r4, #0]
    while (list)
    cc94:	d1e4      	bne.n	cc60 <core_bench_list+0x10c>
    cc96:	e000      	b.n	cc9a <core_bench_list+0x146>
    cc98:	2400      	movs	r4, #0
        if (this_find == NULL)
    cc9a:	b338      	cbz	r0, ccec <core_bench_list+0x198>
            if (this_find->info->data16 & 0x1) /* use found value */
    cc9c:	6842      	ldr	r2, [r0, #4]
            found++;
    cc9e:	f10c 0c01 	add.w	ip, ip, #1
            if (this_find->info->data16 & 0x1) /* use found value */
    cca2:	8812      	ldrh	r2, [r2, #0]
    cca4:	07d3      	lsls	r3, r2, #31
    cca6:	d004      	beq.n	ccb2 <core_bench_list+0x15e>
                retval += (this_find->info->data16 >> 9) & 1;
    cca8:	f3c2 2240 	ubfx	r2, r2, #9, #1
    ccac:	9b02      	ldr	r3, [sp, #8]
    ccae:	4413      	add	r3, r2
    ccb0:	9302      	str	r3, [sp, #8]
            if (this_find->next != NULL)
    ccb2:	6802      	ldr	r2, [r0, #0]
    ccb4:	b322      	cbz	r2, cd00 <core_bench_list+0x1ac>
    ccb6:	f240 0330 	movw	r3, #48	; 0x30
    ccba:	f2c1 0300 	movt	r3, #4096	; 0x1000
    ccbe:	461d      	mov	r5, r3
                this_find->next = finder->next;
    ccc0:	681b      	ldr	r3, [r3, #0]
    ccc2:	6817      	ldr	r7, [r2, #0]
    ccc4:	3301      	adds	r3, #1
    ccc6:	602b      	str	r3, [r5, #0]
    ccc8:	6007      	str	r7, [r0, #0]
                finder->next    = list->next;
    ccca:	6828      	ldr	r0, [r5, #0]
    cccc:	6823      	ldr	r3, [r4, #0]
    ccce:	3001      	adds	r0, #1
    ccd0:	6028      	str	r0, [r5, #0]
    ccd2:	6013      	str	r3, [r2, #0]
                list->next      = finder;
    ccd4:	6022      	str	r2, [r4, #0]
    ccd6:	f240 0530 	movw	r5, #48	; 0x30
    ccda:	f2c1 0500 	movt	r5, #4096	; 0x1000
        if (info.idx >= 0)
    ccde:	45d9      	cmp	r9, fp
    cce0:	dc15      	bgt.n	cd0e <core_bench_list+0x1ba>
    cce2:	e755      	b.n	cb90 <core_bench_list+0x3c>
    cce4:	463c      	mov	r4, r7
        if (this_find == NULL)
    cce6:	2800      	cmp	r0, #0
    cce8:	d1d8      	bne.n	cc9c <core_bench_list+0x148>
    ccea:	bf00      	nop
            retval += (list->next->info->data16 >> 8) & 1;
    ccec:	6820      	ldr	r0, [r4, #0]
            missed++;
    ccee:	f108 0801 	add.w	r8, r8, #1
            retval += (list->next->info->data16 >> 8) & 1;
    ccf2:	6840      	ldr	r0, [r0, #4]
    ccf4:	8800      	ldrh	r0, [r0, #0]
    ccf6:	f3c0 2000 	ubfx	r0, r0, #8, #1
    ccfa:	9a02      	ldr	r2, [sp, #8]
    ccfc:	4402      	add	r2, r0
        }
    ccfe:	9202      	str	r2, [sp, #8]
    cd00:	f240 0530 	movw	r5, #48	; 0x30
    cd04:	f2c1 0500 	movt	r5, #4096	; 0x1000
        if (info.idx >= 0)
    cd08:	45d9      	cmp	r9, fp
    cd0a:	f77f af41 	ble.w	cb90 <core_bench_list+0x3c>
            info.idx++;
    cd0e:	6828      	ldr	r0, [r5, #0]
    cd10:	9a03      	ldr	r2, [sp, #12]
    cd12:	3001      	adds	r0, #1
    cd14:	3201      	adds	r2, #1
    cd16:	9203      	str	r2, [sp, #12]
    cd18:	6028      	str	r0, [r5, #0]
    cd1a:	e739      	b.n	cb90 <core_bench_list+0x3c>
    cd1c:	461c      	mov	r4, r3
        if (this_find == NULL)
    cd1e:	2800      	cmp	r0, #0
    cd20:	d1bc      	bne.n	cc9c <core_bench_list+0x148>
    cd22:	e7e3      	b.n	ccec <core_bench_list+0x198>
    cd24:	4614      	mov	r4, r2
    cd26:	2800      	cmp	r0, #0
    cd28:	d1b8      	bne.n	cc9c <core_bench_list+0x148>
    cd2a:	e7df      	b.n	ccec <core_bench_list+0x198>
    for (i = 0; i < find_num; i++)
    cd2c:	f1ae 0001 	sub.w	r0, lr, #1
    cd30:	fa5f fa80 	uxtb.w	sl, r0
    cd34:	e007      	b.n	cd46 <core_bench_list+0x1f2>
    cd36:	4608      	mov	r0, r1
    cd38:	2000      	movs	r0, #0
    cd3a:	9103      	str	r1, [sp, #12]
    cd3c:	f04f 0800 	mov.w	r8, #0
    ee_u16     found = 0, missed = 0;
    cd40:	f04f 0c00 	mov.w	ip, #0
    cd44:	9002      	str	r0, [sp, #8]
    if (finder_idx > 0)
    cd46:	2901      	cmp	r1, #1
    retval += found * 4 - missed;
    cd48:	ebc8 008c 	rsb	r0, r8, ip, lsl #2
    cd4c:	f8cd a004 	str.w	sl, [sp, #4]
    if (finder_idx > 0)
    cd50:	9000      	str	r0, [sp, #0]
    cd52:	f2c0 80e2 	blt.w	cf1a <core_bench_list+0x3c6>
        list = core_list_mergesort(list, cmp_complex, res);
    cd56:	6828      	ldr	r0, [r5, #0]
    cd58:	3001      	adds	r0, #1
    cd5a:	6028      	str	r0, [r5, #0]
    cd5c:	2001      	movs	r0, #1
        list = NULL;
        tail = NULL;

        nmerges = 0; /* count number of merges we do in this pass */

        while (p)
    cd5e:	9004      	str	r0, [sp, #16]
    cd60:	b9bc      	cbnz	r4, cd92 <core_bench_list+0x23e>
    cd62:	bf00      	nop
    cd64:	2100      	movs	r1, #0
        tail = NULL;
    cd66:	f04f 0800 	mov.w	r8, #0
        list = NULL;
    cd6a:	f04f 0b00 	mov.w	fp, #0

            /* now p has stepped `insize' places along, and q has too */
            p = q;
        }

        tail->next = NULL;
    cd6e:	6828      	ldr	r0, [r5, #0]

        /* If we have done only one merge, we're finished. */
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    cd70:	2901      	cmp	r1, #1
        tail->next = NULL;
    cd72:	f100 0001 	add.w	r0, r0, #1
    cd76:	6028      	str	r0, [r5, #0]
    cd78:	f04f 0000 	mov.w	r0, #0
    cd7c:	f8c8 0000 	str.w	r0, [r8]
    cd80:	9804      	ldr	r0, [sp, #16]
    cd82:	465c      	mov	r4, fp
            return list;

        /* Otherwise repeat, merging lists twice the size */
        insize *= 2;
    cd84:	ea4f 0040 	mov.w	r0, r0, lsl #1
    cd88:	f240 80c8 	bls.w	cf1c <core_bench_list+0x3c8>
        while (p)
    cd8c:	2c00      	cmp	r4, #0
    cd8e:	9004      	str	r0, [sp, #16]
    cd90:	d0e8      	beq.n	cd64 <core_bench_list+0x210>
    cd92:	f04f 0b00 	mov.w	fp, #0
    cd96:	f04f 0800 	mov.w	r8, #0
    cd9a:	2100      	movs	r1, #0
    cd9c:	e003      	b.n	cda6 <core_bench_list+0x252>
    cd9e:	bf00      	nop
    cda0:	9905      	ldr	r1, [sp, #20]
    cda2:	2c00      	cmp	r4, #0
    cda4:	d0e3      	beq.n	cd6e <core_bench_list+0x21a>
            nmerges++; /* there exists a merge to be done */
    cda6:	3101      	adds	r1, #1
    cda8:	9b04      	ldr	r3, [sp, #16]
    cdaa:	4640      	mov	r0, r8
    cdac:	4627      	mov	r7, r4
    cdae:	9105      	str	r1, [sp, #20]
    cdb0:	2100      	movs	r1, #0
    cdb2:	f04f 0903 	mov.w	r9, #3
            for (i = 0; i < insize; i++)
    cdb6:	f1a9 0203 	sub.w	r2, r9, #3
    cdba:	429a      	cmp	r2, r3
    cdbc:	da20      	bge.n	ce00 <core_bench_list+0x2ac>
                q = q->next;
    cdbe:	6824      	ldr	r4, [r4, #0]
    cdc0:	f1a9 0202 	sub.w	r2, r9, #2
                if (!q)
    cdc4:	b1dc      	cbz	r4, cdfe <core_bench_list+0x2aa>
            for (i = 0; i < insize; i++)
    cdc6:	429a      	cmp	r2, r3
    cdc8:	da22      	bge.n	ce10 <core_bench_list+0x2bc>
                q = q->next;
    cdca:	6824      	ldr	r4, [r4, #0]
                if (!q)
    cdcc:	b34c      	cbz	r4, ce22 <core_bench_list+0x2ce>
    cdce:	f1a9 0201 	sub.w	r2, r9, #1
            for (i = 0; i < insize; i++)
    cdd2:	429a      	cmp	r2, r3
    cdd4:	da14      	bge.n	ce00 <core_bench_list+0x2ac>
                q = q->next;
    cdd6:	6824      	ldr	r4, [r4, #0]
                if (!q)
    cdd8:	b36c      	cbz	r4, ce36 <core_bench_list+0x2e2>
            for (i = 0; i < insize; i++)
    cdda:	4599      	cmp	r9, r3
    cddc:	da33      	bge.n	ce46 <core_bench_list+0x2f2>
                q = q->next;
    cdde:	6824      	ldr	r4, [r4, #0]
                psize++;
    cde0:	3104      	adds	r1, #4
                if (!q)
    cde2:	2c00      	cmp	r4, #0
    cde4:	f109 0904 	add.w	r9, r9, #4
    cde8:	d1e5      	bne.n	cdb6 <core_bench_list+0x262>
    cdea:	f1a9 0903 	sub.w	r9, r9, #3
    cdee:	2400      	movs	r4, #0
    cdf0:	4680      	mov	r8, r0
    cdf2:	f8cd b01c 	str.w	fp, [sp, #28]
            while (psize > 0 || (qsize > 0 && q))
    cdf6:	f1b9 0f00 	cmp.w	r9, #0
    cdfa:	dc7b      	bgt.n	cef4 <core_bench_list+0x3a0>
    cdfc:	e05a      	b.n	ceb4 <core_bench_list+0x360>
    cdfe:	2400      	movs	r4, #0
    ce00:	4691      	mov	r9, r2
    ce02:	4680      	mov	r8, r0
    ce04:	f8cd b01c 	str.w	fp, [sp, #28]
    ce08:	f1b9 0f00 	cmp.w	r9, #0
    ce0c:	dc72      	bgt.n	cef4 <core_bench_list+0x3a0>
    ce0e:	e051      	b.n	ceb4 <core_bench_list+0x360>
    ce10:	f041 0901 	orr.w	r9, r1, #1
    ce14:	4680      	mov	r8, r0
    ce16:	f8cd b01c 	str.w	fp, [sp, #28]
    ce1a:	f1b9 0f00 	cmp.w	r9, #0
    ce1e:	dc69      	bgt.n	cef4 <core_bench_list+0x3a0>
    ce20:	e048      	b.n	ceb4 <core_bench_list+0x360>
    ce22:	f041 0902 	orr.w	r9, r1, #2
    ce26:	2400      	movs	r4, #0
    ce28:	4680      	mov	r8, r0
    ce2a:	f8cd b01c 	str.w	fp, [sp, #28]
    ce2e:	f1b9 0f00 	cmp.w	r9, #0
    ce32:	dc5f      	bgt.n	cef4 <core_bench_list+0x3a0>
    ce34:	e03e      	b.n	ceb4 <core_bench_list+0x360>
    ce36:	2400      	movs	r4, #0
    ce38:	4680      	mov	r8, r0
    ce3a:	f8cd b01c 	str.w	fp, [sp, #28]
    ce3e:	f1b9 0f00 	cmp.w	r9, #0
    ce42:	dc57      	bgt.n	cef4 <core_bench_list+0x3a0>
    ce44:	e036      	b.n	ceb4 <core_bench_list+0x360>
    ce46:	f041 0903 	orr.w	r9, r1, #3
    ce4a:	4680      	mov	r8, r0
    ce4c:	f8cd b01c 	str.w	fp, [sp, #28]
    ce50:	f1b9 0f00 	cmp.w	r9, #0
    ce54:	dc4e      	bgt.n	cef4 <core_bench_list+0x3a0>
    ce56:	e02d      	b.n	ceb4 <core_bench_list+0x360>
                else if (cmp(p->info, q->info, res) <= 0)
    ce58:	6829      	ldr	r1, [r5, #0]
    ce5a:	9308      	str	r3, [sp, #32]
    ce5c:	1c4a      	adds	r2, r1, #1
    ee_s16 val1 = calc_func(&(a->data16), res);
    ce5e:	3102      	adds	r1, #2
                else if (cmp(p->info, q->info, res) <= 0)
    ce60:	6878      	ldr	r0, [r7, #4]
    ce62:	f8d4 a004 	ldr.w	sl, [r4, #4]
    ce66:	602a      	str	r2, [r5, #0]
    ee_s16 val1 = calc_func(&(a->data16), res);
    ce68:	6029      	str	r1, [r5, #0]
    ce6a:	f8dd b018 	ldr.w	fp, [sp, #24]
    ce6e:	4659      	mov	r1, fp
    ce70:	f7ff fdfa 	bl	ca68 <calc_func>
    ee_s16 val2 = calc_func(&(b->data16), res);
    ce74:	6829      	ldr	r1, [r5, #0]
    ee_s16 val1 = calc_func(&(a->data16), res);
    ce76:	4606      	mov	r6, r0
    ee_s16 val2 = calc_func(&(b->data16), res);
    ce78:	1c48      	adds	r0, r1, #1
    ce7a:	6028      	str	r0, [r5, #0]
    ce7c:	4650      	mov	r0, sl
    ce7e:	4659      	mov	r1, fp
    ce80:	f7ff fdf2 	bl	ca68 <calc_func>
                else if (cmp(p->info, q->info, res) <= 0)
    ce84:	4286      	cmp	r6, r0
    ce86:	dd27      	ble.n	ced8 <core_bench_list+0x384>
    ce88:	9b08      	ldr	r3, [sp, #32]
    ce8a:	4620      	mov	r0, r4
                    q = q->next;
    ce8c:	6824      	ldr	r4, [r4, #0]
    ce8e:	f240 0530 	movw	r5, #48	; 0x30
    ce92:	f8dd b01c 	ldr.w	fp, [sp, #28]
                    qsize--;
    ce96:	3b01      	subs	r3, #1
    ce98:	f2c1 0500 	movt	r5, #4096	; 0x1000
                if (tail)
    ce9c:	f1b8 0f00 	cmp.w	r8, #0
    cea0:	d033      	beq.n	cf0a <core_bench_list+0x3b6>
                    tail->next = e;
    cea2:	6829      	ldr	r1, [r5, #0]
    cea4:	3101      	adds	r1, #1
    cea6:	6029      	str	r1, [r5, #0]
    cea8:	f8c8 0000 	str.w	r0, [r8]
    ceac:	4680      	mov	r8, r0
            while (psize > 0 || (qsize > 0 && q))
    ceae:	f1b9 0f00 	cmp.w	r9, #0
    ceb2:	dc1f      	bgt.n	cef4 <core_bench_list+0x3a0>
    ceb4:	2c00      	cmp	r4, #0
    ceb6:	f43f af73 	beq.w	cda0 <core_bench_list+0x24c>
    ceba:	2b01      	cmp	r3, #1
    cebc:	f6ff af70 	blt.w	cda0 <core_bench_list+0x24c>
                if (psize == 0)
    cec0:	f1b9 0f00 	cmp.w	r9, #0
    cec4:	d116      	bne.n	cef4 <core_bench_list+0x3a0>
    cec6:	4620      	mov	r0, r4
                    q = q->next;
    cec8:	6824      	ldr	r4, [r4, #0]
                    qsize--;
    ceca:	3b01      	subs	r3, #1
    cecc:	f04f 0900 	mov.w	r9, #0
                if (tail)
    ced0:	f1b8 0f00 	cmp.w	r8, #0
    ced4:	d1e5      	bne.n	cea2 <core_bench_list+0x34e>
    ced6:	e018      	b.n	cf0a <core_bench_list+0x3b6>
    ced8:	4638      	mov	r0, r7
                    p = p->next;
    ceda:	683f      	ldr	r7, [r7, #0]
    cedc:	f240 0530 	movw	r5, #48	; 0x30
    cee0:	e9dd b307 	ldrd	fp, r3, [sp, #28]
                    psize--;
    cee4:	f1a9 0901 	sub.w	r9, r9, #1
    cee8:	f2c1 0500 	movt	r5, #4096	; 0x1000
                if (tail)
    ceec:	f1b8 0f00 	cmp.w	r8, #0
    cef0:	d1d7      	bne.n	cea2 <core_bench_list+0x34e>
    cef2:	e00a      	b.n	cf0a <core_bench_list+0x3b6>
                else if (qsize == 0 || !q)
    cef4:	2c00      	cmp	r4, #0
    cef6:	bf18      	it	ne
    cef8:	2b00      	cmpne	r3, #0
    cefa:	d1ad      	bne.n	ce58 <core_bench_list+0x304>
    cefc:	4638      	mov	r0, r7
                    p = p->next;
    cefe:	683f      	ldr	r7, [r7, #0]
                    psize--;
    cf00:	f1a9 0901 	sub.w	r9, r9, #1
                if (tail)
    cf04:	f1b8 0f00 	cmp.w	r8, #0
    cf08:	d1cb      	bne.n	cea2 <core_bench_list+0x34e>
    cf0a:	4683      	mov	fp, r0
    cf0c:	4680      	mov	r8, r0
    cf0e:	f8cd b01c 	str.w	fp, [sp, #28]
            while (psize > 0 || (qsize > 0 && q))
    cf12:	f1b9 0f00 	cmp.w	r9, #0
    cf16:	dced      	bgt.n	cef4 <core_bench_list+0x3a0>
    cf18:	e7cc      	b.n	ceb4 <core_bench_list+0x360>
    cf1a:	46a3      	mov	fp, r4
    remover = core_list_remove(list->next);
    cf1c:	6828      	ldr	r0, [r5, #0]
    cf1e:	f8db 2000 	ldr.w	r2, [fp]
    cf22:	1c41      	adds	r1, r0, #1
    cf24:	6029      	str	r1, [r5, #0]
    list_head *ret = item->next;
    cf26:	e9d2 4100 	ldrd	r4, r1, [r2]
    item->info = ret->info;
    cf2a:	1c87      	adds	r7, r0, #2
    cf2c:	6863      	ldr	r3, [r4, #4]
    cf2e:	602f      	str	r7, [r5, #0]
    cf30:	6053      	str	r3, [r2, #4]
    item->next = item->next->next;
    cf32:	6813      	ldr	r3, [r2, #0]
    ret->info  = tmp;
    cf34:	6061      	str	r1, [r4, #4]
    item->next = item->next->next;
    cf36:	681b      	ldr	r3, [r3, #0]
    cf38:	3003      	adds	r0, #3
    cf3a:	6028      	str	r0, [r5, #0]
    cf3c:	2000      	movs	r0, #0
    cf3e:	6013      	str	r3, [r2, #0]
    ret->next  = NULL;
    cf40:	6020      	str	r0, [r4, #0]
    if (info->idx >= 0)
    cf42:	9f03      	ldr	r7, [sp, #12]
    finder = core_list_find(list, &info);
    cf44:	682b      	ldr	r3, [r5, #0]
    cf46:	9802      	ldr	r0, [sp, #8]
    cf48:	9a00      	ldr	r2, [sp, #0]
    if (info->idx >= 0)
    cf4a:	b23f      	sxth	r7, r7
    cf4c:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
    cf50:	4410      	add	r0, r2
    finder = core_list_find(list, &info);
    cf52:	1c5a      	adds	r2, r3, #1
    if (info->idx >= 0)
    cf54:	42b7      	cmp	r7, r6
    finder = core_list_find(list, &info);
    cf56:	602a      	str	r2, [r5, #0]
    cf58:	dd1f      	ble.n	cf9a <core_bench_list+0x446>
        while (list && (list->info->idx != info->idx))
    cf5a:	f1bb 0f00 	cmp.w	fp, #0
    cf5e:	d03d      	beq.n	cfdc <core_bench_list+0x488>
    cf60:	9f03      	ldr	r7, [sp, #12]
    cf62:	465d      	mov	r5, fp
    cf64:	b2bf      	uxth	r7, r7
    cf66:	686e      	ldr	r6, [r5, #4]
    cf68:	8876      	ldrh	r6, [r6, #2]
    cf6a:	42be      	cmp	r6, r7
    cf6c:	d039      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cf6e:	682d      	ldr	r5, [r5, #0]
        while (list && (list->info->idx != info->idx))
    cf70:	b3a5      	cbz	r5, cfdc <core_bench_list+0x488>
    cf72:	686e      	ldr	r6, [r5, #4]
    cf74:	8876      	ldrh	r6, [r6, #2]
    cf76:	42be      	cmp	r6, r7
    cf78:	d033      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cf7a:	682d      	ldr	r5, [r5, #0]
        while (list && (list->info->idx != info->idx))
    cf7c:	b375      	cbz	r5, cfdc <core_bench_list+0x488>
    cf7e:	686e      	ldr	r6, [r5, #4]
    cf80:	8876      	ldrh	r6, [r6, #2]
    cf82:	42be      	cmp	r6, r7
    cf84:	d02d      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cf86:	682d      	ldr	r5, [r5, #0]
        while (list && (list->info->idx != info->idx))
    cf88:	b345      	cbz	r5, cfdc <core_bench_list+0x488>
    cf8a:	686e      	ldr	r6, [r5, #4]
    cf8c:	8876      	ldrh	r6, [r6, #2]
    cf8e:	42be      	cmp	r6, r7
    cf90:	d027      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cf92:	682d      	ldr	r5, [r5, #0]
        while (list && (list->info->idx != info->idx))
    cf94:	2d00      	cmp	r5, #0
    cf96:	d1e6      	bne.n	cf66 <core_bench_list+0x412>
    cf98:	e020      	b.n	cfdc <core_bench_list+0x488>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cf9a:	f1bb 0f00 	cmp.w	fp, #0
    cf9e:	d01d      	beq.n	cfdc <core_bench_list+0x488>
    cfa0:	465d      	mov	r5, fp
    cfa2:	686f      	ldr	r7, [r5, #4]
    cfa4:	9e01      	ldr	r6, [sp, #4]
    cfa6:	783f      	ldrb	r7, [r7, #0]
    cfa8:	42be      	cmp	r6, r7
    cfaa:	d01a      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cfac:	682d      	ldr	r5, [r5, #0]
    cfae:	b1ad      	cbz	r5, cfdc <core_bench_list+0x488>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cfb0:	686f      	ldr	r7, [r5, #4]
    cfb2:	9e01      	ldr	r6, [sp, #4]
    cfb4:	783f      	ldrb	r7, [r7, #0]
    cfb6:	42be      	cmp	r6, r7
    cfb8:	d013      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cfba:	682d      	ldr	r5, [r5, #0]
    cfbc:	b175      	cbz	r5, cfdc <core_bench_list+0x488>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cfbe:	686f      	ldr	r7, [r5, #4]
    cfc0:	9e01      	ldr	r6, [sp, #4]
    cfc2:	783f      	ldrb	r7, [r7, #0]
    cfc4:	42be      	cmp	r6, r7
    cfc6:	d00c      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cfc8:	682d      	ldr	r5, [r5, #0]
    cfca:	b13d      	cbz	r5, cfdc <core_bench_list+0x488>
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cfcc:	686f      	ldr	r7, [r5, #4]
    cfce:	9e01      	ldr	r6, [sp, #4]
    cfd0:	783f      	ldrb	r7, [r7, #0]
    cfd2:	42be      	cmp	r6, r7
    cfd4:	d005      	beq.n	cfe2 <core_bench_list+0x48e>
            list = list->next;
    cfd6:	682d      	ldr	r5, [r5, #0]
        while (list && ((list->info->data16 & 0xff) != info->data16))
    cfd8:	2d00      	cmp	r5, #0
    cfda:	d1e2      	bne.n	cfa2 <core_bench_list+0x44e>
        finder = list->next;
    cfdc:	f8db 5000 	ldr.w	r5, [fp]
    while (finder)
    cfe0:	b33d      	cbz	r5, d032 <core_bench_list+0x4de>
        retval = crc16(list->info->data16, retval);
    cfe2:	f8db 1004 	ldr.w	r1, [fp, #4]
    cfe6:	f240 0730 	movw	r7, #48	; 0x30
    cfea:	880a      	ldrh	r2, [r1, #0]
    cfec:	1c99      	adds	r1, r3, #2
    cfee:	f2c1 0700 	movt	r7, #4096	; 0x1000
    cff2:	6039      	str	r1, [r7, #0]
    cff4:	1cd9      	adds	r1, r3, #3
    cff6:	6039      	str	r1, [r7, #0]
    cff8:	b281      	uxth	r1, r0
    cffa:	4610      	mov	r0, r2
    cffc:	f002 faa1 	bl	f542 <crcu16>
        finder = finder->next;
    d000:	682d      	ldr	r5, [r5, #0]
    d002:	f240 0630 	movw	r6, #48	; 0x30
    d006:	f2c1 0600 	movt	r6, #4096	; 0x1000
    while (finder)
    d00a:	b175      	cbz	r5, d02a <core_bench_list+0x4d6>
        retval = crc16(list->info->data16, retval);
    d00c:	f8db 1004 	ldr.w	r1, [fp, #4]
    d010:	6833      	ldr	r3, [r6, #0]
    d012:	880a      	ldrh	r2, [r1, #0]
    d014:	1c59      	adds	r1, r3, #1
    d016:	6031      	str	r1, [r6, #0]
    d018:	1c99      	adds	r1, r3, #2
    d01a:	6031      	str	r1, [r6, #0]
    d01c:	b281      	uxth	r1, r0
    d01e:	4610      	mov	r0, r2
    d020:	f002 fa8f 	bl	f542 <crcu16>
        finder = finder->next;
    d024:	682d      	ldr	r5, [r5, #0]
    while (finder)
    d026:	2d00      	cmp	r5, #0
    d028:	d1f0      	bne.n	d00c <core_bench_list+0x4b8>
    remover = core_list_undo_remove(remover, list->next);
    d02a:	6832      	ldr	r2, [r6, #0]
    tmp                 = item_removed->info;
    d02c:	6861      	ldr	r1, [r4, #4]
    d02e:	4635      	mov	r5, r6
    d030:	e003      	b.n	d03a <core_bench_list+0x4e6>
    d032:	f240 0530 	movw	r5, #48	; 0x30
    d036:	f2c1 0500 	movt	r5, #4096	; 0x1000
    remover = core_list_undo_remove(remover, list->next);
    d03a:	f8db 3000 	ldr.w	r3, [fp]
    d03e:	1c57      	adds	r7, r2, #1
    d040:	602f      	str	r7, [r5, #0]
    item_removed->info  = item_modified->info;
    d042:	3202      	adds	r2, #2
    d044:	685f      	ldr	r7, [r3, #4]
    d046:	602a      	str	r2, [r5, #0]
    item_removed->next  = item_modified->next;
    d048:	681a      	ldr	r2, [r3, #0]
    d04a:	f04f 0901 	mov.w	r9, #1
    d04e:	e9c4 2700 	strd	r2, r7, [r4]
    item_modified->next = item_removed;
    d052:	682a      	ldr	r2, [r5, #0]
    item_modified->info = tmp;
    d054:	6059      	str	r1, [r3, #4]
    item_modified->next = item_removed;
    d056:	1c51      	adds	r1, r2, #1
    d058:	6029      	str	r1, [r5, #0]
    d05a:	601c      	str	r4, [r3, #0]
    list = core_list_mergesort(list, cmp_idx, NULL);
    d05c:	6829      	ldr	r1, [r5, #0]
    d05e:	3101      	adds	r1, #1
    d060:	6029      	str	r1, [r5, #0]
        while (p)
    d062:	f1bb 0f00 	cmp.w	fp, #0
    d066:	d113      	bne.n	d090 <core_bench_list+0x53c>
    d068:	f04f 0e00 	mov.w	lr, #0
        tail = NULL;
    d06c:	2400      	movs	r4, #0
        list = NULL;
    d06e:	f04f 0800 	mov.w	r8, #0
        tail->next = NULL;
    d072:	6829      	ldr	r1, [r5, #0]
        insize *= 2;
    d074:	ea4f 0949 	mov.w	r9, r9, lsl #1
        tail->next = NULL;
    d078:	3101      	adds	r1, #1
    d07a:	6029      	str	r1, [r5, #0]
    d07c:	2100      	movs	r1, #0
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    d07e:	f1be 0f01 	cmp.w	lr, #1
    d082:	46c3      	mov	fp, r8
        tail->next = NULL;
    d084:	6021      	str	r1, [r4, #0]
    d086:	f240 80c2 	bls.w	d20e <core_bench_list+0x6ba>
        while (p)
    d08a:	f1bb 0f00 	cmp.w	fp, #0
    d08e:	d0eb      	beq.n	d068 <core_bench_list+0x514>
    d090:	f04f 0800 	mov.w	r8, #0
    d094:	2400      	movs	r4, #0
    d096:	f04f 0e00 	mov.w	lr, #0
    d09a:	e002      	b.n	d0a2 <core_bench_list+0x54e>
    d09c:	f1bb 0f00 	cmp.w	fp, #0
    d0a0:	d0e7      	beq.n	d072 <core_bench_list+0x51e>
    d0a2:	4622      	mov	r2, r4
    d0a4:	46da      	mov	sl, fp
            nmerges++; /* there exists a merge to be done */
    d0a6:	f10e 0e01 	add.w	lr, lr, #1
    d0aa:	2400      	movs	r4, #0
    d0ac:	2603      	movs	r6, #3
            for (i = 0; i < insize; i++)
    d0ae:	1ef7      	subs	r7, r6, #3
    d0b0:	454f      	cmp	r7, r9
    d0b2:	da28      	bge.n	d106 <core_bench_list+0x5b2>
                q = q->next;
    d0b4:	f8db b000 	ldr.w	fp, [fp]
    d0b8:	1eb7      	subs	r7, r6, #2
                if (!q)
    d0ba:	f1bb 0f00 	cmp.w	fp, #0
    d0be:	d020      	beq.n	d102 <core_bench_list+0x5ae>
            for (i = 0; i < insize; i++)
    d0c0:	454f      	cmp	r7, r9
    d0c2:	da26      	bge.n	d112 <core_bench_list+0x5be>
                q = q->next;
    d0c4:	f8db b000 	ldr.w	fp, [fp]
                if (!q)
    d0c8:	f1bb 0f00 	cmp.w	fp, #0
    d0cc:	d028      	beq.n	d120 <core_bench_list+0x5cc>
    d0ce:	1e77      	subs	r7, r6, #1
            for (i = 0; i < insize; i++)
    d0d0:	454f      	cmp	r7, r9
    d0d2:	da18      	bge.n	d106 <core_bench_list+0x5b2>
                q = q->next;
    d0d4:	f8db b000 	ldr.w	fp, [fp]
                if (!q)
    d0d8:	f1bb 0f00 	cmp.w	fp, #0
    d0dc:	d029      	beq.n	d132 <core_bench_list+0x5de>
            for (i = 0; i < insize; i++)
    d0de:	454e      	cmp	r6, r9
    d0e0:	da2e      	bge.n	d140 <core_bench_list+0x5ec>
                q = q->next;
    d0e2:	f8db b000 	ldr.w	fp, [fp]
                psize++;
    d0e6:	3404      	adds	r4, #4
                if (!q)
    d0e8:	f1bb 0f00 	cmp.w	fp, #0
    d0ec:	f106 0604 	add.w	r6, r6, #4
    d0f0:	d1dd      	bne.n	d0ae <core_bench_list+0x55a>
    d0f2:	3e03      	subs	r6, #3
    d0f4:	f04f 0b00 	mov.w	fp, #0
    d0f8:	464f      	mov	r7, r9
    d0fa:	4614      	mov	r4, r2
            while (psize > 0 || (qsize > 0 && q))
    d0fc:	2e00      	cmp	r6, #0
    d0fe:	dc3d      	bgt.n	d17c <core_bench_list+0x628>
    d100:	e07e      	b.n	d200 <core_bench_list+0x6ac>
    d102:	f04f 0b00 	mov.w	fp, #0
    d106:	463e      	mov	r6, r7
    d108:	464f      	mov	r7, r9
    d10a:	4614      	mov	r4, r2
    d10c:	2e00      	cmp	r6, #0
    d10e:	dc35      	bgt.n	d17c <core_bench_list+0x628>
    d110:	e076      	b.n	d200 <core_bench_list+0x6ac>
    d112:	f044 0601 	orr.w	r6, r4, #1
    d116:	464f      	mov	r7, r9
    d118:	4614      	mov	r4, r2
    d11a:	2e00      	cmp	r6, #0
    d11c:	dc2e      	bgt.n	d17c <core_bench_list+0x628>
    d11e:	e06f      	b.n	d200 <core_bench_list+0x6ac>
    d120:	f044 0602 	orr.w	r6, r4, #2
    d124:	f04f 0b00 	mov.w	fp, #0
    d128:	464f      	mov	r7, r9
    d12a:	4614      	mov	r4, r2
    d12c:	2e00      	cmp	r6, #0
    d12e:	dc25      	bgt.n	d17c <core_bench_list+0x628>
    d130:	e066      	b.n	d200 <core_bench_list+0x6ac>
    d132:	f04f 0b00 	mov.w	fp, #0
    d136:	464f      	mov	r7, r9
    d138:	4614      	mov	r4, r2
    d13a:	2e00      	cmp	r6, #0
    d13c:	dc1e      	bgt.n	d17c <core_bench_list+0x628>
    d13e:	e05f      	b.n	d200 <core_bench_list+0x6ac>
    d140:	f044 0603 	orr.w	r6, r4, #3
    d144:	464f      	mov	r7, r9
    d146:	4614      	mov	r4, r2
    d148:	2e00      	cmp	r6, #0
    d14a:	dc17      	bgt.n	d17c <core_bench_list+0x628>
    d14c:	e058      	b.n	d200 <core_bench_list+0x6ac>
    d14e:	bf00      	nop
                if (psize == 0)
    d150:	b9a6      	cbnz	r6, d17c <core_bench_list+0x628>
    d152:	465a      	mov	r2, fp
                    q = q->next;
    d154:	f8db b000 	ldr.w	fp, [fp]
                    qsize--;
    d158:	3f01      	subs	r7, #1
    d15a:	2600      	movs	r6, #0
                if (tail)
    d15c:	b93c      	cbnz	r4, d16e <core_bench_list+0x61a>
    d15e:	e04b      	b.n	d1f8 <core_bench_list+0x6a4>
                    p = p->next;
    d160:	f8da 3000 	ldr.w	r3, [sl]
    d164:	4652      	mov	r2, sl
                    psize--;
    d166:	3e01      	subs	r6, #1
    d168:	469a      	mov	sl, r3
                if (tail)
    d16a:	2c00      	cmp	r4, #0
    d16c:	d044      	beq.n	d1f8 <core_bench_list+0x6a4>
                    tail->next = e;
    d16e:	6829      	ldr	r1, [r5, #0]
    d170:	3101      	adds	r1, #1
    d172:	6029      	str	r1, [r5, #0]
    d174:	6022      	str	r2, [r4, #0]
    d176:	4614      	mov	r4, r2
            while (psize > 0 || (qsize > 0 && q))
    d178:	2e00      	cmp	r6, #0
    d17a:	dd41      	ble.n	d200 <core_bench_list+0x6ac>
                else if (qsize == 0 || !q)
    d17c:	f1bb 0f00 	cmp.w	fp, #0
    d180:	bf18      	it	ne
    d182:	2f00      	cmpne	r7, #0
    d184:	d0ec      	beq.n	d160 <core_bench_list+0x60c>
    d186:	46ac      	mov	ip, r5
                else if (cmp(p->info, q->info, res) <= 0)
    d188:	682d      	ldr	r5, [r5, #0]
    d18a:	f8da 2004 	ldr.w	r2, [sl, #4]
    d18e:	1c6b      	adds	r3, r5, #1
    d190:	f8db 1004 	ldr.w	r1, [fp, #4]
    d194:	f8cc 3000 	str.w	r3, [ip]
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
    d198:	f9b2 3000 	ldrsh.w	r3, [r2]
    d19c:	3502      	adds	r5, #2
    d19e:	0a1b      	lsrs	r3, r3, #8
    d1a0:	f363 231f 	bfi	r3, r3, #8, #24
    d1a4:	f8cc 5000 	str.w	r5, [ip]
    d1a8:	8013      	strh	r3, [r2, #0]
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    d1aa:	f8dc 3000 	ldr.w	r3, [ip]
    d1ae:	f9b1 5000 	ldrsh.w	r5, [r1]
    d1b2:	3301      	adds	r3, #1
    d1b4:	f8cc 3000 	str.w	r3, [ip]
    return a->idx - b->idx;
    d1b8:	f9b2 2002 	ldrsh.w	r2, [r2, #2]
    d1bc:	f9b1 3002 	ldrsh.w	r3, [r1, #2]
                else if (cmp(p->info, q->info, res) <= 0)
    d1c0:	429a      	cmp	r2, r3
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    d1c2:	ea4f 2215 	mov.w	r2, r5, lsr #8
    d1c6:	f362 221f 	bfi	r2, r2, #8, #24
    d1ca:	800a      	strh	r2, [r1, #0]
                else if (cmp(p->info, q->info, res) <= 0)
    d1cc:	dd0a      	ble.n	d1e4 <core_bench_list+0x690>
    d1ce:	465a      	mov	r2, fp
                    q = q->next;
    d1d0:	f8db b000 	ldr.w	fp, [fp]
                    qsize--;
    d1d4:	3f01      	subs	r7, #1
    d1d6:	f240 0530 	movw	r5, #48	; 0x30
    d1da:	f2c1 0500 	movt	r5, #4096	; 0x1000
                if (tail)
    d1de:	2c00      	cmp	r4, #0
    d1e0:	d1c5      	bne.n	d16e <core_bench_list+0x61a>
    d1e2:	e009      	b.n	d1f8 <core_bench_list+0x6a4>
    d1e4:	4652      	mov	r2, sl
                    p = p->next;
    d1e6:	f8da a000 	ldr.w	sl, [sl]
                    psize--;
    d1ea:	3e01      	subs	r6, #1
    d1ec:	f240 0530 	movw	r5, #48	; 0x30
    d1f0:	f2c1 0500 	movt	r5, #4096	; 0x1000
                if (tail)
    d1f4:	2c00      	cmp	r4, #0
    d1f6:	d1ba      	bne.n	d16e <core_bench_list+0x61a>
    d1f8:	4690      	mov	r8, r2
    d1fa:	4614      	mov	r4, r2
            while (psize > 0 || (qsize > 0 && q))
    d1fc:	2e00      	cmp	r6, #0
    d1fe:	dcbd      	bgt.n	d17c <core_bench_list+0x628>
    d200:	f1bb 0f00 	cmp.w	fp, #0
    d204:	f43f af4a 	beq.w	d09c <core_bench_list+0x548>
    d208:	2f01      	cmp	r7, #1
    d20a:	daa1      	bge.n	d150 <core_bench_list+0x5fc>
    d20c:	e746      	b.n	d09c <core_bench_list+0x548>
    d20e:	f8d8 4000 	ldr.w	r4, [r8]
    d212:	b174      	cbz	r4, d232 <core_bench_list+0x6de>
        retval = crc16(list->info->data16, retval);
    d214:	f8d8 1004 	ldr.w	r1, [r8, #4]
    d218:	682b      	ldr	r3, [r5, #0]
    d21a:	880a      	ldrh	r2, [r1, #0]
    d21c:	1c59      	adds	r1, r3, #1
    d21e:	6029      	str	r1, [r5, #0]
    d220:	1c99      	adds	r1, r3, #2
    d222:	6029      	str	r1, [r5, #0]
    d224:	b281      	uxth	r1, r0
    d226:	4610      	mov	r0, r2
    d228:	f002 f98b 	bl	f542 <crcu16>
    d22c:	6824      	ldr	r4, [r4, #0]
    while (finder)
    d22e:	2c00      	cmp	r4, #0
    d230:	d1f0      	bne.n	d214 <core_bench_list+0x6c0>
    return retval;
    d232:	b280      	uxth	r0, r0
    d234:	b009      	add	sp, #36	; 0x24
    d236:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d23a:	d4d4      	bmi.n	d1e6 <core_bench_list+0x692>

0000d23c <core_list_init>:
{
    d23c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d240:	f64c 43cd 	movw	r3, #52429	; 0xcccd
    d244:	f6cc 43cc 	movt	r3, #52428	; 0xcccc
    ee_u32 size     = (blksize / per_item)
    d248:	fba0 0303 	umull	r0, r3, r0, r3
    d24c:	f06f 0001 	mvn.w	r0, #1
                  - 2; /* to accomodate systems with 64b pointers, and make sure
    d250:	eb00 1a13 	add.w	sl, r0, r3, lsr #4
    list_head *memblock_end  = memblock + size;
    d254:	eb01 08ca 	add.w	r8, r1, sl, lsl #3
    d258:	2000      	movs	r0, #0
    list->next         = NULL;
    d25a:	e9c1 0800 	strd	r0, r8, [r1]
    list->info->idx    = 0x0000;
    d25e:	f8a8 0002 	strh.w	r0, [r8, #2]
    d262:	f248 0080 	movw	r0, #32896	; 0x8080
    memblock++;
    d266:	f240 0930 	movw	r9, #48	; 0x30
    list->info->data16 = (ee_s16)0x8080;
    d26a:	f821 003a 	strh.w	r0, [r1, sl, lsl #3]
    memblock++;
    d26e:	f2c1 0900 	movt	r9, #4096	; 0x1000
    d272:	f8d9 5000 	ldr.w	r5, [r9]
    list_data *datablock_end = datablock + size;
    d276:	eb08 038a 	add.w	r3, r8, sl, lsl #2
    memblock++;
    d27a:	1c6c      	adds	r4, r5, #1
    d27c:	f8c9 4000 	str.w	r4, [r9]
    datablock++;
    d280:	1cac      	adds	r4, r5, #2
    memblock++;
    d282:	f101 0e08 	add.w	lr, r1, #8
    datablock++;
    d286:	f108 0b04 	add.w	fp, r8, #4
    d28a:	f8c9 4000 	str.w	r4, [r9]
    core_list_insert_new(
    d28e:	1cec      	adds	r4, r5, #3
    if ((*memblock + 1) >= memblock_end)
    d290:	f1ba 0f03 	cmp.w	sl, #3
    core_list_insert_new(
    d294:	f8c9 4000 	str.w	r4, [r9]
    if ((*memblock + 1) >= memblock_end)
    d298:	db23      	blt.n	d2e2 <core_list_init+0xa6>
    if ((*datablock + 1) >= datablock_end)
    d29a:	f10b 0404 	add.w	r4, fp, #4
    d29e:	42a3      	cmp	r3, r4
    d2a0:	d922      	bls.n	d2e8 <core_list_init+0xac>
    (*memblock)++;
    d2a2:	1d2e      	adds	r6, r5, #4
    d2a4:	f8c9 6000 	str.w	r6, [r9]
    newitem->next      = insert_point->next;
    d2a8:	680e      	ldr	r6, [r1, #0]
    d2aa:	3505      	adds	r5, #5
    d2ac:	f8c9 5000 	str.w	r5, [r9]
    insert_point->next = newitem;
    d2b0:	f8c1 e000 	str.w	lr, [r1]
    newitem->next      = insert_point->next;
    d2b4:	608e      	str	r6, [r1, #8]
    (*datablock)++;
    d2b6:	f8d9 5000 	ldr.w	r5, [r9]
    newitem->info = *datablock;
    d2ba:	f8c1 b00c 	str.w	fp, [r1, #12]
    (*datablock)++;
    d2be:	1c6e      	adds	r6, r5, #1
    copy_info(newitem->info, info);
    d2c0:	3502      	adds	r5, #2
    (*datablock)++;
    d2c2:	f8c9 6000 	str.w	r6, [r9]
    copy_info(newitem->info, info);
    d2c6:	f8c9 5000 	str.w	r5, [r9]
    d2ca:	f64f 75ff 	movw	r5, #65535	; 0xffff
    to->data16 = from->data16;
    d2ce:	f8ab 5000 	strh.w	r5, [fp]
    d2d2:	f647 75ff 	movw	r5, #32767	; 0x7fff
    d2d6:	f101 0e10 	add.w	lr, r1, #16
    to->idx    = from->idx;
    d2da:	f8ab 5002 	strh.w	r5, [fp, #2]
    d2de:	46a3      	mov	fp, r4
    d2e0:	e002      	b.n	d2e8 <core_list_init+0xac>
    for (i = 0; i < size; i++)
    d2e2:	f1ba 0f00 	cmp.w	sl, #0
    d2e6:	d039      	beq.n	d35c <core_list_init+0x120>
    d2e8:	2500      	movs	r5, #0
    d2ea:	e002      	b.n	d2f2 <core_list_init+0xb6>
    d2ec:	3501      	adds	r5, #1
    d2ee:	4555      	cmp	r5, sl
    d2f0:	d234      	bcs.n	d35c <core_list_init+0x120>
        core_list_insert_new(
    d2f2:	f8d9 7000 	ldr.w	r7, [r9]
    if ((*memblock + 1) >= memblock_end)
    d2f6:	f10e 0608 	add.w	r6, lr, #8
        core_list_insert_new(
    d2fa:	1c7c      	adds	r4, r7, #1
    if ((*memblock + 1) >= memblock_end)
    d2fc:	4546      	cmp	r6, r8
        core_list_insert_new(
    d2fe:	f8c9 4000 	str.w	r4, [r9]
    d302:	d2f3      	bcs.n	d2ec <core_list_init+0xb0>
    if ((*datablock + 1) >= datablock_end)
    d304:	f10b 0404 	add.w	r4, fp, #4
    d308:	429c      	cmp	r4, r3
    d30a:	d2ef      	bcs.n	d2ec <core_list_init+0xb0>
    d30c:	ea85 0c02 	eor.w	ip, r5, r2
    d310:	4640      	mov	r0, r8
    d312:	f005 0807 	and.w	r8, r5, #7
    d316:	f36c 08c6 	bfi	r8, ip, #3, #4
    d31a:	ea48 2c08 	orr.w	ip, r8, r8, lsl #8
    d31e:	4680      	mov	r8, r0
    (*memblock)++;
    d320:	1cb8      	adds	r0, r7, #2
    d322:	f8c9 0000 	str.w	r0, [r9]
    newitem->next      = insert_point->next;
    d326:	6808      	ldr	r0, [r1, #0]
    d328:	3703      	adds	r7, #3
    d32a:	f8c9 7000 	str.w	r7, [r9]
    d32e:	f8ce 0000 	str.w	r0, [lr]
    insert_point->next = newitem;
    d332:	f8c1 e000 	str.w	lr, [r1]
    (*datablock)++;
    d336:	f8d9 0000 	ldr.w	r0, [r9]
    newitem->info = *datablock;
    d33a:	f8ce b004 	str.w	fp, [lr, #4]
    (*datablock)++;
    d33e:	1c47      	adds	r7, r0, #1
    copy_info(newitem->info, info);
    d340:	3002      	adds	r0, #2
    (*datablock)++;
    d342:	f8c9 7000 	str.w	r7, [r9]
    copy_info(newitem->info, info);
    d346:	f8c9 0000 	str.w	r0, [r9]
    to->idx    = from->idx;
    d34a:	f647 70ff 	movw	r0, #32767	; 0x7fff
    to->data16 = from->data16;
    d34e:	f8ab c000 	strh.w	ip, [fp]
    to->idx    = from->idx;
    d352:	f8ab 0002 	strh.w	r0, [fp, #2]
    d356:	46a3      	mov	fp, r4
    d358:	46b6      	mov	lr, r6
    d35a:	e7c7      	b.n	d2ec <core_list_init+0xb0>
    d35c:	680f      	ldr	r7, [r1, #0]
    while (finder->next != NULL)
    d35e:	683d      	ldr	r5, [r7, #0]
    d360:	b315      	cbz	r5, d3a8 <core_list_init+0x16c>
    d362:	f64c 40cd 	movw	r0, #52429	; 0xcccd
    d366:	f6cc 40cc 	movt	r0, #52428	; 0xcccc
    d36a:	fbaa 0600 	umull	r0, r6, sl, r0
    d36e:	ea4f 0c96 	mov.w	ip, r6, lsr #2
    d372:	2601      	movs	r6, #1
    d374:	462c      	mov	r4, r5
        if (i < size / 5) /* first 20% of the list in order */
    d376:	4566      	cmp	r6, ip
    d378:	f106 0001 	add.w	r0, r6, #1
    d37c:	d20b      	bcs.n	d396 <core_list_init+0x15a>
    d37e:	bf00      	nop
    d380:	687b      	ldr	r3, [r7, #4]
    while (finder->next != NULL)
    d382:	6825      	ldr	r5, [r4, #0]
    d384:	805e      	strh	r6, [r3, #2]
    d386:	4627      	mov	r7, r4
    d388:	4606      	mov	r6, r0
    d38a:	b16d      	cbz	r5, d3a8 <core_list_init+0x16c>
    d38c:	462c      	mov	r4, r5
        if (i < size / 5) /* first 20% of the list in order */
    d38e:	4566      	cmp	r6, ip
    d390:	f106 0001 	add.w	r0, r6, #1
    d394:	d3f4      	bcc.n	d380 <core_list_init+0x144>
            ee_u16 pat = (ee_u16)(i++ ^ seed); /* get a pseudo random number */
    d396:	ea86 0302 	eor.w	r3, r6, r2
                                & (((i & 0x07) << 8)
    d39a:	f36f 339f 	bfc	r3, #14, #18
            finder->info->idx = 0x3fff
    d39e:	f000 0607 	and.w	r6, r0, #7
    d3a2:	ea43 2606 	orr.w	r6, r3, r6, lsl #8
    d3a6:	e7eb      	b.n	d380 <core_list_init+0x144>
    list = core_list_mergesort(list, cmp_idx, NULL);
    d3a8:	f8d9 0000 	ldr.w	r0, [r9]
    d3ac:	f04f 0801 	mov.w	r8, #1
    d3b0:	3001      	adds	r0, #1
    d3b2:	f04f 0c00 	mov.w	ip, #0
    d3b6:	f8c9 0000 	str.w	r0, [r9]
        while (p)
    d3ba:	b9a1      	cbnz	r1, d3e6 <core_list_init+0x1aa>
    d3bc:	f04f 0e00 	mov.w	lr, #0
        tail = NULL;
    d3c0:	2700      	movs	r7, #0
        list = NULL;
    d3c2:	2000      	movs	r0, #0
        tail->next = NULL;
    d3c4:	f8d9 1000 	ldr.w	r1, [r9]
        insize *= 2;
    d3c8:	ea4f 0848 	mov.w	r8, r8, lsl #1
        tail->next = NULL;
    d3cc:	3101      	adds	r1, #1
        if (nmerges <= 1) /* allow for nmerges==0, the empty list case */
    d3ce:	f1be 0f01 	cmp.w	lr, #1
        tail->next = NULL;
    d3d2:	f8c9 1000 	str.w	r1, [r9]
    d3d6:	f8c7 c000 	str.w	ip, [r7]
    d3da:	4601      	mov	r1, r0
    return list;
    d3dc:	bf98      	it	ls
    d3de:	e8bd 8ff0 	ldmials.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
        while (p)
    d3e2:	2900      	cmp	r1, #0
    d3e4:	d0ea      	beq.n	d3bc <core_list_init+0x180>
    d3e6:	2000      	movs	r0, #0
    d3e8:	2700      	movs	r7, #0
    d3ea:	f04f 0e00 	mov.w	lr, #0
    d3ee:	e001      	b.n	d3f4 <core_list_init+0x1b8>
    d3f0:	2900      	cmp	r1, #0
    d3f2:	d0e7      	beq.n	d3c4 <core_list_init+0x188>
    d3f4:	463e      	mov	r6, r7
    d3f6:	468a      	mov	sl, r1
            nmerges++; /* there exists a merge to be done */
    d3f8:	f10e 0e01 	add.w	lr, lr, #1
    d3fc:	2200      	movs	r2, #0
    d3fe:	2503      	movs	r5, #3
            for (i = 0; i < insize; i++)
    d400:	1eef      	subs	r7, r5, #3
    d402:	4547      	cmp	r7, r8
    d404:	da1b      	bge.n	d43e <core_list_init+0x202>
                q = q->next;
    d406:	6809      	ldr	r1, [r1, #0]
    d408:	1eaf      	subs	r7, r5, #2
                if (!q)
    d40a:	b1b9      	cbz	r1, d43c <core_list_init+0x200>
            for (i = 0; i < insize; i++)
    d40c:	4547      	cmp	r7, r8
    d40e:	da1c      	bge.n	d44a <core_list_init+0x20e>
                q = q->next;
    d410:	6809      	ldr	r1, [r1, #0]
                if (!q)
    d412:	b309      	cbz	r1, d458 <core_list_init+0x21c>
    d414:	1e6f      	subs	r7, r5, #1
            for (i = 0; i < insize; i++)
    d416:	4547      	cmp	r7, r8
    d418:	da11      	bge.n	d43e <core_list_init+0x202>
                q = q->next;
    d41a:	6809      	ldr	r1, [r1, #0]
                if (!q)
    d41c:	b321      	cbz	r1, d468 <core_list_init+0x22c>
            for (i = 0; i < insize; i++)
    d41e:	4545      	cmp	r5, r8
    d420:	da28      	bge.n	d474 <core_list_init+0x238>
                q = q->next;
    d422:	6809      	ldr	r1, [r1, #0]
                psize++;
    d424:	3204      	adds	r2, #4
                if (!q)
    d426:	2900      	cmp	r1, #0
    d428:	f105 0504 	add.w	r5, r5, #4
    d42c:	d1e8      	bne.n	d400 <core_list_init+0x1c4>
    d42e:	3d03      	subs	r5, #3
    d430:	2100      	movs	r1, #0
    d432:	46c3      	mov	fp, r8
    d434:	4637      	mov	r7, r6
            while (psize > 0 || (qsize > 0 && q))
    d436:	2d00      	cmp	r5, #0
    d438:	dc39      	bgt.n	d4ae <core_list_init+0x272>
    d43a:	e032      	b.n	d4a2 <core_list_init+0x266>
    d43c:	2100      	movs	r1, #0
    d43e:	463d      	mov	r5, r7
    d440:	46c3      	mov	fp, r8
    d442:	4637      	mov	r7, r6
    d444:	2d00      	cmp	r5, #0
    d446:	dc32      	bgt.n	d4ae <core_list_init+0x272>
    d448:	e02b      	b.n	d4a2 <core_list_init+0x266>
    d44a:	f042 0501 	orr.w	r5, r2, #1
    d44e:	46c3      	mov	fp, r8
    d450:	4637      	mov	r7, r6
    d452:	2d00      	cmp	r5, #0
    d454:	dc2b      	bgt.n	d4ae <core_list_init+0x272>
    d456:	e024      	b.n	d4a2 <core_list_init+0x266>
    d458:	f042 0502 	orr.w	r5, r2, #2
    d45c:	2100      	movs	r1, #0
    d45e:	46c3      	mov	fp, r8
    d460:	4637      	mov	r7, r6
    d462:	2d00      	cmp	r5, #0
    d464:	dc23      	bgt.n	d4ae <core_list_init+0x272>
    d466:	e01c      	b.n	d4a2 <core_list_init+0x266>
    d468:	2100      	movs	r1, #0
    d46a:	46c3      	mov	fp, r8
    d46c:	4637      	mov	r7, r6
    d46e:	2d00      	cmp	r5, #0
    d470:	dc1d      	bgt.n	d4ae <core_list_init+0x272>
    d472:	e016      	b.n	d4a2 <core_list_init+0x266>
    d474:	f042 0503 	orr.w	r5, r2, #3
    d478:	46c3      	mov	fp, r8
    d47a:	4637      	mov	r7, r6
    d47c:	2d00      	cmp	r5, #0
    d47e:	dc16      	bgt.n	d4ae <core_list_init+0x272>
    d480:	e00f      	b.n	d4a2 <core_list_init+0x266>
    d482:	bf00      	nop
                    p = p->next;
    d484:	f8da 4000 	ldr.w	r4, [sl]
    d488:	4656      	mov	r6, sl
                    psize--;
    d48a:	3d01      	subs	r5, #1
    d48c:	46a2      	mov	sl, r4
                if (tail)
    d48e:	b3e7      	cbz	r7, d50a <core_list_init+0x2ce>
                    tail->next = e;
    d490:	f8d9 2000 	ldr.w	r2, [r9]
    d494:	3201      	adds	r2, #1
    d496:	f8c9 2000 	str.w	r2, [r9]
    d49a:	603e      	str	r6, [r7, #0]
    d49c:	4637      	mov	r7, r6
            while (psize > 0 || (qsize > 0 && q))
    d49e:	2d00      	cmp	r5, #0
    d4a0:	dc05      	bgt.n	d4ae <core_list_init+0x272>
    d4a2:	2900      	cmp	r1, #0
    d4a4:	d0a4      	beq.n	d3f0 <core_list_init+0x1b4>
    d4a6:	f1bb 0f01 	cmp.w	fp, #1
    d4aa:	dba1      	blt.n	d3f0 <core_list_init+0x1b4>
                if (psize == 0)
    d4ac:	b3d5      	cbz	r5, d524 <core_list_init+0x2e8>
                else if (qsize == 0 || !q)
    d4ae:	2900      	cmp	r1, #0
    d4b0:	bf18      	it	ne
    d4b2:	f1bb 0f00 	cmpne.w	fp, #0
    d4b6:	d0e5      	beq.n	d484 <core_list_init+0x248>
                else if (cmp(p->info, q->info, res) <= 0)
    d4b8:	f8d9 3000 	ldr.w	r3, [r9]
    d4bc:	f8da 6004 	ldr.w	r6, [sl, #4]
    d4c0:	1c5a      	adds	r2, r3, #1
    d4c2:	684c      	ldr	r4, [r1, #4]
    d4c4:	f8c9 2000 	str.w	r2, [r9]
        a->data16 = (a->data16 & 0xff00) | (0x00ff & (a->data16 >> 8));
    d4c8:	f9b6 2000 	ldrsh.w	r2, [r6]
    d4cc:	3302      	adds	r3, #2
    d4ce:	0a12      	lsrs	r2, r2, #8
    d4d0:	f362 221f 	bfi	r2, r2, #8, #24
    d4d4:	f8c9 3000 	str.w	r3, [r9]
    d4d8:	8032      	strh	r2, [r6, #0]
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    d4da:	f8d9 2000 	ldr.w	r2, [r9]
    d4de:	f9b4 3000 	ldrsh.w	r3, [r4]
    d4e2:	3201      	adds	r2, #1
    d4e4:	f8c9 2000 	str.w	r2, [r9]
    return a->idx - b->idx;
    d4e8:	f9b6 2002 	ldrsh.w	r2, [r6, #2]
    d4ec:	f9b4 6002 	ldrsh.w	r6, [r4, #2]
                else if (cmp(p->info, q->info, res) <= 0)
    d4f0:	42b2      	cmp	r2, r6
        b->data16 = (b->data16 & 0xff00) | (0x00ff & (b->data16 >> 8));
    d4f2:	ea4f 2213 	mov.w	r2, r3, lsr #8
    d4f6:	f362 221f 	bfi	r2, r2, #8, #24
    d4fa:	8022      	strh	r2, [r4, #0]
                else if (cmp(p->info, q->info, res) <= 0)
    d4fc:	dd0a      	ble.n	d514 <core_list_init+0x2d8>
    d4fe:	460e      	mov	r6, r1
                    q = q->next;
    d500:	6809      	ldr	r1, [r1, #0]
                    qsize--;
    d502:	f1ab 0b01 	sub.w	fp, fp, #1
                if (tail)
    d506:	2f00      	cmp	r7, #0
    d508:	d1c2      	bne.n	d490 <core_list_init+0x254>
    d50a:	4630      	mov	r0, r6
    d50c:	4637      	mov	r7, r6
            while (psize > 0 || (qsize > 0 && q))
    d50e:	2d00      	cmp	r5, #0
    d510:	dccd      	bgt.n	d4ae <core_list_init+0x272>
    d512:	e7c6      	b.n	d4a2 <core_list_init+0x266>
    d514:	4656      	mov	r6, sl
                    p = p->next;
    d516:	f8da a000 	ldr.w	sl, [sl]
                    psize--;
    d51a:	3d01      	subs	r5, #1
                if (tail)
    d51c:	2f00      	cmp	r7, #0
    d51e:	d1b7      	bne.n	d490 <core_list_init+0x254>
    d520:	e7f3      	b.n	d50a <core_list_init+0x2ce>
    d522:	bf00      	nop
    d524:	460e      	mov	r6, r1
                    q = q->next;
    d526:	6809      	ldr	r1, [r1, #0]
                    qsize--;
    d528:	f1ab 0b01 	sub.w	fp, fp, #1
    d52c:	2500      	movs	r5, #0
                if (tail)
    d52e:	2f00      	cmp	r7, #0
    d530:	d1ae      	bne.n	d490 <core_list_init+0x254>
    d532:	e7ea      	b.n	d50a <core_list_init+0x2ce>

0000d534 <iterate>:
                                    (ee_u16)0xe5a4,
                                    (ee_u16)0x8e3a,
                                    (ee_u16)0x8d84 };
void *
iterate(void *pres)
{
    d534:	b5f0      	push	{r4, r5, r6, r7, lr}
    d536:	b081      	sub	sp, #4
    ee_u32        i;
    ee_u16        crc;
    core_results *res        = (core_results *)pres;
    ee_u32        iterations = res->iterations;
    d538:	69c5      	ldr	r5, [r0, #28]
    d53a:	4604      	mov	r4, r0
    d53c:	2000      	movs	r0, #0
    res->crc                 = 0;
    res->crclist             = 0;
    d53e:	63a0      	str	r0, [r4, #56]	; 0x38
    d540:	63e0      	str	r0, [r4, #60]	; 0x3c
    res->crcmatrix           = 0;
    res->crcstate            = 0;

    for (i = 0; i < iterations; i++)
    d542:	b34d      	cbz	r5, d598 <iterate+0x64>
    d544:	f240 0730 	movw	r7, #48	; 0x30
    d548:	2600      	movs	r6, #0
    d54a:	f2c1 0700 	movt	r7, #4096	; 0x1000
    d54e:	bf00      	nop
    {
        crc      = core_bench_list(res, 1);
    d550:	6838      	ldr	r0, [r7, #0]
    d552:	2101      	movs	r1, #1
    d554:	3001      	adds	r0, #1
    d556:	6038      	str	r0, [r7, #0]
    d558:	4620      	mov	r0, r4
    d55a:	f7ff fafb 	bl	cb54 <core_bench_list>
        res->crc = crcu16(crc, res->crc);
    d55e:	683a      	ldr	r2, [r7, #0]
    d560:	8f21      	ldrh	r1, [r4, #56]	; 0x38
    d562:	3201      	adds	r2, #1
    d564:	603a      	str	r2, [r7, #0]
    d566:	f001 ffec 	bl	f542 <crcu16>
        crc      = core_bench_list(res, -1);
    d56a:	6839      	ldr	r1, [r7, #0]
        res->crc = crcu16(crc, res->crc);
    d56c:	8720      	strh	r0, [r4, #56]	; 0x38
        crc      = core_bench_list(res, -1);
    d56e:	1c48      	adds	r0, r1, #1
    d570:	6038      	str	r0, [r7, #0]
    d572:	4620      	mov	r0, r4
    d574:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
    d578:	f7ff faec 	bl	cb54 <core_bench_list>
        res->crc = crcu16(crc, res->crc);
    d57c:	683a      	ldr	r2, [r7, #0]
    d57e:	8f21      	ldrh	r1, [r4, #56]	; 0x38
    d580:	3201      	adds	r2, #1
    d582:	603a      	str	r2, [r7, #0]
    d584:	f001 ffdd 	bl	f542 <crcu16>
        if (i == 0)
    d588:	2e00      	cmp	r6, #0
    for (i = 0; i < iterations; i++)
    d58a:	f106 0601 	add.w	r6, r6, #1
        res->crc = crcu16(crc, res->crc);
    d58e:	8720      	strh	r0, [r4, #56]	; 0x38
            res->crclist = res->crc;
    d590:	bf08      	it	eq
    d592:	8760      	strheq	r0, [r4, #58]	; 0x3a
    for (i = 0; i < iterations; i++)
    d594:	42b5      	cmp	r5, r6
    d596:	d1db      	bne.n	d550 <iterate+0x1c>
    }
    return NULL;
    d598:	2000      	movs	r0, #0
    d59a:	b001      	add	sp, #4
    d59c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    d59e:	d4d4      	bmi.n	d54a <iterate+0x16>

0000d5a0 <main>:
    int   argc = 0;
    char *argv[1];
#else
MAIN_RETURN_TYPE
main(int argc, char *argv[])
{
    d5a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d5a4:	f5ad 6d04 	sub.w	sp, sp, #2112	; 0x840
    d5a8:	b083      	sub	sp, #12
    core_results results[MULTITHREAD];
#if (MEM_METHOD == MEM_STACK)
    ee_u8 stack_memblock[TOTAL_DATA_SIZE * MULTITHREAD];
#endif
    /* first call any initializations needed */
    portable_init(&(results[0].port), &argc, argv);
    d5aa:	f240 0b30 	movw	fp, #48	; 0x30
    d5ae:	f2c1 0b00 	movt	fp, #4096	; 0x1000
    d5b2:	f8db 1000 	ldr.w	r1, [fp]
            retval = seed1_volatile;
    d5b6:	f240 0610 	movw	r6, #16
    d5ba:	1c48      	adds	r0, r1, #1
    d5bc:	f8cb 0000 	str.w	r0, [fp]
    d5c0:	2001      	movs	r0, #1
    }
    if (sizeof(ee_u32) != 4)
    {
        ee_printf("ERROR! Please define ee_u32 to a 32b unsigned type!\n");
    }
    p->portable_id = 1;
    d5c2:	f88d 084a 	strb.w	r0, [sp, #2122]	; 0x84a
    if (sizeof(struct list_head_s) > 128)
    {
        ee_printf("list_head structure too big for comparable data!\n");
        return MAIN_RETURN_VAL;
    }
    results[0].seed1      = get_seed(1);
    d5c6:	1c88      	adds	r0, r1, #2
    d5c8:	f8cb 0000 	str.w	r0, [fp]
    d5cc:	1cc8      	adds	r0, r1, #3
    d5ce:	f8cb 0000 	str.w	r0, [fp]
    d5d2:	f2c1 0600 	movt	r6, #4096	; 0x1000
    d5d6:	f8d6 c000 	ldr.w	ip, [r6]
    results[0].seed2      = get_seed(2);
    d5da:	1d08      	adds	r0, r1, #4
    results[0].seed1      = get_seed(1);
    d5dc:	f8ad c808 	strh.w	ip, [sp, #2056]	; 0x808
    results[0].seed2      = get_seed(2);
    d5e0:	f8cb 0000 	str.w	r0, [fp]
            retval = seed2_volatile;
    d5e4:	1d48      	adds	r0, r1, #5
    d5e6:	f8cb 0000 	str.w	r0, [fp]
    d5ea:	6870      	ldr	r0, [r6, #4]
    results[0].seed3      = get_seed(3);
    d5ec:	1d8a      	adds	r2, r1, #6
    results[0].seed2      = get_seed(2);
    d5ee:	f8ad 080a 	strh.w	r0, [sp, #2058]	; 0x80a
    results[0].seed3      = get_seed(3);
    d5f2:	f8cb 2000 	str.w	r2, [fp]
            retval = seed3_volatile;
    d5f6:	1dca      	adds	r2, r1, #7
    d5f8:	f240 0700 	movw	r7, #0
    d5fc:	f8cb 2000 	str.w	r2, [fp]
    d600:	f2c1 0700 	movt	r7, #4096	; 0x1000
    d604:	683a      	ldr	r2, [r7, #0]
    results[0].iterations = get_seed_32(4);
    d606:	f101 0308 	add.w	r3, r1, #8
    results[0].seed3      = get_seed(3);
    d60a:	f8ad 280c 	strh.w	r2, [sp, #2060]	; 0x80c
    results[0].iterations = get_seed_32(4);
    d60e:	f8cb 3000 	str.w	r3, [fp]
            retval = seed4_volatile;
    d612:	f101 0309 	add.w	r3, r1, #9
    d616:	f8cb 3000 	str.w	r3, [fp]
    d61a:	687b      	ldr	r3, [r7, #4]
    d61c:	f8cd 3824 	str.w	r3, [sp, #2084]	; 0x824
#if CORE_DEBUG
    results[0].iterations = 1;
#endif
    results[0].execs = get_seed_32(5);
    d620:	f101 030a 	add.w	r3, r1, #10
    d624:	f8cb 3000 	str.w	r3, [fp]
            retval = seed5_volatile;
    d628:	f101 030b 	add.w	r3, r1, #11
    d62c:	f8cb 3000 	str.w	r3, [fp]
    d630:	f8d6 e008 	ldr.w	lr, [r6, #8]
    if (results[0].execs == 0)
    d634:	f1be 0f00 	cmp.w	lr, #0
    results[0].execs = get_seed_32(5);
    d638:	f8cd e828 	str.w	lr, [sp, #2088]	; 0x828
    if (results[0].execs == 0)
    d63c:	d00f      	beq.n	d65e <main+0xbe>
    { /* if not supplied, execute all algorithms */
        results[0].execs = ALL_ALGORITHMS_MASK;
    }
    /* put in some default values based on one seed only for easy testing */
    if ((results[0].seed1 == 0) && (results[0].seed2 == 0)
    d63e:	ea40 010c 	orr.w	r1, r0, ip
    d642:	4311      	orrs	r1, r2
    d644:	0409      	lsls	r1, r1, #16
    d646:	d017      	beq.n	d678 <main+0xd8>
    results[0].seed1      = get_seed(1);
    d648:	fa1f f18c 	uxth.w	r1, ip
    { /* perfromance run */
        results[0].seed1 = 0;
        results[0].seed2 = 0;
        results[0].seed3 = 0x66;
    }
    if ((results[0].seed1 == 1) && (results[0].seed2 == 0)
    d64c:	2901      	cmp	r1, #1
    d64e:	bf04      	itt	eq
    d650:	4310      	orreq	r0, r2
    d652:	ea5f 4000 	movseq.w	r0, r0, lsl #16
    d656:	d11b      	bne.n	d690 <main+0xf0>
    d658:	f243 4c15 	movw	ip, #13333	; 0x3415
    d65c:	e00e      	b.n	d67c <main+0xdc>
        results[0].execs = ALL_ALGORITHMS_MASK;
    d65e:	f101 030c 	add.w	r3, r1, #12
    d662:	f04f 0e07 	mov.w	lr, #7
    d666:	f8cb 3000 	str.w	r3, [fp]
    d66a:	f8cd e828 	str.w	lr, [sp, #2088]	; 0x828
    if ((results[0].seed1 == 0) && (results[0].seed2 == 0)
    d66e:	ea40 010c 	orr.w	r1, r0, ip
    d672:	4311      	orrs	r1, r2
    d674:	0409      	lsls	r1, r1, #16
    d676:	d1e7      	bne.n	d648 <main+0xa8>
    d678:	f04f 0c00 	mov.w	ip, #0
    d67c:	3301      	adds	r3, #1
    d67e:	2066      	movs	r0, #102	; 0x66
    d680:	f8cb 3000 	str.w	r3, [fp]
    d684:	f8ad c808 	strh.w	ip, [sp, #2056]	; 0x808
    d688:	f8ad c80a 	strh.w	ip, [sp, #2058]	; 0x80a
    d68c:	f8ad 080c 	strh.w	r0, [sp, #2060]	; 0x80c
    d690:	2200      	movs	r2, #0
#elif (MEM_METHOD == MEM_STACK)
for (i = 0; i < MULTITHREAD; i++)
{
    results[i].memblock[0] = stack_memblock + i * TOTAL_DATA_SIZE;
    results[i].size        = TOTAL_DATA_SIZE;
    results[i].seed1       = results[0].seed1;
    d692:	1c58      	adds	r0, r3, #1
    d694:	f8ad 2848 	strh.w	r2, [sp, #2120]	; 0x848
    d698:	f8cb 0000 	str.w	r0, [fp]
    results[i].seed2       = results[0].seed2;
    d69c:	1c98      	adds	r0, r3, #2
    d69e:	f8cb 0000 	str.w	r0, [fp]
    results[i].seed3       = results[0].seed3;
    d6a2:	1cd8      	adds	r0, r3, #3
    d6a4:	f8cb 0000 	str.w	r0, [fp]
    results[i].err         = 0;
    results[i].execs       = results[0].execs;
    d6a8:	1d18      	adds	r0, r3, #4
#endif
    /* Data init */
    /* Find out how space much we have based on number of algorithms */
    for (i = 0; i < NUM_ALGORITHMS; i++)
    {
        if ((1 << (ee_u32)i) & results[0].execs)
    d6aa:	f01e 0601 	ands.w	r6, lr, #1
    d6ae:	f00e 0702 	and.w	r7, lr, #2
    results[i].execs       = results[0].execs;
    d6b2:	f8cb 0000 	str.w	r0, [fp]
        if ((1 << (ee_u32)i) & results[0].execs)
    d6b6:	eb06 0057 	add.w	r0, r6, r7, lsr #1
    d6ba:	f00e 0504 	and.w	r5, lr, #4
    d6be:	eb00 0095 	add.w	r0, r0, r5, lsr #2
    d6c2:	f44f 64fa 	mov.w	r4, #2000	; 0x7d0
            num_algorithms++;
    }
    for (i = 0; i < MULTITHREAD; i++)
        results[i].size = results[i].size / num_algorithms;
    d6c6:	fbb4 f0f0 	udiv	r0, r4, r0
    d6ca:	a90e      	add	r1, sp, #56	; 0x38
    d6cc:	f103 0405 	add.w	r4, r3, #5
    results[i].memblock[0] = stack_memblock + i * TOTAL_DATA_SIZE;
    d6d0:	f8cd 1810 	str.w	r1, [sp, #2064]	; 0x810
        results[i].size = results[i].size / num_algorithms;
    d6d4:	f8cb 4000 	str.w	r4, [fp]
    d6d8:	f8cd 0820 	str.w	r0, [sp, #2080]	; 0x820
    /* Assign pointers */
    for (i = 0; i < NUM_ALGORITHMS; i++)
    {
        ee_u32 ctx;
        if ((1 << (ee_u32)i) & results[0].execs)
    d6dc:	d13d      	bne.n	d75a <main+0x1ba>
    d6de:	2f00      	cmp	r7, #0
    d6e0:	d143      	bne.n	d76a <main+0x1ca>
    d6e2:	2d00      	cmp	r5, #0
    d6e4:	d14b      	bne.n	d77e <main+0x1de>
        }
    }
    /* call inits */
    for (i = 0; i < MULTITHREAD; i++)
    {
        if (results[i].execs & ID_LIST)
    d6e6:	2e00      	cmp	r6, #0
    d6e8:	d152      	bne.n	d790 <main+0x1f0>
        {
            results[i].list = core_list_init(
                results[0].size, results[i].memblock[1], results[i].seed1);
        }
        if (results[i].execs & ID_MATRIX)
    d6ea:	2f00      	cmp	r7, #0
    d6ec:	d05f      	beq.n	d7ae <main+0x20e>
        {
            core_init_matrix(results[0].size,
                             results[i].memblock[2],
                             (ee_s32)results[i].seed1
    d6ee:	f9bd 0808 	ldrsh.w	r0, [sp, #2056]	; 0x808
                                 | (((ee_s32)results[i].seed2) << 16),
    d6f2:	f8bd 180a 	ldrh.w	r1, [sp, #2058]	; 0x80a
            core_init_matrix(results[0].size,
    d6f6:	f8dd 2820 	ldr.w	r2, [sp, #2080]	; 0x820
                                 | (((ee_s32)results[i].seed2) << 16),
    d6fa:	ea40 4401 	orr.w	r4, r0, r1, lsl #16
            core_init_matrix(results[0].size,
    d6fe:	f8db 0000 	ldr.w	r0, [fp]
                             results[i].memblock[2],
    d702:	f8dd 1818 	ldr.w	r1, [sp, #2072]	; 0x818
    d706:	2c00      	cmp	r4, #0
            core_init_matrix(results[0].size,
    d708:	f100 0001 	add.w	r0, r0, #1
    d70c:	bf08      	it	eq
    d70e:	2401      	moveq	r4, #1
    ee_s32  order = 1;
    MATDAT  val;
    ee_u32  i = 0, j = 0;
    if (seed == 0)
        seed = 1;
    while (j < blksize)
    d710:	2a00      	cmp	r2, #0
    d712:	f8cb 0000 	str.w	r0, [fp]
    d716:	d04f      	beq.n	d7b8 <main+0x218>
    d718:	2320      	movs	r3, #32
    d71a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    d71e:	bf00      	nop
    {
        i++;
        j = i * i * 2 * 4;
    d720:	f100 0c02 	add.w	ip, r0, #2
    d724:	f1a3 0718 	sub.w	r7, r3, #24
    d728:	fb07 f70c 	mul.w	r7, r7, ip
    while (j < blksize)
    d72c:	4297      	cmp	r7, r2
    d72e:	d24e      	bcs.n	d7ce <main+0x22e>
        j = i * i * 2 * 4;
    d730:	1cc7      	adds	r7, r0, #3
    d732:	f1a3 0610 	sub.w	r6, r3, #16
    d736:	437e      	muls	r6, r7
    while (j < blksize)
    d738:	4296      	cmp	r6, r2
    d73a:	d24c      	bcs.n	d7d6 <main+0x236>
        j = i * i * 2 * 4;
    d73c:	f100 0c04 	add.w	ip, r0, #4
    d740:	f1a3 0608 	sub.w	r6, r3, #8
    d744:	fb06 f60c 	mul.w	r6, r6, ip
    while (j < blksize)
    d748:	4296      	cmp	r6, r2
    d74a:	d243      	bcs.n	d7d4 <main+0x234>
        j = i * i * 2 * 4;
    d74c:	3005      	adds	r0, #5
    d74e:	4358      	muls	r0, r3
    while (j < blksize)
    d750:	3320      	adds	r3, #32
    d752:	4290      	cmp	r0, r2
    d754:	4660      	mov	r0, ip
    d756:	d3e3      	bcc.n	d720 <main+0x180>
    d758:	e03d      	b.n	d7d6 <main+0x236>
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d75a:	1d9c      	adds	r4, r3, #6
    d75c:	2201      	movs	r2, #1
    d75e:	f8cb 4000 	str.w	r4, [fp]
    d762:	f8cd 1814 	str.w	r1, [sp, #2068]	; 0x814
        if ((1 << (ee_u32)i) & results[0].execs)
    d766:	2f00      	cmp	r7, #0
    d768:	d0bb      	beq.n	d6e2 <main+0x142>
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d76a:	fb10 1302 	smlabb	r3, r0, r2, r1
    d76e:	3401      	adds	r4, #1
            j++;
    d770:	3201      	adds	r2, #1
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d772:	f8cb 4000 	str.w	r4, [fp]
    d776:	f8cd 3818 	str.w	r3, [sp, #2072]	; 0x818
        if ((1 << (ee_u32)i) & results[0].execs)
    d77a:	2d00      	cmp	r5, #0
    d77c:	d0b3      	beq.n	d6e6 <main+0x146>
                    = (char *)(results[ctx].memblock[0]) + results[0].size * j;
    d77e:	fb10 1202 	smlabb	r2, r0, r2, r1
    d782:	3401      	adds	r4, #1
    d784:	f8cb 4000 	str.w	r4, [fp]
    d788:	f8cd 281c 	str.w	r2, [sp, #2076]	; 0x81c
        if (results[i].execs & ID_LIST)
    d78c:	2e00      	cmp	r6, #0
    d78e:	d0ac      	beq.n	d6ea <main+0x14a>
            results[i].list = core_list_init(
    d790:	1c62      	adds	r2, r4, #1
    d792:	f8cb 2000 	str.w	r2, [fp]
    d796:	fa0f f28c 	sxth.w	r2, ip
    d79a:	f7ff fd4f 	bl	d23c <core_list_init>
        if (results[i].execs & ID_MATRIX)
    d79e:	f8dd e828 	ldr.w	lr, [sp, #2088]	; 0x828
            results[i].list = core_list_init(
    d7a2:	f8cd 082c 	str.w	r0, [sp, #2092]	; 0x82c
        if (results[i].execs & ID_MATRIX)
    d7a6:	f00e 0702 	and.w	r7, lr, #2
    d7aa:	2f00      	cmp	r7, #0
    d7ac:	d19f      	bne.n	d6ee <main+0x14e>
                             &(results[i].mat));
        }
        if (results[i].execs & ID_STATE)
    d7ae:	ea5f 704e 	movs.w	r0, lr, lsl #29
    d7b2:	f100 8104 	bmi.w	d9be <main+0x41e>
    d7b6:	e171      	b.n	da9c <main+0x4fc>
    }
    N = i - 1;
    A = (MATDAT *)align_mem(memblk);
    d7b8:	1cc8      	adds	r0, r1, #3
    d7ba:	f020 0503 	bic.w	r5, r0, #3
    B = A + N * N;
    d7be:	1caa      	adds	r2, r5, #2
    d7c0:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
    d7c4:	2001      	movs	r0, #1
    d7c6:	f8cd e010 	str.w	lr, [sp, #16]

    for (i = 0; i < N; i++)
    d7ca:	9003      	str	r0, [sp, #12]
    d7cc:	e012      	b.n	d7f4 <main+0x254>
    A = (MATDAT *)align_mem(memblk);
    d7ce:	f100 0c01 	add.w	ip, r0, #1
    d7d2:	e000      	b.n	d7d6 <main+0x236>
    d7d4:	46bc      	mov	ip, r7
    d7d6:	1cc8      	adds	r0, r1, #3
    d7d8:	f020 0503 	bic.w	r5, r0, #3
    B = A + N * N;
    d7dc:	fb0c f00c 	mul.w	r0, ip, ip
    for (i = 0; i < N; i++)
    d7e0:	f1bc 0f00 	cmp.w	ip, #0
    B = A + N * N;
    d7e4:	eb05 0140 	add.w	r1, r5, r0, lsl #1
    for (i = 0; i < N; i++)
    d7e8:	9109      	str	r1, [sp, #36]	; 0x24
    d7ea:	f000 80d4 	beq.w	d996 <main+0x3f6>
    d7ee:	9a09      	ldr	r2, [sp, #36]	; 0x24
    d7f0:	e9cd 0e03 	strd	r0, lr, [sp, #12]
    d7f4:	f1ac 0001 	sub.w	r0, ip, #1
    d7f8:	f00c 0303 	and.w	r3, ip, #3
    d7fc:	900d      	str	r0, [sp, #52]	; 0x34
    d7fe:	ebac 0603 	sub.w	r6, ip, r3
    d802:	ea4f 004c 	mov.w	r0, ip, lsl #1
    d806:	f04f 0b01 	mov.w	fp, #1
    d80a:	2100      	movs	r1, #0
    d80c:	f64f 77ff 	movw	r7, #65535	; 0xffff
    d810:	4692      	mov	sl, r2
    d812:	46a9      	mov	r9, r5
    d814:	900c      	str	r0, [sp, #48]	; 0x30
    d816:	4610      	mov	r0, r2
    d818:	9209      	str	r2, [sp, #36]	; 0x24
    d81a:	930b      	str	r3, [sp, #44]	; 0x2c
    d81c:	e9cd 5c07 	strd	r5, ip, [sp, #28]
    {
        for (j = 0; j < N; j++)
    d820:	980d      	ldr	r0, [sp, #52]	; 0x34
    d822:	2803      	cmp	r0, #3
    d824:	d30c      	bcc.n	d840 <main+0x2a0>
    d826:	e011      	b.n	d84c <main+0x2ac>
            val          = matrix_clip(val, 0);
            B[i * N + j] = val;
            val          = (val + order);
            val          = matrix_clip(val, 1);
            A[i * N + j] = val;
            order++;
    d828:	4693      	mov	fp, r2
    d82a:	4671      	mov	r1, lr
    d82c:	980c      	ldr	r0, [sp, #48]	; 0x30
    for (i = 0; i < N; i++)
    d82e:	3101      	adds	r1, #1
    d830:	4481      	add	r9, r0
    d832:	4561      	cmp	r1, ip
    d834:	4482      	add	sl, r0
    d836:	f000 80a7 	beq.w	d988 <main+0x3e8>
        for (j = 0; j < N; j++)
    d83a:	980d      	ldr	r0, [sp, #52]	; 0x34
    d83c:	2803      	cmp	r0, #3
    d83e:	d205      	bcs.n	d84c <main+0x2ac>
    d840:	f04f 0800 	mov.w	r8, #0
    d844:	2b00      	cmp	r3, #0
    d846:	d15d      	bne.n	d904 <main+0x364>
    d848:	e7f0      	b.n	d82c <main+0x28c>
    d84a:	bf00      	nop
    d84c:	ea4f 0e4b 	mov.w	lr, fp, lsl #1
    d850:	f04f 0c00 	mov.w	ip, #0
    d854:	f04f 0800 	mov.w	r8, #0
    d858:	910a      	str	r1, [sp, #40]	; 0x28
    d85a:	bf00      	nop
            seed         = ((order * seed) % 65536);
    d85c:	eb0b 0508 	add.w	r5, fp, r8
    d860:	fb05 f004 	mul.w	r0, r5, r4
    d864:	17c2      	asrs	r2, r0, #31
    d866:	eb00 4212 	add.w	r2, r0, r2, lsr #16
    d86a:	43ba      	bics	r2, r7
    d86c:	1a80      	subs	r0, r0, r2
            val          = matrix_clip(val, 0);
    d86e:	182a      	adds	r2, r5, r0
            B[i * N + j] = val;
    d870:	f82a 200c 	strh.w	r2, [sl, ip]
            val          = matrix_clip(val, 1);
    d874:	eb0e 020c 	add.w	r2, lr, ip
    d878:	1814      	adds	r4, r2, r0
    d87a:	b2e4      	uxtb	r4, r4
            A[i * N + j] = val;
    d87c:	f829 400c 	strh.w	r4, [r9, ip]
        for (j = 0; j < N; j++)
    d880:	1c6c      	adds	r4, r5, #1
            seed         = ((order * seed) % 65536);
    d882:	4360      	muls	r0, r4
    d884:	17c4      	asrs	r4, r0, #31
    d886:	eb00 4414 	add.w	r4, r0, r4, lsr #16
    d88a:	f36f 040f 	bfc	r4, #0, #16
    d88e:	1b00      	subs	r0, r0, r4
            val          = matrix_clip(val, 0);
    d890:	182c      	adds	r4, r5, r0
    d892:	3401      	adds	r4, #1
            B[i * N + j] = val;
    d894:	eb0a 0348 	add.w	r3, sl, r8, lsl #1
    d898:	805c      	strh	r4, [r3, #2]
            val          = matrix_clip(val, 1);
    d89a:	1814      	adds	r4, r2, r0
    d89c:	3402      	adds	r4, #2
    d89e:	b2e4      	uxtb	r4, r4
            A[i * N + j] = val;
    d8a0:	eb09 0148 	add.w	r1, r9, r8, lsl #1
    d8a4:	804c      	strh	r4, [r1, #2]
        for (j = 0; j < N; j++)
    d8a6:	1cac      	adds	r4, r5, #2
            seed         = ((order * seed) % 65536);
    d8a8:	4360      	muls	r0, r4
    d8aa:	17c4      	asrs	r4, r0, #31
    d8ac:	eb00 4414 	add.w	r4, r0, r4, lsr #16
    d8b0:	f36f 040f 	bfc	r4, #0, #16
    d8b4:	1b00      	subs	r0, r0, r4
            val          = matrix_clip(val, 0);
    d8b6:	182c      	adds	r4, r5, r0
    d8b8:	3402      	adds	r4, #2
            B[i * N + j] = val;
    d8ba:	809c      	strh	r4, [r3, #4]
            val          = matrix_clip(val, 1);
    d8bc:	1813      	adds	r3, r2, r0
    d8be:	3304      	adds	r3, #4
    d8c0:	b2db      	uxtb	r3, r3
            A[i * N + j] = val;
    d8c2:	808b      	strh	r3, [r1, #4]
        for (j = 0; j < N; j++)
    d8c4:	1ce9      	adds	r1, r5, #3
            seed         = ((order * seed) % 65536);
    d8c6:	4348      	muls	r0, r1
    d8c8:	17c1      	asrs	r1, r0, #31
    d8ca:	eb00 4111 	add.w	r1, r0, r1, lsr #16
    d8ce:	f36f 010f 	bfc	r1, #0, #16
    d8d2:	1a44      	subs	r4, r0, r1
            val          = matrix_clip(val, 0);
    d8d4:	1929      	adds	r1, r5, r4
            B[i * N + j] = val;
    d8d6:	eb0a 000c 	add.w	r0, sl, ip
            val          = matrix_clip(val, 0);
    d8da:	3103      	adds	r1, #3
            B[i * N + j] = val;
    d8dc:	80c1      	strh	r1, [r0, #6]
            val          = matrix_clip(val, 1);
    d8de:	1911      	adds	r1, r2, r4
    d8e0:	3106      	adds	r1, #6
        for (j = 0; j < N; j++)
    d8e2:	f108 0804 	add.w	r8, r8, #4
            A[i * N + j] = val;
    d8e6:	eb09 000c 	add.w	r0, r9, ip
            val          = matrix_clip(val, 1);
    d8ea:	b2c9      	uxtb	r1, r1
        for (j = 0; j < N; j++)
    d8ec:	4546      	cmp	r6, r8
    d8ee:	f10c 0c08 	add.w	ip, ip, #8
            A[i * N + j] = val;
    d8f2:	80c1      	strh	r1, [r0, #6]
    d8f4:	d1b2      	bne.n	d85c <main+0x2bc>
    d8f6:	e9dd 5c07 	ldrd	r5, ip, [sp, #28]
    d8fa:	e9dd 130a 	ldrd	r1, r3, [sp, #40]	; 0x28
        for (j = 0; j < N; j++)
    d8fe:	44c3      	add	fp, r8
    d900:	2b00      	cmp	r3, #0
    d902:	d093      	beq.n	d82c <main+0x28c>
    d904:	468e      	mov	lr, r1
    d906:	fb01 f00c 	mul.w	r0, r1, ip
            seed         = ((order * seed) % 65536);
    d90a:	fb0b f104 	mul.w	r1, fp, r4
    d90e:	17ca      	asrs	r2, r1, #31
    d910:	eb01 4212 	add.w	r2, r1, r2, lsr #16
    d914:	43ba      	bics	r2, r7
    d916:	1a8c      	subs	r4, r1, r2
            B[i * N + j] = val;
    d918:	4440      	add	r0, r8
    d91a:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
            val          = (seed + order);
    d91e:	eb04 010b 	add.w	r1, r4, fp
            B[i * N + j] = val;
    d922:	f828 1010 	strh.w	r1, [r8, r0, lsl #1]
            val          = (val + order);
    d926:	4459      	add	r1, fp
            val          = matrix_clip(val, 1);
    d928:	b2c9      	uxtb	r1, r1
        for (j = 0; j < N; j++)
    d92a:	2b01      	cmp	r3, #1
            order++;
    d92c:	f10b 0201 	add.w	r2, fp, #1
            A[i * N + j] = val;
    d930:	f825 1010 	strh.w	r1, [r5, r0, lsl #1]
        for (j = 0; j < N; j++)
    d934:	f43f af78 	beq.w	d828 <main+0x288>
            seed         = ((order * seed) % 65536);
    d938:	fb02 f104 	mul.w	r1, r2, r4
    d93c:	17cb      	asrs	r3, r1, #31
    d93e:	eb01 4313 	add.w	r3, r1, r3, lsr #16
    d942:	43bb      	bics	r3, r7
    d944:	1acc      	subs	r4, r1, r3
            val          = (seed + order);
    d946:	18a1      	adds	r1, r4, r2
            B[i * N + j] = val;
    d948:	1c43      	adds	r3, r0, #1
    d94a:	f828 1013 	strh.w	r1, [r8, r3, lsl #1]
            val          = (val + order);
    d94e:	4411      	add	r1, r2
            val          = matrix_clip(val, 1);
    d950:	b2c9      	uxtb	r1, r1
            A[i * N + j] = val;
    d952:	f825 1013 	strh.w	r1, [r5, r3, lsl #1]
    d956:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
            order++;
    d958:	f10b 0202 	add.w	r2, fp, #2
        for (j = 0; j < N; j++)
    d95c:	2b02      	cmp	r3, #2
    d95e:	f43f af63 	beq.w	d828 <main+0x288>
            seed         = ((order * seed) % 65536);
    d962:	fb02 f104 	mul.w	r1, r2, r4
    d966:	17cb      	asrs	r3, r1, #31
    d968:	eb01 4313 	add.w	r3, r1, r3, lsr #16
    d96c:	43bb      	bics	r3, r7
    d96e:	1acc      	subs	r4, r1, r3
            val          = (seed + order);
    d970:	18a1      	adds	r1, r4, r2
            B[i * N + j] = val;
    d972:	3002      	adds	r0, #2
    d974:	f828 1010 	strh.w	r1, [r8, r0, lsl #1]
            val          = (val + order);
    d978:	4411      	add	r1, r2
    d97a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
            val          = matrix_clip(val, 1);
    d97c:	b2c9      	uxtb	r1, r1
            A[i * N + j] = val;
    d97e:	f825 1010 	strh.w	r1, [r5, r0, lsl #1]
            order++;
    d982:	f10b 0b03 	add.w	fp, fp, #3
    d986:	e750      	b.n	d82a <main+0x28a>
    d988:	f240 0b30 	movw	fp, #48	; 0x30
    d98c:	e9dd 0e03 	ldrd	r0, lr, [sp, #12]
    d990:	f2c1 0b00 	movt	fp, #4096	; 0x1000
    d994:	e002      	b.n	d99c <main+0x3fc>
    d996:	2000      	movs	r0, #0
    d998:	f04f 0c00 	mov.w	ip, #0
    d99c:	9909      	ldr	r1, [sp, #36]	; 0x24
        }
    }

    p->A = A;
    d99e:	f8cd 5834 	str.w	r5, [sp, #2100]	; 0x834
    p->B = B;
    p->C = (MATRES *)align_mem(B + N * N);
    d9a2:	eb01 0040 	add.w	r0, r1, r0, lsl #1
    d9a6:	3003      	adds	r0, #3
    d9a8:	f020 0003 	bic.w	r0, r0, #3
    p->B = B;
    d9ac:	f8cd 1838 	str.w	r1, [sp, #2104]	; 0x838
    p->C = (MATRES *)align_mem(B + N * N);
    d9b0:	f8cd 083c 	str.w	r0, [sp, #2108]	; 0x83c
    p->N = N;
    d9b4:	f8cd c830 	str.w	ip, [sp, #2096]	; 0x830
    d9b8:	ea5f 704e 	movs.w	r0, lr, lsl #29
    d9bc:	d56e      	bpl.n	da9c <main+0x4fc>
        {
            core_init_state(
                results[0].size, results[i].seed1, results[i].memblock[3]);
    d9be:	f8dd a820 	ldr.w	sl, [sp, #2080]	; 0x820
            core_init_state(
    d9c2:	f8db 1000 	ldr.w	r1, [fp]
                results[0].size, results[i].seed1, results[i].memblock[3]);
    d9c6:	f8dd 081c 	ldr.w	r0, [sp, #2076]	; 0x81c
    d9ca:	f8bd 2808 	ldrh.w	r2, [sp, #2056]	; 0x808
    ee_u8 *buf = 0;
#if CORE_DEBUG
    ee_u8 *start = p;
    ee_printf("State: %d,%d\n", size, seed);
#endif
    size--;
    d9ce:	f1aa 0301 	sub.w	r3, sl, #1
            core_init_state(
    d9d2:	3101      	adds	r1, #1
    next = 0;
    while ((total + next + 1) < size)
    d9d4:	2b02      	cmp	r3, #2
    d9d6:	f8cb 1000 	str.w	r1, [fp]
    d9da:	d351      	bcc.n	da80 <main+0x4e0>
    d9dc:	f641 2cfc 	movw	ip, #6908	; 0x1afc
    d9e0:	f641 2eec 	movw	lr, #6892	; 0x1aec
    d9e4:	f641 381c 	movw	r8, #6940	; 0x1b1c
    d9e8:	f641 390c 	movw	r9, #6924	; 0x1b0c
    d9ec:	2500      	movs	r5, #0
    d9ee:	f2c0 0c01 	movt	ip, #1
    d9f2:	f2c0 0e01 	movt	lr, #1
    d9f6:	f2c0 0801 	movt	r8, #1
    d9fa:	f2c0 0901 	movt	r9, #1
    d9fe:	f04f 0b2c 	mov.w	fp, #44	; 0x2c
    da02:	2700      	movs	r7, #0
    da04:	2400      	movs	r4, #0
    da06:	b98c      	cbnz	r4, da2c <main+0x48c>
    da08:	e028      	b.n	da5c <main+0x4bc>
    da0a:	bf00      	nop
    da0c:	2c07      	cmp	r4, #7
    da0e:	f3c1 01c1 	ubfx	r1, r1, #3, #2
            case 6: /* scientific */
                buf  = scipat[(seed >> 3) & 0x3];
                next = 8;
                break;
            case 7: /* invalid */
                buf  = errpat[(seed >> 3) & 0x3];
    da12:	bf0c      	ite	eq
    da14:	eb08 0581 	addeq.w	r5, r8, r1, lsl #2
                buf  = scipat[(seed >> 3) & 0x3];
    da18:	eb09 0581 	addne.w	r5, r9, r1, lsl #2
    da1c:	2408      	movs	r4, #8
    while ((total + next + 1) < size)
    da1e:	f044 0101 	orr.w	r1, r4, #1
    da22:	682d      	ldr	r5, [r5, #0]
    da24:	4439      	add	r1, r7
    da26:	4299      	cmp	r1, r3
    da28:	d22c      	bcs.n	da84 <main+0x4e4>
        if (next > 0)
    da2a:	b1bc      	cbz	r4, da5c <main+0x4bc>
                *(p + total + i) = buf[i];
    da2c:	7829      	ldrb	r1, [r5, #0]
            for (i = 0; i < next; i++)
    da2e:	2c04      	cmp	r4, #4
                *(p + total + i) = buf[i];
    da30:	55c1      	strb	r1, [r0, r7]
    da32:	786e      	ldrb	r6, [r5, #1]
    da34:	eb00 0107 	add.w	r1, r0, r7
    da38:	704e      	strb	r6, [r1, #1]
    da3a:	78ae      	ldrb	r6, [r5, #2]
    da3c:	708e      	strb	r6, [r1, #2]
    da3e:	78ee      	ldrb	r6, [r5, #3]
    da40:	70ce      	strb	r6, [r1, #3]
            for (i = 0; i < next; i++)
    da42:	d007      	beq.n	da54 <main+0x4b4>
                *(p + total + i) = buf[i];
    da44:	792e      	ldrb	r6, [r5, #4]
    da46:	710e      	strb	r6, [r1, #4]
    da48:	796e      	ldrb	r6, [r5, #5]
    da4a:	714e      	strb	r6, [r1, #5]
    da4c:	79ae      	ldrb	r6, [r5, #6]
    da4e:	718e      	strb	r6, [r1, #6]
    da50:	79ed      	ldrb	r5, [r5, #7]
    da52:	71cd      	strb	r5, [r1, #7]
            *(p + total + i) = ',';
    da54:	f801 b004 	strb.w	fp, [r1, r4]
            total += next + 1;
    da58:	1939      	adds	r1, r7, r4
    da5a:	1c4f      	adds	r7, r1, #1
        seed++;
    da5c:	3201      	adds	r2, #1
        switch (seed & 0x7)
    da5e:	b211      	sxth	r1, r2
    da60:	f001 0407 	and.w	r4, r1, #7
    da64:	2c05      	cmp	r4, #5
    da66:	d2d1      	bcs.n	da0c <main+0x46c>
    da68:	2c02      	cmp	r4, #2
    da6a:	f3c1 01c1 	ubfx	r1, r1, #3, #2
    da6e:	d903      	bls.n	da78 <main+0x4d8>
                buf  = floatpat[(seed >> 3) & 0x3];
    da70:	eb0c 0581 	add.w	r5, ip, r1, lsl #2
    da74:	e7d2      	b.n	da1c <main+0x47c>
    da76:	bf00      	nop
                buf  = intpat[(seed >> 3) & 0x3];
    da78:	eb0e 0581 	add.w	r5, lr, r1, lsl #2
    da7c:	2404      	movs	r4, #4
    da7e:	e7ce      	b.n	da1e <main+0x47e>
    da80:	2700      	movs	r7, #0
    da82:	e005      	b.n	da90 <main+0x4f0>
    da84:	f240 0b30 	movw	fp, #48	; 0x30
            default: /* Never happen, just to make some compilers happy */
                break;
        }
    }
    size++;
    while (total < size)
    da88:	45ba      	cmp	sl, r7
    da8a:	f2c1 0b00 	movt	fp, #4096	; 0x1000
    da8e:	d905      	bls.n	da9c <main+0x4fc>
    da90:	4438      	add	r0, r7
    da92:	ebaa 0207 	sub.w	r2, sl, r7
    { /* fill the rest with 0 */
        *(p + total) = 0;
    da96:	2100      	movs	r1, #0
    da98:	f003 fdd5 	bl	11646 <memset>
        }
    }

    /* automatically determine number of iterations if not set */
    if (results[0].iterations == 0)
    da9c:	f8dd 1824 	ldr.w	r1, [sp, #2084]	; 0x824
    daa0:	f8db 0000 	ldr.w	r0, [fp]
    daa4:	2900      	cmp	r1, #0
    daa6:	d178      	bne.n	db9a <main+0x5fa>
    daa8:	f241 29d0 	movw	r9, #4816	; 0x12d0
    daac:	f240 0a00 	movw	sl, #0
    {
        secs_ret secs_passed = 0;
        ee_u32   divisor;
        results[0].iterations = 1;
    dab0:	1c45      	adds	r5, r0, #1
    dab2:	2001      	movs	r0, #1
    dab4:	f60d 0808 	addw	r8, sp, #2056	; 0x808
    dab8:	f2c4 1963 	movt	r9, #16739	; 0x4163
    dabc:	f6c3 7af0 	movt	sl, #16368	; 0x3ff0
    dac0:	f8cb 5000 	str.w	r5, [fp]
    dac4:	f8cd 0824 	str.w	r0, [sp, #2084]	; 0x824
        while (secs_passed < (secs_ret)1)
        {
            results[0].iterations *= 10;
    dac8:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    dacc:	0040      	lsls	r0, r0, #1
    dace:	1c69      	adds	r1, r5, #1
    dad0:	f8cb 1000 	str.w	r1, [fp]
    dad4:	f8cd 0824 	str.w	r0, [sp, #2084]	; 0x824
            start_time();
    dad8:	1ca8      	adds	r0, r5, #2
    dada:	f8cb 0000 	str.w	r0, [fp]
    GETMYTIME(&start_time_val);
    dade:	1ce8      	adds	r0, r5, #3
    dae0:	f8cb 0000 	str.w	r0, [fp]
    dae4:	f001 fdb7 	bl	f656 <clock>
    dae8:	f8db 2000 	ldr.w	r2, [fp]
    daec:	1c53      	adds	r3, r2, #1
    daee:	f8cb 3000 	str.w	r3, [fp]
    daf2:	f240 0310 	movw	r3, #16
    daf6:	f2c1 0300 	movt	r3, #4096	; 0x1000
    dafa:	6159      	str	r1, [r3, #20]
    dafc:	6118      	str	r0, [r3, #16]
            iterate(&results[0]);
    dafe:	1c90      	adds	r0, r2, #2
    db00:	f8cb 0000 	str.w	r0, [fp]
    db04:	4640      	mov	r0, r8
    db06:	461c      	mov	r4, r3
    db08:	f7ff fd14 	bl	d534 <iterate>
            stop_time();
    db0c:	f8db 0000 	ldr.w	r0, [fp]
    db10:	1c41      	adds	r1, r0, #1
    GETMYTIME(&stop_time_val);
    db12:	3002      	adds	r0, #2
    db14:	f8cb 1000 	str.w	r1, [fp]
    db18:	f8cb 0000 	str.w	r0, [fp]
    db1c:	f001 fd9b 	bl	f656 <clock>
    db20:	f8db 6000 	ldr.w	r6, [fp]
    db24:	1c72      	adds	r2, r6, #1
    db26:	f8cb 2000 	str.w	r2, [fp]
    db2a:	61e1      	str	r1, [r4, #28]
    db2c:	61a0      	str	r0, [r4, #24]
            secs_passed = time_in_secs(get_time());
    db2e:	1cb0      	adds	r0, r6, #2
    db30:	f8cb 0000 	str.w	r0, [fp]
        = (CORE_TICKS)(MYTIMEDIFF(stop_time_val, start_time_val));
    db34:	1cf0      	adds	r0, r6, #3
    db36:	f8cb 0000 	str.w	r0, [fp]
    db3a:	69a0      	ldr	r0, [r4, #24]
    db3c:	69e1      	ldr	r1, [r4, #28]
    db3e:	1d31      	adds	r1, r6, #4
    db40:	f8cb 1000 	str.w	r1, [fp]
    db44:	6921      	ldr	r1, [r4, #16]
    db46:	6962      	ldr	r2, [r4, #20]
    db48:	1a40      	subs	r0, r0, r1
    db4a:	1d75      	adds	r5, r6, #5
    db4c:	f8cb 5000 	str.w	r5, [fp]
    secs_ret retval = ((secs_ret)ticks) / (secs_ret)EE_TICKS_PER_SEC;
    db50:	f7fe fc18 	bl	c384 <__aeabi_ui2d>
    db54:	2200      	movs	r2, #0
    db56:	464b      	mov	r3, r9
    db58:	f7fe fdb8 	bl	c6cc <__aeabi_ddiv>
        while (secs_passed < (secs_ret)1)
    db5c:	2200      	movs	r2, #0
    db5e:	4653      	mov	r3, sl
    db60:	4607      	mov	r7, r0
    db62:	460c      	mov	r4, r1
    db64:	f7fe fee6 	bl	c934 <__ledf2>
    db68:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
    db6c:	dc02      	bgt.n	db74 <main+0x5d4>
            results[0].iterations *= 10;
    db6e:	f8dd 0824 	ldr.w	r0, [sp, #2084]	; 0x824
    db72:	e7a9      	b.n	dac8 <main+0x528>
        }
        /* now we know it executes for at least 1 sec, set actual run time at
         * about 10 secs */
        divisor = (ee_u32)secs_passed;
    db74:	4638      	mov	r0, r7
    db76:	4621      	mov	r1, r4
    db78:	f7fe feb8 	bl	c8ec <__aeabi_d2uiz>
    db7c:	2800      	cmp	r0, #0
    db7e:	bf08      	it	eq
    db80:	2001      	moveq	r0, #1
    db82:	210a      	movs	r1, #10
        if (divisor == 0) /* some machines cast float to int as 0 since this
                             conversion is not defined by ANSI, but we know at
                             least one second passed */
            divisor = 1;
        results[0].iterations *= 1 + 10 / divisor;
    db84:	fbb1 f0f0 	udiv	r0, r1, r0
    db88:	f8dd 1824 	ldr.w	r1, [sp, #2084]	; 0x824
    db8c:	3001      	adds	r0, #1
    db8e:	4341      	muls	r1, r0
    db90:	1db0      	adds	r0, r6, #6
    db92:	f8cb 0000 	str.w	r0, [fp]
    db96:	f8cd 1824 	str.w	r1, [sp, #2084]	; 0x824
    }
    /* perform actual benchmark */
    start_time();
    db9a:	1c41      	adds	r1, r0, #1
    GETMYTIME(&start_time_val);
    db9c:	3002      	adds	r0, #2
    db9e:	f8cb 1000 	str.w	r1, [fp]
    dba2:	f8cb 0000 	str.w	r0, [fp]
    dba6:	f001 fd56 	bl	f656 <clock>
    dbaa:	f8db 2000 	ldr.w	r2, [fp]
    dbae:	f240 0410 	movw	r4, #16
    dbb2:	1c53      	adds	r3, r2, #1
    dbb4:	f2c1 0400 	movt	r4, #4096	; 0x1000
    dbb8:	f8cb 3000 	str.w	r3, [fp]
    dbbc:	6161      	str	r1, [r4, #20]
    dbbe:	6120      	str	r0, [r4, #16]
    for (i = 0; i < default_num_contexts; i++)
    {
        core_stop_parallel(&results[i]);
    }
#else
    iterate(&results[0]);
    dbc0:	1c90      	adds	r0, r2, #2
    dbc2:	f8cb 0000 	str.w	r0, [fp]
    dbc6:	f60d 0008 	addw	r0, sp, #2056	; 0x808
    dbca:	f7ff fcb3 	bl	d534 <iterate>
#endif
    stop_time();
    dbce:	f8db 0000 	ldr.w	r0, [fp]
    dbd2:	1c41      	adds	r1, r0, #1
    GETMYTIME(&stop_time_val);
    dbd4:	3002      	adds	r0, #2
    dbd6:	f8cb 1000 	str.w	r1, [fp]
    dbda:	f8cb 0000 	str.w	r0, [fp]
    dbde:	f001 fd3a 	bl	f656 <clock>
    dbe2:	f8db 2000 	ldr.w	r2, [fp]
    dbe6:	1c53      	adds	r3, r2, #1
    dbe8:	f8cb 3000 	str.w	r3, [fp]
    dbec:	61e1      	str	r1, [r4, #28]
    dbee:	61a0      	str	r0, [r4, #24]
    total_time = get_time();
    dbf0:	1c90      	adds	r0, r2, #2
    dbf2:	f8cb 0000 	str.w	r0, [fp]
        = (CORE_TICKS)(MYTIMEDIFF(stop_time_val, start_time_val));
    dbf6:	1cd0      	adds	r0, r2, #3
    dbf8:	f8cb 0000 	str.w	r0, [fp]
    dbfc:	69a0      	ldr	r0, [r4, #24]
    dbfe:	69e1      	ldr	r1, [r4, #28]
    dc00:	1d11      	adds	r1, r2, #4
    dc02:	f8cb 1000 	str.w	r1, [fp]
    dc06:	6921      	ldr	r1, [r4, #16]
    dc08:	6963      	ldr	r3, [r4, #20]
    dc0a:	1a45      	subs	r5, r0, r1
    /* get a function of the input to report */
    seedcrc = crc16(results[0].seed1, seedcrc);
    dc0c:	1d51      	adds	r1, r2, #5
    dc0e:	f8bd 0808 	ldrh.w	r0, [sp, #2056]	; 0x808
    dc12:	f8cb 1000 	str.w	r1, [fp]
    return crcu16((ee_u16)newval, crc);
    dc16:	1d91      	adds	r1, r2, #6
    dc18:	f8cb 1000 	str.w	r1, [fp]
    dc1c:	2100      	movs	r1, #0
    dc1e:	f001 fc90 	bl	f542 <crcu16>
    seedcrc = crc16(results[0].seed2, seedcrc);
    dc22:	f8db 2000 	ldr.w	r2, [fp]
    dc26:	4601      	mov	r1, r0
    dc28:	f8bd 080a 	ldrh.w	r0, [sp, #2058]	; 0x80a
    dc2c:	1c53      	adds	r3, r2, #1
    dc2e:	3202      	adds	r2, #2
    dc30:	f8cb 3000 	str.w	r3, [fp]
    dc34:	f8cb 2000 	str.w	r2, [fp]
    dc38:	f001 fc83 	bl	f542 <crcu16>
    seedcrc = crc16(results[0].seed3, seedcrc);
    dc3c:	f8db 2000 	ldr.w	r2, [fp]
    dc40:	4601      	mov	r1, r0
    dc42:	f8bd 080c 	ldrh.w	r0, [sp, #2060]	; 0x80c
    dc46:	1c53      	adds	r3, r2, #1
    dc48:	3202      	adds	r2, #2
    dc4a:	f8cb 3000 	str.w	r3, [fp]
    dc4e:	f8cb 2000 	str.w	r2, [fp]
    dc52:	f001 fc76 	bl	f542 <crcu16>
    seedcrc = crc16(results[0].size, seedcrc);
    dc56:	f8db 2000 	ldr.w	r2, [fp]
    dc5a:	4601      	mov	r1, r0
    dc5c:	f8bd 0820 	ldrh.w	r0, [sp, #2080]	; 0x820
    dc60:	1c53      	adds	r3, r2, #1
    dc62:	3202      	adds	r2, #2
    dc64:	f8cb 3000 	str.w	r3, [fp]
    dc68:	f8cb 2000 	str.w	r2, [fp]
    dc6c:	f001 fc69 	bl	f542 <crcu16>
    dc70:	f647 3105 	movw	r1, #31493	; 0x7b05
    dc74:	4288      	cmp	r0, r1
    dc76:	9006      	str	r0, [sp, #24]
    dc78:	d211      	bcs.n	dc9e <main+0x6fe>
    dc7a:	f644 61af 	movw	r1, #20143	; 0x4eaf
    dc7e:	4288      	cmp	r0, r1
    dc80:	f64f 79ff 	movw	r9, #65535	; 0xffff
    dc84:	d21c      	bcs.n	dcc0 <main+0x720>
    dc86:	f641 01f2 	movw	r1, #6386	; 0x18f2
    dc8a:	4288      	cmp	r0, r1
    dc8c:	d131      	bne.n	dcf2 <main+0x752>
    dc8e:	f641 1074 	movw	r0, #6516	; 0x1974
    dc92:	f04f 0804 	mov.w	r8, #4
    dc96:	f2c0 0001 	movt	r0, #1
    dc9a:	9505      	str	r5, [sp, #20]
    dc9c:	e036      	b.n	dd0c <main+0x76c>
    dc9e:	f648 2202 	movw	r2, #35330	; 0x8a02
    dca2:	4290      	cmp	r0, r2
    dca4:	d216      	bcs.n	dcd4 <main+0x734>
    dca6:	f647 3105 	movw	r1, #31493	; 0x7b05
    dcaa:	4288      	cmp	r0, r1
    dcac:	f040 80da 	bne.w	de64 <main+0x8c4>
    dcb0:	f641 200d 	movw	r0, #6669	; 0x1a0d
    dcb4:	9505      	str	r5, [sp, #20]
    dcb6:	f04f 0801 	mov.w	r8, #1
    dcba:	f2c0 0001 	movt	r0, #1
    dcbe:	e025      	b.n	dd0c <main+0x76c>
    dcc0:	4288      	cmp	r0, r1
    dcc2:	d116      	bne.n	dcf2 <main+0x752>
    dcc4:	f241 7054 	movw	r0, #5972	; 0x1754
    dcc8:	9505      	str	r5, [sp, #20]
    dcca:	f04f 0802 	mov.w	r8, #2
    dcce:	f2c0 0001 	movt	r0, #1
    dcd2:	e01b      	b.n	dd0c <main+0x76c>
    dcd4:	f64e 11f5 	movw	r1, #59893	; 0xe9f5
    dcd8:	4288      	cmp	r0, r1
    dcda:	d20d      	bcs.n	dcf8 <main+0x758>
    dcdc:	4290      	cmp	r0, r2
    dcde:	f040 80c1 	bne.w	de64 <main+0x8c4>
    dce2:	f641 1047 	movw	r0, #6471	; 0x1947
    dce6:	9505      	str	r5, [sp, #20]
    dce8:	f04f 0800 	mov.w	r8, #0
    dcec:	f2c0 0001 	movt	r0, #1
    dcf0:	e00c      	b.n	dd0c <main+0x76c>
    dcf2:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
    dcf6:	e0bd      	b.n	de74 <main+0x8d4>
    dcf8:	4288      	cmp	r0, r1
    dcfa:	f040 80b3 	bne.w	de64 <main+0x8c4>
    dcfe:	f241 606e 	movw	r0, #5742	; 0x166e
    dd02:	9505      	str	r5, [sp, #20]
    dd04:	f04f 0803 	mov.w	r8, #3
    dd08:	f2c0 0001 	movt	r0, #1
    dd0c:	f8db 1000 	ldr.w	r1, [fp]
    dd10:	3101      	adds	r1, #1
    dd12:	f8cb 1000 	str.w	r1, [fp]
    dd16:	f001 fcac 	bl	f672 <printf_>
    dd1a:	f240 0400 	movw	r4, #0
    dd1e:	f2c1 0400 	movt	r4, #4096	; 0x1000
            total_errors = -1;
            break;
    }
    if (known_id >= 0)
    {
        for (i = 0; i < default_num_contexts; i++)
    dd22:	68a0      	ldr	r0, [r4, #8]
    dd24:	2800      	cmp	r0, #0
    dd26:	f000 80a2 	beq.w	de6e <main+0x8ce>
        {
            results[i].err = 0;
    dd2a:	f8db 1000 	ldr.w	r1, [fp]
    dd2e:	f641 2bce 	movw	fp, #6862	; 0x1ace
    dd32:	2700      	movs	r7, #0
    dd34:	f2c0 0b01 	movt	fp, #1
    dd38:	2600      	movs	r6, #0
    dd3a:	f04f 0a00 	mov.w	sl, #0
    dd3e:	f04f 0900 	mov.w	r9, #0
    dd42:	e009      	b.n	dd58 <main+0x7b8>
                          i,
                          results[i].crcstate,
                          state_known_crc[known_id]);
                results[i].err++;
            }
            total_errors += results[i].err;
    dd44:	4489      	add	r9, r1
        for (i = 0; i < default_num_contexts; i++)
    dd46:	f10a 0a01 	add.w	sl, sl, #1
    dd4a:	68a1      	ldr	r1, [r4, #8]
    dd4c:	fa1f f68a 	uxth.w	r6, sl
    dd50:	42b1      	cmp	r1, r6
            results[i].err = 0;
    dd52:	4601      	mov	r1, r0
        for (i = 0; i < default_num_contexts; i++)
    dd54:	f240 8081 	bls.w	de5a <main+0x8ba>
            results[i].err = 0;
    dd58:	f240 0230 	movw	r2, #48	; 0x30
    dd5c:	1c48      	adds	r0, r1, #1
    dd5e:	f2c1 0200 	movt	r2, #4096	; 0x1000
    dd62:	6010      	str	r0, [r2, #0]
            if ((results[i].execs & ID_LIST)
    dd64:	f8dd 5828 	ldr.w	r5, [sp, #2088]	; 0x828
            results[i].err = 0;
    dd68:	f8ad 7848 	strh.w	r7, [sp, #2120]	; 0x848
                && (results[i].crclist != list_known_crc[known_id]))
    dd6c:	07ea      	lsls	r2, r5, #31
    dd6e:	d005      	beq.n	dd7c <main+0x7dc>
    dd70:	f8bd 2842 	ldrh.w	r2, [sp, #2114]	; 0x842
    dd74:	f83b 3018 	ldrh.w	r3, [fp, r8, lsl #1]
            if ((results[i].execs & ID_LIST)
    dd78:	429a      	cmp	r2, r3
    dd7a:	d103      	bne.n	dd84 <main+0x7e4>
    dd7c:	2100      	movs	r1, #0
                && (results[i].crcmatrix != matrix_known_crc[known_id]))
    dd7e:	07aa      	lsls	r2, r5, #30
    dd80:	d41e      	bmi.n	ddc0 <main+0x820>
    dd82:	e043      	b.n	de0c <main+0x86c>
                ee_printf("[%u]ERROR! list crc 0x%04x - should be 0x%04x\n",
    dd84:	1c88      	adds	r0, r1, #2
    dd86:	f240 0130 	movw	r1, #48	; 0x30
    dd8a:	f2c1 0100 	movt	r1, #4096	; 0x1000
    dd8e:	6008      	str	r0, [r1, #0]
    dd90:	f641 204b 	movw	r0, #6731	; 0x1a4b
    dd94:	460d      	mov	r5, r1
    dd96:	f2c0 0001 	movt	r0, #1
    dd9a:	4631      	mov	r1, r6
    dd9c:	f001 fc69 	bl	f672 <printf_>
                results[i].err++;
    dda0:	f8bd 0848 	ldrh.w	r0, [sp, #2120]	; 0x848
    dda4:	682a      	ldr	r2, [r5, #0]
    dda6:	1c41      	adds	r1, r0, #1
    dda8:	1c50      	adds	r0, r2, #1
    ddaa:	6028      	str	r0, [r5, #0]
    ddac:	f240 0400 	movw	r4, #0
            if ((results[i].execs & ID_MATRIX)
    ddb0:	f8dd 5828 	ldr.w	r5, [sp, #2088]	; 0x828
    ddb4:	f2c1 0400 	movt	r4, #4096	; 0x1000
                results[i].err++;
    ddb8:	f8ad 1848 	strh.w	r1, [sp, #2120]	; 0x848
                && (results[i].crcmatrix != matrix_known_crc[known_id]))
    ddbc:	07aa      	lsls	r2, r5, #30
    ddbe:	d525      	bpl.n	de0c <main+0x86c>
    ddc0:	f641 23d8 	movw	r3, #6872	; 0x1ad8
    ddc4:	f2c0 0301 	movt	r3, #1
    ddc8:	f8bd 2844 	ldrh.w	r2, [sp, #2116]	; 0x844
    ddcc:	f833 3018 	ldrh.w	r3, [r3, r8, lsl #1]
            if ((results[i].execs & ID_MATRIX)
    ddd0:	429a      	cmp	r2, r3
    ddd2:	d01b      	beq.n	de0c <main+0x86c>
    ddd4:	f240 0130 	movw	r1, #48	; 0x30
                ee_printf("[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n",
    ddd8:	3001      	adds	r0, #1
    ddda:	f2c1 0100 	movt	r1, #4096	; 0x1000
    ddde:	6008      	str	r0, [r1, #0]
    dde0:	f241 7023 	movw	r0, #5923	; 0x1723
    dde4:	460d      	mov	r5, r1
    dde6:	f2c0 0001 	movt	r0, #1
    ddea:	4631      	mov	r1, r6
    ddec:	f001 fc41 	bl	f672 <printf_>
                results[i].err++;
    ddf0:	f8bd 0848 	ldrh.w	r0, [sp, #2120]	; 0x848
    ddf4:	682a      	ldr	r2, [r5, #0]
    ddf6:	1c41      	adds	r1, r0, #1
    ddf8:	1c50      	adds	r0, r2, #1
    ddfa:	6028      	str	r0, [r5, #0]
    ddfc:	f240 0400 	movw	r4, #0
            if ((results[i].execs & ID_STATE)
    de00:	f8dd 5828 	ldr.w	r5, [sp, #2088]	; 0x828
    de04:	f2c1 0400 	movt	r4, #4096	; 0x1000
                results[i].err++;
    de08:	f8ad 1848 	strh.w	r1, [sp, #2120]	; 0x848
                && (results[i].crcstate != state_known_crc[known_id]))
    de0c:	076a      	lsls	r2, r5, #29
    de0e:	d599      	bpl.n	dd44 <main+0x7a4>
    de10:	f641 23e2 	movw	r3, #6882	; 0x1ae2
    de14:	f2c0 0301 	movt	r3, #1
    de18:	f8bd 2846 	ldrh.w	r2, [sp, #2118]	; 0x846
    de1c:	f833 3018 	ldrh.w	r3, [r3, r8, lsl #1]
            if ((results[i].execs & ID_STATE)
    de20:	429a      	cmp	r2, r3
    de22:	d08f      	beq.n	dd44 <main+0x7a4>
    de24:	f240 0130 	movw	r1, #48	; 0x30
                ee_printf("[%u]ERROR! state crc 0x%04x - should be 0x%04x\n",
    de28:	3001      	adds	r0, #1
    de2a:	f2c1 0100 	movt	r1, #4096	; 0x1000
    de2e:	6008      	str	r0, [r1, #0]
    de30:	f641 1017 	movw	r0, #6423	; 0x1917
    de34:	460d      	mov	r5, r1
    de36:	f2c0 0001 	movt	r0, #1
    de3a:	4631      	mov	r1, r6
    de3c:	f001 fc19 	bl	f672 <printf_>
                results[i].err++;
    de40:	f8bd 0848 	ldrh.w	r0, [sp, #2120]	; 0x848
    de44:	682a      	ldr	r2, [r5, #0]
    de46:	f240 0400 	movw	r4, #0
    de4a:	f2c1 0400 	movt	r4, #4096	; 0x1000
    de4e:	1c41      	adds	r1, r0, #1
    de50:	1c50      	adds	r0, r2, #1
    de52:	6028      	str	r0, [r5, #0]
    de54:	f8ad 1848 	strh.w	r1, [sp, #2120]	; 0x848
    de58:	e774      	b.n	dd44 <main+0x7a4>
    de5a:	f240 0b30 	movw	fp, #48	; 0x30
    de5e:	f2c1 0b00 	movt	fp, #4096	; 0x1000
    de62:	e006      	b.n	de72 <main+0x8d2>
    de64:	f64f 79ff 	movw	r9, #65535	; 0xffff
    de68:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
    de6c:	e002      	b.n	de74 <main+0x8d4>
    de6e:	f04f 0900 	mov.w	r9, #0
    de72:	9d05      	ldr	r5, [sp, #20]
        }
    }
    total_errors += check_data_types();
    de74:	f8db 0000 	ldr.w	r0, [fp]
    de78:	1c41      	adds	r1, r0, #1
    de7a:	f8cb 1000 	str.w	r1, [fp]
    /* and report results */
    ee_printf("CoreMark Size    : %lu\n", (long unsigned)results[0].size);
    de7e:	3002      	adds	r0, #2
    de80:	f8dd 1820 	ldr.w	r1, [sp, #2080]	; 0x820
    de84:	f8cb 0000 	str.w	r0, [fp]
    de88:	f641 209e 	movw	r0, #6814	; 0x1a9e
    de8c:	f2c0 0001 	movt	r0, #1
    de90:	f001 fbef 	bl	f672 <printf_>
    ee_printf("Total ticks      : %lu\n", (long unsigned)total_time);
    de94:	f8db 0000 	ldr.w	r0, [fp]
    de98:	4629      	mov	r1, r5
    de9a:	3001      	adds	r0, #1
    de9c:	f8cb 0000 	str.w	r0, [fp]
    dea0:	f241 6056 	movw	r0, #5718	; 0x1656
    dea4:	f2c0 0001 	movt	r0, #1
    dea8:	f001 fbe3 	bl	f672 <printf_>
#if HAS_FLOAT
    ee_printf("Total time (secs): %f\n", time_in_secs(total_time));
    deac:	f8db 4000 	ldr.w	r4, [fp]
    deb0:	1c60      	adds	r0, r4, #1
    deb2:	f8cb 0000 	str.w	r0, [fp]
    secs_ret retval = ((secs_ret)ticks) / (secs_ret)EE_TICKS_PER_SEC;
    deb6:	4628      	mov	r0, r5
    deb8:	f7fe fa64 	bl	c384 <__aeabi_ui2d>
    debc:	f241 23d0 	movw	r3, #4816	; 0x12d0
    dec0:	f2c4 1363 	movt	r3, #16739	; 0x4163
    dec4:	2200      	movs	r2, #0
    dec6:	f7fe fc01 	bl	c6cc <__aeabi_ddiv>
    deca:	4607      	mov	r7, r0
    decc:	1ca0      	adds	r0, r4, #2
    dece:	f8cb 0000 	str.w	r0, [fp]
    ded2:	f641 00e8 	movw	r0, #6376	; 0x18e8
    ded6:	f2c0 0001 	movt	r0, #1
    deda:	463a      	mov	r2, r7
    dedc:	460b      	mov	r3, r1
    dede:	460e      	mov	r6, r1
    dee0:	f001 fbc7 	bl	f672 <printf_>
    if (time_in_secs(total_time) > 0)
    dee4:	f8db 4000 	ldr.w	r4, [fp]
    dee8:	4638      	mov	r0, r7
    deea:	1c65      	adds	r5, r4, #1
    deec:	4631      	mov	r1, r6
    deee:	2200      	movs	r2, #0
    def0:	2300      	movs	r3, #0
    def2:	f8cb 5000 	str.w	r5, [fp]
    def6:	f7fe fd19 	bl	c92c <__gedf2>
    defa:	2801      	cmp	r0, #1
    defc:	db1d      	blt.n	df3a <_store_byte+0x8d>
        ee_printf("Iterations/Sec   : %f\n",
                  default_num_contexts * results[0].iterations
    defe:	f240 0000 	movw	r0, #0
    df02:	f2c1 0000 	movt	r0, #4096	; 0x1000
    df06:	6880      	ldr	r0, [r0, #8]
    df08:	f8dd 1824 	ldr.w	r1, [sp, #2084]	; 0x824
    df0c:	4348      	muls	r0, r1
    df0e:	f7fe fa39 	bl	c384 <__aeabi_ui2d>
                      / time_in_secs(total_time));
    df12:	1ca2      	adds	r2, r4, #2
    df14:	f8cb 2000 	str.w	r2, [fp]
    df18:	463a      	mov	r2, r7
    df1a:	4633      	mov	r3, r6
    df1c:	f7fe fbd6 	bl	c6cc <__aeabi_ddiv>
    df20:	4602      	mov	r2, r0
        ee_printf("Iterations/Sec   : %f\n",
    df22:	1ce0      	adds	r0, r4, #3
    df24:	f8cb 0000 	str.w	r0, [fp]
    df28:	f641 20b6 	movw	r0, #6838	; 0x1ab6
    df2c:	f2c0 0001 	movt	r0, #1
    df30:	460b      	mov	r3, r1
    df32:	f001 fb9e 	bl	f672 <printf_>
    if (time_in_secs(total_time) > 0)
        ee_printf("Iterations/Sec   : %d\n",
                  default_num_contexts * results[0].iterations
                      / time_in_secs(total_time));
#endif
    if (time_in_secs(total_time) < 10)
    df36:	f8db 5000 	ldr.w	r5, [fp]
    df3a:	2300      	movs	r3, #0
    df3c:	1c6c      	adds	r4, r5, #1
    df3e:	f2c4 0324 	movt	r3, #16420	; 0x4024
    df42:	4638      	mov	r0, r7
    df44:	4631      	mov	r1, r6
    df46:	2200      	movs	r2, #0
    df48:	f8cb 4000 	str.w	r4, [fp]
    df4c:	f7fe fcf2 	bl	c934 <__ledf2>
    df50:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
    df54:	dc0c      	bgt.n	df70 <_store_byte+0xc3>
    {
        ee_printf(
    df56:	1ca8      	adds	r0, r5, #2
    df58:	f8cb 0000 	str.w	r0, [fp]
    df5c:	f241 70b9 	movw	r0, #6073	; 0x17b9
    df60:	f2c0 0001 	movt	r0, #1
    df64:	f001 fb85 	bl	f672 <printf_>
            "ERROR! Must execute for at least 10 secs for a valid result!\n");
        total_errors++;
    }

    ee_printf("Iterations       : %lu\n",
    df68:	f8db 4000 	ldr.w	r4, [fp]
        total_errors++;
    df6c:	f109 0901 	add.w	r9, r9, #1
    df70:	f240 0000 	movw	r0, #0
    df74:	f2c1 0000 	movt	r0, #4096	; 0x1000
              (long unsigned)default_num_contexts * results[0].iterations);
    df78:	6880      	ldr	r0, [r0, #8]
    df7a:	f8dd 1824 	ldr.w	r1, [sp, #2084]	; 0x824
    df7e:	4341      	muls	r1, r0
    ee_printf("Iterations       : %lu\n",
    df80:	1c60      	adds	r0, r4, #1
    df82:	f8cb 0000 	str.w	r0, [fp]
    df86:	f241 70f7 	movw	r0, #6135	; 0x17f7
    df8a:	f2c0 0001 	movt	r0, #1
    df8e:	f001 fb70 	bl	f672 <printf_>
    ee_printf("Compiler version : %s\n", COMPILER_VERSION);
    df92:	f8db 0000 	ldr.w	r0, [fp]
    df96:	f641 01ff 	movw	r1, #6399	; 0x18ff
    df9a:	3001      	adds	r0, #1
    df9c:	f8cb 0000 	str.w	r0, [fp]
    dfa0:	f641 004e 	movw	r0, #6222	; 0x184e
    dfa4:	f2c0 0001 	movt	r0, #1
    dfa8:	f2c0 0101 	movt	r1, #1
    dfac:	f001 fb61 	bl	f672 <printf_>
    ee_printf("Compiler flags   : %s\n", COMPILER_FLAGS);
    dfb0:	f8db 0000 	ldr.w	r0, [fp]
    dfb4:	f641 1a0f 	movw	sl, #6415	; 0x190f
    dfb8:	3001      	adds	r0, #1
    dfba:	f8cb 0000 	str.w	r0, [fp]
    dfbe:	f641 0065 	movw	r0, #6245	; 0x1865
    dfc2:	f2c0 0a01 	movt	sl, #1
    dfc6:	f2c0 0001 	movt	r0, #1
    dfca:	4651      	mov	r1, sl
    dfcc:	f001 fb51 	bl	f672 <printf_>
#if (MULTITHREAD > 1)
    ee_printf("Parallel %s : %d\n", PARALLEL_METHOD, default_num_contexts);
#endif
    ee_printf("Memory location  : %s\n", MEM_LOCATION);
    dfd0:	f8db 0000 	ldr.w	r0, [fp]
    dfd4:	f241 71aa 	movw	r1, #6058	; 0x17aa
    dfd8:	3001      	adds	r0, #1
    dfda:	f8cb 0000 	str.w	r0, [fp]
    dfde:	f641 207a 	movw	r0, #6778	; 0x1a7a
    dfe2:	f2c0 0001 	movt	r0, #1
    dfe6:	f2c0 0101 	movt	r1, #1
    dfea:	f001 fb42 	bl	f672 <printf_>
    /* output for verification */
    ee_printf("seedcrc          : 0x%04x\n", seedcrc);
    dfee:	f8db 0000 	ldr.w	r0, [fp]
    dff2:	3001      	adds	r0, #1
    dff4:	f8cb 0000 	str.w	r0, [fp]
    dff8:	f641 0029 	movw	r0, #6185	; 0x1829
    dffc:	9906      	ldr	r1, [sp, #24]
    dffe:	f2c0 0001 	movt	r0, #1
    e002:	f001 fb36 	bl	f672 <printf_>
    if (results[0].execs & ID_LIST)
        for (i = 0; i < default_num_contexts; i++)
    e006:	f240 0000 	movw	r0, #0
    if (results[0].execs & ID_LIST)
    e00a:	f8dd 1828 	ldr.w	r1, [sp, #2088]	; 0x828
        for (i = 0; i < default_num_contexts; i++)
    e00e:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e012:	6880      	ldr	r0, [r0, #8]
    if (results[0].execs & ID_LIST)
    e014:	07ca      	lsls	r2, r1, #31
    e016:	bf18      	it	ne
    e018:	2800      	cmpne	r0, #0
    e01a:	f040 80c2 	bne.w	e1a2 <_store_byte+0x2f5>
            ee_printf("[%d]crclist       : 0x%04x\n", i, results[i].crclist);
    if (results[0].execs & ID_MATRIX)
    e01e:	078a      	lsls	r2, r1, #30
    e020:	d51b      	bpl.n	e05a <_store_byte+0x1ad>
    e022:	b1d0      	cbz	r0, e05a <_store_byte+0x1ad>
    e024:	f241 7407 	movw	r4, #5895	; 0x1707
    e028:	2100      	movs	r1, #0
    e02a:	f2c0 0401 	movt	r4, #1
    e02e:	2500      	movs	r5, #0
        for (i = 0; i < default_num_contexts; i++)
            ee_printf("[%d]crcmatrix     : 0x%04x\n", i, results[i].crcmatrix);
    e030:	f8db 0000 	ldr.w	r0, [fp]
    e034:	f8bd 2844 	ldrh.w	r2, [sp, #2116]	; 0x844
    e038:	3001      	adds	r0, #1
    e03a:	f8cb 0000 	str.w	r0, [fp]
    e03e:	4620      	mov	r0, r4
    e040:	f001 fb17 	bl	f672 <printf_>
        for (i = 0; i < default_num_contexts; i++)
    e044:	f240 0000 	movw	r0, #0
    e048:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e04c:	3501      	adds	r5, #1
    e04e:	6880      	ldr	r0, [r0, #8]
    e050:	b2a9      	uxth	r1, r5
    e052:	4288      	cmp	r0, r1
    e054:	d8ec      	bhi.n	e030 <_store_byte+0x183>
    if (results[0].execs & ID_STATE)
    e056:	f8dd 1828 	ldr.w	r1, [sp, #2088]	; 0x828
    e05a:	0749      	lsls	r1, r1, #29
    e05c:	d519      	bpl.n	e092 <_store_byte+0x1e5>
    e05e:	b1c0      	cbz	r0, e092 <_store_byte+0x1e5>
    e060:	f641 14a7 	movw	r4, #6567	; 0x19a7
    e064:	2100      	movs	r1, #0
    e066:	f2c0 0401 	movt	r4, #1
    e06a:	2500      	movs	r5, #0
        for (i = 0; i < default_num_contexts; i++)
            ee_printf("[%d]crcstate      : 0x%04x\n", i, results[i].crcstate);
    e06c:	f8db 0000 	ldr.w	r0, [fp]
    e070:	f8bd 2846 	ldrh.w	r2, [sp, #2118]	; 0x846
    e074:	3001      	adds	r0, #1
    e076:	f8cb 0000 	str.w	r0, [fp]
    e07a:	4620      	mov	r0, r4
    e07c:	f001 faf9 	bl	f672 <printf_>
        for (i = 0; i < default_num_contexts; i++)
    e080:	f240 0000 	movw	r0, #0
    e084:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e088:	3501      	adds	r5, #1
    e08a:	6880      	ldr	r0, [r0, #8]
    e08c:	b2a9      	uxth	r1, r5
    e08e:	4288      	cmp	r0, r1
    e090:	d8ec      	bhi.n	e06c <_store_byte+0x1bf>
    for (i = 0; i < default_num_contexts; i++)
    e092:	b1c0      	cbz	r0, e0c6 <_store_byte+0x219>
    e094:	f641 14e8 	movw	r4, #6632	; 0x19e8
    e098:	2100      	movs	r1, #0
    e09a:	f2c0 0401 	movt	r4, #1
    e09e:	2500      	movs	r5, #0
        ee_printf("[%d]crcfinal      : 0x%04x\n", i, results[i].crc);
    e0a0:	f8db 0000 	ldr.w	r0, [fp]
    e0a4:	f8bd 2840 	ldrh.w	r2, [sp, #2112]	; 0x840
    e0a8:	3001      	adds	r0, #1
    e0aa:	f8cb 0000 	str.w	r0, [fp]
    e0ae:	4620      	mov	r0, r4
    e0b0:	f001 fadf 	bl	f672 <printf_>
    for (i = 0; i < default_num_contexts; i++)
    e0b4:	f240 0000 	movw	r0, #0
    e0b8:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e0bc:	3501      	adds	r5, #1
    e0be:	6880      	ldr	r0, [r0, #8]
    e0c0:	b2a9      	uxth	r1, r5
    e0c2:	4288      	cmp	r0, r1
    e0c4:	d8ec      	bhi.n	e0a0 <_store_byte+0x1f3>
    if (total_errors == 0)
    e0c6:	ea5f 4009 	movs.w	r0, r9, lsl #16
    e0ca:	d012      	beq.n	e0f2 <_store_byte+0x245>
    e0cc:	f8db 0000 	ldr.w	r0, [fp]
#endif
            ee_printf("\n");
        }
#endif
    }
    if (total_errors > 0)
    e0d0:	fa0f f189 	sxth.w	r1, r9
    e0d4:	3001      	adds	r0, #1
    e0d6:	f8cb 0000 	str.w	r0, [fp]
    e0da:	f241 609b 	movw	r0, #5787	; 0x169b
    e0de:	f641 020f 	movw	r2, #6159	; 0x180f
    e0e2:	f2c0 0001 	movt	r0, #1
    e0e6:	f2c0 0201 	movt	r2, #1
    e0ea:	2900      	cmp	r1, #0
    e0ec:	bfc8      	it	gt
    e0ee:	4610      	movgt	r0, r2
    e0f0:	e04a      	b.n	e188 <_store_byte+0x2db>
        ee_printf(
    e0f2:	f8db 0000 	ldr.w	r0, [fp]
    e0f6:	3001      	adds	r0, #1
    e0f8:	f8cb 0000 	str.w	r0, [fp]
    e0fc:	f641 009f 	movw	r0, #6303	; 0x189f
    e100:	f2c0 0001 	movt	r0, #1
    e104:	f001 fab5 	bl	f672 <printf_>
        if (known_id == 3)
    e108:	f1b8 0f03 	cmp.w	r8, #3
    e10c:	d13e      	bne.n	e18c <_store_byte+0x2df>
                      default_num_contexts * results[0].iterations
    e10e:	f240 0000 	movw	r0, #0
    e112:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e116:	6880      	ldr	r0, [r0, #8]
    e118:	f8dd 1824 	ldr.w	r1, [sp, #2084]	; 0x824
    e11c:	4348      	muls	r0, r1
    e11e:	f7fe f931 	bl	c384 <__aeabi_ui2d>
                          / time_in_secs(total_time),
    e122:	f8db 4000 	ldr.w	r4, [fp]
    e126:	4633      	mov	r3, r6
    e128:	1c62      	adds	r2, r4, #1
    e12a:	f8cb 2000 	str.w	r2, [fp]
    e12e:	463a      	mov	r2, r7
    e130:	f7fe facc 	bl	c6cc <__aeabi_ddiv>
    e134:	4602      	mov	r2, r0
            ee_printf("CoreMark 1.0 : %f / %s %s",
    e136:	1ca0      	adds	r0, r4, #2
    e138:	f8cb 0000 	str.w	r0, [fp]
    e13c:	f641 00ff 	movw	r0, #6399	; 0x18ff
    e140:	f2c0 0001 	movt	r0, #1
    e144:	9000      	str	r0, [sp, #0]
    e146:	f641 007c 	movw	r0, #6268	; 0x187c
    e14a:	f2c0 0001 	movt	r0, #1
    e14e:	460b      	mov	r3, r1
    e150:	f8cd a004 	str.w	sl, [sp, #4]
    e154:	f001 fa8d 	bl	f672 <printf_>
            ee_printf(" / %s", MEM_LOCATION);
    e158:	f8db 0000 	ldr.w	r0, [fp]
    e15c:	f241 71aa 	movw	r1, #6058	; 0x17aa
    e160:	3001      	adds	r0, #1
    e162:	f8cb 0000 	str.w	r0, [fp]
    e166:	f641 1011 	movw	r0, #6417	; 0x1911
    e16a:	f2c0 0001 	movt	r0, #1
    e16e:	f2c0 0101 	movt	r1, #1
    e172:	f001 fa7e 	bl	f672 <printf_>
            ee_printf("\n");
    e176:	f8db 0000 	ldr.w	r0, [fp]
    e17a:	3001      	adds	r0, #1
    e17c:	f8cb 0000 	str.w	r0, [fp]
    e180:	f641 10a0 	movw	r0, #6560	; 0x19a0
    e184:	f2c0 0001 	movt	r0, #1
    e188:	f001 fa73 	bl	f672 <printf_>
#if (MEM_METHOD == MEM_MALLOC)
    for (i = 0; i < MULTITHREAD; i++)
        portable_free(results[i].memblock[0]);
#endif
    /* And last call any target specific code for finalizing */
    portable_fini(&(results[0].port));
    e18c:	f8db 0000 	ldr.w	r0, [fp]
    e190:	1c41      	adds	r1, r0, #1

    return MAIN_RETURN_VAL;
    e192:	2000      	movs	r0, #0
    portable_fini(&(results[0].port));
    e194:	f8cb 1000 	str.w	r1, [fp]
    return MAIN_RETURN_VAL;
    e198:	f50d 6d04 	add.w	sp, sp, #2112	; 0x840
    e19c:	b003      	add	sp, #12
    e19e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    e1a2:	f641 14cc 	movw	r4, #6604	; 0x19cc
    e1a6:	2100      	movs	r1, #0
    e1a8:	f2c0 0401 	movt	r4, #1
    e1ac:	2500      	movs	r5, #0
    e1ae:	bf00      	nop
            ee_printf("[%d]crclist       : 0x%04x\n", i, results[i].crclist);
    e1b0:	f8db 0000 	ldr.w	r0, [fp]
    e1b4:	f8bd 2842 	ldrh.w	r2, [sp, #2114]	; 0x842
    e1b8:	3001      	adds	r0, #1
    e1ba:	f8cb 0000 	str.w	r0, [fp]
    e1be:	4620      	mov	r0, r4
    e1c0:	f001 fa57 	bl	f672 <printf_>
        for (i = 0; i < default_num_contexts; i++)
    e1c4:	f240 0000 	movw	r0, #0
    e1c8:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e1cc:	3501      	adds	r5, #1
    e1ce:	6880      	ldr	r0, [r0, #8]
    e1d0:	b2a9      	uxth	r1, r5
    e1d2:	4288      	cmp	r0, r1
    e1d4:	d8ec      	bhi.n	e1b0 <_store_byte+0x303>
    if (results[0].execs & ID_MATRIX)
    e1d6:	f8dd 1828 	ldr.w	r1, [sp, #2088]	; 0x828
    e1da:	078a      	lsls	r2, r1, #30
    e1dc:	f53f af21 	bmi.w	e022 <_store_byte+0x175>
    e1e0:	e73b      	b.n	e05a <_store_byte+0x1ad>
    e1e2:	d4d4      	bmi.n	e18e <_store_byte+0x2e1>

0000e1e4 <matrix_test>:
{
    e1e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    e1e8:	b0b5      	sub	sp, #212	; 0xd4
    matrix_add_const(N, A, val); /* make sure data changes  */
    e1ea:	f240 0e30 	movw	lr, #48	; 0x30
    e1ee:	4688      	mov	r8, r1
    e1f0:	9e3e      	ldr	r6, [sp, #248]	; 0xf8
    e1f2:	f24f 0100 	movw	r1, #61440	; 0xf000
    e1f6:	f2c1 0e00 	movt	lr, #4096	; 0x1000
    e1fa:	469a      	mov	sl, r3
    e1fc:	f6cf 71ff 	movt	r1, #65535	; 0xffff
    e200:	f8de 3000 	ldr.w	r3, [lr]
    MATDAT clipval = matrix_big(val);
    e204:	4331      	orrs	r1, r6
    matrix_add_const(N, A, val); /* make sure data changes  */
    e206:	912e      	str	r1, [sp, #184]	; 0xb8
    e208:	1c59      	adds	r1, r3, #1
*/
void
matrix_add_const(ee_u32 N, MATDAT *A, MATDAT val)
{
    ee_u32 i, j;
    for (i = 0; i < N; i++)
    e20a:	2800      	cmp	r0, #0
    matrix_add_const(N, A, val); /* make sure data changes  */
    e20c:	f8ce 1000 	str.w	r1, [lr]
    e210:	9034      	str	r0, [sp, #208]	; 0xd0
    e212:	f8cd 80a8 	str.w	r8, [sp, #168]	; 0xa8
    e216:	e9cd a228 	strd	sl, r2, [sp, #160]	; 0xa0
    for (i = 0; i < N; i++)
    e21a:	f000 813d 	beq.w	e498 <matrix_test+0x2b4>
    e21e:	f000 0503 	and.w	r5, r0, #3
    e222:	1e41      	subs	r1, r0, #1
    e224:	eba0 0a05 	sub.w	sl, r0, r5
    e228:	f1a2 0e02 	sub.w	lr, r2, #2
    e22c:	ea4f 0c40 	mov.w	ip, r0, lsl #1
    e230:	f04f 0800 	mov.w	r8, #0
    e234:	4691      	mov	r9, r2
    e236:	911a      	str	r1, [sp, #104]	; 0x68
    e238:	f8cd e000 	str.w	lr, [sp]
    e23c:	9519      	str	r5, [sp, #100]	; 0x64
    {
        for (j = 0; j < N; j++)
    e23e:	981a      	ldr	r0, [sp, #104]	; 0x68
    e240:	2400      	movs	r4, #0
    e242:	2803      	cmp	r0, #3
    e244:	d32e      	bcc.n	e2a4 <matrix_test+0xc0>
    e246:	e00a      	b.n	e25e <matrix_test+0x7a>
    for (i = 0; i < N; i++)
    e248:	9834      	ldr	r0, [sp, #208]	; 0xd0
    e24a:	f108 0801 	add.w	r8, r8, #1
    e24e:	44e6      	add	lr, ip
    e250:	4580      	cmp	r8, r0
    e252:	44e1      	add	r9, ip
    e254:	d057      	beq.n	e306 <matrix_test+0x122>
        for (j = 0; j < N; j++)
    e256:	981a      	ldr	r0, [sp, #104]	; 0x68
    e258:	2400      	movs	r4, #0
    e25a:	2803      	cmp	r0, #3
    e25c:	d322      	bcc.n	e2a4 <matrix_test+0xc0>
    e25e:	f240 0530 	movw	r5, #48	; 0x30
    e262:	4670      	mov	r0, lr
    e264:	f2c1 0500 	movt	r5, #4096	; 0x1000
        {
            A[i * N + j] += val;
    e268:	8847      	ldrh	r7, [r0, #2]
    e26a:	6829      	ldr	r1, [r5, #0]
    e26c:	4437      	add	r7, r6
    e26e:	3101      	adds	r1, #1
    e270:	6029      	str	r1, [r5, #0]
    e272:	8047      	strh	r7, [r0, #2]
    e274:	eb09 0144 	add.w	r1, r9, r4, lsl #1
    e278:	884f      	ldrh	r7, [r1, #2]
    e27a:	682b      	ldr	r3, [r5, #0]
    e27c:	4437      	add	r7, r6
    e27e:	3301      	adds	r3, #1
    e280:	602b      	str	r3, [r5, #0]
    e282:	804f      	strh	r7, [r1, #2]
    e284:	888b      	ldrh	r3, [r1, #4]
    e286:	682f      	ldr	r7, [r5, #0]
    e288:	4433      	add	r3, r6
    e28a:	3701      	adds	r7, #1
    e28c:	602f      	str	r7, [r5, #0]
    e28e:	808b      	strh	r3, [r1, #4]
    e290:	f830 1f08 	ldrh.w	r1, [r0, #8]!
    e294:	682b      	ldr	r3, [r5, #0]
        for (j = 0; j < N; j++)
    e296:	3404      	adds	r4, #4
            A[i * N + j] += val;
    e298:	4431      	add	r1, r6
    e29a:	3301      	adds	r3, #1
        for (j = 0; j < N; j++)
    e29c:	45a2      	cmp	sl, r4
            A[i * N + j] += val;
    e29e:	602b      	str	r3, [r5, #0]
    e2a0:	8001      	strh	r1, [r0, #0]
        for (j = 0; j < N; j++)
    e2a2:	d1e1      	bne.n	e268 <matrix_test+0x84>
    e2a4:	9d19      	ldr	r5, [sp, #100]	; 0x64
    e2a6:	2d00      	cmp	r5, #0
    e2a8:	d0ce      	beq.n	e248 <matrix_test+0x64>
    e2aa:	9834      	ldr	r0, [sp, #208]	; 0xd0
    e2ac:	f240 0330 	movw	r3, #48	; 0x30
    e2b0:	fb08 f000 	mul.w	r0, r8, r0
            A[i * N + j] += val;
    e2b4:	4420      	add	r0, r4
    e2b6:	f2c1 0300 	movt	r3, #4096	; 0x1000
    e2ba:	f832 1010 	ldrh.w	r1, [r2, r0, lsl #1]
    e2be:	461c      	mov	r4, r3
    e2c0:	681b      	ldr	r3, [r3, #0]
    e2c2:	4431      	add	r1, r6
    e2c4:	3301      	adds	r3, #1
        for (j = 0; j < N; j++)
    e2c6:	2d01      	cmp	r5, #1
            A[i * N + j] += val;
    e2c8:	6023      	str	r3, [r4, #0]
    e2ca:	f822 1010 	strh.w	r1, [r2, r0, lsl #1]
        for (j = 0; j < N; j++)
    e2ce:	d0bb      	beq.n	e248 <matrix_test+0x64>
    e2d0:	f240 0330 	movw	r3, #48	; 0x30
            A[i * N + j] += val;
    e2d4:	eb02 0040 	add.w	r0, r2, r0, lsl #1
    e2d8:	f2c1 0300 	movt	r3, #4096	; 0x1000
    e2dc:	8841      	ldrh	r1, [r0, #2]
    e2de:	461c      	mov	r4, r3
    e2e0:	681b      	ldr	r3, [r3, #0]
    e2e2:	4431      	add	r1, r6
    e2e4:	3301      	adds	r3, #1
        for (j = 0; j < N; j++)
    e2e6:	2d02      	cmp	r5, #2
            A[i * N + j] += val;
    e2e8:	6023      	str	r3, [r4, #0]
    e2ea:	8041      	strh	r1, [r0, #2]
        for (j = 0; j < N; j++)
    e2ec:	d0ac      	beq.n	e248 <matrix_test+0x64>
    e2ee:	f240 0330 	movw	r3, #48	; 0x30
    e2f2:	f2c1 0300 	movt	r3, #4096	; 0x1000
            A[i * N + j] += val;
    e2f6:	8881      	ldrh	r1, [r0, #4]
    e2f8:	461c      	mov	r4, r3
    e2fa:	681b      	ldr	r3, [r3, #0]
    e2fc:	4431      	add	r1, r6
    e2fe:	3301      	adds	r3, #1
    e300:	6023      	str	r3, [r4, #0]
    e302:	8081      	strh	r1, [r0, #4]
    e304:	e7a0      	b.n	e248 <matrix_test+0x64>
    e306:	f240 0030 	movw	r0, #48	; 0x30
    e30a:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e30e:	4601      	mov	r1, r0
    matrix_mul_const(N, C, A, val);
    e310:	6800      	ldr	r0, [r0, #0]
    e312:	3001      	adds	r0, #1
    e314:	6008      	str	r0, [r1, #0]
    for (i = 0; i < N; i++)
    e316:	981a      	ldr	r0, [sp, #104]	; 0x68
    e318:	9934      	ldr	r1, [sp, #208]	; 0xd0
    e31a:	2800      	cmp	r0, #0
    e31c:	f001 0001 	and.w	r0, r1, #1
    e320:	9001      	str	r0, [sp, #4]
    e322:	f000 80c2 	beq.w	e4aa <matrix_test+0x2c6>
    e326:	1a0b      	subs	r3, r1, r0
    e328:	982a      	ldr	r0, [sp, #168]	; 0xa8
    e32a:	00cc      	lsls	r4, r1, #3
    e32c:	f1a0 0710 	sub.w	r7, r0, #16
    e330:	eb00 0081 	add.w	r0, r0, r1, lsl #2
    e334:	f1a0 0e08 	sub.w	lr, r0, #8
    e338:	eb02 0041 	add.w	r0, r2, r1, lsl #1
    e33c:	f8dd 9000 	ldr.w	r9, [sp]
    e340:	940b      	str	r4, [sp, #44]	; 0x2c
    e342:	008c      	lsls	r4, r1, #2
    e344:	4639      	mov	r1, r7
    e346:	4690      	mov	r8, r2
    e348:	f1a0 0b08 	sub.w	fp, r0, #8
    e34c:	f04f 0c00 	mov.w	ip, #0
    e350:	940a      	str	r4, [sp, #40]	; 0x28
        for (j = 0; j < N; j++)
    e352:	981a      	ldr	r0, [sp, #104]	; 0x68
    e354:	e9cd 1313 	strd	r1, r3, [sp, #76]	; 0x4c
    e358:	2803      	cmp	r0, #3
    e35a:	d219      	bcs.n	e390 <matrix_test+0x1ac>
    e35c:	e013      	b.n	e386 <matrix_test+0x1a2>
    e35e:	bf00      	nop
    e360:	9b14      	ldr	r3, [sp, #80]	; 0x50
    e362:	9913      	ldr	r1, [sp, #76]	; 0x4c
    e364:	980b      	ldr	r0, [sp, #44]	; 0x2c
    e366:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    for (i = 0; i < N; i++)
    e368:	f10c 0c02 	add.w	ip, ip, #2
    e36c:	3b02      	subs	r3, #2
    e36e:	4401      	add	r1, r0
    e370:	4491      	add	r9, r2
    e372:	4490      	add	r8, r2
    e374:	4486      	add	lr, r0
    e376:	4493      	add	fp, r2
    e378:	f000 8099 	beq.w	e4ae <matrix_test+0x2ca>
        for (j = 0; j < N; j++)
    e37c:	981a      	ldr	r0, [sp, #104]	; 0x68
    e37e:	e9cd 1313 	strd	r1, r3, [sp, #76]	; 0x4c
    e382:	2803      	cmp	r0, #3
    e384:	d204      	bcs.n	e390 <matrix_test+0x1ac>
    e386:	464c      	mov	r4, r9
    e388:	2200      	movs	r2, #0
    e38a:	b9f5      	cbnz	r5, e3ca <matrix_test+0x1e6>
    e38c:	e03c      	b.n	e408 <matrix_test+0x224>
    e38e:	bf00      	nop
    e390:	2200      	movs	r2, #0
    e392:	464c      	mov	r4, r9
    e394:	464f      	mov	r7, r9
    e396:	4608      	mov	r0, r1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e398:	f937 3f08 	ldrsh.w	r3, [r7, #8]!
    e39c:	f937 9c06 	ldrsh.w	r9, [r7, #-6]
    e3a0:	4373      	muls	r3, r6
    e3a2:	fb09 f106 	mul.w	r1, r9, r6
    e3a6:	f840 1f10 	str.w	r1, [r0, #16]!
    e3aa:	eb08 0142 	add.w	r1, r8, r2, lsl #1
    e3ae:	f9b1 9002 	ldrsh.w	r9, [r1, #2]
    e3b2:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
        for (j = 0; j < N; j++)
    e3b6:	3204      	adds	r2, #4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e3b8:	fb09 f906 	mul.w	r9, r9, r6
    e3bc:	4371      	muls	r1, r6
        for (j = 0; j < N; j++)
    e3be:	4592      	cmp	sl, r2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e3c0:	e9c0 9101 	strd	r9, r1, [r0, #4]
    e3c4:	60c3      	str	r3, [r0, #12]
        for (j = 0; j < N; j++)
    e3c6:	d1e7      	bne.n	e398 <matrix_test+0x1b4>
    e3c8:	b1f5      	cbz	r5, e408 <matrix_test+0x224>
    e3ca:	9834      	ldr	r0, [sp, #208]	; 0xd0
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e3cc:	9929      	ldr	r1, [sp, #164]	; 0xa4
    e3ce:	fb0c f000 	mul.w	r0, ip, r0
    e3d2:	4410      	add	r0, r2
    e3d4:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
    e3d8:	9a2a      	ldr	r2, [sp, #168]	; 0xa8
    e3da:	4371      	muls	r1, r6
        for (j = 0; j < N; j++)
    e3dc:	2d01      	cmp	r5, #1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e3de:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
        for (j = 0; j < N; j++)
    e3e2:	d011      	beq.n	e408 <matrix_test+0x224>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e3e4:	9a29      	ldr	r2, [sp, #164]	; 0xa4
    e3e6:	1c41      	adds	r1, r0, #1
    e3e8:	f932 2011 	ldrsh.w	r2, [r2, r1, lsl #1]
    e3ec:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    e3ee:	4372      	muls	r2, r6
        for (j = 0; j < N; j++)
    e3f0:	2d02      	cmp	r5, #2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e3f2:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
        for (j = 0; j < N; j++)
    e3f6:	d007      	beq.n	e408 <matrix_test+0x224>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e3f8:	9929      	ldr	r1, [sp, #164]	; 0xa4
    e3fa:	3002      	adds	r0, #2
    e3fc:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
    e400:	9a2a      	ldr	r2, [sp, #168]	; 0xa8
    e402:	4371      	muls	r1, r6
    e404:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
        for (j = 0; j < N; j++)
    e408:	981a      	ldr	r0, [sp, #104]	; 0x68
    e40a:	2200      	movs	r2, #0
    e40c:	2803      	cmp	r0, #3
    e40e:	d203      	bcs.n	e418 <matrix_test+0x234>
    e410:	46a1      	mov	r9, r4
    e412:	9d19      	ldr	r5, [sp, #100]	; 0x64
    e414:	b9ed      	cbnz	r5, e452 <matrix_test+0x26e>
    e416:	e7a3      	b.n	e360 <matrix_test+0x17c>
    e418:	465f      	mov	r7, fp
    e41a:	4670      	mov	r0, lr
    e41c:	46a1      	mov	r9, r4
    e41e:	bf00      	nop
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e420:	f937 1f08 	ldrsh.w	r1, [r7, #8]!
        for (j = 0; j < N; j++)
    e424:	3204      	adds	r2, #4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e426:	f9b7 4004 	ldrsh.w	r4, [r7, #4]
    e42a:	f9b7 3002 	ldrsh.w	r3, [r7, #2]
    e42e:	f9b7 5006 	ldrsh.w	r5, [r7, #6]
    e432:	4374      	muls	r4, r6
    e434:	4371      	muls	r1, r6
    e436:	f840 4f10 	str.w	r4, [r0, #16]!
    e43a:	4373      	muls	r3, r6
    e43c:	e940 1302 	strd	r1, r3, [r0, #-8]
    e440:	fb05 f106 	mul.w	r1, r5, r6
        for (j = 0; j < N; j++)
    e444:	4592      	cmp	sl, r2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e446:	6041      	str	r1, [r0, #4]
        for (j = 0; j < N; j++)
    e448:	d1ea      	bne.n	e420 <matrix_test+0x23c>
    e44a:	9d19      	ldr	r5, [sp, #100]	; 0x64
    e44c:	2d00      	cmp	r5, #0
    e44e:	f43f af87 	beq.w	e360 <matrix_test+0x17c>
    e452:	9934      	ldr	r1, [sp, #208]	; 0xd0
    e454:	f04c 0001 	orr.w	r0, ip, #1
    e458:	4348      	muls	r0, r1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e45a:	9929      	ldr	r1, [sp, #164]	; 0xa4
    e45c:	4410      	add	r0, r2
    e45e:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
    e462:	9a2a      	ldr	r2, [sp, #168]	; 0xa8
    e464:	4371      	muls	r1, r6
        for (j = 0; j < N; j++)
    e466:	2d01      	cmp	r5, #1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e468:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
        for (j = 0; j < N; j++)
    e46c:	f43f af78 	beq.w	e360 <matrix_test+0x17c>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e470:	9a29      	ldr	r2, [sp, #164]	; 0xa4
    e472:	1c41      	adds	r1, r0, #1
    e474:	f932 2011 	ldrsh.w	r2, [r2, r1, lsl #1]
    e478:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    e47a:	4372      	muls	r2, r6
        for (j = 0; j < N; j++)
    e47c:	2d02      	cmp	r5, #2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e47e:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
        for (j = 0; j < N; j++)
    e482:	f43f af6d 	beq.w	e360 <matrix_test+0x17c>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e486:	9929      	ldr	r1, [sp, #164]	; 0xa4
    e488:	3002      	adds	r0, #2
    e48a:	f931 1010 	ldrsh.w	r1, [r1, r0, lsl #1]
    e48e:	9a2a      	ldr	r2, [sp, #168]	; 0xa8
    e490:	4371      	muls	r1, r6
    e492:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
    e496:	e763      	b.n	e360 <matrix_test+0x17c>
    matrix_mul_const(N, C, A, val);
    e498:	1c99      	adds	r1, r3, #2
    e49a:	f8ce 1000 	str.w	r1, [lr]
    crc = crc16(matrix_sum(N, C, clipval), crc);
    e49e:	1cd9      	adds	r1, r3, #3
    e4a0:	f8ce 1000 	str.w	r1, [lr]
    e4a4:	f04f 0b00 	mov.w	fp, #0
    e4a8:	e0eb      	b.n	e682 <matrix_test+0x49e>
    e4aa:	f04f 0c00 	mov.w	ip, #0
        for (j = 0; j < N; j++)
    e4ae:	9801      	ldr	r0, [sp, #4]
    e4b0:	e9dd 4329 	ldrd	r4, r3, [sp, #164]	; 0xa4
    e4b4:	2800      	cmp	r0, #0
    e4b6:	d046      	beq.n	e546 <matrix_test+0x362>
    e4b8:	981a      	ldr	r0, [sp, #104]	; 0x68
    e4ba:	2803      	cmp	r0, #3
    e4bc:	9834      	ldr	r0, [sp, #208]	; 0xd0
    e4be:	fb0c fc00 	mul.w	ip, ip, r0
    e4c2:	d203      	bcs.n	e4cc <matrix_test+0x2e8>
    e4c4:	2100      	movs	r1, #0
    e4c6:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    e4c8:	bb25      	cbnz	r5, e514 <matrix_test+0x330>
    e4ca:	e03c      	b.n	e546 <matrix_test+0x362>
    e4cc:	eb03 018c 	add.w	r1, r3, ip, lsl #2
    e4d0:	eb04 0e4c 	add.w	lr, r4, ip, lsl #1
    e4d4:	f1a1 0210 	sub.w	r2, r1, #16
    e4d8:	f1ae 0702 	sub.w	r7, lr, #2
    e4dc:	2100      	movs	r1, #0
    e4de:	bf00      	nop
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e4e0:	f937 8f08 	ldrsh.w	r8, [r7, #8]!
    e4e4:	f937 3c06 	ldrsh.w	r3, [r7, #-6]
    e4e8:	fb08 f806 	mul.w	r8, r8, r6
    e4ec:	4373      	muls	r3, r6
    e4ee:	f842 3f10 	str.w	r3, [r2, #16]!
    e4f2:	eb0e 0341 	add.w	r3, lr, r1, lsl #1
    e4f6:	f9b3 0002 	ldrsh.w	r0, [r3, #2]
    e4fa:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
        for (j = 0; j < N; j++)
    e4fe:	3104      	adds	r1, #4
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e500:	4370      	muls	r0, r6
    e502:	4373      	muls	r3, r6
        for (j = 0; j < N; j++)
    e504:	458a      	cmp	sl, r1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e506:	e9c2 0301 	strd	r0, r3, [r2, #4]
    e50a:	f8c2 800c 	str.w	r8, [r2, #12]
        for (j = 0; j < N; j++)
    e50e:	d1e7      	bne.n	e4e0 <matrix_test+0x2fc>
    e510:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    e512:	b1c5      	cbz	r5, e546 <matrix_test+0x362>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e514:	eb01 000c 	add.w	r0, r1, ip
    e518:	f934 1010 	ldrsh.w	r1, [r4, r0, lsl #1]
        for (j = 0; j < N; j++)
    e51c:	2d01      	cmp	r5, #1
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e51e:	fb06 f101 	mul.w	r1, r6, r1
    e522:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
        for (j = 0; j < N; j++)
    e526:	d00e      	beq.n	e546 <matrix_test+0x362>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e528:	1c41      	adds	r1, r0, #1
    e52a:	f934 2011 	ldrsh.w	r2, [r4, r1, lsl #1]
        for (j = 0; j < N; j++)
    e52e:	2d02      	cmp	r5, #2
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e530:	fb06 f202 	mul.w	r2, r6, r2
    e534:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
        for (j = 0; j < N; j++)
    e538:	d005      	beq.n	e546 <matrix_test+0x362>
            C[i * N + j] = (MATRES)A[i * N + j] * (MATRES)val;
    e53a:	3002      	adds	r0, #2
    e53c:	f934 1010 	ldrsh.w	r1, [r4, r0, lsl #1]
    e540:	4371      	muls	r1, r6
    e542:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
    e546:	f240 0030 	movw	r0, #48	; 0x30
    e54a:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e54e:	4601      	mov	r1, r0
    crc = crc16(matrix_sum(N, C, clipval), crc);
    e550:	6800      	ldr	r0, [r0, #0]
    for (i = 0; i < N; i++)
    e552:	3b10      	subs	r3, #16
    crc = crc16(matrix_sum(N, C, clipval), crc);
    e554:	3001      	adds	r0, #1
    e556:	9005      	str	r0, [sp, #20]
    e558:	6008      	str	r0, [r1, #0]
    for (i = 0; i < N; i++)
    e55a:	9834      	ldr	r0, [sp, #208]	; 0xd0
    e55c:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
    e55e:	0080      	lsls	r0, r0, #2
    e560:	9e34      	ldr	r6, [sp, #208]	; 0xd0
    e562:	9011      	str	r0, [sp, #68]	; 0x44
    e564:	f04f 0900 	mov.w	r9, #0
    e568:	f04f 0b00 	mov.w	fp, #0
    e56c:	2000      	movs	r0, #0
    e56e:	f04f 0c00 	mov.w	ip, #0
    e572:	e013      	b.n	e59c <matrix_test+0x3b8>
            cur = C[i * N + j];
    e574:	689f      	ldr	r7, [r3, #8]
            if (tmp > clipval)
    e576:	2100      	movs	r1, #0
            tmp += cur;
    e578:	4438      	add	r0, r7
            if (tmp > clipval)
    e57a:	4297      	cmp	r7, r2
    e57c:	bfc8      	it	gt
    e57e:	2101      	movgt	r1, #1
    e580:	42a0      	cmp	r0, r4
    e582:	bfc4      	itt	gt
    e584:	210a      	movgt	r1, #10
    e586:	2000      	movgt	r0, #0
    e588:	448b      	add	fp, r1
    e58a:	bf00      	nop
    e58c:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    for (i = 0; i < N; i++)
    e58e:	9911      	ldr	r1, [sp, #68]	; 0x44
    e590:	f109 0901 	add.w	r9, r9, #1
    e594:	440b      	add	r3, r1
    e596:	45b1      	cmp	r9, r6
    e598:	46bc      	mov	ip, r7
    e59a:	d06f      	beq.n	e67c <matrix_test+0x498>
        for (j = 0; j < N; j++)
    e59c:	991a      	ldr	r1, [sp, #104]	; 0x68
    e59e:	2200      	movs	r2, #0
    e5a0:	2903      	cmp	r1, #3
    e5a2:	9317      	str	r3, [sp, #92]	; 0x5c
    e5a4:	d202      	bcs.n	e5ac <matrix_test+0x3c8>
    e5a6:	9d19      	ldr	r5, [sp, #100]	; 0x64
    e5a8:	e03a      	b.n	e620 <matrix_test+0x43c>
    e5aa:	bf00      	nop
    e5ac:	9d19      	ldr	r5, [sp, #100]	; 0x64
    e5ae:	461f      	mov	r7, r3
            cur = C[i * N + j];
    e5b0:	f857 1f10 	ldr.w	r1, [r7, #16]!
            if (tmp > clipval)
    e5b4:	2300      	movs	r3, #0
            tmp += cur;
    e5b6:	4408      	add	r0, r1
            if (tmp > clipval)
    e5b8:	4561      	cmp	r1, ip
    e5ba:	bfc8      	it	gt
    e5bc:	2301      	movgt	r3, #1
    e5be:	42a0      	cmp	r0, r4
    e5c0:	bfc8      	it	gt
    e5c2:	230a      	movgt	r3, #10
            cur = C[i * N + j];
    e5c4:	e9d7 8e01 	ldrd	r8, lr, [r7, #4]
    e5c8:	449b      	add	fp, r3
            tmp += cur;
    e5ca:	4643      	mov	r3, r8
            cur = C[i * N + j];
    e5cc:	f8d7 c00c 	ldr.w	ip, [r7, #12]
            tmp += cur;
    e5d0:	42a0      	cmp	r0, r4
    e5d2:	bfd8      	it	le
    e5d4:	4403      	addle	r3, r0
            if (tmp > clipval)
    e5d6:	2000      	movs	r0, #0
    e5d8:	4588      	cmp	r8, r1
    e5da:	bfc8      	it	gt
    e5dc:	2001      	movgt	r0, #1
            tmp += cur;
    e5de:	4671      	mov	r1, lr
            if (tmp > clipval)
    e5e0:	42a3      	cmp	r3, r4
    e5e2:	bfc8      	it	gt
    e5e4:	200a      	movgt	r0, #10
            tmp += cur;
    e5e6:	bfd8      	it	le
    e5e8:	4419      	addle	r1, r3
            if (tmp > clipval)
    e5ea:	2300      	movs	r3, #0
    e5ec:	45c6      	cmp	lr, r8
    e5ee:	bfc8      	it	gt
    e5f0:	2301      	movgt	r3, #1
    e5f2:	4458      	add	r0, fp
    e5f4:	42a1      	cmp	r1, r4
    e5f6:	bfc8      	it	gt
    e5f8:	230a      	movgt	r3, #10
    e5fa:	4403      	add	r3, r0
            tmp += cur;
    e5fc:	4660      	mov	r0, ip
    e5fe:	bfd8      	it	le
    e600:	4408      	addle	r0, r1
            if (tmp > clipval)
    e602:	45f4      	cmp	ip, lr
    e604:	f04f 0100 	mov.w	r1, #0
    e608:	bfc8      	it	gt
    e60a:	2101      	movgt	r1, #1
    e60c:	42a0      	cmp	r0, r4
        for (j = 0; j < N; j++)
    e60e:	f102 0204 	add.w	r2, r2, #4
            if (tmp > clipval)
    e612:	bfc4      	itt	gt
    e614:	210a      	movgt	r1, #10
    e616:	2000      	movgt	r0, #0
        for (j = 0; j < N; j++)
    e618:	4592      	cmp	sl, r2
    e61a:	eb03 0b01 	add.w	fp, r3, r1
    e61e:	d1c7      	bne.n	e5b0 <matrix_test+0x3cc>
    e620:	2d00      	cmp	r5, #0
    e622:	f240 0530 	movw	r5, #48	; 0x30
    e626:	f2c1 0500 	movt	r5, #4096	; 0x1000
    e62a:	f8dd 80a8 	ldr.w	r8, [sp, #168]	; 0xa8
            cur = C[i * N + j];
    e62e:	4667      	mov	r7, ip
    e630:	46ae      	mov	lr, r5
        for (j = 0; j < N; j++)
    e632:	d0ab      	beq.n	e58c <matrix_test+0x3a8>
    e634:	fb09 f106 	mul.w	r1, r9, r6
            cur = C[i * N + j];
    e638:	440a      	add	r2, r1
    e63a:	f858 7022 	ldr.w	r7, [r8, r2, lsl #2]
            if (tmp > clipval)
    e63e:	2100      	movs	r1, #0
            tmp += cur;
    e640:	4438      	add	r0, r7
            if (tmp > clipval)
    e642:	4567      	cmp	r7, ip
    e644:	bfc8      	it	gt
    e646:	2101      	movgt	r1, #1
    e648:	42a0      	cmp	r0, r4
    e64a:	bfc4      	itt	gt
    e64c:	210a      	movgt	r1, #10
    e64e:	2000      	movgt	r0, #0
    e650:	9d19      	ldr	r5, [sp, #100]	; 0x64
    e652:	448b      	add	fp, r1
        for (j = 0; j < N; j++)
    e654:	2d01      	cmp	r5, #1
    e656:	d099      	beq.n	e58c <matrix_test+0x3a8>
            cur = C[i * N + j];
    e658:	eb08 0382 	add.w	r3, r8, r2, lsl #2
    e65c:	685a      	ldr	r2, [r3, #4]
            if (tmp > clipval)
    e65e:	2100      	movs	r1, #0
            tmp += cur;
    e660:	4410      	add	r0, r2
            if (tmp > clipval)
    e662:	42ba      	cmp	r2, r7
    e664:	bfc8      	it	gt
    e666:	2101      	movgt	r1, #1
    e668:	42a0      	cmp	r0, r4
    e66a:	bfc4      	itt	gt
    e66c:	210a      	movgt	r1, #10
    e66e:	2000      	movgt	r0, #0
        for (j = 0; j < N; j++)
    e670:	2d02      	cmp	r5, #2
    e672:	448b      	add	fp, r1
    e674:	f47f af7e 	bne.w	e574 <matrix_test+0x390>
            cur = C[i * N + j];
    e678:	4617      	mov	r7, r2
    e67a:	e787      	b.n	e58c <matrix_test+0x3a8>
    e67c:	f8dd a0a0 	ldr.w	sl, [sp, #160]	; 0xa0
    e680:	9905      	ldr	r1, [sp, #20]
    crc = crc16(matrix_sum(N, C, clipval), crc);
    e682:	1c48      	adds	r0, r1, #1
    e684:	f8ce 0000 	str.w	r0, [lr]
    e688:	1c88      	adds	r0, r1, #2
    e68a:	f8ce 0000 	str.w	r0, [lr]
    e68e:	fa1f f08b 	uxth.w	r0, fp
    e692:	2100      	movs	r1, #0
    e694:	f000 ff55 	bl	f542 <crcu16>
    e698:	f240 0c30 	movw	ip, #48	; 0x30
    e69c:	f2c1 0c00 	movt	ip, #4096	; 0x1000
    matrix_mul_vect(N, C, A, B);
    e6a0:	f8dc 1000 	ldr.w	r1, [ip]
    e6a4:	4603      	mov	r3, r0
    e6a6:	9834      	ldr	r0, [sp, #208]	; 0xd0
    e6a8:	1c4a      	adds	r2, r1, #1
*/
void
matrix_mul_vect(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j;
    for (i = 0; i < N; i++)
    e6aa:	2800      	cmp	r0, #0
    matrix_mul_vect(N, C, A, B);
    e6ac:	f8cc 2000 	str.w	r2, [ip]
    for (i = 0; i < N; i++)
    e6b0:	f000 816f 	beq.w	e992 <matrix_test+0x7ae>
    e6b4:	1e41      	subs	r1, r0, #1
    e6b6:	9118      	str	r1, [sp, #96]	; 0x60
    e6b8:	f000 0103 	and.w	r1, r0, #3
    {
        C[i] = 0;
    e6bc:	f8dd a0a4 	ldr.w	sl, [sp, #164]	; 0xa4
    e6c0:	9112      	str	r1, [sp, #72]	; 0x48
    e6c2:	1a41      	subs	r1, r0, r1
    for (i = 0; i < N; i++)
    e6c4:	0040      	lsls	r0, r0, #1
    e6c6:	2400      	movs	r4, #0
    e6c8:	9306      	str	r3, [sp, #24]
    e6ca:	911c      	str	r1, [sp, #112]	; 0x70
    e6cc:	900d      	str	r0, [sp, #52]	; 0x34
    e6ce:	e007      	b.n	e6e0 <matrix_test+0x4fc>
    e6d0:	980d      	ldr	r0, [sp, #52]	; 0x34
    e6d2:	3401      	adds	r4, #1
    e6d4:	f8dc 2000 	ldr.w	r2, [ip]
    e6d8:	4574      	cmp	r4, lr
    e6da:	4482      	add	sl, r0
    e6dc:	f000 80af 	beq.w	e83e <matrix_test+0x65a>
        C[i] = 0;
    e6e0:	3201      	adds	r2, #1
    e6e2:	f8cc 2000 	str.w	r2, [ip]
    e6e6:	9e2a      	ldr	r6, [sp, #168]	; 0xa8
    e6e8:	2000      	movs	r0, #0
    e6ea:	f846 0024 	str.w	r0, [r6, r4, lsl #2]
        for (j = 0; j < N; j++)
    e6ee:	9818      	ldr	r0, [sp, #96]	; 0x60
    e6f0:	f8dd 80a0 	ldr.w	r8, [sp, #160]	; 0xa0
    e6f4:	2803      	cmp	r0, #3
    e6f6:	4655      	mov	r5, sl
    e6f8:	f04f 0300 	mov.w	r3, #0
    e6fc:	f04f 0200 	mov.w	r2, #0
    e700:	d35a      	bcc.n	e7b8 <matrix_test+0x5d4>
    e702:	2300      	movs	r3, #0
    e704:	f06f 0701 	mvn.w	r7, #1
    e708:	2200      	movs	r2, #0
    e70a:	951b      	str	r5, [sp, #108]	; 0x6c
        {
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e70c:	eb05 0a07 	add.w	sl, r5, r7
    e710:	eb08 0b07 	add.w	fp, r8, r7
    e714:	f240 0030 	movw	r0, #48	; 0x30
    e718:	f9ba c002 	ldrsh.w	ip, [sl, #2]
    e71c:	f9bb e002 	ldrsh.w	lr, [fp, #2]
    e720:	f2c1 0000 	movt	r0, #4096	; 0x1000
    e724:	f8d0 9000 	ldr.w	r9, [r0]
    e728:	fb1e 330c 	smlabb	r3, lr, ip, r3
    e72c:	f240 0130 	movw	r1, #48	; 0x30
    e730:	f109 0001 	add.w	r0, r9, #1
    e734:	f2c1 0100 	movt	r1, #4096	; 0x1000
    e738:	6008      	str	r0, [r1, #0]
    e73a:	f846 3024 	str.w	r3, [r6, r4, lsl #2]
    e73e:	eb05 0042 	add.w	r0, r5, r2, lsl #1
    e742:	eb08 0542 	add.w	r5, r8, r2, lsl #1
    e746:	f240 0130 	movw	r1, #48	; 0x30
    e74a:	f9b0 c002 	ldrsh.w	ip, [r0, #2]
    e74e:	46b6      	mov	lr, r6
    e750:	f9b5 6002 	ldrsh.w	r6, [r5, #2]
    e754:	f2c1 0100 	movt	r1, #4096	; 0x1000
    e758:	f8d1 9000 	ldr.w	r9, [r1]
    e75c:	fb16 330c 	smlabb	r3, r6, ip, r3
    e760:	f240 0c30 	movw	ip, #48	; 0x30
    e764:	f2c1 0c00 	movt	ip, #4096	; 0x1000
    e768:	f109 0101 	add.w	r1, r9, #1
    e76c:	f8cc 1000 	str.w	r1, [ip]
    e770:	f84e 3024 	str.w	r3, [lr, r4, lsl #2]
    e774:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
    e778:	f9b5 1004 	ldrsh.w	r1, [r5, #4]
    e77c:	f8dc 5000 	ldr.w	r5, [ip]
    e780:	fb11 3000 	smlabb	r0, r1, r0, r3
    e784:	1c69      	adds	r1, r5, #1
    e786:	f8cc 1000 	str.w	r1, [ip]
    e78a:	f84e 0024 	str.w	r0, [lr, r4, lsl #2]
    e78e:	f9ba 1008 	ldrsh.w	r1, [sl, #8]
    e792:	f9bb 3008 	ldrsh.w	r3, [fp, #8]
    e796:	f8dc 5000 	ldr.w	r5, [ip]
    e79a:	fb13 0301 	smlabb	r3, r3, r1, r0
    e79e:	1c68      	adds	r0, r5, #1
    e7a0:	9d1b      	ldr	r5, [sp, #108]	; 0x6c
    e7a2:	f8cc 0000 	str.w	r0, [ip]
        for (j = 0; j < N; j++)
    e7a6:	981c      	ldr	r0, [sp, #112]	; 0x70
    e7a8:	3204      	adds	r2, #4
    e7aa:	4676      	mov	r6, lr
    e7ac:	4290      	cmp	r0, r2
    e7ae:	f107 0708 	add.w	r7, r7, #8
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e7b2:	f84e 3024 	str.w	r3, [lr, r4, lsl #2]
        for (j = 0; j < N; j++)
    e7b6:	d1a9      	bne.n	e70c <matrix_test+0x528>
    e7b8:	9f12      	ldr	r7, [sp, #72]	; 0x48
    e7ba:	9e29      	ldr	r6, [sp, #164]	; 0xa4
    e7bc:	f8dd e0d0 	ldr.w	lr, [sp, #208]	; 0xd0
    e7c0:	46aa      	mov	sl, r5
    e7c2:	2f00      	cmp	r7, #0
    e7c4:	d084      	beq.n	e6d0 <matrix_test+0x4ec>
    e7c6:	46c1      	mov	r9, r8
    e7c8:	fb04 f80e 	mul.w	r8, r4, lr
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e7cc:	eb02 0008 	add.w	r0, r2, r8
    e7d0:	f936 0010 	ldrsh.w	r0, [r6, r0, lsl #1]
    e7d4:	f939 1012 	ldrsh.w	r1, [r9, r2, lsl #1]
    e7d8:	f8dc 5000 	ldr.w	r5, [ip]
    e7dc:	fb11 3300 	smlabb	r3, r1, r0, r3
    e7e0:	1c68      	adds	r0, r5, #1
    e7e2:	f8cc 0000 	str.w	r0, [ip]
    e7e6:	982a      	ldr	r0, [sp, #168]	; 0xa8
        for (j = 0; j < N; j++)
    e7e8:	2f01      	cmp	r7, #1
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e7ea:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
        for (j = 0; j < N; j++)
    e7ee:	f43f af6f 	beq.w	e6d0 <matrix_test+0x4ec>
    e7f2:	1c50      	adds	r0, r2, #1
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e7f4:	eb00 0108 	add.w	r1, r0, r8
    e7f8:	f936 1011 	ldrsh.w	r1, [r6, r1, lsl #1]
    e7fc:	f939 0010 	ldrsh.w	r0, [r9, r0, lsl #1]
    e800:	f8dc 5000 	ldr.w	r5, [ip]
    e804:	fb10 3301 	smlabb	r3, r0, r1, r3
    e808:	1c68      	adds	r0, r5, #1
    e80a:	f8cc 0000 	str.w	r0, [ip]
    e80e:	982a      	ldr	r0, [sp, #168]	; 0xa8
        for (j = 0; j < N; j++)
    e810:	2f02      	cmp	r7, #2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e812:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
        for (j = 0; j < N; j++)
    e816:	f43f af5b 	beq.w	e6d0 <matrix_test+0x4ec>
    e81a:	1c90      	adds	r0, r2, #2
            C[i] += (MATRES)A[i * N + j] * (MATRES)B[j];
    e81c:	eb00 0108 	add.w	r1, r0, r8
    e820:	f936 1011 	ldrsh.w	r1, [r6, r1, lsl #1]
    e824:	f939 0010 	ldrsh.w	r0, [r9, r0, lsl #1]
    e828:	f8dc 2000 	ldr.w	r2, [ip]
    e82c:	fb10 3001 	smlabb	r0, r0, r1, r3
    e830:	1c51      	adds	r1, r2, #1
    e832:	f8cc 1000 	str.w	r1, [ip]
    e836:	992a      	ldr	r1, [sp, #168]	; 0xa8
    e838:	f841 0024 	str.w	r0, [r1, r4, lsl #2]
    e83c:	e748      	b.n	e6d0 <matrix_test+0x4ec>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    e83e:	1c50      	adds	r0, r2, #1
    e840:	9004      	str	r0, [sp, #16]
    e842:	f8cc 0000 	str.w	r0, [ip]
    for (i = 0; i < N; i++)
    e846:	982a      	ldr	r0, [sp, #168]	; 0xa8
    e848:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
    e84a:	f1a0 0a10 	sub.w	sl, r0, #16
    e84e:	ea4f 008e 	mov.w	r0, lr, lsl #2
    e852:	9e12      	ldr	r6, [sp, #72]	; 0x48
    e854:	f8dd 8070 	ldr.w	r8, [sp, #112]	; 0x70
    e858:	9010      	str	r0, [sp, #64]	; 0x40
    e85a:	f04f 0c00 	mov.w	ip, #0
    e85e:	2000      	movs	r0, #0
    e860:	f04f 0e00 	mov.w	lr, #0
    e864:	f04f 0900 	mov.w	r9, #0
        for (j = 0; j < N; j++)
    e868:	9918      	ldr	r1, [sp, #96]	; 0x60
    e86a:	f04f 0b00 	mov.w	fp, #0
    e86e:	2903      	cmp	r1, #3
    e870:	d358      	bcc.n	e924 <matrix_test+0x740>
    e872:	e01a      	b.n	e8aa <matrix_test+0x6c6>
            cur = C[i * N + j];
    e874:	6897      	ldr	r7, [r2, #8]
            if (tmp > clipval)
    e876:	428f      	cmp	r7, r1
    e878:	f04f 0100 	mov.w	r1, #0
            tmp += cur;
    e87c:	44be      	add	lr, r7
            if (tmp > clipval)
    e87e:	bfc8      	it	gt
    e880:	2101      	movgt	r1, #1
    e882:	45a6      	cmp	lr, r4
    e884:	bfc4      	itt	gt
    e886:	210a      	movgt	r1, #10
    e888:	f04f 0e00 	movgt.w	lr, #0
    e88c:	4408      	add	r0, r1
    e88e:	bf00      	nop
    for (i = 0; i < N; i++)
    e890:	9910      	ldr	r1, [sp, #64]	; 0x40
    e892:	f10c 0c01 	add.w	ip, ip, #1
    e896:	448a      	add	sl, r1
    e898:	9934      	ldr	r1, [sp, #208]	; 0xd0
    e89a:	46b9      	mov	r9, r7
    e89c:	458c      	cmp	ip, r1
    e89e:	d06b      	beq.n	e978 <matrix_test+0x794>
        for (j = 0; j < N; j++)
    e8a0:	9918      	ldr	r1, [sp, #96]	; 0x60
    e8a2:	f04f 0b00 	mov.w	fp, #0
    e8a6:	2903      	cmp	r1, #3
    e8a8:	d33c      	bcc.n	e924 <matrix_test+0x740>
    e8aa:	4657      	mov	r7, sl
            cur = C[i * N + j];
    e8ac:	f857 5f10 	ldr.w	r5, [r7, #16]!
            if (tmp > clipval)
    e8b0:	2200      	movs	r2, #0
            tmp += cur;
    e8b2:	eb05 030e 	add.w	r3, r5, lr
            if (tmp > clipval)
    e8b6:	454d      	cmp	r5, r9
    e8b8:	bfc8      	it	gt
    e8ba:	2201      	movgt	r2, #1
    e8bc:	42a3      	cmp	r3, r4
    e8be:	bfc8      	it	gt
    e8c0:	220a      	movgt	r2, #10
    e8c2:	eb00 0e02 	add.w	lr, r0, r2
            cur = C[i * N + j];
    e8c6:	e9d7 1001 	ldrd	r1, r0, [r7, #4]
            tmp += cur;
    e8ca:	42a3      	cmp	r3, r4
    e8cc:	460a      	mov	r2, r1
            cur = C[i * N + j];
    e8ce:	f8d7 900c 	ldr.w	r9, [r7, #12]
            tmp += cur;
    e8d2:	bfd8      	it	le
    e8d4:	441a      	addle	r2, r3
            if (tmp > clipval)
    e8d6:	42a9      	cmp	r1, r5
    e8d8:	f04f 0300 	mov.w	r3, #0
    e8dc:	bfc8      	it	gt
    e8de:	2301      	movgt	r3, #1
    e8e0:	42a2      	cmp	r2, r4
            tmp += cur;
    e8e2:	4605      	mov	r5, r0
            if (tmp > clipval)
    e8e4:	bfc8      	it	gt
    e8e6:	230a      	movgt	r3, #10
            tmp += cur;
    e8e8:	bfd8      	it	le
    e8ea:	4415      	addle	r5, r2
            if (tmp > clipval)
    e8ec:	4288      	cmp	r0, r1
    e8ee:	f04f 0100 	mov.w	r1, #0
    e8f2:	4473      	add	r3, lr
    e8f4:	bfc8      	it	gt
    e8f6:	2101      	movgt	r1, #1
    e8f8:	42a5      	cmp	r5, r4
            tmp += cur;
    e8fa:	46ce      	mov	lr, r9
            if (tmp > clipval)
    e8fc:	bfc8      	it	gt
    e8fe:	210a      	movgt	r1, #10
            tmp += cur;
    e900:	bfd8      	it	le
    e902:	44ae      	addle	lr, r5
            if (tmp > clipval)
    e904:	4581      	cmp	r9, r0
    e906:	f04f 0000 	mov.w	r0, #0
    e90a:	bfc8      	it	gt
    e90c:	2001      	movgt	r0, #1
    e90e:	4419      	add	r1, r3
    e910:	45a6      	cmp	lr, r4
    e912:	bfc4      	itt	gt
    e914:	200a      	movgt	r0, #10
    e916:	f04f 0e00 	movgt.w	lr, #0
        for (j = 0; j < N; j++)
    e91a:	f10b 0b04 	add.w	fp, fp, #4
    e91e:	45d8      	cmp	r8, fp
    e920:	4408      	add	r0, r1
    e922:	d1c3      	bne.n	e8ac <matrix_test+0x6c8>
    e924:	2e00      	cmp	r6, #0
            cur = C[i * N + j];
    e926:	464f      	mov	r7, r9
        for (j = 0; j < N; j++)
    e928:	d0b2      	beq.n	e890 <matrix_test+0x6ac>
    e92a:	9934      	ldr	r1, [sp, #208]	; 0xd0
    e92c:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    e92e:	fb0c f101 	mul.w	r1, ip, r1
            cur = C[i * N + j];
    e932:	4459      	add	r1, fp
    e934:	f853 7021 	ldr.w	r7, [r3, r1, lsl #2]
            if (tmp > clipval)
    e938:	2200      	movs	r2, #0
            tmp += cur;
    e93a:	44be      	add	lr, r7
            if (tmp > clipval)
    e93c:	454f      	cmp	r7, r9
    e93e:	bfc8      	it	gt
    e940:	2201      	movgt	r2, #1
    e942:	45a6      	cmp	lr, r4
    e944:	bfc4      	itt	gt
    e946:	220a      	movgt	r2, #10
    e948:	f04f 0e00 	movgt.w	lr, #0
        for (j = 0; j < N; j++)
    e94c:	2e01      	cmp	r6, #1
    e94e:	4410      	add	r0, r2
    e950:	d09e      	beq.n	e890 <matrix_test+0x6ac>
            cur = C[i * N + j];
    e952:	eb03 0281 	add.w	r2, r3, r1, lsl #2
    e956:	6851      	ldr	r1, [r2, #4]
            if (tmp > clipval)
    e958:	2300      	movs	r3, #0
            tmp += cur;
    e95a:	448e      	add	lr, r1
            if (tmp > clipval)
    e95c:	42b9      	cmp	r1, r7
    e95e:	bfc8      	it	gt
    e960:	2301      	movgt	r3, #1
    e962:	45a6      	cmp	lr, r4
    e964:	bfc4      	itt	gt
    e966:	230a      	movgt	r3, #10
    e968:	f04f 0e00 	movgt.w	lr, #0
        for (j = 0; j < N; j++)
    e96c:	2e02      	cmp	r6, #2
    e96e:	4418      	add	r0, r3
    e970:	f47f af80 	bne.w	e874 <matrix_test+0x690>
            cur = C[i * N + j];
    e974:	460f      	mov	r7, r1
    e976:	e78b      	b.n	e890 <matrix_test+0x6ac>
    e978:	f8dd b0a4 	ldr.w	fp, [sp, #164]	; 0xa4
    e97c:	f240 0c30 	movw	ip, #48	; 0x30
    e980:	f8dd 80a8 	ldr.w	r8, [sp, #168]	; 0xa8
    e984:	f8dd a0a0 	ldr.w	sl, [sp, #160]	; 0xa0
    e988:	9b06      	ldr	r3, [sp, #24]
    e98a:	9a04      	ldr	r2, [sp, #16]
    e98c:	f2c1 0c00 	movt	ip, #4096	; 0x1000
    e990:	e005      	b.n	e99e <matrix_test+0x7ba>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    e992:	1c8a      	adds	r2, r1, #2
    e994:	f8cc 2000 	str.w	r2, [ip]
    e998:	f8dd b0a4 	ldr.w	fp, [sp, #164]	; 0xa4
    e99c:	2000      	movs	r0, #0
    e99e:	1c51      	adds	r1, r2, #1
    e9a0:	f8cc 1000 	str.w	r1, [ip]
    e9a4:	1c91      	adds	r1, r2, #2
    e9a6:	f8cc 1000 	str.w	r1, [ip]
    e9aa:	b280      	uxth	r0, r0
    e9ac:	4619      	mov	r1, r3
    e9ae:	f000 fdc8 	bl	f542 <crcu16>
    e9b2:	f240 0e30 	movw	lr, #48	; 0x30
    e9b6:	f2c1 0e00 	movt	lr, #4096	; 0x1000
    matrix_mul_matrix(N, C, A, B);
    e9ba:	f8de 2000 	ldr.w	r2, [lr]
    e9be:	9934      	ldr	r1, [sp, #208]	; 0xd0
    e9c0:	4603      	mov	r3, r0
    e9c2:	1c50      	adds	r0, r2, #1
*/
void
matrix_mul_matrix(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j, k;
    for (i = 0; i < N; i++)
    e9c4:	2900      	cmp	r1, #0
    matrix_mul_matrix(N, C, A, B);
    e9c6:	f8ce 0000 	str.w	r0, [lr]
    for (i = 0; i < N; i++)
    e9ca:	f000 818f 	beq.w	ecec <matrix_test+0xb08>
    e9ce:	1e48      	subs	r0, r1, #1
    e9d0:	f001 0903 	and.w	r9, r1, #3
    e9d4:	9021      	str	r0, [sp, #132]	; 0x84
    e9d6:	eba1 0009 	sub.w	r0, r1, r9
    e9da:	9026      	str	r0, [sp, #152]	; 0x98
    e9dc:	f1ab 0002 	sub.w	r0, fp, #2
    e9e0:	901d      	str	r0, [sp, #116]	; 0x74
    e9e2:	0048      	lsls	r0, r1, #1
    e9e4:	900e      	str	r0, [sp, #56]	; 0x38
    e9e6:	eb01 0041 	add.w	r0, r1, r1, lsl #1
    e9ea:	0040      	lsls	r0, r0, #1
    e9ec:	9307      	str	r3, [sp, #28]
    e9ee:	9030      	str	r0, [sp, #192]	; 0xc0
    e9f0:	00c8      	lsls	r0, r1, #3
    e9f2:	2300      	movs	r3, #0
    e9f4:	902f      	str	r0, [sp, #188]	; 0xbc
    e9f6:	f8cd 908c 	str.w	r9, [sp, #140]	; 0x8c
    e9fa:	e00d      	b.n	ea18 <matrix_test+0x834>
    e9fc:	9b15      	ldr	r3, [sp, #84]	; 0x54
    e9fe:	981d      	ldr	r0, [sp, #116]	; 0x74
    ea00:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    ea02:	f8dd b090 	ldr.w	fp, [sp, #144]	; 0x90
    ea06:	3301      	adds	r3, #1
    ea08:	f8dd a0a0 	ldr.w	sl, [sp, #160]	; 0xa0
    ea0c:	4410      	add	r0, r2
    ea0e:	428b      	cmp	r3, r1
    ea10:	4493      	add	fp, r2
    ea12:	901d      	str	r0, [sp, #116]	; 0x74
    ea14:	f000 80be 	beq.w	eb94 <matrix_test+0x9b0>
    ea18:	fb03 f401 	mul.w	r4, r3, r1
    ea1c:	2500      	movs	r5, #0
    ea1e:	f8cd b090 	str.w	fp, [sp, #144]	; 0x90
    ea22:	9315      	str	r3, [sp, #84]	; 0x54
    ea24:	f8cd a0ac 	str.w	sl, [sp, #172]	; 0xac
    ea28:	941f      	str	r4, [sp, #124]	; 0x7c
    ea2a:	e006      	b.n	ea3a <matrix_test+0x856>
    {
        for (j = 0; j < N; j++)
    ea2c:	982b      	ldr	r0, [sp, #172]	; 0xac
    ea2e:	3501      	adds	r5, #1
    ea30:	428d      	cmp	r5, r1
    ea32:	f100 0002 	add.w	r0, r0, #2
    ea36:	902b      	str	r0, [sp, #172]	; 0xac
    ea38:	d0e0      	beq.n	e9fc <matrix_test+0x818>
    ea3a:	9e2a      	ldr	r6, [sp, #168]	; 0xa8
        {
            C[i * N + j] = 0;
    ea3c:	eb05 0a04 	add.w	sl, r5, r4
    ea40:	2200      	movs	r2, #0
    ea42:	f846 202a 	str.w	r2, [r6, sl, lsl #2]
            for (k = 0; k < N; k++)
    ea46:	9a21      	ldr	r2, [sp, #132]	; 0x84
    ea48:	f8dd c098 	ldr.w	ip, [sp, #152]	; 0x98
    ea4c:	9c24      	ldr	r4, [sp, #144]	; 0x90
    ea4e:	2a03      	cmp	r2, #3
    ea50:	f04f 0200 	mov.w	r2, #0
    ea54:	f04f 0800 	mov.w	r8, #0
    ea58:	9527      	str	r5, [sp, #156]	; 0x9c
    ea5a:	d34e      	bcc.n	eafa <matrix_test+0x916>
            {
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    ea5c:	f8dd b0ac 	ldr.w	fp, [sp, #172]	; 0xac
    ea60:	f8dd 9074 	ldr.w	r9, [sp, #116]	; 0x74
    ea64:	2200      	movs	r2, #0
    ea66:	f04f 0800 	mov.w	r8, #0
    ea6a:	bf00      	nop
    ea6c:	f240 0130 	movw	r1, #48	; 0x30
    ea70:	f9b9 5002 	ldrsh.w	r5, [r9, #2]
    ea74:	f9bb 3000 	ldrsh.w	r3, [fp]
    ea78:	f2c1 0100 	movt	r1, #4096	; 0x1000
    ea7c:	f8d1 e000 	ldr.w	lr, [r1]
    ea80:	fb13 2205 	smlabb	r2, r3, r5, r2
    ea84:	f240 0730 	movw	r7, #48	; 0x30
    ea88:	f10e 0301 	add.w	r3, lr, #1
    ea8c:	f2c1 0700 	movt	r7, #4096	; 0x1000
    ea90:	9934      	ldr	r1, [sp, #208]	; 0xd0
    ea92:	603b      	str	r3, [r7, #0]
    ea94:	f846 202a 	str.w	r2, [r6, sl, lsl #2]
    ea98:	eb04 0348 	add.w	r3, r4, r8, lsl #1
    ea9c:	f9b3 5002 	ldrsh.w	r5, [r3, #2]
    eaa0:	4650      	mov	r0, sl
    eaa2:	46a2      	mov	sl, r4
    eaa4:	f93b 4011 	ldrsh.w	r4, [fp, r1, lsl #1]
    eaa8:	46b6      	mov	lr, r6
    eaaa:	683e      	ldr	r6, [r7, #0]
    eaac:	fb14 2205 	smlabb	r2, r4, r5, r2
    eab0:	4654      	mov	r4, sl
    eab2:	4682      	mov	sl, r0
    eab4:	3601      	adds	r6, #1
    eab6:	9830      	ldr	r0, [sp, #192]	; 0xc0
    eab8:	603e      	str	r6, [r7, #0]
    eaba:	f84e 202a 	str.w	r2, [lr, sl, lsl #2]
    eabe:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
    eac2:	f93b 6021 	ldrsh.w	r6, [fp, r1, lsl #2]
    eac6:	683d      	ldr	r5, [r7, #0]
    eac8:	fb16 2203 	smlabb	r2, r6, r3, r2
    eacc:	1c6b      	adds	r3, r5, #1
    eace:	603b      	str	r3, [r7, #0]
    ead0:	f84e 202a 	str.w	r2, [lr, sl, lsl #2]
    ead4:	f939 3f08 	ldrsh.w	r3, [r9, #8]!
    ead8:	f93b 6000 	ldrsh.w	r6, [fp, r0]
    eadc:	683d      	ldr	r5, [r7, #0]
    eade:	fb16 2203 	smlabb	r2, r6, r3, r2
    eae2:	1c6b      	adds	r3, r5, #1
    eae4:	603b      	str	r3, [r7, #0]
            for (k = 0; k < N; k++)
    eae6:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
    eae8:	f108 0804 	add.w	r8, r8, #4
    eaec:	4676      	mov	r6, lr
    eaee:	46be      	mov	lr, r7
    eaf0:	45c4      	cmp	ip, r8
    eaf2:	449b      	add	fp, r3
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eaf4:	f846 202a 	str.w	r2, [r6, sl, lsl #2]
            for (k = 0; k < N; k++)
    eaf8:	d1b8      	bne.n	ea6c <matrix_test+0x888>
    eafa:	f8dd 908c 	ldr.w	r9, [sp, #140]	; 0x8c
    eafe:	f8dd c0a4 	ldr.w	ip, [sp, #164]	; 0xa4
    eb02:	9c1f      	ldr	r4, [sp, #124]	; 0x7c
    eb04:	9d27      	ldr	r5, [sp, #156]	; 0x9c
    eb06:	f1b9 0f00 	cmp.w	r9, #0
    eb0a:	d08f      	beq.n	ea2c <matrix_test+0x848>
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eb0c:	fb08 5601 	mla	r6, r8, r1, r5
    eb10:	9828      	ldr	r0, [sp, #160]	; 0xa0
    eb12:	eb08 0304 	add.w	r3, r8, r4
    eb16:	f93c 3013 	ldrsh.w	r3, [ip, r3, lsl #1]
    eb1a:	f930 6016 	ldrsh.w	r6, [r0, r6, lsl #1]
    eb1e:	f8de 0000 	ldr.w	r0, [lr]
    eb22:	fb16 2203 	smlabb	r2, r6, r3, r2
    eb26:	1c43      	adds	r3, r0, #1
    eb28:	f8ce 3000 	str.w	r3, [lr]
    eb2c:	982a      	ldr	r0, [sp, #168]	; 0xa8
            for (k = 0; k < N; k++)
    eb2e:	f1b9 0f01 	cmp.w	r9, #1
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eb32:	f840 202a 	str.w	r2, [r0, sl, lsl #2]
            for (k = 0; k < N; k++)
    eb36:	f43f af79 	beq.w	ea2c <matrix_test+0x848>
    eb3a:	f108 0301 	add.w	r3, r8, #1
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eb3e:	191e      	adds	r6, r3, r4
    eb40:	fb03 5301 	mla	r3, r3, r1, r5
    eb44:	9828      	ldr	r0, [sp, #160]	; 0xa0
    eb46:	f93c 6016 	ldrsh.w	r6, [ip, r6, lsl #1]
    eb4a:	f930 3013 	ldrsh.w	r3, [r0, r3, lsl #1]
    eb4e:	f8de 0000 	ldr.w	r0, [lr]
    eb52:	fb13 2206 	smlabb	r2, r3, r6, r2
    eb56:	1c43      	adds	r3, r0, #1
    eb58:	f8ce 3000 	str.w	r3, [lr]
    eb5c:	982a      	ldr	r0, [sp, #168]	; 0xa8
            for (k = 0; k < N; k++)
    eb5e:	f1b9 0f02 	cmp.w	r9, #2
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eb62:	f840 202a 	str.w	r2, [r0, sl, lsl #2]
            for (k = 0; k < N; k++)
    eb66:	f43f af61 	beq.w	ea2c <matrix_test+0x848>
    eb6a:	f108 0302 	add.w	r3, r8, #2
                C[i * N + j] += (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eb6e:	191f      	adds	r7, r3, r4
    eb70:	fb03 5301 	mla	r3, r3, r1, r5
    eb74:	9828      	ldr	r0, [sp, #160]	; 0xa0
    eb76:	f93c 7017 	ldrsh.w	r7, [ip, r7, lsl #1]
    eb7a:	f930 3013 	ldrsh.w	r3, [r0, r3, lsl #1]
    eb7e:	f8de 6000 	ldr.w	r6, [lr]
    eb82:	fb13 2207 	smlabb	r2, r3, r7, r2
    eb86:	1c73      	adds	r3, r6, #1
    eb88:	f8ce 3000 	str.w	r3, [lr]
    eb8c:	982a      	ldr	r0, [sp, #168]	; 0xa8
    eb8e:	f840 202a 	str.w	r2, [r0, sl, lsl #2]
    eb92:	e74b      	b.n	ea2c <matrix_test+0x848>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    eb94:	f8de 0000 	ldr.w	r0, [lr]
    for (i = 0; i < N; i++)
    eb98:	ea4f 0881 	mov.w	r8, r1, lsl #2
    crc = crc16(matrix_sum(N, C, clipval), crc);
    eb9c:	3001      	adds	r0, #1
    eb9e:	9003      	str	r0, [sp, #12]
    eba0:	f8ce 0000 	str.w	r0, [lr]
    for (i = 0; i < N; i++)
    eba4:	982a      	ldr	r0, [sp, #168]	; 0xa8
    eba6:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
    eba8:	f1a0 0b10 	sub.w	fp, r0, #16
    ebac:	f04f 0c00 	mov.w	ip, #0
    ebb0:	2100      	movs	r1, #0
    ebb2:	f04f 0e00 	mov.w	lr, #0
    ebb6:	f04f 0900 	mov.w	r9, #0
        for (j = 0; j < N; j++)
    ebba:	9821      	ldr	r0, [sp, #132]	; 0x84
    ebbc:	2803      	cmp	r0, #3
    ebbe:	d21d      	bcs.n	ebfc <matrix_test+0xa18>
    ebc0:	e016      	b.n	ebf0 <matrix_test+0xa0c>
            cur = C[i * N + j];
    ebc2:	6897      	ldr	r7, [r2, #8]
            if (tmp > clipval)
    ebc4:	4287      	cmp	r7, r0
    ebc6:	f04f 0000 	mov.w	r0, #0
            tmp += cur;
    ebca:	44be      	add	lr, r7
            if (tmp > clipval)
    ebcc:	bfc8      	it	gt
    ebce:	2001      	movgt	r0, #1
    ebd0:	45a6      	cmp	lr, r4
    ebd2:	bfc4      	itt	gt
    ebd4:	200a      	movgt	r0, #10
    ebd6:	f04f 0e00 	movgt.w	lr, #0
    ebda:	4401      	add	r1, r0
    for (i = 0; i < N; i++)
    ebdc:	9834      	ldr	r0, [sp, #208]	; 0xd0
    ebde:	f10c 0c01 	add.w	ip, ip, #1
    ebe2:	44c3      	add	fp, r8
    ebe4:	4584      	cmp	ip, r0
    ebe6:	46b9      	mov	r9, r7
    ebe8:	d075      	beq.n	ecd6 <matrix_test+0xaf2>
        for (j = 0; j < N; j++)
    ebea:	9821      	ldr	r0, [sp, #132]	; 0x84
    ebec:	2803      	cmp	r0, #3
    ebee:	d205      	bcs.n	ebfc <matrix_test+0xa18>
    ebf0:	2000      	movs	r0, #0
    ebf2:	9a23      	ldr	r2, [sp, #140]	; 0x8c
            cur = C[i * N + j];
    ebf4:	464f      	mov	r7, r9
        for (j = 0; j < N; j++)
    ebf6:	2a00      	cmp	r2, #0
    ebf8:	d145      	bne.n	ec86 <matrix_test+0xaa2>
    ebfa:	e7ef      	b.n	ebdc <matrix_test+0x9f8>
    ebfc:	2000      	movs	r0, #0
    ebfe:	465f      	mov	r7, fp
            cur = C[i * N + j];
    ec00:	f857 3f10 	ldr.w	r3, [r7, #16]!
            if (tmp > clipval)
    ec04:	2200      	movs	r2, #0
            tmp += cur;
    ec06:	eb03 060e 	add.w	r6, r3, lr
            if (tmp > clipval)
    ec0a:	454b      	cmp	r3, r9
    ec0c:	bfc8      	it	gt
    ec0e:	2201      	movgt	r2, #1
    ec10:	42a6      	cmp	r6, r4
    ec12:	bfc8      	it	gt
    ec14:	220a      	movgt	r2, #10
            cur = C[i * N + j];
    ec16:	f107 0904 	add.w	r9, r7, #4
    ec1a:	4411      	add	r1, r2
    ec1c:	e899 0214 	ldmia.w	r9, {r2, r4, r9}
            tmp += cur;
    ec20:	9d2e      	ldr	r5, [sp, #184]	; 0xb8
    ec22:	46ce      	mov	lr, r9
    ec24:	42ae      	cmp	r6, r5
    ec26:	4615      	mov	r5, r2
    ec28:	bfd8      	it	le
    ec2a:	4435      	addle	r5, r6
            if (tmp > clipval)
    ec2c:	429a      	cmp	r2, r3
    ec2e:	f04f 0300 	mov.w	r3, #0
    ec32:	bfc8      	it	gt
    ec34:	2301      	movgt	r3, #1
    ec36:	9e2e      	ldr	r6, [sp, #184]	; 0xb8
        for (j = 0; j < N; j++)
    ec38:	3004      	adds	r0, #4
            if (tmp > clipval)
    ec3a:	42b5      	cmp	r5, r6
    ec3c:	bfc8      	it	gt
    ec3e:	230a      	movgt	r3, #10
    ec40:	4419      	add	r1, r3
            tmp += cur;
    ec42:	4623      	mov	r3, r4
    ec44:	bfd8      	it	le
    ec46:	442b      	addle	r3, r5
            if (tmp > clipval)
    ec48:	4294      	cmp	r4, r2
    ec4a:	f04f 0200 	mov.w	r2, #0
    ec4e:	bfc8      	it	gt
    ec50:	2201      	movgt	r2, #1
    ec52:	9e2e      	ldr	r6, [sp, #184]	; 0xb8
    ec54:	42b3      	cmp	r3, r6
    ec56:	bfc8      	it	gt
    ec58:	220a      	movgt	r2, #10
    ec5a:	4411      	add	r1, r2
            tmp += cur;
    ec5c:	bfd8      	it	le
    ec5e:	449e      	addle	lr, r3
            if (tmp > clipval)
    ec60:	45a1      	cmp	r9, r4
    ec62:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
    ec64:	f04f 0200 	mov.w	r2, #0
    ec68:	bfc8      	it	gt
    ec6a:	2201      	movgt	r2, #1
    ec6c:	45a6      	cmp	lr, r4
    ec6e:	bfc4      	itt	gt
    ec70:	220a      	movgt	r2, #10
    ec72:	f04f 0e00 	movgt.w	lr, #0
        for (j = 0; j < N; j++)
    ec76:	9b26      	ldr	r3, [sp, #152]	; 0x98
    ec78:	4411      	add	r1, r2
    ec7a:	4283      	cmp	r3, r0
    ec7c:	d1c0      	bne.n	ec00 <matrix_test+0xa1c>
    ec7e:	9a23      	ldr	r2, [sp, #140]	; 0x8c
            cur = C[i * N + j];
    ec80:	464f      	mov	r7, r9
        for (j = 0; j < N; j++)
    ec82:	2a00      	cmp	r2, #0
    ec84:	d0aa      	beq.n	ebdc <matrix_test+0x9f8>
    ec86:	9a34      	ldr	r2, [sp, #208]	; 0xd0
    ec88:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    ec8a:	fb0c f202 	mul.w	r2, ip, r2
            cur = C[i * N + j];
    ec8e:	4410      	add	r0, r2
    ec90:	f853 7020 	ldr.w	r7, [r3, r0, lsl #2]
            if (tmp > clipval)
    ec94:	2200      	movs	r2, #0
            tmp += cur;
    ec96:	44be      	add	lr, r7
            if (tmp > clipval)
    ec98:	454f      	cmp	r7, r9
    ec9a:	bfc8      	it	gt
    ec9c:	2201      	movgt	r2, #1
    ec9e:	45a6      	cmp	lr, r4
    eca0:	bfc4      	itt	gt
    eca2:	220a      	movgt	r2, #10
    eca4:	f04f 0e00 	movgt.w	lr, #0
    eca8:	9d23      	ldr	r5, [sp, #140]	; 0x8c
    ecaa:	4411      	add	r1, r2
        for (j = 0; j < N; j++)
    ecac:	2d01      	cmp	r5, #1
    ecae:	d095      	beq.n	ebdc <matrix_test+0x9f8>
            cur = C[i * N + j];
    ecb0:	eb03 0280 	add.w	r2, r3, r0, lsl #2
    ecb4:	6850      	ldr	r0, [r2, #4]
            if (tmp > clipval)
    ecb6:	2300      	movs	r3, #0
            tmp += cur;
    ecb8:	4486      	add	lr, r0
            if (tmp > clipval)
    ecba:	42b8      	cmp	r0, r7
    ecbc:	bfc8      	it	gt
    ecbe:	2301      	movgt	r3, #1
    ecc0:	45a6      	cmp	lr, r4
    ecc2:	bfc4      	itt	gt
    ecc4:	230a      	movgt	r3, #10
    ecc6:	f04f 0e00 	movgt.w	lr, #0
        for (j = 0; j < N; j++)
    ecca:	2d02      	cmp	r5, #2
    eccc:	4419      	add	r1, r3
    ecce:	f47f af78 	bne.w	ebc2 <matrix_test+0x9de>
            cur = C[i * N + j];
    ecd2:	4607      	mov	r7, r0
    ecd4:	e782      	b.n	ebdc <matrix_test+0x9f8>
    ecd6:	f8dd b0a4 	ldr.w	fp, [sp, #164]	; 0xa4
    ecda:	f240 0e30 	movw	lr, #48	; 0x30
    ecde:	f8dd 80a8 	ldr.w	r8, [sp, #168]	; 0xa8
    ece2:	9b07      	ldr	r3, [sp, #28]
    ece4:	9a03      	ldr	r2, [sp, #12]
    ece6:	f2c1 0e00 	movt	lr, #4096	; 0x1000
    ecea:	e003      	b.n	ecf4 <matrix_test+0xb10>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    ecec:	3202      	adds	r2, #2
    ecee:	f8ce 2000 	str.w	r2, [lr]
    ecf2:	2100      	movs	r1, #0
    ecf4:	1c50      	adds	r0, r2, #1
    ecf6:	f8ce 0000 	str.w	r0, [lr]
    ecfa:	1c90      	adds	r0, r2, #2
    ecfc:	f8ce 0000 	str.w	r0, [lr]
    ed00:	b288      	uxth	r0, r1
    ed02:	4619      	mov	r1, r3
    ed04:	4674      	mov	r4, lr
    ed06:	f000 fc1c 	bl	f542 <crcu16>
    matrix_mul_matrix_bitextract(N, C, A, B);
    ed0a:	6821      	ldr	r1, [r4, #0]
    ed0c:	f8dd c0d0 	ldr.w	ip, [sp, #208]	; 0xd0
    ed10:	4602      	mov	r2, r0
    ed12:	1c48      	adds	r0, r1, #1
*/
void
matrix_mul_matrix_bitextract(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B)
{
    ee_u32 i, j, k;
    for (i = 0; i < N; i++)
    ed14:	f1bc 0f00 	cmp.w	ip, #0
    matrix_mul_matrix_bitextract(N, C, A, B);
    ed18:	6020      	str	r0, [r4, #0]
    for (i = 0; i < N; i++)
    ed1a:	f000 81a0 	beq.w	f05e <matrix_test+0xe7a>
    ed1e:	f1ac 0001 	sub.w	r0, ip, #1
    ed22:	f00c 0603 	and.w	r6, ip, #3
    ed26:	9022      	str	r0, [sp, #136]	; 0x88
    ed28:	ebac 0006 	sub.w	r0, ip, r6
    ed2c:	9033      	str	r0, [sp, #204]	; 0xcc
    ed2e:	f1ab 0002 	sub.w	r0, fp, #2
    ed32:	901e      	str	r0, [sp, #120]	; 0x78
    ed34:	ea4f 004c 	mov.w	r0, ip, lsl #1
    ed38:	900f      	str	r0, [sp, #60]	; 0x3c
    ed3a:	eb0c 004c 	add.w	r0, ip, ip, lsl #1
    ed3e:	0040      	lsls	r0, r0, #1
    ed40:	9208      	str	r2, [sp, #32]
    ed42:	9032      	str	r0, [sp, #200]	; 0xc8
    ed44:	ea4f 00cc 	mov.w	r0, ip, lsl #3
    ed48:	2200      	movs	r2, #0
    ed4a:	9031      	str	r0, [sp, #196]	; 0xc4
    ed4c:	9625      	str	r6, [sp, #148]	; 0x94
    ed4e:	e009      	b.n	ed64 <matrix_test+0xb80>
    ed50:	9a16      	ldr	r2, [sp, #88]	; 0x58
    ed52:	981e      	ldr	r0, [sp, #120]	; 0x78
    ed54:	990f      	ldr	r1, [sp, #60]	; 0x3c
    ed56:	3201      	adds	r2, #1
    ed58:	4408      	add	r0, r1
    ed5a:	4562      	cmp	r2, ip
    ed5c:	448b      	add	fp, r1
    ed5e:	901e      	str	r0, [sp, #120]	; 0x78
    ed60:	f000 80d6 	beq.w	ef10 <matrix_test+0xd2c>
    ed64:	fb02 f10c 	mul.w	r1, r2, ip
    ed68:	2400      	movs	r4, #0
    ed6a:	9216      	str	r2, [sp, #88]	; 0x58
    ed6c:	f8cd a0b0 	str.w	sl, [sp, #176]	; 0xb0
    ed70:	9120      	str	r1, [sp, #128]	; 0x80
    ed72:	e006      	b.n	ed82 <matrix_test+0xb9e>
    {
        for (j = 0; j < N; j++)
    ed74:	982c      	ldr	r0, [sp, #176]	; 0xb0
    ed76:	3401      	adds	r4, #1
    ed78:	4564      	cmp	r4, ip
    ed7a:	f100 0002 	add.w	r0, r0, #2
    ed7e:	902c      	str	r0, [sp, #176]	; 0xb0
    ed80:	d0e6      	beq.n	ed50 <matrix_test+0xb6c>
        {
            C[i * N + j] = 0;
    ed82:	eb04 0901 	add.w	r9, r4, r1
    ed86:	2000      	movs	r0, #0
    ed88:	f848 0029 	str.w	r0, [r8, r9, lsl #2]
            for (k = 0; k < N; k++)
    ed8c:	9822      	ldr	r0, [sp, #136]	; 0x88
    ed8e:	f240 0a30 	movw	sl, #48	; 0x30
    ed92:	2803      	cmp	r0, #3
    ed94:	f04f 0e00 	mov.w	lr, #0
    ed98:	f04f 0200 	mov.w	r2, #0
    ed9c:	f2c1 0a00 	movt	sl, #4096	; 0x1000
    eda0:	4641      	mov	r1, r8
    eda2:	942d      	str	r4, [sp, #180]	; 0xb4
    eda4:	d356      	bcc.n	ee54 <matrix_test+0xc70>
            {
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    eda6:	9f2c      	ldr	r7, [sp, #176]	; 0xb0
    eda8:	f8dd 8078 	ldr.w	r8, [sp, #120]	; 0x78
    edac:	f04f 0e00 	mov.w	lr, #0
    edb0:	2200      	movs	r2, #0
    edb2:	bf00      	nop
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    edb4:	f9b8 4002 	ldrsh.w	r4, [r8, #2]
    edb8:	f9b7 5000 	ldrsh.w	r5, [r7]
    edbc:	436c      	muls	r4, r5
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    edbe:	f3c4 0583 	ubfx	r5, r4, #2, #4
    edc2:	f3c4 1446 	ubfx	r4, r4, #5, #7
    edc6:	f8da 6000 	ldr.w	r6, [sl]
    edca:	fb15 e504 	smlabb	r5, r5, r4, lr
    edce:	3601      	adds	r6, #1
    edd0:	f8ca 6000 	str.w	r6, [sl]
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    edd4:	eb0b 0642 	add.w	r6, fp, r2, lsl #1
    edd8:	f9b6 4002 	ldrsh.w	r4, [r6, #2]
    eddc:	f937 301c 	ldrsh.w	r3, [r7, ip, lsl #1]
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ede0:	f841 5029 	str.w	r5, [r1, r9, lsl #2]
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    ede4:	4363      	muls	r3, r4
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ede6:	f3c3 0483 	ubfx	r4, r3, #2, #4
    edea:	f3c3 1346 	ubfx	r3, r3, #5, #7
    edee:	f8da 0000 	ldr.w	r0, [sl]
    edf2:	fb14 5303 	smlabb	r3, r4, r3, r5
    edf6:	3001      	adds	r0, #1
    edf8:	f8ca 0000 	str.w	r0, [sl]
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    edfc:	f9b6 0004 	ldrsh.w	r0, [r6, #4]
    ee00:	f937 602c 	ldrsh.w	r6, [r7, ip, lsl #2]
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ee04:	f841 3029 	str.w	r3, [r1, r9, lsl #2]
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    ee08:	4370      	muls	r0, r6
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ee0a:	f3c0 0683 	ubfx	r6, r0, #2, #4
    ee0e:	f3c0 1046 	ubfx	r0, r0, #5, #7
    ee12:	f8da 5000 	ldr.w	r5, [sl]
    ee16:	fb16 3000 	smlabb	r0, r6, r0, r3
    ee1a:	1c6b      	adds	r3, r5, #1
    ee1c:	f8ca 3000 	str.w	r3, [sl]
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    ee20:	9e32      	ldr	r6, [sp, #200]	; 0xc8
    ee22:	f938 3f08 	ldrsh.w	r3, [r8, #8]!
    ee26:	5fbe      	ldrsh	r6, [r7, r6]
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ee28:	f841 0029 	str.w	r0, [r1, r9, lsl #2]
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    ee2c:	4373      	muls	r3, r6
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ee2e:	f3c3 0683 	ubfx	r6, r3, #2, #4
    ee32:	f3c3 1346 	ubfx	r3, r3, #5, #7
    ee36:	f8da 4000 	ldr.w	r4, [sl]
    ee3a:	fb16 0e03 	smlabb	lr, r6, r3, r0
    ee3e:	1c60      	adds	r0, r4, #1
    ee40:	f8ca 0000 	str.w	r0, [sl]
            for (k = 0; k < N; k++)
    ee44:	9833      	ldr	r0, [sp, #204]	; 0xcc
    ee46:	3204      	adds	r2, #4
    ee48:	4290      	cmp	r0, r2
    ee4a:	9831      	ldr	r0, [sp, #196]	; 0xc4
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ee4c:	f841 e029 	str.w	lr, [r1, r9, lsl #2]
            for (k = 0; k < N; k++)
    ee50:	4407      	add	r7, r0
    ee52:	d1af      	bne.n	edb4 <matrix_test+0xbd0>
    ee54:	9e25      	ldr	r6, [sp, #148]	; 0x94
    ee56:	4688      	mov	r8, r1
    ee58:	f8dd a0a0 	ldr.w	sl, [sp, #160]	; 0xa0
    ee5c:	9920      	ldr	r1, [sp, #128]	; 0x80
    ee5e:	9c2d      	ldr	r4, [sp, #180]	; 0xb4
    ee60:	2e00      	cmp	r6, #0
    ee62:	d087      	beq.n	ed74 <matrix_test+0xb90>
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    ee64:	fb02 430c 	mla	r3, r2, ip, r4
    ee68:	9c29      	ldr	r4, [sp, #164]	; 0xa4
    ee6a:	1850      	adds	r0, r2, r1
    ee6c:	f934 0010 	ldrsh.w	r0, [r4, r0, lsl #1]
    ee70:	f93a 3013 	ldrsh.w	r3, [sl, r3, lsl #1]
    ee74:	f240 0430 	movw	r4, #48	; 0x30
    ee78:	4358      	muls	r0, r3
    ee7a:	f2c1 0400 	movt	r4, #4096	; 0x1000
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ee7e:	f3c0 0383 	ubfx	r3, r0, #2, #4
    ee82:	f3c0 1046 	ubfx	r0, r0, #5, #7
    ee86:	4625      	mov	r5, r4
    ee88:	6824      	ldr	r4, [r4, #0]
    ee8a:	fb13 e700 	smlabb	r7, r3, r0, lr
    ee8e:	1c60      	adds	r0, r4, #1
    ee90:	9c2d      	ldr	r4, [sp, #180]	; 0xb4
            for (k = 0; k < N; k++)
    ee92:	2e01      	cmp	r6, #1
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    ee94:	6028      	str	r0, [r5, #0]
    ee96:	f848 7029 	str.w	r7, [r8, r9, lsl #2]
            for (k = 0; k < N; k++)
    ee9a:	f43f af6b 	beq.w	ed74 <matrix_test+0xb90>
    ee9e:	1c50      	adds	r0, r2, #1
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eea0:	1843      	adds	r3, r0, r1
    eea2:	fb00 400c 	mla	r0, r0, ip, r4
    eea6:	9e29      	ldr	r6, [sp, #164]	; 0xa4
    eea8:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
    eeac:	f936 3013 	ldrsh.w	r3, [r6, r3, lsl #1]
    eeb0:	f240 0630 	movw	r6, #48	; 0x30
    eeb4:	4358      	muls	r0, r3
    eeb6:	f2c1 0600 	movt	r6, #4096	; 0x1000
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    eeba:	f3c0 0383 	ubfx	r3, r0, #2, #4
    eebe:	f3c0 1046 	ubfx	r0, r0, #5, #7
    eec2:	4635      	mov	r5, r6
    eec4:	6836      	ldr	r6, [r6, #0]
    eec6:	fb13 7700 	smlabb	r7, r3, r0, r7
    eeca:	1c70      	adds	r0, r6, #1
    eecc:	9e25      	ldr	r6, [sp, #148]	; 0x94
    eece:	6028      	str	r0, [r5, #0]
            for (k = 0; k < N; k++)
    eed0:	2e02      	cmp	r6, #2
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    eed2:	f848 7029 	str.w	r7, [r8, r9, lsl #2]
            for (k = 0; k < N; k++)
    eed6:	f43f af4d 	beq.w	ed74 <matrix_test+0xb90>
    eeda:	1c90      	adds	r0, r2, #2
                MATRES tmp = (MATRES)A[i * N + k] * (MATRES)B[k * N + j];
    eedc:	1842      	adds	r2, r0, r1
    eede:	fb00 400c 	mla	r0, r0, ip, r4
    eee2:	9b29      	ldr	r3, [sp, #164]	; 0xa4
    eee4:	f93a 0010 	ldrsh.w	r0, [sl, r0, lsl #1]
    eee8:	f933 2012 	ldrsh.w	r2, [r3, r2, lsl #1]
    eeec:	f240 0330 	movw	r3, #48	; 0x30
    eef0:	4350      	muls	r0, r2
    eef2:	f2c1 0300 	movt	r3, #4096	; 0x1000
                C[i * N + j] += bit_extract(tmp, 2, 4) * bit_extract(tmp, 5, 7);
    eef6:	f3c0 0283 	ubfx	r2, r0, #2, #4
    eefa:	f3c0 1046 	ubfx	r0, r0, #5, #7
    eefe:	461e      	mov	r6, r3
    ef00:	681b      	ldr	r3, [r3, #0]
    ef02:	fb12 7000 	smlabb	r0, r2, r0, r7
    ef06:	1c5a      	adds	r2, r3, #1
    ef08:	6032      	str	r2, [r6, #0]
    ef0a:	f848 0029 	str.w	r0, [r8, r9, lsl #2]
    ef0e:	e731      	b.n	ed74 <matrix_test+0xb90>
    ef10:	f240 0030 	movw	r0, #48	; 0x30
    ef14:	f2c1 0000 	movt	r0, #4096	; 0x1000
    ef18:	4602      	mov	r2, r0
    crc = crc16(matrix_sum(N, C, clipval), crc);
    ef1a:	6800      	ldr	r0, [r0, #0]
    ef1c:	4661      	mov	r1, ip
    ef1e:	3001      	adds	r0, #1
    ef20:	9002      	str	r0, [sp, #8]
    ef22:	6010      	str	r0, [r2, #0]
    ef24:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
    ef26:	f8dd e0cc 	ldr.w	lr, [sp, #204]	; 0xcc
    for (i = 0; i < N; i++)
    ef2a:	f1a8 0c10 	sub.w	ip, r8, #16
    ef2e:	ea4f 0881 	mov.w	r8, r1, lsl #2
    ef32:	f04f 0b00 	mov.w	fp, #0
    ef36:	f04f 0900 	mov.w	r9, #0
    ef3a:	2100      	movs	r1, #0
    ef3c:	f04f 0a00 	mov.w	sl, #0
        for (j = 0; j < N; j++)
    ef40:	9822      	ldr	r0, [sp, #136]	; 0x88
    ef42:	2700      	movs	r7, #0
    ef44:	2803      	cmp	r0, #3
    ef46:	d357      	bcc.n	eff8 <matrix_test+0xe14>
    ef48:	e017      	b.n	ef7a <matrix_test+0xd96>
            cur = C[i * N + j];
    ef4a:	68b8      	ldr	r0, [r7, #8]
            if (tmp > clipval)
    ef4c:	4290      	cmp	r0, r2
    ef4e:	f04f 0200 	mov.w	r2, #0
            tmp += cur;
    ef52:	4401      	add	r1, r0
            if (tmp > clipval)
    ef54:	bfc8      	it	gt
    ef56:	2201      	movgt	r2, #1
    ef58:	42a1      	cmp	r1, r4
    ef5a:	bfc4      	itt	gt
    ef5c:	220a      	movgt	r2, #10
    ef5e:	2100      	movgt	r1, #0
    ef60:	4491      	add	r9, r2
    ef62:	bf00      	nop
    for (i = 0; i < N; i++)
    ef64:	9a34      	ldr	r2, [sp, #208]	; 0xd0
    ef66:	f10b 0b01 	add.w	fp, fp, #1
    ef6a:	44c4      	add	ip, r8
    ef6c:	4593      	cmp	fp, r2
    ef6e:	4682      	mov	sl, r0
    ef70:	d06c      	beq.n	f04c <matrix_test+0xe68>
        for (j = 0; j < N; j++)
    ef72:	9822      	ldr	r0, [sp, #136]	; 0x88
    ef74:	2700      	movs	r7, #0
    ef76:	2803      	cmp	r0, #3
    ef78:	d33e      	bcc.n	eff8 <matrix_test+0xe14>
    ef7a:	4660      	mov	r0, ip
            cur = C[i * N + j];
    ef7c:	f850 4f10 	ldr.w	r4, [r0, #16]!
            if (tmp > clipval)
    ef80:	2200      	movs	r2, #0
    ef82:	4554      	cmp	r4, sl
    ef84:	bfc8      	it	gt
    ef86:	2201      	movgt	r2, #1
    ef88:	9b2e      	ldr	r3, [sp, #184]	; 0xb8
            tmp += cur;
    ef8a:	4421      	add	r1, r4
            if (tmp > clipval)
    ef8c:	4299      	cmp	r1, r3
    ef8e:	bfc8      	it	gt
    ef90:	220a      	movgt	r2, #10
            cur = C[i * N + j];
    ef92:	f100 0a04 	add.w	sl, r0, #4
    ef96:	eb09 0502 	add.w	r5, r9, r2
    ef9a:	e89a 040c 	ldmia.w	sl, {r2, r3, sl}
            tmp += cur;
    ef9e:	9e2e      	ldr	r6, [sp, #184]	; 0xb8
        for (j = 0; j < N; j++)
    efa0:	3704      	adds	r7, #4
            tmp += cur;
    efa2:	42b1      	cmp	r1, r6
    efa4:	4616      	mov	r6, r2
    efa6:	bfd8      	it	le
    efa8:	440e      	addle	r6, r1
            if (tmp > clipval)
    efaa:	2100      	movs	r1, #0
    efac:	42a2      	cmp	r2, r4
    efae:	bfc8      	it	gt
    efb0:	2101      	movgt	r1, #1
    efb2:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
    efb4:	42a6      	cmp	r6, r4
            tmp += cur;
    efb6:	461c      	mov	r4, r3
            if (tmp > clipval)
    efb8:	bfc8      	it	gt
    efba:	210a      	movgt	r1, #10
            tmp += cur;
    efbc:	bfd8      	it	le
    efbe:	4434      	addle	r4, r6
            if (tmp > clipval)
    efc0:	4293      	cmp	r3, r2
    efc2:	f04f 0200 	mov.w	r2, #0
    efc6:	4429      	add	r1, r5
    efc8:	bfc8      	it	gt
    efca:	2201      	movgt	r2, #1
    efcc:	9d2e      	ldr	r5, [sp, #184]	; 0xb8
    efce:	42ac      	cmp	r4, r5
    efd0:	bfc8      	it	gt
    efd2:	220a      	movgt	r2, #10
    efd4:	440a      	add	r2, r1
            tmp += cur;
    efd6:	4651      	mov	r1, sl
    efd8:	bfd8      	it	le
    efda:	4421      	addle	r1, r4
    efdc:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
            if (tmp > clipval)
    efde:	459a      	cmp	sl, r3
    efe0:	f04f 0300 	mov.w	r3, #0
    efe4:	bfc8      	it	gt
    efe6:	2301      	movgt	r3, #1
    efe8:	42a1      	cmp	r1, r4
    efea:	bfc4      	itt	gt
    efec:	230a      	movgt	r3, #10
    efee:	2100      	movgt	r1, #0
        for (j = 0; j < N; j++)
    eff0:	45be      	cmp	lr, r7
    eff2:	eb02 0903 	add.w	r9, r2, r3
    eff6:	d1c1      	bne.n	ef7c <matrix_test+0xd98>
    eff8:	9d25      	ldr	r5, [sp, #148]	; 0x94
            cur = C[i * N + j];
    effa:	4650      	mov	r0, sl
        for (j = 0; j < N; j++)
    effc:	2d00      	cmp	r5, #0
    effe:	d0b1      	beq.n	ef64 <matrix_test+0xd80>
    f000:	9834      	ldr	r0, [sp, #208]	; 0xd0
    f002:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    f004:	fb0b f000 	mul.w	r0, fp, r0
            cur = C[i * N + j];
    f008:	4407      	add	r7, r0
    f00a:	f853 0027 	ldr.w	r0, [r3, r7, lsl #2]
            if (tmp > clipval)
    f00e:	2200      	movs	r2, #0
            tmp += cur;
    f010:	4401      	add	r1, r0
            if (tmp > clipval)
    f012:	4550      	cmp	r0, sl
    f014:	bfc8      	it	gt
    f016:	2201      	movgt	r2, #1
    f018:	42a1      	cmp	r1, r4
    f01a:	bfc4      	itt	gt
    f01c:	220a      	movgt	r2, #10
    f01e:	2100      	movgt	r1, #0
        for (j = 0; j < N; j++)
    f020:	2d01      	cmp	r5, #1
    f022:	4491      	add	r9, r2
    f024:	d09e      	beq.n	ef64 <matrix_test+0xd80>
            cur = C[i * N + j];
    f026:	eb03 0787 	add.w	r7, r3, r7, lsl #2
    f02a:	687a      	ldr	r2, [r7, #4]
            tmp += cur;
    f02c:	4411      	add	r1, r2
            if (tmp > clipval)
    f02e:	4282      	cmp	r2, r0
    f030:	f04f 0000 	mov.w	r0, #0
    f034:	bfc8      	it	gt
    f036:	2001      	movgt	r0, #1
    f038:	42a1      	cmp	r1, r4
    f03a:	bfc4      	itt	gt
    f03c:	200a      	movgt	r0, #10
    f03e:	2100      	movgt	r1, #0
        for (j = 0; j < N; j++)
    f040:	2d02      	cmp	r5, #2
    f042:	4481      	add	r9, r0
    f044:	f47f af81 	bne.w	ef4a <matrix_test+0xd66>
            cur = C[i * N + j];
    f048:	4610      	mov	r0, r2
    f04a:	e78b      	b.n	ef64 <matrix_test+0xd80>
    f04c:	f8dd b0a4 	ldr.w	fp, [sp, #164]	; 0xa4
    f050:	f240 0430 	movw	r4, #48	; 0x30
    f054:	9a08      	ldr	r2, [sp, #32]
    f056:	9902      	ldr	r1, [sp, #8]
    f058:	f2c1 0400 	movt	r4, #4096	; 0x1000
    f05c:	e003      	b.n	f066 <matrix_test+0xe82>
    crc = crc16(matrix_sum(N, C, clipval), crc);
    f05e:	3102      	adds	r1, #2
    f060:	6021      	str	r1, [r4, #0]
    f062:	f04f 0900 	mov.w	r9, #0
    f066:	1c48      	adds	r0, r1, #1
    f068:	6020      	str	r0, [r4, #0]
    f06a:	1c88      	adds	r0, r1, #2
    f06c:	6020      	str	r0, [r4, #0]
    f06e:	fa1f f089 	uxth.w	r0, r9
    f072:	4611      	mov	r1, r2
    f074:	f000 fa65 	bl	f542 <crcu16>
    matrix_add_const(N, A, -val); /* return matrix to initial value */
    f078:	6821      	ldr	r1, [r4, #0]
    for (i = 0; i < N; i++)
    f07a:	9a34      	ldr	r2, [sp, #208]	; 0xd0
    matrix_add_const(N, A, -val); /* return matrix to initial value */
    f07c:	3101      	adds	r1, #1
    for (i = 0; i < N; i++)
    f07e:	2a00      	cmp	r2, #0
    f080:	9009      	str	r0, [sp, #36]	; 0x24
    matrix_add_const(N, A, -val); /* return matrix to initial value */
    f082:	6021      	str	r1, [r4, #0]
    for (i = 0; i < N; i++)
    f084:	d079      	beq.n	f17a <matrix_test+0xf96>
    f086:	9934      	ldr	r1, [sp, #208]	; 0xd0
    f088:	f1ab 0902 	sub.w	r9, fp, #2
    f08c:	f001 0e03 	and.w	lr, r1, #3
    f090:	1e48      	subs	r0, r1, #1
    f092:	eba1 030e 	sub.w	r3, r1, lr
    f096:	ea4f 0841 	mov.w	r8, r1, lsl #1
    f09a:	f04f 0a00 	mov.w	sl, #0
    f09e:	465a      	mov	r2, fp
    f0a0:	900c      	str	r0, [sp, #48]	; 0x30
        for (j = 0; j < N; j++)
    f0a2:	980c      	ldr	r0, [sp, #48]	; 0x30
    f0a4:	2600      	movs	r6, #0
    f0a6:	2803      	cmp	r0, #3
    f0a8:	d334      	bcc.n	f114 <matrix_test+0xf30>
    f0aa:	e00a      	b.n	f0c2 <matrix_test+0xede>
    for (i = 0; i < N; i++)
    f0ac:	9934      	ldr	r1, [sp, #208]	; 0xd0
    f0ae:	f10a 0a01 	add.w	sl, sl, #1
    f0b2:	44c1      	add	r9, r8
    f0b4:	458a      	cmp	sl, r1
    f0b6:	4442      	add	r2, r8
    f0b8:	d05f      	beq.n	f17a <matrix_test+0xf96>
        for (j = 0; j < N; j++)
    f0ba:	980c      	ldr	r0, [sp, #48]	; 0x30
    f0bc:	2600      	movs	r6, #0
    f0be:	2803      	cmp	r0, #3
    f0c0:	d328      	bcc.n	f114 <matrix_test+0xf30>
    f0c2:	f8dd c0f8 	ldr.w	ip, [sp, #248]	; 0xf8
    f0c6:	f240 0030 	movw	r0, #48	; 0x30
    f0ca:	464f      	mov	r7, r9
    f0cc:	f2c1 0000 	movt	r0, #4096	; 0x1000
            A[i * N + j] += val;
    f0d0:	887c      	ldrh	r4, [r7, #2]
    f0d2:	6805      	ldr	r5, [r0, #0]
    f0d4:	eba4 040c 	sub.w	r4, r4, ip
    f0d8:	3501      	adds	r5, #1
    f0da:	6005      	str	r5, [r0, #0]
    f0dc:	807c      	strh	r4, [r7, #2]
    f0de:	eb02 0446 	add.w	r4, r2, r6, lsl #1
    f0e2:	8865      	ldrh	r5, [r4, #2]
    f0e4:	6801      	ldr	r1, [r0, #0]
    f0e6:	eba5 050c 	sub.w	r5, r5, ip
    f0ea:	3101      	adds	r1, #1
    f0ec:	6001      	str	r1, [r0, #0]
    f0ee:	8065      	strh	r5, [r4, #2]
    f0f0:	88a1      	ldrh	r1, [r4, #4]
    f0f2:	6805      	ldr	r5, [r0, #0]
    f0f4:	eba1 010c 	sub.w	r1, r1, ip
    f0f8:	3501      	adds	r5, #1
    f0fa:	6005      	str	r5, [r0, #0]
    f0fc:	80a1      	strh	r1, [r4, #4]
    f0fe:	f837 1f08 	ldrh.w	r1, [r7, #8]!
    f102:	6804      	ldr	r4, [r0, #0]
        for (j = 0; j < N; j++)
    f104:	3604      	adds	r6, #4
            A[i * N + j] += val;
    f106:	eba1 010c 	sub.w	r1, r1, ip
    f10a:	3401      	adds	r4, #1
        for (j = 0; j < N; j++)
    f10c:	42b3      	cmp	r3, r6
            A[i * N + j] += val;
    f10e:	6004      	str	r4, [r0, #0]
    f110:	8039      	strh	r1, [r7, #0]
        for (j = 0; j < N; j++)
    f112:	d1dd      	bne.n	f0d0 <matrix_test+0xeec>
    f114:	f1be 0f00 	cmp.w	lr, #0
    f118:	d0c8      	beq.n	f0ac <matrix_test+0xec8>
    f11a:	9934      	ldr	r1, [sp, #208]	; 0xd0
    f11c:	f240 0030 	movw	r0, #48	; 0x30
    f120:	fb0a f101 	mul.w	r1, sl, r1
            A[i * N + j] += val;
    f124:	440e      	add	r6, r1
    f126:	f2c1 0000 	movt	r0, #4096	; 0x1000
    f12a:	f83b 1016 	ldrh.w	r1, [fp, r6, lsl #1]
    f12e:	6804      	ldr	r4, [r0, #0]
    f130:	9f3e      	ldr	r7, [sp, #248]	; 0xf8
    f132:	3401      	adds	r4, #1
    f134:	1bc9      	subs	r1, r1, r7
        for (j = 0; j < N; j++)
    f136:	f1be 0f01 	cmp.w	lr, #1
            A[i * N + j] += val;
    f13a:	6004      	str	r4, [r0, #0]
    f13c:	f82b 1016 	strh.w	r1, [fp, r6, lsl #1]
        for (j = 0; j < N; j++)
    f140:	d0b4      	beq.n	f0ac <matrix_test+0xec8>
    f142:	f240 0030 	movw	r0, #48	; 0x30
            A[i * N + j] += val;
    f146:	eb0b 0646 	add.w	r6, fp, r6, lsl #1
    f14a:	f2c1 0000 	movt	r0, #4096	; 0x1000
    f14e:	8871      	ldrh	r1, [r6, #2]
    f150:	6804      	ldr	r4, [r0, #0]
    f152:	9f3e      	ldr	r7, [sp, #248]	; 0xf8
    f154:	3401      	adds	r4, #1
    f156:	1bc9      	subs	r1, r1, r7
        for (j = 0; j < N; j++)
    f158:	f1be 0f02 	cmp.w	lr, #2
            A[i * N + j] += val;
    f15c:	6004      	str	r4, [r0, #0]
    f15e:	8071      	strh	r1, [r6, #2]
        for (j = 0; j < N; j++)
    f160:	d0a4      	beq.n	f0ac <matrix_test+0xec8>
    f162:	f240 0030 	movw	r0, #48	; 0x30
    f166:	f2c1 0000 	movt	r0, #4096	; 0x1000
            A[i * N + j] += val;
    f16a:	88b1      	ldrh	r1, [r6, #4]
    f16c:	6804      	ldr	r4, [r0, #0]
    f16e:	9f3e      	ldr	r7, [sp, #248]	; 0xf8
    f170:	3401      	adds	r4, #1
    f172:	1bc9      	subs	r1, r1, r7
    f174:	6004      	str	r4, [r0, #0]
    f176:	80b1      	strh	r1, [r6, #4]
    f178:	e798      	b.n	f0ac <matrix_test+0xec8>
    return crc;
    f17a:	9809      	ldr	r0, [sp, #36]	; 0x24
    f17c:	b200      	sxth	r0, r0
    f17e:	b035      	add	sp, #212	; 0xd4
    f180:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0000f184 <core_bench_state>:
{
    f184:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    f188:	b093      	sub	sp, #76	; 0x4c
    f18a:	9001      	str	r0, [sp, #4]
    f18c:	2000      	movs	r0, #0
        final_counts[i] = track_counts[i] = 0;
    f18e:	e9cd 0003 	strd	r0, r0, [sp, #12]
    f192:	e9cd 0005 	strd	r0, r0, [sp, #20]
    f196:	e9cd 0007 	strd	r0, r0, [sp, #28]
    f19a:	e9cd 0009 	strd	r0, r0, [sp, #36]	; 0x24
    f19e:	e9cd 000b 	strd	r0, r0, [sp, #44]	; 0x2c
    f1a2:	e9cd 000d 	strd	r0, r0, [sp, #52]	; 0x34
    f1a6:	e9cd 000f 	strd	r0, r0, [sp, #60]	; 0x3c
    f1aa:	e9cd 0011 	strd	r0, r0, [sp, #68]	; 0x44
    while (*p != 0)
    f1ae:	7808      	ldrb	r0, [r1, #0]
    p = memblock;
    f1b0:	f240 0730 	movw	r7, #48	; 0x30
    f1b4:	4699      	mov	r9, r3
    f1b6:	4692      	mov	sl, r2
    f1b8:	460d      	mov	r5, r1
    f1ba:	f2c1 0700 	movt	r7, #4096	; 0x1000
    ee_u8 *p = memblock;
    f1be:	9102      	str	r1, [sp, #8]
    while (*p != 0)
    f1c0:	b1b8      	cbz	r0, f1f2 <core_bench_state+0x6e>
        enum CORE_STATE fstate = core_state_transition(&p, track_counts);
    f1c2:	6839      	ldr	r1, [r7, #0]
    f1c4:	f10d 0808 	add.w	r8, sp, #8
    f1c8:	ac03      	add	r4, sp, #12
    f1ca:	ae0b      	add	r6, sp, #44	; 0x2c
    f1cc:	1c48      	adds	r0, r1, #1
    f1ce:	6038      	str	r0, [r7, #0]
    f1d0:	4640      	mov	r0, r8
    f1d2:	4621      	mov	r1, r4
    f1d4:	f000 f89a 	bl	f30c <core_state_transition>
        final_counts[fstate]++;
    f1d8:	6839      	ldr	r1, [r7, #0]
    f1da:	f856 2020 	ldr.w	r2, [r6, r0, lsl #2]
    f1de:	3101      	adds	r1, #1
    f1e0:	6039      	str	r1, [r7, #0]
    while (*p != 0)
    f1e2:	9b02      	ldr	r3, [sp, #8]
        final_counts[fstate]++;
    f1e4:	3201      	adds	r2, #1
    while (*p != 0)
    f1e6:	781b      	ldrb	r3, [r3, #0]
        final_counts[fstate]++;
    f1e8:	f846 2020 	str.w	r2, [r6, r0, lsl #2]
    while (*p != 0)
    f1ec:	2b00      	cmp	r3, #0
    f1ee:	d1ed      	bne.n	f1cc <core_bench_state+0x48>
    f1f0:	e000      	b.n	f1f4 <core_bench_state+0x70>
    p = memblock;
    f1f2:	6839      	ldr	r1, [r7, #0]
    f1f4:	1c48      	adds	r0, r1, #1
    f1f6:	6038      	str	r0, [r7, #0]
    f1f8:	9901      	ldr	r1, [sp, #4]
    f1fa:	f8dd b070 	ldr.w	fp, [sp, #112]	; 0x70
    while (p < (memblock + blksize))
    f1fe:	2901      	cmp	r1, #1
    f200:	eb05 0801 	add.w	r8, r5, r1
    f204:	9502      	str	r5, [sp, #8]
    f206:	db13      	blt.n	f230 <core_bench_state+0xac>
    f208:	4629      	mov	r1, r5
        if (*p != ',')
    f20a:	780a      	ldrb	r2, [r1, #0]
    f20c:	2a2c      	cmp	r2, #44	; 0x2c
    f20e:	d108      	bne.n	f222 <core_bench_state+0x9e>
        p += step;
    f210:	4459      	add	r1, fp
    f212:	3001      	adds	r0, #1
    while (p < (memblock + blksize))
    f214:	4541      	cmp	r1, r8
        p += step;
    f216:	6038      	str	r0, [r7, #0]
    f218:	9102      	str	r1, [sp, #8]
    while (p < (memblock + blksize))
    f21a:	d209      	bcs.n	f230 <core_bench_state+0xac>
        if (*p != ',')
    f21c:	780a      	ldrb	r2, [r1, #0]
    f21e:	2a2c      	cmp	r2, #44	; 0x2c
    f220:	d0f6      	beq.n	f210 <core_bench_state+0x8c>
            *p ^= (ee_u8)seed1;
    f222:	ea82 020a 	eor.w	r2, r2, sl
    f226:	3001      	adds	r0, #1
    f228:	6038      	str	r0, [r7, #0]
    f22a:	700a      	strb	r2, [r1, #0]
        p += step;
    f22c:	6838      	ldr	r0, [r7, #0]
    f22e:	e7ef      	b.n	f210 <core_bench_state+0x8c>
    p = memblock;
    f230:	1c41      	adds	r1, r0, #1
    f232:	6039      	str	r1, [r7, #0]
    while (*p != 0)
    f234:	7828      	ldrb	r0, [r5, #0]
    p = memblock;
    f236:	9502      	str	r5, [sp, #8]
    while (*p != 0)
    f238:	b1b0      	cbz	r0, f268 <core_bench_state+0xe4>
    f23a:	f10d 0a08 	add.w	sl, sp, #8
    f23e:	ac03      	add	r4, sp, #12
    f240:	ae0b      	add	r6, sp, #44	; 0x2c
    f242:	bf00      	nop
        enum CORE_STATE fstate = core_state_transition(&p, track_counts);
    f244:	1c48      	adds	r0, r1, #1
    f246:	6038      	str	r0, [r7, #0]
    f248:	4650      	mov	r0, sl
    f24a:	4621      	mov	r1, r4
    f24c:	f000 f85e 	bl	f30c <core_state_transition>
        final_counts[fstate]++;
    f250:	6839      	ldr	r1, [r7, #0]
    f252:	f856 2020 	ldr.w	r2, [r6, r0, lsl #2]
    f256:	3101      	adds	r1, #1
    f258:	6039      	str	r1, [r7, #0]
    while (*p != 0)
    f25a:	9b02      	ldr	r3, [sp, #8]
        final_counts[fstate]++;
    f25c:	3201      	adds	r2, #1
    while (*p != 0)
    f25e:	781b      	ldrb	r3, [r3, #0]
        final_counts[fstate]++;
    f260:	f846 2020 	str.w	r2, [r6, r0, lsl #2]
    while (*p != 0)
    f264:	2b00      	cmp	r3, #0
    f266:	d1ed      	bne.n	f244 <core_bench_state+0xc0>
    p = memblock;
    f268:	3101      	adds	r1, #1
    f26a:	6039      	str	r1, [r7, #0]
    while (p < (memblock + blksize))
    f26c:	9801      	ldr	r0, [sp, #4]
    f26e:	9502      	str	r5, [sp, #8]
    f270:	2801      	cmp	r0, #1
    f272:	da07      	bge.n	f284 <core_bench_state+0x100>
    f274:	e010      	b.n	f298 <core_bench_state+0x114>
    f276:	bf00      	nop
        p += step;
    f278:	445d      	add	r5, fp
    f27a:	3101      	adds	r1, #1
    while (p < (memblock + blksize))
    f27c:	4545      	cmp	r5, r8
        p += step;
    f27e:	6039      	str	r1, [r7, #0]
    f280:	9502      	str	r5, [sp, #8]
    while (p < (memblock + blksize))
    f282:	d209      	bcs.n	f298 <core_bench_state+0x114>
        if (*p != ',')
    f284:	7828      	ldrb	r0, [r5, #0]
    f286:	282c      	cmp	r0, #44	; 0x2c
    f288:	d0f6      	beq.n	f278 <core_bench_state+0xf4>
            *p ^= (ee_u8)seed2;
    f28a:	ea80 0009 	eor.w	r0, r0, r9
    f28e:	3101      	adds	r1, #1
    f290:	6039      	str	r1, [r7, #0]
    f292:	7028      	strb	r0, [r5, #0]
        p += step;
    f294:	6839      	ldr	r1, [r7, #0]
    f296:	e7ef      	b.n	f278 <core_bench_state+0xf4>
    f298:	981d      	ldr	r0, [sp, #116]	; 0x74
    f29a:	2400      	movs	r4, #0
    f29c:	f10d 082c 	add.w	r8, sp, #44	; 0x2c
    f2a0:	ae03      	add	r6, sp, #12
    f2a2:	bf00      	nop
        crc = crcu32(final_counts[i], crc);
    f2a4:	f858 5024 	ldr.w	r5, [r8, r4, lsl #2]
    f2a8:	1c4a      	adds	r2, r1, #1
    f2aa:	603a      	str	r2, [r7, #0]
    crc = crc16((ee_s16)newval, crc);
    f2ac:	1c8a      	adds	r2, r1, #2
    f2ae:	603a      	str	r2, [r7, #0]
    return crcu16((ee_u16)newval, crc);
    f2b0:	3103      	adds	r1, #3
    f2b2:	b2aa      	uxth	r2, r5
    f2b4:	6039      	str	r1, [r7, #0]
    f2b6:	b281      	uxth	r1, r0
    f2b8:	4610      	mov	r0, r2
    f2ba:	f000 f942 	bl	f542 <crcu16>
    crc = crc16((ee_s16)(newval >> 16), crc);
    f2be:	683a      	ldr	r2, [r7, #0]
    return crcu16((ee_u16)newval, crc);
    f2c0:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    f2c2:	0c28      	lsrs	r0, r5, #16
    f2c4:	1c53      	adds	r3, r2, #1
    return crcu16((ee_u16)newval, crc);
    f2c6:	3202      	adds	r2, #2
    crc = crc16((ee_s16)(newval >> 16), crc);
    f2c8:	603b      	str	r3, [r7, #0]
    return crcu16((ee_u16)newval, crc);
    f2ca:	603a      	str	r2, [r7, #0]
    f2cc:	f000 f939 	bl	f542 <crcu16>
    f2d0:	4601      	mov	r1, r0
        crc = crcu32(track_counts[i], crc);
    f2d2:	6838      	ldr	r0, [r7, #0]
    f2d4:	f856 5024 	ldr.w	r5, [r6, r4, lsl #2]
    f2d8:	1c42      	adds	r2, r0, #1
    f2da:	603a      	str	r2, [r7, #0]
    crc = crc16((ee_s16)newval, crc);
    f2dc:	1c82      	adds	r2, r0, #2
    return crcu16((ee_u16)newval, crc);
    f2de:	3003      	adds	r0, #3
    crc = crc16((ee_s16)newval, crc);
    f2e0:	603a      	str	r2, [r7, #0]
    return crcu16((ee_u16)newval, crc);
    f2e2:	6038      	str	r0, [r7, #0]
    f2e4:	b2a8      	uxth	r0, r5
    f2e6:	f000 f92c 	bl	f542 <crcu16>
    crc = crc16((ee_s16)(newval >> 16), crc);
    f2ea:	683a      	ldr	r2, [r7, #0]
    return crcu16((ee_u16)newval, crc);
    f2ec:	4601      	mov	r1, r0
    crc = crc16((ee_s16)(newval >> 16), crc);
    f2ee:	0c28      	lsrs	r0, r5, #16
    f2f0:	1c53      	adds	r3, r2, #1
    return crcu16((ee_u16)newval, crc);
    f2f2:	3202      	adds	r2, #2
    crc = crc16((ee_s16)(newval >> 16), crc);
    f2f4:	603b      	str	r3, [r7, #0]
    return crcu16((ee_u16)newval, crc);
    f2f6:	603a      	str	r2, [r7, #0]
    f2f8:	f000 f923 	bl	f542 <crcu16>
    for (i = 0; i < NUM_CORE_STATES; i++)
    f2fc:	2c07      	cmp	r4, #7
    f2fe:	d002      	beq.n	f306 <core_bench_state+0x182>
        crc = crcu32(final_counts[i], crc);
    f300:	6839      	ldr	r1, [r7, #0]
    f302:	3401      	adds	r4, #1
    f304:	e7ce      	b.n	f2a4 <core_bench_state+0x120>
    return crc;
    f306:	b013      	add	sp, #76	; 0x4c
    f308:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0000f30c <core_state_transition>:
   end state is returned (either specific format determined or invalid).
*/

enum CORE_STATE
core_state_transition(ee_u8 **instr, ee_u32 *transition_count)
{
    f30c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    ee_u8 *         str = *instr;
    f310:	6803      	ldr	r3, [r0, #0]
                break;
            default:
                break;
        }
    }
    *instr = str;
    f312:	f240 0230 	movw	r2, #48	; 0x30
    for (; *str && state != CORE_INVALID; str++)
    f316:	781e      	ldrb	r6, [r3, #0]
    f318:	4684      	mov	ip, r0
    f31a:	2e00      	cmp	r6, #0
    *instr = str;
    f31c:	f2c1 0200 	movt	r2, #4096	; 0x1000
    for (; *str && state != CORE_INVALID; str++)
    f320:	f000 80f9 	beq.w	f516 <core_state_transition+0x20a>
    f324:	f101 0e04 	add.w	lr, r1, #4
    f328:	f101 0810 	add.w	r8, r1, #16
    f32c:	f101 0914 	add.w	r9, r1, #20
    f330:	3301      	adds	r3, #1
    f332:	2000      	movs	r0, #0
        if (NEXT_SYMBOL == ',') /* end of this input */
    f334:	b2f7      	uxtb	r7, r6
    f336:	2f2c      	cmp	r7, #44	; 0x2c
    f338:	d119      	bne.n	f36e <core_state_transition+0x62>
    f33a:	e0ef      	b.n	f51c <core_state_transition+0x210>
    f33c:	68c8      	ldr	r0, [r1, #12]
    f33e:	6814      	ldr	r4, [r2, #0]
    f340:	3001      	adds	r0, #1
    f342:	3401      	adds	r4, #1
    f344:	6014      	str	r4, [r2, #0]
    f346:	60c8      	str	r0, [r1, #12]
    f348:	f1a6 002b 	sub.w	r0, r6, #43	; 0x2b
    f34c:	f010 0ffd 	tst.w	r0, #253	; 0xfd
    f350:	f04f 0001 	mov.w	r0, #1
    f354:	bf08      	it	eq
    f356:	2006      	moveq	r0, #6
    for (; *str && state != CORE_INVALID; str++)
    f358:	f813 6b01 	ldrb.w	r6, [r3], #1
    f35c:	2801      	cmp	r0, #1
    f35e:	bf18      	it	ne
    f360:	2e00      	cmpne	r6, #0
    f362:	f000 80da 	beq.w	f51a <core_state_transition+0x20e>
        if (NEXT_SYMBOL == ',') /* end of this input */
    f366:	b2f7      	uxtb	r7, r6
    f368:	2f2c      	cmp	r7, #44	; 0x2c
    f36a:	f000 80d7 	beq.w	f51c <core_state_transition+0x210>
    f36e:	2804      	cmp	r0, #4
    f370:	da18      	bge.n	f3a4 <core_state_transition+0x98>
    f372:	2802      	cmp	r0, #2
    f374:	da30      	bge.n	f3d8 <core_state_transition+0xcc>
    f376:	2800      	cmp	r0, #0
    f378:	d1ee      	bne.n	f358 <core_state_transition+0x4c>
                if (ee_isdigit(NEXT_SYMBOL))
    f37a:	6815      	ldr	r5, [r2, #0]
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    f37c:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
    f380:	b2c0      	uxtb	r0, r0
                if (ee_isdigit(NEXT_SYMBOL))
    f382:	1c6c      	adds	r4, r5, #1
    f384:	280a      	cmp	r0, #10
    f386:	6014      	str	r4, [r2, #0]
    f388:	f0c0 80ae 	bcc.w	f4e8 <core_state_transition+0x1dc>
                else if (NEXT_SYMBOL == '+' || NEXT_SYMBOL == '-')
    f38c:	2f2b      	cmp	r7, #43	; 0x2b
    f38e:	f04f 0002 	mov.w	r0, #2
    f392:	bf18      	it	ne
    f394:	2f2d      	cmpne	r7, #45	; 0x2d
    f396:	f000 80a8 	beq.w	f4ea <core_state_transition+0x1de>
    f39a:	2f2e      	cmp	r7, #46	; 0x2e
    f39c:	f040 80b2 	bne.w	f504 <core_state_transition+0x1f8>
    f3a0:	2005      	movs	r0, #5
    f3a2:	e0a2      	b.n	f4ea <core_state_transition+0x1de>
    f3a4:	2806      	cmp	r0, #6
    f3a6:	da31      	bge.n	f40c <core_state_transition+0x100>
    f3a8:	2805      	cmp	r0, #5
    f3aa:	d143      	bne.n	f434 <core_state_transition+0x128>
                if (NEXT_SYMBOL == 'E' || NEXT_SYMBOL == 'e')
    f3ac:	f046 0020 	orr.w	r0, r6, #32
    f3b0:	b2c0      	uxtb	r0, r0
    f3b2:	2865      	cmp	r0, #101	; 0x65
    f3b4:	d168      	bne.n	f488 <core_state_transition+0x17c>
                    transition_count[CORE_FLOAT]++;
    f3b6:	f8d9 0000 	ldr.w	r0, [r9]
    f3ba:	6814      	ldr	r4, [r2, #0]
    f3bc:	3001      	adds	r0, #1
    f3be:	3401      	adds	r4, #1
    f3c0:	6014      	str	r4, [r2, #0]
    f3c2:	f8c9 0000 	str.w	r0, [r9]
    f3c6:	2003      	movs	r0, #3
    for (; *str && state != CORE_INVALID; str++)
    f3c8:	f813 6b01 	ldrb.w	r6, [r3], #1
    f3cc:	2801      	cmp	r0, #1
    f3ce:	bf18      	it	ne
    f3d0:	2e00      	cmpne	r6, #0
    f3d2:	d1c8      	bne.n	f366 <core_state_transition+0x5a>
    f3d4:	e0a1      	b.n	f51a <core_state_transition+0x20e>
    f3d6:	bf00      	nop
    f3d8:	d1b0      	bne.n	f33c <core_state_transition+0x30>
                if (ee_isdigit(NEXT_SYMBOL))
    f3da:	6810      	ldr	r0, [r2, #0]
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    f3dc:	f1a6 0530 	sub.w	r5, r6, #48	; 0x30
    f3e0:	b2ed      	uxtb	r5, r5
                if (ee_isdigit(NEXT_SYMBOL))
    f3e2:	1c44      	adds	r4, r0, #1
    f3e4:	2d09      	cmp	r5, #9
    f3e6:	6014      	str	r4, [r2, #0]
    f3e8:	d95f      	bls.n	f4aa <core_state_transition+0x19e>
    f3ea:	688c      	ldr	r4, [r1, #8]
    f3ec:	3002      	adds	r0, #2
    f3ee:	3401      	adds	r4, #1
    f3f0:	6010      	str	r0, [r2, #0]
    f3f2:	2001      	movs	r0, #1
    f3f4:	608c      	str	r4, [r1, #8]
    f3f6:	2f2e      	cmp	r7, #46	; 0x2e
    f3f8:	bf08      	it	eq
    f3fa:	2005      	moveq	r0, #5
    for (; *str && state != CORE_INVALID; str++)
    f3fc:	f813 6b01 	ldrb.w	r6, [r3], #1
    f400:	2801      	cmp	r0, #1
    f402:	bf18      	it	ne
    f404:	2e00      	cmpne	r6, #0
    f406:	d1ae      	bne.n	f366 <core_state_transition+0x5a>
    f408:	e087      	b.n	f51a <core_state_transition+0x20e>
    f40a:	bf00      	nop
    f40c:	d025      	beq.n	f45a <core_state_transition+0x14e>
    f40e:	2807      	cmp	r0, #7
    f410:	d1a2      	bne.n	f358 <core_state_transition+0x4c>
                if (!ee_isdigit(NEXT_SYMBOL))
    f412:	6810      	ldr	r0, [r2, #0]
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    f414:	f1a6 0530 	sub.w	r5, r6, #48	; 0x30
    f418:	b2ed      	uxtb	r5, r5
                if (!ee_isdigit(NEXT_SYMBOL))
    f41a:	1c44      	adds	r4, r0, #1
    f41c:	2d0a      	cmp	r5, #10
    f41e:	6014      	str	r4, [r2, #0]
    f420:	f080 8086 	bcs.w	f530 <core_state_transition+0x224>
    f424:	2007      	movs	r0, #7
    for (; *str && state != CORE_INVALID; str++)
    f426:	f813 6b01 	ldrb.w	r6, [r3], #1
    f42a:	2801      	cmp	r0, #1
    f42c:	bf18      	it	ne
    f42e:	2e00      	cmpne	r6, #0
    f430:	d199      	bne.n	f366 <core_state_transition+0x5a>
    f432:	e072      	b.n	f51a <core_state_transition+0x20e>
                if (NEXT_SYMBOL == '.')
    f434:	2f2e      	cmp	r7, #46	; 0x2e
    f436:	d146      	bne.n	f4c6 <core_state_transition+0x1ba>
                    transition_count[CORE_INT]++;
    f438:	f8d8 0000 	ldr.w	r0, [r8]
    f43c:	6814      	ldr	r4, [r2, #0]
    f43e:	3001      	adds	r0, #1
    f440:	3401      	adds	r4, #1
    f442:	6014      	str	r4, [r2, #0]
    f444:	f8c8 0000 	str.w	r0, [r8]
    f448:	2005      	movs	r0, #5
    for (; *str && state != CORE_INVALID; str++)
    f44a:	f813 6b01 	ldrb.w	r6, [r3], #1
    f44e:	2801      	cmp	r0, #1
    f450:	bf18      	it	ne
    f452:	2e00      	cmpne	r6, #0
    f454:	f47f af87 	bne.w	f366 <core_state_transition+0x5a>
    f458:	e05f      	b.n	f51a <core_state_transition+0x20e>
                if (ee_isdigit(NEXT_SYMBOL))
    f45a:	6810      	ldr	r0, [r2, #0]
    f45c:	1c44      	adds	r4, r0, #1
    f45e:	6014      	str	r4, [r2, #0]
    f460:	698d      	ldr	r5, [r1, #24]
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    f462:	f1a6 0430 	sub.w	r4, r6, #48	; 0x30
    f466:	3002      	adds	r0, #2
    f468:	b2e4      	uxtb	r4, r4
    f46a:	3501      	adds	r5, #1
    f46c:	6010      	str	r0, [r2, #0]
    f46e:	2007      	movs	r0, #7
    f470:	618d      	str	r5, [r1, #24]
    f472:	2c09      	cmp	r4, #9
    f474:	bf88      	it	hi
    f476:	2001      	movhi	r0, #1
    for (; *str && state != CORE_INVALID; str++)
    f478:	f813 6b01 	ldrb.w	r6, [r3], #1
    f47c:	2801      	cmp	r0, #1
    f47e:	bf18      	it	ne
    f480:	2e00      	cmpne	r6, #0
    f482:	f47f af70 	bne.w	f366 <core_state_transition+0x5a>
    f486:	e048      	b.n	f51a <core_state_transition+0x20e>
                else if (!ee_isdigit(NEXT_SYMBOL))
    f488:	6810      	ldr	r0, [r2, #0]
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    f48a:	f1a6 0530 	sub.w	r5, r6, #48	; 0x30
    f48e:	b2ed      	uxtb	r5, r5
                else if (!ee_isdigit(NEXT_SYMBOL))
    f490:	1c44      	adds	r4, r0, #1
    f492:	2d09      	cmp	r5, #9
    f494:	6014      	str	r4, [r2, #0]
    f496:	d848      	bhi.n	f52a <core_state_transition+0x21e>
    f498:	2005      	movs	r0, #5
    for (; *str && state != CORE_INVALID; str++)
    f49a:	f813 6b01 	ldrb.w	r6, [r3], #1
    f49e:	2801      	cmp	r0, #1
    f4a0:	bf18      	it	ne
    f4a2:	2e00      	cmpne	r6, #0
    f4a4:	f47f af5f 	bne.w	f366 <core_state_transition+0x5a>
    f4a8:	e037      	b.n	f51a <core_state_transition+0x20e>
                    transition_count[CORE_S1]++;
    f4aa:	688c      	ldr	r4, [r1, #8]
    f4ac:	3002      	adds	r0, #2
    f4ae:	3401      	adds	r4, #1
    f4b0:	6010      	str	r0, [r2, #0]
    f4b2:	608c      	str	r4, [r1, #8]
    f4b4:	2004      	movs	r0, #4
    for (; *str && state != CORE_INVALID; str++)
    f4b6:	f813 6b01 	ldrb.w	r6, [r3], #1
    f4ba:	2801      	cmp	r0, #1
    f4bc:	bf18      	it	ne
    f4be:	2e00      	cmpne	r6, #0
    f4c0:	f47f af51 	bne.w	f366 <core_state_transition+0x5a>
    f4c4:	e029      	b.n	f51a <core_state_transition+0x20e>
                else if (!ee_isdigit(NEXT_SYMBOL))
    f4c6:	6810      	ldr	r0, [r2, #0]
    retval = ((c >= '0') & (c <= '9')) ? 1 : 0;
    f4c8:	f1a6 0530 	sub.w	r5, r6, #48	; 0x30
    f4cc:	b2ed      	uxtb	r5, r5
                else if (!ee_isdigit(NEXT_SYMBOL))
    f4ce:	1c44      	adds	r4, r0, #1
    f4d0:	2d09      	cmp	r5, #9
    f4d2:	6014      	str	r4, [r2, #0]
    f4d4:	d82b      	bhi.n	f52e <core_state_transition+0x222>
    f4d6:	2004      	movs	r0, #4
    for (; *str && state != CORE_INVALID; str++)
    f4d8:	f813 6b01 	ldrb.w	r6, [r3], #1
    f4dc:	2801      	cmp	r0, #1
    f4de:	bf18      	it	ne
    f4e0:	2e00      	cmpne	r6, #0
    f4e2:	f47f af40 	bne.w	f366 <core_state_transition+0x5a>
    f4e6:	e018      	b.n	f51a <core_state_transition+0x20e>
    f4e8:	2004      	movs	r0, #4
                transition_count[CORE_START]++;
    f4ea:	680d      	ldr	r5, [r1, #0]
    f4ec:	3401      	adds	r4, #1
    f4ee:	3501      	adds	r5, #1
    f4f0:	6014      	str	r4, [r2, #0]
    f4f2:	600d      	str	r5, [r1, #0]
    for (; *str && state != CORE_INVALID; str++)
    f4f4:	f813 6b01 	ldrb.w	r6, [r3], #1
    f4f8:	2801      	cmp	r0, #1
    f4fa:	bf18      	it	ne
    f4fc:	2e00      	cmpne	r6, #0
    f4fe:	f47f af32 	bne.w	f366 <core_state_transition+0x5a>
    f502:	e00a      	b.n	f51a <core_state_transition+0x20e>
                    transition_count[CORE_INVALID]++;
    f504:	f8de 0000 	ldr.w	r0, [lr]
    f508:	1cac      	adds	r4, r5, #2
    f50a:	3001      	adds	r0, #1
    f50c:	6014      	str	r4, [r2, #0]
    f50e:	f8ce 0000 	str.w	r0, [lr]
    f512:	2001      	movs	r0, #1
    f514:	e7e9      	b.n	f4ea <core_state_transition+0x1de>
    f516:	2000      	movs	r0, #0
    f518:	e000      	b.n	f51c <core_state_transition+0x210>
    *instr = str;
    f51a:	3b01      	subs	r3, #1
    f51c:	6811      	ldr	r1, [r2, #0]
    f51e:	3101      	adds	r1, #1
    f520:	6011      	str	r1, [r2, #0]
    f522:	f8cc 3000 	str.w	r3, [ip]
    return state;
    f526:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    f52a:	46ce      	mov	lr, r9
    f52c:	e000      	b.n	f530 <core_state_transition+0x224>
    f52e:	46c6      	mov	lr, r8
    f530:	f8de 1000 	ldr.w	r1, [lr]
    f534:	3002      	adds	r0, #2
    f536:	3101      	adds	r1, #1
    f538:	6010      	str	r0, [r2, #0]
    f53a:	f8ce 1000 	str.w	r1, [lr]
    f53e:	2001      	movs	r0, #1
    f540:	e7ec      	b.n	f51c <core_state_transition+0x210>

0000f542 <crcu16>:
{
    f542:	b5b0      	push	{r4, r5, r7, lr}
    crc = crcu8((ee_u8)(newval), crc);
    f544:	f240 0c30 	movw	ip, #48	; 0x30
    f548:	f2c1 0c00 	movt	ip, #4096	; 0x1000
    f54c:	f8dc e000 	ldr.w	lr, [ip]
    f550:	b2c3      	uxtb	r3, r0
    f552:	f10e 0201 	add.w	r2, lr, #1
    f556:	f8cc 2000 	str.w	r2, [ip]
    f55a:	f24a 0201 	movw	r2, #40961	; 0xa001
    f55e:	f6cf 72ff 	movt	r2, #65535	; 0xffff
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f562:	ea81 0400 	eor.w	r4, r1, r0
        if (carry)
    f566:	ea82 0551 	eor.w	r5, r2, r1, lsr #1
    f56a:	07e4      	lsls	r4, r4, #31
    f56c:	bf08      	it	eq
    f56e:	084d      	lsreq	r5, r1, #1
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f570:	ea85 0153 	eor.w	r1, r5, r3, lsr #1
        crc >>= 1;
    f574:	f3c5 044e 	ubfx	r4, r5, #1, #15
        if (carry)
    f578:	07c9      	lsls	r1, r1, #31
    f57a:	bf18      	it	ne
    f57c:	4054      	eorne	r4, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f57e:	ea84 0193 	eor.w	r1, r4, r3, lsr #2
        crc >>= 1;
    f582:	f3c4 044e 	ubfx	r4, r4, #1, #15
        if (carry)
    f586:	07c9      	lsls	r1, r1, #31
    f588:	bf18      	it	ne
    f58a:	4054      	eorne	r4, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f58c:	ea84 01d3 	eor.w	r1, r4, r3, lsr #3
        crc >>= 1;
    f590:	f3c4 044e 	ubfx	r4, r4, #1, #15
        if (carry)
    f594:	07c9      	lsls	r1, r1, #31
    f596:	bf18      	it	ne
    f598:	4054      	eorne	r4, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f59a:	ea84 1113 	eor.w	r1, r4, r3, lsr #4
        crc >>= 1;
    f59e:	f3c4 044e 	ubfx	r4, r4, #1, #15
        if (carry)
    f5a2:	07c9      	lsls	r1, r1, #31
    f5a4:	bf18      	it	ne
    f5a6:	4054      	eorne	r4, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f5a8:	ea84 1153 	eor.w	r1, r4, r3, lsr #5
        crc >>= 1;
    f5ac:	f3c4 044e 	ubfx	r4, r4, #1, #15
        if (carry)
    f5b0:	07c9      	lsls	r1, r1, #31
    f5b2:	bf18      	it	ne
    f5b4:	4054      	eorne	r4, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f5b6:	ea84 1193 	eor.w	r1, r4, r3, lsr #6
        crc >>= 1;
    f5ba:	f3c4 044e 	ubfx	r4, r4, #1, #15
        if (carry)
    f5be:	07c9      	lsls	r1, r1, #31
    f5c0:	bf18      	it	ne
    f5c2:	4054      	eorne	r4, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f5c4:	f004 0101 	and.w	r1, r4, #1
        crc >>= 1;
    f5c8:	f3c4 044e 	ubfx	r4, r4, #1, #15
        if (carry)
    f5cc:	ebb1 1fd3 	cmp.w	r1, r3, lsr #7
    crc = crcu8((ee_u8)((newval) >> 8), crc);
    f5d0:	f10e 0102 	add.w	r1, lr, #2
        if (carry)
    f5d4:	bf18      	it	ne
    f5d6:	4054      	eorne	r4, r2
    crc = crcu8((ee_u8)((newval) >> 8), crc);
    f5d8:	f8cc 1000 	str.w	r1, [ip]
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f5dc:	ea84 2110 	eor.w	r1, r4, r0, lsr #8
        crc >>= 1;
    f5e0:	f3c4 034e 	ubfx	r3, r4, #1, #15
        if (carry)
    f5e4:	07c9      	lsls	r1, r1, #31
    f5e6:	bf18      	it	ne
    f5e8:	4053      	eorne	r3, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f5ea:	ea83 2150 	eor.w	r1, r3, r0, lsr #9
        crc >>= 1;
    f5ee:	f3c3 034e 	ubfx	r3, r3, #1, #15
        if (carry)
    f5f2:	07c9      	lsls	r1, r1, #31
    f5f4:	bf18      	it	ne
    f5f6:	4053      	eorne	r3, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f5f8:	ea83 2190 	eor.w	r1, r3, r0, lsr #10
        crc >>= 1;
    f5fc:	f3c3 034e 	ubfx	r3, r3, #1, #15
        if (carry)
    f600:	07c9      	lsls	r1, r1, #31
    f602:	bf18      	it	ne
    f604:	4053      	eorne	r3, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f606:	ea83 21d0 	eor.w	r1, r3, r0, lsr #11
        crc >>= 1;
    f60a:	f3c3 034e 	ubfx	r3, r3, #1, #15
        if (carry)
    f60e:	07c9      	lsls	r1, r1, #31
    f610:	bf18      	it	ne
    f612:	4053      	eorne	r3, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f614:	ea83 3110 	eor.w	r1, r3, r0, lsr #12
        crc >>= 1;
    f618:	f3c3 034e 	ubfx	r3, r3, #1, #15
        if (carry)
    f61c:	07c9      	lsls	r1, r1, #31
    f61e:	bf18      	it	ne
    f620:	4053      	eorne	r3, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f622:	ea83 3150 	eor.w	r1, r3, r0, lsr #13
        crc >>= 1;
    f626:	f3c3 034e 	ubfx	r3, r3, #1, #15
        if (carry)
    f62a:	07c9      	lsls	r1, r1, #31
    f62c:	bf18      	it	ne
    f62e:	4053      	eorne	r3, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f630:	ea83 3190 	eor.w	r1, r3, r0, lsr #14
        crc >>= 1;
    f634:	f3c3 034e 	ubfx	r3, r3, #1, #15
        if (carry)
    f638:	07c9      	lsls	r1, r1, #31
    f63a:	bf18      	it	ne
    f63c:	4053      	eorne	r3, r2
        x16 = (ee_u8)((data & 1) ^ ((ee_u8)crc & 1));
    f63e:	f003 0201 	and.w	r2, r3, #1
        crc >>= 1;
    f642:	f3c3 014e 	ubfx	r1, r3, #1, #15
    f646:	f24a 0301 	movw	r3, #40961	; 0xa001
        if (carry)
    f64a:	ebb2 3fd0 	cmp.w	r2, r0, lsr #15
    f64e:	bf18      	it	ne
    f650:	4059      	eorne	r1, r3
    return crc;
    f652:	4608      	mov	r0, r1
    f654:	bdb0      	pop	{r4, r5, r7, pc}

0000f656 <clock>:
  return dummy;
    f656:	f240 0030 	movw	r0, #48	; 0x30
    f65a:	f2c1 0000 	movt	r0, #4096	; 0x1000
    f65e:	6801      	ldr	r1, [r0, #0]
    f660:	3101      	adds	r1, #1
    f662:	6001      	str	r1, [r0, #0]
    f664:	f240 0138 	movw	r1, #56	; 0x38
    f668:	f2c1 0100 	movt	r1, #4096	; 0x1000
    f66c:	6808      	ldr	r0, [r1, #0]
    f66e:	6849      	ldr	r1, [r1, #4]
    f670:	4770      	bx	lr

0000f672 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    f672:	b083      	sub	sp, #12
    f674:	b580      	push	{r7, lr}
    f676:	b083      	sub	sp, #12
    f678:	4684      	mov	ip, r0
    f67a:	a805      	add	r0, sp, #20
    f67c:	c00e      	stmia	r0!, {r1, r2, r3}
  va_list va;
  va_start(va, format);
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    f67e:	f240 0030 	movw	r0, #48	; 0x30
    f682:	f2c1 0000 	movt	r0, #4096	; 0x1000
    f686:	6801      	ldr	r1, [r0, #0]
    f688:	f10d 0e14 	add.w	lr, sp, #20
    f68c:	3101      	adds	r1, #1
  va_start(va, format);
    f68e:	f8cd e008 	str.w	lr, [sp, #8]
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    f692:	6001      	str	r1, [r0, #0]
    f694:	f24f 60b9 	movw	r0, #63161	; 0xf6b9
    f698:	f2c0 0000 	movt	r0, #0
    f69c:	f10d 0107 	add.w	r1, sp, #7
    f6a0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    f6a4:	4663      	mov	r3, ip
    f6a6:	f8cd e000 	str.w	lr, [sp]
    f6aa:	f000 f811 	bl	f6d0 <_vsnprintf>
  va_end(va);
  return ret;
    f6ae:	b003      	add	sp, #12
    f6b0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    f6b4:	b003      	add	sp, #12
    f6b6:	4770      	bx	lr

0000f6b8 <_out_char>:
  if (character) {
    f6b8:	2800      	cmp	r0, #0
}
    f6ba:	bf08      	it	eq
    f6bc:	4770      	bxeq	lr
    _putchar(character);
    f6be:	f240 0130 	movw	r1, #48	; 0x30
    f6c2:	f2c1 0100 	movt	r1, #4096	; 0x1000
    f6c6:	680a      	ldr	r2, [r1, #0]
    f6c8:	3201      	adds	r2, #1
    f6ca:	600a      	str	r2, [r1, #0]
    f6cc:	f001 be63 	b.w	11396 <_putchar>

0000f6d0 <_vsnprintf>:
{
    f6d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    f6d4:	b09f      	sub	sp, #124	; 0x7c
    f6d6:	4688      	mov	r8, r1
    f6d8:	9928      	ldr	r1, [sp, #160]	; 0xa0
    f6da:	f240 2be9 	movw	fp, #745	; 0x2e9
    f6de:	f240 0530 	movw	r5, #48	; 0x30
    f6e2:	461e      	mov	r6, r3
    f6e4:	4691      	mov	r9, r2
    f6e6:	f2c0 0b01 	movt	fp, #1
    f6ea:	f2c1 0500 	movt	r5, #4096	; 0x1000
    f6ee:	f04f 0e00 	mov.w	lr, #0
    f6f2:	9116      	str	r1, [sp, #88]	; 0x58
    f6f4:	f1b8 0f00 	cmp.w	r8, #0
    f6f8:	bf18      	it	ne
    f6fa:	4683      	movne	fp, r0
    f6fc:	f8cd b04c 	str.w	fp, [sp, #76]	; 0x4c
    f700:	f8cd 8054 	str.w	r8, [sp, #84]	; 0x54
  while (*format)
    f704:	7830      	ldrb	r0, [r6, #0]
    f706:	2825      	cmp	r0, #37	; 0x25
    f708:	d008      	beq.n	f71c <_vsnprintf+0x4c>
    f70a:	bf00      	nop
    f70c:	2800      	cmp	r0, #0
    f70e:	f000 85da 	beq.w	102c6 <_vsnprintf+0xbf6>
      out(*format, buffer, idx++, maxlen);
    f712:	6829      	ldr	r1, [r5, #0]
    f714:	f10e 0401 	add.w	r4, lr, #1
    f718:	3101      	adds	r1, #1
    f71a:	e2e8      	b.n	fcee <_vsnprintf+0x61e>
      format++;
    f71c:	6829      	ldr	r1, [r5, #0]
    f71e:	2200      	movs	r2, #0
    flags = 0U;
    f720:	f04f 0a00 	mov.w	sl, #0
    f724:	e006      	b.n	f734 <_vsnprintf+0x64>
    f726:	bf00      	nop
    f728:	2f20      	cmp	r7, #32
    f72a:	d11f      	bne.n	f76c <_vsnprintf+0x9c>
    f72c:	2008      	movs	r0, #8
    f72e:	ea4a 0a00 	orr.w	sl, sl, r0
    f732:	3201      	adds	r2, #1
    f734:	188b      	adds	r3, r1, r2
    f736:	1c58      	adds	r0, r3, #1
    f738:	6028      	str	r0, [r5, #0]
      switch (*format) {
    f73a:	18b0      	adds	r0, r6, r2
    f73c:	7847      	ldrb	r7, [r0, #1]
    f73e:	2f2b      	cmp	r7, #43	; 0x2b
    f740:	d204      	bcs.n	f74c <_vsnprintf+0x7c>
    f742:	2f23      	cmp	r7, #35	; 0x23
    f744:	d3f0      	bcc.n	f728 <_vsnprintf+0x58>
    f746:	d111      	bne.n	f76c <_vsnprintf+0x9c>
    f748:	2010      	movs	r0, #16
    f74a:	e7f0      	b.n	f72e <_vsnprintf+0x5e>
    f74c:	2f2d      	cmp	r7, #45	; 0x2d
    f74e:	d203      	bcs.n	f758 <_vsnprintf+0x88>
    f750:	2f2b      	cmp	r7, #43	; 0x2b
    f752:	d10b      	bne.n	f76c <_vsnprintf+0x9c>
    f754:	2004      	movs	r0, #4
    f756:	e7ea      	b.n	f72e <_vsnprintf+0x5e>
    f758:	2f30      	cmp	r7, #48	; 0x30
    f75a:	d203      	bcs.n	f764 <_vsnprintf+0x94>
    f75c:	2f2d      	cmp	r7, #45	; 0x2d
    f75e:	d105      	bne.n	f76c <_vsnprintf+0x9c>
    f760:	2002      	movs	r0, #2
    f762:	e7e4      	b.n	f72e <_vsnprintf+0x5e>
    f764:	f040 80b3 	bne.w	f8ce <_vsnprintf+0x1fe>
    f768:	2001      	movs	r0, #1
    f76a:	e7e0      	b.n	f72e <_vsnprintf+0x5e>
    if (_is_digit(*format)) {
    f76c:	1c99      	adds	r1, r3, #2
    f76e:	460c      	mov	r4, r1
    f770:	6029      	str	r1, [r5, #0]
    else if (*format == '*') {
    f772:	4607      	mov	r7, r0
    f774:	f817 1f01 	ldrb.w	r1, [r7, #1]!
    f778:	292a      	cmp	r1, #42	; 0x2a
    f77a:	d129      	bne.n	f7d0 <_vsnprintf+0x100>
      const int w = va_arg(va, int);
    f77c:	1cd9      	adds	r1, r3, #3
    f77e:	6029      	str	r1, [r5, #0]
    f780:	9a16      	ldr	r2, [sp, #88]	; 0x58
      format++;
    f782:	1c87      	adds	r7, r0, #2
      const int w = va_arg(va, int);
    f784:	f852 1b04 	ldr.w	r1, [r2], #4
      format++;
    f788:	3304      	adds	r3, #4
      if (w < 0) {
    f78a:	2900      	cmp	r1, #0
    f78c:	468c      	mov	ip, r1
    f78e:	9216      	str	r2, [sp, #88]	; 0x58
    f790:	bf48      	it	mi
    f792:	f1c1 0c00 	rsbmi	ip, r1, #0
    f796:	2900      	cmp	r1, #0
    f798:	bf48      	it	mi
    f79a:	f04a 0a02 	orrmi.w	sl, sl, #2
      format++;
    f79e:	602b      	str	r3, [r5, #0]
    if (*format == '.') {
    f7a0:	7839      	ldrb	r1, [r7, #0]
    f7a2:	292e      	cmp	r1, #46	; 0x2e
    f7a4:	d019      	beq.n	f7da <_vsnprintf+0x10a>
    f7a6:	2400      	movs	r4, #0
    switch (*format) {
    f7a8:	7838      	ldrb	r0, [r7, #0]
    f7aa:	4639      	mov	r1, r7
    f7ac:	286c      	cmp	r0, #108	; 0x6c
    f7ae:	d249      	bcs.n	f844 <_vsnprintf+0x174>
    f7b0:	286a      	cmp	r0, #106	; 0x6a
    f7b2:	d259      	bcs.n	f868 <_vsnprintf+0x198>
    f7b4:	2868      	cmp	r0, #104	; 0x68
    f7b6:	d173      	bne.n	f8a0 <_vsnprintf+0x1d0>
        format++;
    f7b8:	1c5a      	adds	r2, r3, #1
    f7ba:	602a      	str	r2, [r5, #0]
        if (*format == 'h') {
    f7bc:	460e      	mov	r6, r1
    f7be:	f816 0f01 	ldrb.w	r0, [r6, #1]!
    f7c2:	2868      	cmp	r0, #104	; 0x68
    f7c4:	f040 818e 	bne.w	fae4 <_vsnprintf+0x414>
          flags |= FLAGS_CHAR;
    f7c8:	f04a 0ac0 	orr.w	sl, sl, #192	; 0xc0
    f7cc:	e048      	b.n	f860 <_vsnprintf+0x190>
    f7ce:	bf00      	nop
    f7d0:	f04f 0c00 	mov.w	ip, #0
    f7d4:	4623      	mov	r3, r4
    if (*format == '.') {
    f7d6:	292e      	cmp	r1, #46	; 0x2e
    f7d8:	d1e5      	bne.n	f7a6 <_vsnprintf+0xd6>
      format++;
    f7da:	1c58      	adds	r0, r3, #1
    f7dc:	6028      	str	r0, [r5, #0]
      if (_is_digit(*format)) {
    f7de:	4639      	mov	r1, r7
    f7e0:	f811 0f01 	ldrb.w	r0, [r1, #1]!
      flags |= FLAGS_PRECISION;
    f7e4:	f44a 6a80 	orr.w	sl, sl, #1024	; 0x400
  return (ch >= '0') && (ch <= '9');
    f7e8:	3830      	subs	r0, #48	; 0x30
    f7ea:	b2c0      	uxtb	r0, r0
      if (_is_digit(*format)) {
    f7ec:	1c9a      	adds	r2, r3, #2
    f7ee:	2809      	cmp	r0, #9
    f7f0:	602a      	str	r2, [r5, #0]
    f7f2:	d83d      	bhi.n	f870 <_vsnprintf+0x1a0>
        precision = _atoi(&format);
    f7f4:	1cd8      	adds	r0, r3, #3
    f7f6:	6028      	str	r0, [r5, #0]
  while (_is_digit(**str)) {
    f7f8:	780a      	ldrb	r2, [r1, #0]
    f7fa:	1d18      	adds	r0, r3, #4
  return (ch >= '0') && (ch <= '9');
    f7fc:	3a30      	subs	r2, #48	; 0x30
    f7fe:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f800:	2a09      	cmp	r2, #9
    f802:	6028      	str	r0, [r5, #0]
    f804:	f200 809d 	bhi.w	f942 <_vsnprintf+0x272>
    f808:	1e79      	subs	r1, r7, #1
    f80a:	1d98      	adds	r0, r3, #6
    f80c:	2400      	movs	r4, #0
    f80e:	bf00      	nop
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f810:	1e43      	subs	r3, r0, #1
    f812:	602b      	str	r3, [r5, #0]
    f814:	788b      	ldrb	r3, [r1, #2]
    f816:	eb04 0284 	add.w	r2, r4, r4, lsl #2
  while (_is_digit(**str)) {
    f81a:	78cf      	ldrb	r7, [r1, #3]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f81c:	eb03 0242 	add.w	r2, r3, r2, lsl #1
    f820:	f1a2 0430 	sub.w	r4, r2, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f824:	f1a7 0230 	sub.w	r2, r7, #48	; 0x30
    f828:	b2d2      	uxtb	r2, r2
  while (_is_digit(**str)) {
    f82a:	6028      	str	r0, [r5, #0]
    f82c:	3101      	adds	r1, #1
    f82e:	2a0a      	cmp	r2, #10
    f830:	f100 0002 	add.w	r0, r0, #2
    f834:	d3ec      	bcc.n	f810 <_vsnprintf+0x140>
    switch (*format) {
    f836:	1c8f      	adds	r7, r1, #2
    f838:	1e83      	subs	r3, r0, #2
    f83a:	7838      	ldrb	r0, [r7, #0]
    f83c:	4639      	mov	r1, r7
    f83e:	286c      	cmp	r0, #108	; 0x6c
    f840:	d3b6      	bcc.n	f7b0 <_vsnprintf+0xe0>
    f842:	bf00      	nop
    f844:	2874      	cmp	r0, #116	; 0x74
    f846:	d227      	bcs.n	f898 <_vsnprintf+0x1c8>
    f848:	286c      	cmp	r0, #108	; 0x6c
    f84a:	d129      	bne.n	f8a0 <_vsnprintf+0x1d0>
        format++;
    f84c:	1c5a      	adds	r2, r3, #1
    f84e:	602a      	str	r2, [r5, #0]
        if (*format == 'l') {
    f850:	460e      	mov	r6, r1
    f852:	f816 0f01 	ldrb.w	r0, [r6, #1]!
    f856:	286c      	cmp	r0, #108	; 0x6c
    f858:	f040 814b 	bne.w	faf2 <_vsnprintf+0x422>
          flags |= FLAGS_LONG_LONG;
    f85c:	f44a 7a40 	orr.w	sl, sl, #768	; 0x300
    f860:	3102      	adds	r1, #2
    f862:	3302      	adds	r3, #2
    f864:	e081      	b.n	f96a <_vsnprintf+0x29a>
    f866:	bf00      	nop
    f868:	d11a      	bne.n	f8a0 <_vsnprintf+0x1d0>
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    f86a:	f44a 7a00 	orr.w	sl, sl, #512	; 0x200
    f86e:	e07a      	b.n	f966 <_vsnprintf+0x296>
      else if (*format == '*') {
    f870:	7808      	ldrb	r0, [r1, #0]
    f872:	282a      	cmp	r0, #42	; 0x2a
    f874:	d16e      	bne.n	f954 <_vsnprintf+0x284>
        const int prec = (int)va_arg(va, int);
    f876:	1cd8      	adds	r0, r3, #3
    f878:	6028      	str	r0, [r5, #0]
    f87a:	9916      	ldr	r1, [sp, #88]	; 0x58
        format++;
    f87c:	3702      	adds	r7, #2
        const int prec = (int)va_arg(va, int);
    f87e:	f851 0b04 	ldr.w	r0, [r1], #4
        format++;
    f882:	3304      	adds	r3, #4
        precision = prec > 0 ? (unsigned int)prec : 0U;
    f884:	ea20 74e0 	bic.w	r4, r0, r0, asr #31
    f888:	9116      	str	r1, [sp, #88]	; 0x58
        format++;
    f88a:	602b      	str	r3, [r5, #0]
    switch (*format) {
    f88c:	7838      	ldrb	r0, [r7, #0]
    f88e:	4639      	mov	r1, r7
    f890:	286c      	cmp	r0, #108	; 0x6c
    f892:	d2d7      	bcs.n	f844 <_vsnprintf+0x174>
    f894:	e78c      	b.n	f7b0 <_vsnprintf+0xe0>
    f896:	bf00      	nop
    f898:	287a      	cmp	r0, #122	; 0x7a
    f89a:	d261      	bcs.n	f960 <_vsnprintf+0x290>
    f89c:	2874      	cmp	r0, #116	; 0x74
    f89e:	d060      	beq.n	f962 <_vsnprintf+0x292>
    switch (*format) {
    f8a0:	7808      	ldrb	r0, [r1, #0]
    f8a2:	460e      	mov	r6, r1
    f8a4:	2865      	cmp	r0, #101	; 0x65
    f8a6:	d265      	bcs.n	f974 <_vsnprintf+0x2a4>
    f8a8:	2858      	cmp	r0, #88	; 0x58
    f8aa:	d207      	bcs.n	f8bc <_vsnprintf+0x1ec>
    f8ac:	2846      	cmp	r0, #70	; 0x46
    f8ae:	d271      	bcs.n	f994 <_vsnprintf+0x2c4>
    f8b0:	2825      	cmp	r0, #37	; 0x25
    f8b2:	f000 81c7 	beq.w	fc44 <_vsnprintf+0x574>
    f8b6:	2845      	cmp	r0, #69	; 0x45
    f8b8:	d073      	beq.n	f9a2 <_vsnprintf+0x2d2>
    f8ba:	e215      	b.n	fce8 <_vsnprintf+0x618>
    f8bc:	2863      	cmp	r0, #99	; 0x63
    f8be:	d273      	bcs.n	f9a8 <_vsnprintf+0x2d8>
    f8c0:	2858      	cmp	r0, #88	; 0x58
    f8c2:	f000 81e6 	beq.w	fc92 <_vsnprintf+0x5c2>
    f8c6:	2862      	cmp	r0, #98	; 0x62
    f8c8:	f000 8165 	beq.w	fb96 <_vsnprintf+0x4c6>
    f8cc:	e20c      	b.n	fce8 <_vsnprintf+0x618>
  return (ch >= '0') && (ch <= '9');
    f8ce:	3f30      	subs	r7, #48	; 0x30
    if (_is_digit(*format)) {
    f8d0:	f103 0c02 	add.w	ip, r3, #2
  return (ch >= '0') && (ch <= '9');
    f8d4:	b2ff      	uxtb	r7, r7
    if (_is_digit(*format)) {
    f8d6:	2f09      	cmp	r7, #9
    f8d8:	4664      	mov	r4, ip
    f8da:	f8c5 c000 	str.w	ip, [r5]
    f8de:	f63f af48 	bhi.w	f772 <_vsnprintf+0xa2>
    f8e2:	1c47      	adds	r7, r0, #1
      width = _atoi(&format);
    f8e4:	1cd8      	adds	r0, r3, #3
    f8e6:	6028      	str	r0, [r5, #0]
  while (_is_digit(**str)) {
    f8e8:	7838      	ldrb	r0, [r7, #0]
    f8ea:	3304      	adds	r3, #4
  return (ch >= '0') && (ch <= '9');
    f8ec:	3830      	subs	r0, #48	; 0x30
    f8ee:	b2c0      	uxtb	r0, r0
  while (_is_digit(**str)) {
    f8f0:	2809      	cmp	r0, #9
    f8f2:	602b      	str	r3, [r5, #0]
    f8f4:	f200 81ac 	bhi.w	fc50 <_vsnprintf+0x580>
    f8f8:	1c70      	adds	r0, r6, #1
    f8fa:	f04f 0c00 	mov.w	ip, #0
    f8fe:	bf00      	nop
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f900:	1857      	adds	r7, r2, r1
    f902:	1d7e      	adds	r6, r7, #5
    f904:	1883      	adds	r3, r0, r2
    f906:	602e      	str	r6, [r5, #0]
  while (_is_digit(**str)) {
    f908:	785b      	ldrb	r3, [r3, #1]
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f90a:	5c86      	ldrb	r6, [r0, r2]
    f90c:	eb0c 058c 	add.w	r5, ip, ip, lsl #2
  return (ch >= '0') && (ch <= '9');
    f910:	3b30      	subs	r3, #48	; 0x30
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f912:	eb06 0645 	add.w	r6, r6, r5, lsl #1
    f916:	f240 0530 	movw	r5, #48	; 0x30
  return (ch >= '0') && (ch <= '9');
    f91a:	b2db      	uxtb	r3, r3
    f91c:	f2c1 0500 	movt	r5, #4096	; 0x1000
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
    f920:	f1a6 0c30 	sub.w	ip, r6, #48	; 0x30
  while (_is_digit(**str)) {
    f924:	3706      	adds	r7, #6
    f926:	3001      	adds	r0, #1
    f928:	2b0a      	cmp	r3, #10
    f92a:	f101 0102 	add.w	r1, r1, #2
    f92e:	602f      	str	r7, [r5, #0]
    f930:	d3e6      	bcc.n	f900 <_vsnprintf+0x230>
    if (*format == '.') {
    f932:	1887      	adds	r7, r0, r2
    f934:	1850      	adds	r0, r2, r1
    f936:	1d03      	adds	r3, r0, #4
    f938:	7839      	ldrb	r1, [r7, #0]
    f93a:	292e      	cmp	r1, #46	; 0x2e
    f93c:	f47f af33 	bne.w	f7a6 <_vsnprintf+0xd6>
    f940:	e74b      	b.n	f7da <_vsnprintf+0x10a>
    f942:	2400      	movs	r4, #0
    f944:	4603      	mov	r3, r0
    f946:	460f      	mov	r7, r1
    switch (*format) {
    f948:	7838      	ldrb	r0, [r7, #0]
    f94a:	4639      	mov	r1, r7
    f94c:	286c      	cmp	r0, #108	; 0x6c
    f94e:	f4ff af2f 	bcc.w	f7b0 <_vsnprintf+0xe0>
    f952:	e777      	b.n	f844 <_vsnprintf+0x174>
    f954:	2400      	movs	r4, #0
    f956:	4613      	mov	r3, r2
    f958:	286c      	cmp	r0, #108	; 0x6c
    f95a:	f4bf af73 	bcs.w	f844 <_vsnprintf+0x174>
    f95e:	e727      	b.n	f7b0 <_vsnprintf+0xe0>
    f960:	d19e      	bne.n	f8a0 <_vsnprintf+0x1d0>
    f962:	f44a 7a80 	orr.w	sl, sl, #256	; 0x100
    f966:	3101      	adds	r1, #1
    f968:	3301      	adds	r3, #1
    f96a:	602b      	str	r3, [r5, #0]
    switch (*format) {
    f96c:	7808      	ldrb	r0, [r1, #0]
    f96e:	460e      	mov	r6, r1
    f970:	2865      	cmp	r0, #101	; 0x65
    f972:	d399      	bcc.n	f8a8 <_vsnprintf+0x1d8>
    f974:	286f      	cmp	r0, #111	; 0x6f
    f976:	d205      	bcs.n	f984 <_vsnprintf+0x2b4>
    f978:	2867      	cmp	r0, #103	; 0x67
    f97a:	d220      	bcs.n	f9be <_vsnprintf+0x2ee>
    f97c:	2866      	cmp	r0, #102	; 0x66
    f97e:	f000 8093 	beq.w	faa8 <_vsnprintf+0x3d8>
    f982:	e024      	b.n	f9ce <_vsnprintf+0x2fe>
    f984:	2873      	cmp	r0, #115	; 0x73
    f986:	d23c      	bcs.n	fa02 <_vsnprintf+0x332>
    f988:	2870      	cmp	r0, #112	; 0x70
    f98a:	f080 80b9 	bcs.w	fb00 <_vsnprintf+0x430>
    f98e:	f04f 0808 	mov.w	r8, #8
    f992:	e180      	b.n	fc96 <_vsnprintf+0x5c6>
    f994:	f000 8088 	beq.w	faa8 <_vsnprintf+0x3d8>
    f998:	2847      	cmp	r0, #71	; 0x47
    f99a:	f040 81a5 	bne.w	fce8 <_vsnprintf+0x618>
        if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
    f99e:	f44a 6a00 	orr.w	sl, sl, #2048	; 0x800
        if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
    f9a2:	f04a 0a20 	orr.w	sl, sl, #32
    f9a6:	e012      	b.n	f9ce <_vsnprintf+0x2fe>
    f9a8:	f040 80f5 	bne.w	fb96 <_vsnprintf+0x4c6>
        if (!(flags & FLAGS_LEFT)) {
    f9ac:	f01a 0702 	ands.w	r7, sl, #2
    f9b0:	f8cd c050 	str.w	ip, [sp, #80]	; 0x50
    f9b4:	f000 8153 	beq.w	fc5e <_vsnprintf+0x58e>
    f9b8:	f04f 0801 	mov.w	r8, #1
    f9bc:	e38f      	b.n	100de <_vsnprintf+0xa0e>
    f9be:	2869      	cmp	r0, #105	; 0x69
    f9c0:	f080 80b8 	bcs.w	fb34 <_vsnprintf+0x464>
    f9c4:	2867      	cmp	r0, #103	; 0x67
    f9c6:	f040 818f 	bne.w	fce8 <_vsnprintf+0x618>
        if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
    f9ca:	f44a 6a00 	orr.w	sl, sl, #2048	; 0x800
        idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
    f9ce:	9816      	ldr	r0, [sp, #88]	; 0x58
    f9d0:	1c59      	adds	r1, r3, #1
    f9d2:	3007      	adds	r0, #7
    f9d4:	f020 0007 	bic.w	r0, r0, #7
    f9d8:	6029      	str	r1, [r5, #0]
    f9da:	4601      	mov	r1, r0
    f9dc:	6847      	ldr	r7, [r0, #4]
    f9de:	f851 0b08 	ldr.w	r0, [r1], #8
    f9e2:	4672      	mov	r2, lr
    f9e4:	9116      	str	r1, [sp, #88]	; 0x58
    f9e6:	1c99      	adds	r1, r3, #2
    f9e8:	6029      	str	r1, [r5, #0]
    f9ea:	9000      	str	r0, [sp, #0]
    f9ec:	4658      	mov	r0, fp
    f9ee:	4641      	mov	r1, r8
    f9f0:	464b      	mov	r3, r9
    f9f2:	e9cd 4c02 	strd	r4, ip, [sp, #8]
    f9f6:	f8cd a010 	str.w	sl, [sp, #16]
    f9fa:	9701      	str	r7, [sp, #4]
    f9fc:	f001 f8c4 	bl	10b88 <_etoa>
    fa00:	e347      	b.n	10092 <_vsnprintf+0x9c2>
    fa02:	2875      	cmp	r0, #117	; 0x75
    fa04:	f080 80c1 	bcs.w	fb8a <_vsnprintf+0x4ba>
    fa08:	2873      	cmp	r0, #115	; 0x73
    fa0a:	f040 816d 	bne.w	fce8 <_vsnprintf+0x618>
        const char* p = va_arg(va, char*);
    fa0e:	1c58      	adds	r0, r3, #1
    fa10:	6028      	str	r0, [r5, #0]
    fa12:	9816      	ldr	r0, [sp, #88]	; 0x58
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    fa14:	4627      	mov	r7, r4
        const char* p = va_arg(va, char*);
    fa16:	f850 2b04 	ldr.w	r2, [r0], #4
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    fa1a:	2c00      	cmp	r4, #0
    fa1c:	9016      	str	r0, [sp, #88]	; 0x58
    fa1e:	f103 0002 	add.w	r0, r3, #2
    fa22:	bf08      	it	eq
    fa24:	f04f 37ff 	moveq.w	r7, #4294967295	; 0xffffffff
    fa28:	6028      	str	r0, [r5, #0]
  for (s = str; *s && maxsize--; ++s);
    fa2a:	7810      	ldrb	r0, [r2, #0]
    fa2c:	2f00      	cmp	r7, #0
    fa2e:	4611      	mov	r1, r2
    fa30:	f8cd c050 	str.w	ip, [sp, #80]	; 0x50
    fa34:	f000 8387 	beq.w	10146 <_vsnprintf+0xa76>
    fa38:	2800      	cmp	r0, #0
    fa3a:	4611      	mov	r1, r2
    fa3c:	f000 8383 	beq.w	10146 <_vsnprintf+0xa76>
    fa40:	4690      	mov	r8, r2
    fa42:	e9cd 3411 	strd	r3, r4, [sp, #68]	; 0x44
    fa46:	f1a7 0c03 	sub.w	ip, r7, #3
    fa4a:	1eba      	subs	r2, r7, #2
    fa4c:	1e7b      	subs	r3, r7, #1
    fa4e:	3f04      	subs	r7, #4
    fa50:	2400      	movs	r4, #0
    fa52:	bf00      	nop
    fa54:	42a3      	cmp	r3, r4
    fa56:	eb08 0504 	add.w	r5, r8, r4
    fa5a:	f000 8366 	beq.w	1012a <_vsnprintf+0xa5a>
    fa5e:	7869      	ldrb	r1, [r5, #1]
    fa60:	2900      	cmp	r1, #0
    fa62:	f000 8362 	beq.w	1012a <_vsnprintf+0xa5a>
    fa66:	42a2      	cmp	r2, r4
    fa68:	f000 8361 	beq.w	1012e <_vsnprintf+0xa5e>
    fa6c:	78a9      	ldrb	r1, [r5, #2]
    fa6e:	2900      	cmp	r1, #0
    fa70:	f000 835d 	beq.w	1012e <_vsnprintf+0xa5e>
    fa74:	45a4      	cmp	ip, r4
    fa76:	f000 835c 	beq.w	10132 <_vsnprintf+0xa62>
    fa7a:	78e9      	ldrb	r1, [r5, #3]
    fa7c:	2900      	cmp	r1, #0
    fa7e:	f000 8358 	beq.w	10132 <_vsnprintf+0xa62>
    fa82:	42a7      	cmp	r7, r4
    fa84:	f104 0104 	add.w	r1, r4, #4
    fa88:	d003      	beq.n	fa92 <_vsnprintf+0x3c2>
    fa8a:	792d      	ldrb	r5, [r5, #4]
    fa8c:	460c      	mov	r4, r1
    fa8e:	2d00      	cmp	r5, #0
    fa90:	d1e0      	bne.n	fa54 <_vsnprintf+0x384>
    fa92:	f240 0530 	movw	r5, #48	; 0x30
    fa96:	f8dd c050 	ldr.w	ip, [sp, #80]	; 0x50
    fa9a:	e9dd 3411 	ldrd	r3, r4, [sp, #68]	; 0x44
    fa9e:	4642      	mov	r2, r8
  return (unsigned int)(s - str);
    faa0:	4441      	add	r1, r8
    faa2:	f2c1 0500 	movt	r5, #4096	; 0x1000
    faa6:	e34e      	b.n	10146 <_vsnprintf+0xa76>
        if (*format == 'F') flags |= FLAGS_UPPERCASE;
    faa8:	2846      	cmp	r0, #70	; 0x46
    faaa:	bf08      	it	eq
    faac:	f04a 0a20 	orreq.w	sl, sl, #32
        idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
    fab0:	9816      	ldr	r0, [sp, #88]	; 0x58
    fab2:	1c59      	adds	r1, r3, #1
    fab4:	3007      	adds	r0, #7
    fab6:	f020 0007 	bic.w	r0, r0, #7
    faba:	6029      	str	r1, [r5, #0]
    fabc:	4601      	mov	r1, r0
    fabe:	6847      	ldr	r7, [r0, #4]
    fac0:	f851 0b08 	ldr.w	r0, [r1], #8
    fac4:	4672      	mov	r2, lr
    fac6:	9116      	str	r1, [sp, #88]	; 0x58
    fac8:	1c99      	adds	r1, r3, #2
    faca:	6029      	str	r1, [r5, #0]
    facc:	9000      	str	r0, [sp, #0]
    face:	4658      	mov	r0, fp
    fad0:	4641      	mov	r1, r8
    fad2:	464b      	mov	r3, r9
    fad4:	e9cd 4c02 	strd	r4, ip, [sp, #8]
    fad8:	f8cd a010 	str.w	sl, [sp, #16]
    fadc:	9701      	str	r7, [sp, #4]
    fade:	f000 fc05 	bl	102ec <_ftoa>
    fae2:	e2d6      	b.n	10092 <_vsnprintf+0x9c2>
    fae4:	f04a 0a80 	orr.w	sl, sl, #128	; 0x80
    fae8:	4613      	mov	r3, r2
    faea:	2865      	cmp	r0, #101	; 0x65
    faec:	f4ff aedc 	bcc.w	f8a8 <_vsnprintf+0x1d8>
    faf0:	e740      	b.n	f974 <_vsnprintf+0x2a4>
    faf2:	f44a 7a80 	orr.w	sl, sl, #256	; 0x100
    faf6:	4613      	mov	r3, r2
    faf8:	2865      	cmp	r0, #101	; 0x65
    fafa:	f4ff aed5 	bcc.w	f8a8 <_vsnprintf+0x1d8>
    fafe:	e739      	b.n	f974 <_vsnprintf+0x2a4>
    fb00:	f040 80f2 	bne.w	fce8 <_vsnprintf+0x618>
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    fb04:	1c59      	adds	r1, r3, #1
    fb06:	6029      	str	r1, [r5, #0]
    fb08:	9a16      	ldr	r2, [sp, #88]	; 0x58
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    fb0a:	f04a 0021 	orr.w	r0, sl, #33	; 0x21
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    fb0e:	f852 1b04 	ldr.w	r1, [r2], #4
  if (!value) {
    fb12:	2900      	cmp	r1, #0
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    fb14:	9216      	str	r2, [sp, #88]	; 0x58
    fb16:	f103 0202 	add.w	r2, r3, #2
  if (!value) {
    fb1a:	bf08      	it	eq
    fb1c:	f020 0010 	biceq.w	r0, r0, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    fb20:	2900      	cmp	r1, #0
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    fb22:	602a      	str	r2, [r5, #0]
  if (!(flags & FLAGS_PRECISION) || value) {
    fb24:	f040 8201 	bne.w	ff2a <_vsnprintf+0x85a>
    fb28:	f410 6280 	ands.w	r2, r0, #1024	; 0x400
    fb2c:	f000 81fd 	beq.w	ff2a <_vsnprintf+0x85a>
    fb30:	2100      	movs	r1, #0
    fb32:	e215      	b.n	ff60 <_vsnprintf+0x890>
    fb34:	f040 80d8 	bne.w	fce8 <_vsnprintf+0x618>
        if (flags & FLAGS_PRECISION) {
    fb38:	ea5f 504a 	movs.w	r0, sl, lsl #21
    fb3c:	f06f 0011 	mvn.w	r0, #17
    fb40:	bf58      	it	pl
    fb42:	f06f 0010 	mvnpl.w	r0, #16
    fb46:	ea0a 0a00 	and.w	sl, sl, r0
    fb4a:	f04f 080a 	mov.w	r8, #10
          if (flags & FLAGS_LONG_LONG) {
    fb4e:	ea5f 508a 	movs.w	r0, sl, lsl #22
    fb52:	f140 80b5 	bpl.w	fcc0 <_vsnprintf+0x5f0>
            const long long value = va_arg(va, long long);
    fb56:	9816      	ldr	r0, [sp, #88]	; 0x58
    fb58:	1c59      	adds	r1, r3, #1
    fb5a:	3007      	adds	r0, #7
    fb5c:	f020 0007 	bic.w	r0, r0, #7
    fb60:	6029      	str	r1, [r5, #0]
    fb62:	4601      	mov	r1, r0
    fb64:	6842      	ldr	r2, [r0, #4]
    fb66:	f851 0b08 	ldr.w	r0, [r1], #8
    fb6a:	9116      	str	r1, [sp, #88]	; 0x58
  if (!value) {
    fb6c:	ea50 0102 	orrs.w	r1, r0, r2
    fb70:	bf08      	it	eq
    fb72:	f02a 0a10 	biceq.w	sl, sl, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    fb76:	2900      	cmp	r1, #0
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fb78:	f103 0102 	add.w	r1, r3, #2
    fb7c:	6029      	str	r1, [r5, #0]
    fb7e:	d113      	bne.n	fba8 <_vsnprintf+0x4d8>
    fb80:	f41a 6180 	ands.w	r1, sl, #1024	; 0x400
    fb84:	d010      	beq.n	fba8 <_vsnprintf+0x4d8>
    fb86:	2000      	movs	r0, #0
    fb88:	e054      	b.n	fc34 <_vsnprintf+0x564>
    fb8a:	2878      	cmp	r0, #120	; 0x78
    fb8c:	f080 8080 	bcs.w	fc90 <_vsnprintf+0x5c0>
    fb90:	2875      	cmp	r0, #117	; 0x75
    fb92:	f040 80a9 	bne.w	fce8 <_vsnprintf+0x618>
        else if (*format == 'b') {
    fb96:	f04f 080a 	mov.w	r8, #10
    fb9a:	2862      	cmp	r0, #98	; 0x62
    fb9c:	bf0c      	ite	eq
    fb9e:	f04f 0802 	moveq.w	r8, #2
    fba2:	f02a 0a10 	bicne.w	sl, sl, #16
    fba6:	e07a      	b.n	fc9e <_vsnprintf+0x5ce>
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fba8:	eb10 70e2 	adds.w	r0, r0, r2, asr #31
    fbac:	ea80 75e2 	eor.w	r5, r0, r2, asr #31
    fbb0:	eb42 70e2 	adc.w	r0, r2, r2, asr #31
    fbb4:	ea80 77e2 	eor.w	r7, r0, r2, asr #31
    fbb8:	f00a 0020 	and.w	r0, sl, #32
    fbbc:	f080 0061 	eor.w	r0, r0, #97	; 0x61
    fbc0:	9412      	str	r4, [sp, #72]	; 0x48
    fbc2:	464c      	mov	r4, r9
    fbc4:	f100 0bf6 	add.w	fp, r0, #246	; 0xf6
    fbc8:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
    fbcc:	f8cd c050 	str.w	ip, [sp, #80]	; 0x50
    fbd0:	e9cd e310 	strd	lr, r3, [sp, #64]	; 0x40
    fbd4:	920f      	str	r2, [sp, #60]	; 0x3c
    fbd6:	bf00      	nop
      value /= base;
    fbd8:	4628      	mov	r0, r5
    fbda:	4639      	mov	r1, r7
    fbdc:	4642      	mov	r2, r8
    fbde:	2300      	movs	r3, #0
    fbe0:	f001 fc19 	bl	11416 <__udivdi3>
    fbe4:	fb00 5218 	mls	r2, r0, r8, r5
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    fbe8:	f002 03fe 	and.w	r3, r2, #254	; 0xfe
    fbec:	2b0a      	cmp	r3, #10
    fbee:	465b      	mov	r3, fp
    fbf0:	bf38      	it	cc
    fbf2:	2330      	movcc	r3, #48	; 0x30
    fbf4:	441a      	add	r2, r3
    fbf6:	ab17      	add	r3, sp, #92	; 0x5c
    fbf8:	444b      	add	r3, r9
    fbfa:	705a      	strb	r2, [r3, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    fbfc:	ebb5 0208 	subs.w	r2, r5, r8
    fc00:	f177 0200 	sbcs.w	r2, r7, #0
    fc04:	f109 0201 	add.w	r2, r9, #1
    fc08:	d306      	bcc.n	fc18 <_vsnprintf+0x548>
    fc0a:	f109 0302 	add.w	r3, r9, #2
    fc0e:	2b20      	cmp	r3, #32
    fc10:	4691      	mov	r9, r2
    fc12:	4605      	mov	r5, r0
    fc14:	460f      	mov	r7, r1
    fc16:	d3df      	bcc.n	fbd8 <_vsnprintf+0x508>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    fc18:	1c50      	adds	r0, r2, #1
    fc1a:	46a1      	mov	r9, r4
    fc1c:	f8dd b04c 	ldr.w	fp, [sp, #76]	; 0x4c
    fc20:	f240 0530 	movw	r5, #48	; 0x30
    fc24:	f8dd c050 	ldr.w	ip, [sp, #80]	; 0x50
    fc28:	e9dd 3411 	ldrd	r3, r4, [sp, #68]	; 0x44
    fc2c:	e9dd 2e0f 	ldrd	r2, lr, [sp, #60]	; 0x3c
    fc30:	f2c1 0500 	movt	r5, #4096	; 0x1000
    fc34:	1cd9      	adds	r1, r3, #3
    fc36:	6029      	str	r1, [r5, #0]
    fc38:	0fd1      	lsrs	r1, r2, #31
    fc3a:	aa17      	add	r2, sp, #92	; 0x5c
    fc3c:	e9cd 2000 	strd	r2, r0, [sp]
    fc40:	9102      	str	r1, [sp, #8]
    fc42:	e1e4      	b.n	1000e <_vsnprintf+0x93e>
        out('%', buffer, idx++, maxlen);
    fc44:	1c58      	adds	r0, r3, #1
    fc46:	f10e 0401 	add.w	r4, lr, #1
    fc4a:	6028      	str	r0, [r5, #0]
    fc4c:	2025      	movs	r0, #37	; 0x25
    fc4e:	e04f      	b.n	fcf0 <_vsnprintf+0x620>
    fc50:	f04f 0c00 	mov.w	ip, #0
    if (*format == '.') {
    fc54:	7839      	ldrb	r1, [r7, #0]
    fc56:	292e      	cmp	r1, #46	; 0x2e
    fc58:	f47f ada5 	bne.w	f7a6 <_vsnprintf+0xd6>
    fc5c:	e5bd      	b.n	f7da <_vsnprintf+0x10a>
          while (l++ < width) {
    fc5e:	f1bc 0f02 	cmp.w	ip, #2
    fc62:	f0c0 818f 	bcc.w	ff84 <_vsnprintf+0x8b4>
            out(' ', buffer, idx++, maxlen);
    fc66:	1c58      	adds	r0, r3, #1
    fc68:	6028      	str	r0, [r5, #0]
    fc6a:	9915      	ldr	r1, [sp, #84]	; 0x54
    fc6c:	2020      	movs	r0, #32
    fc6e:	4672      	mov	r2, lr
    fc70:	464b      	mov	r3, r9
          while (l++ < width) {
    fc72:	f10c 0801 	add.w	r8, ip, #1
            out(' ', buffer, idx++, maxlen);
    fc76:	f10e 0401 	add.w	r4, lr, #1
    fc7a:	46e2      	mov	sl, ip
    fc7c:	47d8      	blx	fp
          while (l++ < width) {
    fc7e:	f1b8 0f03 	cmp.w	r8, #3
    fc82:	e9cd 870b 	strd	r8, r7, [sp, #44]	; 0x2c
    fc86:	f040 8210 	bne.w	100aa <_vsnprintf+0x9da>
            out(' ', buffer, idx++, maxlen);
    fc8a:	46a6      	mov	lr, r4
    fc8c:	46a8      	mov	r8, r5
    fc8e:	e221      	b.n	100d4 <_vsnprintf+0xa04>
    fc90:	d12a      	bne.n	fce8 <_vsnprintf+0x618>
    fc92:	f04f 0810 	mov.w	r8, #16
        if (*format == 'X') {
    fc96:	2858      	cmp	r0, #88	; 0x58
    fc98:	bf08      	it	eq
    fc9a:	f04a 0a20 	orreq.w	sl, sl, #32
        if ((*format != 'i') && (*format != 'd')) {
    fc9e:	2864      	cmp	r0, #100	; 0x64
    fca0:	bf18      	it	ne
    fca2:	f02a 0a0c 	bicne.w	sl, sl, #12
        if (flags & FLAGS_PRECISION) {
    fca6:	ea5f 514a 	movs.w	r1, sl, lsl #21
    fcaa:	bf48      	it	mi
    fcac:	f02a 0a01 	bicmi.w	sl, sl, #1
        if ((*format == 'i') || (*format == 'd')) {
    fcb0:	2869      	cmp	r0, #105	; 0x69
    fcb2:	d001      	beq.n	fcb8 <_vsnprintf+0x5e8>
    fcb4:	2864      	cmp	r0, #100	; 0x64
    fcb6:	d120      	bne.n	fcfa <_vsnprintf+0x62a>
          if (flags & FLAGS_LONG_LONG) {
    fcb8:	ea5f 508a 	movs.w	r0, sl, lsl #22
    fcbc:	f53f af4b 	bmi.w	fb56 <_vsnprintf+0x486>
          else if (flags & FLAGS_LONG) {
    fcc0:	ea5f 50ca 	movs.w	r0, sl, lsl #23
    fcc4:	f8cd c050 	str.w	ip, [sp, #80]	; 0x50
    fcc8:	d42f      	bmi.n	fd2a <_vsnprintf+0x65a>
    fcca:	f103 0c01 	add.w	ip, r3, #1
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
    fcce:	ea5f 604a 	movs.w	r0, sl, lsl #25
    fcd2:	d460      	bmi.n	fd96 <_vsnprintf+0x6c6>
    fcd4:	f8c5 c000 	str.w	ip, [r5]
    fcd8:	9a16      	ldr	r2, [sp, #88]	; 0x58
    fcda:	4628      	mov	r0, r5
    fcdc:	6815      	ldr	r5, [r2, #0]
    fcde:	ea5f 610a 	movs.w	r1, sl, lsl #24
    fce2:	bf48      	it	mi
    fce4:	b22d      	sxthmi	r5, r5
    fce6:	e05b      	b.n	fda0 <_vsnprintf+0x6d0>
        out(*format, buffer, idx++, maxlen);
    fce8:	f10e 0401 	add.w	r4, lr, #1
    fcec:	1c59      	adds	r1, r3, #1
    fcee:	6029      	str	r1, [r5, #0]
    fcf0:	4641      	mov	r1, r8
    fcf2:	4672      	mov	r2, lr
    fcf4:	464b      	mov	r3, r9
    fcf6:	47d8      	blx	fp
    fcf8:	e1cc      	b.n	10094 <_vsnprintf+0x9c4>
          if (flags & FLAGS_LONG_LONG) {
    fcfa:	ea5f 508a 	movs.w	r0, sl, lsl #22
    fcfe:	d42a      	bmi.n	fd56 <_vsnprintf+0x686>
          else if (flags & FLAGS_LONG) {
    fd00:	ea5f 50ca 	movs.w	r0, sl, lsl #23
    fd04:	f100 80c6 	bmi.w	fe94 <_vsnprintf+0x7c4>
    fd08:	f8cd c050 	str.w	ip, [sp, #80]	; 0x50
    fd0c:	f103 0c01 	add.w	ip, r3, #1
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
    fd10:	ea5f 604a 	movs.w	r0, sl, lsl #25
    fd14:	f100 8139 	bmi.w	ff8a <_vsnprintf+0x8ba>
    fd18:	f8c5 c000 	str.w	ip, [r5]
    fd1c:	9816      	ldr	r0, [sp, #88]	; 0x58
    fd1e:	ea5f 610a 	movs.w	r1, sl, lsl #24
    fd22:	6807      	ldr	r7, [r0, #0]
    fd24:	bf48      	it	mi
    fd26:	b2bf      	uxthmi	r7, r7
    fd28:	e133      	b.n	ff92 <_vsnprintf+0x8c2>
            const long value = va_arg(va, long);
    fd2a:	1c58      	adds	r0, r3, #1
    fd2c:	6028      	str	r0, [r5, #0]
    fd2e:	9816      	ldr	r0, [sp, #88]	; 0x58
    fd30:	f850 cb04 	ldr.w	ip, [r0], #4
  if (!value) {
    fd34:	f1bc 0f00 	cmp.w	ip, #0
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fd38:	9016      	str	r0, [sp, #88]	; 0x58
    fd3a:	f103 0002 	add.w	r0, r3, #2
  if (!value) {
    fd3e:	bf08      	it	eq
    fd40:	f02a 0a10 	biceq.w	sl, sl, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    fd44:	f1bc 0f00 	cmp.w	ip, #0
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fd48:	6028      	str	r0, [r5, #0]
  if (!(flags & FLAGS_PRECISION) || value) {
    fd4a:	d138      	bne.n	fdbe <_vsnprintf+0x6ee>
    fd4c:	f41a 6080 	ands.w	r0, sl, #1024	; 0x400
    fd50:	d035      	beq.n	fdbe <_vsnprintf+0x6ee>
    fd52:	2000      	movs	r0, #0
    fd54:	e062      	b.n	fe1c <_vsnprintf+0x74c>
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
    fd56:	9816      	ldr	r0, [sp, #88]	; 0x58
    fd58:	1c59      	adds	r1, r3, #1
    fd5a:	3007      	adds	r0, #7
    fd5c:	f020 0007 	bic.w	r0, r0, #7
    fd60:	6029      	str	r1, [r5, #0]
    fd62:	4629      	mov	r1, r5
    fd64:	6845      	ldr	r5, [r0, #4]
    fd66:	f850 7b08 	ldr.w	r7, [r0], #8
    fd6a:	9016      	str	r0, [sp, #88]	; 0x58
  if (!value) {
    fd6c:	ea57 0005 	orrs.w	r0, r7, r5
    fd70:	bf08      	it	eq
    fd72:	f02a 0a10 	biceq.w	sl, sl, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    fd76:	2800      	cmp	r0, #0
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
    fd78:	f103 0002 	add.w	r0, r3, #2
    fd7c:	6008      	str	r0, [r1, #0]
  if (!(flags & FLAGS_PRECISION) || value) {
    fd7e:	f040 809e 	bne.w	febe <_vsnprintf+0x7ee>
    fd82:	f41a 6080 	ands.w	r0, sl, #1024	; 0x400
    fd86:	f000 809a 	beq.w	febe <_vsnprintf+0x7ee>
    fd8a:	f240 0530 	movw	r5, #48	; 0x30
    fd8e:	2000      	movs	r0, #0
    fd90:	f2c1 0500 	movt	r5, #4096	; 0x1000
    fd94:	e134      	b.n	10000 <_vsnprintf+0x930>
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
    fd96:	f8c5 c000 	str.w	ip, [r5]
    fd9a:	9a16      	ldr	r2, [sp, #88]	; 0x58
    fd9c:	4628      	mov	r0, r5
    fd9e:	7815      	ldrb	r5, [r2, #0]
    fda0:	3204      	adds	r2, #4
  if (!value) {
    fda2:	2d00      	cmp	r5, #0
    fda4:	9216      	str	r2, [sp, #88]	; 0x58
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fda6:	f10c 0101 	add.w	r1, ip, #1
  if (!value) {
    fdaa:	bf08      	it	eq
    fdac:	f02a 0a10 	biceq.w	sl, sl, #16
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fdb0:	6001      	str	r1, [r0, #0]
  if (!(flags & FLAGS_PRECISION) || value) {
    fdb2:	bbe5      	cbnz	r5, fe2e <_vsnprintf+0x75e>
    fdb4:	f41a 6180 	ands.w	r1, sl, #1024	; 0x400
    fdb8:	d039      	beq.n	fe2e <_vsnprintf+0x75e>
    fdba:	2100      	movs	r1, #0
    fdbc:	e05d      	b.n	fe7a <_vsnprintf+0x7aa>
    fdbe:	f00a 0120 	and.w	r1, sl, #32
    fdc2:	f081 0161 	eor.w	r1, r1, #97	; 0x61
    fdc6:	e9cd 3411 	strd	r3, r4, [sp, #68]	; 0x44
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fdca:	4660      	mov	r0, ip
    fdcc:	f101 07f6 	add.w	r7, r1, #246	; 0xf6
    fdd0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    fdd4:	f1bc 0f00 	cmp.w	ip, #0
    fdd8:	bf48      	it	mi
    fdda:	f1cc 0000 	rsbmi	r0, ip, #0
    fdde:	bf00      	nop
      value /= base;
    fde0:	fbb0 f2f8 	udiv	r2, r0, r8
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    fde4:	4639      	mov	r1, r7
    fde6:	fb02 0518 	mls	r5, r2, r8, r0
    fdea:	f005 04fe 	and.w	r4, r5, #254	; 0xfe
    fdee:	2c0a      	cmp	r4, #10
    fdf0:	bf38      	it	cc
    fdf2:	2130      	movcc	r1, #48	; 0x30
    fdf4:	4429      	add	r1, r5
    fdf6:	ad17      	add	r5, sp, #92	; 0x5c
    fdf8:	441d      	add	r5, r3
    fdfa:	7069      	strb	r1, [r5, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    fdfc:	4540      	cmp	r0, r8
    fdfe:	f103 0501 	add.w	r5, r3, #1
    fe02:	d304      	bcc.n	fe0e <_vsnprintf+0x73e>
    fe04:	1c98      	adds	r0, r3, #2
    fe06:	2820      	cmp	r0, #32
    fe08:	462b      	mov	r3, r5
    fe0a:	4610      	mov	r0, r2
    fe0c:	d3e8      	bcc.n	fde0 <_vsnprintf+0x710>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    fe0e:	1c68      	adds	r0, r5, #1
    fe10:	f240 0530 	movw	r5, #48	; 0x30
    fe14:	e9dd 3411 	ldrd	r3, r4, [sp, #68]	; 0x44
    fe18:	f2c1 0500 	movt	r5, #4096	; 0x1000
    fe1c:	1cd9      	adds	r1, r3, #3
    fe1e:	6029      	str	r1, [r5, #0]
    fe20:	ea4f 71dc 	mov.w	r1, ip, lsr #31
    fe24:	aa17      	add	r2, sp, #92	; 0x5c
    fe26:	e9cd 2000 	strd	r2, r0, [sp]
    fe2a:	9102      	str	r1, [sp, #8]
    fe2c:	e123      	b.n	10076 <_vsnprintf+0x9a6>
    fe2e:	f00a 0220 	and.w	r2, sl, #32
    fe32:	f082 0261 	eor.w	r2, r2, #97	; 0x61
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    fe36:	4629      	mov	r1, r5
    fe38:	32f6      	adds	r2, #246	; 0xf6
    fe3a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
    fe3e:	9412      	str	r4, [sp, #72]	; 0x48
    fe40:	2d00      	cmp	r5, #0
    fe42:	bf48      	it	mi
    fe44:	4269      	negmi	r1, r5
    fe46:	bf00      	nop
      value /= base;
    fe48:	fbb1 f3f8 	udiv	r3, r1, r8
    fe4c:	fb03 1418 	mls	r4, r3, r8, r1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    fe50:	f004 00fe 	and.w	r0, r4, #254	; 0xfe
    fe54:	280a      	cmp	r0, #10
    fe56:	4610      	mov	r0, r2
    fe58:	bf38      	it	cc
    fe5a:	2030      	movcc	r0, #48	; 0x30
    fe5c:	4420      	add	r0, r4
    fe5e:	ac17      	add	r4, sp, #92	; 0x5c
    fe60:	443c      	add	r4, r7
    fe62:	7060      	strb	r0, [r4, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    fe64:	4541      	cmp	r1, r8
    fe66:	f107 0401 	add.w	r4, r7, #1
    fe6a:	d304      	bcc.n	fe76 <_vsnprintf+0x7a6>
    fe6c:	1cb8      	adds	r0, r7, #2
    fe6e:	2820      	cmp	r0, #32
    fe70:	4627      	mov	r7, r4
    fe72:	4619      	mov	r1, r3
    fe74:	d3e8      	bcc.n	fe48 <_vsnprintf+0x778>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    fe76:	1c61      	adds	r1, r4, #1
    fe78:	9c12      	ldr	r4, [sp, #72]	; 0x48
    fe7a:	f240 0230 	movw	r2, #48	; 0x30
    fe7e:	f10c 0002 	add.w	r0, ip, #2
    fe82:	f2c1 0200 	movt	r2, #4096	; 0x1000
    fe86:	6010      	str	r0, [r2, #0]
    fe88:	0fe8      	lsrs	r0, r5, #31
    fe8a:	4615      	mov	r5, r2
    fe8c:	aa17      	add	r2, sp, #92	; 0x5c
    fe8e:	e9cd 2100 	strd	r2, r1, [sp]
    fe92:	e0ef      	b.n	10074 <_vsnprintf+0x9a4>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    fe94:	1c58      	adds	r0, r3, #1
    fe96:	6028      	str	r0, [r5, #0]
    fe98:	9916      	ldr	r1, [sp, #88]	; 0x58
    fe9a:	f851 0b04 	ldr.w	r0, [r1], #4
  if (!value) {
    fe9e:	2800      	cmp	r0, #0
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    fea0:	9116      	str	r1, [sp, #88]	; 0x58
    fea2:	f103 0102 	add.w	r1, r3, #2
  if (!value) {
    fea6:	bf08      	it	eq
    fea8:	f02a 0a10 	biceq.w	sl, sl, #16
  if (!(flags & FLAGS_PRECISION) || value) {
    feac:	2800      	cmp	r0, #0
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    feae:	6029      	str	r1, [r5, #0]
  if (!(flags & FLAGS_PRECISION) || value) {
    feb0:	f040 807e 	bne.w	ffb0 <_vsnprintf+0x8e0>
    feb4:	f41a 6180 	ands.w	r1, sl, #1024	; 0x400
    feb8:	d07a      	beq.n	ffb0 <_vsnprintf+0x8e0>
    feba:	2000      	movs	r0, #0
    febc:	e0a0      	b.n	10000 <_vsnprintf+0x930>
    febe:	f00a 0020 	and.w	r0, sl, #32
    fec2:	f080 0061 	eor.w	r0, r0, #97	; 0x61
    fec6:	9412      	str	r4, [sp, #72]	; 0x48
    fec8:	f100 0bf6 	add.w	fp, r0, #246	; 0xf6
    fecc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
    fed0:	f8cd c050 	str.w	ip, [sp, #80]	; 0x50
    fed4:	e9cd e310 	strd	lr, r3, [sp, #64]	; 0x40
      value /= base;
    fed8:	4638      	mov	r0, r7
    feda:	4629      	mov	r1, r5
    fedc:	4642      	mov	r2, r8
    fede:	2300      	movs	r3, #0
    fee0:	f001 fa99 	bl	11416 <__udivdi3>
    fee4:	fb00 7218 	mls	r2, r0, r8, r7
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    fee8:	f002 03fe 	and.w	r3, r2, #254	; 0xfe
    feec:	2b0a      	cmp	r3, #10
    feee:	465b      	mov	r3, fp
    fef0:	bf38      	it	cc
    fef2:	2330      	movcc	r3, #48	; 0x30
    fef4:	441a      	add	r2, r3
    fef6:	ab17      	add	r3, sp, #92	; 0x5c
    fef8:	4423      	add	r3, r4
    fefa:	705a      	strb	r2, [r3, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    fefc:	ebb7 0208 	subs.w	r2, r7, r8
    ff00:	f175 0200 	sbcs.w	r2, r5, #0
    ff04:	f104 0201 	add.w	r2, r4, #1
    ff08:	d305      	bcc.n	ff16 <_vsnprintf+0x846>
    ff0a:	1ca3      	adds	r3, r4, #2
    ff0c:	2b20      	cmp	r3, #32
    ff0e:	4614      	mov	r4, r2
    ff10:	4607      	mov	r7, r0
    ff12:	460d      	mov	r5, r1
    ff14:	d3e0      	bcc.n	fed8 <_vsnprintf+0x808>
    ff16:	f8dd b04c 	ldr.w	fp, [sp, #76]	; 0x4c
    ff1a:	f240 0530 	movw	r5, #48	; 0x30
    ff1e:	f8dd e040 	ldr.w	lr, [sp, #64]	; 0x40
    ff22:	f8dd c050 	ldr.w	ip, [sp, #80]	; 0x50
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    ff26:	1c50      	adds	r0, r2, #1
    ff28:	e066      	b.n	fff8 <_vsnprintf+0x928>
    ff2a:	469c      	mov	ip, r3
    ff2c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    ff30:	f001 070e 	and.w	r7, r1, #14
    ff34:	2f0a      	cmp	r7, #10
    ff36:	f04f 0737 	mov.w	r7, #55	; 0x37
      const char digit = (char)(value % base);
    ff3a:	f001 030f 	and.w	r3, r1, #15
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    ff3e:	bf38      	it	cc
    ff40:	2730      	movcc	r7, #48	; 0x30
    ff42:	443b      	add	r3, r7
    ff44:	af17      	add	r7, sp, #92	; 0x5c
    ff46:	4417      	add	r7, r2
    ff48:	707b      	strb	r3, [r7, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    ff4a:	2910      	cmp	r1, #16
    ff4c:	f102 0301 	add.w	r3, r2, #1
    ff50:	d304      	bcc.n	ff5c <_vsnprintf+0x88c>
    ff52:	3202      	adds	r2, #2
    ff54:	0909      	lsrs	r1, r1, #4
    ff56:	2a20      	cmp	r2, #32
    ff58:	461a      	mov	r2, r3
    ff5a:	d3e9      	bcc.n	ff30 <_vsnprintf+0x860>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    ff5c:	1c59      	adds	r1, r3, #1
    ff5e:	4663      	mov	r3, ip
    ff60:	1cda      	adds	r2, r3, #3
    ff62:	602a      	str	r2, [r5, #0]
    ff64:	aa17      	add	r2, sp, #92	; 0x5c
    ff66:	e9cd 2100 	strd	r2, r1, [sp]
    ff6a:	2100      	movs	r1, #0
    ff6c:	9102      	str	r1, [sp, #8]
    ff6e:	2110      	movs	r1, #16
    ff70:	2708      	movs	r7, #8
    ff72:	e9cd 1403 	strd	r1, r4, [sp, #12]
    ff76:	9006      	str	r0, [sp, #24]
    ff78:	4658      	mov	r0, fp
    ff7a:	4641      	mov	r1, r8
    ff7c:	4672      	mov	r2, lr
    ff7e:	464b      	mov	r3, r9
    ff80:	9705      	str	r7, [sp, #20]
    ff82:	e084      	b.n	1008e <_vsnprintf+0x9be>
    ff84:	f04f 0802 	mov.w	r8, #2
    ff88:	e0a9      	b.n	100de <_vsnprintf+0xa0e>
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
    ff8a:	f8c5 c000 	str.w	ip, [r5]
    ff8e:	9816      	ldr	r0, [sp, #88]	; 0x58
    ff90:	7807      	ldrb	r7, [r0, #0]
    ff92:	3004      	adds	r0, #4
  if (!value) {
    ff94:	2f00      	cmp	r7, #0
    ff96:	9016      	str	r0, [sp, #88]	; 0x58
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
    ff98:	f10c 0101 	add.w	r1, ip, #1
  if (!value) {
    ff9c:	bf08      	it	eq
    ff9e:	f02a 0a10 	biceq.w	sl, sl, #16
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
    ffa2:	6029      	str	r1, [r5, #0]
  if (!(flags & FLAGS_PRECISION) || value) {
    ffa4:	bbc7      	cbnz	r7, 10018 <_vsnprintf+0x948>
    ffa6:	f41a 6180 	ands.w	r1, sl, #1024	; 0x400
    ffaa:	d035      	beq.n	10018 <_vsnprintf+0x948>
    ffac:	2100      	movs	r1, #0
    ffae:	e05a      	b.n	10066 <_vsnprintf+0x996>
    ffb0:	f00a 0120 	and.w	r1, sl, #32
    ffb4:	f081 0161 	eor.w	r1, r1, #97	; 0x61
    ffb8:	e9cd 3411 	strd	r3, r4, [sp, #68]	; 0x44
    ffbc:	f101 04f6 	add.w	r4, r1, #246	; 0xf6
    ffc0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
      value /= base;
    ffc4:	fbb0 f3f8 	udiv	r3, r0, r8
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    ffc8:	4621      	mov	r1, r4
    ffca:	fb03 0718 	mls	r7, r3, r8, r0
    ffce:	f007 05fe 	and.w	r5, r7, #254	; 0xfe
    ffd2:	2d0a      	cmp	r5, #10
    ffd4:	bf38      	it	cc
    ffd6:	2130      	movcc	r1, #48	; 0x30
    ffd8:	4439      	add	r1, r7
    ffda:	af17      	add	r7, sp, #92	; 0x5c
    ffdc:	4417      	add	r7, r2
    ffde:	7079      	strb	r1, [r7, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    ffe0:	4540      	cmp	r0, r8
    ffe2:	f102 0701 	add.w	r7, r2, #1
    ffe6:	d304      	bcc.n	fff2 <_vsnprintf+0x922>
    ffe8:	1c90      	adds	r0, r2, #2
    ffea:	2820      	cmp	r0, #32
    ffec:	463a      	mov	r2, r7
    ffee:	4618      	mov	r0, r3
    fff0:	d3e8      	bcc.n	ffc4 <_vsnprintf+0x8f4>
    fff2:	f240 0530 	movw	r5, #48	; 0x30
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    fff6:	1c78      	adds	r0, r7, #1
    fff8:	f2c1 0500 	movt	r5, #4096	; 0x1000
    fffc:	e9dd 3411 	ldrd	r3, r4, [sp, #68]	; 0x44
   10000:	1cd9      	adds	r1, r3, #3
   10002:	6029      	str	r1, [r5, #0]
   10004:	a917      	add	r1, sp, #92	; 0x5c
   10006:	e9cd 1000 	strd	r1, r0, [sp]
   1000a:	2000      	movs	r0, #0
   1000c:	9002      	str	r0, [sp, #8]
   1000e:	e9cd 8403 	strd	r8, r4, [sp, #12]
   10012:	f8cd c014 	str.w	ip, [sp, #20]
   10016:	e032      	b.n	1007e <_vsnprintf+0x9ae>
   10018:	f00a 0120 	and.w	r1, sl, #32
   1001c:	f081 0161 	eor.w	r1, r1, #97	; 0x61
   10020:	f101 00f6 	add.w	r0, r1, #246	; 0xf6
   10024:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
   10028:	9412      	str	r4, [sp, #72]	; 0x48
   1002a:	bf00      	nop
      value /= base;
   1002c:	fbb7 f1f8 	udiv	r1, r7, r8
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
   10030:	4602      	mov	r2, r0
   10032:	fb01 7518 	mls	r5, r1, r8, r7
   10036:	f005 04fe 	and.w	r4, r5, #254	; 0xfe
   1003a:	2c0a      	cmp	r4, #10
   1003c:	bf38      	it	cc
   1003e:	2230      	movcc	r2, #48	; 0x30
   10040:	442a      	add	r2, r5
   10042:	ad17      	add	r5, sp, #92	; 0x5c
   10044:	441d      	add	r5, r3
   10046:	706a      	strb	r2, [r5, #1]
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
   10048:	4547      	cmp	r7, r8
   1004a:	f103 0501 	add.w	r5, r3, #1
   1004e:	d304      	bcc.n	1005a <_vsnprintf+0x98a>
   10050:	1c9a      	adds	r2, r3, #2
   10052:	2a20      	cmp	r2, #32
   10054:	462b      	mov	r3, r5
   10056:	460f      	mov	r7, r1
   10058:	d3e8      	bcc.n	1002c <_vsnprintf+0x95c>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
   1005a:	1c69      	adds	r1, r5, #1
   1005c:	f240 0530 	movw	r5, #48	; 0x30
   10060:	9c12      	ldr	r4, [sp, #72]	; 0x48
   10062:	f2c1 0500 	movt	r5, #4096	; 0x1000
   10066:	f10c 0002 	add.w	r0, ip, #2
   1006a:	6028      	str	r0, [r5, #0]
   1006c:	a817      	add	r0, sp, #92	; 0x5c
   1006e:	e9cd 0100 	strd	r0, r1, [sp]
   10072:	2000      	movs	r0, #0
   10074:	9002      	str	r0, [sp, #8]
   10076:	9814      	ldr	r0, [sp, #80]	; 0x50
   10078:	e9cd 8403 	strd	r8, r4, [sp, #12]
   1007c:	9005      	str	r0, [sp, #20]
   1007e:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
   10082:	4658      	mov	r0, fp
   10084:	4641      	mov	r1, r8
   10086:	4672      	mov	r2, lr
   10088:	464b      	mov	r3, r9
   1008a:	f8cd a018 	str.w	sl, [sp, #24]
   1008e:	f001 f821 	bl	110d4 <_ntoa_format>
   10092:	4604      	mov	r4, r0
   10094:	6828      	ldr	r0, [r5, #0]
   10096:	3601      	adds	r6, #1
   10098:	3001      	adds	r0, #1
   1009a:	6028      	str	r0, [r5, #0]
   1009c:	46a6      	mov	lr, r4
  while (*format)
   1009e:	7830      	ldrb	r0, [r6, #0]
   100a0:	2825      	cmp	r0, #37	; 0x25
   100a2:	f47f ab33 	bne.w	f70c <_vsnprintf+0x3c>
   100a6:	f7ff bb39 	b.w	f71c <_vsnprintf+0x4c>
   100aa:	9f15      	ldr	r7, [sp, #84]	; 0x54
   100ac:	46a8      	mov	r8, r5
          while (l++ < width) {
   100ae:	f1aa 0502 	sub.w	r5, sl, #2
   100b2:	bf00      	nop
            out(' ', buffer, idx++, maxlen);
   100b4:	f8d8 0000 	ldr.w	r0, [r8]
   100b8:	4639      	mov	r1, r7
   100ba:	3001      	adds	r0, #1
   100bc:	f8c8 0000 	str.w	r0, [r8]
   100c0:	2020      	movs	r0, #32
   100c2:	4622      	mov	r2, r4
   100c4:	464b      	mov	r3, r9
   100c6:	f104 0a01 	add.w	sl, r4, #1
   100ca:	47d8      	blx	fp
   100cc:	46d6      	mov	lr, sl
          while (l++ < width) {
   100ce:	3d01      	subs	r5, #1
   100d0:	4654      	mov	r4, sl
   100d2:	d1ef      	bne.n	100b4 <_vsnprintf+0x9e4>
        out((char)va_arg(va, int), buffer, idx++, maxlen);
   100d4:	f8d8 3000 	ldr.w	r3, [r8]
   100d8:	4645      	mov	r5, r8
   100da:	e9dd 870b 	ldrd	r8, r7, [sp, #44]	; 0x2c
   100de:	1c58      	adds	r0, r3, #1
   100e0:	6028      	str	r0, [r5, #0]
   100e2:	9916      	ldr	r1, [sp, #88]	; 0x58
   100e4:	4672      	mov	r2, lr
   100e6:	f811 0b04 	ldrb.w	r0, [r1], #4
   100ea:	f10e 0401 	add.w	r4, lr, #1
   100ee:	9116      	str	r1, [sp, #88]	; 0x58
   100f0:	1c99      	adds	r1, r3, #2
   100f2:	6029      	str	r1, [r5, #0]
   100f4:	9915      	ldr	r1, [sp, #84]	; 0x54
   100f6:	464b      	mov	r3, r9
   100f8:	47d8      	blx	fp
        if (flags & FLAGS_LEFT) {
   100fa:	b19f      	cbz	r7, 10124 <_vsnprintf+0xa54>
   100fc:	9814      	ldr	r0, [sp, #80]	; 0x50
   100fe:	4580      	cmp	r8, r0
   10100:	d210      	bcs.n	10124 <_vsnprintf+0xa54>
   10102:	462f      	mov	r7, r5
          while (l++ < width) {
   10104:	eba0 0508 	sub.w	r5, r0, r8
   10108:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
            out(' ', buffer, idx++, maxlen);
   1010c:	6838      	ldr	r0, [r7, #0]
   1010e:	4622      	mov	r2, r4
   10110:	3001      	adds	r0, #1
   10112:	6038      	str	r0, [r7, #0]
   10114:	2020      	movs	r0, #32
   10116:	4641      	mov	r1, r8
   10118:	464b      	mov	r3, r9
   1011a:	3401      	adds	r4, #1
   1011c:	47d8      	blx	fp
          while (l++ < width) {
   1011e:	3d01      	subs	r5, #1
   10120:	d1f4      	bne.n	1010c <_vsnprintf+0xa3c>
   10122:	e09a      	b.n	1025a <_vsnprintf+0xb8a>
   10124:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
   10128:	e7b4      	b.n	10094 <_vsnprintf+0x9c4>
  return (unsigned int)(s - str);
   1012a:	1c69      	adds	r1, r5, #1
   1012c:	e002      	b.n	10134 <_vsnprintf+0xa64>
   1012e:	1ca9      	adds	r1, r5, #2
   10130:	e000      	b.n	10134 <_vsnprintf+0xa64>
   10132:	1ce9      	adds	r1, r5, #3
   10134:	f240 0530 	movw	r5, #48	; 0x30
   10138:	f8dd c050 	ldr.w	ip, [sp, #80]	; 0x50
   1013c:	e9dd 3411 	ldrd	r3, r4, [sp, #68]	; 0x44
   10140:	f2c1 0500 	movt	r5, #4096	; 0x1000
   10144:	4642      	mov	r2, r8
   10146:	1a89      	subs	r1, r1, r2
        if (flags & FLAGS_PRECISION) {
   10148:	f40a 6880 	and.w	r8, sl, #1024	; 0x400
   1014c:	42a1      	cmp	r1, r4
   1014e:	4627      	mov	r7, r4
   10150:	bf38      	it	cc
   10152:	460f      	movcc	r7, r1
   10154:	f1b8 0f00 	cmp.w	r8, #0
   10158:	bf08      	it	eq
   1015a:	460f      	moveq	r7, r1
        if (!(flags & FLAGS_LEFT)) {
   1015c:	f01a 0102 	ands.w	r1, sl, #2
   10160:	910e      	str	r1, [sp, #56]	; 0x38
   10162:	d120      	bne.n	101a6 <_vsnprintf+0xad6>
          while (l++ < width) {
   10164:	4567      	cmp	r7, ip
   10166:	d21d      	bcs.n	101a4 <_vsnprintf+0xad4>
            out(' ', buffer, idx++, maxlen);
   10168:	1cd8      	adds	r0, r3, #3
   1016a:	e9cd 8208 	strd	r8, r2, [sp, #32]
   1016e:	9412      	str	r4, [sp, #72]	; 0x48
   10170:	6028      	str	r0, [r5, #0]
   10172:	9915      	ldr	r1, [sp, #84]	; 0x54
   10174:	2020      	movs	r0, #32
   10176:	4672      	mov	r2, lr
   10178:	464b      	mov	r3, r9
          while (l++ < width) {
   1017a:	f10c 0801 	add.w	r8, ip, #1
            out(' ', buffer, idx++, maxlen);
   1017e:	f10e 0401 	add.w	r4, lr, #1
   10182:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
   10186:	4665      	mov	r5, ip
   10188:	47d8      	blx	fp
          while (l++ < width) {
   1018a:	1cb8      	adds	r0, r7, #2
   1018c:	4540      	cmp	r0, r8
   1018e:	f8cd 801c 	str.w	r8, [sp, #28]
   10192:	d164      	bne.n	1025e <_vsnprintf+0xb8e>
   10194:	f240 0830 	movw	r8, #48	; 0x30
   10198:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
            out(' ', buffer, idx++, maxlen);
   1019c:	46a6      	mov	lr, r4
   1019e:	f2c1 0800 	movt	r8, #4096	; 0x1000
   101a2:	e077      	b.n	10294 <_vsnprintf+0xbc4>
   101a4:	3701      	adds	r7, #1
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
   101a6:	2800      	cmp	r0, #0
   101a8:	970d      	str	r7, [sp, #52]	; 0x34
   101aa:	f000 807f 	beq.w	102ac <_vsnprintf+0xbdc>
   101ae:	f1b8 0f00 	cmp.w	r8, #0
   101b2:	d023      	beq.n	101fc <_vsnprintf+0xb2c>
   101b4:	f3ca 2880 	ubfx	r8, sl, #10, #1
   101b8:	eb04 0108 	add.w	r1, r4, r8
   101bc:	f102 0b01 	add.w	fp, r2, #1
   101c0:	424f      	negs	r7, r1
   101c2:	bf00      	nop
   101c4:	eb17 0708 	adds.w	r7, r7, r8
   101c8:	d070      	beq.n	102ac <_vsnprintf+0xbdc>
   101ca:	f240 0130 	movw	r1, #48	; 0x30
   101ce:	f2c1 0100 	movt	r1, #4096	; 0x1000
   101d2:	460a      	mov	r2, r1
          out(*(p++), buffer, idx++, maxlen);
   101d4:	6809      	ldr	r1, [r1, #0]
   101d6:	b2c0      	uxtb	r0, r0
   101d8:	3101      	adds	r1, #1
   101da:	6011      	str	r1, [r2, #0]
   101dc:	9915      	ldr	r1, [sp, #84]	; 0x54
   101de:	9d13      	ldr	r5, [sp, #76]	; 0x4c
   101e0:	4672      	mov	r2, lr
   101e2:	464b      	mov	r3, r9
   101e4:	f10b 0a01 	add.w	sl, fp, #1
   101e8:	f10e 0401 	add.w	r4, lr, #1
   101ec:	47a8      	blx	r5
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
   101ee:	f89b 0000 	ldrb.w	r0, [fp]
   101f2:	46d3      	mov	fp, sl
   101f4:	2800      	cmp	r0, #0
   101f6:	46a6      	mov	lr, r4
   101f8:	d1e4      	bne.n	101c4 <_vsnprintf+0xaf4>
   101fa:	e012      	b.n	10222 <_vsnprintf+0xb52>
   101fc:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
   10200:	462f      	mov	r7, r5
   10202:	1e55      	subs	r5, r2, #1
          out(*(p++), buffer, idx++, maxlen);
   10204:	6839      	ldr	r1, [r7, #0]
   10206:	b2c0      	uxtb	r0, r0
   10208:	3101      	adds	r1, #1
   1020a:	6039      	str	r1, [r7, #0]
   1020c:	4641      	mov	r1, r8
   1020e:	4672      	mov	r2, lr
   10210:	464b      	mov	r3, r9
   10212:	f10e 0401 	add.w	r4, lr, #1
   10216:	47d8      	blx	fp
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
   10218:	78a8      	ldrb	r0, [r5, #2]
   1021a:	3501      	adds	r5, #1
   1021c:	2800      	cmp	r0, #0
   1021e:	46a6      	mov	lr, r4
   10220:	d1f0      	bne.n	10204 <_vsnprintf+0xb34>
        if (flags & FLAGS_LEFT) {
   10222:	980e      	ldr	r0, [sp, #56]	; 0x38
   10224:	2800      	cmp	r0, #0
   10226:	d045      	beq.n	102b4 <_vsnprintf+0xbe4>
   10228:	9814      	ldr	r0, [sp, #80]	; 0x50
   1022a:	990d      	ldr	r1, [sp, #52]	; 0x34
   1022c:	4281      	cmp	r1, r0
   1022e:	d241      	bcs.n	102b4 <_vsnprintf+0xbe4>
   10230:	f8dd b04c 	ldr.w	fp, [sp, #76]	; 0x4c
   10234:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
   10238:	f240 0730 	movw	r7, #48	; 0x30
          while (l++ < width) {
   1023c:	1a45      	subs	r5, r0, r1
   1023e:	f2c1 0700 	movt	r7, #4096	; 0x1000
   10242:	bf00      	nop
            out(' ', buffer, idx++, maxlen);
   10244:	6838      	ldr	r0, [r7, #0]
   10246:	4622      	mov	r2, r4
   10248:	3001      	adds	r0, #1
   1024a:	6038      	str	r0, [r7, #0]
   1024c:	2020      	movs	r0, #32
   1024e:	4641      	mov	r1, r8
   10250:	464b      	mov	r3, r9
   10252:	3401      	adds	r4, #1
   10254:	47d8      	blx	fp
          while (l++ < width) {
   10256:	3d01      	subs	r5, #1
   10258:	d1f4      	bne.n	10244 <_vsnprintf+0xb74>
   1025a:	463d      	mov	r5, r7
   1025c:	e71a      	b.n	10094 <_vsnprintf+0x9c4>
          while (l++ < width) {
   1025e:	1b7d      	subs	r5, r7, r5
   10260:	9f15      	ldr	r7, [sp, #84]	; 0x54
   10262:	f240 0830 	movw	r8, #48	; 0x30
   10266:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
   1026a:	f2c1 0800 	movt	r8, #4096	; 0x1000
   1026e:	bf00      	nop
            out(' ', buffer, idx++, maxlen);
   10270:	f8d8 0000 	ldr.w	r0, [r8]
   10274:	f104 0b01 	add.w	fp, r4, #1
   10278:	3001      	adds	r0, #1
   1027a:	f8c8 0000 	str.w	r0, [r8]
   1027e:	4622      	mov	r2, r4
   10280:	9c13      	ldr	r4, [sp, #76]	; 0x4c
   10282:	2020      	movs	r0, #32
   10284:	4639      	mov	r1, r7
   10286:	464b      	mov	r3, r9
   10288:	47a0      	blx	r4
          while (l++ < width) {
   1028a:	3501      	adds	r5, #1
   1028c:	46de      	mov	lr, fp
   1028e:	1c68      	adds	r0, r5, #1
   10290:	465c      	mov	r4, fp
   10292:	d1ed      	bne.n	10270 <_vsnprintf+0xba0>
   10294:	9a09      	ldr	r2, [sp, #36]	; 0x24
   10296:	9f07      	ldr	r7, [sp, #28]
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
   10298:	7810      	ldrb	r0, [r2, #0]
   1029a:	4645      	mov	r5, r8
   1029c:	e9dd 4b12 	ldrd	r4, fp, [sp, #72]	; 0x48
   102a0:	f8dd 8020 	ldr.w	r8, [sp, #32]
   102a4:	2800      	cmp	r0, #0
   102a6:	970d      	str	r7, [sp, #52]	; 0x34
   102a8:	f47f af81 	bne.w	101ae <_vsnprintf+0xade>
   102ac:	4674      	mov	r4, lr
        if (flags & FLAGS_LEFT) {
   102ae:	980e      	ldr	r0, [sp, #56]	; 0x38
   102b0:	2800      	cmp	r0, #0
   102b2:	d1b9      	bne.n	10228 <_vsnprintf+0xb58>
   102b4:	f8dd b04c 	ldr.w	fp, [sp, #76]	; 0x4c
   102b8:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
   102bc:	f240 0530 	movw	r5, #48	; 0x30
   102c0:	f2c1 0500 	movt	r5, #4096	; 0x1000
   102c4:	e6e6      	b.n	10094 <_vsnprintf+0x9c4>
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
   102c6:	6828      	ldr	r0, [r5, #0]
   102c8:	4672      	mov	r2, lr
   102ca:	3001      	adds	r0, #1
   102cc:	45ce      	cmp	lr, r9
   102ce:	bf28      	it	cs
   102d0:	f1a9 0201 	subcs.w	r2, r9, #1
   102d4:	6028      	str	r0, [r5, #0]
   102d6:	2000      	movs	r0, #0
   102d8:	4641      	mov	r1, r8
   102da:	464b      	mov	r3, r9
   102dc:	4674      	mov	r4, lr
   102de:	47d8      	blx	fp
  return (int)idx;
   102e0:	4620      	mov	r0, r4
   102e2:	b01f      	add	sp, #124	; 0x7c
   102e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

000102e8 <_out_null>:
}
   102e8:	4770      	bx	lr
   102ea:	d4d4      	bmi.n	10296 <_vsnprintf+0xbc6>

000102ec <_ftoa>:
{
   102ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   102f0:	b09d      	sub	sp, #116	; 0x74
   102f2:	e9dd 7526 	ldrd	r7, r5, [sp, #152]	; 0x98
   102f6:	9314      	str	r3, [sp, #80]	; 0x50
   102f8:	468a      	mov	sl, r1
   102fa:	4683      	mov	fp, r0
   102fc:	e9dd 9629 	ldrd	r9, r6, [sp, #164]	; 0xa4
   10300:	4614      	mov	r4, r2
  if (value != value)
   10302:	4638      	mov	r0, r7
   10304:	4629      	mov	r1, r5
   10306:	463a      	mov	r2, r7
   10308:	462b      	mov	r3, r5
   1030a:	f7fc fb97 	bl	ca3c <__aeabi_dcmpun>
   1030e:	bb78      	cbnz	r0, 10370 <_ftoa+0x84>
  if (value < -DBL_MAX)
   10310:	4638      	mov	r0, r7
   10312:	4629      	mov	r1, r5
   10314:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   10318:	f46f 1380 	mvn.w	r3, #1048576	; 0x100000
   1031c:	f7fc fb0a 	bl	c934 <__ledf2>
   10320:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   10324:	dc4a      	bgt.n	103bc <_ftoa+0xd0>
    return _out_rev(out, buffer, idx, maxlen, "fni-", 4, width, flags);
   10326:	f240 0830 	movw	r8, #48	; 0x30
   1032a:	f2c1 0800 	movt	r8, #4096	; 0x1000
   1032e:	f8d8 1000 	ldr.w	r1, [r8]
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   10332:	f1b9 0f05 	cmp.w	r9, #5
    return _out_rev(out, buffer, idx, maxlen, "fni-", 4, width, flags);
   10336:	f101 0001 	add.w	r0, r1, #1
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   1033a:	f006 0202 	and.w	r2, r6, #2
    return _out_rev(out, buffer, idx, maxlen, "fni-", 4, width, flags);
   1033e:	f8c8 0000 	str.w	r0, [r8]
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   10342:	9413      	str	r4, [sp, #76]	; 0x4c
   10344:	9211      	str	r2, [sp, #68]	; 0x44
   10346:	f0c0 8163 	bcc.w	10610 <_ftoa+0x324>
   1034a:	f016 0203 	ands.w	r2, r6, #3
   1034e:	f040 815f 	bne.w	10610 <_ftoa+0x324>
      out(' ', buffer, idx++, maxlen);
   10352:	1c88      	adds	r0, r1, #2
   10354:	9a13      	ldr	r2, [sp, #76]	; 0x4c
   10356:	f8c8 0000 	str.w	r0, [r8]
   1035a:	9b14      	ldr	r3, [sp, #80]	; 0x50
   1035c:	2020      	movs	r0, #32
   1035e:	4651      	mov	r1, sl
   10360:	1c57      	adds	r7, r2, #1
   10362:	47d8      	blx	fp
    for (size_t i = len; i < width; i++) {
   10364:	f1b9 0f05 	cmp.w	r9, #5
   10368:	f040 813e 	bne.w	105e8 <_ftoa+0x2fc>
      out(' ', buffer, idx++, maxlen);
   1036c:	463c      	mov	r4, r7
   1036e:	e14d      	b.n	1060c <_ftoa+0x320>
    return _out_rev(out, buffer, idx, maxlen, "nan", 3, width, flags);
   10370:	f240 0830 	movw	r8, #48	; 0x30
   10374:	f2c1 0800 	movt	r8, #4096	; 0x1000
   10378:	f8d8 1000 	ldr.w	r1, [r8]
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   1037c:	f1b9 0f04 	cmp.w	r9, #4
    return _out_rev(out, buffer, idx, maxlen, "nan", 3, width, flags);
   10380:	f101 0001 	add.w	r0, r1, #1
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   10384:	f006 0202 	and.w	r2, r6, #2
    return _out_rev(out, buffer, idx, maxlen, "nan", 3, width, flags);
   10388:	f8c8 0000 	str.w	r0, [r8]
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   1038c:	9212      	str	r2, [sp, #72]	; 0x48
   1038e:	f0c0 80d7 	bcc.w	10540 <_ftoa+0x254>
   10392:	f016 0203 	ands.w	r2, r6, #3
   10396:	46a1      	mov	r9, r4
   10398:	f040 80e6 	bne.w	10568 <_ftoa+0x27c>
      out(' ', buffer, idx++, maxlen);
   1039c:	1c88      	adds	r0, r1, #2
   1039e:	f8c8 0000 	str.w	r0, [r8]
   103a2:	9b14      	ldr	r3, [sp, #80]	; 0x50
   103a4:	464a      	mov	r2, r9
   103a6:	2020      	movs	r0, #32
   103a8:	4651      	mov	r1, sl
   103aa:	f109 0701 	add.w	r7, r9, #1
   103ae:	47d8      	blx	fp
   103b0:	9829      	ldr	r0, [sp, #164]	; 0xa4
    for (size_t i = len; i < width; i++) {
   103b2:	2804      	cmp	r0, #4
   103b4:	f040 80c6 	bne.w	10544 <_ftoa+0x258>
      out(' ', buffer, idx++, maxlen);
   103b8:	463c      	mov	r4, r7
   103ba:	e0d3      	b.n	10564 <_ftoa+0x278>
   103bc:	f64f 73ff 	movw	r3, #65535	; 0xffff
   103c0:	f6c7 73ef 	movt	r3, #32751	; 0x7fef
  if (value > DBL_MAX)
   103c4:	4638      	mov	r0, r7
   103c6:	4629      	mov	r1, r5
   103c8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   103cc:	f7fc faae 	bl	c92c <__gedf2>
   103d0:	2801      	cmp	r0, #1
   103d2:	db44      	blt.n	1045e <_ftoa+0x172>
    return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
   103d4:	f016 0004 	ands.w	r0, r6, #4
   103d8:	f241 70a5 	movw	r0, #6053	; 0x17a5
   103dc:	f641 219a 	movw	r1, #6810	; 0x1a9a
   103e0:	f240 0830 	movw	r8, #48	; 0x30
   103e4:	f2c0 0001 	movt	r0, #1
   103e8:	f2c0 0101 	movt	r1, #1
   103ec:	f2c1 0800 	movt	r8, #4096	; 0x1000
   103f0:	bf18      	it	ne
   103f2:	4601      	movne	r1, r0
   103f4:	f8d8 0000 	ldr.w	r0, [r8]
   103f8:	910f      	str	r1, [sp, #60]	; 0x3c
   103fa:	9b14      	ldr	r3, [sp, #80]	; 0x50
   103fc:	f04f 0903 	mov.w	r9, #3
   10400:	f100 0101 	add.w	r1, r0, #1
   10404:	bf18      	it	ne
   10406:	f04f 0904 	movne.w	r9, #4
   1040a:	f8c8 1000 	str.w	r1, [r8]
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   1040e:	07b1      	lsls	r1, r6, #30
   10410:	465d      	mov	r5, fp
   10412:	46d3      	mov	fp, sl
   10414:	9413      	str	r4, [sp, #76]	; 0x4c
   10416:	f040 8181 	bne.w	1071c <_ftoa+0x430>
   1041a:	9929      	ldr	r1, [sp, #164]	; 0xa4
   1041c:	9c13      	ldr	r4, [sp, #76]	; 0x4c
   1041e:	4589      	cmp	r9, r1
   10420:	f080 817c 	bcs.w	1071c <_ftoa+0x430>
   10424:	9a13      	ldr	r2, [sp, #76]	; 0x4c
      out(' ', buffer, idx++, maxlen);
   10426:	3002      	adds	r0, #2
   10428:	f8c8 0000 	str.w	r0, [r8]
   1042c:	2020      	movs	r0, #32
   1042e:	4659      	mov	r1, fp
   10430:	1c57      	adds	r7, r2, #1
   10432:	f8cd b040 	str.w	fp, [sp, #64]	; 0x40
   10436:	461e      	mov	r6, r3
   10438:	9509      	str	r5, [sp, #36]	; 0x24
   1043a:	47a8      	blx	r5
   1043c:	9929      	ldr	r1, [sp, #164]	; 0xa4
    for (size_t i = len; i < width; i++) {
   1043e:	f109 0001 	add.w	r0, r9, #1
   10442:	4288      	cmp	r0, r1
   10444:	f040 814c 	bne.w	106e0 <_ftoa+0x3f4>
   10448:	4633      	mov	r3, r6
   1044a:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
   1044e:	9d09      	ldr	r5, [sp, #36]	; 0x24
   10450:	9e2a      	ldr	r6, [sp, #168]	; 0xa8
   10452:	f240 0830 	movw	r8, #48	; 0x30
   10456:	463c      	mov	r4, r7
   10458:	f2c1 0800 	movt	r8, #4096	; 0x1000
   1045c:	e15e      	b.n	1071c <_ftoa+0x430>
   1045e:	f64c 5365 	movw	r3, #52581	; 0xcd65
   10462:	f2c4 13cd 	movt	r3, #16845	; 0x41cd
  if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
   10466:	4638      	mov	r0, r7
   10468:	4629      	mov	r1, r5
   1046a:	2200      	movs	r2, #0
   1046c:	46a0      	mov	r8, r4
   1046e:	f7fc fa5d 	bl	c92c <__gedf2>
   10472:	2800      	cmp	r0, #0
   10474:	f300 811c 	bgt.w	106b0 <_ftoa+0x3c4>
   10478:	f64c 5365 	movw	r3, #52581	; 0xcd65
   1047c:	f2cc 13cd 	movt	r3, #49613	; 0xc1cd
   10480:	4638      	mov	r0, r7
   10482:	4629      	mov	r1, r5
   10484:	2200      	movs	r2, #0
   10486:	2400      	movs	r4, #0
   10488:	f7fc fa54 	bl	c934 <__ledf2>
   1048c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   10490:	f340 810e 	ble.w	106b0 <_ftoa+0x3c4>
  if (value < 0) {
   10494:	4638      	mov	r0, r7
   10496:	4629      	mov	r1, r5
   10498:	2200      	movs	r2, #0
   1049a:	2300      	movs	r3, #0
   1049c:	f8cd 804c 	str.w	r8, [sp, #76]	; 0x4c
   104a0:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
   104a4:	f7fc fa46 	bl	c934 <__ledf2>
   104a8:	4682      	mov	sl, r0
   104aa:	2800      	cmp	r0, #0
   104ac:	f04f 0000 	mov.w	r0, #0
   104b0:	bf48      	it	mi
   104b2:	2001      	movmi	r0, #1
   104b4:	9007      	str	r0, [sp, #28]
   104b6:	2000      	movs	r0, #0
   104b8:	2100      	movs	r1, #0
   104ba:	463a      	mov	r2, r7
   104bc:	462b      	mov	r3, r5
   104be:	f7fb fe23 	bl	c108 <__aeabi_dsub>
   104c2:	f1ba 0f00 	cmp.w	sl, #0
   104c6:	4680      	mov	r8, r0
   104c8:	bf58      	it	pl
   104ca:	4629      	movpl	r1, r5
   104cc:	910c      	str	r1, [sp, #48]	; 0x30
   104ce:	bf58      	it	pl
   104d0:	46b8      	movpl	r8, r7
   104d2:	0570      	lsls	r0, r6, #21
   104d4:	f8dd a0a0 	ldr.w	sl, [sp, #160]	; 0xa0
   104d8:	bf58      	it	pl
   104da:	f04f 0a06 	movpl.w	sl, #6
  while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
   104de:	f1ba 0f0a 	cmp.w	sl, #10
   104e2:	f0c0 8163 	bcc.w	107ac <_ftoa+0x4c0>
   104e6:	f1aa 000a 	sub.w	r0, sl, #10
   104ea:	281f      	cmp	r0, #31
   104ec:	bf28      	it	cs
   104ee:	201f      	movcs	r0, #31
   104f0:	1c42      	adds	r2, r0, #1
   104f2:	a815      	add	r0, sp, #84	; 0x54
    buf[len++] = '0';
   104f4:	2130      	movs	r1, #48	; 0x30
   104f6:	f001 f8a6 	bl	11646 <memset>
  while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
   104fa:	f1aa 0004 	sub.w	r0, sl, #4
   104fe:	f1aa 0203 	sub.w	r2, sl, #3
   10502:	f1aa 0302 	sub.w	r3, sl, #2
   10506:	2100      	movs	r1, #0
   10508:	2704      	movs	r7, #4
   1050a:	bf00      	nop
   1050c:	eb0a 0601 	add.w	r6, sl, r1
   10510:	1e75      	subs	r5, r6, #1
   10512:	2d09      	cmp	r5, #9
   10514:	f240 813d 	bls.w	10792 <_ftoa+0x4a6>
   10518:	185d      	adds	r5, r3, r1
   1051a:	2d0a      	cmp	r5, #10
   1051c:	f0c0 813d 	bcc.w	1079a <_ftoa+0x4ae>
   10520:	1855      	adds	r5, r2, r1
   10522:	2d0a      	cmp	r5, #10
   10524:	f0c0 813e 	bcc.w	107a4 <_ftoa+0x4b8>
   10528:	2f1f      	cmp	r7, #31
   1052a:	f1a1 0604 	sub.w	r6, r1, #4
   1052e:	d804      	bhi.n	1053a <_ftoa+0x24e>
   10530:	4401      	add	r1, r0
   10532:	3704      	adds	r7, #4
   10534:	2909      	cmp	r1, #9
   10536:	4631      	mov	r1, r6
   10538:	d8e8      	bhi.n	1050c <_ftoa+0x220>
  int whole = (int)value;
   1053a:	44b2      	add	sl, r6
   1053c:	4274      	negs	r4, r6
   1053e:	e135      	b.n	107ac <_ftoa+0x4c0>
   10540:	46a1      	mov	r9, r4
   10542:	e011      	b.n	10568 <_ftoa+0x27c>
   10544:	9d14      	ldr	r5, [sp, #80]	; 0x50
    for (size_t i = len; i < width; i++) {
   10546:	1f06      	subs	r6, r0, #4
      out(' ', buffer, idx++, maxlen);
   10548:	f8d8 0000 	ldr.w	r0, [r8]
   1054c:	4651      	mov	r1, sl
   1054e:	3001      	adds	r0, #1
   10550:	f8c8 0000 	str.w	r0, [r8]
   10554:	2020      	movs	r0, #32
   10556:	463a      	mov	r2, r7
   10558:	462b      	mov	r3, r5
   1055a:	1c7c      	adds	r4, r7, #1
   1055c:	47d8      	blx	fp
    for (size_t i = len; i < width; i++) {
   1055e:	3e01      	subs	r6, #1
   10560:	4627      	mov	r7, r4
   10562:	d1f1      	bne.n	10548 <_ftoa+0x25c>
    out(buf[--len], buffer, idx++, maxlen);
   10564:	f8d8 0000 	ldr.w	r0, [r8]
   10568:	3001      	adds	r0, #1
   1056a:	f8c8 0000 	str.w	r0, [r8]
   1056e:	9d14      	ldr	r5, [sp, #80]	; 0x50
   10570:	4656      	mov	r6, sl
   10572:	206e      	movs	r0, #110	; 0x6e
   10574:	4631      	mov	r1, r6
   10576:	4622      	mov	r2, r4
   10578:	462b      	mov	r3, r5
   1057a:	f104 0a01 	add.w	sl, r4, #1
   1057e:	47d8      	blx	fp
   10580:	f8d8 0000 	ldr.w	r0, [r8]
   10584:	4631      	mov	r1, r6
   10586:	3001      	adds	r0, #1
   10588:	f8c8 0000 	str.w	r0, [r8]
   1058c:	2061      	movs	r0, #97	; 0x61
   1058e:	4652      	mov	r2, sl
   10590:	462b      	mov	r3, r5
   10592:	1ca7      	adds	r7, r4, #2
   10594:	46b2      	mov	sl, r6
   10596:	47d8      	blx	fp
   10598:	f8d8 0000 	ldr.w	r0, [r8]
   1059c:	4631      	mov	r1, r6
   1059e:	3001      	adds	r0, #1
   105a0:	f8c8 0000 	str.w	r0, [r8]
   105a4:	206e      	movs	r0, #110	; 0x6e
   105a6:	463a      	mov	r2, r7
   105a8:	462b      	mov	r3, r5
   105aa:	3403      	adds	r4, #3
   105ac:	47d8      	blx	fp
  if (flags & FLAGS_LEFT) {
   105ae:	9812      	ldr	r0, [sp, #72]	; 0x48
   105b0:	2800      	cmp	r0, #0
   105b2:	f000 82e3 	beq.w	10b7c <_ftoa+0x890>
   105b6:	4649      	mov	r1, r9
   105b8:	eba4 0009 	sub.w	r0, r4, r9
   105bc:	f8dd 90a4 	ldr.w	r9, [sp, #164]	; 0xa4
   105c0:	4548      	cmp	r0, r9
   105c2:	f080 82db 	bcs.w	10b7c <_ftoa+0x890>
    while (idx - start_idx < width) {
   105c6:	424e      	negs	r6, r1
      out(' ', buffer, idx++, maxlen);
   105c8:	f8d8 0000 	ldr.w	r0, [r8]
   105cc:	4651      	mov	r1, sl
   105ce:	3001      	adds	r0, #1
   105d0:	f8c8 0000 	str.w	r0, [r8]
   105d4:	2020      	movs	r0, #32
   105d6:	4622      	mov	r2, r4
   105d8:	462b      	mov	r3, r5
   105da:	1c67      	adds	r7, r4, #1
   105dc:	47d8      	blx	fp
    while (idx - start_idx < width) {
   105de:	19f0      	adds	r0, r6, r7
   105e0:	4548      	cmp	r0, r9
   105e2:	463c      	mov	r4, r7
   105e4:	d3f0      	bcc.n	105c8 <_ftoa+0x2dc>
   105e6:	e2c5      	b.n	10b74 <_ftoa+0x888>
   105e8:	9d14      	ldr	r5, [sp, #80]	; 0x50
    for (size_t i = len; i < width; i++) {
   105ea:	f1a9 0605 	sub.w	r6, r9, #5
   105ee:	bf00      	nop
      out(' ', buffer, idx++, maxlen);
   105f0:	f8d8 0000 	ldr.w	r0, [r8]
   105f4:	4651      	mov	r1, sl
   105f6:	3001      	adds	r0, #1
   105f8:	f8c8 0000 	str.w	r0, [r8]
   105fc:	2020      	movs	r0, #32
   105fe:	463a      	mov	r2, r7
   10600:	462b      	mov	r3, r5
   10602:	1c7c      	adds	r4, r7, #1
   10604:	47d8      	blx	fp
    for (size_t i = len; i < width; i++) {
   10606:	3e01      	subs	r6, #1
   10608:	4627      	mov	r7, r4
   1060a:	d1f1      	bne.n	105f0 <_ftoa+0x304>
    out(buf[--len], buffer, idx++, maxlen);
   1060c:	f8d8 0000 	ldr.w	r0, [r8]
   10610:	3001      	adds	r0, #1
   10612:	f8c8 0000 	str.w	r0, [r8]
   10616:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
   1061a:	4656      	mov	r6, sl
   1061c:	202d      	movs	r0, #45	; 0x2d
   1061e:	4631      	mov	r1, r6
   10620:	4622      	mov	r2, r4
   10622:	464b      	mov	r3, r9
   10624:	f104 0a01 	add.w	sl, r4, #1
   10628:	47d8      	blx	fp
   1062a:	f8d8 0000 	ldr.w	r0, [r8]
   1062e:	4631      	mov	r1, r6
   10630:	3001      	adds	r0, #1
   10632:	f8c8 0000 	str.w	r0, [r8]
   10636:	2069      	movs	r0, #105	; 0x69
   10638:	4652      	mov	r2, sl
   1063a:	464b      	mov	r3, r9
   1063c:	1ca7      	adds	r7, r4, #2
   1063e:	47d8      	blx	fp
   10640:	f8d8 0000 	ldr.w	r0, [r8]
   10644:	4631      	mov	r1, r6
   10646:	3001      	adds	r0, #1
   10648:	f8c8 0000 	str.w	r0, [r8]
   1064c:	206e      	movs	r0, #110	; 0x6e
   1064e:	463a      	mov	r2, r7
   10650:	464b      	mov	r3, r9
   10652:	f104 0a03 	add.w	sl, r4, #3
   10656:	47d8      	blx	fp
   10658:	f8d8 0000 	ldr.w	r0, [r8]
   1065c:	4631      	mov	r1, r6
   1065e:	3001      	adds	r0, #1
   10660:	f8c8 0000 	str.w	r0, [r8]
   10664:	2066      	movs	r0, #102	; 0x66
   10666:	4652      	mov	r2, sl
   10668:	464b      	mov	r3, r9
   1066a:	3404      	adds	r4, #4
   1066c:	4635      	mov	r5, r6
   1066e:	46ca      	mov	sl, r9
   10670:	47d8      	blx	fp
  if (flags & FLAGS_LEFT) {
   10672:	9811      	ldr	r0, [sp, #68]	; 0x44
   10674:	2800      	cmp	r0, #0
   10676:	f000 8281 	beq.w	10b7c <_ftoa+0x890>
   1067a:	f8dd 904c 	ldr.w	r9, [sp, #76]	; 0x4c
   1067e:	9929      	ldr	r1, [sp, #164]	; 0xa4
   10680:	eba4 0009 	sub.w	r0, r4, r9
   10684:	4288      	cmp	r0, r1
   10686:	f080 8279 	bcs.w	10b7c <_ftoa+0x890>
    while (idx - start_idx < width) {
   1068a:	f1c9 0600 	rsb	r6, r9, #0
   1068e:	4689      	mov	r9, r1
      out(' ', buffer, idx++, maxlen);
   10690:	f8d8 0000 	ldr.w	r0, [r8]
   10694:	4629      	mov	r1, r5
   10696:	3001      	adds	r0, #1
   10698:	f8c8 0000 	str.w	r0, [r8]
   1069c:	2020      	movs	r0, #32
   1069e:	4622      	mov	r2, r4
   106a0:	4653      	mov	r3, sl
   106a2:	1c67      	adds	r7, r4, #1
   106a4:	47d8      	blx	fp
    while (idx - start_idx < width) {
   106a6:	19f0      	adds	r0, r6, r7
   106a8:	4548      	cmp	r0, r9
   106aa:	463c      	mov	r4, r7
   106ac:	d3f0      	bcc.n	10690 <_ftoa+0x3a4>
   106ae:	e261      	b.n	10b74 <_ftoa+0x888>
    return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
   106b0:	f240 0030 	movw	r0, #48	; 0x30
   106b4:	f2c1 0000 	movt	r0, #4096	; 0x1000
   106b8:	6801      	ldr	r1, [r0, #0]
   106ba:	4642      	mov	r2, r8
   106bc:	3101      	adds	r1, #1
   106be:	6001      	str	r1, [r0, #0]
   106c0:	9828      	ldr	r0, [sp, #160]	; 0xa0
   106c2:	9b14      	ldr	r3, [sp, #80]	; 0x50
   106c4:	e9cd 7500 	strd	r7, r5, [sp]
   106c8:	e9cd 0902 	strd	r0, r9, [sp, #8]
   106cc:	4658      	mov	r0, fp
   106ce:	4651      	mov	r1, sl
   106d0:	9604      	str	r6, [sp, #16]
   106d2:	f000 fa59 	bl	10b88 <_etoa>
   106d6:	4607      	mov	r7, r0
}
   106d8:	4638      	mov	r0, r7
   106da:	b01d      	add	sp, #116	; 0x74
   106dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   106e0:	4633      	mov	r3, r6
   106e2:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
   106e6:	9d09      	ldr	r5, [sp, #36]	; 0x24
   106e8:	9e2a      	ldr	r6, [sp, #168]	; 0xa8
   106ea:	f240 0830 	movw	r8, #48	; 0x30
    for (size_t i = len; i < width; i++) {
   106ee:	eba9 0a01 	sub.w	sl, r9, r1
   106f2:	f2c1 0800 	movt	r8, #4096	; 0x1000
   106f6:	bf00      	nop
      out(' ', buffer, idx++, maxlen);
   106f8:	f8d8 0000 	ldr.w	r0, [r8]
   106fc:	4659      	mov	r1, fp
   106fe:	3001      	adds	r0, #1
   10700:	f8c8 0000 	str.w	r0, [r8]
   10704:	2020      	movs	r0, #32
   10706:	463a      	mov	r2, r7
   10708:	1c7c      	adds	r4, r7, #1
   1070a:	461f      	mov	r7, r3
   1070c:	47a8      	blx	r5
    for (size_t i = len; i < width; i++) {
   1070e:	f10a 0a01 	add.w	sl, sl, #1
   10712:	463b      	mov	r3, r7
   10714:	f11a 0001 	adds.w	r0, sl, #1
   10718:	4627      	mov	r7, r4
   1071a:	d1ed      	bne.n	106f8 <_ftoa+0x40c>
   1071c:	f006 0002 	and.w	r0, r6, #2
  while (len) {
   10720:	900e      	str	r0, [sp, #56]	; 0x38
   10722:	980f      	ldr	r0, [sp, #60]	; 0x3c
   10724:	46aa      	mov	sl, r5
   10726:	1e47      	subs	r7, r0, #1
    out(buf[--len], buffer, idx++, maxlen);
   10728:	f8d8 1000 	ldr.w	r1, [r8]
   1072c:	f817 0009 	ldrb.w	r0, [r7, r9]
   10730:	3101      	adds	r1, #1
   10732:	4622      	mov	r2, r4
   10734:	f8c8 1000 	str.w	r1, [r8]
   10738:	4659      	mov	r1, fp
   1073a:	f1a9 0601 	sub.w	r6, r9, #1
   1073e:	3401      	adds	r4, #1
   10740:	461d      	mov	r5, r3
   10742:	47d0      	blx	sl
   10744:	462b      	mov	r3, r5
  while (len) {
   10746:	2e00      	cmp	r6, #0
   10748:	46b1      	mov	r9, r6
   1074a:	d1ed      	bne.n	10728 <_ftoa+0x43c>
  if (flags & FLAGS_LEFT) {
   1074c:	980e      	ldr	r0, [sp, #56]	; 0x38
   1074e:	2800      	cmp	r0, #0
   10750:	f000 8214 	beq.w	10b7c <_ftoa+0x890>
   10754:	9913      	ldr	r1, [sp, #76]	; 0x4c
   10756:	4655      	mov	r5, sl
   10758:	f8dd a0a4 	ldr.w	sl, [sp, #164]	; 0xa4
   1075c:	1a60      	subs	r0, r4, r1
   1075e:	4550      	cmp	r0, sl
   10760:	f080 820c 	bcs.w	10b7c <_ftoa+0x890>
   10764:	f240 0630 	movw	r6, #48	; 0x30
   10768:	4699      	mov	r9, r3
    while (idx - start_idx < width) {
   1076a:	f1c1 0800 	rsb	r8, r1, #0
   1076e:	f2c1 0600 	movt	r6, #4096	; 0x1000
   10772:	bf00      	nop
      out(' ', buffer, idx++, maxlen);
   10774:	6830      	ldr	r0, [r6, #0]
   10776:	4659      	mov	r1, fp
   10778:	3001      	adds	r0, #1
   1077a:	6030      	str	r0, [r6, #0]
   1077c:	2020      	movs	r0, #32
   1077e:	4622      	mov	r2, r4
   10780:	464b      	mov	r3, r9
   10782:	1c67      	adds	r7, r4, #1
   10784:	47a8      	blx	r5
    while (idx - start_idx < width) {
   10786:	eb08 0007 	add.w	r0, r8, r7
   1078a:	4550      	cmp	r0, sl
   1078c:	463c      	mov	r4, r7
   1078e:	d3f1      	bcc.n	10774 <_ftoa+0x488>
   10790:	e1f0      	b.n	10b74 <_ftoa+0x888>
  int whole = (int)value;
   10792:	f1c1 0401 	rsb	r4, r1, #1
   10796:	46aa      	mov	sl, r5
   10798:	e008      	b.n	107ac <_ftoa+0x4c0>
   1079a:	f1a6 0a02 	sub.w	sl, r6, #2
   1079e:	f1c1 0402 	rsb	r4, r1, #2
   107a2:	e003      	b.n	107ac <_ftoa+0x4c0>
   107a4:	f1a6 0a03 	sub.w	sl, r6, #3
   107a8:	f1c1 0403 	rsb	r4, r1, #3
   107ac:	9f0c      	ldr	r7, [sp, #48]	; 0x30
   107ae:	4640      	mov	r0, r8
   107b0:	4639      	mov	r1, r7
   107b2:	f7fc f873 	bl	c89c <__aeabi_d2iz>
   107b6:	4606      	mov	r6, r0
  double tmp = (value - whole) * pow10[prec];
   107b8:	f7fb fdf4 	bl	c3a4 <__aeabi_i2d>
   107bc:	4602      	mov	r2, r0
   107be:	460b      	mov	r3, r1
   107c0:	4640      	mov	r0, r8
   107c2:	4639      	mov	r1, r7
   107c4:	f8cd 8028 	str.w	r8, [sp, #40]	; 0x28
   107c8:	f7fb fc9e 	bl	c108 <__aeabi_dsub>
   107cc:	f641 3230 	movw	r2, #6960	; 0x1b30
   107d0:	f2c0 0201 	movt	r2, #1
   107d4:	eb02 03ca 	add.w	r3, r2, sl, lsl #3
   107d8:	f852 203a 	ldr.w	r2, [r2, sl, lsl #3]
   107dc:	685b      	ldr	r3, [r3, #4]
   107de:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
   107e2:	4690      	mov	r8, r2
   107e4:	9306      	str	r3, [sp, #24]
   107e6:	f7fb fe47 	bl	c478 <__aeabi_dmul>
   107ea:	4682      	mov	sl, r0
   107ec:	460d      	mov	r5, r1
  unsigned long frac = (unsigned long)tmp;
   107ee:	f7fc f87d 	bl	c8ec <__aeabi_d2uiz>
   107f2:	4607      	mov	r7, r0
  diff = tmp - frac;
   107f4:	f7fb fdc6 	bl	c384 <__aeabi_ui2d>
   107f8:	4602      	mov	r2, r0
   107fa:	460b      	mov	r3, r1
   107fc:	4650      	mov	r0, sl
   107fe:	4629      	mov	r1, r5
   10800:	f7fb fc82 	bl	c108 <__aeabi_dsub>
   10804:	2300      	movs	r3, #0
   10806:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
  if (diff > 0.5) {
   1080a:	2200      	movs	r2, #0
  diff = tmp - frac;
   1080c:	4682      	mov	sl, r0
   1080e:	460d      	mov	r5, r1
  if (diff > 0.5) {
   10810:	f7fc f88c 	bl	c92c <__gedf2>
   10814:	2801      	cmp	r0, #1
   10816:	db33      	blt.n	10880 <_ftoa+0x594>
    ++frac;
   10818:	3701      	adds	r7, #1
    if (frac >= pow10[prec]) {
   1081a:	4638      	mov	r0, r7
   1081c:	f7fb fdb2 	bl	c384 <__aeabi_ui2d>
   10820:	9d06      	ldr	r5, [sp, #24]
   10822:	4682      	mov	sl, r0
   10824:	460b      	mov	r3, r1
   10826:	9105      	str	r1, [sp, #20]
   10828:	4640      	mov	r0, r8
   1082a:	4629      	mov	r1, r5
   1082c:	4652      	mov	r2, sl
   1082e:	f7fc f881 	bl	c934 <__ledf2>
   10832:	2801      	cmp	r0, #1
   10834:	bfb8      	it	lt
   10836:	3601      	addlt	r6, #1
   10838:	9b05      	ldr	r3, [sp, #20]
   1083a:	4640      	mov	r0, r8
   1083c:	4629      	mov	r1, r5
   1083e:	4652      	mov	r2, sl
   10840:	f7fc f878 	bl	c934 <__ledf2>
   10844:	2801      	cmp	r0, #1
   10846:	bfb8      	it	lt
   10848:	2700      	movlt	r7, #0
   1084a:	e9dd 500a 	ldrd	r5, r0, [sp, #40]	; 0x28
  if (prec == 0U) {
   1084e:	bb58      	cbnz	r0, 108a8 <_ftoa+0x5bc>
    diff = value - (double)whole;
   10850:	4630      	mov	r0, r6
   10852:	f7fb fda7 	bl	c3a4 <__aeabi_i2d>
   10856:	460b      	mov	r3, r1
   10858:	990c      	ldr	r1, [sp, #48]	; 0x30
   1085a:	4602      	mov	r2, r0
   1085c:	4628      	mov	r0, r5
   1085e:	f7fb fc53 	bl	c108 <__aeabi_dsub>
   10862:	2300      	movs	r3, #0
   10864:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
    if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
   10868:	2200      	movs	r2, #0
   1086a:	2500      	movs	r5, #0
   1086c:	f7fc f862 	bl	c934 <__ledf2>
   10870:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   10874:	bfc8      	it	gt
   10876:	2501      	movgt	r5, #1
   10878:	ea06 0005 	and.w	r0, r6, r5
   1087c:	4406      	add	r6, r0
   1087e:	e084      	b.n	1098a <_ftoa+0x69e>
   10880:	2300      	movs	r3, #0
   10882:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
  else if (diff < 0.5) {
   10886:	4650      	mov	r0, sl
   10888:	4629      	mov	r1, r5
   1088a:	2200      	movs	r2, #0
   1088c:	f7fc f852 	bl	c934 <__ledf2>
   10890:	2800      	cmp	r0, #0
   10892:	d405      	bmi.n	108a0 <_ftoa+0x5b4>
  else if ((frac == 0U) || (frac & 1U)) {
   10894:	f007 0001 	and.w	r0, r7, #1
   10898:	2f00      	cmp	r7, #0
   1089a:	bf08      	it	eq
   1089c:	2001      	moveq	r0, #1
   1089e:	4407      	add	r7, r0
   108a0:	e9dd 500a 	ldrd	r5, r0, [sp, #40]	; 0x28
  if (prec == 0U) {
   108a4:	2800      	cmp	r0, #0
   108a6:	d0d3      	beq.n	10850 <_ftoa+0x564>
   108a8:	f10d 0a54 	add.w	sl, sp, #84	; 0x54
   108ac:	f64c 4ccd 	movw	ip, #52429	; 0xcccd
    while (len < PRINTF_FTOA_BUFFER_SIZE) {
   108b0:	f1c4 0020 	rsb	r0, r4, #32
   108b4:	eb0a 0204 	add.w	r2, sl, r4
   108b8:	2500      	movs	r5, #0
   108ba:	f6cc 4ccc 	movt	ip, #52428	; 0xcccc
   108be:	bf00      	nop
   108c0:	42a8      	cmp	r0, r5
   108c2:	d061      	beq.n	10988 <_ftoa+0x69c>
      if (!(frac /= 10U)) {
   108c4:	fba7 310c 	umull	r3, r1, r7, ip
   108c8:	08c9      	lsrs	r1, r1, #3
   108ca:	eb01 0381 	add.w	r3, r1, r1, lsl #2
   108ce:	eba7 0343 	sub.w	r3, r7, r3, lsl #1
      buf[len++] = (char)(48U + (frac % 10U));
   108d2:	f043 0330 	orr.w	r3, r3, #48	; 0x30
   108d6:	5553      	strb	r3, [r2, r5]
      if (!(frac /= 10U)) {
   108d8:	3501      	adds	r5, #1
   108da:	2f09      	cmp	r7, #9
   108dc:	460f      	mov	r7, r1
   108de:	d8ef      	bhi.n	108c0 <_ftoa+0x5d4>
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   108e0:	1961      	adds	r1, r4, r5
   108e2:	2000      	movs	r0, #0
   108e4:	2920      	cmp	r1, #32
   108e6:	bf38      	it	cc
   108e8:	2001      	movcc	r0, #1
   108ea:	291f      	cmp	r1, #31
   108ec:	d844      	bhi.n	10978 <_ftoa+0x68c>
   108ee:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
   108f2:	45a8      	cmp	r8, r5
   108f4:	d040      	beq.n	10978 <_ftoa+0x68c>
   108f6:	1950      	adds	r0, r2, r5
   108f8:	43ea      	mvns	r2, r5
   108fa:	4442      	add	r2, r8
   108fc:	f1c1 011f 	rsb	r1, r1, #31
   10900:	428a      	cmp	r2, r1
   10902:	bf38      	it	cc
   10904:	4611      	movcc	r1, r2
   10906:	1c4a      	adds	r2, r1, #1
      buf[len++] = '0';
   10908:	2130      	movs	r1, #48	; 0x30
   1090a:	f000 fe9c 	bl	11646 <memset>
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
   1090e:	f1a8 0c03 	sub.w	ip, r8, #3
   10912:	f1a8 0302 	sub.w	r3, r8, #2
   10916:	f1a8 0701 	sub.w	r7, r8, #1
   1091a:	f1a8 0e04 	sub.w	lr, r8, #4
   1091e:	1962      	adds	r2, r4, r5
   10920:	1c51      	adds	r1, r2, #1
   10922:	2920      	cmp	r1, #32
   10924:	f04f 0000 	mov.w	r0, #0
   10928:	bf38      	it	cc
   1092a:	2001      	movcc	r0, #1
   1092c:	291f      	cmp	r1, #31
   1092e:	d823      	bhi.n	10978 <_ftoa+0x68c>
   10930:	42af      	cmp	r7, r5
   10932:	d021      	beq.n	10978 <_ftoa+0x68c>
   10934:	1c91      	adds	r1, r2, #2
   10936:	2920      	cmp	r1, #32
   10938:	f04f 0000 	mov.w	r0, #0
   1093c:	bf38      	it	cc
   1093e:	2001      	movcc	r0, #1
   10940:	291f      	cmp	r1, #31
   10942:	d819      	bhi.n	10978 <_ftoa+0x68c>
   10944:	42ab      	cmp	r3, r5
   10946:	d017      	beq.n	10978 <_ftoa+0x68c>
   10948:	1cd1      	adds	r1, r2, #3
   1094a:	2920      	cmp	r1, #32
   1094c:	f04f 0000 	mov.w	r0, #0
   10950:	bf38      	it	cc
   10952:	2001      	movcc	r0, #1
   10954:	291f      	cmp	r1, #31
   10956:	d80f      	bhi.n	10978 <_ftoa+0x68c>
   10958:	45ac      	cmp	ip, r5
   1095a:	d00d      	beq.n	10978 <_ftoa+0x68c>
   1095c:	1d11      	adds	r1, r2, #4
   1095e:	2920      	cmp	r1, #32
   10960:	f04f 0000 	mov.w	r0, #0
   10964:	bf38      	it	cc
   10966:	2001      	movcc	r0, #1
   10968:	291f      	cmp	r1, #31
   1096a:	f105 0104 	add.w	r1, r5, #4
   1096e:	d802      	bhi.n	10976 <_ftoa+0x68a>
   10970:	45ae      	cmp	lr, r5
   10972:	460d      	mov	r5, r1
   10974:	d1d3      	bne.n	1091e <_ftoa+0x632>
   10976:	4421      	add	r1, r4
    if (len < PRINTF_FTOA_BUFFER_SIZE) {
   10978:	2800      	cmp	r0, #0
   1097a:	bf0f      	iteee	eq
   1097c:	2420      	moveq	r4, #32
      buf[len++] = '.';
   1097e:	1c4c      	addne	r4, r1, #1
   10980:	202e      	movne	r0, #46	; 0x2e
   10982:	f80a 0001 	strbne.w	r0, [sl, r1]
   10986:	e000      	b.n	1098a <_ftoa+0x69e>
   10988:	2420      	movs	r4, #32
   1098a:	f246 6067 	movw	r0, #26215	; 0x6667
   1098e:	f2c6 6066 	movt	r0, #26214	; 0x6666
   10992:	af15      	add	r7, sp, #84	; 0x54
  while (len < PRINTF_FTOA_BUFFER_SIZE) {
   10994:	2c1f      	cmp	r4, #31
   10996:	d826      	bhi.n	109e6 <_ftoa+0x6fa>
    if (!(whole /= 10)) {
   10998:	fb56 f100 	smmul	r1, r6, r0
   1099c:	108a      	asrs	r2, r1, #2
   1099e:	eb02 71d1 	add.w	r1, r2, r1, lsr #31
   109a2:	eb01 0281 	add.w	r2, r1, r1, lsl #2
   109a6:	eba6 0242 	sub.w	r2, r6, r2, lsl #1
    buf[len++] = (char)(48 + (whole % 10));
   109aa:	3230      	adds	r2, #48	; 0x30
   109ac:	f104 0a01 	add.w	sl, r4, #1
   109b0:	553a      	strb	r2, [r7, r4]
    if (!(whole /= 10)) {
   109b2:	f106 0209 	add.w	r2, r6, #9
   109b6:	2a12      	cmp	r2, #18
   109b8:	4654      	mov	r4, sl
   109ba:	460e      	mov	r6, r1
   109bc:	d8ea      	bhi.n	10994 <_ftoa+0x6a8>
   109be:	9e2a      	ldr	r6, [sp, #168]	; 0xa8
  if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
   109c0:	f006 0403 	and.w	r4, r6, #3
   109c4:	2c01      	cmp	r4, #1
   109c6:	d115      	bne.n	109f4 <_ftoa+0x708>
   109c8:	9d13      	ldr	r5, [sp, #76]	; 0x4c
    if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
   109ca:	f1b9 0f00 	cmp.w	r9, #0
   109ce:	d01a      	beq.n	10a06 <_ftoa+0x71a>
   109d0:	f016 000c 	ands.w	r0, r6, #12
   109d4:	bf18      	it	ne
   109d6:	2001      	movne	r0, #1
   109d8:	9907      	ldr	r1, [sp, #28]
   109da:	4308      	orrs	r0, r1
   109dc:	eba9 0900 	sub.w	r9, r9, r0
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
   109e0:	45ca      	cmp	sl, r9
   109e2:	d314      	bcc.n	10a0e <_ftoa+0x722>
   109e4:	e03f      	b.n	10a66 <_ftoa+0x77a>
   109e6:	f04f 0a20 	mov.w	sl, #32
   109ea:	9e2a      	ldr	r6, [sp, #168]	; 0xa8
  if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
   109ec:	f006 0403 	and.w	r4, r6, #3
   109f0:	2c01      	cmp	r4, #1
   109f2:	d0e9      	beq.n	109c8 <_ftoa+0x6dc>
   109f4:	9d13      	ldr	r5, [sp, #76]	; 0x4c
  if (len < PRINTF_FTOA_BUFFER_SIZE) {
   109f6:	f1ba 0f1f 	cmp.w	sl, #31
   109fa:	f8cd 9034 	str.w	r9, [sp, #52]	; 0x34
   109fe:	d937      	bls.n	10a70 <_ftoa+0x784>
   10a00:	f04f 0a20 	mov.w	sl, #32
   10a04:	e043      	b.n	10a8e <_ftoa+0x7a2>
   10a06:	f04f 0900 	mov.w	r9, #0
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
   10a0a:	45ca      	cmp	sl, r9
   10a0c:	d22b      	bcs.n	10a66 <_ftoa+0x77a>
   10a0e:	f1ba 0f1f 	cmp.w	sl, #31
   10a12:	d828      	bhi.n	10a66 <_ftoa+0x77a>
   10a14:	ea6f 010a 	mvn.w	r1, sl
   10a18:	4449      	add	r1, r9
   10a1a:	f1ca 021f 	rsb	r2, sl, #31
   10a1e:	4291      	cmp	r1, r2
   10a20:	bf38      	it	cc
   10a22:	460a      	movcc	r2, r1
   10a24:	eb07 000a 	add.w	r0, r7, sl
   10a28:	3201      	adds	r2, #1
      buf[len++] = '0';
   10a2a:	2130      	movs	r1, #48	; 0x30
   10a2c:	f000 fe0b 	bl	11646 <memset>
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
   10a30:	f10a 0001 	add.w	r0, sl, #1
   10a34:	4548      	cmp	r0, r9
   10a36:	bf38      	it	cc
   10a38:	2820      	cmpcc	r0, #32
   10a3a:	d213      	bcs.n	10a64 <_ftoa+0x778>
   10a3c:	f10a 0002 	add.w	r0, sl, #2
   10a40:	4548      	cmp	r0, r9
   10a42:	d20f      	bcs.n	10a64 <_ftoa+0x778>
   10a44:	281f      	cmp	r0, #31
   10a46:	d80d      	bhi.n	10a64 <_ftoa+0x778>
   10a48:	f10a 0003 	add.w	r0, sl, #3
   10a4c:	4548      	cmp	r0, r9
   10a4e:	d209      	bcs.n	10a64 <_ftoa+0x778>
   10a50:	281f      	cmp	r0, #31
   10a52:	d807      	bhi.n	10a64 <_ftoa+0x778>
      buf[len++] = '0';
   10a54:	f10a 0a04 	add.w	sl, sl, #4
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
   10a58:	45ca      	cmp	sl, r9
   10a5a:	d204      	bcs.n	10a66 <_ftoa+0x77a>
   10a5c:	f1ba 0f20 	cmp.w	sl, #32
   10a60:	d3e6      	bcc.n	10a30 <_ftoa+0x744>
   10a62:	e000      	b.n	10a66 <_ftoa+0x77a>
    buf[len++] = (char)(48 + (whole % 10));
   10a64:	4682      	mov	sl, r0
  if (len < PRINTF_FTOA_BUFFER_SIZE) {
   10a66:	f1ba 0f1f 	cmp.w	sl, #31
   10a6a:	f8cd 9034 	str.w	r9, [sp, #52]	; 0x34
   10a6e:	d8c7      	bhi.n	10a00 <_ftoa+0x714>
    if (negative) {
   10a70:	9807      	ldr	r0, [sp, #28]
   10a72:	b108      	cbz	r0, 10a78 <_ftoa+0x78c>
   10a74:	202d      	movs	r0, #45	; 0x2d
   10a76:	e006      	b.n	10a86 <_ftoa+0x79a>
    else if (flags & FLAGS_PLUS) {
   10a78:	0770      	lsls	r0, r6, #29
   10a7a:	d403      	bmi.n	10a84 <_ftoa+0x798>
    else if (flags & FLAGS_SPACE) {
   10a7c:	0730      	lsls	r0, r6, #28
   10a7e:	d506      	bpl.n	10a8e <_ftoa+0x7a2>
   10a80:	2020      	movs	r0, #32
   10a82:	e000      	b.n	10a86 <_ftoa+0x79a>
   10a84:	202b      	movs	r0, #43	; 0x2b
   10a86:	f807 000a 	strb.w	r0, [r7, sl]
   10a8a:	f10a 0a01 	add.w	sl, sl, #1
  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
   10a8e:	f240 0830 	movw	r8, #48	; 0x30
   10a92:	f2c1 0800 	movt	r8, #4096	; 0x1000
   10a96:	f8d8 0000 	ldr.w	r0, [r8]
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   10a9a:	2c00      	cmp	r4, #0
  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
   10a9c:	f100 0101 	add.w	r1, r0, #1
   10aa0:	f8c8 1000 	str.w	r1, [r8]
   10aa4:	462c      	mov	r4, r5
   10aa6:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
   10aaa:	9d14      	ldr	r5, [sp, #80]	; 0x50
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   10aac:	d12b      	bne.n	10b06 <_ftoa+0x81a>
   10aae:	990d      	ldr	r1, [sp, #52]	; 0x34
   10ab0:	9c13      	ldr	r4, [sp, #76]	; 0x4c
   10ab2:	458a      	cmp	sl, r1
   10ab4:	d227      	bcs.n	10b06 <_ftoa+0x81a>
   10ab6:	9a13      	ldr	r2, [sp, #76]	; 0x4c
      out(' ', buffer, idx++, maxlen);
   10ab8:	3002      	adds	r0, #2
   10aba:	f8c8 0000 	str.w	r0, [r8]
   10abe:	2020      	movs	r0, #32
   10ac0:	4649      	mov	r1, r9
   10ac2:	462b      	mov	r3, r5
   10ac4:	1c57      	adds	r7, r2, #1
   10ac6:	47d8      	blx	fp
   10ac8:	990d      	ldr	r1, [sp, #52]	; 0x34
    for (size_t i = len; i < width; i++) {
   10aca:	f10a 0001 	add.w	r0, sl, #1
   10ace:	4288      	cmp	r0, r1
   10ad0:	d104      	bne.n	10adc <_ftoa+0x7f0>
   10ad2:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
   10ad6:	9d14      	ldr	r5, [sp, #80]	; 0x50
   10ad8:	463c      	mov	r4, r7
   10ada:	e014      	b.n	10b06 <_ftoa+0x81a>
   10adc:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
   10ae0:	9d14      	ldr	r5, [sp, #80]	; 0x50
   10ae2:	ebaa 0601 	sub.w	r6, sl, r1
   10ae6:	bf00      	nop
      out(' ', buffer, idx++, maxlen);
   10ae8:	f8d8 0000 	ldr.w	r0, [r8]
   10aec:	4649      	mov	r1, r9
   10aee:	3001      	adds	r0, #1
   10af0:	f8c8 0000 	str.w	r0, [r8]
   10af4:	2020      	movs	r0, #32
   10af6:	463a      	mov	r2, r7
   10af8:	462b      	mov	r3, r5
   10afa:	1c7c      	adds	r4, r7, #1
   10afc:	47d8      	blx	fp
    for (size_t i = len; i < width; i++) {
   10afe:	3601      	adds	r6, #1
   10b00:	1c70      	adds	r0, r6, #1
   10b02:	4627      	mov	r7, r4
   10b04:	d1f0      	bne.n	10ae8 <_ftoa+0x7fc>
   10b06:	982a      	ldr	r0, [sp, #168]	; 0xa8
   10b08:	f000 0002 	and.w	r0, r0, #2
  while (len) {
   10b0c:	9008      	str	r0, [sp, #32]
   10b0e:	a815      	add	r0, sp, #84	; 0x54
   10b10:	1e47      	subs	r7, r0, #1
   10b12:	bf00      	nop
    out(buf[--len], buffer, idx++, maxlen);
   10b14:	f8d8 1000 	ldr.w	r1, [r8]
   10b18:	f817 000a 	ldrb.w	r0, [r7, sl]
   10b1c:	3101      	adds	r1, #1
   10b1e:	4622      	mov	r2, r4
   10b20:	f8c8 1000 	str.w	r1, [r8]
   10b24:	4649      	mov	r1, r9
   10b26:	462b      	mov	r3, r5
   10b28:	f1aa 0601 	sub.w	r6, sl, #1
   10b2c:	3401      	adds	r4, #1
   10b2e:	47d8      	blx	fp
  while (len) {
   10b30:	2e00      	cmp	r6, #0
   10b32:	46b2      	mov	sl, r6
   10b34:	d1ee      	bne.n	10b14 <_ftoa+0x828>
  if (flags & FLAGS_LEFT) {
   10b36:	9808      	ldr	r0, [sp, #32]
   10b38:	9a13      	ldr	r2, [sp, #76]	; 0x4c
   10b3a:	b1f8      	cbz	r0, 10b7c <_ftoa+0x890>
   10b3c:	4659      	mov	r1, fp
   10b3e:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
   10b42:	1aa0      	subs	r0, r4, r2
   10b44:	4558      	cmp	r0, fp
   10b46:	d219      	bcs.n	10b7c <_ftoa+0x890>
   10b48:	9e10      	ldr	r6, [sp, #64]	; 0x40
    while (idx - start_idx < width) {
   10b4a:	f1c2 0900 	rsb	r9, r2, #0
   10b4e:	46aa      	mov	sl, r5
   10b50:	460d      	mov	r5, r1
   10b52:	bf00      	nop
      out(' ', buffer, idx++, maxlen);
   10b54:	f8d8 0000 	ldr.w	r0, [r8]
   10b58:	4631      	mov	r1, r6
   10b5a:	3001      	adds	r0, #1
   10b5c:	f8c8 0000 	str.w	r0, [r8]
   10b60:	2020      	movs	r0, #32
   10b62:	4622      	mov	r2, r4
   10b64:	4653      	mov	r3, sl
   10b66:	1c67      	adds	r7, r4, #1
   10b68:	47a8      	blx	r5
    while (idx - start_idx < width) {
   10b6a:	eb09 0007 	add.w	r0, r9, r7
   10b6e:	4558      	cmp	r0, fp
   10b70:	463c      	mov	r4, r7
   10b72:	d3ef      	bcc.n	10b54 <_ftoa+0x868>
}
   10b74:	4638      	mov	r0, r7
   10b76:	b01d      	add	sp, #116	; 0x74
   10b78:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10b7c:	4627      	mov	r7, r4
   10b7e:	4638      	mov	r0, r7
   10b80:	b01d      	add	sp, #116	; 0x74
   10b82:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10b86:	d4d4      	bmi.n	10b32 <_ftoa+0x846>

00010b88 <_etoa>:
{
   10b88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10b8c:	b09f      	sub	sp, #124	; 0x7c
   10b8e:	4605      	mov	r5, r0
   10b90:	e9dd 082b 	ldrd	r0, r8, [sp, #172]	; 0xac
   10b94:	e9dd 9428 	ldrd	r9, r4, [sp, #160]	; 0xa0
   10b98:	9015      	str	r0, [sp, #84]	; 0x54
   10b9a:	469a      	mov	sl, r3
   10b9c:	468b      	mov	fp, r1
   10b9e:	9e2a      	ldr	r6, [sp, #168]	; 0xa8
   10ba0:	4617      	mov	r7, r2
  if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
   10ba2:	4648      	mov	r0, r9
   10ba4:	4621      	mov	r1, r4
   10ba6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   10baa:	f46f 1380 	mvn.w	r3, #1048576	; 0x100000
   10bae:	f7fb fec1 	bl	c934 <__ledf2>
   10bb2:	2800      	cmp	r0, #0
   10bb4:	f100 8130 	bmi.w	10e18 <_etoa+0x290>
   10bb8:	4648      	mov	r0, r9
   10bba:	4621      	mov	r1, r4
   10bbc:	464a      	mov	r2, r9
   10bbe:	4623      	mov	r3, r4
   10bc0:	f7fb ff3c 	bl	ca3c <__aeabi_dcmpun>
   10bc4:	2800      	cmp	r0, #0
   10bc6:	f040 8127 	bne.w	10e18 <_etoa+0x290>
   10bca:	f64f 73ff 	movw	r3, #65535	; 0xffff
   10bce:	f6c7 73ef 	movt	r3, #32751	; 0x7fef
   10bd2:	4648      	mov	r0, r9
   10bd4:	4621      	mov	r1, r4
   10bd6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   10bda:	f7fb fea7 	bl	c92c <__gedf2>
   10bde:	2801      	cmp	r0, #1
   10be0:	f280 811a 	bge.w	10e18 <_etoa+0x290>
  const bool negative = value < 0;
   10be4:	4648      	mov	r0, r9
   10be6:	4621      	mov	r1, r4
   10be8:	2200      	movs	r2, #0
   10bea:	2300      	movs	r3, #0
   10bec:	e9cd 750f 	strd	r7, r5, [sp, #60]	; 0x3c
   10bf0:	f8cd b048 	str.w	fp, [sp, #72]	; 0x48
   10bf4:	f8cd a050 	str.w	sl, [sp, #80]	; 0x50
   10bf8:	2500      	movs	r5, #0
   10bfa:	f7fb fe9b 	bl	c934 <__ledf2>
   10bfe:	2800      	cmp	r0, #0
  conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
   10c00:	f240 0230 	movw	r2, #48	; 0x30
  const bool negative = value < 0;
   10c04:	bf48      	it	mi
   10c06:	2501      	movmi	r5, #1
   10c08:	950e      	str	r5, [sp, #56]	; 0x38
  if (negative) {
   10c0a:	bf48      	it	mi
   10c0c:	f084 4400 	eormi.w	r4, r4, #2147483648	; 0x80000000
  if (!(flags & FLAGS_PRECISION)) {
   10c10:	f418 6080 	ands.w	r0, r8, #1024	; 0x400
  conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
   10c14:	f2c1 0200 	movt	r2, #4096	; 0x1000
   10c18:	9413      	str	r4, [sp, #76]	; 0x4c
   10c1a:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
   10c1e:	9006      	str	r0, [sp, #24]
   10c20:	bf08      	it	eq
   10c22:	2606      	moveq	r6, #6
   10c24:	9608      	str	r6, [sp, #32]
  int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
   10c26:	f3c4 500a 	ubfx	r0, r4, #20, #11
  conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
   10c2a:	f8d2 b000 	ldr.w	fp, [r2]
   10c2e:	f240 31ff 	movw	r1, #1023	; 0x3ff
  int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
   10c32:	f2a0 30ff 	subw	r0, r0, #1023	; 0x3ff
  conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
   10c36:	f361 541f 	bfi	r4, r1, #20, #12
   10c3a:	f10b 0101 	add.w	r1, fp, #1
   10c3e:	6011      	str	r1, [r2, #0]
  int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
   10c40:	f7fb fbb0 	bl	c3a4 <__aeabi_i2d>
   10c44:	f647 12fb 	movw	r2, #31227	; 0x79fb
   10c48:	f244 4313 	movw	r3, #17427	; 0x4413
   10c4c:	f2c5 029f 	movt	r2, #20639	; 0x509f
   10c50:	f6c3 73d3 	movt	r3, #16339	; 0x3fd3
   10c54:	f7fb fc10 	bl	c478 <__aeabi_dmul>
   10c58:	f64c 02b3 	movw	r2, #51379	; 0xc8b3
   10c5c:	f648 2328 	movw	r3, #35368	; 0x8a28
   10c60:	f6c8 3260 	movt	r2, #35680	; 0x8b60
   10c64:	f6c3 73c6 	movt	r3, #16326	; 0x3fc6
   10c68:	f7fb fa50 	bl	c10c <__adddf3>
   10c6c:	2300      	movs	r3, #0
   10c6e:	4607      	mov	r7, r0
   10c70:	460d      	mov	r5, r1
   10c72:	f6cb 73f8 	movt	r3, #49144	; 0xbff8
   10c76:	4648      	mov	r0, r9
   10c78:	4621      	mov	r1, r4
   10c7a:	2200      	movs	r2, #0
   10c7c:	f7fb fa46 	bl	c10c <__adddf3>
   10c80:	f244 3261 	movw	r2, #17249	; 0x4361
   10c84:	f248 73a7 	movw	r3, #34727	; 0x87a7
   10c88:	f2c6 326f 	movt	r2, #25455	; 0x636f
   10c8c:	f6c3 73d2 	movt	r3, #16338	; 0x3fd2
   10c90:	f7fb fbf2 	bl	c478 <__aeabi_dmul>
   10c94:	463a      	mov	r2, r7
   10c96:	462b      	mov	r3, r5
   10c98:	f7fb fa38 	bl	c10c <__adddf3>
   10c9c:	f7fb fdfe 	bl	c89c <__aeabi_d2iz>
   10ca0:	4606      	mov	r6, r0
  exp2 = (int)(expval * 3.321928094887362 + 0.5);
   10ca2:	f7fb fb7f 	bl	c3a4 <__aeabi_i2d>
   10ca6:	f24a 3271 	movw	r2, #41841	; 0xa371
   10caa:	f249 334f 	movw	r3, #37711	; 0x934f
   10cae:	f6c0 1279 	movt	r2, #2425	; 0x979
   10cb2:	f2c4 030a 	movt	r3, #16394	; 0x400a
   10cb6:	4605      	mov	r5, r0
   10cb8:	460f      	mov	r7, r1
   10cba:	f7fb fbdd 	bl	c478 <__aeabi_dmul>
   10cbe:	2300      	movs	r3, #0
   10cc0:	f6c3 73e0 	movt	r3, #16352	; 0x3fe0
   10cc4:	2200      	movs	r2, #0
   10cc6:	f7fb fa21 	bl	c10c <__adddf3>
   10cca:	f7fb fde7 	bl	c89c <__aeabi_d2iz>
   10cce:	f245 5216 	movw	r2, #21782	; 0x5516
   10cd2:	f646 33b1 	movw	r3, #27569	; 0x6bb1
   10cd6:	4604      	mov	r4, r0
   10cd8:	f6cb 32b5 	movt	r2, #48053	; 0xbbb5
   10cdc:	f2c4 0302 	movt	r3, #16386	; 0x4002
  const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
   10ce0:	4628      	mov	r0, r5
   10ce2:	4639      	mov	r1, r7
   10ce4:	f7fb fbc8 	bl	c478 <__aeabi_dmul>
   10ce8:	4605      	mov	r5, r0
   10cea:	4620      	mov	r0, r4
   10cec:	460f      	mov	r7, r1
   10cee:	f7fb fb59 	bl	c3a4 <__aeabi_i2d>
   10cf2:	f643 12ef 	movw	r2, #14831	; 0x39ef
   10cf6:	f642 6342 	movw	r3, #11842	; 0x2e42
   10cfa:	f6cf 62fa 	movt	r2, #65274	; 0xfefa
   10cfe:	f6cb 73e6 	movt	r3, #49126	; 0xbfe6
   10d02:	f7fb fbb9 	bl	c478 <__aeabi_dmul>
   10d06:	4602      	mov	r2, r0
   10d08:	460b      	mov	r3, r1
   10d0a:	4628      	mov	r0, r5
   10d0c:	4639      	mov	r1, r7
   10d0e:	f7fb f9fd 	bl	c10c <__adddf3>
  const double z2 = z * z;
   10d12:	4602      	mov	r2, r0
   10d14:	460b      	mov	r3, r1
  const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
   10d16:	4605      	mov	r5, r0
   10d18:	460f      	mov	r7, r1
  const double z2 = z * z;
   10d1a:	f7fb fbad 	bl	c478 <__aeabi_dmul>
   10d1e:	4680      	mov	r8, r0
  conv.U = (uint64_t)(exp2 + 1023) << 52U;
   10d20:	f204 30ff 	addw	r0, r4, #1023	; 0x3ff
   10d24:	0500      	lsls	r0, r0, #20
   10d26:	f240 0430 	movw	r4, #48	; 0x30
   10d2a:	900c      	str	r0, [sp, #48]	; 0x30
   10d2c:	f10b 0002 	add.w	r0, fp, #2
   10d30:	f2c1 0400 	movt	r4, #4096	; 0x1000
  const double z2 = z * z;
   10d34:	468a      	mov	sl, r1
  conv.U = (uint64_t)(exp2 + 1023) << 52U;
   10d36:	6020      	str	r0, [r4, #0]
  conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
   10d38:	4628      	mov	r0, r5
   10d3a:	4639      	mov	r1, r7
   10d3c:	462a      	mov	r2, r5
   10d3e:	463b      	mov	r3, r7
   10d40:	f7fb f9e4 	bl	c10c <__adddf3>
   10d44:	e9cd 100a 	strd	r1, r0, [sp, #40]	; 0x28
   10d48:	2000      	movs	r0, #0
   10d4a:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
   10d4e:	462a      	mov	r2, r5
   10d50:	463b      	mov	r3, r7
   10d52:	f7fb f9d9 	bl	c108 <__aeabi_dsub>
   10d56:	2300      	movs	r3, #0
   10d58:	4604      	mov	r4, r0
   10d5a:	460d      	mov	r5, r1
   10d5c:	f2c4 032c 	movt	r3, #16428	; 0x402c
   10d60:	4640      	mov	r0, r8
   10d62:	4651      	mov	r1, sl
   10d64:	2200      	movs	r2, #0
   10d66:	f7fb fcb1 	bl	c6cc <__aeabi_ddiv>
   10d6a:	2300      	movs	r3, #0
   10d6c:	f2c4 0324 	movt	r3, #16420	; 0x4024
   10d70:	2200      	movs	r2, #0
   10d72:	f7fb f9cb 	bl	c10c <__adddf3>
   10d76:	4602      	mov	r2, r0
   10d78:	460b      	mov	r3, r1
   10d7a:	4640      	mov	r0, r8
   10d7c:	4651      	mov	r1, sl
   10d7e:	f7fb fca5 	bl	c6cc <__aeabi_ddiv>
   10d82:	2300      	movs	r3, #0
   10d84:	f2c4 0318 	movt	r3, #16408	; 0x4018
   10d88:	2200      	movs	r2, #0
   10d8a:	f7fb f9bf 	bl	c10c <__adddf3>
   10d8e:	4602      	mov	r2, r0
   10d90:	460b      	mov	r3, r1
   10d92:	4640      	mov	r0, r8
   10d94:	4651      	mov	r1, sl
   10d96:	9f13      	ldr	r7, [sp, #76]	; 0x4c
   10d98:	f7fb fc98 	bl	c6cc <__aeabi_ddiv>
   10d9c:	4602      	mov	r2, r0
   10d9e:	460b      	mov	r3, r1
   10da0:	4620      	mov	r0, r4
   10da2:	4629      	mov	r1, r5
   10da4:	f7fb f9b2 	bl	c10c <__adddf3>
   10da8:	4602      	mov	r2, r0
   10daa:	460b      	mov	r3, r1
   10dac:	e9dd 100a 	ldrd	r1, r0, [sp, #40]	; 0x28
   10db0:	f7fb fc8c 	bl	c6cc <__aeabi_ddiv>
   10db4:	2300      	movs	r3, #0
   10db6:	f6c3 73f0 	movt	r3, #16368	; 0x3ff0
   10dba:	2200      	movs	r2, #0
   10dbc:	f7fb f9a6 	bl	c10c <__adddf3>
   10dc0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
   10dc2:	2200      	movs	r2, #0
   10dc4:	f7fb fb58 	bl	c478 <__aeabi_dmul>
   10dc8:	4605      	mov	r5, r0
   10dca:	f240 0030 	movw	r0, #48	; 0x30
   10dce:	4688      	mov	r8, r1
   10dd0:	f10b 0403 	add.w	r4, fp, #3
   10dd4:	f2c1 0000 	movt	r0, #4096	; 0x1000
   10dd8:	6004      	str	r4, [r0, #0]
  if (value < conv.F) {
   10dda:	4648      	mov	r0, r9
   10ddc:	4639      	mov	r1, r7
   10dde:	462a      	mov	r2, r5
   10de0:	4643      	mov	r3, r8
   10de2:	46ca      	mov	sl, r9
   10de4:	f7fb fda6 	bl	c934 <__ledf2>
   10de8:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   10dec:	dc26      	bgt.n	10e3c <_etoa+0x2b4>
   10dee:	2300      	movs	r3, #0
   10df0:	f2c4 0324 	movt	r3, #16420	; 0x4024
    conv.F /= 10;
   10df4:	4628      	mov	r0, r5
   10df6:	4641      	mov	r1, r8
   10df8:	2200      	movs	r2, #0
    expval--;
   10dfa:	3e01      	subs	r6, #1
    conv.F /= 10;
   10dfc:	f7fb fc66 	bl	c6cc <__aeabi_ddiv>
   10e00:	4602      	mov	r2, r0
   10e02:	f240 0030 	movw	r0, #48	; 0x30
   10e06:	f10b 0404 	add.w	r4, fp, #4
   10e0a:	f2c1 0000 	movt	r0, #4096	; 0x1000
   10e0e:	6004      	str	r4, [r0, #0]
   10e10:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
   10e14:	4688      	mov	r8, r1
   10e16:	e014      	b.n	10e42 <_etoa+0x2ba>
    return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
   10e18:	f240 0c30 	movw	ip, #48	; 0x30
   10e1c:	f2c1 0c00 	movt	ip, #4096	; 0x1000
   10e20:	f8dc 0000 	ldr.w	r0, [ip]
   10e24:	4659      	mov	r1, fp
   10e26:	1c46      	adds	r6, r0, #1
   10e28:	4628      	mov	r0, r5
   10e2a:	463a      	mov	r2, r7
   10e2c:	4653      	mov	r3, sl
   10e2e:	f8cc 6000 	str.w	r6, [ip]
   10e32:	b01f      	add	sp, #124	; 0x7c
   10e34:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10e38:	f7ff ba58 	b.w	102ec <_ftoa>
   10e3c:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
   10e40:	462a      	mov	r2, r5
  unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
   10e42:	f106 0063 	add.w	r0, r6, #99	; 0x63
   10e46:	2105      	movs	r1, #5
   10e48:	28c7      	cmp	r0, #199	; 0xc7
   10e4a:	bf38      	it	cc
   10e4c:	2104      	movcc	r1, #4
  if (flags & FLAGS_ADAPT_EXP) {
   10e4e:	ea5f 500b 	movs.w	r0, fp, lsl #20
   10e52:	9111      	str	r1, [sp, #68]	; 0x44
   10e54:	940d      	str	r4, [sp, #52]	; 0x34
   10e56:	d402      	bmi.n	10e5e <_etoa+0x2d6>
   10e58:	9d08      	ldr	r5, [sp, #32]
   10e5a:	46b1      	mov	r9, r6
   10e5c:	e036      	b.n	10ecc <_etoa+0x344>
   10e5e:	9205      	str	r2, [sp, #20]
   10e60:	f244 322d 	movw	r2, #17197	; 0x432d
   10e64:	f243 63e2 	movw	r3, #14050	; 0x36e2
   10e68:	f6ce 321c 	movt	r2, #60188	; 0xeb1c
   10e6c:	f6c3 731a 	movt	r3, #16154	; 0x3f1a
    if ((value >= 1e-4) && (value < 1e6)) {
   10e70:	4650      	mov	r0, sl
   10e72:	4639      	mov	r1, r7
   10e74:	46b1      	mov	r9, r6
   10e76:	4656      	mov	r6, sl
   10e78:	f7fb fd58 	bl	c92c <__gedf2>
   10e7c:	2800      	cmp	r0, #0
   10e7e:	d419      	bmi.n	10eb4 <_etoa+0x32c>
   10e80:	f248 4380 	movw	r3, #33920	; 0x8480
   10e84:	f2c4 132e 	movt	r3, #16686	; 0x412e
   10e88:	4630      	mov	r0, r6
   10e8a:	4639      	mov	r1, r7
   10e8c:	2200      	movs	r2, #0
   10e8e:	f7fb fd51 	bl	c934 <__ledf2>
   10e92:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   10e96:	dc0d      	bgt.n	10eb4 <_etoa+0x32c>
   10e98:	9a08      	ldr	r2, [sp, #32]
      if ((int)prec > expval) {
   10e9a:	ea6f 0009 	mvn.w	r0, r9
   10e9e:	2500      	movs	r5, #0
   10ea0:	454a      	cmp	r2, r9
   10ea2:	bfc8      	it	gt
   10ea4:	1815      	addgt	r5, r2, r0
   10ea6:	2000      	movs	r0, #0
      flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
   10ea8:	f44b 6b80 	orr.w	fp, fp, #1024	; 0x400
   10eac:	f04f 0900 	mov.w	r9, #0
    }
   10eb0:	9011      	str	r0, [sp, #68]	; 0x44
   10eb2:	e00a      	b.n	10eca <_etoa+0x342>
   10eb4:	9906      	ldr	r1, [sp, #24]
  if (!(flags & FLAGS_PRECISION)) {
   10eb6:	2900      	cmp	r1, #0
   10eb8:	bf18      	it	ne
   10eba:	2101      	movne	r1, #1
   10ebc:	9d08      	ldr	r5, [sp, #32]
      if ((prec > 0) && (flags & FLAGS_PRECISION)) {
   10ebe:	4628      	mov	r0, r5
   10ec0:	2d00      	cmp	r5, #0
   10ec2:	bf18      	it	ne
   10ec4:	2001      	movne	r0, #1
   10ec6:	4008      	ands	r0, r1
   10ec8:	1a2d      	subs	r5, r5, r0
   10eca:	9a05      	ldr	r2, [sp, #20]
  if (width > minwidth) {
   10ecc:	9815      	ldr	r0, [sp, #84]	; 0x54
   10ece:	9c11      	ldr	r4, [sp, #68]	; 0x44
  if ((flags & FLAGS_LEFT) && minwidth) {
   10ed0:	f00b 0102 	and.w	r1, fp, #2
  if (width > minwidth) {
   10ed4:	1b00      	subs	r0, r0, r4
   10ed6:	bf38      	it	cc
   10ed8:	2000      	movcc	r0, #0
  if ((flags & FLAGS_LEFT) && minwidth) {
   10eda:	4607      	mov	r7, r0
   10edc:	2c00      	cmp	r4, #0
   10ede:	bf18      	it	ne
   10ee0:	2700      	movne	r7, #0
   10ee2:	9107      	str	r1, [sp, #28]
   10ee4:	2900      	cmp	r1, #0
   10ee6:	bf08      	it	eq
   10ee8:	4607      	moveq	r7, r0
   10eea:	9e13      	ldr	r6, [sp, #76]	; 0x4c
  if (expval) {
   10eec:	4650      	mov	r0, sl
   10eee:	4631      	mov	r1, r6
   10ef0:	4643      	mov	r3, r8
   10ef2:	f7fb fbeb 	bl	c6cc <__aeabi_ddiv>
   10ef6:	f1b9 0f00 	cmp.w	r9, #0
   10efa:	bf04      	itt	eq
   10efc:	4650      	moveq	r0, sl
   10efe:	4631      	moveq	r1, r6
  idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
   10f00:	9a0e      	ldr	r2, [sp, #56]	; 0x38
   10f02:	f240 0830 	movw	r8, #48	; 0x30
   10f06:	2a00      	cmp	r2, #0
   10f08:	bf18      	it	ne
   10f0a:	f081 4100 	eorne.w	r1, r1, #2147483648	; 0x80000000
   10f0e:	9a0d      	ldr	r2, [sp, #52]	; 0x34
   10f10:	f2c1 0800 	movt	r8, #4096	; 0x1000
   10f14:	3201      	adds	r2, #1
   10f16:	f8c8 2000 	str.w	r2, [r8]
   10f1a:	e88d 00a3 	stmia.w	sp, {r0, r1, r5, r7}
   10f1e:	9e10      	ldr	r6, [sp, #64]	; 0x40
   10f20:	9d12      	ldr	r5, [sp, #72]	; 0x48
   10f22:	9f14      	ldr	r7, [sp, #80]	; 0x50
   10f24:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
   10f26:	f42b 6c00 	bic.w	ip, fp, #2048	; 0x800
   10f2a:	4630      	mov	r0, r6
   10f2c:	4629      	mov	r1, r5
   10f2e:	463b      	mov	r3, r7
   10f30:	f8cd c010 	str.w	ip, [sp, #16]
   10f34:	f7ff f9da 	bl	102ec <_ftoa>
  if (minwidth) {
   10f38:	2c00      	cmp	r4, #0
  idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
   10f3a:	4604      	mov	r4, r0
  if (minwidth) {
   10f3c:	f000 80c0 	beq.w	110c0 <_etoa+0x538>
    out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
   10f40:	f8d8 1000 	ldr.w	r1, [r8]
   10f44:	f00b 0020 	and.w	r0, fp, #32
   10f48:	3101      	adds	r1, #1
   10f4a:	f080 0065 	eor.w	r0, r0, #101	; 0x65
   10f4e:	f8c8 1000 	str.w	r1, [r8]
   10f52:	4629      	mov	r1, r5
   10f54:	4622      	mov	r2, r4
   10f56:	463b      	mov	r3, r7
   10f58:	47b0      	blx	r6
    idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
   10f5a:	4648      	mov	r0, r9
   10f5c:	f1b9 0f00 	cmp.w	r9, #0
   10f60:	bf48      	it	mi
   10f62:	f1c9 0000 	rsbmi	r0, r9, #0
   10f66:	f8d8 c000 	ldr.w	ip, [r8]
   10f6a:	2500      	movs	r5, #0
   10f6c:	f10c 0101 	add.w	r1, ip, #1
   10f70:	f8c8 1000 	str.w	r1, [r8]
   10f74:	9e11      	ldr	r6, [sp, #68]	; 0x44
   10f76:	f64c 41cd 	movw	r1, #52429	; 0xcccd
    do {
   10f7a:	f1a6 0803 	sub.w	r8, r6, #3
   10f7e:	271f      	movs	r7, #31
   10f80:	f6cc 41cc 	movt	r1, #52428	; 0xcccc
   10f84:	f10d 0a5c 	add.w	sl, sp, #92	; 0x5c
      value /= base;
   10f88:	fba0 2301 	umull	r2, r3, r0, r1
   10f8c:	08da      	lsrs	r2, r3, #3
   10f8e:	eb02 0382 	add.w	r3, r2, r2, lsl #2
   10f92:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
   10f96:	f043 0330 	orr.w	r3, r3, #48	; 0x30
   10f9a:	f80a 3005 	strb.w	r3, [sl, r5]
   10f9e:	3501      	adds	r5, #1
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
   10fa0:	f1a8 0801 	sub.w	r8, r8, #1
   10fa4:	280a      	cmp	r0, #10
   10fa6:	f1a7 0701 	sub.w	r7, r7, #1
   10faa:	d302      	bcc.n	10fb2 <_etoa+0x42a>
   10fac:	2d20      	cmp	r5, #32
   10fae:	4610      	mov	r0, r2
   10fb0:	d3ea      	bcc.n	10f88 <_etoa+0x400>
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
   10fb2:	f240 0130 	movw	r1, #48	; 0x30
    out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
   10fb6:	1c63      	adds	r3, r4, #1
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
   10fb8:	f10c 0002 	add.w	r0, ip, #2
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10fbc:	2d1f      	cmp	r5, #31
  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
   10fbe:	f2c1 0100 	movt	r1, #4096	; 0x1000
   10fc2:	6008      	str	r0, [r1, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   10fc4:	d818      	bhi.n	10ff8 <_etoa+0x470>
   10fc6:	1eb0      	subs	r0, r6, #2
   10fc8:	4285      	cmp	r5, r0
   10fca:	d215      	bcs.n	10ff8 <_etoa+0x470>
   10fcc:	1b71      	subs	r1, r6, r5
   10fce:	3903      	subs	r1, #3
   10fd0:	f1c5 021f 	rsb	r2, r5, #31
   10fd4:	4291      	cmp	r1, r2
   10fd6:	bf38      	it	cc
   10fd8:	460a      	movcc	r2, r1
   10fda:	eb0a 0005 	add.w	r0, sl, r5
   10fde:	3201      	adds	r2, #1
      buf[len++] = '0';
   10fe0:	2130      	movs	r1, #48	; 0x30
   10fe2:	4666      	mov	r6, ip
   10fe4:	469b      	mov	fp, r3
   10fe6:	f000 fb2e 	bl	11646 <memset>
  if (len < PRINTF_NTOA_BUFFER_SIZE) {
   10fea:	45b8      	cmp	r8, r7
   10fec:	bf38      	it	cc
   10fee:	4647      	movcc	r7, r8
   10ff0:	1978      	adds	r0, r7, r5
   10ff2:	465b      	mov	r3, fp
   10ff4:	46b4      	mov	ip, r6
   10ff6:	1c45      	adds	r5, r0, #1
   10ff8:	2d1f      	cmp	r5, #31
   10ffa:	d809      	bhi.n	11010 <_etoa+0x488>
   10ffc:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
   11000:	202b      	movs	r0, #43	; 0x2b
   11002:	f1b9 0f00 	cmp.w	r9, #0
   11006:	bf48      	it	mi
   11008:	202d      	movmi	r0, #45	; 0x2d
   1100a:	f80a 0005 	strb.w	r0, [sl, r5]
   1100e:	e002      	b.n	11016 <_etoa+0x48e>
   11010:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
   11014:	251f      	movs	r5, #31
   11016:	f240 0130 	movw	r1, #48	; 0x30
  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
   1101a:	f10c 0003 	add.w	r0, ip, #3
   1101e:	f2c1 0100 	movt	r1, #4096	; 0x1000
   11022:	f8dd 9048 	ldr.w	r9, [sp, #72]	; 0x48
   11026:	460a      	mov	r2, r1
   11028:	6008      	str	r0, [r1, #0]
    out(buf[--len], buffer, idx++, maxlen);
   1102a:	f10c 0104 	add.w	r1, ip, #4
   1102e:	f81a 0005 	ldrb.w	r0, [sl, r5]
   11032:	6011      	str	r1, [r2, #0]
   11034:	461a      	mov	r2, r3
   11036:	9b14      	ldr	r3, [sp, #80]	; 0x50
   11038:	4649      	mov	r1, r9
   1103a:	3402      	adds	r4, #2
   1103c:	47d8      	blx	fp
  while (len) {
   1103e:	b1ed      	cbz	r5, 1107c <_etoa+0x4f4>
   11040:	f1aa 0001 	sub.w	r0, sl, #1
   11044:	9016      	str	r0, [sp, #88]	; 0x58
   11046:	f8dd a050 	ldr.w	sl, [sp, #80]	; 0x50
   1104a:	f240 0830 	movw	r8, #48	; 0x30
   1104e:	f2c1 0800 	movt	r8, #4096	; 0x1000
   11052:	bf00      	nop
    out(buf[--len], buffer, idx++, maxlen);
   11054:	f8d8 1000 	ldr.w	r1, [r8]
   11058:	9816      	ldr	r0, [sp, #88]	; 0x58
   1105a:	3101      	adds	r1, #1
   1105c:	5d40      	ldrb	r0, [r0, r5]
   1105e:	f8c8 1000 	str.w	r1, [r8]
   11062:	4649      	mov	r1, r9
   11064:	4622      	mov	r2, r4
   11066:	4653      	mov	r3, sl
   11068:	1e6e      	subs	r6, r5, #1
   1106a:	1c67      	adds	r7, r4, #1
   1106c:	47d8      	blx	fp
  while (len) {
   1106e:	2e00      	cmp	r6, #0
   11070:	463c      	mov	r4, r7
   11072:	4635      	mov	r5, r6
   11074:	d1ee      	bne.n	11054 <_etoa+0x4cc>
    if (flags & FLAGS_LEFT) {
   11076:	9807      	ldr	r0, [sp, #28]
   11078:	b928      	cbnz	r0, 11086 <_etoa+0x4fe>
   1107a:	e025      	b.n	110c8 <_etoa+0x540>
   1107c:	f8dd a050 	ldr.w	sl, [sp, #80]	; 0x50
    out(buf[--len], buffer, idx++, maxlen);
   11080:	4627      	mov	r7, r4
    if (flags & FLAGS_LEFT) {
   11082:	9807      	ldr	r0, [sp, #28]
   11084:	b300      	cbz	r0, 110c8 <_etoa+0x540>
   11086:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
   11088:	9915      	ldr	r1, [sp, #84]	; 0x54
   1108a:	1ab8      	subs	r0, r7, r2
   1108c:	4288      	cmp	r0, r1
   1108e:	d21b      	bcs.n	110c8 <_etoa+0x540>
   11090:	f8dd 9048 	ldr.w	r9, [sp, #72]	; 0x48
   11094:	9e15      	ldr	r6, [sp, #84]	; 0x54
   11096:	f240 0530 	movw	r5, #48	; 0x30
      while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
   1109a:	f1c2 0800 	rsb	r8, r2, #0
   1109e:	f2c1 0500 	movt	r5, #4096	; 0x1000
   110a2:	bf00      	nop
   110a4:	6828      	ldr	r0, [r5, #0]
   110a6:	4649      	mov	r1, r9
   110a8:	3001      	adds	r0, #1
   110aa:	6028      	str	r0, [r5, #0]
   110ac:	2020      	movs	r0, #32
   110ae:	463a      	mov	r2, r7
   110b0:	4653      	mov	r3, sl
   110b2:	1c7c      	adds	r4, r7, #1
   110b4:	47d8      	blx	fp
   110b6:	eb08 0004 	add.w	r0, r8, r4
   110ba:	42b0      	cmp	r0, r6
   110bc:	4627      	mov	r7, r4
   110be:	d3f1      	bcc.n	110a4 <_etoa+0x51c>
}
   110c0:	4620      	mov	r0, r4
   110c2:	b01f      	add	sp, #124	; 0x7c
   110c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   110c8:	463c      	mov	r4, r7
   110ca:	4620      	mov	r0, r4
   110cc:	b01f      	add	sp, #124	; 0x7c
   110ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   110d2:	d4d4      	bmi.n	1107e <_etoa+0x4f6>

000110d4 <_ntoa_format>:
{
   110d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   110d8:	b087      	sub	sp, #28
   110da:	9c16      	ldr	r4, [sp, #88]	; 0x58
   110dc:	e9dd 7514 	ldrd	r7, r5, [sp, #80]	; 0x50
   110e0:	e9dd b811 	ldrd	fp, r8, [sp, #68]	; 0x44
  if (!(flags & FLAGS_LEFT)) {
   110e4:	f014 0602 	ands.w	r6, r4, #2
   110e8:	e9cd 0103 	strd	r0, r1, [sp, #12]
   110ec:	e9cd 2305 	strd	r2, r3, [sp, #20]
   110f0:	d169      	bne.n	111c6 <_ntoa_format+0xf2>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
   110f2:	2d00      	cmp	r5, #0
   110f4:	f004 0901 	and.w	r9, r4, #1
   110f8:	bf18      	it	ne
   110fa:	f1b9 0f00 	cmpne.w	r9, #0
   110fe:	f040 8086 	bne.w	1120e <_ntoa_format+0x13a>
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   11102:	45bb      	cmp	fp, r7
   11104:	d22d      	bcs.n	11162 <_ntoa_format+0x8e>
   11106:	f1bb 0f1f 	cmp.w	fp, #31
   1110a:	d82a      	bhi.n	11162 <_ntoa_format+0x8e>
   1110c:	ea6f 010b 	mvn.w	r1, fp
   11110:	9810      	ldr	r0, [sp, #64]	; 0x40
   11112:	4439      	add	r1, r7
   11114:	f1cb 021f 	rsb	r2, fp, #31
   11118:	4291      	cmp	r1, r2
   1111a:	bf38      	it	cc
   1111c:	460a      	movcc	r2, r1
   1111e:	4458      	add	r0, fp
   11120:	3201      	adds	r2, #1
      buf[len++] = '0';
   11122:	2130      	movs	r1, #48	; 0x30
   11124:	f000 fa8f 	bl	11646 <memset>
   11128:	9b06      	ldr	r3, [sp, #24]
   1112a:	bf00      	nop
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   1112c:	f10b 0001 	add.w	r0, fp, #1
   11130:	42b8      	cmp	r0, r7
   11132:	bf38      	it	cc
   11134:	2820      	cmpcc	r0, #32
   11136:	d213      	bcs.n	11160 <_ntoa_format+0x8c>
   11138:	f10b 0002 	add.w	r0, fp, #2
   1113c:	42b8      	cmp	r0, r7
   1113e:	d20f      	bcs.n	11160 <_ntoa_format+0x8c>
   11140:	281f      	cmp	r0, #31
   11142:	d80d      	bhi.n	11160 <_ntoa_format+0x8c>
   11144:	f10b 0003 	add.w	r0, fp, #3
   11148:	42b8      	cmp	r0, r7
   1114a:	d209      	bcs.n	11160 <_ntoa_format+0x8c>
   1114c:	281f      	cmp	r0, #31
   1114e:	d807      	bhi.n	11160 <_ntoa_format+0x8c>
      buf[len++] = '0';
   11150:	f10b 0b04 	add.w	fp, fp, #4
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   11154:	45bb      	cmp	fp, r7
   11156:	d204      	bcs.n	11162 <_ntoa_format+0x8e>
   11158:	f1bb 0f20 	cmp.w	fp, #32
   1115c:	d3e6      	bcc.n	1112c <_ntoa_format+0x58>
   1115e:	e000      	b.n	11162 <_ntoa_format+0x8e>
   11160:	4683      	mov	fp, r0
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   11162:	f1bb 0f1f 	cmp.w	fp, #31
   11166:	d82e      	bhi.n	111c6 <_ntoa_format+0xf2>
   11168:	f1b9 0f00 	cmp.w	r9, #0
   1116c:	d02b      	beq.n	111c6 <_ntoa_format+0xf2>
   1116e:	45ab      	cmp	fp, r5
   11170:	d229      	bcs.n	111c6 <_ntoa_format+0xf2>
   11172:	ea6f 010b 	mvn.w	r1, fp
   11176:	9810      	ldr	r0, [sp, #64]	; 0x40
   11178:	4429      	add	r1, r5
   1117a:	f1cb 021f 	rsb	r2, fp, #31
   1117e:	4291      	cmp	r1, r2
   11180:	bf38      	it	cc
   11182:	460a      	movcc	r2, r1
   11184:	4458      	add	r0, fp
   11186:	3201      	adds	r2, #1
      buf[len++] = '0';
   11188:	2130      	movs	r1, #48	; 0x30
   1118a:	f000 fa5c 	bl	11646 <memset>
   1118e:	9b06      	ldr	r3, [sp, #24]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   11190:	f10b 0001 	add.w	r0, fp, #1
   11194:	281f      	cmp	r0, #31
   11196:	bf98      	it	ls
   11198:	42a8      	cmpls	r0, r5
   1119a:	d213      	bcs.n	111c4 <_ntoa_format+0xf0>
   1119c:	f10b 0002 	add.w	r0, fp, #2
   111a0:	281f      	cmp	r0, #31
   111a2:	bf98      	it	ls
   111a4:	42a8      	cmpls	r0, r5
   111a6:	d20d      	bcs.n	111c4 <_ntoa_format+0xf0>
   111a8:	f10b 0003 	add.w	r0, fp, #3
   111ac:	281f      	cmp	r0, #31
   111ae:	bf98      	it	ls
   111b0:	42a8      	cmpls	r0, r5
   111b2:	d207      	bcs.n	111c4 <_ntoa_format+0xf0>
      buf[len++] = '0';
   111b4:	f10b 0b04 	add.w	fp, fp, #4
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   111b8:	f1bb 0f1f 	cmp.w	fp, #31
   111bc:	d803      	bhi.n	111c6 <_ntoa_format+0xf2>
   111be:	45ab      	cmp	fp, r5
   111c0:	d3e6      	bcc.n	11190 <_ntoa_format+0xbc>
   111c2:	e000      	b.n	111c6 <_ntoa_format+0xf2>
   111c4:	4683      	mov	fp, r0
  if (flags & FLAGS_HASH) {
   111c6:	06e0      	lsls	r0, r4, #27
   111c8:	e9cd 6501 	strd	r6, r5, [sp, #4]
   111cc:	d542      	bpl.n	11254 <_ntoa_format+0x180>
   111ce:	9813      	ldr	r0, [sp, #76]	; 0x4c
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
   111d0:	0561      	lsls	r1, r4, #21
   111d2:	d410      	bmi.n	111f6 <_ntoa_format+0x122>
   111d4:	f1bb 0f00 	cmp.w	fp, #0
   111d8:	d00d      	beq.n	111f6 <_ntoa_format+0x122>
   111da:	45bb      	cmp	fp, r7
   111dc:	bf18      	it	ne
   111de:	45ab      	cmpne	fp, r5
   111e0:	d109      	bne.n	111f6 <_ntoa_format+0x122>
      len--;
   111e2:	f1bb 0101 	subs.w	r1, fp, #1
      if (len && (base == 16U)) {
   111e6:	460a      	mov	r2, r1
   111e8:	bf18      	it	ne
   111ea:	f1ab 0202 	subne.w	r2, fp, #2
   111ee:	2810      	cmp	r0, #16
   111f0:	bf18      	it	ne
   111f2:	460a      	movne	r2, r1
   111f4:	4693      	mov	fp, r2
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   111f6:	2802      	cmp	r0, #2
   111f8:	d014      	beq.n	11224 <_ntoa_format+0x150>
   111fa:	2810      	cmp	r0, #16
   111fc:	d121      	bne.n	11242 <_ntoa_format+0x16e>
   111fe:	f014 0020 	ands.w	r0, r4, #32
   11202:	d114      	bne.n	1122e <_ntoa_format+0x15a>
   11204:	f1bb 0f1f 	cmp.w	fp, #31
   11208:	d811      	bhi.n	1122e <_ntoa_format+0x15a>
   1120a:	2078      	movs	r0, #120	; 0x78
   1120c:	e014      	b.n	11238 <_ntoa_format+0x164>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
   1120e:	f014 000c 	ands.w	r0, r4, #12
   11212:	bf18      	it	ne
   11214:	2001      	movne	r0, #1
   11216:	ea40 0008 	orr.w	r0, r0, r8
   1121a:	1a2d      	subs	r5, r5, r0
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   1121c:	45bb      	cmp	fp, r7
   1121e:	f4ff af72 	bcc.w	11106 <_ntoa_format+0x32>
   11222:	e79e      	b.n	11162 <_ntoa_format+0x8e>
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   11224:	f1bb 0f1f 	cmp.w	fp, #31
   11228:	d820      	bhi.n	1126c <_ntoa_format+0x198>
   1122a:	2062      	movs	r0, #98	; 0x62
   1122c:	e004      	b.n	11238 <_ntoa_format+0x164>
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
   1122e:	b140      	cbz	r0, 11242 <_ntoa_format+0x16e>
   11230:	f1bb 0f1f 	cmp.w	fp, #31
   11234:	d805      	bhi.n	11242 <_ntoa_format+0x16e>
   11236:	2058      	movs	r0, #88	; 0x58
   11238:	9910      	ldr	r1, [sp, #64]	; 0x40
   1123a:	f801 000b 	strb.w	r0, [r1, fp]
   1123e:	f10b 0b01 	add.w	fp, fp, #1
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
   11242:	f1bb 0f1f 	cmp.w	fp, #31
   11246:	d811      	bhi.n	1126c <_ntoa_format+0x198>
      buf[len++] = '0';
   11248:	9910      	ldr	r1, [sp, #64]	; 0x40
   1124a:	2030      	movs	r0, #48	; 0x30
   1124c:	f801 000b 	strb.w	r0, [r1, fp]
   11250:	f10b 0b01 	add.w	fp, fp, #1
  if (len < PRINTF_NTOA_BUFFER_SIZE) {
   11254:	f1bb 0f1f 	cmp.w	fp, #31
   11258:	d808      	bhi.n	1126c <_ntoa_format+0x198>
    if (negative) {
   1125a:	f1b8 0f00 	cmp.w	r8, #0
   1125e:	d001      	beq.n	11264 <_ntoa_format+0x190>
   11260:	202d      	movs	r0, #45	; 0x2d
   11262:	e00a      	b.n	1127a <_ntoa_format+0x1a6>
    else if (flags & FLAGS_PLUS) {
   11264:	0760      	lsls	r0, r4, #29
   11266:	d405      	bmi.n	11274 <_ntoa_format+0x1a0>
    else if (flags & FLAGS_SPACE) {
   11268:	0720      	lsls	r0, r4, #28
   1126a:	d405      	bmi.n	11278 <_ntoa_format+0x1a4>
   1126c:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
   11270:	46da      	mov	sl, fp
   11272:	e008      	b.n	11286 <_ntoa_format+0x1b2>
   11274:	202b      	movs	r0, #43	; 0x2b
   11276:	e000      	b.n	1127a <_ntoa_format+0x1a6>
   11278:	2020      	movs	r0, #32
   1127a:	9910      	ldr	r1, [sp, #64]	; 0x40
   1127c:	f10b 0a01 	add.w	sl, fp, #1
   11280:	4689      	mov	r9, r1
   11282:	f801 000b 	strb.w	r0, [r1, fp]
  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
   11286:	f240 0530 	movw	r5, #48	; 0x30
   1128a:	f2c1 0500 	movt	r5, #4096	; 0x1000
   1128e:	6828      	ldr	r0, [r5, #0]
   11290:	1c41      	adds	r1, r0, #1
   11292:	6029      	str	r1, [r5, #0]
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
   11294:	07a1      	lsls	r1, r4, #30
   11296:	9c05      	ldr	r4, [sp, #20]
   11298:	e9dd 6103 	ldrd	r6, r1, [sp, #12]
   1129c:	d131      	bne.n	11302 <_ntoa_format+0x22e>
   1129e:	9a02      	ldr	r2, [sp, #8]
   112a0:	9c05      	ldr	r4, [sp, #20]
   112a2:	4592      	cmp	sl, r2
   112a4:	d22d      	bcs.n	11302 <_ntoa_format+0x22e>
   112a6:	9a05      	ldr	r2, [sp, #20]
      out(' ', buffer, idx++, maxlen);
   112a8:	3002      	adds	r0, #2
   112aa:	6028      	str	r0, [r5, #0]
   112ac:	2020      	movs	r0, #32
   112ae:	1c57      	adds	r7, r2, #1
   112b0:	47b0      	blx	r6
   112b2:	9902      	ldr	r1, [sp, #8]
    for (size_t i = len; i < width; i++) {
   112b4:	f10a 0001 	add.w	r0, sl, #1
   112b8:	4288      	cmp	r0, r1
   112ba:	d109      	bne.n	112d0 <_ntoa_format+0x1fc>
   112bc:	9b06      	ldr	r3, [sp, #24]
   112be:	463c      	mov	r4, r7
  while (len) {
   112c0:	f1ba 0f00 	cmp.w	sl, #0
   112c4:	d120      	bne.n	11308 <_ntoa_format+0x234>
   112c6:	4627      	mov	r7, r4
   112c8:	469a      	mov	sl, r3
  if (flags & FLAGS_LEFT) {
   112ca:	9801      	ldr	r0, [sp, #4]
   112cc:	bbc0      	cbnz	r0, 11340 <_ntoa_format+0x26c>
   112ce:	e057      	b.n	11380 <_ntoa_format+0x2ac>
   112d0:	e9dd 6803 	ldrd	r6, r8, [sp, #12]
   112d4:	f240 0b30 	movw	fp, #48	; 0x30
   112d8:	9b06      	ldr	r3, [sp, #24]
    for (size_t i = len; i < width; i++) {
   112da:	ebaa 0501 	sub.w	r5, sl, r1
   112de:	f2c1 0b00 	movt	fp, #4096	; 0x1000
   112e2:	4652      	mov	r2, sl
      out(' ', buffer, idx++, maxlen);
   112e4:	f8db 0000 	ldr.w	r0, [fp]
   112e8:	4641      	mov	r1, r8
   112ea:	3001      	adds	r0, #1
   112ec:	f8cb 0000 	str.w	r0, [fp]
   112f0:	2020      	movs	r0, #32
   112f2:	463a      	mov	r2, r7
   112f4:	1c7c      	adds	r4, r7, #1
   112f6:	47b0      	blx	r6
   112f8:	9b06      	ldr	r3, [sp, #24]
    for (size_t i = len; i < width; i++) {
   112fa:	3501      	adds	r5, #1
   112fc:	1c68      	adds	r0, r5, #1
   112fe:	4627      	mov	r7, r4
   11300:	d1f0      	bne.n	112e4 <_ntoa_format+0x210>
  while (len) {
   11302:	f1ba 0f00 	cmp.w	sl, #0
   11306:	d0de      	beq.n	112c6 <_ntoa_format+0x1f2>
   11308:	f1a9 0601 	sub.w	r6, r9, #1
   1130c:	e9dd 8903 	ldrd	r8, r9, [sp, #12]
   11310:	f240 0b30 	movw	fp, #48	; 0x30
   11314:	4650      	mov	r0, sl
   11316:	469a      	mov	sl, r3
   11318:	f2c1 0b00 	movt	fp, #4096	; 0x1000
    out(buf[--len], buffer, idx++, maxlen);
   1131c:	f8db 1000 	ldr.w	r1, [fp]
   11320:	1e45      	subs	r5, r0, #1
   11322:	5c30      	ldrb	r0, [r6, r0]
   11324:	3101      	adds	r1, #1
   11326:	f8cb 1000 	str.w	r1, [fp]
   1132a:	4649      	mov	r1, r9
   1132c:	4622      	mov	r2, r4
   1132e:	4653      	mov	r3, sl
   11330:	1c67      	adds	r7, r4, #1
   11332:	47c0      	blx	r8
  while (len) {
   11334:	2d00      	cmp	r5, #0
   11336:	4628      	mov	r0, r5
   11338:	463c      	mov	r4, r7
   1133a:	d1ef      	bne.n	1131c <_ntoa_format+0x248>
  if (flags & FLAGS_LEFT) {
   1133c:	9801      	ldr	r0, [sp, #4]
   1133e:	b1f8      	cbz	r0, 11380 <_ntoa_format+0x2ac>
   11340:	9905      	ldr	r1, [sp, #20]
   11342:	f8dd 8008 	ldr.w	r8, [sp, #8]
   11346:	1a78      	subs	r0, r7, r1
   11348:	4540      	cmp	r0, r8
   1134a:	d219      	bcs.n	11380 <_ntoa_format+0x2ac>
   1134c:	e9dd 6b03 	ldrd	r6, fp, [sp, #12]
   11350:	f240 0530 	movw	r5, #48	; 0x30
    while (idx - start_idx < width) {
   11354:	f1c1 0900 	rsb	r9, r1, #0
   11358:	f2c1 0500 	movt	r5, #4096	; 0x1000
      out(' ', buffer, idx++, maxlen);
   1135c:	6828      	ldr	r0, [r5, #0]
   1135e:	4659      	mov	r1, fp
   11360:	3001      	adds	r0, #1
   11362:	6028      	str	r0, [r5, #0]
   11364:	2020      	movs	r0, #32
   11366:	463a      	mov	r2, r7
   11368:	4653      	mov	r3, sl
   1136a:	1c7c      	adds	r4, r7, #1
   1136c:	47b0      	blx	r6
    while (idx - start_idx < width) {
   1136e:	eb09 0004 	add.w	r0, r9, r4
   11372:	4540      	cmp	r0, r8
   11374:	4627      	mov	r7, r4
   11376:	d3f1      	bcc.n	1135c <_ntoa_format+0x288>
  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
   11378:	4620      	mov	r0, r4
   1137a:	b007      	add	sp, #28
   1137c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11380:	463c      	mov	r4, r7
   11382:	4620      	mov	r0, r4
   11384:	b007      	add	sp, #28
   11386:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0001138a <putc>:
#define NO_OPT __attribute__((optimize("O0")))
#endif

NO_OPT
int putc(int character, void *stream)
{
   1138a:	b082      	sub	sp, #8
   1138c:	9001      	str	r0, [sp, #4]
   1138e:	9100      	str	r1, [sp, #0]
    (void)stream;
    return character;
   11390:	9801      	ldr	r0, [sp, #4]
   11392:	b002      	add	sp, #8
   11394:	4770      	bx	lr

00011396 <_putchar>:
}

NO_OPT
void _putchar(char character) {
   11396:	b580      	push	{r7, lr}
   11398:	b082      	sub	sp, #8
   1139a:	f88d 0007 	strb.w	r0, [sp, #7]
    putc(character, &character);
   1139e:	f89d 0007 	ldrb.w	r0, [sp, #7]
   113a2:	f240 0130 	movw	r1, #48	; 0x30
   113a6:	f2c1 0100 	movt	r1, #4096	; 0x1000
   113aa:	680a      	ldr	r2, [r1, #0]
   113ac:	3201      	adds	r2, #1
   113ae:	600a      	str	r2, [r1, #0]
   113b0:	f10d 0107 	add.w	r1, sp, #7
   113b4:	f7ff ffe9 	bl	1138a <putc>
}
   113b8:	b002      	add	sp, #8
   113ba:	bd80      	pop	{r7, pc}

000113bc <Reset_Handler>:
Reset_Handler(void)
{
    //
    // Set the vector table pointer.
    //
    __asm("    ldr    r0, =0xE000ED08\n"
   113bc:	480c      	ldr	r0, [pc, #48]	; (113f0 <zero_loop+0x10>)
   113be:	490d      	ldr	r1, [pc, #52]	; (113f4 <zero_loop+0x14>)
   113c0:	6001      	str	r1, [r0, #0]
          "    str    r1, [r0]");

    //
    // Set the stack pointer.
    //
    __asm("    ldr    sp, [r1]");
   113c2:	f8d1 d000 	ldr.w	sp, [r1]
//          "isb\n");
//#endif
    //
    // Copy the data segment initializers from flash to SRAM.
    //
    __asm("    ldr     r0, =_init_data\n"
   113c6:	480c      	ldr	r0, [pc, #48]	; (113f8 <zero_loop+0x18>)
   113c8:	490c      	ldr	r1, [pc, #48]	; (113fc <zero_loop+0x1c>)
   113ca:	4a0d      	ldr	r2, [pc, #52]	; (11400 <zero_loop+0x20>)

000113cc <copy_loop>:
   113cc:	f850 3b04 	ldr.w	r3, [r0], #4
   113d0:	f841 3b04 	str.w	r3, [r1], #4
   113d4:	4291      	cmp	r1, r2
   113d6:	dbf9      	blt.n	113cc <copy_loop>
          "        cmp     r1, r2\n"
          "        blt     copy_loop\n");
    //
    // Zero fill the bss segment.
    //
    __asm("    ldr     r0, =_sbss\n"
   113d8:	480a      	ldr	r0, [pc, #40]	; (11404 <zero_loop+0x24>)
   113da:	490b      	ldr	r1, [pc, #44]	; (11408 <zero_loop+0x28>)
   113dc:	f04f 0200 	mov.w	r2, #0

000113e0 <zero_loop>:
   113e0:	4288      	cmp	r0, r1
   113e2:	bfb8      	it	lt
   113e4:	f840 2b04 	strlt.w	r2, [r0], #4
   113e8:	dbfa      	blt.n	113e0 <zero_loop>

    //
    // Call the application's entry point.
    //
    //main();
    __asm("    bl   main\n");
   113ea:	f7fc f8d9 	bl	d5a0 <main>

    //
    // If main returns then execute a break point instruction
    //
    __asm("    bkpt     ");
   113ee:	be00      	bkpt	0x0000
   113f0:	e000ed08 	.word	0xe000ed08
   113f4:	0000c000 	.word	0x0000c000
   113f8:	00011b80 	.word	0x00011b80
   113fc:	10000000 	.word	0x10000000
   11400:	1000000c 	.word	0x1000000c
   11404:	10000010 	.word	0x10000010
   11408:	10000040 	.word	0x10000040

0001140c <NMI_Handler>:
NMI_Handler(void)
{
    //
    // Go into an infinite loop.
    //
    while(1)
   1140c:	e7fe      	b.n	1140c <NMI_Handler>
   1140e:	d4d4      	bmi.n	113ba <_putchar+0x24>

00011410 <BusFault_Handler>:
HardFault_Handler(void)
{
    //
    // Go into an infinite loop.
    //
    while(1)
   11410:	e7fe      	b.n	11410 <BusFault_Handler>
   11412:	d4d4      	bmi.n	113be <Reset_Handler+0x2>

00011414 <DebugMon_Handler>:
am_default_isr(void)
{
    //
    // Go into an infinite loop.
    //
    while(1)
   11414:	e7fe      	b.n	11414 <DebugMon_Handler>

00011416 <__udivdi3>:
   11416:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
   1141a:	468c      	mov	ip, r1
   1141c:	4606      	mov	r6, r0
   1141e:	4605      	mov	r5, r0
   11420:	4614      	mov	r4, r2
   11422:	4608      	mov	r0, r1
   11424:	4619      	mov	r1, r3
   11426:	2b00      	cmp	r3, #0
   11428:	f040 80ae 	bne.w	11588 <__udivdi3+0x172>
   1142c:	4562      	cmp	r2, ip
   1142e:	fab2 f682 	clz	r6, r2
   11432:	d938      	bls.n	114a6 <__udivdi3+0x90>
   11434:	b13e      	cbz	r6, 11446 <__udivdi3+0x30>
   11436:	f1c6 0320 	rsb	r3, r6, #32
   1143a:	fa25 f303 	lsr.w	r3, r5, r3
   1143e:	40b0      	lsls	r0, r6
   11440:	40b4      	lsls	r4, r6
   11442:	4318      	orrs	r0, r3
   11444:	40b5      	lsls	r5, r6
   11446:	ea4f 4c14 	mov.w	ip, r4, lsr #16
   1144a:	b2a6      	uxth	r6, r4
   1144c:	fbb0 fefc 	udiv	lr, r0, ip
   11450:	0c2a      	lsrs	r2, r5, #16
   11452:	fb0c 001e 	mls	r0, ip, lr, r0
   11456:	fb0e f806 	mul.w	r8, lr, r6
   1145a:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
   1145e:	4598      	cmp	r8, r3
   11460:	d91f      	bls.n	114a2 <__udivdi3+0x8c>
   11462:	18e3      	adds	r3, r4, r3
   11464:	f10e 37ff 	add.w	r7, lr, #4294967295	; 0xffffffff
   11468:	d204      	bcs.n	11474 <__udivdi3+0x5e>
   1146a:	4598      	cmp	r8, r3
   1146c:	d902      	bls.n	11474 <__udivdi3+0x5e>
   1146e:	f1ae 0702 	sub.w	r7, lr, #2
   11472:	4423      	add	r3, r4
   11474:	eba3 0308 	sub.w	r3, r3, r8
   11478:	b2ad      	uxth	r5, r5
   1147a:	fbb3 f2fc 	udiv	r2, r3, ip
   1147e:	fb0c 3312 	mls	r3, ip, r2, r3
   11482:	4356      	muls	r6, r2
   11484:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
   11488:	429e      	cmp	r6, r3
   1148a:	d97b      	bls.n	11584 <__udivdi3+0x16e>
   1148c:	18e3      	adds	r3, r4, r3
   1148e:	f102 30ff 	add.w	r0, r2, #4294967295	; 0xffffffff
   11492:	d202      	bcs.n	1149a <__udivdi3+0x84>
   11494:	429e      	cmp	r6, r3
   11496:	d900      	bls.n	1149a <__udivdi3+0x84>
   11498:	1e90      	subs	r0, r2, #2
   1149a:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
   1149e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
   114a2:	4677      	mov	r7, lr
   114a4:	e7e6      	b.n	11474 <__udivdi3+0x5e>
   114a6:	b902      	cbnz	r2, 114aa <__udivdi3+0x94>
   114a8:	deff      	udf	#255	; 0xff
   114aa:	bb56      	cbnz	r6, 11502 <__udivdi3+0xec>
   114ac:	ebac 0302 	sub.w	r3, ip, r2
   114b0:	2101      	movs	r1, #1
   114b2:	0c20      	lsrs	r0, r4, #16
   114b4:	b2a6      	uxth	r6, r4
   114b6:	fbb3 fcf0 	udiv	ip, r3, r0
   114ba:	0c2a      	lsrs	r2, r5, #16
   114bc:	fb00 331c 	mls	r3, r0, ip, r3
   114c0:	fb0c fe06 	mul.w	lr, ip, r6
   114c4:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
   114c8:	459e      	cmp	lr, r3
   114ca:	d959      	bls.n	11580 <__udivdi3+0x16a>
   114cc:	18e3      	adds	r3, r4, r3
   114ce:	f10c 37ff 	add.w	r7, ip, #4294967295	; 0xffffffff
   114d2:	d204      	bcs.n	114de <__udivdi3+0xc8>
   114d4:	459e      	cmp	lr, r3
   114d6:	d902      	bls.n	114de <__udivdi3+0xc8>
   114d8:	f1ac 0702 	sub.w	r7, ip, #2
   114dc:	4423      	add	r3, r4
   114de:	eba3 030e 	sub.w	r3, r3, lr
   114e2:	b2ad      	uxth	r5, r5
   114e4:	fbb3 f2f0 	udiv	r2, r3, r0
   114e8:	fb00 3312 	mls	r3, r0, r2, r3
   114ec:	4356      	muls	r6, r2
   114ee:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
   114f2:	429e      	cmp	r6, r3
   114f4:	d946      	bls.n	11584 <__udivdi3+0x16e>
   114f6:	18e4      	adds	r4, r4, r3
   114f8:	f102 30ff 	add.w	r0, r2, #4294967295	; 0xffffffff
   114fc:	d2cd      	bcs.n	1149a <__udivdi3+0x84>
   114fe:	42a6      	cmp	r6, r4
   11500:	e7c9      	b.n	11496 <__udivdi3+0x80>
   11502:	f1c6 0020 	rsb	r0, r6, #32
   11506:	fa2c f700 	lsr.w	r7, ip, r0
   1150a:	fa0c f306 	lsl.w	r3, ip, r6
   1150e:	40b4      	lsls	r4, r6
   11510:	fa25 f000 	lsr.w	r0, r5, r0
   11514:	ea40 0203 	orr.w	r2, r0, r3
   11518:	ea4f 4c14 	mov.w	ip, r4, lsr #16
   1151c:	40b5      	lsls	r5, r6
   1151e:	b2a3      	uxth	r3, r4
   11520:	fbb7 f6fc 	udiv	r6, r7, ip
   11524:	0c11      	lsrs	r1, r2, #16
   11526:	fb0c 7716 	mls	r7, ip, r6, r7
   1152a:	fb06 fe03 	mul.w	lr, r6, r3
   1152e:	ea41 4007 	orr.w	r0, r1, r7, lsl #16
   11532:	4586      	cmp	lr, r0
   11534:	d920      	bls.n	11578 <__udivdi3+0x162>
   11536:	1820      	adds	r0, r4, r0
   11538:	f106 31ff 	add.w	r1, r6, #4294967295	; 0xffffffff
   1153c:	d203      	bcs.n	11546 <__udivdi3+0x130>
   1153e:	4586      	cmp	lr, r0
   11540:	d901      	bls.n	11546 <__udivdi3+0x130>
   11542:	1eb1      	subs	r1, r6, #2
   11544:	4420      	add	r0, r4
   11546:	eba0 000e 	sub.w	r0, r0, lr
   1154a:	b292      	uxth	r2, r2
   1154c:	fbb0 f7fc 	udiv	r7, r0, ip
   11550:	fb0c 0017 	mls	r0, ip, r7, r0
   11554:	fb07 f603 	mul.w	r6, r7, r3
   11558:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
   1155c:	429e      	cmp	r6, r3
   1155e:	d90d      	bls.n	1157c <__udivdi3+0x166>
   11560:	18e3      	adds	r3, r4, r3
   11562:	f107 32ff 	add.w	r2, r7, #4294967295	; 0xffffffff
   11566:	d203      	bcs.n	11570 <__udivdi3+0x15a>
   11568:	429e      	cmp	r6, r3
   1156a:	d901      	bls.n	11570 <__udivdi3+0x15a>
   1156c:	1eba      	subs	r2, r7, #2
   1156e:	4423      	add	r3, r4
   11570:	1b9b      	subs	r3, r3, r6
   11572:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
   11576:	e79c      	b.n	114b2 <__udivdi3+0x9c>
   11578:	4631      	mov	r1, r6
   1157a:	e7e4      	b.n	11546 <__udivdi3+0x130>
   1157c:	463a      	mov	r2, r7
   1157e:	e7f7      	b.n	11570 <__udivdi3+0x15a>
   11580:	4667      	mov	r7, ip
   11582:	e7ac      	b.n	114de <__udivdi3+0xc8>
   11584:	4610      	mov	r0, r2
   11586:	e788      	b.n	1149a <__udivdi3+0x84>
   11588:	4563      	cmp	r3, ip
   1158a:	d859      	bhi.n	11640 <__udivdi3+0x22a>
   1158c:	fab3 f483 	clz	r4, r3
   11590:	b934      	cbnz	r4, 115a0 <__udivdi3+0x18a>
   11592:	4563      	cmp	r3, ip
   11594:	d301      	bcc.n	1159a <__udivdi3+0x184>
   11596:	42b2      	cmp	r2, r6
   11598:	d852      	bhi.n	11640 <__udivdi3+0x22a>
   1159a:	2100      	movs	r1, #0
   1159c:	2001      	movs	r0, #1
   1159e:	e77e      	b.n	1149e <__udivdi3+0x88>
   115a0:	f1c4 0020 	rsb	r0, r4, #32
   115a4:	fa22 f700 	lsr.w	r7, r2, r0
   115a8:	40a3      	lsls	r3, r4
   115aa:	431f      	orrs	r7, r3
   115ac:	fa02 f504 	lsl.w	r5, r2, r4
   115b0:	fa0c f304 	lsl.w	r3, ip, r4
   115b4:	fa26 f200 	lsr.w	r2, r6, r0
   115b8:	fa2c f900 	lsr.w	r9, ip, r0
   115bc:	4313      	orrs	r3, r2
   115be:	ea4f 4817 	mov.w	r8, r7, lsr #16
   115c2:	b2ba      	uxth	r2, r7
   115c4:	fbb9 fef8 	udiv	lr, r9, r8
   115c8:	0c18      	lsrs	r0, r3, #16
   115ca:	fb08 911e 	mls	r1, r8, lr, r9
   115ce:	fb0e fc02 	mul.w	ip, lr, r2
   115d2:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
   115d6:	458c      	cmp	ip, r1
   115d8:	d92e      	bls.n	11638 <__udivdi3+0x222>
   115da:	1879      	adds	r1, r7, r1
   115dc:	f10e 30ff 	add.w	r0, lr, #4294967295	; 0xffffffff
   115e0:	d204      	bcs.n	115ec <__udivdi3+0x1d6>
   115e2:	458c      	cmp	ip, r1
   115e4:	d902      	bls.n	115ec <__udivdi3+0x1d6>
   115e6:	f1ae 0002 	sub.w	r0, lr, #2
   115ea:	4439      	add	r1, r7
   115ec:	eba1 010c 	sub.w	r1, r1, ip
   115f0:	fbb1 fef8 	udiv	lr, r1, r8
   115f4:	fb0e fc02 	mul.w	ip, lr, r2
   115f8:	fb08 111e 	mls	r1, r8, lr, r1
   115fc:	b29a      	uxth	r2, r3
   115fe:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
   11602:	4594      	cmp	ip, r2
   11604:	d91a      	bls.n	1163c <__udivdi3+0x226>
   11606:	18ba      	adds	r2, r7, r2
   11608:	f10e 33ff 	add.w	r3, lr, #4294967295	; 0xffffffff
   1160c:	d204      	bcs.n	11618 <__udivdi3+0x202>
   1160e:	4594      	cmp	ip, r2
   11610:	d902      	bls.n	11618 <__udivdi3+0x202>
   11612:	f1ae 0302 	sub.w	r3, lr, #2
   11616:	443a      	add	r2, r7
   11618:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
   1161c:	eba2 020c 	sub.w	r2, r2, ip
   11620:	fba0 5305 	umull	r5, r3, r0, r5
   11624:	429a      	cmp	r2, r3
   11626:	d304      	bcc.n	11632 <__udivdi3+0x21c>
   11628:	d104      	bne.n	11634 <__udivdi3+0x21e>
   1162a:	fa06 f404 	lsl.w	r4, r6, r4
   1162e:	42ac      	cmp	r4, r5
   11630:	d200      	bcs.n	11634 <__udivdi3+0x21e>
   11632:	3801      	subs	r0, #1
   11634:	2100      	movs	r1, #0
   11636:	e732      	b.n	1149e <__udivdi3+0x88>
   11638:	4670      	mov	r0, lr
   1163a:	e7d7      	b.n	115ec <__udivdi3+0x1d6>
   1163c:	4673      	mov	r3, lr
   1163e:	e7eb      	b.n	11618 <__udivdi3+0x202>
   11640:	2100      	movs	r1, #0
   11642:	4608      	mov	r0, r1
   11644:	e72b      	b.n	1149e <__udivdi3+0x88>

00011646 <memset>:
   11646:	4402      	add	r2, r0
   11648:	4603      	mov	r3, r0
   1164a:	4293      	cmp	r3, r2
   1164c:	d100      	bne.n	11650 <memset+0xa>
   1164e:	4770      	bx	lr
   11650:	f803 1b01 	strb.w	r1, [r3], #1
   11654:	e7f9      	b.n	1164a <memset+0x4>
   11656:	6f54      	ldr	r4, [r2, #116]	; 0x74
   11658:	6174      	str	r4, [r6, #20]
   1165a:	206c      	movs	r0, #108	; 0x6c
   1165c:	6974      	ldr	r4, [r6, #20]
   1165e:	6b63      	ldr	r3, [r4, #52]	; 0x34
   11660:	2073      	movs	r0, #115	; 0x73
   11662:	2020      	movs	r0, #32
   11664:	2020      	movs	r0, #32
   11666:	3a20      	subs	r2, #32
   11668:	2520      	movs	r5, #32
   1166a:	756c      	strb	r4, [r5, #21]
   1166c:	000a      	movs	r2, r1
   1166e:	4b32      	ldr	r3, [pc, #200]	; (11738 <memset+0xf2>)
   11670:	7020      	strb	r0, [r4, #0]
   11672:	7265      	strb	r5, [r4, #9]
   11674:	6f66      	ldr	r6, [r4, #116]	; 0x74
   11676:	6d72      	ldr	r2, [r6, #84]	; 0x54
   11678:	6e61      	ldr	r1, [r4, #100]	; 0x64
   1167a:	6563      	str	r3, [r4, #84]	; 0x54
   1167c:	7220      	strb	r0, [r4, #8]
   1167e:	6e75      	ldr	r5, [r6, #100]	; 0x64
   11680:	7020      	strb	r0, [r4, #0]
   11682:	7261      	strb	r1, [r4, #9]
   11684:	6d61      	ldr	r1, [r4, #84]	; 0x54
   11686:	7465      	strb	r5, [r4, #17]
   11688:	7265      	strb	r5, [r4, #9]
   1168a:	2073      	movs	r0, #115	; 0x73
   1168c:	6f66      	ldr	r6, [r4, #116]	; 0x74
   1168e:	2072      	movs	r0, #114	; 0x72
   11690:	6f63      	ldr	r3, [r4, #116]	; 0x74
   11692:	6572      	str	r2, [r6, #84]	; 0x54
   11694:	616d      	str	r5, [r5, #20]
   11696:	6b72      	ldr	r2, [r6, #52]	; 0x34
   11698:	0a2e      	lsrs	r6, r5, #8
   1169a:	4300      	orrs	r0, r0
   1169c:	6e61      	ldr	r1, [r4, #100]	; 0x64
   1169e:	6f6e      	ldr	r6, [r5, #116]	; 0x74
   116a0:	2074      	movs	r0, #116	; 0x74
   116a2:	6176      	str	r6, [r6, #20]
   116a4:	696c      	ldr	r4, [r5, #20]
   116a6:	6164      	str	r4, [r4, #20]
   116a8:	6574      	str	r4, [r6, #84]	; 0x54
   116aa:	6f20      	ldr	r0, [r4, #112]	; 0x70
   116ac:	6570      	str	r0, [r6, #84]	; 0x54
   116ae:	6172      	str	r2, [r6, #20]
   116b0:	6974      	ldr	r4, [r6, #20]
   116b2:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   116b4:	6620      	str	r0, [r4, #96]	; 0x60
   116b6:	726f      	strb	r7, [r5, #9]
   116b8:	7420      	strb	r0, [r4, #16]
   116ba:	6568      	str	r0, [r5, #84]	; 0x54
   116bc:	6573      	str	r3, [r6, #84]	; 0x54
   116be:	7320      	strb	r0, [r4, #12]
   116c0:	6565      	str	r5, [r4, #84]	; 0x54
   116c2:	2064      	movs	r0, #100	; 0x64
   116c4:	6176      	str	r6, [r6, #20]
   116c6:	756c      	strb	r4, [r5, #21]
   116c8:	7365      	strb	r5, [r4, #13]
   116ca:	202c      	movs	r0, #44	; 0x2c
   116cc:	6c70      	ldr	r0, [r6, #68]	; 0x44
   116ce:	6165      	str	r5, [r4, #20]
   116d0:	6573      	str	r3, [r6, #84]	; 0x54
   116d2:	6320      	str	r0, [r4, #48]	; 0x30
   116d4:	6d6f      	ldr	r7, [r5, #84]	; 0x54
   116d6:	6170      	str	r0, [r6, #20]
   116d8:	6572      	str	r2, [r6, #84]	; 0x54
   116da:	7720      	strb	r0, [r4, #28]
   116dc:	7469      	strb	r1, [r5, #17]
   116de:	2068      	movs	r0, #104	; 0x68
   116e0:	6572      	str	r2, [r6, #84]	; 0x54
   116e2:	7573      	strb	r3, [r6, #21]
   116e4:	746c      	strb	r4, [r5, #17]
   116e6:	2073      	movs	r0, #115	; 0x73
   116e8:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   116ea:	6120      	str	r0, [r4, #16]
   116ec:	6b20      	ldr	r0, [r4, #48]	; 0x30
   116ee:	6f6e      	ldr	r6, [r5, #116]	; 0x74
   116f0:	6e77      	ldr	r7, [r6, #100]	; 0x64
   116f2:	7020      	strb	r0, [r4, #0]
   116f4:	616c      	str	r4, [r5, #20]
   116f6:	6674      	str	r4, [r6, #100]	; 0x64
   116f8:	726f      	strb	r7, [r5, #9]
   116fa:	2e6d      	cmp	r6, #109	; 0x6d
   116fc:	000a      	movs	r2, r1
   116fe:	3433      	adds	r4, #51	; 0x33
   11700:	302e      	adds	r0, #46	; 0x2e
   11702:	2d65      	cmp	r5, #101	; 0x65
   11704:	5e54      	ldrsh	r4, [r2, r1]
   11706:	5b00      	ldrh	r0, [r0, r4]
   11708:	6425      	str	r5, [r4, #64]	; 0x40
   1170a:	635d      	str	r5, [r3, #52]	; 0x34
   1170c:	6372      	str	r2, [r6, #52]	; 0x34
   1170e:	616d      	str	r5, [r5, #20]
   11710:	7274      	strb	r4, [r6, #9]
   11712:	7869      	ldrb	r1, [r5, #1]
   11714:	2020      	movs	r0, #32
   11716:	2020      	movs	r0, #32
   11718:	3a20      	subs	r2, #32
   1171a:	3020      	adds	r0, #32
   1171c:	2578      	movs	r5, #120	; 0x78
   1171e:	3430      	adds	r4, #48	; 0x30
   11720:	0a78      	lsrs	r0, r7, #9
   11722:	5b00      	ldrh	r0, [r0, r4]
   11724:	7525      	strb	r5, [r4, #20]
   11726:	455d      	cmp	r5, fp
   11728:	5252      	strh	r2, [r2, r1]
   1172a:	524f      	strh	r7, [r1, r1]
   1172c:	2021      	movs	r0, #33	; 0x21
   1172e:	616d      	str	r5, [r5, #20]
   11730:	7274      	strb	r4, [r6, #9]
   11732:	7869      	ldrb	r1, [r5, #1]
   11734:	6320      	str	r0, [r4, #48]	; 0x30
   11736:	6372      	str	r2, [r6, #52]	; 0x34
   11738:	3020      	adds	r0, #32
   1173a:	2578      	movs	r5, #120	; 0x78
   1173c:	3430      	adds	r4, #48	; 0x30
   1173e:	2078      	movs	r0, #120	; 0x78
   11740:	202d      	movs	r0, #45	; 0x2d
   11742:	6873      	ldr	r3, [r6, #4]
   11744:	756f      	strb	r7, [r5, #21]
   11746:	646c      	str	r4, [r5, #68]	; 0x44
   11748:	6220      	str	r0, [r4, #32]
   1174a:	2065      	movs	r0, #101	; 0x65
   1174c:	7830      	ldrb	r0, [r6, #0]
   1174e:	3025      	adds	r0, #37	; 0x25
   11750:	7834      	ldrb	r4, [r6, #0]
   11752:	000a      	movs	r2, r1
   11754:	7250      	strb	r0, [r2, #9]
   11756:	666f      	str	r7, [r5, #100]	; 0x64
   11758:	6c69      	ldr	r1, [r5, #68]	; 0x44
   1175a:	2065      	movs	r0, #101	; 0x65
   1175c:	6567      	str	r7, [r4, #84]	; 0x54
   1175e:	656e      	str	r6, [r5, #84]	; 0x54
   11760:	6172      	str	r2, [r6, #20]
   11762:	6974      	ldr	r4, [r6, #20]
   11764:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   11766:	7220      	strb	r0, [r4, #8]
   11768:	6e75      	ldr	r5, [r6, #100]	; 0x64
   1176a:	7020      	strb	r0, [r4, #0]
   1176c:	7261      	strb	r1, [r4, #9]
   1176e:	6d61      	ldr	r1, [r4, #84]	; 0x54
   11770:	7465      	strb	r5, [r4, #17]
   11772:	7265      	strb	r5, [r4, #9]
   11774:	2073      	movs	r0, #115	; 0x73
   11776:	6f66      	ldr	r6, [r4, #116]	; 0x74
   11778:	2072      	movs	r0, #114	; 0x72
   1177a:	6f63      	ldr	r3, [r4, #116]	; 0x74
   1177c:	6572      	str	r2, [r6, #84]	; 0x54
   1177e:	616d      	str	r5, [r5, #20]
   11780:	6b72      	ldr	r2, [r6, #52]	; 0x34
   11782:	0a2e      	lsrs	r6, r5, #8
   11784:	3500      	adds	r5, #0
   11786:	352e      	adds	r5, #46	; 0x2e
   11788:	3030      	adds	r0, #48	; 0x30
   1178a:	2b65      	cmp	r3, #101	; 0x65
   1178c:	0033      	movs	r3, r6
   1178e:	2e2d      	cmp	r6, #45	; 0x2d
   11790:	3231      	adds	r2, #49	; 0x31
   11792:	6533      	str	r3, [r6, #80]	; 0x50
   11794:	322d      	adds	r2, #45	; 0x2d
   11796:	2e00      	cmp	r6, #0
   11798:	3231      	adds	r2, #49	; 0x31
   1179a:	3433      	adds	r4, #51	; 0x33
   1179c:	3035      	adds	r0, #53	; 0x35
   1179e:	0030      	movs	r0, r6
   117a0:	382d      	subs	r0, #45	; 0x2d
   117a2:	3437      	adds	r4, #55	; 0x37
   117a4:	6600      	str	r0, [r0, #96]	; 0x60
   117a6:	696e      	ldr	r6, [r5, #20]
   117a8:	002b      	movs	r3, r5
   117aa:	5453      	strb	r3, [r2, r1]
   117ac:	4341      	muls	r1, r0
   117ae:	004b      	lsls	r3, r1, #1
   117b0:	302b      	adds	r0, #43	; 0x2b
   117b2:	362e      	adds	r6, #46	; 0x2e
   117b4:	2d65      	cmp	r5, #101	; 0x65
   117b6:	3231      	adds	r2, #49	; 0x31
   117b8:	4500      	cmp	r0, r0
   117ba:	5252      	strh	r2, [r2, r1]
   117bc:	524f      	strh	r7, [r1, r1]
   117be:	2021      	movs	r0, #33	; 0x21
   117c0:	754d      	strb	r5, [r1, #21]
   117c2:	7473      	strb	r3, [r6, #17]
   117c4:	6520      	str	r0, [r4, #80]	; 0x50
   117c6:	6578      	str	r0, [r7, #84]	; 0x54
   117c8:	7563      	strb	r3, [r4, #21]
   117ca:	6574      	str	r4, [r6, #84]	; 0x54
   117cc:	6620      	str	r0, [r4, #96]	; 0x60
   117ce:	726f      	strb	r7, [r5, #9]
   117d0:	6120      	str	r0, [r4, #16]
   117d2:	2074      	movs	r0, #116	; 0x74
   117d4:	656c      	str	r4, [r5, #84]	; 0x54
   117d6:	7361      	strb	r1, [r4, #13]
   117d8:	2074      	movs	r0, #116	; 0x74
   117da:	3031      	adds	r0, #49	; 0x31
   117dc:	7320      	strb	r0, [r4, #12]
   117de:	6365      	str	r5, [r4, #52]	; 0x34
   117e0:	2073      	movs	r0, #115	; 0x73
   117e2:	6f66      	ldr	r6, [r4, #116]	; 0x74
   117e4:	2072      	movs	r0, #114	; 0x72
   117e6:	2061      	movs	r0, #97	; 0x61
   117e8:	6176      	str	r6, [r6, #20]
   117ea:	696c      	ldr	r4, [r5, #20]
   117ec:	2064      	movs	r0, #100	; 0x64
   117ee:	6572      	str	r2, [r6, #84]	; 0x54
   117f0:	7573      	strb	r3, [r6, #21]
   117f2:	746c      	strb	r4, [r5, #17]
   117f4:	0a21      	lsrs	r1, r4, #8
   117f6:	4900      	ldr	r1, [pc, #0]	; (117f8 <memset+0x1b2>)
   117f8:	6574      	str	r4, [r6, #84]	; 0x54
   117fa:	6172      	str	r2, [r6, #20]
   117fc:	6974      	ldr	r4, [r6, #20]
   117fe:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   11800:	2073      	movs	r0, #115	; 0x73
   11802:	2020      	movs	r0, #32
   11804:	2020      	movs	r0, #32
   11806:	2020      	movs	r0, #32
   11808:	203a      	movs	r0, #58	; 0x3a
   1180a:	6c25      	ldr	r5, [r4, #64]	; 0x40
   1180c:	0a75      	lsrs	r5, r6, #9
   1180e:	4500      	cmp	r0, r0
   11810:	7272      	strb	r2, [r6, #9]
   11812:	726f      	strb	r7, [r5, #9]
   11814:	2073      	movs	r0, #115	; 0x73
   11816:	6564      	str	r4, [r4, #84]	; 0x54
   11818:	6574      	str	r4, [r6, #84]	; 0x54
   1181a:	7463      	strb	r3, [r4, #17]
   1181c:	6465      	str	r5, [r4, #68]	; 0x44
   1181e:	000a      	movs	r2, r1
   11820:	3054      	adds	r0, #84	; 0x54
   11822:	332e      	adds	r3, #46	; 0x2e
   11824:	2d65      	cmp	r5, #101	; 0x65
   11826:	4631      	mov	r1, r6
   11828:	7300      	strb	r0, [r0, #12]
   1182a:	6565      	str	r5, [r4, #84]	; 0x54
   1182c:	6364      	str	r4, [r4, #52]	; 0x34
   1182e:	6372      	str	r2, [r6, #52]	; 0x34
   11830:	2020      	movs	r0, #32
   11832:	2020      	movs	r0, #32
   11834:	2020      	movs	r0, #32
   11836:	2020      	movs	r0, #32
   11838:	2020      	movs	r0, #32
   1183a:	203a      	movs	r0, #58	; 0x3a
   1183c:	7830      	ldrb	r0, [r6, #0]
   1183e:	3025      	adds	r0, #37	; 0x25
   11840:	7834      	ldrb	r4, [r6, #0]
   11842:	000a      	movs	r2, r1
   11844:	312b      	adds	r1, #43	; 0x2b
   11846:	3232      	adds	r2, #50	; 0x32
   11848:	3500      	adds	r5, #0
   1184a:	3130      	adds	r1, #48	; 0x30
   1184c:	0032      	movs	r2, r6
   1184e:	6f43      	ldr	r3, [r0, #116]	; 0x74
   11850:	706d      	strb	r5, [r5, #1]
   11852:	6c69      	ldr	r1, [r5, #68]	; 0x44
   11854:	7265      	strb	r5, [r4, #9]
   11856:	7620      	strb	r0, [r4, #24]
   11858:	7265      	strb	r5, [r4, #9]
   1185a:	6973      	ldr	r3, [r6, #20]
   1185c:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   1185e:	3a20      	subs	r2, #32
   11860:	2520      	movs	r5, #32
   11862:	0a73      	lsrs	r3, r6, #9
   11864:	4300      	orrs	r0, r0
   11866:	6d6f      	ldr	r7, [r5, #84]	; 0x54
   11868:	6970      	ldr	r0, [r6, #20]
   1186a:	656c      	str	r4, [r5, #84]	; 0x54
   1186c:	2072      	movs	r0, #114	; 0x72
   1186e:	6c66      	ldr	r6, [r4, #68]	; 0x44
   11870:	6761      	str	r1, [r4, #116]	; 0x74
   11872:	2073      	movs	r0, #115	; 0x73
   11874:	2020      	movs	r0, #32
   11876:	203a      	movs	r0, #58	; 0x3a
   11878:	7325      	strb	r5, [r4, #12]
   1187a:	000a      	movs	r2, r1
   1187c:	6f43      	ldr	r3, [r0, #116]	; 0x74
   1187e:	6572      	str	r2, [r6, #84]	; 0x54
   11880:	614d      	str	r5, [r1, #20]
   11882:	6b72      	ldr	r2, [r6, #52]	; 0x34
   11884:	3120      	adds	r1, #32
   11886:	302e      	adds	r0, #46	; 0x2e
   11888:	3a20      	subs	r2, #32
   1188a:	2520      	movs	r5, #32
   1188c:	2066      	movs	r0, #102	; 0x66
   1188e:	202f      	movs	r0, #47	; 0x2f
   11890:	7325      	strb	r5, [r4, #12]
   11892:	2520      	movs	r5, #32
   11894:	0073      	lsls	r3, r6, #1
   11896:	3533      	adds	r5, #51	; 0x33
   11898:	352e      	adds	r5, #46	; 0x2e
   1189a:	3434      	adds	r4, #52	; 0x34
   1189c:	3030      	adds	r0, #48	; 0x30
   1189e:	4300      	orrs	r0, r0
   118a0:	726f      	strb	r7, [r5, #9]
   118a2:	6572      	str	r2, [r6, #84]	; 0x54
   118a4:	7463      	strb	r3, [r4, #17]
   118a6:	6f20      	ldr	r0, [r4, #112]	; 0x70
   118a8:	6570      	str	r0, [r6, #84]	; 0x54
   118aa:	6172      	str	r2, [r6, #20]
   118ac:	6974      	ldr	r4, [r6, #20]
   118ae:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   118b0:	7620      	strb	r0, [r4, #24]
   118b2:	6c61      	ldr	r1, [r4, #68]	; 0x44
   118b4:	6469      	str	r1, [r5, #68]	; 0x44
   118b6:	7461      	strb	r1, [r4, #17]
   118b8:	6465      	str	r5, [r4, #68]	; 0x44
   118ba:	202e      	movs	r0, #46	; 0x2e
   118bc:	6553      	str	r3, [r2, #84]	; 0x54
   118be:	2065      	movs	r0, #101	; 0x65
   118c0:	4552      	cmp	r2, sl
   118c2:	4441      	add	r1, r8
   118c4:	454d      	cmp	r5, r9
   118c6:	6d2e      	ldr	r6, [r5, #80]	; 0x50
   118c8:	2064      	movs	r0, #100	; 0x64
   118ca:	6f66      	ldr	r6, [r4, #116]	; 0x74
   118cc:	2072      	movs	r0, #114	; 0x72
   118ce:	7572      	strb	r2, [r6, #21]
   118d0:	206e      	movs	r0, #110	; 0x6e
   118d2:	6e61      	ldr	r1, [r4, #100]	; 0x64
   118d4:	2064      	movs	r0, #100	; 0x64
   118d6:	6572      	str	r2, [r6, #84]	; 0x54
   118d8:	6f70      	ldr	r0, [r6, #116]	; 0x74
   118da:	7472      	strb	r2, [r6, #17]
   118dc:	6e69      	ldr	r1, [r5, #100]	; 0x64
   118de:	2067      	movs	r0, #103	; 0x67
   118e0:	7572      	strb	r2, [r6, #21]
   118e2:	656c      	str	r4, [r5, #84]	; 0x54
   118e4:	2e73      	cmp	r6, #115	; 0x73
   118e6:	000a      	movs	r2, r1
   118e8:	6f54      	ldr	r4, [r2, #116]	; 0x74
   118ea:	6174      	str	r4, [r6, #20]
   118ec:	206c      	movs	r0, #108	; 0x6c
   118ee:	6974      	ldr	r4, [r6, #20]
   118f0:	656d      	str	r5, [r5, #84]	; 0x54
   118f2:	2820      	cmp	r0, #32
   118f4:	6573      	str	r3, [r6, #84]	; 0x54
   118f6:	7363      	strb	r3, [r4, #13]
   118f8:	3a29      	subs	r2, #41	; 0x29
   118fa:	2520      	movs	r5, #32
   118fc:	0a66      	lsrs	r6, r4, #9
   118fe:	4700      	bx	r0
   11900:	4343      	muls	r3, r0
   11902:	6c43      	ldr	r3, [r0, #68]	; 0x44
   11904:	6e61      	ldr	r1, [r4, #100]	; 0x64
   11906:	2067      	movs	r0, #103	; 0x67
   11908:	2e39      	cmp	r6, #57	; 0x39
   1190a:	2e30      	cmp	r6, #48	; 0x30
   1190c:	2031      	movs	r0, #49	; 0x31
   1190e:	6100      	str	r0, [r0, #16]
   11910:	2000      	movs	r0, #0
   11912:	202f      	movs	r0, #47	; 0x2f
   11914:	7325      	strb	r5, [r4, #12]
   11916:	5b00      	ldrh	r0, [r0, r4]
   11918:	7525      	strb	r5, [r4, #20]
   1191a:	455d      	cmp	r5, fp
   1191c:	5252      	strh	r2, [r2, r1]
   1191e:	524f      	strh	r7, [r1, r1]
   11920:	2021      	movs	r0, #33	; 0x21
   11922:	7473      	strb	r3, [r6, #17]
   11924:	7461      	strb	r1, [r4, #17]
   11926:	2065      	movs	r0, #101	; 0x65
   11928:	7263      	strb	r3, [r4, #9]
   1192a:	2063      	movs	r0, #99	; 0x63
   1192c:	7830      	ldrb	r0, [r6, #0]
   1192e:	3025      	adds	r0, #37	; 0x25
   11930:	7834      	ldrb	r4, [r6, #0]
   11932:	2d20      	cmp	r5, #32
   11934:	7320      	strb	r0, [r4, #12]
   11936:	6f68      	ldr	r0, [r5, #116]	; 0x74
   11938:	6c75      	ldr	r5, [r6, #68]	; 0x44
   1193a:	2064      	movs	r0, #100	; 0x64
   1193c:	6562      	str	r2, [r4, #84]	; 0x54
   1193e:	3020      	adds	r0, #32
   11940:	2578      	movs	r5, #120	; 0x78
   11942:	3430      	adds	r4, #48	; 0x30
   11944:	0a78      	lsrs	r0, r7, #9
   11946:	3600      	adds	r6, #0
   11948:	206b      	movs	r0, #107	; 0x6b
   1194a:	6570      	str	r0, [r6, #84]	; 0x54
   1194c:	6672      	str	r2, [r6, #100]	; 0x64
   1194e:	726f      	strb	r7, [r5, #9]
   11950:	616d      	str	r5, [r5, #20]
   11952:	636e      	str	r6, [r5, #52]	; 0x34
   11954:	2065      	movs	r0, #101	; 0x65
   11956:	7572      	strb	r2, [r6, #21]
   11958:	206e      	movs	r0, #110	; 0x6e
   1195a:	6170      	str	r0, [r6, #20]
   1195c:	6172      	str	r2, [r6, #20]
   1195e:	656d      	str	r5, [r5, #84]	; 0x54
   11960:	6574      	str	r4, [r6, #84]	; 0x54
   11962:	7372      	strb	r2, [r6, #13]
   11964:	6620      	str	r0, [r4, #96]	; 0x60
   11966:	726f      	strb	r7, [r5, #9]
   11968:	6320      	str	r0, [r4, #48]	; 0x30
   1196a:	726f      	strb	r7, [r5, #9]
   1196c:	6d65      	ldr	r5, [r4, #84]	; 0x54
   1196e:	7261      	strb	r1, [r4, #9]
   11970:	2e6b      	cmp	r6, #107	; 0x6b
   11972:	000a      	movs	r2, r1
   11974:	4b32      	ldr	r3, [pc, #200]	; (11a40 <memset+0x3fa>)
   11976:	7620      	strb	r0, [r4, #24]
   11978:	6c61      	ldr	r1, [r4, #68]	; 0x44
   1197a:	6469      	str	r1, [r5, #68]	; 0x44
   1197c:	7461      	strb	r1, [r4, #17]
   1197e:	6f69      	ldr	r1, [r5, #116]	; 0x74
   11980:	206e      	movs	r0, #110	; 0x6e
   11982:	7572      	strb	r2, [r6, #21]
   11984:	206e      	movs	r0, #110	; 0x6e
   11986:	6170      	str	r0, [r6, #20]
   11988:	6172      	str	r2, [r6, #20]
   1198a:	656d      	str	r5, [r5, #84]	; 0x54
   1198c:	6574      	str	r4, [r6, #84]	; 0x54
   1198e:	7372      	strb	r2, [r6, #13]
   11990:	6620      	str	r0, [r4, #96]	; 0x60
   11992:	726f      	strb	r7, [r5, #9]
   11994:	6320      	str	r0, [r4, #48]	; 0x30
   11996:	726f      	strb	r7, [r5, #9]
   11998:	6d65      	ldr	r5, [r4, #84]	; 0x54
   1199a:	7261      	strb	r1, [r4, #9]
   1199c:	2e6b      	cmp	r6, #107	; 0x6b
   1199e:	000a      	movs	r2, r1
   119a0:	000a      	movs	r2, r1
   119a2:	3231      	adds	r2, #49	; 0x31
   119a4:	3433      	adds	r4, #51	; 0x33
   119a6:	5b00      	ldrh	r0, [r0, r4]
   119a8:	6425      	str	r5, [r4, #64]	; 0x40
   119aa:	635d      	str	r5, [r3, #52]	; 0x34
   119ac:	6372      	str	r2, [r6, #52]	; 0x34
   119ae:	7473      	strb	r3, [r6, #17]
   119b0:	7461      	strb	r1, [r4, #17]
   119b2:	2065      	movs	r0, #101	; 0x65
   119b4:	2020      	movs	r0, #32
   119b6:	2020      	movs	r0, #32
   119b8:	3a20      	subs	r2, #32
   119ba:	3020      	adds	r0, #32
   119bc:	2578      	movs	r5, #120	; 0x78
   119be:	3430      	adds	r4, #48	; 0x30
   119c0:	0a78      	lsrs	r0, r7, #9
   119c2:	2d00      	cmp	r5, #0
   119c4:	3738      	adds	r7, #56	; 0x38
   119c6:	2b65      	cmp	r3, #101	; 0x65
   119c8:	3338      	adds	r3, #56	; 0x38
   119ca:	0032      	movs	r2, r6
   119cc:	255b      	movs	r5, #91	; 0x5b
   119ce:	5d64      	ldrb	r4, [r4, r5]
   119d0:	7263      	strb	r3, [r4, #9]
   119d2:	6c63      	ldr	r3, [r4, #68]	; 0x44
   119d4:	7369      	strb	r1, [r5, #13]
   119d6:	2074      	movs	r0, #116	; 0x74
   119d8:	2020      	movs	r0, #32
   119da:	2020      	movs	r0, #32
   119dc:	2020      	movs	r0, #32
   119de:	203a      	movs	r0, #58	; 0x3a
   119e0:	7830      	ldrb	r0, [r6, #0]
   119e2:	3025      	adds	r0, #37	; 0x25
   119e4:	7834      	ldrb	r4, [r6, #0]
   119e6:	000a      	movs	r2, r1
   119e8:	255b      	movs	r5, #91	; 0x5b
   119ea:	5d64      	ldrb	r4, [r4, r5]
   119ec:	7263      	strb	r3, [r4, #9]
   119ee:	6663      	str	r3, [r4, #100]	; 0x64
   119f0:	6e69      	ldr	r1, [r5, #100]	; 0x64
   119f2:	6c61      	ldr	r1, [r4, #68]	; 0x44
   119f4:	2020      	movs	r0, #32
   119f6:	2020      	movs	r0, #32
   119f8:	2020      	movs	r0, #32
   119fa:	203a      	movs	r0, #58	; 0x3a
   119fc:	7830      	ldrb	r0, [r6, #0]
   119fe:	3025      	adds	r0, #37	; 0x25
   11a00:	7834      	ldrb	r4, [r6, #0]
   11a02:	000a      	movs	r2, r1
   11a04:	302b      	adds	r0, #43	; 0x2b
   11a06:	362e      	adds	r6, #46	; 0x2e
   11a08:	3434      	adds	r4, #52	; 0x34
   11a0a:	3030      	adds	r0, #48	; 0x30
   11a0c:	3600      	adds	r6, #0
   11a0e:	206b      	movs	r0, #107	; 0x6b
   11a10:	6176      	str	r6, [r6, #20]
   11a12:	696c      	ldr	r4, [r5, #20]
   11a14:	6164      	str	r4, [r4, #20]
   11a16:	6974      	ldr	r4, [r6, #20]
   11a18:	6e6f      	ldr	r7, [r5, #100]	; 0x64
   11a1a:	7220      	strb	r0, [r4, #8]
   11a1c:	6e75      	ldr	r5, [r6, #100]	; 0x64
   11a1e:	7020      	strb	r0, [r4, #0]
   11a20:	7261      	strb	r1, [r4, #9]
   11a22:	6d61      	ldr	r1, [r4, #84]	; 0x54
   11a24:	7465      	strb	r5, [r4, #17]
   11a26:	7265      	strb	r5, [r4, #9]
   11a28:	2073      	movs	r0, #115	; 0x73
   11a2a:	6f66      	ldr	r6, [r4, #116]	; 0x74
   11a2c:	2072      	movs	r0, #114	; 0x72
   11a2e:	6f63      	ldr	r3, [r4, #116]	; 0x74
   11a30:	6572      	str	r2, [r6, #84]	; 0x54
   11a32:	616d      	str	r5, [r5, #20]
   11a34:	6b72      	ldr	r2, [r6, #52]	; 0x34
   11a36:	0a2e      	lsrs	r6, r5, #8
   11a38:	2d00      	cmp	r5, #0
   11a3a:	2e54      	cmp	r6, #84	; 0x54
   11a3c:	2b54      	cmp	r3, #84	; 0x54
   11a3e:	542b      	strb	r3, [r5, r0]
   11a40:	0071      	lsls	r1, r6, #1
   11a42:	312d      	adds	r1, #45	; 0x2d
   11a44:	3031      	adds	r0, #49	; 0x31
   11a46:	372e      	adds	r7, #46	; 0x2e
   11a48:	3030      	adds	r0, #48	; 0x30
   11a4a:	5b00      	ldrh	r0, [r0, r4]
   11a4c:	7525      	strb	r5, [r4, #20]
   11a4e:	455d      	cmp	r5, fp
   11a50:	5252      	strh	r2, [r2, r1]
   11a52:	524f      	strh	r7, [r1, r1]
   11a54:	2021      	movs	r0, #33	; 0x21
   11a56:	696c      	ldr	r4, [r5, #20]
   11a58:	7473      	strb	r3, [r6, #17]
   11a5a:	6320      	str	r0, [r4, #48]	; 0x30
   11a5c:	6372      	str	r2, [r6, #52]	; 0x34
   11a5e:	3020      	adds	r0, #32
   11a60:	2578      	movs	r5, #120	; 0x78
   11a62:	3430      	adds	r4, #48	; 0x30
   11a64:	2078      	movs	r0, #120	; 0x78
   11a66:	202d      	movs	r0, #45	; 0x2d
   11a68:	6873      	ldr	r3, [r6, #4]
   11a6a:	756f      	strb	r7, [r5, #21]
   11a6c:	646c      	str	r4, [r5, #68]	; 0x44
   11a6e:	6220      	str	r0, [r4, #32]
   11a70:	2065      	movs	r0, #101	; 0x65
   11a72:	7830      	ldrb	r0, [r6, #0]
   11a74:	3025      	adds	r0, #37	; 0x25
   11a76:	7834      	ldrb	r4, [r6, #0]
   11a78:	000a      	movs	r2, r1
   11a7a:	654d      	str	r5, [r1, #84]	; 0x54
   11a7c:	6f6d      	ldr	r5, [r5, #116]	; 0x74
   11a7e:	7972      	ldrb	r2, [r6, #5]
   11a80:	6c20      	ldr	r0, [r4, #64]	; 0x40
   11a82:	636f      	str	r7, [r5, #52]	; 0x34
   11a84:	7461      	strb	r1, [r4, #17]
   11a86:	6f69      	ldr	r1, [r5, #116]	; 0x74
   11a88:	206e      	movs	r0, #110	; 0x6e
   11a8a:	3a20      	subs	r2, #32
   11a8c:	2520      	movs	r5, #32
   11a8e:	0a73      	lsrs	r3, r6, #9
   11a90:	3100      	adds	r1, #0
   11a92:	3354      	adds	r3, #84	; 0x54
   11a94:	342e      	adds	r4, #46	; 0x2e
   11a96:	3465      	adds	r4, #101	; 0x65
   11a98:	007a      	lsls	r2, r7, #1
   11a9a:	6e66      	ldr	r6, [r4, #100]	; 0x64
   11a9c:	0069      	lsls	r1, r5, #1
   11a9e:	6f43      	ldr	r3, [r0, #116]	; 0x74
   11aa0:	6572      	str	r2, [r6, #84]	; 0x54
   11aa2:	614d      	str	r5, [r1, #20]
   11aa4:	6b72      	ldr	r2, [r6, #52]	; 0x34
   11aa6:	5320      	strh	r0, [r4, r4]
   11aa8:	7a69      	ldrb	r1, [r5, #9]
   11aaa:	2065      	movs	r0, #101	; 0x65
   11aac:	2020      	movs	r0, #32
   11aae:	3a20      	subs	r2, #32
   11ab0:	2520      	movs	r5, #32
   11ab2:	756c      	strb	r4, [r5, #21]
   11ab4:	000a      	movs	r2, r1
   11ab6:	7449      	strb	r1, [r1, #17]
   11ab8:	7265      	strb	r5, [r4, #9]
   11aba:	7461      	strb	r1, [r4, #17]
   11abc:	6f69      	ldr	r1, [r5, #116]	; 0x74
   11abe:	736e      	strb	r6, [r5, #13]
   11ac0:	532f      	strh	r7, [r5, r4]
   11ac2:	6365      	str	r5, [r4, #52]	; 0x34
   11ac4:	2020      	movs	r0, #32
   11ac6:	3a20      	subs	r2, #32
   11ac8:	2520      	movs	r5, #32
   11aca:	0a66      	lsrs	r6, r4, #9
   11acc:	d400      	bmi.n	11ad0 <list_known_crc+0x2>

00011ace <list_known_crc>:
   11ace:	d4b0 3340 6a79 e714 e3c1                    ..@3yj....

00011ad8 <matrix_known_crc>:
   11ad8:	be52 1199 5608 1fd7 0747                    R....V..G.

00011ae2 <state_known_crc>:
   11ae2:	5e47 39bf e5a4 8e3a 8d84                    G^.9..:...

00011aec <intpat>:
   11aec:	1849 0001 19a2 0001 17a0 0001 1844 0001     I...........D...

00011afc <floatpat>:
   11afc:	1896 0001 1797 0001 1a42 0001 1a04 0001     ........B.......

00011b0c <scipat>:
   11b0c:	1785 0001 178e 0001 19c3 0001 17b0 0001     ................

00011b1c <errpat>:
   11b1c:	1820 0001 1a39 0001 1a91 0001 16fe 0001      ...9...........
   11b2c:	d4d4 d4d4                                   ....

00011b30 <_ftoa.pow10>:
   11b30:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
   11b40:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
   11b50:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
   11b60:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
   11b70:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A
