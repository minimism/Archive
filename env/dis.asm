
env.cpp.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	1e c0       	rjmp	.+60     	; 0x3e <__ctors_end>
   2:	2d c0       	rjmp	.+90     	; 0x5e <__bad_interrupt>
   4:	2c c0       	rjmp	.+88     	; 0x5e <__bad_interrupt>
   6:	2b c0       	rjmp	.+86     	; 0x5e <__bad_interrupt>
   8:	2a c0       	rjmp	.+84     	; 0x5e <__bad_interrupt>
   a:	c5 c0       	rjmp	.+394    	; 0x196 <__vector_5>
   c:	28 c0       	rjmp	.+80     	; 0x5e <__bad_interrupt>
   e:	27 c0       	rjmp	.+78     	; 0x5e <__bad_interrupt>
  10:	26 c0       	rjmp	.+76     	; 0x5e <__bad_interrupt>
  12:	25 c0       	rjmp	.+74     	; 0x5e <__bad_interrupt>
  14:	74 c0       	rjmp	.+232    	; 0xfe <__vector_10>
  16:	23 c0       	rjmp	.+70     	; 0x5e <__bad_interrupt>
  18:	22 c0       	rjmp	.+68     	; 0x5e <__bad_interrupt>
  1a:	21 c0       	rjmp	.+66     	; 0x5e <__bad_interrupt>
  1c:	20 c0       	rjmp	.+64     	; 0x5e <__bad_interrupt>

0000001e <__trampolines_end>:
  1e:	01 02       	muls	r16, r17
  20:	04 08       	sbc	r0, r4
  22:	10 20       	and	r1, r0
  24:	20 04       	cpc	r2, r0
  26:	10 08       	sbc	r1, r0

00000028 <digital_pin_to_port_PGM>:
  28:	02 02       	muls	r16, r18
  2a:	02 02       	muls	r16, r18
  2c:	02 02       	muls	r16, r18
  2e:	02 02       	muls	r16, r18
  30:	02 02       	muls	r16, r18

00000032 <port_to_output_PGM>:
  32:	00 00       	nop
  34:	00 00       	nop
  36:	38 00       	.word	0x0038	; ????

00000038 <port_to_mode_PGM>:
  38:	00 00       	nop
  3a:	00 00       	nop
  3c:	37 00       	.word	0x0037	; ????

0000003e <__ctors_end>:
  3e:	11 24       	eor	r1, r1
  40:	1f be       	out	0x3f, r1	; 63
  42:	cf e5       	ldi	r28, 0x5F	; 95
  44:	d2 e0       	ldi	r29, 0x02	; 2
  46:	de bf       	out	0x3e, r29	; 62
  48:	cd bf       	out	0x3d, r28	; 61

0000004a <__do_clear_bss>:
  4a:	20 e0       	ldi	r18, 0x00	; 0
  4c:	a0 e6       	ldi	r26, 0x60	; 96
  4e:	b0 e0       	ldi	r27, 0x00	; 0
  50:	01 c0       	rjmp	.+2      	; 0x54 <.do_clear_bss_start>

00000052 <.do_clear_bss_loop>:
  52:	1d 92       	st	X+, r1

00000054 <.do_clear_bss_start>:
  54:	a1 37       	cpi	r26, 0x71	; 113
  56:	b2 07       	cpc	r27, r18
  58:	e1 f7       	brne	.-8      	; 0x52 <.do_clear_bss_loop>
  5a:	5c d1       	rcall	.+696    	; 0x314 <main>
  5c:	65 c1       	rjmp	.+714    	; 0x328 <_exit>

0000005e <__bad_interrupt>:
  5e:	d0 cf       	rjmp	.-96     	; 0x0 <__vectors>

00000060 <setup>:
  60:	cf 93       	push	r28
  62:	87 b5       	in	r24, 0x27	; 39
  64:	82 60       	ori	r24, 0x02	; 2
  66:	87 bd       	out	0x27, r24	; 39
  68:	84 e6       	ldi	r24, 0x64	; 100
  6a:	90 e0       	ldi	r25, 0x00	; 0
  6c:	de d0       	rcall	.+444    	; 0x22a <delayMicroseconds>
  6e:	07 b4       	in	r0, 0x27	; 39
  70:	00 fe       	sbrs	r0, 0
  72:	fd cf       	rjmp	.-6      	; 0x6e <setup+0xe>
  74:	87 b5       	in	r24, 0x27	; 39
  76:	84 60       	ori	r24, 0x04	; 4
  78:	87 bd       	out	0x27, r24	; 39
  7a:	10 be       	out	0x30, r1	; 48
  7c:	1f bc       	out	0x2f, r1	; 47
  7e:	c2 e0       	ldi	r28, 0x02	; 2
  80:	cc bd       	out	0x2c, r28	; 44
  82:	81 e6       	ldi	r24, 0x61	; 97
  84:	80 bf       	out	0x30, r24	; 48
  86:	8f ef       	ldi	r24, 0xFF	; 255
  88:	8d bd       	out	0x2d, r24	; 45
  8a:	80 e8       	ldi	r24, 0x80	; 128
  8c:	8e bd       	out	0x2e, r24	; 46
  8e:	61 e0       	ldi	r22, 0x01	; 1
  90:	81 e0       	ldi	r24, 0x01	; 1
  92:	07 d1       	rcall	.+526    	; 0x2a2 <pinMode>
  94:	13 be       	out	0x33, r1	; 51
  96:	12 be       	out	0x32, r1	; 50
  98:	ca bd       	out	0x2a, r28	; 42
  9a:	81 e0       	ldi	r24, 0x01	; 1
  9c:	83 bf       	out	0x33, r24	; 51
  9e:	8f e9       	ldi	r24, 0x9F	; 159
  a0:	89 bd       	out	0x29, r24	; 41
  a2:	89 b7       	in	r24, 0x39	; 57
  a4:	80 61       	ori	r24, 0x10	; 16
  a6:	89 bf       	out	0x39, r24	; 57
  a8:	60 e0       	ldi	r22, 0x00	; 0
  aa:	86 e0       	ldi	r24, 0x06	; 6
  ac:	fa d0       	rcall	.+500    	; 0x2a2 <pinMode>
  ae:	60 e0       	ldi	r22, 0x00	; 0
  b0:	87 e0       	ldi	r24, 0x07	; 7
  b2:	f7 d0       	rcall	.+494    	; 0x2a2 <pinMode>
  b4:	60 e0       	ldi	r22, 0x00	; 0
  b6:	88 e0       	ldi	r24, 0x08	; 8
  b8:	f4 d0       	rcall	.+488    	; 0x2a2 <pinMode>
  ba:	60 e0       	ldi	r22, 0x00	; 0
  bc:	89 e0       	ldi	r24, 0x09	; 9
  be:	f1 d0       	rcall	.+482    	; 0x2a2 <pinMode>
  c0:	17 b8       	out	0x07, r1	; 7
  c2:	60 e0       	ldi	r22, 0x00	; 0
  c4:	80 e0       	ldi	r24, 0x00	; 0
  c6:	cf 91       	pop	r28
  c8:	ec c0       	rjmp	.+472    	; 0x2a2 <pinMode>

000000ca <loop>:
  ca:	80 91 60 00 	lds	r24, 0x0060
  ce:	d1 d0       	rcall	.+418    	; 0x272 <analogRead>
  d0:	20 91 60 00 	lds	r18, 0x0060
  d4:	22 30       	cpi	r18, 0x02	; 2
  d6:	39 f0       	breq	.+14     	; 0xe6 <loop+0x1c>
  d8:	23 30       	cpi	r18, 0x03	; 3
  da:	49 f4       	brne	.+18     	; 0xee <loop+0x24>
  dc:	90 93 64 00 	sts	0x0064, r25
  e0:	80 93 63 00 	sts	0x0063, r24
  e4:	04 c0       	rjmp	.+8      	; 0xee <loop+0x24>
  e6:	90 93 62 00 	sts	0x0062, r25
  ea:	80 93 61 00 	sts	0x0061, r24
  ee:	81 e0       	ldi	r24, 0x01	; 1
  f0:	82 0f       	add	r24, r18
  f2:	83 70       	andi	r24, 0x03	; 3
  f4:	80 93 60 00 	sts	0x0060, r24
  f8:	87 b9       	out	0x07, r24	; 7
  fa:	36 9a       	sbi	0x06, 6	; 6
  fc:	08 95       	ret

000000fe <__vector_10>:
  fe:	1f 92       	push	r1
 100:	0f 92       	push	r0
 102:	0f b6       	in	r0, 0x3f	; 63
 104:	0f 92       	push	r0
 106:	11 24       	eor	r1, r1
 108:	2f 93       	push	r18
 10a:	3f 93       	push	r19
 10c:	4f 93       	push	r20
 10e:	5f 93       	push	r21
 110:	8f 93       	push	r24
 112:	9f 93       	push	r25
 114:	80 91 65 00 	lds	r24, 0x0065
 118:	90 91 66 00 	lds	r25, 0x0066
 11c:	b0 9b       	sbis	0x16, 0	; 22
 11e:	14 c0       	rjmp	.+40     	; 0x148 <__vector_10+0x4a>
 120:	20 91 63 00 	lds	r18, 0x0063
 124:	30 91 64 00 	lds	r19, 0x0064
 128:	28 0f       	add	r18, r24
 12a:	39 1f       	adc	r19, r25
 12c:	41 e0       	ldi	r20, 0x01	; 1
 12e:	50 e0       	ldi	r21, 0x00	; 0
 130:	28 17       	cp	r18, r24
 132:	39 07       	cpc	r19, r25
 134:	10 f0       	brcs	.+4      	; 0x13a <__vector_10+0x3c>
 136:	40 e0       	ldi	r20, 0x00	; 0
 138:	50 e0       	ldi	r21, 0x00	; 0
 13a:	88 27       	eor	r24, r24
 13c:	99 27       	eor	r25, r25
 13e:	84 1b       	sub	r24, r20
 140:	95 0b       	sbc	r25, r21
 142:	82 2b       	or	r24, r18
 144:	93 2b       	or	r25, r19
 146:	15 c0       	rjmp	.+42     	; 0x172 <__vector_10+0x74>
 148:	20 91 61 00 	lds	r18, 0x0061
 14c:	30 91 62 00 	lds	r19, 0x0062
 150:	ac 01       	movw	r20, r24
 152:	42 1b       	sub	r20, r18
 154:	53 0b       	sbc	r21, r19
 156:	9a 01       	movw	r18, r20
 158:	41 e0       	ldi	r20, 0x01	; 1
 15a:	50 e0       	ldi	r21, 0x00	; 0
 15c:	82 17       	cp	r24, r18
 15e:	93 07       	cpc	r25, r19
 160:	10 f4       	brcc	.+4      	; 0x166 <__vector_10+0x68>
 162:	40 e0       	ldi	r20, 0x00	; 0
 164:	50 e0       	ldi	r21, 0x00	; 0
 166:	88 27       	eor	r24, r24
 168:	99 27       	eor	r25, r25
 16a:	84 1b       	sub	r24, r20
 16c:	95 0b       	sbc	r25, r21
 16e:	82 23       	and	r24, r18
 170:	93 23       	and	r25, r19
 172:	90 93 66 00 	sts	0x0066, r25
 176:	80 93 65 00 	sts	0x0065, r24
 17a:	80 91 66 00 	lds	r24, 0x0066
 17e:	8e bd       	out	0x2e, r24	; 46
 180:	9f 91       	pop	r25
 182:	8f 91       	pop	r24
 184:	5f 91       	pop	r21
 186:	4f 91       	pop	r20
 188:	3f 91       	pop	r19
 18a:	2f 91       	pop	r18
 18c:	0f 90       	pop	r0
 18e:	0f be       	out	0x3f, r0	; 63
 190:	0f 90       	pop	r0
 192:	1f 90       	pop	r1
 194:	18 95       	reti

00000196 <__vector_5>:
 196:	1f 92       	push	r1
 198:	0f 92       	push	r0
 19a:	0f b6       	in	r0, 0x3f	; 63
 19c:	0f 92       	push	r0
 19e:	11 24       	eor	r1, r1
 1a0:	2f 93       	push	r18
 1a2:	3f 93       	push	r19
 1a4:	8f 93       	push	r24
 1a6:	9f 93       	push	r25
 1a8:	af 93       	push	r26
 1aa:	bf 93       	push	r27
 1ac:	80 91 68 00 	lds	r24, 0x0068
 1b0:	90 91 69 00 	lds	r25, 0x0069
 1b4:	a0 91 6a 00 	lds	r26, 0x006A
 1b8:	b0 91 6b 00 	lds	r27, 0x006B
 1bc:	30 91 67 00 	lds	r19, 0x0067
 1c0:	26 e0       	ldi	r18, 0x06	; 6
 1c2:	23 0f       	add	r18, r19
 1c4:	2d 37       	cpi	r18, 0x7D	; 125
 1c6:	20 f4       	brcc	.+8      	; 0x1d0 <__vector_5+0x3a>
 1c8:	02 96       	adiw	r24, 0x02	; 2
 1ca:	a1 1d       	adc	r26, r1
 1cc:	b1 1d       	adc	r27, r1
 1ce:	05 c0       	rjmp	.+10     	; 0x1da <__vector_5+0x44>
 1d0:	29 e8       	ldi	r18, 0x89	; 137
 1d2:	23 0f       	add	r18, r19
 1d4:	03 96       	adiw	r24, 0x03	; 3
 1d6:	a1 1d       	adc	r26, r1
 1d8:	b1 1d       	adc	r27, r1
 1da:	20 93 67 00 	sts	0x0067, r18
 1de:	80 93 68 00 	sts	0x0068, r24
 1e2:	90 93 69 00 	sts	0x0069, r25
 1e6:	a0 93 6a 00 	sts	0x006A, r26
 1ea:	b0 93 6b 00 	sts	0x006B, r27
 1ee:	80 91 6c 00 	lds	r24, 0x006C
 1f2:	90 91 6d 00 	lds	r25, 0x006D
 1f6:	a0 91 6e 00 	lds	r26, 0x006E
 1fa:	b0 91 6f 00 	lds	r27, 0x006F
 1fe:	01 96       	adiw	r24, 0x01	; 1
 200:	a1 1d       	adc	r26, r1
 202:	b1 1d       	adc	r27, r1
 204:	80 93 6c 00 	sts	0x006C, r24
 208:	90 93 6d 00 	sts	0x006D, r25
 20c:	a0 93 6e 00 	sts	0x006E, r26
 210:	b0 93 6f 00 	sts	0x006F, r27
 214:	bf 91       	pop	r27
 216:	af 91       	pop	r26
 218:	9f 91       	pop	r25
 21a:	8f 91       	pop	r24
 21c:	3f 91       	pop	r19
 21e:	2f 91       	pop	r18
 220:	0f 90       	pop	r0
 222:	0f be       	out	0x3f, r0	; 63
 224:	0f 90       	pop	r0
 226:	1f 90       	pop	r1
 228:	18 95       	reti

0000022a <delayMicroseconds>:
 22a:	83 30       	cpi	r24, 0x03	; 3
 22c:	91 05       	cpc	r25, r1
 22e:	28 f0       	brcs	.+10     	; 0x23a <delayMicroseconds+0x10>
 230:	88 0f       	add	r24, r24
 232:	99 1f       	adc	r25, r25
 234:	04 97       	sbiw	r24, 0x04	; 4
 236:	01 97       	sbiw	r24, 0x01	; 1
 238:	f1 f7       	brne	.-4      	; 0x236 <delayMicroseconds+0xc>
 23a:	08 95       	ret

0000023c <init>:
 23c:	78 94       	sei
 23e:	8a b5       	in	r24, 0x2a	; 42
 240:	82 60       	ori	r24, 0x02	; 2
 242:	8a bd       	out	0x2a, r24	; 42
 244:	8a b5       	in	r24, 0x2a	; 42
 246:	81 60       	ori	r24, 0x01	; 1
 248:	8a bd       	out	0x2a, r24	; 42
 24a:	83 b7       	in	r24, 0x33	; 51
 24c:	82 60       	ori	r24, 0x02	; 2
 24e:	83 bf       	out	0x33, r24	; 51
 250:	83 b7       	in	r24, 0x33	; 51
 252:	81 60       	ori	r24, 0x01	; 1
 254:	83 bf       	out	0x33, r24	; 51
 256:	89 b7       	in	r24, 0x39	; 57
 258:	82 60       	ori	r24, 0x02	; 2
 25a:	89 bf       	out	0x39, r24	; 57
 25c:	80 b7       	in	r24, 0x30	; 48
 25e:	82 60       	ori	r24, 0x02	; 2
 260:	80 bf       	out	0x30, r24	; 48
 262:	80 b7       	in	r24, 0x30	; 48
 264:	81 60       	ori	r24, 0x01	; 1
 266:	80 bf       	out	0x30, r24	; 48
 268:	32 9a       	sbi	0x06, 2	; 6
 26a:	31 9a       	sbi	0x06, 1	; 6
 26c:	30 98       	cbi	0x06, 0	; 6
 26e:	37 9a       	sbi	0x06, 7	; 6
 270:	08 95       	ret

00000272 <analogRead>:
 272:	86 30       	cpi	r24, 0x06	; 6
 274:	08 f0       	brcs	.+2      	; 0x278 <analogRead+0x6>
 276:	86 50       	subi	r24, 0x06	; 6
 278:	87 70       	andi	r24, 0x07	; 7
 27a:	90 91 70 00 	lds	r25, 0x0070
 27e:	92 95       	swap	r25
 280:	99 0f       	add	r25, r25
 282:	99 0f       	add	r25, r25
 284:	90 7c       	andi	r25, 0xC0	; 192
 286:	98 2b       	or	r25, r24
 288:	97 b9       	out	0x07, r25	; 7
 28a:	36 9a       	sbi	0x06, 6	; 6
 28c:	36 99       	sbic	0x06, 6	; 6
 28e:	fe cf       	rjmp	.-4      	; 0x28c <analogRead+0x1a>
 290:	84 b1       	in	r24, 0x04	; 4
 292:	25 b1       	in	r18, 0x05	; 5
 294:	90 e0       	ldi	r25, 0x00	; 0
 296:	92 2b       	or	r25, r18
 298:	08 95       	ret

0000029a <initVariant>:
 29a:	8c b5       	in	r24, 0x2c	; 44
 29c:	80 64       	ori	r24, 0x40	; 64
 29e:	8c bd       	out	0x2c, r24	; 44
 2a0:	08 95       	ret

000002a2 <pinMode>:
 2a2:	cf 93       	push	r28
 2a4:	df 93       	push	r29
 2a6:	90 e0       	ldi	r25, 0x00	; 0
 2a8:	fc 01       	movw	r30, r24
 2aa:	e2 5e       	subi	r30, 0xE2	; 226
 2ac:	ff 4f       	sbci	r31, 0xFF	; 255
 2ae:	24 91       	lpm	r18, Z
 2b0:	fc 01       	movw	r30, r24
 2b2:	e8 5d       	subi	r30, 0xD8	; 216
 2b4:	ff 4f       	sbci	r31, 0xFF	; 255
 2b6:	84 91       	lpm	r24, Z
 2b8:	88 23       	and	r24, r24
 2ba:	49 f1       	breq	.+82     	; 0x30e <pinMode+0x6c>
 2bc:	90 e0       	ldi	r25, 0x00	; 0
 2be:	88 0f       	add	r24, r24
 2c0:	99 1f       	adc	r25, r25
 2c2:	fc 01       	movw	r30, r24
 2c4:	e8 5c       	subi	r30, 0xC8	; 200
 2c6:	ff 4f       	sbci	r31, 0xFF	; 255
 2c8:	a5 91       	lpm	r26, Z+
 2ca:	b4 91       	lpm	r27, Z
 2cc:	8e 5c       	subi	r24, 0xCE	; 206
 2ce:	9f 4f       	sbci	r25, 0xFF	; 255
 2d0:	fc 01       	movw	r30, r24
 2d2:	c5 91       	lpm	r28, Z+
 2d4:	d4 91       	lpm	r29, Z
 2d6:	9f b7       	in	r25, 0x3f	; 63
 2d8:	61 11       	cpse	r22, r1
 2da:	08 c0       	rjmp	.+16     	; 0x2ec <pinMode+0x4a>
 2dc:	f8 94       	cli
 2de:	8c 91       	ld	r24, X
 2e0:	20 95       	com	r18
 2e2:	82 23       	and	r24, r18
 2e4:	8c 93       	st	X, r24
 2e6:	88 81       	ld	r24, Y
 2e8:	82 23       	and	r24, r18
 2ea:	0a c0       	rjmp	.+20     	; 0x300 <pinMode+0x5e>
 2ec:	62 30       	cpi	r22, 0x02	; 2
 2ee:	51 f4       	brne	.+20     	; 0x304 <pinMode+0x62>
 2f0:	f8 94       	cli
 2f2:	8c 91       	ld	r24, X
 2f4:	32 2f       	mov	r19, r18
 2f6:	30 95       	com	r19
 2f8:	83 23       	and	r24, r19
 2fa:	8c 93       	st	X, r24
 2fc:	88 81       	ld	r24, Y
 2fe:	82 2b       	or	r24, r18
 300:	88 83       	st	Y, r24
 302:	04 c0       	rjmp	.+8      	; 0x30c <pinMode+0x6a>
 304:	f8 94       	cli
 306:	8c 91       	ld	r24, X
 308:	82 2b       	or	r24, r18
 30a:	8c 93       	st	X, r24
 30c:	9f bf       	out	0x3f, r25	; 63
 30e:	df 91       	pop	r29
 310:	cf 91       	pop	r28
 312:	08 95       	ret

00000314 <main>:
 314:	93 df       	rcall	.-218    	; 0x23c <init>
 316:	c1 df       	rcall	.-126    	; 0x29a <initVariant>
 318:	a3 de       	rcall	.-698    	; 0x60 <setup>
 31a:	c0 e0       	ldi	r28, 0x00	; 0
 31c:	d0 e0       	ldi	r29, 0x00	; 0
 31e:	d5 de       	rcall	.-598    	; 0xca <loop>
 320:	20 97       	sbiw	r28, 0x00	; 0
 322:	e9 f3       	breq	.-6      	; 0x31e <main+0xa>
 324:	6d de       	rcall	.-806    	; 0x0 <__vectors>
 326:	fb cf       	rjmp	.-10     	; 0x31e <main+0xa>

00000328 <_exit>:
 328:	f8 94       	cli

0000032a <__stop_program>:
 32a:	ff cf       	rjmp	.-2      	; 0x32a <__stop_program>

Disassembly of section .bss:

00800060 <__bss_start>:
	...

00800061 <decayVal>:
	...

00800063 <attackVal>:
	...

00800065 <currentAmplitude>:
	...

00800067 <timer0_fract>:
	...

00800068 <timer0_millis>:
  800068:	00 00       	nop
	...

0080006c <timer0_overflow_count>:
  80006c:	00 00       	nop
	...

00800070 <analog_reference>:
	...

Disassembly of section .comment:

00000000 <_end-0x800071>:
   0:	47 43       	sbci	r20, 0x37	; 55
   2:	43 3a       	cpi	r20, 0xA3	; 163
   4:	20 28       	or	r2, r0
   6:	47 4e       	sbci	r20, 0xE7	; 231
   8:	55 29       	or	r21, r5
   a:	20 34       	cpi	r18, 0x40	; 64
   c:	2e 38       	cpi	r18, 0x8E	; 142
   e:	2e 31       	cpi	r18, 0x1E	; 30
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	2c 00       	.word	0x002c	; ????
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	00 00       	nop
   8:	00 00       	nop
   a:	04 00       	.word	0x0004	; ????
   c:	00 00       	nop
   e:	00 00       	nop
  10:	60 00       	.word	0x0060	; ????
  12:	00 00       	nop
  14:	6a 00       	.word	0x006a	; ????
  16:	00 00       	nop
  18:	ca 00       	.word	0x00ca	; ????
  1a:	00 00       	nop
  1c:	34 00       	.word	0x0034	; ????
  1e:	00 00       	nop
  20:	fe 00       	.word	0x00fe	; ????
  22:	00 00       	nop
  24:	98 00       	.word	0x0098	; ????
	...
  2e:	00 00       	nop
  30:	44 00       	.word	0x0044	; ????
  32:	00 00       	nop
  34:	02 00       	.word	0x0002	; ????
  36:	8a 02       	muls	r24, r26
  38:	00 00       	nop
  3a:	04 00       	.word	0x0004	; ????
  3c:	00 00       	nop
  3e:	00 00       	nop
  40:	96 01       	movw	r18, r12
  42:	00 00       	nop
  44:	94 00       	.word	0x0094	; ????
  46:	00 00       	nop
  48:	00 00       	nop
  4a:	00 00       	nop
  4c:	18 00       	.word	0x0018	; ????
  4e:	00 00       	nop
  50:	00 00       	nop
  52:	00 00       	nop
  54:	48 00       	.word	0x0048	; ????
  56:	00 00       	nop
  58:	00 00       	nop
  5a:	00 00       	nop
  5c:	4a 00       	.word	0x004a	; ????
  5e:	00 00       	nop
  60:	2a 02       	muls	r18, r26
  62:	00 00       	nop
  64:	12 00       	.word	0x0012	; ????
  66:	00 00       	nop
  68:	3c 02       	muls	r19, r28
  6a:	00 00       	nop
  6c:	36 00       	.word	0x0036	; ????
	...
  76:	00 00       	nop
  78:	2c 00       	.word	0x002c	; ????
  7a:	00 00       	nop
  7c:	02 00       	.word	0x0002	; ????
  7e:	d9 04       	cpc	r13, r9
  80:	00 00       	nop
  82:	04 00       	.word	0x0004	; ????
	...
  8c:	06 00       	.word	0x0006	; ????
  8e:	00 00       	nop
  90:	72 02       	muls	r23, r18
  92:	00 00       	nop
  94:	28 00       	.word	0x0028	; ????
  96:	00 00       	nop
  98:	00 00       	nop
  9a:	00 00       	nop
  9c:	7c 00       	.word	0x007c	; ????
	...
  a6:	00 00       	nop
  a8:	3c 00       	.word	0x003c	; ????
  aa:	00 00       	nop
  ac:	02 00       	.word	0x0002	; ????
  ae:	e7 06       	cpc	r14, r23
  b0:	00 00       	nop
  b2:	04 00       	.word	0x0004	; ????
	...
  bc:	2c 00       	.word	0x002c	; ????
  be:	00 00       	nop
  c0:	9a 02       	muls	r25, r26
  c2:	00 00       	nop
  c4:	08 00       	.word	0x0008	; ????
  c6:	00 00       	nop
  c8:	a2 02       	muls	r26, r18
  ca:	00 00       	nop
  cc:	72 00       	.word	0x0072	; ????
  ce:	00 00       	nop
  d0:	00 00       	nop
  d2:	00 00       	nop
  d4:	6a 00       	.word	0x006a	; ????
  d6:	00 00       	nop
  d8:	00 00       	nop
  da:	00 00       	nop
  dc:	50 00       	.word	0x0050	; ????
	...
  e6:	00 00       	nop
  e8:	2c 00       	.word	0x002c	; ????
  ea:	00 00       	nop
  ec:	02 00       	.word	0x0002	; ????
  ee:	7b 0c       	add	r7, r11
  f0:	00 00       	nop
  f2:	04 00       	.word	0x0004	; ????
	...
  fc:	06 00       	.word	0x0006	; ????
  fe:	00 00       	nop
 100:	00 00       	nop
 102:	00 00       	nop
 104:	02 00       	.word	0x0002	; ????
 106:	00 00       	nop
 108:	14 03       	mulsu	r17, r20
 10a:	00 00       	nop
 10c:	14 00       	.word	0x0014	; ????
	...
 116:	00 00       	nop
 118:	1c 00       	.word	0x001c	; ????
 11a:	00 00       	nop
 11c:	02 00       	.word	0x0002	; ????
 11e:	f5 0d       	add	r31, r5
 120:	00 00       	nop
 122:	04 00       	.word	0x0004	; ????
	...
 12c:	02 00       	.word	0x0002	; ????
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	86 02       	muls	r24, r22
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	00 00       	nop
   8:	00 00       	nop
   a:	04 01       	movw	r0, r8
   c:	44 01       	movw	r8, r8
   e:	00 00       	nop
  10:	04 19       	sub	r16, r4
  12:	00 00       	nop
  14:	00 26       	eor	r0, r16
  16:	01 00       	.word	0x0001	; ????
	...
  28:	00 02       	muls	r16, r16
  2a:	02 07       	cpc	r16, r18
  2c:	fa 00       	.word	0x00fa	; ????
  2e:	00 00       	nop
  30:	03 02       	muls	r16, r19
  32:	05 69       	ori	r16, 0x95	; 149
  34:	6e 74       	andi	r22, 0x4E	; 78
  36:	00 02       	muls	r16, r16
  38:	04 05       	cpc	r16, r4
  3a:	14 01       	movw	r2, r8
  3c:	00 00       	nop
  3e:	02 01       	movw	r0, r4
  40:	06 d6       	rcall	.+3084   	; 0xc4e <__data_load_end+0x922>
  42:	00 00       	nop
  44:	00 04       	cpc	r0, r0
  46:	07 01       	movw	r0, r14
  48:	00 00       	nop
  4a:	02 7a       	andi	r16, 0xA2	; 162
  4c:	50 00       	.word	0x0050	; ????
  4e:	00 00       	nop
  50:	02 01       	movw	r0, r4
  52:	08 d4       	rcall	.+2064   	; 0x864 <__data_load_end+0x538>
  54:	00 00       	nop
  56:	00 04       	cpc	r0, r0
  58:	1d 01       	movw	r2, r26
  5a:	00 00       	nop
  5c:	02 7c       	andi	r16, 0xC2	; 194
  5e:	29 00       	.word	0x0029	; ????
  60:	00 00       	nop
  62:	02 04       	cpc	r0, r2
  64:	07 f5       	brid	.+64     	; 0xa6 <setup+0x46>
  66:	00 00       	nop
  68:	00 02       	muls	r16, r16
  6a:	08 05       	cpc	r16, r8
  6c:	0f 01       	movw	r0, r30
  6e:	00 00       	nop
  70:	02 08       	sbc	r0, r2
  72:	07 f0       	brie	.+0      	; 0x74 <setup+0x14>
  74:	00 00       	nop
  76:	00 02       	muls	r16, r16
  78:	01 02       	muls	r16, r17
  7a:	75 00       	.word	0x0075	; ????
  7c:	00 00       	nop
  7e:	02 01       	movw	r0, r4
  80:	06 dd       	rcall	.-1524   	; 0xfffffa8e <__eeprom_end+0xff7efa8e>
  82:	00 00       	nop
  84:	00 02       	muls	r16, r16
  86:	04 04       	cpc	r0, r4
  88:	96 00       	.word	0x0096	; ????
  8a:	00 00       	nop
  8c:	02 04       	cpc	r0, r2
  8e:	04 e2       	ldi	r16, 0x24	; 36
  90:	00 00       	nop
  92:	00 02       	muls	r16, r16
  94:	02 07       	cpc	r16, r18
  96:	a7 00       	.word	0x00a7	; ????
  98:	00 00       	nop
  9a:	05 01       	movw	r0, r10
  9c:	13 00       	.word	0x0013	; ????
  9e:	00 00       	nop
  a0:	01 1a       	sub	r0, r17
  a2:	60 00       	.word	0x0060	; ????
  a4:	00 00       	nop
  a6:	ca 00       	.word	0x00ca	; ????
  a8:	00 00       	nop
  aa:	00 00       	nop
  ac:	00 00       	nop
  ae:	01 5a       	subi	r16, 0xA1	; 161
  b0:	01 00       	.word	0x0001	; ????
  b2:	00 06       	cpc	r0, r16
  b4:	6e 00       	.word	0x006e	; ????
  b6:	00 00       	nop
  b8:	4b 02       	muls	r20, r27
  ba:	00 00       	nop
  bc:	cc 00       	.word	0x00cc	; ????
  be:	00 00       	nop
  c0:	07 06       	cpc	r0, r23
  c2:	68 93       	.word	0x9368	; ????
  c4:	01 69       	ori	r16, 0x91	; 145
  c6:	93 01       	movw	r18, r6
  c8:	02 08       	sbc	r0, r2
  ca:	64 00       	.word	0x0064	; ????
  cc:	06 94       	lsr	r0
  ce:	00 00       	nop
  d0:	00 5e       	subi	r16, 0xE0	; 224
  d2:	02 00       	.word	0x0002	; ????
  d4:	00 e4       	ldi	r16, 0x40	; 64
  d6:	00 00       	nop
  d8:	00 07       	cpc	r16, r16
  da:	01 68       	ori	r16, 0x81	; 129
  dc:	01 31       	cpi	r16, 0x11	; 17
  de:	07 01       	movw	r0, r14
  e0:	66 01       	movw	r12, r12
  e2:	31 00       	.word	0x0031	; ????
  e4:	06 ae       	std	Z+62, r0	; 0x3e
  e6:	00 00       	nop
  e8:	00 5e       	subi	r16, 0xE0	; 224
  ea:	02 00       	.word	0x0002	; ????
  ec:	00 fc       	sbrc	r0, 0
  ee:	00 00       	nop
  f0:	00 07       	cpc	r16, r16
  f2:	01 68       	ori	r16, 0x81	; 129
  f4:	01 36       	cpi	r16, 0x61	; 97
  f6:	07 01       	movw	r0, r14
  f8:	66 01       	movw	r12, r12
  fa:	30 00       	.word	0x0030	; ????
  fc:	06 b4       	in	r0, 0x26	; 38
  fe:	00 00       	nop
 100:	00 5e       	subi	r16, 0xE0	; 224
 102:	02 00       	.word	0x0002	; ????
 104:	00 14       	cp	r0, r0
 106:	01 00       	.word	0x0001	; ????
 108:	00 07       	cpc	r16, r16
 10a:	01 68       	ori	r16, 0x81	; 129
 10c:	01 37       	cpi	r16, 0x71	; 113
 10e:	07 01       	movw	r0, r14
 110:	66 01       	movw	r12, r12
 112:	30 00       	.word	0x0030	; ????
 114:	06 ba       	out	0x16, r0	; 22
 116:	00 00       	nop
 118:	00 5e       	subi	r16, 0xE0	; 224
 11a:	02 00       	.word	0x0002	; ????
 11c:	00 2c       	mov	r0, r0
 11e:	01 00       	.word	0x0001	; ????
 120:	00 07       	cpc	r16, r16
 122:	01 68       	ori	r16, 0x81	; 129
 124:	01 38       	cpi	r16, 0x81	; 129
 126:	07 01       	movw	r0, r14
 128:	66 01       	movw	r12, r12
 12a:	30 00       	.word	0x0030	; ????
 12c:	06 c0       	rjmp	.+12     	; 0x13a <__vector_10+0x3c>
 12e:	00 00       	nop
 130:	00 5e       	subi	r16, 0xE0	; 224
 132:	02 00       	.word	0x0002	; ????
 134:	00 44       	sbci	r16, 0x40	; 64
 136:	01 00       	.word	0x0001	; ????
 138:	00 07       	cpc	r16, r16
 13a:	01 68       	ori	r16, 0x81	; 129
 13c:	01 39       	cpi	r16, 0x91	; 145
 13e:	07 01       	movw	r0, r14
 140:	66 01       	movw	r12, r12
 142:	30 00       	.word	0x0030	; ????
 144:	08 ca       	rjmp	.-3056   	; 0xfffff556 <__eeprom_end+0xff7ef556>
 146:	00 00       	nop
 148:	00 01       	movw	r0, r0
 14a:	5e 02       	muls	r21, r30
 14c:	00 00       	nop
 14e:	07 01       	movw	r0, r14
 150:	68 01       	movw	r12, r16
 152:	30 07       	cpc	r19, r16
 154:	01 66       	ori	r16, 0x61	; 97
 156:	01 30       	cpi	r16, 0x01	; 1
 158:	00 00       	nop
 15a:	09 01       	movw	r0, r18
 15c:	91 00       	.word	0x0091	; ????
 15e:	00 00       	nop
 160:	01 53       	subi	r16, 0x31	; 49
 162:	ca 00       	.word	0x00ca	; ????
 164:	00 00       	nop
 166:	fe 00       	.word	0x00fe	; ????
 168:	00 00       	nop
 16a:	03 92       	.word	0x9203	; ????
 16c:	20 02       	muls	r18, r16
 16e:	01 b2       	in	r0, 0x11	; 17
 170:	01 00       	.word	0x0001	; ????
 172:	00 0a       	sbc	r0, r16
 174:	ca 00       	.word	0x00ca	; ????
 176:	00 00       	nop
 178:	fe 00       	.word	0x00fe	; ????
 17a:	00 00       	nop
 17c:	0b e9       	ldi	r16, 0x9B	; 155
 17e:	00 00       	nop
 180:	00 01       	movw	r0, r0
 182:	55 45       	sbci	r21, 0x55	; 85
 184:	00 00       	nop
 186:	00 05       	cpc	r16, r0
 188:	03 60       	ori	r16, 0x03	; 3
 18a:	00 80       	ld	r0, Z
 18c:	00 0c       	add	r0, r0
 18e:	7a 00       	.word	0x007a	; ????
 190:	00 00       	nop
 192:	01 56       	subi	r16, 0x61	; 97
 194:	45 00       	.word	0x0045	; ????
 196:	00 00       	nop
 198:	0d 6e       	ori	r16, 0xED	; 237
 19a:	00 00       	nop
 19c:	00 01       	movw	r0, r0
 19e:	57 57       	subi	r21, 0x77	; 119
 1a0:	00 00       	nop
 1a2:	00 22       	and	r0, r16
 1a4:	00 00       	nop
 1a6:	00 0e       	add	r0, r16
 1a8:	d0 00       	.word	0x00d0	; ????
 1aa:	00 00       	nop
 1ac:	76 02       	muls	r23, r22
 1ae:	00 00       	nop
 1b0:	00 00       	nop
 1b2:	05 01       	movw	r0, r10
 1b4:	85 00       	.word	0x0085	; ????
 1b6:	00 00       	nop
 1b8:	01 74       	andi	r16, 0x41	; 65
 1ba:	fe 00       	.word	0x00fe	; ????
 1bc:	00 00       	nop
 1be:	96 01       	movw	r18, r12
 1c0:	00 00       	nop
 1c2:	3a 00       	.word	0x003a	; ????
 1c4:	00 00       	nop
 1c6:	01 e4       	ldi	r16, 0x41	; 65
 1c8:	01 00       	.word	0x0001	; ????
 1ca:	00 0a       	sbc	r0, r16
 1cc:	14 01       	movw	r2, r8
 1ce:	00 00       	nop
 1d0:	80 01       	movw	r16, r0
 1d2:	00 00       	nop
 1d4:	0f 63       	ori	r16, 0x3F	; 63
 1d6:	61 00       	.word	0x0061	; ????
 1d8:	01 76       	andi	r16, 0x61	; 97
 1da:	57 00       	.word	0x0057	; ????
 1dc:	00 00       	nop
 1de:	b7 00       	.word	0x00b7	; ????
 1e0:	00 00       	nop
 1e2:	00 00       	nop
 1e4:	10 41       	sbci	r17, 0x10	; 16
 1e6:	30 00       	.word	0x0030	; ????
 1e8:	03 2a       	or	r0, r19
 1ea:	ef 01       	movw	r28, r30
 1ec:	00 00       	nop
 1ee:	06 11       	cpse	r16, r6
 1f0:	45 00       	.word	0x0045	; ????
 1f2:	00 00       	nop
 1f4:	10 41       	sbci	r17, 0x10	; 16
 1f6:	31 00       	.word	0x0031	; ????
 1f8:	03 2b       	or	r16, r19
 1fa:	ef 01       	movw	r28, r30
 1fc:	00 00       	nop
 1fe:	07 10       	cpse	r0, r7
 200:	41 32       	cpi	r20, 0x21	; 33
 202:	00 03       	mulsu	r16, r16
 204:	2c ef       	ldi	r18, 0xFC	; 252
 206:	01 00       	.word	0x0001	; ????
 208:	00 08       	sbc	r0, r0
 20a:	10 41       	sbci	r17, 0x10	; 16
 20c:	33 00       	.word	0x0033	; ????
 20e:	03 2d       	mov	r16, r3
 210:	ef 01       	movw	r28, r30
 212:	00 00       	nop
 214:	09 12       	cpse	r0, r25
 216:	33 01       	movw	r6, r6
 218:	00 00       	nop
 21a:	01 4f       	sbci	r16, 0xF1	; 241
 21c:	57 00       	.word	0x0057	; ????
 21e:	00 00       	nop
 220:	01 05       	cpc	r16, r1
 222:	03 65       	ori	r16, 0x53	; 83
 224:	00 80       	ld	r0, Z
 226:	00 12       	cpse	r0, r16
 228:	09 00       	.word	0x0009	; ????
 22a:	00 00       	nop
 22c:	01 50       	subi	r16, 0x01	; 1
 22e:	57 00       	.word	0x0057	; ????
 230:	00 00       	nop
 232:	01 05       	cpc	r16, r1
 234:	03 63       	ori	r16, 0x33	; 51
 236:	00 80       	ld	r0, Z
 238:	00 12       	cpse	r0, r16
 23a:	00 00       	nop
 23c:	00 00       	nop
 23e:	01 51       	subi	r16, 0x11	; 17
 240:	57 00       	.word	0x0057	; ????
 242:	00 00       	nop
 244:	01 05       	cpc	r16, r1
 246:	03 61       	ori	r16, 0x13	; 19
 248:	00 80       	ld	r0, Z
 24a:	00 13       	cpse	r16, r16
 24c:	01 ba       	out	0x11, r0	; 17
 24e:	00 00       	nop
 250:	00 04       	cpc	r0, r0
 252:	87 01       	movw	r16, r14
 254:	5e 02       	muls	r21, r30
 256:	00 00       	nop
 258:	14 29       	or	r17, r4
 25a:	00 00       	nop
 25c:	00 00       	nop
 25e:	13 01       	movw	r2, r6
 260:	cc 00       	.word	0x00cc	; ????
 262:	00 00       	nop
 264:	04 7d       	andi	r16, 0xD4	; 212
 266:	01 76       	andi	r16, 0x61	; 97
 268:	02 00       	.word	0x0002	; ????
 26a:	00 14       	cp	r0, r0
 26c:	45 00       	.word	0x0045	; ????
 26e:	00 00       	nop
 270:	14 45       	sbci	r17, 0x54	; 84
 272:	00 00       	nop
 274:	00 00       	nop
 276:	15 01       	movw	r2, r10
 278:	9c 00       	.word	0x009c	; ????
 27a:	00 00       	nop
 27c:	04 80       	ldd	r0, Z+4	; 0x04
 27e:	30 00       	.word	0x0030	; ????
 280:	00 00       	nop
 282:	01 14       	cp	r0, r1
 284:	45 00       	.word	0x0045	; ????
 286:	00 00       	nop
 288:	00 00       	nop
 28a:	4b 02       	muls	r20, r27
 28c:	00 00       	nop
 28e:	02 00       	.word	0x0002	; ????
 290:	2e 01       	movw	r4, r28
 292:	00 00       	nop
 294:	04 01       	movw	r0, r8
 296:	18 02       	muls	r17, r24
 298:	00 00       	nop
 29a:	01 6f       	ori	r16, 0xF1	; 241
 29c:	02 00       	.word	0x0002	; ????
 29e:	00 20       	and	r0, r0
	...
 2a8:	00 00       	nop
 2aa:	00 a4       	ldd	r0, Z+40	; 0x28
 2ac:	01 00       	.word	0x0001	; ????
 2ae:	00 02       	muls	r16, r16
 2b0:	01 06       	cpc	r0, r17
 2b2:	d6 00       	.word	0x00d6	; ????
 2b4:	00 00       	nop
 2b6:	03 07       	cpc	r16, r19
 2b8:	01 00       	.word	0x0001	; ????
 2ba:	00 02       	muls	r16, r16
 2bc:	7a 37       	cpi	r23, 0x7A	; 122
 2be:	00 00       	nop
 2c0:	00 02       	muls	r16, r16
 2c2:	01 08       	sbc	r0, r1
 2c4:	d4 00       	.word	0x00d4	; ????
 2c6:	00 00       	nop
 2c8:	04 02       	muls	r16, r20
 2ca:	05 69       	ori	r16, 0x95	; 149
 2cc:	6e 74       	andi	r22, 0x4E	; 78
 2ce:	00 03       	mulsu	r16, r16
 2d0:	1d 01       	movw	r2, r26
 2d2:	00 00       	nop
 2d4:	02 7c       	andi	r16, 0xC2	; 194
 2d6:	50 00       	.word	0x0050	; ????
 2d8:	00 00       	nop
 2da:	02 02       	muls	r16, r18
 2dc:	07 fa       	bst	r0, 7
 2de:	00 00       	nop
 2e0:	00 02       	muls	r16, r16
 2e2:	04 05       	cpc	r16, r4
 2e4:	14 01       	movw	r2, r8
 2e6:	00 00       	nop
 2e8:	02 04       	cpc	r0, r2
 2ea:	07 f5       	brid	.+64     	; 0x32c <__data_load_end>
 2ec:	00 00       	nop
 2ee:	00 02       	muls	r16, r16
 2f0:	08 05       	cpc	r16, r8
 2f2:	0f 01       	movw	r0, r30
 2f4:	00 00       	nop
 2f6:	02 08       	sbc	r0, r2
 2f8:	07 f0       	brie	.+0      	; 0x2fa <pinMode+0x58>
 2fa:	00 00       	nop
 2fc:	00 02       	muls	r16, r16
 2fe:	01 06       	cpc	r0, r17
 300:	dd 00       	.word	0x00dd	; ????
 302:	00 00       	nop
 304:	02 01       	movw	r0, r4
 306:	02 d7       	rcall	.+3588   	; 0x110c <__data_load_end+0xde0>
 308:	02 00       	.word	0x0002	; ????
 30a:	00 05       	cpc	r16, r0
 30c:	01 64       	ori	r16, 0x41	; 65
 30e:	02 00       	.word	0x0002	; ????
 310:	00 01       	movw	r0, r0
 312:	2f 01       	movw	r4, r30
 314:	96 01       	movw	r18, r12
 316:	00 00       	nop
 318:	2a 02       	muls	r18, r26
 31a:	00 00       	nop
 31c:	fd 00       	.word	0x00fd	; ????
 31e:	00 00       	nop
 320:	01 b6       	in	r0, 0x31	; 49
 322:	00 00       	nop
 324:	00 06       	cpc	r0, r16
 326:	6d 00       	.word	0x006d	; ????
 328:	01 34       	cpi	r16, 0x41	; 65
 32a:	5e 00       	.word	0x005e	; ????
 32c:	00 00       	nop
 32e:	7a 01       	movw	r14, r20
 330:	00 00       	nop
 332:	06 66       	ori	r16, 0x66	; 102
 334:	00 01       	movw	r0, r0
 336:	35 37       	cpi	r19, 0x75	; 117
 338:	00 00       	nop
 33a:	00 ed       	ldi	r16, 0xD0	; 208
 33c:	01 00       	.word	0x0001	; ????
 33e:	00 00       	nop
 340:	07 01       	movw	r0, r14
 342:	03 02       	muls	r16, r19
 344:	00 00       	nop
 346:	01 43       	sbci	r16, 0x31	; 49
 348:	01 5e       	subi	r16, 0xE1	; 225
	...
 352:	00 00       	nop
 354:	00 03       	mulsu	r16, r16
 356:	92 20       	and	r9, r2
 358:	02 01       	movw	r0, r4
 35a:	f8 00       	.word	0x00f8	; ????
 35c:	00 00       	nop
 35e:	08 6d       	ori	r16, 0xD8	; 216
 360:	00 01       	movw	r0, r0
 362:	45 5e       	subi	r20, 0xE5	; 229
 364:	00 00       	nop
 366:	00 0c       	add	r0, r0
 368:	66 93       	lac	Z, r22
 36a:	01 67       	ori	r16, 0x71	; 113
 36c:	93 01       	movw	r18, r6
 36e:	68 93       	.word	0x9368	; ????
 370:	01 69       	ori	r16, 0x91	; 145
 372:	93 01       	movw	r18, r6
 374:	09 10       	cpse	r0, r9
 376:	02 00       	.word	0x0002	; ????
 378:	00 01       	movw	r0, r0
 37a:	46 2c       	mov	r4, r6
 37c:	00 00       	nop
 37e:	00 01       	movw	r0, r0
 380:	62 00       	.word	0x0062	; ????
 382:	07 01       	movw	r0, r14
 384:	f5 01       	movw	r30, r10
 386:	00 00       	nop
 388:	01 51       	subi	r16, 0x11	; 17
 38a:	01 5e       	subi	r16, 0xE1	; 225
	...
 394:	00 00       	nop
 396:	00 03       	mulsu	r16, r16
 398:	92 20       	and	r9, r2
 39a:	02 01       	movw	r0, r4
 39c:	47 01       	movw	r8, r14
 39e:	00 00       	nop
 3a0:	08 6d       	ori	r16, 0xD8	; 216
 3a2:	00 01       	movw	r0, r0
 3a4:	52 5e       	subi	r21, 0xE2	; 226
 3a6:	00 00       	nop
 3a8:	00 0c       	add	r0, r0
 3aa:	68 93       	.word	0x9368	; ????
 3ac:	01 69       	ori	r16, 0x91	; 145
 3ae:	93 01       	movw	r18, r6
 3b0:	6a 93       	st	-Y, r22
 3b2:	01 6b       	ori	r16, 0xB1	; 177
 3b4:	93 01       	movw	r18, r6
 3b6:	0a 10       	cpse	r0, r10
 3b8:	02 00       	.word	0x0002	; ????
 3ba:	00 01       	movw	r0, r0
 3bc:	53 2c       	mov	r5, r3
 3be:	00 00       	nop
 3c0:	00 32       	cpi	r16, 0x20	; 32
 3c2:	02 00       	.word	0x0002	; ????
 3c4:	00 08       	sbc	r0, r0
 3c6:	74 00       	.word	0x0074	; ????
 3c8:	01 53       	subi	r16, 0x31	; 49
 3ca:	2c 00       	.word	0x002c	; ????
 3cc:	00 00       	nop
 3ce:	01 62       	ori	r16, 0x21	; 33
 3d0:	00 05       	cpc	r16, r0
 3d2:	01 0a       	sbc	r0, r17
 3d4:	02 00       	.word	0x0002	; ????
 3d6:	00 01       	movw	r0, r0
 3d8:	6c 01       	movw	r12, r24
	...
 3e2:	51 02       	muls	r21, r17
 3e4:	00 00       	nop
 3e6:	01 9a       	sbi	0x00, 1	; 0
 3e8:	01 00       	.word	0x0001	; ????
 3ea:	00 0b       	sbc	r16, r16
 3ec:	6d 73       	andi	r22, 0x3D	; 61
 3ee:	00 01       	movw	r0, r0
 3f0:	6c 5e       	subi	r22, 0xEC	; 236
 3f2:	00 00       	nop
 3f4:	00 b4       	in	r0, 0x20	; 32
 3f6:	02 00       	.word	0x0002	; ????
 3f8:	00 0a       	sbc	r0, r16
 3fa:	ea 01       	movw	r28, r20
 3fc:	00 00       	nop
 3fe:	01 6e       	ori	r16, 0xE1	; 225
 400:	45 00       	.word	0x0045	; ????
 402:	00 00       	nop
 404:	e8 02       	muls	r30, r24
 406:	00 00       	nop
 408:	0c 00       	.word	0x000c	; ????
 40a:	00 00       	nop
 40c:	00 f8       	bld	r0, 0
 40e:	00 00       	nop
 410:	00 0c       	add	r0, r0
 412:	00 00       	nop
 414:	00 00       	nop
 416:	44 02       	muls	r20, r20
 418:	00 00       	nop
 41a:	0c 00       	.word	0x000c	; ????
 41c:	00 00       	nop
 41e:	00 f8       	bld	r0, 0
 420:	00 00       	nop
 422:	00 00       	nop
 424:	0d 01       	movw	r0, r26
 426:	ba 00       	.word	0x00ba	; ????
 428:	00 00       	nop
 42a:	01 7a       	andi	r16, 0xA1	; 161
 42c:	01 2a       	or	r0, r17
 42e:	02 00       	.word	0x0002	; ????
 430:	00 3c       	cpi	r16, 0xC0	; 192
 432:	02 00       	.word	0x0002	; ????
 434:	00 03       	mulsu	r16, r16
 436:	92 20       	and	r9, r2
 438:	02 01       	movw	r0, r4
 43a:	c3 01       	movw	r24, r6
 43c:	00 00       	nop
 43e:	0b 75       	andi	r16, 0x5B	; 91
 440:	73 00       	.word	0x0073	; ????
 442:	01 7a       	andi	r16, 0xA1	; 161
 444:	50 00       	.word	0x0050	; ????
 446:	00 00       	nop
 448:	00 03       	mulsu	r16, r16
 44a:	00 00       	nop
 44c:	00 0e       	add	r0, r16
 44e:	01 f0       	breq	.+0      	; 0x450 <__data_load_end+0x124>
 450:	01 00       	.word	0x0001	; ????
 452:	00 01       	movw	r0, r0
 454:	f3 01       	movw	r30, r6
 456:	3c 02       	muls	r19, r28
 458:	00 00       	nop
 45a:	72 02       	muls	r23, r18
 45c:	00 00       	nop
 45e:	03 92       	.word	0x9203	; ????
 460:	20 02       	muls	r18, r16
 462:	01 0f       	add	r16, r17
 464:	41 30       	cpi	r20, 0x01	; 1
 466:	00 03       	mulsu	r16, r16
 468:	2a e4       	ldi	r18, 0x4A	; 74
 46a:	01 00       	.word	0x0001	; ????
 46c:	00 06       	cpc	r0, r16
 46e:	10 2c       	mov	r1, r0
 470:	00 00       	nop
 472:	00 0f       	add	r16, r16
 474:	41 31       	cpi	r20, 0x11	; 17
 476:	00 03       	mulsu	r16, r16
 478:	2b e4       	ldi	r18, 0x4B	; 75
 47a:	01 00       	.word	0x0001	; ????
 47c:	00 07       	cpc	r16, r16
 47e:	0f 41       	sbci	r16, 0x1F	; 31
 480:	32 00       	.word	0x0032	; ????
 482:	03 2c       	mov	r0, r3
 484:	e4 01       	movw	r28, r8
 486:	00 00       	nop
 488:	08 0f       	add	r16, r24
 48a:	41 33       	cpi	r20, 0x31	; 49
 48c:	00 03       	mulsu	r16, r16
 48e:	2d e4       	ldi	r18, 0x4D	; 77
 490:	01 00       	.word	0x0001	; ????
 492:	00 09       	sbc	r16, r0
 494:	09 ca       	rjmp	.-3054   	; 0xfffff8a8 <__eeprom_end+0xff7ef8a8>
 496:	02 00       	.word	0x0002	; ????
 498:	00 01       	movw	r0, r0
 49a:	2a 37       	cpi	r18, 0x7A	; 122
 49c:	00 00       	nop
 49e:	00 05       	cpc	r16, r0
 4a0:	03 67       	ori	r16, 0x73	; 115
 4a2:	00 80       	ld	r0, Z
 4a4:	00 11       	cpse	r16, r0
 4a6:	d4 01       	movw	r26, r8
 4a8:	00 00       	nop
 4aa:	01 28       	or	r0, r1
 4ac:	2d 02       	muls	r18, r29
 4ae:	00 00       	nop
 4b0:	01 05       	cpc	r16, r1
 4b2:	03 6c       	ori	r16, 0xC3	; 195
 4b4:	00 80       	ld	r0, Z
 4b6:	00 12       	cpse	r0, r16
 4b8:	5e 00       	.word	0x005e	; ????
 4ba:	00 00       	nop
 4bc:	11 fc       	sbrc	r1, 1
 4be:	01 00       	.word	0x0001	; ????
 4c0:	00 01       	movw	r0, r0
 4c2:	29 2d       	mov	r18, r9
 4c4:	02 00       	.word	0x0002	; ????
 4c6:	00 01       	movw	r0, r0
 4c8:	05 03       	mulsu	r16, r21
 4ca:	68 00       	.word	0x0068	; ????
 4cc:	80 00       	.word	0x0080	; ????
 4ce:	13 01       	movw	r2, r6
 4d0:	5e 02       	muls	r21, r30
 4d2:	00 00       	nop
 4d4:	04 26       	eor	r0, r20
 4d6:	01 01       	movw	r0, r2
 4d8:	00 0a       	sbc	r0, r16
 4da:	02 00       	.word	0x0002	; ????
 4dc:	00 02       	muls	r16, r16
 4de:	00 62       	ori	r16, 0x20	; 32
 4e0:	02 00       	.word	0x0002	; ????
 4e2:	00 04       	cpc	r0, r0
 4e4:	01 18       	sub	r0, r1
 4e6:	02 00       	.word	0x0002	; ????
 4e8:	00 01       	movw	r0, r0
 4ea:	4c 03       	fmul	r20, r20
 4ec:	00 00       	nop
 4ee:	58 00       	.word	0x0058	; ????
	...
 4f8:	00 00       	nop
 4fa:	95 03       	fmuls	r17, r21
 4fc:	00 00       	nop
 4fe:	02 01       	movw	r0, r4
 500:	06 d6       	rcall	.+3084   	; 0x110e <__data_load_end+0xde2>
 502:	00 00       	nop
 504:	00 03       	mulsu	r16, r16
 506:	07 01       	movw	r0, r14
 508:	00 00       	nop
 50a:	02 7a       	andi	r16, 0xA2	; 162
 50c:	37 00       	.word	0x0037	; ????
 50e:	00 00       	nop
 510:	02 01       	movw	r0, r4
 512:	08 d4       	rcall	.+2064   	; 0xd24 <__data_load_end+0x9f8>
 514:	00 00       	nop
 516:	00 04       	cpc	r0, r0
 518:	02 05       	cpc	r16, r2
 51a:	69 6e       	ori	r22, 0xE9	; 233
 51c:	74 00       	.word	0x0074	; ????
 51e:	03 1d       	adc	r16, r3
 520:	01 00       	.word	0x0001	; ????
 522:	00 02       	muls	r16, r16
 524:	7c 50       	subi	r23, 0x0C	; 12
 526:	00 00       	nop
 528:	00 02       	muls	r16, r16
 52a:	02 07       	cpc	r16, r18
 52c:	fa 00       	.word	0x00fa	; ????
 52e:	00 00       	nop
 530:	02 04       	cpc	r0, r2
 532:	05 14       	cp	r0, r5
 534:	01 00       	.word	0x0001	; ????
 536:	00 02       	muls	r16, r16
 538:	04 07       	cpc	r16, r20
 53a:	f5 00       	.word	0x00f5	; ????
 53c:	00 00       	nop
 53e:	02 08       	sbc	r0, r2
 540:	05 0f       	add	r16, r21
 542:	01 00       	.word	0x0001	; ????
 544:	00 02       	muls	r16, r16
 546:	08 07       	cpc	r16, r24
 548:	f0 00       	.word	0x00f0	; ????
 54a:	00 00       	nop
 54c:	02 01       	movw	r0, r4
 54e:	06 dd       	rcall	.-1524   	; 0xffffff5c <__eeprom_end+0xff7eff5c>
 550:	00 00       	nop
 552:	00 02       	muls	r16, r16
 554:	01 02       	muls	r16, r17
 556:	d7 02       	muls	r29, r23
 558:	00 00       	nop
 55a:	05 01       	movw	r0, r10
 55c:	e6 02       	muls	r30, r22
 55e:	00 00       	nop
 560:	01 20       	and	r0, r1
 562:	01 00       	.word	0x0001	; ????
 564:	00 00       	nop
 566:	00 00       	nop
 568:	00 00       	nop
 56a:	00 03       	mulsu	r16, r16
 56c:	92 20       	and	r9, r2
 56e:	02 01       	movw	r0, r4
 570:	a9 00       	.word	0x00a9	; ????
 572:	00 00       	nop
 574:	06 47       	sbci	r16, 0x76	; 118
 576:	03 00       	.word	0x0003	; ????
 578:	00 01       	movw	r0, r0
 57a:	20 2c       	mov	r2, r0
 57c:	00 00       	nop
 57e:	00 01       	movw	r0, r0
 580:	68 00       	.word	0x0068	; ????
 582:	07 01       	movw	r0, r14
 584:	9c 00       	.word	0x009c	; ????
 586:	00 00       	nop
 588:	01 28       	or	r0, r1
 58a:	01 3e       	cpi	r16, 0xE1	; 225
 58c:	00 00       	nop
 58e:	00 72       	andi	r16, 0x20	; 32
 590:	02 00       	.word	0x0002	; ????
 592:	00 9a       	sbi	0x00, 0	; 0
 594:	02 00       	.word	0x0002	; ????
 596:	00 03       	mulsu	r16, r16
 598:	92 20       	and	r9, r2
 59a:	02 01       	movw	r0, r4
 59c:	f1 00       	.word	0x00f1	; ????
 59e:	00 00       	nop
 5a0:	08 70       	andi	r16, 0x08	; 8
 5a2:	69 6e       	ori	r22, 0xE9	; 233
 5a4:	00 01       	movw	r0, r0
 5a6:	28 2c       	mov	r2, r8
 5a8:	00 00       	nop
 5aa:	00 28       	or	r0, r0
 5ac:	03 00       	.word	0x0003	; ????
 5ae:	00 09       	sbc	r16, r0
 5b0:	6c 6f       	ori	r22, 0xFC	; 252
 5b2:	77 00       	.word	0x0077	; ????
 5b4:	01 2a       	or	r0, r17
 5b6:	2c 00       	.word	0x002c	; ????
 5b8:	00 00       	nop
 5ba:	01 68       	ori	r16, 0x81	; 129
 5bc:	0a f6       	brpl	.-126    	; 0x540 <__data_load_end+0x214>
 5be:	02 00       	.word	0x0002	; ????
 5c0:	00 01       	movw	r0, r0
 5c2:	2a 2c       	mov	r2, r10
 5c4:	00 00       	nop
 5c6:	00 01       	movw	r0, r0
 5c8:	62 00       	.word	0x0062	; ????
 5ca:	0b 01       	movw	r0, r22
 5cc:	32 03       	mulsu	r19, r18
 5ce:	00 00       	nop
 5d0:	01 66       	ori	r16, 0x61	; 97
 5d2:	01 00       	.word	0x0001	; ????
 5d4:	00 00       	nop
 5d6:	00 00       	nop
 5d8:	00 00       	nop
 5da:	00 46       	sbci	r16, 0x60	; 96
 5dc:	03 00       	.word	0x0003	; ????
 5de:	00 01       	movw	r0, r0
 5e0:	7f 01       	movw	r14, r30
 5e2:	00 00       	nop
 5e4:	08 70       	andi	r16, 0x08	; 8
 5e6:	69 6e       	ori	r22, 0xE9	; 233
 5e8:	00 01       	movw	r0, r0
 5ea:	66 2c       	mov	r6, r6
 5ec:	00 00       	nop
 5ee:	00 82       	st	Z, r0
 5f0:	03 00       	.word	0x0003	; ????
 5f2:	00 08       	sbc	r0, r0
 5f4:	76 61       	ori	r23, 0x16	; 22
 5f6:	6c 00       	.word	0x006c	; ????
 5f8:	01 66       	ori	r16, 0x61	; 97
 5fa:	3e 00       	.word	0x003e	; ????
 5fc:	00 00       	nop
 5fe:	d2 03       	fmuls	r21, r18
 600:	00 00       	nop
 602:	0c 00       	.word	0x000c	; ????
 604:	00 00       	nop
 606:	00 00       	nop
 608:	00 00       	nop
 60a:	00 53       	subi	r16, 0x30	; 48
 60c:	01 00       	.word	0x0001	; ????
 60e:	00 0d       	add	r16, r0
 610:	dd 02       	muls	r29, r29
 612:	00 00       	nop
 614:	01 78       	andi	r16, 0x81	; 129
 616:	45 00       	.word	0x0045	; ????
 618:	00 00       	nop
 61a:	26 04       	cpc	r2, r6
 61c:	00 00       	nop
 61e:	0a 3e       	cpi	r16, 0xEA	; 234
 620:	03 00       	.word	0x0003	; ????
 622:	00 01       	movw	r0, r0
 624:	78 2c       	mov	r7, r8
 626:	00 00       	nop
 628:	00 01       	movw	r0, r0
 62a:	6e 00       	.word	0x006e	; ????
 62c:	0e 00       	.word	0x000e	; ????
 62e:	00 00       	nop
 630:	00 df       	rcall	.-512    	; 0x432 <__data_load_end+0x106>
 632:	01 00       	.word	0x0001	; ????
 634:	00 6c       	ori	r16, 0xC0	; 192
 636:	01 00       	.word	0x0001	; ????
 638:	00 0f       	add	r16, r16
 63a:	01 68       	ori	r16, 0x81	; 129
 63c:	02 81       	ldd	r16, Z+2	; 0x02
 63e:	00 0f       	add	r16, r16
 640:	01 66       	ori	r16, 0x61	; 97
 642:	01 31       	cpi	r16, 0x11	; 17
 644:	00 10       	cpse	r0, r0
 646:	00 00       	nop
 648:	00 00       	nop
 64a:	01 f8       	bld	r0, 1
 64c:	01 00       	.word	0x0001	; ????
 64e:	00 0f       	add	r16, r16
 650:	01 68       	ori	r16, 0x81	; 129
 652:	03 f3       	brvs	.-64     	; 0x614 <__data_load_end+0x2e8>
 654:	01 68       	ori	r16, 0x81	; 129
 656:	00 00       	nop
 658:	11 41       	sbci	r17, 0x11	; 17
 65a:	30 00       	.word	0x0030	; ????
 65c:	03 2a       	or	r0, r19
 65e:	8a 01       	movw	r16, r20
 660:	00 00       	nop
 662:	06 12       	cpse	r0, r22
 664:	2c 00       	.word	0x002c	; ????
 666:	00 00       	nop
 668:	11 41       	sbci	r17, 0x11	; 17
 66a:	31 00       	.word	0x0031	; ????
 66c:	03 2b       	or	r16, r19
 66e:	8a 01       	movw	r16, r20
 670:	00 00       	nop
 672:	07 11       	cpse	r16, r7
 674:	41 32       	cpi	r20, 0x21	; 33
 676:	00 03       	mulsu	r16, r16
 678:	2c 8a       	std	Y+20, r2	; 0x14
 67a:	01 00       	.word	0x0001	; ????
 67c:	00 08       	sbc	r0, r0
 67e:	11 41       	sbci	r17, 0x11	; 17
 680:	33 00       	.word	0x0033	; ????
 682:	03 2d       	mov	r16, r3
 684:	8a 01       	movw	r16, r20
 686:	00 00       	nop
 688:	09 13       	cpse	r16, r25
 68a:	2c 00       	.word	0x002c	; ????
 68c:	00 00       	nop
 68e:	bb 01       	movw	r22, r22
 690:	00 00       	nop
 692:	14 00       	.word	0x0014	; ????
 694:	15 19       	sub	r17, r5
 696:	03 00       	.word	0x0003	; ????
 698:	00 04       	cpc	r0, r0
 69a:	a2 c8       	rjmp	.-3772   	; 0xfffff7e0 <__eeprom_end+0xff7ef7e0>
 69c:	01 00       	.word	0x0001	; ????
 69e:	00 01       	movw	r0, r0
 6a0:	01 12       	cpse	r0, r17
 6a2:	b0 01       	movw	r22, r0
 6a4:	00 00       	nop
 6a6:	16 fb       	bst	r17, 6
 6a8:	02 00       	.word	0x0002	; ????
 6aa:	00 01       	movw	r0, r0
 6ac:	1e 2c       	mov	r1, r14
 6ae:	00 00       	nop
 6b0:	00 01       	movw	r0, r0
 6b2:	05 03       	mulsu	r16, r21
 6b4:	70 00       	.word	0x0070	; ????
 6b6:	80 00       	.word	0x0080	; ????
 6b8:	17 01       	movw	r2, r14
 6ba:	cc 00       	.word	0x00cc	; ????
 6bc:	00 00       	nop
 6be:	04 7d       	andi	r16, 0xD4	; 212
 6c0:	01 01       	movw	r0, r2
 6c2:	f8 01       	movw	r30, r16
 6c4:	00 00       	nop
 6c6:	18 2c       	mov	r1, r8
 6c8:	00 00       	nop
 6ca:	00 18       	sub	r0, r0
 6cc:	2c 00       	.word	0x002c	; ????
 6ce:	00 00       	nop
 6d0:	00 19       	sub	r16, r0
 6d2:	01 0c       	add	r0, r1
 6d4:	03 00       	.word	0x0003	; ????
 6d6:	00 04       	cpc	r0, r0
 6d8:	7e 01       	movw	r14, r28
 6da:	01 18       	sub	r0, r1
 6dc:	2c 00       	.word	0x002c	; ????
 6de:	00 00       	nop
 6e0:	18 2c       	mov	r1, r8
 6e2:	00 00       	nop
 6e4:	00 00       	nop
 6e6:	00 90 05 00 	lds	r0, 0x0005
 6ea:	00 02       	muls	r16, r16
 6ec:	00 d7       	rcall	.+3584   	; 0x14ee <__data_load_end+0x11c2>
 6ee:	03 00       	.word	0x0003	; ????
 6f0:	00 04       	cpc	r0, r0
 6f2:	01 18       	sub	r0, r1
 6f4:	02 00       	.word	0x0002	; ????
 6f6:	00 01       	movw	r0, r0
 6f8:	f8 03       	fmulsu	r23, r16
 6fa:	00 00       	nop
 6fc:	90 00       	.word	0x0090	; ????
	...
 706:	00 00       	nop
 708:	55 05       	cpc	r21, r5
 70a:	00 00       	nop
 70c:	02 01       	movw	r0, r4
 70e:	06 d6       	rcall	.+3084   	; 0x131c <__data_load_end+0xff0>
 710:	00 00       	nop
 712:	00 03       	mulsu	r16, r16
 714:	07 01       	movw	r0, r14
 716:	00 00       	nop
 718:	03 7a       	andi	r16, 0xA3	; 163
 71a:	37 00       	.word	0x0037	; ????
 71c:	00 00       	nop
 71e:	02 01       	movw	r0, r4
 720:	08 d4       	rcall	.+2064   	; 0xf32 <__data_load_end+0xc06>
 722:	00 00       	nop
 724:	00 04       	cpc	r0, r0
 726:	02 05       	cpc	r16, r2
 728:	69 6e       	ori	r22, 0xE9	; 233
 72a:	74 00       	.word	0x0074	; ????
 72c:	03 1d       	adc	r16, r3
 72e:	01 00       	.word	0x0001	; ????
 730:	00 03       	mulsu	r16, r16
 732:	7c 50       	subi	r23, 0x0C	; 12
 734:	00 00       	nop
 736:	00 02       	muls	r16, r16
 738:	02 07       	cpc	r16, r18
 73a:	fa 00       	.word	0x00fa	; ????
 73c:	00 00       	nop
 73e:	02 04       	cpc	r0, r2
 740:	05 14       	cp	r0, r5
 742:	01 00       	.word	0x0001	; ????
 744:	00 02       	muls	r16, r16
 746:	04 07       	cpc	r16, r20
 748:	f5 00       	.word	0x00f5	; ????
 74a:	00 00       	nop
 74c:	02 08       	sbc	r0, r2
 74e:	05 0f       	add	r16, r21
 750:	01 00       	.word	0x0001	; ????
 752:	00 02       	muls	r16, r16
 754:	08 07       	cpc	r16, r24
 756:	f0 00       	.word	0x00f0	; ????
 758:	00 00       	nop
 75a:	02 01       	movw	r0, r4
 75c:	06 dd       	rcall	.-1524   	; 0x16a <__vector_10+0x6c>
 75e:	00 00       	nop
 760:	00 02       	muls	r16, r16
 762:	01 02       	muls	r16, r17
 764:	d7 02       	muls	r29, r23
 766:	00 00       	nop
 768:	05 bd       	out	0x25, r16	; 37
 76a:	03 00       	.word	0x0003	; ????
 76c:	00 01       	movw	r0, r0
 76e:	4d 01       	movw	r8, r26
 770:	01 9a       	sbi	0x00, 1	; 0
 772:	00 00       	nop
 774:	00 06       	cpc	r0, r16
 776:	b7 03       	fmuls	r19, r23
 778:	00 00       	nop
 77a:	01 4d       	sbci	r16, 0xD1	; 209
 77c:	2c 00       	.word	0x002c	; ????
 77e:	00 00       	nop
 780:	00 07       	cpc	r16, r16
 782:	81 00       	.word	0x0081	; ????
	...
 78c:	00 00       	nop
 78e:	03 92       	.word	0x9203	; ????
 790:	20 02       	muls	r18, r16
 792:	01 cd       	rjmp	.-1534   	; 0x196 <__vector_5>
 794:	00 00       	nop
 796:	00 08       	sbc	r0, r0
 798:	8e 00       	.word	0x008e	; ????
 79a:	00 00       	nop
 79c:	4f 04       	cpc	r4, r15
 79e:	00 00       	nop
 7a0:	09 00       	.word	0x0009	; ????
 7a2:	00 00       	nop
 7a4:	00 00       	nop
 7a6:	00 00       	nop
 7a8:	00 08       	sbc	r0, r0
 7aa:	8e 00       	.word	0x008e	; ????
 7ac:	00 00       	nop
 7ae:	a2 04       	cpc	r10, r2
 7b0:	00 00       	nop
 7b2:	00 00       	nop
 7b4:	0a 01       	movw	r0, r20
 7b6:	ec 03       	fmulsu	r22, r20
 7b8:	00 00       	nop
 7ba:	02 3a       	cpi	r16, 0xA2	; 162
 7bc:	01 9a       	sbi	0x00, 1	; 0
 7be:	02 00       	.word	0x0002	; ????
 7c0:	00 a2       	std	Z+32, r0	; 0x20
 7c2:	02 00       	.word	0x0002	; ????
 7c4:	00 03       	mulsu	r16, r16
 7c6:	92 20       	and	r9, r2
 7c8:	02 01       	movw	r0, r4
 7ca:	0b 01       	movw	r0, r22
 7cc:	cc 00       	.word	0x00cc	; ????
 7ce:	00 00       	nop
 7d0:	01 1f       	adc	r16, r17
 7d2:	01 a2       	std	Z+33, r0	; 0x21
 7d4:	02 00       	.word	0x0002	; ????
 7d6:	00 14       	cp	r0, r0
 7d8:	03 00       	.word	0x0003	; ????
 7da:	00 b6       	in	r0, 0x30	; 48
 7dc:	04 00       	.word	0x0004	; ????
 7de:	00 01       	movw	r0, r0
 7e0:	55 02       	muls	r21, r21
 7e2:	00 00       	nop
 7e4:	0c 70       	andi	r16, 0x0C	; 12
 7e6:	69 6e       	ori	r22, 0xE9	; 233
 7e8:	00 01       	movw	r0, r0
 7ea:	1f 2c       	mov	r1, r15
 7ec:	00 00       	nop
 7ee:	00 e5       	ldi	r16, 0x50	; 80
 7f0:	04 00       	.word	0x0004	; ????
 7f2:	00 0d       	add	r16, r0
 7f4:	47 03       	mulsu	r20, r23
 7f6:	00 00       	nop
 7f8:	01 1f       	adc	r16, r17
 7fa:	2c 00       	.word	0x002c	; ????
 7fc:	00 00       	nop
 7fe:	01 66       	ori	r16, 0x61	; 97
 800:	0e 62       	ori	r16, 0x2E	; 46
 802:	69 74       	andi	r22, 0x49	; 73
 804:	00 01       	movw	r0, r0
 806:	21 2c       	mov	r2, r1
 808:	00 00       	nop
 80a:	00 06       	cpc	r0, r16
 80c:	05 00       	.word	0x0005	; ????
 80e:	00 0f       	add	r16, r16
 810:	5b 04       	cpc	r5, r11
 812:	00 00       	nop
 814:	01 22       	and	r0, r17
 816:	2c 00       	.word	0x002c	; ????
 818:	00 00       	nop
 81a:	3d 05       	cpc	r19, r13
 81c:	00 00       	nop
 81e:	0e 72       	andi	r16, 0x2E	; 46
 820:	65 67       	ori	r22, 0x75	; 117
 822:	00 01       	movw	r0, r0
 824:	23 55       	subi	r18, 0x53	; 83
 826:	02 00       	.word	0x0002	; ????
 828:	00 50       	subi	r16, 0x00	; 0
 82a:	05 00       	.word	0x0005	; ????
 82c:	00 0e       	add	r0, r16
 82e:	6f 75       	andi	r22, 0x5F	; 95
 830:	74 00       	.word	0x0074	; ????
 832:	01 23       	and	r16, r17
 834:	55 02       	muls	r21, r21
 836:	00 00       	nop
 838:	68 05       	cpc	r22, r8
 83a:	00 00       	nop
 83c:	10 a6       	std	Z+40, r1	; 0x28
 83e:	02 00       	.word	0x0002	; ????
 840:	00 b0       	in	r0, 0x00	; 0
 842:	02 00       	.word	0x0002	; ????
 844:	00 81       	ld	r16, Z
 846:	01 00       	.word	0x0001	; ????
 848:	00 0f       	add	r16, r16
 84a:	dd 02       	muls	r29, r29
 84c:	00 00       	nop
 84e:	01 21       	and	r16, r1
 850:	45 00       	.word	0x0045	; ????
 852:	00 00       	nop
 854:	80 05       	cpc	r24, r0
 856:	00 00       	nop
 858:	0f 3e       	cpi	r16, 0xEF	; 239
 85a:	03 00       	.word	0x0003	; ????
 85c:	00 01       	movw	r0, r0
 85e:	21 2c       	mov	r2, r1
 860:	00 00       	nop
 862:	00 06       	cpc	r0, r16
 864:	05 00       	.word	0x0005	; ????
 866:	00 00       	nop
 868:	10 b0       	in	r1, 0x00	; 0
 86a:	02 00       	.word	0x0002	; ????
 86c:	00 b8       	out	0x00, r0	; 0
 86e:	02 00       	.word	0x0002	; ????
 870:	00 ad       	ldd	r16, Z+56	; 0x38
 872:	01 00       	.word	0x0001	; ????
 874:	00 0f       	add	r16, r16
 876:	dd 02       	muls	r29, r29
 878:	00 00       	nop
 87a:	01 22       	and	r0, r17
 87c:	45 00       	.word	0x0045	; ????
 87e:	00 00       	nop
 880:	d7 05       	cpc	r29, r7
 882:	00 00       	nop
 884:	0f 3e       	cpi	r16, 0xEF	; 239
 886:	03 00       	.word	0x0003	; ????
 888:	00 01       	movw	r0, r0
 88a:	22 2c       	mov	r2, r2
 88c:	00 00       	nop
 88e:	00 3d       	cpi	r16, 0xD0	; 208
 890:	05 00       	.word	0x0005	; ????
 892:	00 00       	nop
 894:	10 bc       	out	0x20, r1	; 32
 896:	02 00       	.word	0x0002	; ????
 898:	00 cc       	rjmp	.-2048   	; 0x9a <setup+0x3a>
 89a:	02 00       	.word	0x0002	; ????
 89c:	00 d9       	rcall	.-3584   	; 0xfffffa9e <__eeprom_end+0xff7efa9e>
 89e:	01 00       	.word	0x0001	; ????
 8a0:	00 0f       	add	r16, r16
 8a2:	dd 02       	muls	r29, r29
 8a4:	00 00       	nop
 8a6:	01 28       	or	r0, r1
 8a8:	45 00       	.word	0x0045	; ????
 8aa:	00 00       	nop
 8ac:	02 06       	cpc	r0, r18
 8ae:	00 00       	nop
 8b0:	0f 3e       	cpi	r16, 0xEF	; 239
 8b2:	03 00       	.word	0x0003	; ????
 8b4:	00 01       	movw	r0, r0
 8b6:	28 45       	sbci	r18, 0x58	; 88
 8b8:	00 00       	nop
 8ba:	00 50       	subi	r16, 0x00	; 0
 8bc:	05 00       	.word	0x0005	; ????
 8be:	00 00       	nop
 8c0:	10 cc       	rjmp	.-2016   	; 0xe2 <loop+0x18>
 8c2:	02 00       	.word	0x0002	; ????
 8c4:	00 d6       	rcall	.+3072   	; 0x14c6 <__data_load_end+0x119a>
 8c6:	02 00       	.word	0x0002	; ????
 8c8:	00 05       	cpc	r16, r0
 8ca:	02 00       	.word	0x0002	; ????
 8cc:	00 0f       	add	r16, r16
 8ce:	dd 02       	muls	r29, r29
 8d0:	00 00       	nop
 8d2:	01 29       	or	r16, r1
 8d4:	45 00       	.word	0x0045	; ????
 8d6:	00 00       	nop
 8d8:	1a 06       	cpc	r1, r26
 8da:	00 00       	nop
 8dc:	0f 3e       	cpi	r16, 0xEF	; 239
 8de:	03 00       	.word	0x0003	; ????
 8e0:	00 01       	movw	r0, r0
 8e2:	29 45       	sbci	r18, 0x59	; 89
 8e4:	00 00       	nop
 8e6:	00 68       	ori	r16, 0x80	; 128
 8e8:	05 00       	.word	0x0005	; ????
 8ea:	00 00       	nop
 8ec:	11 78       	andi	r17, 0x81	; 129
 8ee:	00 00       	nop
 8f0:	00 1e       	adc	r0, r16
 8f2:	02 00       	.word	0x0002	; ????
 8f4:	00 0f       	add	r16, r16
 8f6:	10 02       	muls	r17, r16
 8f8:	00 00       	nop
 8fa:	01 2c       	mov	r0, r1
 8fc:	2c 00       	.word	0x002c	; ????
 8fe:	00 00       	nop
 900:	32 06       	cpc	r3, r18
 902:	00 00       	nop
 904:	00 10       	cpse	r0, r0
 906:	f0 02       	muls	r31, r16
 908:	00 00       	nop
 90a:	04 03       	mulsu	r16, r20
 90c:	00 00       	nop
 90e:	3b 02       	muls	r19, r27
 910:	00 00       	nop
 912:	0f 10       	cpse	r0, r15
 914:	02 00       	.word	0x0002	; ????
 916:	00 01       	movw	r0, r0
 918:	32 2c       	mov	r3, r2
 91a:	00 00       	nop
 91c:	00 45       	sbci	r16, 0x50	; 80
 91e:	06 00       	.word	0x0006	; ????
 920:	00 00       	nop
 922:	09 04       	cpc	r0, r9
 924:	03 00       	.word	0x0003	; ????
 926:	00 0e       	add	r0, r16
 928:	03 00       	.word	0x0003	; ????
 92a:	00 0f       	add	r16, r16
 92c:	10 02       	muls	r17, r16
 92e:	00 00       	nop
 930:	01 38       	cpi	r16, 0x81	; 129
 932:	2c 00       	.word	0x002c	; ????
 934:	00 00       	nop
 936:	58 06       	cpc	r5, r24
 938:	00 00       	nop
 93a:	00 00       	nop
 93c:	12 02       	muls	r17, r18
 93e:	5b 02       	muls	r21, r27
 940:	00 00       	nop
 942:	13 2c       	mov	r1, r3
 944:	00 00       	nop
 946:	00 0b       	sbc	r16, r16
 948:	01 0c       	add	r0, r1
 94a:	03 00       	.word	0x0003	; ????
 94c:	00 01       	movw	r0, r0
 94e:	8c 01       	movw	r16, r24
	...
 958:	6b 06       	cpc	r6, r27
 95a:	00 00       	nop
 95c:	01 9d       	mul	r16, r1
 95e:	03 00       	.word	0x0003	; ????
 960:	00 0c       	add	r0, r0
 962:	70 69       	ori	r23, 0x90	; 144
 964:	6e 00       	.word	0x006e	; ????
 966:	01 8c       	ldd	r0, Z+25	; 0x19
 968:	2c 00       	.word	0x002c	; ????
 96a:	00 00       	nop
 96c:	cd 06       	cpc	r12, r29
 96e:	00 00       	nop
 970:	0c 76       	andi	r16, 0x6C	; 108
 972:	61 6c       	ori	r22, 0xC1	; 193
 974:	00 01       	movw	r0, r0
 976:	8c 2c       	mov	r8, r12
 978:	00 00       	nop
 97a:	00 f9       	bld	r16, 0
 97c:	06 00       	.word	0x0006	; ????
 97e:	00 0f       	add	r16, r16
 980:	b7 03       	fmuls	r19, r23
 982:	00 00       	nop
 984:	01 8e       	std	Z+25, r0	; 0x19
 986:	2c 00       	.word	0x002c	; ????
 988:	00 00       	nop
 98a:	1a 07       	cpc	r17, r26
 98c:	00 00       	nop
 98e:	0e 62       	ori	r16, 0x2E	; 46
 990:	69 74       	andi	r22, 0x49	; 73
 992:	00 01       	movw	r0, r0
 994:	8f 2c       	mov	r8, r15
 996:	00 00       	nop
 998:	00 2d       	mov	r16, r0
 99a:	07 00       	.word	0x0007	; ????
 99c:	00 0f       	add	r16, r16
 99e:	5b 04       	cpc	r5, r11
 9a0:	00 00       	nop
 9a2:	01 90       	ld	r0, Z+
 9a4:	2c 00       	.word	0x002c	; ????
 9a6:	00 00       	nop
 9a8:	59 07       	cpc	r21, r25
 9aa:	00 00       	nop
 9ac:	0e 6f       	ori	r16, 0xFE	; 254
 9ae:	75 74       	andi	r23, 0x45	; 69
 9b0:	00 01       	movw	r0, r0
 9b2:	91 55       	subi	r25, 0x51	; 81
 9b4:	02 00       	.word	0x0002	; ????
 9b6:	00 6c       	ori	r16, 0xC0	; 192
 9b8:	07 00       	.word	0x0007	; ????
 9ba:	00 0f       	add	r16, r16
 9bc:	10 02       	muls	r17, r16
 9be:	00 00       	nop
 9c0:	01 9b       	sbis	0x00, 1	; 0
 9c2:	2c 00       	.word	0x002c	; ????
 9c4:	00 00       	nop
 9c6:	84 07       	cpc	r24, r20
 9c8:	00 00       	nop
 9ca:	10 00       	.word	0x0010	; ????
 9cc:	00 00       	nop
 9ce:	00 00       	nop
 9d0:	00 00       	nop
 9d2:	00 0f       	add	r16, r16
 9d4:	03 00       	.word	0x0003	; ????
 9d6:	00 0f       	add	r16, r16
 9d8:	dd 02       	muls	r29, r29
 9da:	00 00       	nop
 9dc:	01 8e       	std	Z+25, r0	; 0x19
 9de:	45 00       	.word	0x0045	; ????
 9e0:	00 00       	nop
 9e2:	97 07       	cpc	r25, r23
 9e4:	00 00       	nop
 9e6:	0f 3e       	cpi	r16, 0xEF	; 239
 9e8:	03 00       	.word	0x0003	; ????
 9ea:	00 01       	movw	r0, r0
 9ec:	8e 2c       	mov	r8, r14
 9ee:	00 00       	nop
 9f0:	00 1a       	sub	r0, r16
 9f2:	07 00       	.word	0x0007	; ????
 9f4:	00 00       	nop
 9f6:	10 00       	.word	0x0010	; ????
 9f8:	00 00       	nop
 9fa:	00 00       	nop
 9fc:	00 00       	nop
 9fe:	00 3b       	cpi	r16, 0xB0	; 176
 a00:	03 00       	.word	0x0003	; ????
 a02:	00 0f       	add	r16, r16
 a04:	dd 02       	muls	r29, r29
 a06:	00 00       	nop
 a08:	01 8f       	std	Z+25, r16	; 0x19
 a0a:	45 00       	.word	0x0045	; ????
 a0c:	00 00       	nop
 a0e:	d5 07       	cpc	r29, r21
 a10:	00 00       	nop
 a12:	0f 3e       	cpi	r16, 0xEF	; 239
 a14:	03 00       	.word	0x0003	; ????
 a16:	00 01       	movw	r0, r0
 a18:	8f 2c       	mov	r8, r15
 a1a:	00 00       	nop
 a1c:	00 2d       	mov	r16, r0
 a1e:	07 00       	.word	0x0007	; ????
 a20:	00 00       	nop
 a22:	10 00       	.word	0x0010	; ????
 a24:	00 00       	nop
 a26:	00 00       	nop
 a28:	00 00       	nop
 a2a:	00 67       	ori	r16, 0x70	; 112
 a2c:	03 00       	.word	0x0003	; ????
 a2e:	00 0f       	add	r16, r16
 a30:	dd 02       	muls	r29, r29
 a32:	00 00       	nop
 a34:	01 90       	ld	r0, Z+
 a36:	45 00       	.word	0x0045	; ????
 a38:	00 00       	nop
 a3a:	13 08       	sbc	r1, r3
 a3c:	00 00       	nop
 a3e:	0f 3e       	cpi	r16, 0xEF	; 239
 a40:	03 00       	.word	0x0003	; ????
 a42:	00 01       	movw	r0, r0
 a44:	90 2c       	mov	r9, r0
 a46:	00 00       	nop
 a48:	00 59       	subi	r16, 0x90	; 144
 a4a:	07 00       	.word	0x0007	; ????
 a4c:	00 00       	nop
 a4e:	10 00       	.word	0x0010	; ????
 a50:	00 00       	nop
 a52:	00 00       	nop
 a54:	00 00       	nop
 a56:	00 93 03 00 	sts	0x0003, r16
 a5a:	00 0f       	add	r16, r16
 a5c:	dd 02       	muls	r29, r29
 a5e:	00 00       	nop
 a60:	01 99       	sbic	0x00, 1	; 0
 a62:	45 00       	.word	0x0045	; ????
 a64:	00 00       	nop
 a66:	3e 08       	sbc	r3, r14
 a68:	00 00       	nop
 a6a:	0f 3e       	cpi	r16, 0xEF	; 239
 a6c:	03 00       	.word	0x0003	; ????
 a6e:	00 01       	movw	r0, r0
 a70:	99 45       	sbci	r25, 0x59	; 89
 a72:	00 00       	nop
 a74:	00 6c       	ori	r16, 0xC0	; 192
 a76:	07 00       	.word	0x0007	; ????
 a78:	00 00       	nop
 a7a:	14 00       	.word	0x0014	; ????
 a7c:	00 00       	nop
 a7e:	00 81       	ld	r16, Z
 a80:	00 00       	nop
 a82:	00 00       	nop
 a84:	15 01       	movw	r2, r10
 a86:	a6 04       	cpc	r10, r6
 a88:	00 00       	nop
 a8a:	01 a7       	std	Z+41, r16	; 0x29
 a8c:	01 3e       	cpi	r16, 0xE1	; 225
	...
 a96:	00 00       	nop
 a98:	00 56       	subi	r16, 0x60	; 96
 a9a:	08 00       	.word	0x0008	; ????
 a9c:	00 01       	movw	r0, r0
 a9e:	b1 04       	cpc	r11, r1
 aa0:	00 00       	nop
 aa2:	0c 70       	andi	r16, 0x0C	; 12
 aa4:	69 6e       	ori	r22, 0xE9	; 233
 aa6:	00 01       	movw	r0, r0
 aa8:	a7 2c       	mov	r10, r7
 aaa:	00 00       	nop
 aac:	00 85       	ldd	r16, Z+8	; 0x08
 aae:	08 00       	.word	0x0008	; ????
 ab0:	00 0f       	add	r16, r16
 ab2:	b7 03       	fmuls	r19, r23
 ab4:	00 00       	nop
 ab6:	01 a9       	ldd	r16, Z+49	; 0x31
 ab8:	2c 00       	.word	0x002c	; ????
 aba:	00 00       	nop
 abc:	ca 08       	sbc	r12, r10
 abe:	00 00       	nop
 ac0:	0e 62       	ori	r16, 0x2E	; 46
 ac2:	69 74       	andi	r22, 0x49	; 73
 ac4:	00 01       	movw	r0, r0
 ac6:	aa 2c       	mov	r10, r10
 ac8:	00 00       	nop
 aca:	00 e8       	ldi	r16, 0x80	; 128
 acc:	08 00       	.word	0x0008	; ????
 ace:	00 0f       	add	r16, r16
 ad0:	5b 04       	cpc	r5, r11
 ad2:	00 00       	nop
 ad4:	01 ab       	std	Z+49, r16	; 0x31
 ad6:	2c 00       	.word	0x002c	; ????
 ad8:	00 00       	nop
 ada:	fb 08       	sbc	r15, r11
 adc:	00 00       	nop
 ade:	10 00       	.word	0x0010	; ????
 ae0:	00 00       	nop
 ae2:	00 00       	nop
 ae4:	00 00       	nop
 ae6:	00 23       	and	r16, r16
 ae8:	04 00       	.word	0x0004	; ????
 aea:	00 0f       	add	r16, r16
 aec:	dd 02       	muls	r29, r29
 aee:	00 00       	nop
 af0:	01 a9       	ldd	r16, Z+49	; 0x31
 af2:	45 00       	.word	0x0045	; ????
 af4:	00 00       	nop
 af6:	0e 09       	sbc	r16, r14
 af8:	00 00       	nop
 afa:	0f 3e       	cpi	r16, 0xEF	; 239
 afc:	03 00       	.word	0x0003	; ????
 afe:	00 01       	movw	r0, r0
 b00:	a9 2c       	mov	r10, r9
 b02:	00 00       	nop
 b04:	00 ca       	rjmp	.-3072   	; 0xffffff06 <__eeprom_end+0xff7eff06>
 b06:	08 00       	.word	0x0008	; ????
 b08:	00 00       	nop
 b0a:	10 00       	.word	0x0010	; ????
 b0c:	00 00       	nop
 b0e:	00 00       	nop
 b10:	00 00       	nop
 b12:	00 4f       	sbci	r16, 0xF0	; 240
 b14:	04 00       	.word	0x0004	; ????
 b16:	00 0f       	add	r16, r16
 b18:	dd 02       	muls	r29, r29
 b1a:	00 00       	nop
 b1c:	01 aa       	std	Z+49, r0	; 0x31
 b1e:	45 00       	.word	0x0045	; ????
 b20:	00 00       	nop
 b22:	5f 09       	sbc	r21, r15
 b24:	00 00       	nop
 b26:	0f 3e       	cpi	r16, 0xEF	; 239
 b28:	03 00       	.word	0x0003	; ????
 b2a:	00 01       	movw	r0, r0
 b2c:	aa 2c       	mov	r10, r10
 b2e:	00 00       	nop
 b30:	00 e8       	ldi	r16, 0x80	; 128
 b32:	08 00       	.word	0x0008	; ????
 b34:	00 00       	nop
 b36:	10 00       	.word	0x0010	; ????
 b38:	00 00       	nop
 b3a:	00 00       	nop
 b3c:	00 00       	nop
 b3e:	00 7b       	andi	r16, 0xB0	; 176
 b40:	04 00       	.word	0x0004	; ????
 b42:	00 0f       	add	r16, r16
 b44:	dd 02       	muls	r29, r29
 b46:	00 00       	nop
 b48:	01 ab       	std	Z+49, r16	; 0x31
 b4a:	45 00       	.word	0x0045	; ????
 b4c:	00 00       	nop
 b4e:	b0 09       	sbc	r27, r0
 b50:	00 00       	nop
 b52:	0f 3e       	cpi	r16, 0xEF	; 239
 b54:	03 00       	.word	0x0003	; ????
 b56:	00 01       	movw	r0, r0
 b58:	ab 2c       	mov	r10, r11
 b5a:	00 00       	nop
 b5c:	00 fb       	bst	r16, 0
 b5e:	08 00       	.word	0x0008	; ????
 b60:	00 00       	nop
 b62:	10 00       	.word	0x0010	; ????
 b64:	00 00       	nop
 b66:	00 00       	nop
 b68:	00 00       	nop
 b6a:	00 a7       	std	Z+40, r16	; 0x28
 b6c:	04 00       	.word	0x0004	; ????
 b6e:	00 0f       	add	r16, r16
 b70:	dd 02       	muls	r29, r29
 b72:	00 00       	nop
 b74:	01 b3       	in	r16, 0x11	; 17
 b76:	45 00       	.word	0x0045	; ????
 b78:	00 00       	nop
 b7a:	eb 09       	sbc	r30, r11
 b7c:	00 00       	nop
 b7e:	0f 3e       	cpi	r16, 0xEF	; 239
 b80:	03 00       	.word	0x0003	; ????
 b82:	00 01       	movw	r0, r0
 b84:	b3 45       	sbci	r27, 0x53	; 83
 b86:	00 00       	nop
 b88:	00 03       	mulsu	r16, r16
 b8a:	0a 00       	.word	0x000a	; ????
 b8c:	00 00       	nop
 b8e:	14 00       	.word	0x0014	; ????
 b90:	00 00       	nop
 b92:	00 81       	ld	r16, Z
 b94:	00 00       	nop
 b96:	00 00       	nop
 b98:	16 41       	sbci	r17, 0x16	; 22
 b9a:	30 00       	.word	0x0030	; ????
 b9c:	02 2a       	or	r0, r18
 b9e:	bc 04       	cpc	r11, r12
 ba0:	00 00       	nop
 ba2:	06 17       	cp	r16, r22
 ba4:	2c 00       	.word	0x002c	; ????
 ba6:	00 00       	nop
 ba8:	16 41       	sbci	r17, 0x16	; 22
 baa:	31 00       	.word	0x0031	; ????
 bac:	02 2b       	or	r16, r18
 bae:	bc 04       	cpc	r11, r12
 bb0:	00 00       	nop
 bb2:	07 16       	cp	r0, r23
 bb4:	41 32       	cpi	r20, 0x21	; 33
 bb6:	00 02       	muls	r16, r16
 bb8:	2c bc       	out	0x2c, r2	; 44
 bba:	04 00       	.word	0x0004	; ????
 bbc:	00 08       	sbc	r0, r0
 bbe:	16 41       	sbci	r17, 0x16	; 22
 bc0:	33 00       	.word	0x0033	; ????
 bc2:	02 2d       	mov	r16, r2
 bc4:	bc 04       	cpc	r11, r12
 bc6:	00 00       	nop
 bc8:	09 18       	sub	r0, r9
 bca:	45 00       	.word	0x0045	; ????
 bcc:	00 00       	nop
 bce:	f2 04       	cpc	r15, r2
 bd0:	00 00       	nop
 bd2:	19 f2       	breq	.-122    	; 0xb5a <__data_load_end+0x82e>
 bd4:	04 00       	.word	0x0004	; ????
 bd6:	00 02       	muls	r16, r16
 bd8:	00 02       	muls	r16, r16
 bda:	02 07       	cpc	r16, r18
 bdc:	ae 03       	fmulsu	r18, r22
 bde:	00 00       	nop
 be0:	1a c8       	rjmp	.-4044   	; 0xfffffc16 <__eeprom_end+0xff7efc16>
 be2:	03 00       	.word	0x0003	; ????
 be4:	00 02       	muls	r16, r16
 be6:	42 0b       	sbc	r20, r18
 be8:	05 00       	.word	0x0005	; ????
 bea:	00 01       	movw	r0, r0
 bec:	05 03       	mulsu	r16, r21
 bee:	38 00       	.word	0x0038	; ????
 bf0:	00 00       	nop
 bf2:	17 e2       	ldi	r17, 0x27	; 39
 bf4:	04 00       	.word	0x0004	; ????
 bf6:	00 1a       	sub	r0, r16
 bf8:	78 04       	cpc	r7, r8
 bfa:	00 00       	nop
 bfc:	02 4e       	sbci	r16, 0xE2	; 226
 bfe:	22 05       	cpc	r18, r2
 c00:	00 00       	nop
 c02:	01 05       	cpc	r16, r1
 c04:	03 00       	.word	0x0003	; ????
 c06:	00 00       	nop
 c08:	00 17       	cp	r16, r16
 c0a:	e2 04       	cpc	r14, r2
 c0c:	00 00       	nop
 c0e:	1a d9       	rcall	.-3532   	; 0xfffffe44 <__eeprom_end+0xff7efe44>
 c10:	03 00       	.word	0x0003	; ????
 c12:	00 02       	muls	r16, r16
 c14:	48 39       	cpi	r20, 0x98	; 152
 c16:	05 00       	.word	0x0005	; ????
 c18:	00 01       	movw	r0, r0
 c1a:	05 03       	mulsu	r16, r21
 c1c:	32 00       	.word	0x0032	; ????
 c1e:	00 00       	nop
 c20:	17 e2       	ldi	r17, 0x27	; 39
 c22:	04 00       	.word	0x0004	; ????
 c24:	00 18       	sub	r0, r0
 c26:	2c 00       	.word	0x002c	; ????
 c28:	00 00       	nop
 c2a:	4e 05       	cpc	r20, r14
 c2c:	00 00       	nop
 c2e:	19 f2       	breq	.-122    	; 0xbb6 <__data_load_end+0x88a>
 c30:	04 00       	.word	0x0004	; ????
 c32:	00 09       	sbc	r16, r0
 c34:	00 1a       	sub	r0, r16
 c36:	60 04       	cpc	r6, r0
 c38:	00 00       	nop
 c3a:	02 54       	subi	r16, 0x42	; 66
 c3c:	60 05       	cpc	r22, r0
 c3e:	00 00       	nop
 c40:	01 05       	cpc	r16, r1
 c42:	03 28       	or	r0, r3
 c44:	00 00       	nop
 c46:	00 17       	cp	r16, r16
 c48:	3e 05       	cpc	r19, r14
 c4a:	00 00       	nop
 c4c:	1a 8a       	std	Y+18, r1	; 0x12
 c4e:	04 00       	.word	0x0004	; ????
 c50:	00 02       	muls	r16, r16
 c52:	62 77       	andi	r22, 0x72	; 114
 c54:	05 00       	.word	0x0005	; ????
 c56:	00 01       	movw	r0, r0
 c58:	05 03       	mulsu	r16, r21
 c5a:	1e 00       	.word	0x001e	; ????
 c5c:	00 00       	nop
 c5e:	17 3e       	cpi	r17, 0xE7	; 231
 c60:	05 00       	.word	0x0005	; ????
 c62:	00 1a       	sub	r0, r16
 c64:	19 03       	fmul	r17, r17
 c66:	00 00       	nop
 c68:	02 6f       	ori	r16, 0xF2	; 242
 c6a:	8e 05       	cpc	r24, r14
 c6c:	00 00       	nop
 c6e:	01 05       	cpc	r16, r1
 c70:	03 00       	.word	0x0003	; ????
 c72:	00 00       	nop
 c74:	00 17       	cp	r16, r16
 c76:	3e 05       	cpc	r19, r14
 c78:	00 00       	nop
 c7a:	00 76       	andi	r16, 0x60	; 96
 c7c:	01 00       	.word	0x0001	; ????
 c7e:	00 02       	muls	r16, r16
 c80:	00 42       	sbci	r16, 0x20	; 32
 c82:	05 00       	.word	0x0005	; ????
 c84:	00 04       	cpc	r0, r0
 c86:	01 44       	sbci	r16, 0x41	; 65
 c88:	01 00       	.word	0x0001	; ????
 c8a:	00 04       	cpc	r0, r0
 c8c:	e1 04       	cpc	r14, r1
 c8e:	00 00       	nop
 c90:	26 01       	movw	r4, r12
 c92:	00 00       	nop
 c94:	c0 00       	.word	0x00c0	; ????
	...
 c9e:	00 00       	nop
 ca0:	24 07       	cpc	r18, r20
 ca2:	00 00       	nop
 ca4:	02 02       	muls	r16, r18
 ca6:	07 fa       	bst	r0, 7
 ca8:	00 00       	nop
 caa:	00 03       	mulsu	r16, r16
 cac:	02 05       	cpc	r16, r2
 cae:	69 6e       	ori	r22, 0xE9	; 233
 cb0:	74 00       	.word	0x0074	; ????
 cb2:	02 04       	cpc	r0, r2
 cb4:	05 14       	cp	r0, r5
 cb6:	01 00       	.word	0x0001	; ????
 cb8:	00 02       	muls	r16, r16
 cba:	01 06       	cpc	r0, r17
 cbc:	d6 00       	.word	0x00d6	; ????
 cbe:	00 00       	nop
 cc0:	04 07       	cpc	r16, r20
 cc2:	01 00       	.word	0x0001	; ????
 cc4:	00 04       	cpc	r0, r0
 cc6:	7a 50       	subi	r23, 0x0A	; 10
 cc8:	00 00       	nop
 cca:	00 02       	muls	r16, r16
 ccc:	01 08       	sbc	r0, r1
 cce:	d4 00       	.word	0x00d4	; ????
 cd0:	00 00       	nop
 cd2:	02 04       	cpc	r0, r2
 cd4:	07 f5       	brid	.+64     	; 0xd16 <__data_load_end+0x9ea>
 cd6:	00 00       	nop
 cd8:	00 02       	muls	r16, r16
 cda:	08 05       	cpc	r16, r8
 cdc:	0f 01       	movw	r0, r30
 cde:	00 00       	nop
 ce0:	02 08       	sbc	r0, r2
 ce2:	07 f0       	brie	.+0      	; 0xce4 <__data_load_end+0x9b8>
 ce4:	00 00       	nop
 ce6:	00 02       	muls	r16, r16
 ce8:	01 02       	muls	r16, r17
 cea:	75 00       	.word	0x0075	; ????
 cec:	00 00       	nop
 cee:	02 01       	movw	r0, r4
 cf0:	06 dd       	rcall	.-1524   	; 0x6fe <__data_load_end+0x3d2>
 cf2:	00 00       	nop
 cf4:	00 02       	muls	r16, r16
 cf6:	04 04       	cpc	r0, r4
 cf8:	96 00       	.word	0x0096	; ????
 cfa:	00 00       	nop
 cfc:	02 04       	cpc	r0, r2
 cfe:	04 e2       	ldi	r16, 0x24	; 36
 d00:	00 00       	nop
 d02:	00 02       	muls	r16, r16
 d04:	02 07       	cpc	r16, r18
 d06:	a7 00       	.word	0x00a7	; ????
 d08:	00 00       	nop
 d0a:	05 01       	movw	r0, r10
 d0c:	d5 04       	cpc	r13, r5
 d0e:	00 00       	nop
 d10:	01 17       	cp	r16, r17
 d12:	30 00       	.word	0x0030	; ????
	...
 d1c:	00 00       	nop
 d1e:	03 92       	.word	0x9203	; ????
 d20:	20 02       	muls	r18, r16
 d22:	01 b9       	out	0x01, r16	; 1
 d24:	00 00       	nop
 d26:	00 06       	cpc	r0, r16
 d28:	ba 00       	.word	0x00ba	; ????
 d2a:	00 00       	nop
 d2c:	06 68       	ori	r16, 0x86	; 134
 d2e:	93 01       	movw	r18, r6
 d30:	69 93       	st	Y+, r22
 d32:	01 00       	.word	0x0001	; ????
 d34:	07 08       	sbc	r0, r7
 d36:	02 b9       	out	0x02, r16	; 2
 d38:	00 00       	nop
 d3a:	00 09       	sbc	r16, r0
 d3c:	01 ec       	ldi	r16, 0xC1	; 193
 d3e:	03 00       	.word	0x0003	; ????
 d40:	00 01       	movw	r0, r0
 d42:	1c 00       	.word	0x001c	; ????
 d44:	00 00       	nop
 d46:	00 00       	nop
 d48:	00 00       	nop
 d4a:	00 03       	mulsu	r16, r16
 d4c:	92 20       	and	r9, r2
 d4e:	02 01       	movw	r0, r4
 d50:	05 01       	movw	r0, r10
 d52:	dc 04       	cpc	r13, r12
 d54:	00 00       	nop
 d56:	01 1e       	adc	r0, r17
 d58:	30 00       	.word	0x0030	; ????
 d5a:	00 00       	nop
 d5c:	14 03       	mulsu	r17, r20
 d5e:	00 00       	nop
 d60:	28 03       	fmul	r18, r16
 d62:	00 00       	nop
 d64:	03 92       	.word	0x9203	; ????
 d66:	20 02       	muls	r18, r16
 d68:	01 20       	and	r0, r1
 d6a:	01 00       	.word	0x0001	; ????
 d6c:	00 0a       	sbc	r0, r16
 d6e:	16 03       	mulsu	r17, r22
 d70:	00 00       	nop
 d72:	51 01       	movw	r10, r2
 d74:	00 00       	nop
 d76:	0a 18       	sub	r0, r10
 d78:	03 00       	.word	0x0003	; ????
 d7a:	00 c0       	rjmp	.+0      	; 0xd7c <__data_load_end+0xa50>
 d7c:	00 00       	nop
 d7e:	00 0a       	sbc	r0, r16
 d80:	1a 03       	fmul	r17, r18
 d82:	00 00       	nop
 d84:	5a 01       	movw	r10, r20
 d86:	00 00       	nop
 d88:	0a 20       	and	r0, r10
 d8a:	03 00       	.word	0x0003	; ????
 d8c:	00 63       	ori	r16, 0x30	; 48
 d8e:	01 00       	.word	0x0001	; ????
 d90:	00 0a       	sbc	r0, r16
 d92:	26 03       	mulsu	r18, r22
 d94:	00 00       	nop
 d96:	6c 01       	movw	r12, r24
 d98:	00 00       	nop
 d9a:	00 0b       	sbc	r16, r16
 d9c:	41 30       	cpi	r20, 0x01	; 1
 d9e:	00 02       	muls	r16, r16
 da0:	2a 2b       	or	r18, r26
 da2:	01 00       	.word	0x0001	; ????
 da4:	00 06       	cpc	r0, r16
 da6:	0c 45       	sbci	r16, 0x5C	; 92
 da8:	00 00       	nop
 daa:	00 0b       	sbc	r16, r16
 dac:	41 31       	cpi	r20, 0x11	; 17
 dae:	00 02       	muls	r16, r16
 db0:	2b 2b       	or	r18, r27
 db2:	01 00       	.word	0x0001	; ????
 db4:	00 07       	cpc	r16, r16
 db6:	0b 41       	sbci	r16, 0x1B	; 27
 db8:	32 00       	.word	0x0032	; ????
 dba:	02 2c       	mov	r0, r2
 dbc:	2b 01       	movw	r4, r22
 dbe:	00 00       	nop
 dc0:	08 0b       	sbc	r16, r24
 dc2:	41 33       	cpi	r20, 0x31	; 49
 dc4:	00 02       	muls	r16, r16
 dc6:	2d 2b       	or	r18, r29
 dc8:	01 00       	.word	0x0001	; ????
 dca:	00 09       	sbc	r16, r0
 dcc:	0d 01       	movw	r0, r26
 dce:	f0 01       	movw	r30, r0
 dd0:	00 00       	nop
 dd2:	03 78       	andi	r16, 0x83	; 131
 dd4:	01 0d       	add	r16, r1
 dd6:	01 13       	cpse	r16, r17
 dd8:	00 00       	nop
 dda:	00 03       	mulsu	r16, r16
 ddc:	91 01       	movw	r18, r2
 dde:	0d 01       	movw	r0, r26
 de0:	91 00       	.word	0x0091	; ????
 de2:	00 00       	nop
 de4:	03 92       	.word	0x9203	; ????
 de6:	01 0e       	add	r0, r17
 de8:	01 c6       	rjmp	.+3074   	; 0x19ec <__data_load_end+0x16c0>
 dea:	04 00       	.word	0x0004	; ????
 dec:	00 05       	cpc	r16, r0
 dee:	9a b2       	in	r9, 0x1a	; 26
 df0:	04 00       	.word	0x0004	; ????
 df2:	00 01       	movw	r0, r0
 df4:	00 36       	cpi	r16, 0x60	; 96
 df6:	00 00       	nop
 df8:	00 02       	muls	r16, r16
 dfa:	00 04       	cpc	r0, r0
 dfc:	06 00       	.word	0x0006	; ????
 dfe:	00 04       	cpc	r0, r0
 e00:	01 18       	sub	r0, r1
 e02:	02 00       	.word	0x0002	; ????
 e04:	00 01       	movw	r0, r0
 e06:	44 05       	cpc	r20, r4
 e08:	00 00       	nop
 e0a:	e0 00       	.word	0x00e0	; ????
	...
 e14:	00 00       	nop
 e16:	b7 08       	sbc	r11, r7
 e18:	00 00       	nop
 e1a:	02 3c       	cpi	r16, 0xC2	; 194
 e1c:	05 00       	.word	0x0005	; ????
 e1e:	00 01       	movw	r0, r0
 e20:	1c 00       	.word	0x001c	; ????
 e22:	00 00       	nop
 e24:	00 00       	nop
 e26:	00 00       	nop
 e28:	00 03       	mulsu	r16, r16
 e2a:	92 20       	and	r9, r2
 e2c:	02 01       	movw	r0, r4
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11       	cpse	r16, r1
   2:	01 25       	eor	r16, r1
   4:	0e 13       	cpse	r16, r30
   6:	0b 03       	fmul	r16, r19
   8:	0e 1b       	sub	r16, r30
   a:	0e 55       	subi	r16, 0x5E	; 94
   c:	06 11       	cpse	r16, r6
   e:	01 52       	subi	r16, 0x21	; 33
  10:	01 10       	cpse	r0, r1
  12:	06 00       	.word	0x0006	; ????
  14:	00 02       	muls	r16, r16
  16:	24 00       	.word	0x0024	; ????
  18:	0b 0b       	sbc	r16, r27
  1a:	3e 0b       	sbc	r19, r30
  1c:	03 0e       	add	r0, r19
  1e:	00 00       	nop
  20:	03 24       	eor	r0, r3
  22:	00 0b       	sbc	r16, r16
  24:	0b 3e       	cpi	r16, 0xEB	; 235
  26:	0b 03       	fmul	r16, r19
  28:	08 00       	.word	0x0008	; ????
  2a:	00 04       	cpc	r0, r0
  2c:	16 00       	.word	0x0016	; ????
  2e:	03 0e       	add	r0, r19
  30:	3a 0b       	sbc	r19, r26
  32:	3b 0b       	sbc	r19, r27
  34:	49 13       	cpse	r20, r25
  36:	00 00       	nop
  38:	05 2e       	mov	r0, r21
  3a:	01 3f       	cpi	r16, 0xF1	; 241
  3c:	0c 03       	fmul	r16, r20
  3e:	0e 3a       	cpi	r16, 0xAE	; 174
  40:	0b 3b       	cpi	r16, 0xBB	; 187
  42:	0b 11       	cpse	r16, r11
  44:	01 12       	cpse	r0, r17
  46:	01 40       	sbci	r16, 0x01	; 1
  48:	06 97       	sbiw	r24, 0x06	; 6
  4a:	42 0c       	add	r4, r2
  4c:	01 13       	cpse	r16, r17
  4e:	00 00       	nop
  50:	06 89       	ldd	r16, Z+22	; 0x16
  52:	82 01       	movw	r16, r4
  54:	01 11       	cpse	r16, r1
  56:	01 31       	cpi	r16, 0x11	; 17
  58:	13 01       	movw	r2, r6
  5a:	13 00       	.word	0x0013	; ????
  5c:	00 07       	cpc	r16, r16
  5e:	8a 82       	std	Y+2, r8	; 0x02
  60:	01 00       	.word	0x0001	; ????
  62:	02 0a       	sbc	r0, r18
  64:	91 42       	sbci	r25, 0x21	; 33
  66:	0a 00       	.word	0x000a	; ????
  68:	00 08       	sbc	r0, r0
  6a:	89 82       	std	Y+1, r8	; 0x01
  6c:	01 01       	movw	r0, r2
  6e:	11 01       	movw	r2, r2
  70:	95 42       	sbci	r25, 0x25	; 37
  72:	0c 31       	cpi	r16, 0x1C	; 28
  74:	13 00       	.word	0x0013	; ????
  76:	00 09       	sbc	r16, r0
  78:	2e 01       	movw	r4, r28
  7a:	3f 0c       	add	r3, r15
  7c:	03 0e       	add	r0, r19
  7e:	3a 0b       	sbc	r19, r26
  80:	3b 0b       	sbc	r19, r27
  82:	11 01       	movw	r2, r2
  84:	12 01       	movw	r2, r4
  86:	40 0a       	sbc	r4, r16
  88:	97 42       	sbci	r25, 0x27	; 39
  8a:	0c 01       	movw	r0, r24
  8c:	13 00       	.word	0x0013	; ????
  8e:	00 0a       	sbc	r0, r16
  90:	0b 01       	movw	r0, r22
  92:	11 01       	movw	r2, r2
  94:	12 01       	movw	r2, r4
  96:	00 00       	nop
  98:	0b 34       	cpi	r16, 0x4B	; 75
  9a:	00 03       	mulsu	r16, r16
  9c:	0e 3a       	cpi	r16, 0xAE	; 174
  9e:	0b 3b       	cpi	r16, 0xBB	; 187
  a0:	0b 49       	sbci	r16, 0x9B	; 155
  a2:	13 02       	muls	r17, r19
  a4:	0a 00       	.word	0x000a	; ????
  a6:	00 0c       	add	r0, r0
  a8:	34 00       	.word	0x0034	; ????
  aa:	03 0e       	add	r0, r19
  ac:	3a 0b       	sbc	r19, r26
  ae:	3b 0b       	sbc	r19, r27
  b0:	49 13       	cpse	r20, r25
  b2:	00 00       	nop
  b4:	0d 34       	cpi	r16, 0x4D	; 77
  b6:	00 03       	mulsu	r16, r16
  b8:	0e 3a       	cpi	r16, 0xAE	; 174
  ba:	0b 3b       	cpi	r16, 0xBB	; 187
  bc:	0b 49       	sbci	r16, 0x9B	; 155
  be:	13 02       	muls	r17, r19
  c0:	06 00       	.word	0x0006	; ????
  c2:	00 0e       	add	r0, r16
  c4:	89 82       	std	Y+1, r8	; 0x01
  c6:	01 00       	.word	0x0001	; ????
  c8:	11 01       	movw	r2, r2
  ca:	31 13       	cpse	r19, r17
  cc:	00 00       	nop
  ce:	0f 34       	cpi	r16, 0x4F	; 79
  d0:	00 03       	mulsu	r16, r16
  d2:	08 3a       	cpi	r16, 0xA8	; 168
  d4:	0b 3b       	cpi	r16, 0xBB	; 187
  d6:	0b 49       	sbci	r16, 0x9B	; 155
  d8:	13 02       	muls	r17, r19
  da:	06 00       	.word	0x0006	; ????
  dc:	00 10       	cpse	r0, r0
  de:	34 00       	.word	0x0034	; ????
  e0:	03 08       	sbc	r0, r3
  e2:	3a 0b       	sbc	r19, r26
  e4:	3b 0b       	sbc	r19, r27
  e6:	49 13       	cpse	r20, r25
  e8:	1c 0b       	sbc	r17, r28
  ea:	00 00       	nop
  ec:	11 26       	eor	r1, r17
  ee:	00 49       	sbci	r16, 0x90	; 144
  f0:	13 00       	.word	0x0013	; ????
  f2:	00 12       	cpse	r0, r16
  f4:	34 00       	.word	0x0034	; ????
  f6:	03 0e       	add	r0, r19
  f8:	3a 0b       	sbc	r19, r26
  fa:	3b 0b       	sbc	r19, r27
  fc:	49 13       	cpse	r20, r25
  fe:	3f 0c       	add	r3, r15
 100:	02 0a       	sbc	r0, r18
 102:	00 00       	nop
 104:	13 2e       	mov	r1, r19
 106:	01 3f       	cpi	r16, 0xF1	; 241
 108:	0c 03       	fmul	r16, r20
 10a:	0e 3a       	cpi	r16, 0xAE	; 174
 10c:	0b 3b       	cpi	r16, 0xBB	; 187
 10e:	0b 3c       	cpi	r16, 0xCB	; 203
 110:	0c 01       	movw	r0, r24
 112:	13 00       	.word	0x0013	; ????
 114:	00 14       	cp	r0, r0
 116:	05 00       	.word	0x0005	; ????
 118:	49 13       	cpse	r20, r25
 11a:	00 00       	nop
 11c:	15 2e       	mov	r1, r21
 11e:	01 3f       	cpi	r16, 0xF1	; 241
 120:	0c 03       	fmul	r16, r20
 122:	0e 3a       	cpi	r16, 0xAE	; 174
 124:	0b 3b       	cpi	r16, 0xBB	; 187
 126:	0b 49       	sbci	r16, 0x9B	; 155
 128:	13 3c       	cpi	r17, 0xC3	; 195
 12a:	0c 00       	.word	0x000c	; ????
 12c:	00 00       	nop
 12e:	01 11       	cpse	r16, r1
 130:	01 25       	eor	r16, r1
 132:	0e 13       	cpse	r16, r30
 134:	0b 03       	fmul	r16, r19
 136:	0e 55       	subi	r16, 0x5E	; 94
 138:	06 11       	cpse	r16, r6
 13a:	01 52       	subi	r16, 0x21	; 33
 13c:	01 10       	cpse	r0, r1
 13e:	06 00       	.word	0x0006	; ????
 140:	00 02       	muls	r16, r16
 142:	24 00       	.word	0x0024	; ????
 144:	0b 0b       	sbc	r16, r27
 146:	3e 0b       	sbc	r19, r30
 148:	03 0e       	add	r0, r19
 14a:	00 00       	nop
 14c:	03 16       	cp	r0, r19
 14e:	00 03       	mulsu	r16, r16
 150:	0e 3a       	cpi	r16, 0xAE	; 174
 152:	0b 3b       	cpi	r16, 0xBB	; 187
 154:	0b 49       	sbci	r16, 0x9B	; 155
 156:	13 00       	.word	0x0013	; ????
 158:	00 04       	cpc	r0, r0
 15a:	24 00       	.word	0x0024	; ????
 15c:	0b 0b       	sbc	r16, r27
 15e:	3e 0b       	sbc	r19, r30
 160:	03 08       	sbc	r0, r3
 162:	00 00       	nop
 164:	05 2e       	mov	r0, r21
 166:	01 3f       	cpi	r16, 0xF1	; 241
 168:	0c 03       	fmul	r16, r20
 16a:	0e 3a       	cpi	r16, 0xAE	; 174
 16c:	0b 3b       	cpi	r16, 0xBB	; 187
 16e:	0b 27       	eor	r16, r27
 170:	0c 11       	cpse	r16, r12
 172:	01 12       	cpse	r0, r17
 174:	01 40       	sbci	r16, 0x01	; 1
 176:	06 97       	sbiw	r24, 0x06	; 6
 178:	42 0c       	add	r4, r2
 17a:	01 13       	cpse	r16, r17
 17c:	00 00       	nop
 17e:	06 34       	cpi	r16, 0x46	; 70
 180:	00 03       	mulsu	r16, r16
 182:	08 3a       	cpi	r16, 0xA8	; 168
 184:	0b 3b       	cpi	r16, 0xBB	; 187
 186:	0b 49       	sbci	r16, 0x9B	; 155
 188:	13 02       	muls	r17, r19
 18a:	06 00       	.word	0x0006	; ????
 18c:	00 07       	cpc	r16, r16
 18e:	2e 01       	movw	r4, r28
 190:	3f 0c       	add	r3, r15
 192:	03 0e       	add	r0, r19
 194:	3a 0b       	sbc	r19, r26
 196:	3b 0b       	sbc	r19, r27
 198:	27 0c       	add	r2, r7
 19a:	49 13       	cpse	r20, r25
 19c:	11 01       	movw	r2, r2
 19e:	12 01       	movw	r2, r4
 1a0:	40 0a       	sbc	r4, r16
 1a2:	97 42       	sbci	r25, 0x27	; 39
 1a4:	0c 01       	movw	r0, r24
 1a6:	13 00       	.word	0x0013	; ????
 1a8:	00 08       	sbc	r0, r0
 1aa:	34 00       	.word	0x0034	; ????
 1ac:	03 08       	sbc	r0, r3
 1ae:	3a 0b       	sbc	r19, r26
 1b0:	3b 0b       	sbc	r19, r27
 1b2:	49 13       	cpse	r20, r25
 1b4:	02 0a       	sbc	r0, r18
 1b6:	00 00       	nop
 1b8:	09 34       	cpi	r16, 0x49	; 73
 1ba:	00 03       	mulsu	r16, r16
 1bc:	0e 3a       	cpi	r16, 0xAE	; 174
 1be:	0b 3b       	cpi	r16, 0xBB	; 187
 1c0:	0b 49       	sbci	r16, 0x9B	; 155
 1c2:	13 02       	muls	r17, r19
 1c4:	0a 00       	.word	0x000a	; ????
 1c6:	00 0a       	sbc	r0, r16
 1c8:	34 00       	.word	0x0034	; ????
 1ca:	03 0e       	add	r0, r19
 1cc:	3a 0b       	sbc	r19, r26
 1ce:	3b 0b       	sbc	r19, r27
 1d0:	49 13       	cpse	r20, r25
 1d2:	02 06       	cpc	r0, r18
 1d4:	00 00       	nop
 1d6:	0b 05       	cpc	r16, r11
 1d8:	00 03       	mulsu	r16, r16
 1da:	08 3a       	cpi	r16, 0xA8	; 168
 1dc:	0b 3b       	cpi	r16, 0xBB	; 187
 1de:	0b 49       	sbci	r16, 0x9B	; 155
 1e0:	13 02       	muls	r17, r19
 1e2:	06 00       	.word	0x0006	; ????
 1e4:	00 0c       	add	r0, r0
 1e6:	89 82       	std	Y+1, r8	; 0x01
 1e8:	01 00       	.word	0x0001	; ????
 1ea:	11 01       	movw	r2, r2
 1ec:	31 13       	cpse	r19, r17
 1ee:	00 00       	nop
 1f0:	0d 2e       	mov	r0, r29
 1f2:	01 3f       	cpi	r16, 0xF1	; 241
 1f4:	0c 03       	fmul	r16, r20
 1f6:	0e 3a       	cpi	r16, 0xAE	; 174
 1f8:	0b 3b       	cpi	r16, 0xBB	; 187
 1fa:	0b 27       	eor	r16, r27
 1fc:	0c 11       	cpse	r16, r12
 1fe:	01 12       	cpse	r0, r17
 200:	01 40       	sbci	r16, 0x01	; 1
 202:	0a 97       	sbiw	r24, 0x0a	; 10
 204:	42 0c       	add	r4, r2
 206:	01 13       	cpse	r16, r17
 208:	00 00       	nop
 20a:	0e 2e       	mov	r0, r30
 20c:	00 3f       	cpi	r16, 0xF0	; 240
 20e:	0c 03       	fmul	r16, r20
 210:	0e 3a       	cpi	r16, 0xAE	; 174
 212:	0b 3b       	cpi	r16, 0xBB	; 187
 214:	0b 27       	eor	r16, r27
 216:	0c 11       	cpse	r16, r12
 218:	01 12       	cpse	r0, r17
 21a:	01 40       	sbci	r16, 0x01	; 1
 21c:	0a 97       	sbiw	r24, 0x0a	; 10
 21e:	42 0c       	add	r4, r2
 220:	00 00       	nop
 222:	0f 34       	cpi	r16, 0x4F	; 79
 224:	00 03       	mulsu	r16, r16
 226:	08 3a       	cpi	r16, 0xA8	; 168
 228:	0b 3b       	cpi	r16, 0xBB	; 187
 22a:	0b 49       	sbci	r16, 0x9B	; 155
 22c:	13 1c       	adc	r1, r3
 22e:	0b 00       	.word	0x000b	; ????
 230:	00 10       	cpse	r0, r0
 232:	26 00       	.word	0x0026	; ????
 234:	49 13       	cpse	r20, r25
 236:	00 00       	nop
 238:	11 34       	cpi	r17, 0x41	; 65
 23a:	00 03       	mulsu	r16, r16
 23c:	0e 3a       	cpi	r16, 0xAE	; 174
 23e:	0b 3b       	cpi	r16, 0xBB	; 187
 240:	0b 49       	sbci	r16, 0x9B	; 155
 242:	13 3f       	cpi	r17, 0xF3	; 243
 244:	0c 02       	muls	r16, r28
 246:	0a 00       	.word	0x000a	; ????
 248:	00 12       	cpse	r0, r16
 24a:	35 00       	.word	0x0035	; ????
 24c:	49 13       	cpse	r20, r25
 24e:	00 00       	nop
 250:	13 2e       	mov	r1, r19
 252:	00 3f       	cpi	r16, 0xF0	; 240
 254:	0c 03       	fmul	r16, r20
 256:	0e 3a       	cpi	r16, 0xAE	; 174
 258:	0b 3b       	cpi	r16, 0xBB	; 187
 25a:	0b 27       	eor	r16, r27
 25c:	0c 3c       	cpi	r16, 0xCC	; 204
 25e:	0c 00       	.word	0x000c	; ????
 260:	00 00       	nop
 262:	01 11       	cpse	r16, r1
 264:	01 25       	eor	r16, r1
 266:	0e 13       	cpse	r16, r30
 268:	0b 03       	fmul	r16, r19
 26a:	0e 55       	subi	r16, 0x5E	; 94
 26c:	06 11       	cpse	r16, r6
 26e:	01 52       	subi	r16, 0x21	; 33
 270:	01 10       	cpse	r0, r1
 272:	06 00       	.word	0x0006	; ????
 274:	00 02       	muls	r16, r16
 276:	24 00       	.word	0x0024	; ????
 278:	0b 0b       	sbc	r16, r27
 27a:	3e 0b       	sbc	r19, r30
 27c:	03 0e       	add	r0, r19
 27e:	00 00       	nop
 280:	03 16       	cp	r0, r19
 282:	00 03       	mulsu	r16, r16
 284:	0e 3a       	cpi	r16, 0xAE	; 174
 286:	0b 3b       	cpi	r16, 0xBB	; 187
 288:	0b 49       	sbci	r16, 0x9B	; 155
 28a:	13 00       	.word	0x0013	; ????
 28c:	00 04       	cpc	r0, r0
 28e:	24 00       	.word	0x0024	; ????
 290:	0b 0b       	sbc	r16, r27
 292:	3e 0b       	sbc	r19, r30
 294:	03 08       	sbc	r0, r3
 296:	00 00       	nop
 298:	05 2e       	mov	r0, r21
 29a:	01 3f       	cpi	r16, 0xF1	; 241
 29c:	0c 03       	fmul	r16, r20
 29e:	0e 3a       	cpi	r16, 0xAE	; 174
 2a0:	0b 3b       	cpi	r16, 0xBB	; 187
 2a2:	0b 27       	eor	r16, r27
 2a4:	0c 11       	cpse	r16, r12
 2a6:	01 12       	cpse	r0, r17
 2a8:	01 40       	sbci	r16, 0x01	; 1
 2aa:	0a 97       	sbiw	r24, 0x0a	; 10
 2ac:	42 0c       	add	r4, r2
 2ae:	01 13       	cpse	r16, r17
 2b0:	00 00       	nop
 2b2:	06 05       	cpc	r16, r6
 2b4:	00 03       	mulsu	r16, r16
 2b6:	0e 3a       	cpi	r16, 0xAE	; 174
 2b8:	0b 3b       	cpi	r16, 0xBB	; 187
 2ba:	0b 49       	sbci	r16, 0x9B	; 155
 2bc:	13 02       	muls	r17, r19
 2be:	0a 00       	.word	0x000a	; ????
 2c0:	00 07       	cpc	r16, r16
 2c2:	2e 01       	movw	r4, r28
 2c4:	3f 0c       	add	r3, r15
 2c6:	03 0e       	add	r0, r19
 2c8:	3a 0b       	sbc	r19, r26
 2ca:	3b 0b       	sbc	r19, r27
 2cc:	27 0c       	add	r2, r7
 2ce:	49 13       	cpse	r20, r25
 2d0:	11 01       	movw	r2, r2
 2d2:	12 01       	movw	r2, r4
 2d4:	40 0a       	sbc	r4, r16
 2d6:	97 42       	sbci	r25, 0x27	; 39
 2d8:	0c 01       	movw	r0, r24
 2da:	13 00       	.word	0x0013	; ????
 2dc:	00 08       	sbc	r0, r0
 2de:	05 00       	.word	0x0005	; ????
 2e0:	03 08       	sbc	r0, r3
 2e2:	3a 0b       	sbc	r19, r26
 2e4:	3b 0b       	sbc	r19, r27
 2e6:	49 13       	cpse	r20, r25
 2e8:	02 06       	cpc	r0, r18
 2ea:	00 00       	nop
 2ec:	09 34       	cpi	r16, 0x49	; 73
 2ee:	00 03       	mulsu	r16, r16
 2f0:	08 3a       	cpi	r16, 0xA8	; 168
 2f2:	0b 3b       	cpi	r16, 0xBB	; 187
 2f4:	0b 49       	sbci	r16, 0x9B	; 155
 2f6:	13 02       	muls	r17, r19
 2f8:	0a 00       	.word	0x000a	; ????
 2fa:	00 0a       	sbc	r0, r16
 2fc:	34 00       	.word	0x0034	; ????
 2fe:	03 0e       	add	r0, r19
 300:	3a 0b       	sbc	r19, r26
 302:	3b 0b       	sbc	r19, r27
 304:	49 13       	cpse	r20, r25
 306:	02 0a       	sbc	r0, r18
 308:	00 00       	nop
 30a:	0b 2e       	mov	r0, r27
 30c:	01 3f       	cpi	r16, 0xF1	; 241
 30e:	0c 03       	fmul	r16, r20
 310:	0e 3a       	cpi	r16, 0xAE	; 174
 312:	0b 3b       	cpi	r16, 0xBB	; 187
 314:	0b 27       	eor	r16, r27
 316:	0c 11       	cpse	r16, r12
 318:	01 12       	cpse	r0, r17
 31a:	01 40       	sbci	r16, 0x01	; 1
 31c:	06 97       	sbiw	r24, 0x06	; 6
 31e:	42 0c       	add	r4, r2
 320:	01 13       	cpse	r16, r17
 322:	00 00       	nop
 324:	0c 0b       	sbc	r16, r28
 326:	01 11       	cpse	r16, r1
 328:	01 12       	cpse	r0, r17
 32a:	01 01       	movw	r0, r2
 32c:	13 00       	.word	0x0013	; ????
 32e:	00 0d       	add	r16, r0
 330:	34 00       	.word	0x0034	; ????
 332:	03 0e       	add	r0, r19
 334:	3a 0b       	sbc	r19, r26
 336:	3b 0b       	sbc	r19, r27
 338:	49 13       	cpse	r20, r25
 33a:	02 06       	cpc	r0, r18
 33c:	00 00       	nop
 33e:	0e 89       	ldd	r16, Y+22	; 0x16
 340:	82 01       	movw	r16, r4
 342:	01 11       	cpse	r16, r1
 344:	01 31       	cpi	r16, 0x11	; 17
 346:	13 01       	movw	r2, r6
 348:	13 00       	.word	0x0013	; ????
 34a:	00 0f       	add	r16, r16
 34c:	8a 82       	std	Y+2, r8	; 0x02
 34e:	01 00       	.word	0x0001	; ????
 350:	02 0a       	sbc	r0, r18
 352:	91 42       	sbci	r25, 0x21	; 33
 354:	0a 00       	.word	0x000a	; ????
 356:	00 10       	cpse	r0, r0
 358:	89 82       	std	Y+1, r8	; 0x01
 35a:	01 01       	movw	r0, r2
 35c:	11 01       	movw	r2, r2
 35e:	95 42       	sbci	r25, 0x25	; 37
 360:	0c 31       	cpi	r16, 0x1C	; 28
 362:	13 00       	.word	0x0013	; ????
 364:	00 11       	cpse	r16, r0
 366:	34 00       	.word	0x0034	; ????
 368:	03 08       	sbc	r0, r3
 36a:	3a 0b       	sbc	r19, r26
 36c:	3b 0b       	sbc	r19, r27
 36e:	49 13       	cpse	r20, r25
 370:	1c 0b       	sbc	r17, r28
 372:	00 00       	nop
 374:	12 26       	eor	r1, r18
 376:	00 49       	sbci	r16, 0x90	; 144
 378:	13 00       	.word	0x0013	; ????
 37a:	00 13       	cpse	r16, r16
 37c:	01 01       	movw	r0, r2
 37e:	49 13       	cpse	r20, r25
 380:	01 13       	cpse	r16, r17
 382:	00 00       	nop
 384:	14 21       	and	r17, r4
 386:	00 00       	nop
 388:	00 15       	cp	r16, r0
 38a:	34 00       	.word	0x0034	; ????
 38c:	03 0e       	add	r0, r19
 38e:	3a 0b       	sbc	r19, r26
 390:	3b 0b       	sbc	r19, r27
 392:	49 13       	cpse	r20, r25
 394:	3f 0c       	add	r3, r15
 396:	3c 0c       	add	r3, r12
 398:	00 00       	nop
 39a:	16 34       	cpi	r17, 0x46	; 70
 39c:	00 03       	mulsu	r16, r16
 39e:	0e 3a       	cpi	r16, 0xAE	; 174
 3a0:	0b 3b       	cpi	r16, 0xBB	; 187
 3a2:	0b 49       	sbci	r16, 0x9B	; 155
 3a4:	13 3f       	cpi	r17, 0xF3	; 243
 3a6:	0c 02       	muls	r16, r28
 3a8:	0a 00       	.word	0x000a	; ????
 3aa:	00 17       	cp	r16, r16
 3ac:	2e 01       	movw	r4, r28
 3ae:	3f 0c       	add	r3, r15
 3b0:	03 0e       	add	r0, r19
 3b2:	3a 0b       	sbc	r19, r26
 3b4:	3b 0b       	sbc	r19, r27
 3b6:	27 0c       	add	r2, r7
 3b8:	3c 0c       	add	r3, r12
 3ba:	01 13       	cpse	r16, r17
 3bc:	00 00       	nop
 3be:	18 05       	cpc	r17, r8
 3c0:	00 49       	sbci	r16, 0x90	; 144
 3c2:	13 00       	.word	0x0013	; ????
 3c4:	00 19       	sub	r16, r0
 3c6:	2e 01       	movw	r4, r28
 3c8:	3f 0c       	add	r3, r15
 3ca:	03 0e       	add	r0, r19
 3cc:	3a 0b       	sbc	r19, r26
 3ce:	3b 0b       	sbc	r19, r27
 3d0:	27 0c       	add	r2, r7
 3d2:	3c 0c       	add	r3, r12
 3d4:	00 00       	nop
 3d6:	00 01       	movw	r0, r0
 3d8:	11 01       	movw	r2, r2
 3da:	25 0e       	add	r2, r21
 3dc:	13 0b       	sbc	r17, r19
 3de:	03 0e       	add	r0, r19
 3e0:	55 06       	cpc	r5, r21
 3e2:	11 01       	movw	r2, r2
 3e4:	52 01       	movw	r10, r4
 3e6:	10 06       	cpc	r1, r16
 3e8:	00 00       	nop
 3ea:	02 24       	eor	r0, r2
 3ec:	00 0b       	sbc	r16, r16
 3ee:	0b 3e       	cpi	r16, 0xEB	; 235
 3f0:	0b 03       	fmul	r16, r19
 3f2:	0e 00       	.word	0x000e	; ????
 3f4:	00 03       	mulsu	r16, r16
 3f6:	16 00       	.word	0x0016	; ????
 3f8:	03 0e       	add	r0, r19
 3fa:	3a 0b       	sbc	r19, r26
 3fc:	3b 0b       	sbc	r19, r27
 3fe:	49 13       	cpse	r20, r25
 400:	00 00       	nop
 402:	04 24       	eor	r0, r4
 404:	00 0b       	sbc	r16, r16
 406:	0b 3e       	cpi	r16, 0xEB	; 235
 408:	0b 03       	fmul	r16, r19
 40a:	08 00       	.word	0x0008	; ????
 40c:	00 05       	cpc	r16, r0
 40e:	2e 01       	movw	r4, r28
 410:	03 0e       	add	r0, r19
 412:	3a 0b       	sbc	r19, r26
 414:	3b 0b       	sbc	r19, r27
 416:	27 0c       	add	r2, r7
 418:	20 0b       	sbc	r18, r16
 41a:	01 13       	cpse	r16, r17
 41c:	00 00       	nop
 41e:	06 05       	cpc	r16, r6
 420:	00 03       	mulsu	r16, r16
 422:	0e 3a       	cpi	r16, 0xAE	; 174
 424:	0b 3b       	cpi	r16, 0xBB	; 187
 426:	0b 49       	sbci	r16, 0x9B	; 155
 428:	13 00       	.word	0x0013	; ????
 42a:	00 07       	cpc	r16, r16
 42c:	2e 01       	movw	r4, r28
 42e:	31 13       	cpse	r19, r17
 430:	11 01       	movw	r2, r2
 432:	12 01       	movw	r2, r4
 434:	40 0a       	sbc	r4, r16
 436:	97 42       	sbci	r25, 0x27	; 39
 438:	0c 01       	movw	r0, r24
 43a:	13 00       	.word	0x0013	; ????
 43c:	00 08       	sbc	r0, r0
 43e:	05 00       	.word	0x0005	; ????
 440:	31 13       	cpse	r19, r17
 442:	02 06       	cpc	r0, r18
 444:	00 00       	nop
 446:	09 0b       	sbc	r16, r25
 448:	01 11       	cpse	r16, r1
 44a:	01 12       	cpse	r0, r17
 44c:	01 00       	.word	0x0001	; ????
 44e:	00 0a       	sbc	r0, r16
 450:	2e 00       	.word	0x002e	; ????
 452:	3f 0c       	add	r3, r15
 454:	03 0e       	add	r0, r19
 456:	3a 0b       	sbc	r19, r26
 458:	3b 0b       	sbc	r19, r27
 45a:	27 0c       	add	r2, r7
 45c:	11 01       	movw	r2, r2
 45e:	12 01       	movw	r2, r4
 460:	40 0a       	sbc	r4, r16
 462:	97 42       	sbci	r25, 0x27	; 39
 464:	0c 00       	.word	0x000c	; ????
 466:	00 0b       	sbc	r16, r16
 468:	2e 01       	movw	r4, r28
 46a:	3f 0c       	add	r3, r15
 46c:	03 0e       	add	r0, r19
 46e:	3a 0b       	sbc	r19, r26
 470:	3b 0b       	sbc	r19, r27
 472:	27 0c       	add	r2, r7
 474:	11 01       	movw	r2, r2
 476:	12 01       	movw	r2, r4
 478:	40 06       	cpc	r4, r16
 47a:	97 42       	sbci	r25, 0x27	; 39
 47c:	0c 01       	movw	r0, r24
 47e:	13 00       	.word	0x0013	; ????
 480:	00 0c       	add	r0, r0
 482:	05 00       	.word	0x0005	; ????
 484:	03 08       	sbc	r0, r3
 486:	3a 0b       	sbc	r19, r26
 488:	3b 0b       	sbc	r19, r27
 48a:	49 13       	cpse	r20, r25
 48c:	02 06       	cpc	r0, r18
 48e:	00 00       	nop
 490:	0d 05       	cpc	r16, r13
 492:	00 03       	mulsu	r16, r16
 494:	0e 3a       	cpi	r16, 0xAE	; 174
 496:	0b 3b       	cpi	r16, 0xBB	; 187
 498:	0b 49       	sbci	r16, 0x9B	; 155
 49a:	13 02       	muls	r17, r19
 49c:	0a 00       	.word	0x000a	; ????
 49e:	00 0e       	add	r0, r16
 4a0:	34 00       	.word	0x0034	; ????
 4a2:	03 08       	sbc	r0, r3
 4a4:	3a 0b       	sbc	r19, r26
 4a6:	3b 0b       	sbc	r19, r27
 4a8:	49 13       	cpse	r20, r25
 4aa:	02 06       	cpc	r0, r18
 4ac:	00 00       	nop
 4ae:	0f 34       	cpi	r16, 0x4F	; 79
 4b0:	00 03       	mulsu	r16, r16
 4b2:	0e 3a       	cpi	r16, 0xAE	; 174
 4b4:	0b 3b       	cpi	r16, 0xBB	; 187
 4b6:	0b 49       	sbci	r16, 0x9B	; 155
 4b8:	13 02       	muls	r17, r19
 4ba:	06 00       	.word	0x0006	; ????
 4bc:	00 10       	cpse	r0, r0
 4be:	0b 01       	movw	r0, r22
 4c0:	11 01       	movw	r2, r2
 4c2:	12 01       	movw	r2, r4
 4c4:	01 13       	cpse	r16, r17
 4c6:	00 00       	nop
 4c8:	11 0b       	sbc	r17, r17
 4ca:	01 55       	subi	r16, 0x51	; 81
 4cc:	06 01       	movw	r0, r12
 4ce:	13 00       	.word	0x0013	; ????
 4d0:	00 12       	cpse	r0, r16
 4d2:	0f 00       	.word	0x000f	; ????
 4d4:	0b 0b       	sbc	r16, r27
 4d6:	49 13       	cpse	r20, r25
 4d8:	00 00       	nop
 4da:	13 35       	cpi	r17, 0x53	; 83
 4dc:	00 49       	sbci	r16, 0x90	; 144
 4de:	13 00       	.word	0x0013	; ????
 4e0:	00 14       	cp	r0, r0
 4e2:	89 82       	std	Y+1, r8	; 0x01
 4e4:	01 00       	.word	0x0001	; ????
 4e6:	11 01       	movw	r2, r2
 4e8:	31 13       	cpse	r19, r17
 4ea:	00 00       	nop
 4ec:	15 2e       	mov	r1, r21
 4ee:	01 3f       	cpi	r16, 0xF1	; 241
 4f0:	0c 03       	fmul	r16, r20
 4f2:	0e 3a       	cpi	r16, 0xAE	; 174
 4f4:	0b 3b       	cpi	r16, 0xBB	; 187
 4f6:	0b 27       	eor	r16, r27
 4f8:	0c 49       	sbci	r16, 0x9C	; 156
 4fa:	13 11       	cpse	r17, r3
 4fc:	01 12       	cpse	r0, r17
 4fe:	01 40       	sbci	r16, 0x01	; 1
 500:	06 97       	sbiw	r24, 0x06	; 6
 502:	42 0c       	add	r4, r2
 504:	01 13       	cpse	r16, r17
 506:	00 00       	nop
 508:	16 34       	cpi	r17, 0x46	; 70
 50a:	00 03       	mulsu	r16, r16
 50c:	08 3a       	cpi	r16, 0xA8	; 168
 50e:	0b 3b       	cpi	r16, 0xBB	; 187
 510:	0b 49       	sbci	r16, 0x9B	; 155
 512:	13 1c       	adc	r1, r3
 514:	0b 00       	.word	0x000b	; ????
 516:	00 17       	cp	r16, r16
 518:	26 00       	.word	0x0026	; ????
 51a:	49 13       	cpse	r20, r25
 51c:	00 00       	nop
 51e:	18 01       	movw	r2, r16
 520:	01 49       	sbci	r16, 0x91	; 145
 522:	13 01       	movw	r2, r6
 524:	13 00       	.word	0x0013	; ????
 526:	00 19       	sub	r16, r0
 528:	21 00       	.word	0x0021	; ????
 52a:	49 13       	cpse	r20, r25
 52c:	2f 0b       	sbc	r18, r31
 52e:	00 00       	nop
 530:	1a 34       	cpi	r17, 0x4A	; 74
 532:	00 03       	mulsu	r16, r16
 534:	0e 3a       	cpi	r16, 0xAE	; 174
 536:	0b 3b       	cpi	r16, 0xBB	; 187
 538:	0b 49       	sbci	r16, 0x9B	; 155
 53a:	13 3f       	cpi	r17, 0xF3	; 243
 53c:	0c 02       	muls	r16, r28
 53e:	0a 00       	.word	0x000a	; ????
 540:	00 00       	nop
 542:	01 11       	cpse	r16, r1
 544:	01 25       	eor	r16, r1
 546:	0e 13       	cpse	r16, r30
 548:	0b 03       	fmul	r16, r19
 54a:	0e 1b       	sub	r16, r30
 54c:	0e 55       	subi	r16, 0x5E	; 94
 54e:	06 11       	cpse	r16, r6
 550:	01 52       	subi	r16, 0x21	; 33
 552:	01 10       	cpse	r0, r1
 554:	06 00       	.word	0x0006	; ????
 556:	00 02       	muls	r16, r16
 558:	24 00       	.word	0x0024	; ????
 55a:	0b 0b       	sbc	r16, r27
 55c:	3e 0b       	sbc	r19, r30
 55e:	03 0e       	add	r0, r19
 560:	00 00       	nop
 562:	03 24       	eor	r0, r3
 564:	00 0b       	sbc	r16, r16
 566:	0b 3e       	cpi	r16, 0xEB	; 235
 568:	0b 03       	fmul	r16, r19
 56a:	08 00       	.word	0x0008	; ????
 56c:	00 04       	cpc	r0, r0
 56e:	16 00       	.word	0x0016	; ????
 570:	03 0e       	add	r0, r19
 572:	3a 0b       	sbc	r19, r26
 574:	3b 0b       	sbc	r19, r27
 576:	49 13       	cpse	r20, r25
 578:	00 00       	nop
 57a:	05 2e       	mov	r0, r21
 57c:	01 3f       	cpi	r16, 0xF1	; 241
 57e:	0c 03       	fmul	r16, r20
 580:	0e 3a       	cpi	r16, 0xAE	; 174
 582:	0b 3b       	cpi	r16, 0xBB	; 187
 584:	0b 49       	sbci	r16, 0x9B	; 155
 586:	13 11       	cpse	r17, r3
 588:	01 12       	cpse	r0, r17
 58a:	01 40       	sbci	r16, 0x01	; 1
 58c:	0a 97       	sbiw	r24, 0x0a	; 10
 58e:	42 0c       	add	r4, r2
 590:	01 13       	cpse	r16, r17
 592:	00 00       	nop
 594:	06 05       	cpc	r16, r6
 596:	00 49       	sbci	r16, 0x90	; 144
 598:	13 02       	muls	r17, r19
 59a:	0a 00       	.word	0x000a	; ????
 59c:	00 07       	cpc	r16, r16
 59e:	15 00       	.word	0x0015	; ????
 5a0:	00 00       	nop
 5a2:	08 0f       	add	r16, r24
 5a4:	00 0b       	sbc	r16, r16
 5a6:	0b 49       	sbci	r16, 0x9B	; 155
 5a8:	13 00       	.word	0x0013	; ????
 5aa:	00 09       	sbc	r16, r0
 5ac:	2e 00       	.word	0x002e	; ????
 5ae:	3f 0c       	add	r3, r15
 5b0:	03 0e       	add	r0, r19
 5b2:	3a 0b       	sbc	r19, r26
 5b4:	3b 0b       	sbc	r19, r27
 5b6:	11 01       	movw	r2, r2
 5b8:	12 01       	movw	r2, r4
 5ba:	40 0a       	sbc	r4, r16
 5bc:	97 42       	sbci	r25, 0x27	; 39
 5be:	0c 00       	.word	0x000c	; ????
 5c0:	00 0a       	sbc	r0, r16
 5c2:	89 82       	std	Y+1, r8	; 0x01
 5c4:	01 00       	.word	0x0001	; ????
 5c6:	11 01       	movw	r2, r2
 5c8:	31 13       	cpse	r19, r17
 5ca:	00 00       	nop
 5cc:	0b 34       	cpi	r16, 0x4B	; 75
 5ce:	00 03       	mulsu	r16, r16
 5d0:	08 3a       	cpi	r16, 0xA8	; 168
 5d2:	0b 3b       	cpi	r16, 0xBB	; 187
 5d4:	0b 49       	sbci	r16, 0x9B	; 155
 5d6:	13 1c       	adc	r1, r3
 5d8:	0b 00       	.word	0x000b	; ????
 5da:	00 0c       	add	r0, r0
 5dc:	26 00       	.word	0x0026	; ????
 5de:	49 13       	cpse	r20, r25
 5e0:	00 00       	nop
 5e2:	0d 2e       	mov	r0, r29
 5e4:	00 3f       	cpi	r16, 0xF0	; 240
 5e6:	0c 03       	fmul	r16, r20
 5e8:	0e 3a       	cpi	r16, 0xAE	; 174
 5ea:	0b 3b       	cpi	r16, 0xBB	; 187
 5ec:	0b 3c       	cpi	r16, 0xCB	; 203
 5ee:	0c 00       	.word	0x000c	; ????
 5f0:	00 0e       	add	r0, r16
 5f2:	2e 00       	.word	0x002e	; ????
 5f4:	3f 0c       	add	r3, r15
 5f6:	03 0e       	add	r0, r19
 5f8:	3a 0b       	sbc	r19, r26
 5fa:	3b 0b       	sbc	r19, r27
 5fc:	87 40       	sbci	r24, 0x07	; 7
 5fe:	0e 3c       	cpi	r16, 0xCE	; 206
 600:	0c 00       	.word	0x000c	; ????
 602:	00 00       	nop
 604:	01 11       	cpse	r16, r1
 606:	01 25       	eor	r16, r1
 608:	0e 13       	cpse	r16, r30
 60a:	0b 03       	fmul	r16, r19
 60c:	0e 55       	subi	r16, 0x5E	; 94
 60e:	06 11       	cpse	r16, r6
 610:	01 52       	subi	r16, 0x21	; 33
 612:	01 10       	cpse	r0, r1
 614:	06 00       	.word	0x0006	; ????
 616:	00 02       	muls	r16, r16
 618:	2e 00       	.word	0x002e	; ????
 61a:	03 0e       	add	r0, r19
 61c:	3a 0b       	sbc	r19, r26
 61e:	3b 0b       	sbc	r19, r27
 620:	11 01       	movw	r2, r2
 622:	12 01       	movw	r2, r4
 624:	40 0a       	sbc	r4, r16
 626:	97 42       	sbci	r25, 0x27	; 39
 628:	0c 00       	.word	0x000c	; ????
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	a0 01       	movw	r20, r0
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	3a 01       	movw	r6, r20
   8:	00 00       	nop
   a:	02 01       	movw	r0, r4
   c:	fb 0e       	add	r15, r27
   e:	0d 00       	.word	0x000d	; ????
  10:	01 01       	movw	r0, r2
  12:	01 01       	movw	r0, r2
  14:	00 00       	nop
  16:	00 01       	movw	r0, r0
  18:	00 00       	nop
  1a:	01 2f       	mov	r16, r17
  1c:	55 73       	andi	r21, 0x35	; 53
  1e:	65 72       	andi	r22, 0x25	; 37
  20:	73 2f       	mov	r23, r19
  22:	6e 61       	ori	r22, 0x1E	; 30
  24:	6d 6b       	ori	r22, 0xBD	; 189
  26:	65 2f       	mov	r22, r21
  28:	44 65       	ori	r20, 0x54	; 84
  2a:	73 6b       	ori	r23, 0xB3	; 179
  2c:	74 6f       	ori	r23, 0xF4	; 244
  2e:	70 2f       	mov	r23, r16
  30:	41 72       	andi	r20, 0x21	; 33
  32:	64 75       	andi	r22, 0x54	; 84
  34:	69 6e       	ori	r22, 0xE9	; 233
  36:	6f 2e       	mov	r6, r31
  38:	61 70       	andi	r22, 0x01	; 1
  3a:	70 2f       	mov	r23, r16
  3c:	43 6f       	ori	r20, 0xF3	; 243
  3e:	6e 74       	andi	r22, 0x4E	; 78
  40:	65 6e       	ori	r22, 0xE5	; 229
  42:	74 73       	andi	r23, 0x34	; 52
  44:	2f 4a       	sbci	r18, 0xAF	; 175
  46:	61 76       	andi	r22, 0x61	; 97
  48:	61 2f       	mov	r22, r17
  4a:	68 61       	ori	r22, 0x18	; 24
  4c:	72 64       	ori	r23, 0x42	; 66
  4e:	77 61       	ori	r23, 0x17	; 23
  50:	72 65       	ori	r23, 0x52	; 82
  52:	2f 74       	andi	r18, 0x4F	; 79
  54:	6f 6f       	ori	r22, 0xFF	; 255
  56:	6c 73       	andi	r22, 0x3C	; 60
  58:	2f 61       	ori	r18, 0x1F	; 31
  5a:	76 72       	andi	r23, 0x26	; 38
  5c:	2f 61       	ori	r18, 0x1F	; 31
  5e:	76 72       	andi	r23, 0x26	; 38
  60:	2f 69       	ori	r18, 0x9F	; 159
  62:	6e 63       	ori	r22, 0x3E	; 62
  64:	6c 75       	andi	r22, 0x5C	; 92
  66:	64 65       	ori	r22, 0x54	; 84
  68:	00 2f       	mov	r16, r16
  6a:	55 73       	andi	r21, 0x35	; 53
  6c:	65 72       	andi	r22, 0x25	; 37
  6e:	73 2f       	mov	r23, r19
  70:	6e 61       	ori	r22, 0x1E	; 30
  72:	6d 6b       	ori	r22, 0xBD	; 189
  74:	65 2f       	mov	r22, r21
  76:	4c 69       	ori	r20, 0x9C	; 156
  78:	62 72       	andi	r22, 0x22	; 34
  7a:	61 72       	andi	r22, 0x21	; 33
  7c:	79 2f       	mov	r23, r25
  7e:	41 72       	andi	r20, 0x21	; 33
  80:	64 75       	andi	r22, 0x54	; 84
  82:	69 6e       	ori	r22, 0xE9	; 233
  84:	6f 31       	cpi	r22, 0x1F	; 31
  86:	35 2f       	mov	r19, r21
  88:	70 61       	ori	r23, 0x10	; 16
  8a:	63 6b       	ori	r22, 0xB3	; 179
  8c:	61 67       	ori	r22, 0x71	; 113
  8e:	65 73       	andi	r22, 0x35	; 53
  90:	2f 61       	ori	r18, 0x1F	; 31
  92:	74 74       	andi	r23, 0x44	; 68
  94:	69 6e       	ori	r22, 0xE9	; 233
  96:	79 2f       	mov	r23, r25
  98:	68 61       	ori	r22, 0x18	; 24
  9a:	72 64       	ori	r23, 0x42	; 66
  9c:	77 61       	ori	r23, 0x17	; 23
  9e:	72 65       	ori	r23, 0x52	; 82
  a0:	2f 61       	ori	r18, 0x1F	; 31
  a2:	76 72       	andi	r23, 0x26	; 38
  a4:	2f 31       	cpi	r18, 0x1F	; 31
  a6:	2e 30       	cpi	r18, 0x0E	; 14
  a8:	2e 31       	cpi	r18, 0x1E	; 30
  aa:	2f 76       	andi	r18, 0x6F	; 111
  ac:	61 72       	andi	r22, 0x21	; 33
  ae:	69 61       	ori	r22, 0x19	; 25
  b0:	6e 74       	andi	r22, 0x4E	; 78
  b2:	73 2f       	mov	r23, r19
  b4:	74 69       	ori	r23, 0x94	; 148
  b6:	6e 79       	andi	r22, 0x9E	; 158
  b8:	38 00       	.word	0x0038	; ????
  ba:	2f 55       	subi	r18, 0x5F	; 95
  bc:	73 65       	ori	r23, 0x53	; 83
  be:	72 73       	andi	r23, 0x32	; 50
  c0:	2f 6e       	ori	r18, 0xEF	; 239
  c2:	61 6d       	ori	r22, 0xD1	; 209
  c4:	6b 65       	ori	r22, 0x5B	; 91
  c6:	2f 44       	sbci	r18, 0x4F	; 79
  c8:	65 73       	andi	r22, 0x35	; 53
  ca:	6b 74       	andi	r22, 0x4B	; 75
  cc:	6f 70       	andi	r22, 0x0F	; 15
  ce:	2f 41       	sbci	r18, 0x1F	; 31
  d0:	72 64       	ori	r23, 0x42	; 66
  d2:	75 69       	ori	r23, 0x95	; 149
  d4:	6e 6f       	ori	r22, 0xFE	; 254
  d6:	2e 61       	ori	r18, 0x1E	; 30
  d8:	70 70       	andi	r23, 0x00	; 0
  da:	2f 43       	sbci	r18, 0x3F	; 63
  dc:	6f 6e       	ori	r22, 0xEF	; 239
  de:	74 65       	ori	r23, 0x54	; 84
  e0:	6e 74       	andi	r22, 0x4E	; 78
  e2:	73 2f       	mov	r23, r19
  e4:	4a 61       	ori	r20, 0x1A	; 26
  e6:	76 61       	ori	r23, 0x16	; 22
  e8:	2f 68       	ori	r18, 0x8F	; 143
  ea:	61 72       	andi	r22, 0x21	; 33
  ec:	64 77       	andi	r22, 0x74	; 116
  ee:	61 72       	andi	r22, 0x21	; 33
  f0:	65 2f       	mov	r22, r21
  f2:	61 72       	andi	r22, 0x21	; 33
  f4:	64 75       	andi	r22, 0x54	; 84
  f6:	69 6e       	ori	r22, 0xE9	; 233
  f8:	6f 2f       	mov	r22, r31
  fa:	61 76       	andi	r22, 0x61	; 97
  fc:	72 2f       	mov	r23, r18
  fe:	63 6f       	ori	r22, 0xF3	; 243
 100:	72 65       	ori	r23, 0x52	; 82
 102:	73 2f       	mov	r23, r19
 104:	61 72       	andi	r22, 0x21	; 33
 106:	64 75       	andi	r22, 0x54	; 84
 108:	69 6e       	ori	r22, 0xE9	; 233
 10a:	6f 00       	.word	0x006f	; ????
 10c:	00 65       	ori	r16, 0x50	; 80
 10e:	6e 76       	andi	r22, 0x6E	; 110
 110:	2e 69       	ori	r18, 0x9E	; 158
 112:	6e 6f       	ori	r22, 0xFE	; 254
 114:	00 00       	nop
 116:	00 00       	nop
 118:	73 74       	andi	r23, 0x43	; 67
 11a:	64 69       	ori	r22, 0x94	; 148
 11c:	6e 74       	andi	r22, 0x4E	; 78
 11e:	2e 68       	ori	r18, 0x8E	; 142
 120:	00 01       	movw	r0, r0
 122:	00 00       	nop
 124:	70 69       	ori	r23, 0x90	; 144
 126:	6e 73       	andi	r22, 0x3E	; 62
 128:	5f 61       	ori	r21, 0x1F	; 31
 12a:	72 64       	ori	r23, 0x42	; 66
 12c:	75 69       	ori	r23, 0x95	; 149
 12e:	6e 6f       	ori	r22, 0xFE	; 254
 130:	2e 68       	ori	r18, 0x8E	; 142
 132:	00 02       	muls	r16, r16
 134:	00 00       	nop
 136:	61 72       	andi	r22, 0x21	; 33
 138:	64 75       	andi	r22, 0x54	; 84
 13a:	69 6e       	ori	r22, 0xE9	; 233
 13c:	6f 2e       	mov	r6, r31
 13e:	68 00       	.word	0x0068	; ????
 140:	03 00       	.word	0x0003	; ????
 142:	00 00       	nop
 144:	00 05       	cpc	r16, r0
 146:	02 60       	ori	r16, 0x02	; 2
 148:	00 00       	nop
 14a:	00 03       	mulsu	r16, r16
 14c:	1a 01       	movw	r2, r20
 14e:	21 3d       	cpi	r18, 0xD1	; 209
 150:	00 02       	muls	r16, r16
 152:	04 01       	movw	r0, r8
 154:	3d 3d       	cpi	r19, 0xDD	; 221
 156:	40 21       	and	r20, r0
 158:	21 2f       	mov	r18, r17
 15a:	2f 2f       	mov	r18, r31
 15c:	2f 40       	sbci	r18, 0x0F	; 15
 15e:	21 22       	and	r2, r17
 160:	21 2f       	mov	r18, r17
 162:	2f 40       	sbci	r18, 0x0F	; 15
 164:	3d 3d       	cpi	r19, 0xDD	; 221
 166:	3d 3e       	cpi	r19, 0xED	; 237
 168:	23 30       	cpi	r18, 0x03	; 3
 16a:	1e 02       	muls	r17, r30
 16c:	01 00       	.word	0x0001	; ????
 16e:	01 01       	movw	r0, r2
 170:	00 05       	cpc	r16, r0
 172:	02 ca       	rjmp	.-3068   	; 0xfffff578 <__eeprom_end+0xff7ef578>
 174:	00 00       	nop
 176:	00 03       	mulsu	r16, r16
 178:	d3 00       	.word	0x00d3	; ????
 17a:	01 15       	cp	r16, r1
 17c:	3d 03       	fmul	r19, r21
 17e:	0a 66       	ori	r16, 0x6A	; 106
 180:	4b 1c       	adc	r4, r11
 182:	52 2f       	mov	r21, r18
 184:	42 21       	and	r20, r2
 186:	02 02       	muls	r16, r18
 188:	00 01       	movw	r0, r0
 18a:	01 00       	.word	0x0001	; ????
 18c:	05 02       	muls	r16, r21
 18e:	fe 00       	.word	0x00fe	; ????
 190:	00 00       	nop
 192:	03 f4       	brvc	.+0      	; 0x194 <__vector_10+0x96>
 194:	00 01       	movw	r0, r0
 196:	ad 4b       	sbci	r26, 0xBD	; 189
 198:	2f 67       	ori	r18, 0x7F	; 127
 19a:	d8 83       	st	Y, r29
 19c:	08 15       	cp	r16, r8
 19e:	3d 02       	muls	r19, r29
 1a0:	0b 00       	.word	0x000b	; ????
 1a2:	01 01       	movw	r0, r2
 1a4:	ed 01       	movw	r28, r26
 1a6:	00 00       	nop
 1a8:	02 00       	.word	0x0002	; ????
 1aa:	3b 01       	movw	r6, r22
 1ac:	00 00       	nop
 1ae:	02 01       	movw	r0, r4
 1b0:	fb 0e       	add	r15, r27
 1b2:	0d 00       	.word	0x000d	; ????
 1b4:	01 01       	movw	r0, r2
 1b6:	01 01       	movw	r0, r2
 1b8:	00 00       	nop
 1ba:	00 01       	movw	r0, r0
 1bc:	00 00       	nop
 1be:	01 2f       	mov	r16, r17
 1c0:	55 73       	andi	r21, 0x35	; 53
 1c2:	65 72       	andi	r22, 0x25	; 37
 1c4:	73 2f       	mov	r23, r19
 1c6:	6e 61       	ori	r22, 0x1E	; 30
 1c8:	6d 6b       	ori	r22, 0xBD	; 189
 1ca:	65 2f       	mov	r22, r21
 1cc:	44 65       	ori	r20, 0x54	; 84
 1ce:	73 6b       	ori	r23, 0xB3	; 179
 1d0:	74 6f       	ori	r23, 0xF4	; 244
 1d2:	70 2f       	mov	r23, r16
 1d4:	41 72       	andi	r20, 0x21	; 33
 1d6:	64 75       	andi	r22, 0x54	; 84
 1d8:	69 6e       	ori	r22, 0xE9	; 233
 1da:	6f 2e       	mov	r6, r31
 1dc:	61 70       	andi	r22, 0x01	; 1
 1de:	70 2f       	mov	r23, r16
 1e0:	43 6f       	ori	r20, 0xF3	; 243
 1e2:	6e 74       	andi	r22, 0x4E	; 78
 1e4:	65 6e       	ori	r22, 0xE5	; 229
 1e6:	74 73       	andi	r23, 0x34	; 52
 1e8:	2f 4a       	sbci	r18, 0xAF	; 175
 1ea:	61 76       	andi	r22, 0x61	; 97
 1ec:	61 2f       	mov	r22, r17
 1ee:	68 61       	ori	r22, 0x18	; 24
 1f0:	72 64       	ori	r23, 0x42	; 66
 1f2:	77 61       	ori	r23, 0x17	; 23
 1f4:	72 65       	ori	r23, 0x52	; 82
 1f6:	2f 61       	ori	r18, 0x1F	; 31
 1f8:	72 64       	ori	r23, 0x42	; 66
 1fa:	75 69       	ori	r23, 0x95	; 149
 1fc:	6e 6f       	ori	r22, 0xFE	; 254
 1fe:	2f 61       	ori	r18, 0x1F	; 31
 200:	76 72       	andi	r23, 0x26	; 38
 202:	2f 63       	ori	r18, 0x3F	; 63
 204:	6f 72       	andi	r22, 0x2F	; 47
 206:	65 73       	andi	r22, 0x35	; 53
 208:	2f 61       	ori	r18, 0x1F	; 31
 20a:	72 64       	ori	r23, 0x42	; 66
 20c:	75 69       	ori	r23, 0x95	; 149
 20e:	6e 6f       	ori	r22, 0xFE	; 254
 210:	00 2f       	mov	r16, r16
 212:	55 73       	andi	r21, 0x35	; 53
 214:	65 72       	andi	r22, 0x25	; 37
 216:	73 2f       	mov	r23, r19
 218:	6e 61       	ori	r22, 0x1E	; 30
 21a:	6d 6b       	ori	r22, 0xBD	; 189
 21c:	65 2f       	mov	r22, r21
 21e:	44 65       	ori	r20, 0x54	; 84
 220:	73 6b       	ori	r23, 0xB3	; 179
 222:	74 6f       	ori	r23, 0xF4	; 244
 224:	70 2f       	mov	r23, r16
 226:	41 72       	andi	r20, 0x21	; 33
 228:	64 75       	andi	r22, 0x54	; 84
 22a:	69 6e       	ori	r22, 0xE9	; 233
 22c:	6f 2e       	mov	r6, r31
 22e:	61 70       	andi	r22, 0x01	; 1
 230:	70 2f       	mov	r23, r16
 232:	43 6f       	ori	r20, 0xF3	; 243
 234:	6e 74       	andi	r22, 0x4E	; 78
 236:	65 6e       	ori	r22, 0xE5	; 229
 238:	74 73       	andi	r23, 0x34	; 52
 23a:	2f 4a       	sbci	r18, 0xAF	; 175
 23c:	61 76       	andi	r22, 0x61	; 97
 23e:	61 2f       	mov	r22, r17
 240:	68 61       	ori	r22, 0x18	; 24
 242:	72 64       	ori	r23, 0x42	; 66
 244:	77 61       	ori	r23, 0x17	; 23
 246:	72 65       	ori	r23, 0x52	; 82
 248:	2f 74       	andi	r18, 0x4F	; 79
 24a:	6f 6f       	ori	r22, 0xFF	; 255
 24c:	6c 73       	andi	r22, 0x3C	; 60
 24e:	2f 61       	ori	r18, 0x1F	; 31
 250:	76 72       	andi	r23, 0x26	; 38
 252:	2f 61       	ori	r18, 0x1F	; 31
 254:	76 72       	andi	r23, 0x26	; 38
 256:	2f 69       	ori	r18, 0x9F	; 159
 258:	6e 63       	ori	r22, 0x3E	; 62
 25a:	6c 75       	andi	r22, 0x5C	; 92
 25c:	64 65       	ori	r22, 0x54	; 84
 25e:	00 2f       	mov	r16, r16
 260:	55 73       	andi	r21, 0x35	; 53
 262:	65 72       	andi	r22, 0x25	; 37
 264:	73 2f       	mov	r23, r19
 266:	6e 61       	ori	r22, 0x1E	; 30
 268:	6d 6b       	ori	r22, 0xBD	; 189
 26a:	65 2f       	mov	r22, r21
 26c:	4c 69       	ori	r20, 0x9C	; 156
 26e:	62 72       	andi	r22, 0x22	; 34
 270:	61 72       	andi	r22, 0x21	; 33
 272:	79 2f       	mov	r23, r25
 274:	41 72       	andi	r20, 0x21	; 33
 276:	64 75       	andi	r22, 0x54	; 84
 278:	69 6e       	ori	r22, 0xE9	; 233
 27a:	6f 31       	cpi	r22, 0x1F	; 31
 27c:	35 2f       	mov	r19, r21
 27e:	70 61       	ori	r23, 0x10	; 16
 280:	63 6b       	ori	r22, 0xB3	; 179
 282:	61 67       	ori	r22, 0x71	; 113
 284:	65 73       	andi	r22, 0x35	; 53
 286:	2f 61       	ori	r18, 0x1F	; 31
 288:	74 74       	andi	r23, 0x44	; 68
 28a:	69 6e       	ori	r22, 0xE9	; 233
 28c:	79 2f       	mov	r23, r25
 28e:	68 61       	ori	r22, 0x18	; 24
 290:	72 64       	ori	r23, 0x42	; 66
 292:	77 61       	ori	r23, 0x17	; 23
 294:	72 65       	ori	r23, 0x52	; 82
 296:	2f 61       	ori	r18, 0x1F	; 31
 298:	76 72       	andi	r23, 0x26	; 38
 29a:	2f 31       	cpi	r18, 0x1F	; 31
 29c:	2e 30       	cpi	r18, 0x0E	; 14
 29e:	2e 31       	cpi	r18, 0x1E	; 30
 2a0:	2f 76       	andi	r18, 0x6F	; 111
 2a2:	61 72       	andi	r22, 0x21	; 33
 2a4:	69 61       	ori	r22, 0x19	; 25
 2a6:	6e 74       	andi	r22, 0x4E	; 78
 2a8:	73 2f       	mov	r23, r19
 2aa:	74 69       	ori	r23, 0x94	; 148
 2ac:	6e 79       	andi	r22, 0x9E	; 158
 2ae:	38 00       	.word	0x0038	; ????
 2b0:	00 77       	andi	r16, 0x70	; 112
 2b2:	69 72       	andi	r22, 0x29	; 41
 2b4:	69 6e       	ori	r22, 0xE9	; 233
 2b6:	67 2e       	mov	r6, r23
 2b8:	63 00       	.word	0x0063	; ????
 2ba:	01 00       	.word	0x0001	; ????
 2bc:	00 73       	andi	r16, 0x30	; 48
 2be:	74 64       	ori	r23, 0x44	; 68
 2c0:	69 6e       	ori	r22, 0xE9	; 233
 2c2:	74 2e       	mov	r7, r20
 2c4:	68 00       	.word	0x0068	; ????
 2c6:	02 00       	.word	0x0002	; ????
 2c8:	00 70       	andi	r16, 0x00	; 0
 2ca:	69 6e       	ori	r22, 0xE9	; 233
 2cc:	73 5f       	subi	r23, 0xF3	; 243
 2ce:	61 72       	andi	r22, 0x21	; 33
 2d0:	64 75       	andi	r22, 0x54	; 84
 2d2:	69 6e       	ori	r22, 0xE9	; 233
 2d4:	6f 2e       	mov	r6, r31
 2d6:	68 00       	.word	0x0068	; ????
 2d8:	03 00       	.word	0x0003	; ????
 2da:	00 41       	sbci	r16, 0x10	; 16
 2dc:	72 64       	ori	r23, 0x42	; 66
 2de:	75 69       	ori	r23, 0x95	; 149
 2e0:	6e 6f       	ori	r22, 0xFE	; 254
 2e2:	2e 68       	ori	r18, 0x8E	; 142
 2e4:	00 01       	movw	r0, r0
 2e6:	00 00       	nop
 2e8:	00 00       	nop
 2ea:	05 02       	muls	r16, r21
 2ec:	96 01       	movw	r18, r12
 2ee:	00 00       	nop
 2f0:	03 30       	cpi	r16, 0x03	; 3
 2f2:	01 af       	std	Z+57, r16	; 0x39
 2f4:	83 31       	cpi	r24, 0x13	; 19
 2f6:	2f 2c       	mov	r2, r15
 2f8:	4d 2f       	mov	r20, r29
 2fa:	3f 2f       	mov	r19, r31
 2fc:	83 08       	sbc	r8, r3
 2fe:	2f 02       	muls	r18, r31
 300:	0b 00       	.word	0x000b	; ????
 302:	01 01       	movw	r0, r2
 304:	00 05       	cpc	r16, r0
 306:	02 00       	.word	0x0002	; ????
 308:	00 00       	nop
 30a:	00 03       	mulsu	r16, r16
 30c:	c3 00       	.word	0x00c3	; ????
 30e:	01 14       	cp	r0, r1
 310:	24 21       	and	r18, r4
 312:	83 23       	and	r24, r19
 314:	02 01       	movw	r0, r4
 316:	00 01       	movw	r0, r0
 318:	01 00       	.word	0x0001	; ????
 31a:	05 02       	muls	r16, r21
 31c:	00 00       	nop
 31e:	00 00       	nop
 320:	03 d0       	rcall	.+6      	; 0x328 <_exit>
 322:	00 01       	movw	r0, r0
 324:	14 22       	and	r1, r20
 326:	21 84       	ldd	r2, Z+9	; 0x09
 328:	03 0b       	sbc	r16, r19
 32a:	20 00       	.word	0x0020	; ????
 32c:	02 04       	cpc	r0, r2
 32e:	01 06       	cpc	r0, r17
 330:	3c 06       	cpc	r3, r28
 332:	2f 3f       	cpi	r18, 0xFF	; 255
 334:	22 e5       	ldi	r18, 0x52	; 82
 336:	02 01       	movw	r0, r4
 338:	00 01       	movw	r0, r0
 33a:	01 00       	.word	0x0001	; ????
 33c:	05 02       	muls	r16, r21
 33e:	00 00       	nop
 340:	00 00       	nop
 342:	03 ec       	ldi	r16, 0xC3	; 195
 344:	00 01       	movw	r0, r0
 346:	83 00       	.word	0x0083	; ????
 348:	02 04       	cpc	r0, r2
 34a:	01 30       	cpi	r16, 0x01	; 1
 34c:	59 21       	and	r21, r9
 34e:	67 59       	subi	r22, 0x97	; 151
 350:	3f 02       	muls	r19, r31
 352:	07 00       	.word	0x0007	; ????
 354:	01 01       	movw	r0, r2
 356:	00 05       	cpc	r16, r0
 358:	02 2a       	or	r0, r18
 35a:	02 00       	.word	0x0002	; ????
 35c:	00 03       	mulsu	r16, r16
 35e:	fa 00       	.word	0x00fa	; ????
 360:	01 03       	mulsu	r16, r17
 362:	d3 00       	.word	0x00d3	; ????
 364:	01 41       	sbci	r16, 0x11	; 17
 366:	33 03       	mulsu	r19, r19
 368:	14 20       	and	r1, r4
 36a:	02 03       	mulsu	r16, r18
 36c:	00 01       	movw	r0, r0
 36e:	01 00       	.word	0x0001	; ????
 370:	05 02       	muls	r16, r21
 372:	3c 02       	muls	r19, r28
 374:	00 00       	nop
 376:	03 f3       	brvs	.-64     	; 0x338 <__data_load_end+0xc>
 378:	01 01       	movw	r0, r2
 37a:	15 26       	eor	r1, r21
 37c:	3d 03       	fmul	r19, r21
 37e:	0d 3c       	cpi	r16, 0xCD	; 205
 380:	3d 03       	fmul	r19, r21
 382:	0b 3c       	cpi	r16, 0xCB	; 203
 384:	03 15       	cp	r16, r3
 386:	3c 3e       	cpi	r19, 0xEC	; 236
 388:	03 3e       	cpi	r16, 0xE3	; 227
 38a:	3c 21       	and	r19, r12
 38c:	21 03       	mulsu	r18, r17
 38e:	13 20       	and	r1, r3
 390:	02 02       	muls	r16, r18
 392:	00 01       	movw	r0, r0
 394:	01 bc       	out	0x21, r0	; 33
 396:	01 00       	.word	0x0001	; ????
 398:	00 02       	muls	r16, r16
 39a:	00 42       	sbci	r16, 0x20	; 32
 39c:	01 00       	.word	0x0001	; ????
 39e:	00 02       	muls	r16, r16
 3a0:	01 fb       	bst	r16, 1
 3a2:	0e 0d       	add	r16, r14
 3a4:	00 01       	movw	r0, r0
 3a6:	01 01       	movw	r0, r2
 3a8:	01 00       	.word	0x0001	; ????
 3aa:	00 00       	nop
 3ac:	01 00       	.word	0x0001	; ????
 3ae:	00 01       	movw	r0, r0
 3b0:	2f 55       	subi	r18, 0x5F	; 95
 3b2:	73 65       	ori	r23, 0x53	; 83
 3b4:	72 73       	andi	r23, 0x32	; 50
 3b6:	2f 6e       	ori	r18, 0xEF	; 239
 3b8:	61 6d       	ori	r22, 0xD1	; 209
 3ba:	6b 65       	ori	r22, 0x5B	; 91
 3bc:	2f 44       	sbci	r18, 0x4F	; 79
 3be:	65 73       	andi	r22, 0x35	; 53
 3c0:	6b 74       	andi	r22, 0x4B	; 75
 3c2:	6f 70       	andi	r22, 0x0F	; 15
 3c4:	2f 41       	sbci	r18, 0x1F	; 31
 3c6:	72 64       	ori	r23, 0x42	; 66
 3c8:	75 69       	ori	r23, 0x95	; 149
 3ca:	6e 6f       	ori	r22, 0xFE	; 254
 3cc:	2e 61       	ori	r18, 0x1E	; 30
 3ce:	70 70       	andi	r23, 0x00	; 0
 3d0:	2f 43       	sbci	r18, 0x3F	; 63
 3d2:	6f 6e       	ori	r22, 0xEF	; 239
 3d4:	74 65       	ori	r23, 0x54	; 84
 3d6:	6e 74       	andi	r22, 0x4E	; 78
 3d8:	73 2f       	mov	r23, r19
 3da:	4a 61       	ori	r20, 0x1A	; 26
 3dc:	76 61       	ori	r23, 0x16	; 22
 3de:	2f 68       	ori	r18, 0x8F	; 143
 3e0:	61 72       	andi	r22, 0x21	; 33
 3e2:	64 77       	andi	r22, 0x74	; 116
 3e4:	61 72       	andi	r22, 0x21	; 33
 3e6:	65 2f       	mov	r22, r21
 3e8:	61 72       	andi	r22, 0x21	; 33
 3ea:	64 75       	andi	r22, 0x54	; 84
 3ec:	69 6e       	ori	r22, 0xE9	; 233
 3ee:	6f 2f       	mov	r22, r31
 3f0:	61 76       	andi	r22, 0x61	; 97
 3f2:	72 2f       	mov	r23, r18
 3f4:	63 6f       	ori	r22, 0xF3	; 243
 3f6:	72 65       	ori	r23, 0x52	; 82
 3f8:	73 2f       	mov	r23, r19
 3fa:	61 72       	andi	r22, 0x21	; 33
 3fc:	64 75       	andi	r22, 0x54	; 84
 3fe:	69 6e       	ori	r22, 0xE9	; 233
 400:	6f 00       	.word	0x006f	; ????
 402:	2f 55       	subi	r18, 0x5F	; 95
 404:	73 65       	ori	r23, 0x53	; 83
 406:	72 73       	andi	r23, 0x32	; 50
 408:	2f 6e       	ori	r18, 0xEF	; 239
 40a:	61 6d       	ori	r22, 0xD1	; 209
 40c:	6b 65       	ori	r22, 0x5B	; 91
 40e:	2f 44       	sbci	r18, 0x4F	; 79
 410:	65 73       	andi	r22, 0x35	; 53
 412:	6b 74       	andi	r22, 0x4B	; 75
 414:	6f 70       	andi	r22, 0x0F	; 15
 416:	2f 41       	sbci	r18, 0x1F	; 31
 418:	72 64       	ori	r23, 0x42	; 66
 41a:	75 69       	ori	r23, 0x95	; 149
 41c:	6e 6f       	ori	r22, 0xFE	; 254
 41e:	2e 61       	ori	r18, 0x1E	; 30
 420:	70 70       	andi	r23, 0x00	; 0
 422:	2f 43       	sbci	r18, 0x3F	; 63
 424:	6f 6e       	ori	r22, 0xEF	; 239
 426:	74 65       	ori	r23, 0x54	; 84
 428:	6e 74       	andi	r22, 0x4E	; 78
 42a:	73 2f       	mov	r23, r19
 42c:	4a 61       	ori	r20, 0x1A	; 26
 42e:	76 61       	ori	r23, 0x16	; 22
 430:	2f 68       	ori	r18, 0x8F	; 143
 432:	61 72       	andi	r22, 0x21	; 33
 434:	64 77       	andi	r22, 0x74	; 116
 436:	61 72       	andi	r22, 0x21	; 33
 438:	65 2f       	mov	r22, r21
 43a:	74 6f       	ori	r23, 0xF4	; 244
 43c:	6f 6c       	ori	r22, 0xCF	; 207
 43e:	73 2f       	mov	r23, r19
 440:	61 76       	andi	r22, 0x61	; 97
 442:	72 2f       	mov	r23, r18
 444:	61 76       	andi	r22, 0x61	; 97
 446:	72 2f       	mov	r23, r18
 448:	69 6e       	ori	r22, 0xE9	; 233
 44a:	63 6c       	ori	r22, 0xC3	; 195
 44c:	75 64       	ori	r23, 0x45	; 69
 44e:	65 00       	.word	0x0065	; ????
 450:	2f 55       	subi	r18, 0x5F	; 95
 452:	73 65       	ori	r23, 0x53	; 83
 454:	72 73       	andi	r23, 0x32	; 50
 456:	2f 6e       	ori	r18, 0xEF	; 239
 458:	61 6d       	ori	r22, 0xD1	; 209
 45a:	6b 65       	ori	r22, 0x5B	; 91
 45c:	2f 4c       	sbci	r18, 0xCF	; 207
 45e:	69 62       	ori	r22, 0x29	; 41
 460:	72 61       	ori	r23, 0x12	; 18
 462:	72 79       	andi	r23, 0x92	; 146
 464:	2f 41       	sbci	r18, 0x1F	; 31
 466:	72 64       	ori	r23, 0x42	; 66
 468:	75 69       	ori	r23, 0x95	; 149
 46a:	6e 6f       	ori	r22, 0xFE	; 254
 46c:	31 35       	cpi	r19, 0x51	; 81
 46e:	2f 70       	andi	r18, 0x0F	; 15
 470:	61 63       	ori	r22, 0x31	; 49
 472:	6b 61       	ori	r22, 0x1B	; 27
 474:	67 65       	ori	r22, 0x57	; 87
 476:	73 2f       	mov	r23, r19
 478:	61 74       	andi	r22, 0x41	; 65
 47a:	74 69       	ori	r23, 0x94	; 148
 47c:	6e 79       	andi	r22, 0x9E	; 158
 47e:	2f 68       	ori	r18, 0x8F	; 143
 480:	61 72       	andi	r22, 0x21	; 33
 482:	64 77       	andi	r22, 0x74	; 116
 484:	61 72       	andi	r22, 0x21	; 33
 486:	65 2f       	mov	r22, r21
 488:	61 76       	andi	r22, 0x61	; 97
 48a:	72 2f       	mov	r23, r18
 48c:	31 2e       	mov	r3, r17
 48e:	30 2e       	mov	r3, r16
 490:	31 2f       	mov	r19, r17
 492:	76 61       	ori	r23, 0x16	; 22
 494:	72 69       	ori	r23, 0x92	; 146
 496:	61 6e       	ori	r22, 0xE1	; 225
 498:	74 73       	andi	r23, 0x34	; 52
 49a:	2f 74       	andi	r18, 0x4F	; 79
 49c:	69 6e       	ori	r22, 0xE9	; 233
 49e:	79 38       	cpi	r23, 0x89	; 137
 4a0:	00 00       	nop
 4a2:	77 69       	ori	r23, 0x97	; 151
 4a4:	72 69       	ori	r23, 0x92	; 146
 4a6:	6e 67       	ori	r22, 0x7E	; 126
 4a8:	5f 61       	ori	r21, 0x1F	; 31
 4aa:	6e 61       	ori	r22, 0x1E	; 30
 4ac:	6c 6f       	ori	r22, 0xFC	; 252
 4ae:	67 2e       	mov	r6, r23
 4b0:	63 00       	.word	0x0063	; ????
 4b2:	01 00       	.word	0x0001	; ????
 4b4:	00 73       	andi	r16, 0x30	; 48
 4b6:	74 64       	ori	r23, 0x44	; 68
 4b8:	69 6e       	ori	r22, 0xE9	; 233
 4ba:	74 2e       	mov	r7, r20
 4bc:	68 00       	.word	0x0068	; ????
 4be:	02 00       	.word	0x0002	; ????
 4c0:	00 70       	andi	r16, 0x00	; 0
 4c2:	69 6e       	ori	r22, 0xE9	; 233
 4c4:	73 5f       	subi	r23, 0xF3	; 243
 4c6:	61 72       	andi	r22, 0x21	; 33
 4c8:	64 75       	andi	r22, 0x54	; 84
 4ca:	69 6e       	ori	r22, 0xE9	; 233
 4cc:	6f 2e       	mov	r6, r31
 4ce:	68 00       	.word	0x0068	; ????
 4d0:	03 00       	.word	0x0003	; ????
 4d2:	00 41       	sbci	r16, 0x10	; 16
 4d4:	72 64       	ori	r23, 0x42	; 66
 4d6:	75 69       	ori	r23, 0x95	; 149
 4d8:	6e 6f       	ori	r22, 0xFE	; 254
 4da:	2e 68       	ori	r18, 0x8E	; 142
 4dc:	00 01       	movw	r0, r0
 4de:	00 00       	nop
 4e0:	00 00       	nop
 4e2:	05 02       	muls	r16, r21
 4e4:	00 00       	nop
 4e6:	00 00       	nop
 4e8:	03 20       	and	r0, r3
 4ea:	01 16       	cp	r0, r17
 4ec:	02 03       	mulsu	r16, r18
 4ee:	00 01       	movw	r0, r0
 4f0:	01 00       	.word	0x0001	; ????
 4f2:	05 02       	muls	r16, r21
 4f4:	72 02       	muls	r23, r18
 4f6:	00 00       	nop
 4f8:	03 28       	or	r0, r3
 4fa:	01 19       	sub	r16, r1
 4fc:	00 02       	muls	r16, r16
 4fe:	04 02       	muls	r16, r20
 500:	06 2e       	mov	r0, r22
 502:	00 02       	muls	r16, r16
 504:	04 03       	mulsu	r16, r20
 506:	06 03       	mulsu	r16, r22
 508:	15 20       	and	r1, r5
 50a:	00 02       	muls	r16, r16
 50c:	04 03       	mulsu	r16, r20
 50e:	98 00       	.word	0x0098	; ????
 510:	02 04       	cpc	r0, r2
 512:	01 23       	and	r16, r17
 514:	34 21       	and	r19, r4
 516:	28 21       	and	r18, r8
 518:	02 02       	muls	r16, r18
 51a:	00 01       	movw	r0, r0
 51c:	01 00       	.word	0x0001	; ????
 51e:	05 02       	muls	r16, r21
 520:	00 00       	nop
 522:	00 00       	nop
 524:	03 e6       	ldi	r16, 0x63	; 99
 526:	00 01       	movw	r0, r0
 528:	5e 2f       	mov	r21, r30
 52a:	30 30       	cpi	r19, 0x00	; 0
 52c:	3e 03       	fmul	r19, r22
 52e:	af 01       	movw	r20, r30
 530:	2e 03       	fmul	r18, r22
 532:	d1 7e       	andi	r29, 0xE1	; 225
 534:	3c 24       	eor	r3, r12
 536:	03 0e       	add	r0, r19
 538:	9e 3d       	cpi	r25, 0xDE	; 222
 53a:	21 03       	mulsu	r18, r17
 53c:	70 20       	and	r7, r0
 53e:	03 26       	eor	r0, r19
 540:	4a 3d       	cpi	r20, 0xDA	; 218
 542:	21 03       	mulsu	r18, r17
 544:	6e 20       	and	r6, r14
 546:	3d 21       	and	r19, r13
 548:	26 3d       	cpi	r18, 0xD6	; 214
 54a:	21 03       	mulsu	r18, r17
 54c:	84 01       	movw	r16, r8
 54e:	20 51       	subi	r18, 0x10	; 16
 550:	02 04       	cpc	r0, r2
 552:	00 01       	movw	r0, r0
 554:	01 cb       	rjmp	.-2558   	; 0xfffffb58 <__eeprom_end+0xff7efb58>
 556:	01 00       	.word	0x0001	; ????
 558:	00 02       	muls	r16, r16
 55a:	00 36       	cpi	r16, 0x60	; 96
 55c:	01 00       	.word	0x0001	; ????
 55e:	00 02       	muls	r16, r16
 560:	01 fb       	bst	r16, 1
 562:	0e 0d       	add	r16, r14
 564:	00 01       	movw	r0, r0
 566:	01 01       	movw	r0, r2
 568:	01 00       	.word	0x0001	; ????
 56a:	00 00       	nop
 56c:	01 00       	.word	0x0001	; ????
 56e:	00 01       	movw	r0, r0
 570:	2f 55       	subi	r18, 0x5F	; 95
 572:	73 65       	ori	r23, 0x53	; 83
 574:	72 73       	andi	r23, 0x32	; 50
 576:	2f 6e       	ori	r18, 0xEF	; 239
 578:	61 6d       	ori	r22, 0xD1	; 209
 57a:	6b 65       	ori	r22, 0x5B	; 91
 57c:	2f 44       	sbci	r18, 0x4F	; 79
 57e:	65 73       	andi	r22, 0x35	; 53
 580:	6b 74       	andi	r22, 0x4B	; 75
 582:	6f 70       	andi	r22, 0x0F	; 15
 584:	2f 41       	sbci	r18, 0x1F	; 31
 586:	72 64       	ori	r23, 0x42	; 66
 588:	75 69       	ori	r23, 0x95	; 149
 58a:	6e 6f       	ori	r22, 0xFE	; 254
 58c:	2e 61       	ori	r18, 0x1E	; 30
 58e:	70 70       	andi	r23, 0x00	; 0
 590:	2f 43       	sbci	r18, 0x3F	; 63
 592:	6f 6e       	ori	r22, 0xEF	; 239
 594:	74 65       	ori	r23, 0x54	; 84
 596:	6e 74       	andi	r22, 0x4E	; 78
 598:	73 2f       	mov	r23, r19
 59a:	4a 61       	ori	r20, 0x1A	; 26
 59c:	76 61       	ori	r23, 0x16	; 22
 59e:	2f 68       	ori	r18, 0x8F	; 143
 5a0:	61 72       	andi	r22, 0x21	; 33
 5a2:	64 77       	andi	r22, 0x74	; 116
 5a4:	61 72       	andi	r22, 0x21	; 33
 5a6:	65 2f       	mov	r22, r21
 5a8:	61 72       	andi	r22, 0x21	; 33
 5aa:	64 75       	andi	r22, 0x54	; 84
 5ac:	69 6e       	ori	r22, 0xE9	; 233
 5ae:	6f 2f       	mov	r22, r31
 5b0:	61 76       	andi	r22, 0x61	; 97
 5b2:	72 2f       	mov	r23, r18
 5b4:	63 6f       	ori	r22, 0xF3	; 243
 5b6:	72 65       	ori	r23, 0x52	; 82
 5b8:	73 2f       	mov	r23, r19
 5ba:	61 72       	andi	r22, 0x21	; 33
 5bc:	64 75       	andi	r22, 0x54	; 84
 5be:	69 6e       	ori	r22, 0xE9	; 233
 5c0:	6f 00       	.word	0x006f	; ????
 5c2:	2f 55       	subi	r18, 0x5F	; 95
 5c4:	73 65       	ori	r23, 0x53	; 83
 5c6:	72 73       	andi	r23, 0x32	; 50
 5c8:	2f 6e       	ori	r18, 0xEF	; 239
 5ca:	61 6d       	ori	r22, 0xD1	; 209
 5cc:	6b 65       	ori	r22, 0x5B	; 91
 5ce:	2f 4c       	sbci	r18, 0xCF	; 207
 5d0:	69 62       	ori	r22, 0x29	; 41
 5d2:	72 61       	ori	r23, 0x12	; 18
 5d4:	72 79       	andi	r23, 0x92	; 146
 5d6:	2f 41       	sbci	r18, 0x1F	; 31
 5d8:	72 64       	ori	r23, 0x42	; 66
 5da:	75 69       	ori	r23, 0x95	; 149
 5dc:	6e 6f       	ori	r22, 0xFE	; 254
 5de:	31 35       	cpi	r19, 0x51	; 81
 5e0:	2f 70       	andi	r18, 0x0F	; 15
 5e2:	61 63       	ori	r22, 0x31	; 49
 5e4:	6b 61       	ori	r22, 0x1B	; 27
 5e6:	67 65       	ori	r22, 0x57	; 87
 5e8:	73 2f       	mov	r23, r19
 5ea:	61 74       	andi	r22, 0x41	; 65
 5ec:	74 69       	ori	r23, 0x94	; 148
 5ee:	6e 79       	andi	r22, 0x9E	; 158
 5f0:	2f 68       	ori	r18, 0x8F	; 143
 5f2:	61 72       	andi	r22, 0x21	; 33
 5f4:	64 77       	andi	r22, 0x74	; 116
 5f6:	61 72       	andi	r22, 0x21	; 33
 5f8:	65 2f       	mov	r22, r21
 5fa:	61 76       	andi	r22, 0x61	; 97
 5fc:	72 2f       	mov	r23, r18
 5fe:	31 2e       	mov	r3, r17
 600:	30 2e       	mov	r3, r16
 602:	31 2f       	mov	r19, r17
 604:	76 61       	ori	r23, 0x16	; 22
 606:	72 69       	ori	r23, 0x92	; 146
 608:	61 6e       	ori	r22, 0xE1	; 225
 60a:	74 73       	andi	r23, 0x34	; 52
 60c:	2f 74       	andi	r18, 0x4F	; 79
 60e:	69 6e       	ori	r22, 0xE9	; 233
 610:	79 38       	cpi	r23, 0x89	; 137
 612:	00 2f       	mov	r16, r16
 614:	55 73       	andi	r21, 0x35	; 53
 616:	65 72       	andi	r22, 0x25	; 37
 618:	73 2f       	mov	r23, r19
 61a:	6e 61       	ori	r22, 0x1E	; 30
 61c:	6d 6b       	ori	r22, 0xBD	; 189
 61e:	65 2f       	mov	r22, r21
 620:	44 65       	ori	r20, 0x54	; 84
 622:	73 6b       	ori	r23, 0xB3	; 179
 624:	74 6f       	ori	r23, 0xF4	; 244
 626:	70 2f       	mov	r23, r16
 628:	41 72       	andi	r20, 0x21	; 33
 62a:	64 75       	andi	r22, 0x54	; 84
 62c:	69 6e       	ori	r22, 0xE9	; 233
 62e:	6f 2e       	mov	r6, r31
 630:	61 70       	andi	r22, 0x01	; 1
 632:	70 2f       	mov	r23, r16
 634:	43 6f       	ori	r20, 0xF3	; 243
 636:	6e 74       	andi	r22, 0x4E	; 78
 638:	65 6e       	ori	r22, 0xE5	; 229
 63a:	74 73       	andi	r23, 0x34	; 52
 63c:	2f 4a       	sbci	r18, 0xAF	; 175
 63e:	61 76       	andi	r22, 0x61	; 97
 640:	61 2f       	mov	r22, r17
 642:	68 61       	ori	r22, 0x18	; 24
 644:	72 64       	ori	r23, 0x42	; 66
 646:	77 61       	ori	r23, 0x17	; 23
 648:	72 65       	ori	r23, 0x52	; 82
 64a:	2f 74       	andi	r18, 0x4F	; 79
 64c:	6f 6f       	ori	r22, 0xFF	; 255
 64e:	6c 73       	andi	r22, 0x3C	; 60
 650:	2f 61       	ori	r18, 0x1F	; 31
 652:	76 72       	andi	r23, 0x26	; 38
 654:	2f 61       	ori	r18, 0x1F	; 31
 656:	76 72       	andi	r23, 0x26	; 38
 658:	2f 69       	ori	r18, 0x9F	; 159
 65a:	6e 63       	ori	r22, 0x3E	; 62
 65c:	6c 75       	andi	r22, 0x5C	; 92
 65e:	64 65       	ori	r22, 0x54	; 84
 660:	00 00       	nop
 662:	77 69       	ori	r23, 0x97	; 151
 664:	72 69       	ori	r23, 0x92	; 146
 666:	6e 67       	ori	r22, 0x7E	; 126
 668:	5f 64       	ori	r21, 0x4F	; 79
 66a:	69 67       	ori	r22, 0x79	; 121
 66c:	69 74       	andi	r22, 0x49	; 73
 66e:	61 6c       	ori	r22, 0xC1	; 193
 670:	2e 63       	ori	r18, 0x3E	; 62
 672:	00 01       	movw	r0, r0
 674:	00 00       	nop
 676:	70 69       	ori	r23, 0x90	; 144
 678:	6e 73       	andi	r22, 0x3E	; 62
 67a:	5f 61       	ori	r21, 0x1F	; 31
 67c:	72 64       	ori	r23, 0x42	; 66
 67e:	75 69       	ori	r23, 0x95	; 149
 680:	6e 6f       	ori	r22, 0xFE	; 254
 682:	2e 68       	ori	r18, 0x8E	; 142
 684:	00 02       	muls	r16, r16
 686:	00 00       	nop
 688:	73 74       	andi	r23, 0x43	; 67
 68a:	64 69       	ori	r22, 0x94	; 148
 68c:	6e 74       	andi	r22, 0x4E	; 78
 68e:	2e 68       	ori	r18, 0x8E	; 142
 690:	00 03       	mulsu	r16, r16
 692:	00 00       	nop
 694:	00 00       	nop
 696:	05 02       	muls	r16, r21
 698:	00 00       	nop
 69a:	00 00       	nop
 69c:	03 cd       	rjmp	.-1530   	; 0xa4 <setup+0x44>
 69e:	00 01       	movw	r0, r0
 6a0:	13 b2       	in	r1, 0x13	; 19
 6a2:	03 0b       	sbc	r16, r19
 6a4:	4a 40       	sbci	r20, 0x0A	; 10
 6a6:	02 04       	cpc	r0, r2
 6a8:	00 01       	movw	r0, r0
 6aa:	01 04       	cpc	r0, r1
 6ac:	02 00       	.word	0x0002	; ????
 6ae:	05 02       	muls	r16, r21
 6b0:	9a 02       	muls	r25, r26
 6b2:	00 00       	nop
 6b4:	03 3a       	cpi	r16, 0xA3	; 163
 6b6:	01 13       	cpse	r16, r17
 6b8:	02 04       	cpc	r0, r2
 6ba:	00 01       	movw	r0, r0
 6bc:	01 00       	.word	0x0001	; ????
 6be:	05 02       	muls	r16, r21
 6c0:	a2 02       	muls	r26, r18
 6c2:	00 00       	nop
 6c4:	03 1f       	adc	r16, r19
 6c6:	01 2f       	mov	r16, r17
 6c8:	59 4d       	sbci	r21, 0xD9	; 217
 6ca:	31 83       	std	Z+1, r19	; 0x01
 6cc:	5b 1f       	adc	r21, r27
 6ce:	30 21       	and	r19, r0
 6d0:	4b 3e       	cpi	r20, 0xEB	; 235
 6d2:	30 21       	and	r19, r0
 6d4:	59 4e       	sbci	r21, 0xE9	; 233
 6d6:	21 3d       	cpi	r18, 0xD1	; 209
 6d8:	22 02       	muls	r18, r18
 6da:	03 00       	.word	0x0003	; ????
 6dc:	01 01       	movw	r0, r2
 6de:	00 05       	cpc	r16, r0
 6e0:	02 00       	.word	0x0002	; ????
 6e2:	00 00       	nop
 6e4:	00 03       	mulsu	r16, r16
 6e6:	8c 01       	movw	r16, r24
 6e8:	01 75       	andi	r16, 0x51	; 81
 6ea:	67 4b       	sbci	r22, 0xB7	; 183
 6ec:	4d 32       	cpi	r20, 0x2D	; 45
 6ee:	00 02       	muls	r16, r16
 6f0:	04 01       	movw	r0, r8
 6f2:	06 2e       	mov	r0, r22
 6f4:	06 3e       	cpi	r16, 0xE6	; 230
 6f6:	84 21       	and	r24, r4
 6f8:	23 1f       	adc	r18, r19
 6fa:	2f 3e       	cpi	r18, 0xEF	; 239
 6fc:	31 21       	and	r19, r1
 6fe:	02 06       	cpc	r0, r18
 700:	00 01       	movw	r0, r0
 702:	01 00       	.word	0x0001	; ????
 704:	05 02       	muls	r16, r21
 706:	00 00       	nop
 708:	00 00       	nop
 70a:	03 a7       	std	Z+43, r16	; 0x2b
 70c:	01 01       	movw	r0, r2
 70e:	2f 67       	ori	r18, 0x7F	; 127
 710:	4b 4c       	sbci	r20, 0xCB	; 203
 712:	32 00       	.word	0x0032	; ????
 714:	02 04       	cpc	r0, r2
 716:	01 06       	cpc	r0, r17
 718:	20 06       	cpc	r2, r16
 71a:	22 03       	mulsu	r18, r18
 71c:	7a e4       	ldi	r23, 0x4A	; 74
 71e:	36 02       	muls	r19, r22
 720:	03 00       	.word	0x0003	; ????
 722:	01 01       	movw	r0, r2
 724:	8f 01       	movw	r16, r30
 726:	00 00       	nop
 728:	02 00       	.word	0x0002	; ????
 72a:	4f 01       	movw	r8, r30
 72c:	00 00       	nop
 72e:	02 01       	movw	r0, r4
 730:	fb 0e       	add	r15, r27
 732:	0d 00       	.word	0x000d	; ????
 734:	01 01       	movw	r0, r2
 736:	01 01       	movw	r0, r2
 738:	00 00       	nop
 73a:	00 01       	movw	r0, r0
 73c:	00 00       	nop
 73e:	01 2f       	mov	r16, r17
 740:	55 73       	andi	r21, 0x35	; 53
 742:	65 72       	andi	r22, 0x25	; 37
 744:	73 2f       	mov	r23, r19
 746:	6e 61       	ori	r22, 0x1E	; 30
 748:	6d 6b       	ori	r22, 0xBD	; 189
 74a:	65 2f       	mov	r22, r21
 74c:	44 65       	ori	r20, 0x54	; 84
 74e:	73 6b       	ori	r23, 0xB3	; 179
 750:	74 6f       	ori	r23, 0xF4	; 244
 752:	70 2f       	mov	r23, r16
 754:	41 72       	andi	r20, 0x21	; 33
 756:	64 75       	andi	r22, 0x54	; 84
 758:	69 6e       	ori	r22, 0xE9	; 233
 75a:	6f 2e       	mov	r6, r31
 75c:	61 70       	andi	r22, 0x01	; 1
 75e:	70 2f       	mov	r23, r16
 760:	43 6f       	ori	r20, 0xF3	; 243
 762:	6e 74       	andi	r22, 0x4E	; 78
 764:	65 6e       	ori	r22, 0xE5	; 229
 766:	74 73       	andi	r23, 0x34	; 52
 768:	2f 4a       	sbci	r18, 0xAF	; 175
 76a:	61 76       	andi	r22, 0x61	; 97
 76c:	61 2f       	mov	r22, r17
 76e:	68 61       	ori	r22, 0x18	; 24
 770:	72 64       	ori	r23, 0x42	; 66
 772:	77 61       	ori	r23, 0x17	; 23
 774:	72 65       	ori	r23, 0x52	; 82
 776:	2f 61       	ori	r18, 0x1F	; 31
 778:	72 64       	ori	r23, 0x42	; 66
 77a:	75 69       	ori	r23, 0x95	; 149
 77c:	6e 6f       	ori	r22, 0xFE	; 254
 77e:	2f 61       	ori	r18, 0x1F	; 31
 780:	76 72       	andi	r23, 0x26	; 38
 782:	2f 63       	ori	r18, 0x3F	; 63
 784:	6f 72       	andi	r22, 0x2F	; 47
 786:	65 73       	andi	r22, 0x35	; 53
 788:	2f 61       	ori	r18, 0x1F	; 31
 78a:	72 64       	ori	r23, 0x42	; 66
 78c:	75 69       	ori	r23, 0x95	; 149
 78e:	6e 6f       	ori	r22, 0xFE	; 254
 790:	00 2f       	mov	r16, r16
 792:	55 73       	andi	r21, 0x35	; 53
 794:	65 72       	andi	r22, 0x25	; 37
 796:	73 2f       	mov	r23, r19
 798:	6e 61       	ori	r22, 0x1E	; 30
 79a:	6d 6b       	ori	r22, 0xBD	; 189
 79c:	65 2f       	mov	r22, r21
 79e:	4c 69       	ori	r20, 0x9C	; 156
 7a0:	62 72       	andi	r22, 0x22	; 34
 7a2:	61 72       	andi	r22, 0x21	; 33
 7a4:	79 2f       	mov	r23, r25
 7a6:	41 72       	andi	r20, 0x21	; 33
 7a8:	64 75       	andi	r22, 0x54	; 84
 7aa:	69 6e       	ori	r22, 0xE9	; 233
 7ac:	6f 31       	cpi	r22, 0x1F	; 31
 7ae:	35 2f       	mov	r19, r21
 7b0:	70 61       	ori	r23, 0x10	; 16
 7b2:	63 6b       	ori	r22, 0xB3	; 179
 7b4:	61 67       	ori	r22, 0x71	; 113
 7b6:	65 73       	andi	r22, 0x35	; 53
 7b8:	2f 61       	ori	r18, 0x1F	; 31
 7ba:	74 74       	andi	r23, 0x44	; 68
 7bc:	69 6e       	ori	r22, 0xE9	; 233
 7be:	79 2f       	mov	r23, r25
 7c0:	68 61       	ori	r22, 0x18	; 24
 7c2:	72 64       	ori	r23, 0x42	; 66
 7c4:	77 61       	ori	r23, 0x17	; 23
 7c6:	72 65       	ori	r23, 0x52	; 82
 7c8:	2f 61       	ori	r18, 0x1F	; 31
 7ca:	76 72       	andi	r23, 0x26	; 38
 7cc:	2f 31       	cpi	r18, 0x1F	; 31
 7ce:	2e 30       	cpi	r18, 0x0E	; 14
 7d0:	2e 31       	cpi	r18, 0x1E	; 30
 7d2:	2f 76       	andi	r18, 0x6F	; 111
 7d4:	61 72       	andi	r22, 0x21	; 33
 7d6:	69 61       	ori	r22, 0x19	; 25
 7d8:	6e 74       	andi	r22, 0x4E	; 78
 7da:	73 2f       	mov	r23, r19
 7dc:	74 69       	ori	r23, 0x94	; 148
 7de:	6e 79       	andi	r22, 0x9E	; 158
 7e0:	38 00       	.word	0x0038	; ????
 7e2:	2f 55       	subi	r18, 0x5F	; 95
 7e4:	73 65       	ori	r23, 0x53	; 83
 7e6:	72 73       	andi	r23, 0x32	; 50
 7e8:	2f 6e       	ori	r18, 0xEF	; 239
 7ea:	61 6d       	ori	r22, 0xD1	; 209
 7ec:	6b 65       	ori	r22, 0x5B	; 91
 7ee:	2f 44       	sbci	r18, 0x4F	; 79
 7f0:	65 73       	andi	r22, 0x35	; 53
 7f2:	6b 74       	andi	r22, 0x4B	; 75
 7f4:	6f 70       	andi	r22, 0x0F	; 15
 7f6:	2f 41       	sbci	r18, 0x1F	; 31
 7f8:	72 64       	ori	r23, 0x42	; 66
 7fa:	75 69       	ori	r23, 0x95	; 149
 7fc:	6e 6f       	ori	r22, 0xFE	; 254
 7fe:	2e 61       	ori	r18, 0x1E	; 30
 800:	70 70       	andi	r23, 0x00	; 0
 802:	2f 43       	sbci	r18, 0x3F	; 63
 804:	6f 6e       	ori	r22, 0xEF	; 239
 806:	74 65       	ori	r23, 0x54	; 84
 808:	6e 74       	andi	r22, 0x4E	; 78
 80a:	73 2f       	mov	r23, r19
 80c:	4a 61       	ori	r20, 0x1A	; 26
 80e:	76 61       	ori	r23, 0x16	; 22
 810:	2f 68       	ori	r18, 0x8F	; 143
 812:	61 72       	andi	r22, 0x21	; 33
 814:	64 77       	andi	r22, 0x74	; 116
 816:	61 72       	andi	r22, 0x21	; 33
 818:	65 2f       	mov	r22, r21
 81a:	74 6f       	ori	r23, 0xF4	; 244
 81c:	6f 6c       	ori	r22, 0xCF	; 207
 81e:	73 2f       	mov	r23, r19
 820:	61 76       	andi	r22, 0x61	; 97
 822:	72 2f       	mov	r23, r18
 824:	61 76       	andi	r22, 0x61	; 97
 826:	72 2f       	mov	r23, r18
 828:	69 6e       	ori	r22, 0xE9	; 233
 82a:	63 6c       	ori	r22, 0xC3	; 195
 82c:	75 64       	ori	r23, 0x45	; 69
 82e:	65 00       	.word	0x0065	; ????
 830:	00 6d       	ori	r16, 0xD0	; 208
 832:	61 69       	ori	r22, 0x91	; 145
 834:	6e 2e       	mov	r6, r30
 836:	63 70       	andi	r22, 0x03	; 3
 838:	70 00       	.word	0x0070	; ????
 83a:	01 00       	.word	0x0001	; ????
 83c:	00 70       	andi	r16, 0x00	; 0
 83e:	69 6e       	ori	r22, 0xE9	; 233
 840:	73 5f       	subi	r23, 0xF3	; 243
 842:	61 72       	andi	r22, 0x21	; 33
 844:	64 75       	andi	r22, 0x54	; 84
 846:	69 6e       	ori	r22, 0xE9	; 233
 848:	6f 2e       	mov	r6, r31
 84a:	68 00       	.word	0x0068	; ????
 84c:	02 00       	.word	0x0002	; ????
 84e:	00 41       	sbci	r16, 0x10	; 16
 850:	72 64       	ori	r23, 0x42	; 66
 852:	75 69       	ori	r23, 0x95	; 149
 854:	6e 6f       	ori	r22, 0xFE	; 254
 856:	2e 68       	ori	r18, 0x8E	; 142
 858:	00 01       	movw	r0, r0
 85a:	00 00       	nop
 85c:	73 74       	andi	r23, 0x43	; 67
 85e:	64 69       	ori	r22, 0x94	; 148
 860:	6e 74       	andi	r22, 0x4E	; 78
 862:	2e 68       	ori	r18, 0x8E	; 142
 864:	00 03       	mulsu	r16, r16
 866:	00 00       	nop
 868:	48 61       	ori	r20, 0x18	; 24
 86a:	72 64       	ori	r23, 0x42	; 66
 86c:	77 61       	ori	r23, 0x17	; 23
 86e:	72 65       	ori	r23, 0x52	; 82
 870:	53 65       	ori	r21, 0x53	; 83
 872:	72 69       	ori	r23, 0x92	; 146
 874:	61 6c       	ori	r22, 0xC1	; 193
 876:	2e 68       	ori	r18, 0x8E	; 142
 878:	00 01       	movw	r0, r0
 87a:	00 00       	nop
 87c:	00 00       	nop
 87e:	05 02       	muls	r16, r21
 880:	00 00       	nop
 882:	00 00       	nop
 884:	03 16       	cp	r0, r19
 886:	01 01       	movw	r0, r2
 888:	02 03       	mulsu	r16, r18
 88a:	00 01       	movw	r0, r0
 88c:	01 00       	.word	0x0001	; ????
 88e:	05 02       	muls	r16, r21
 890:	00 00       	nop
 892:	00 00       	nop
 894:	03 1b       	sub	r16, r19
 896:	01 02       	muls	r16, r17
 898:	01 00       	.word	0x0001	; ????
 89a:	01 01       	movw	r0, r2
 89c:	00 05       	cpc	r16, r0
 89e:	02 14       	cp	r0, r2
 8a0:	03 00       	.word	0x0003	; ????
 8a2:	00 03       	mulsu	r16, r16
 8a4:	1e 01       	movw	r2, r28
 8a6:	13 22       	and	r1, r19
 8a8:	26 24       	eor	r2, r6
 8aa:	2d 21       	and	r18, r13
 8ac:	00 02       	muls	r16, r16
 8ae:	04 01       	movw	r0, r8
 8b0:	06 2e       	mov	r0, r22
 8b2:	02 02       	muls	r16, r18
 8b4:	00 01       	movw	r0, r0
 8b6:	01 85       	ldd	r16, Z+9	; 0x09
 8b8:	00 00       	nop
 8ba:	00 02       	muls	r16, r16
 8bc:	00 70       	andi	r16, 0x00	; 0
 8be:	00 00       	nop
 8c0:	00 02       	muls	r16, r16
 8c2:	01 fb       	bst	r16, 1
 8c4:	0e 0d       	add	r16, r14
 8c6:	00 01       	movw	r0, r0
 8c8:	01 01       	movw	r0, r2
 8ca:	01 00       	.word	0x0001	; ????
 8cc:	00 00       	nop
 8ce:	01 00       	.word	0x0001	; ????
 8d0:	00 01       	movw	r0, r0
 8d2:	2f 55       	subi	r18, 0x5F	; 95
 8d4:	73 65       	ori	r23, 0x53	; 83
 8d6:	72 73       	andi	r23, 0x32	; 50
 8d8:	2f 6e       	ori	r18, 0xEF	; 239
 8da:	61 6d       	ori	r22, 0xD1	; 209
 8dc:	6b 65       	ori	r22, 0x5B	; 91
 8de:	2f 44       	sbci	r18, 0x4F	; 79
 8e0:	65 73       	andi	r22, 0x35	; 53
 8e2:	6b 74       	andi	r22, 0x4B	; 75
 8e4:	6f 70       	andi	r22, 0x0F	; 15
 8e6:	2f 41       	sbci	r18, 0x1F	; 31
 8e8:	72 64       	ori	r23, 0x42	; 66
 8ea:	75 69       	ori	r23, 0x95	; 149
 8ec:	6e 6f       	ori	r22, 0xFE	; 254
 8ee:	2e 61       	ori	r18, 0x1E	; 30
 8f0:	70 70       	andi	r23, 0x00	; 0
 8f2:	2f 43       	sbci	r18, 0x3F	; 63
 8f4:	6f 6e       	ori	r22, 0xEF	; 239
 8f6:	74 65       	ori	r23, 0x54	; 84
 8f8:	6e 74       	andi	r22, 0x4E	; 78
 8fa:	73 2f       	mov	r23, r19
 8fc:	4a 61       	ori	r20, 0x1A	; 26
 8fe:	76 61       	ori	r23, 0x16	; 22
 900:	2f 68       	ori	r18, 0x8F	; 143
 902:	61 72       	andi	r22, 0x21	; 33
 904:	64 77       	andi	r22, 0x74	; 116
 906:	61 72       	andi	r22, 0x21	; 33
 908:	65 2f       	mov	r22, r21
 90a:	61 72       	andi	r22, 0x21	; 33
 90c:	64 75       	andi	r22, 0x54	; 84
 90e:	69 6e       	ori	r22, 0xE9	; 233
 910:	6f 2f       	mov	r22, r31
 912:	61 76       	andi	r22, 0x61	; 97
 914:	72 2f       	mov	r23, r18
 916:	63 6f       	ori	r22, 0xF3	; 243
 918:	72 65       	ori	r23, 0x52	; 82
 91a:	73 2f       	mov	r23, r19
 91c:	61 72       	andi	r22, 0x21	; 33
 91e:	64 75       	andi	r22, 0x54	; 84
 920:	69 6e       	ori	r22, 0xE9	; 233
 922:	6f 00       	.word	0x006f	; ????
 924:	00 68       	ori	r16, 0x80	; 128
 926:	6f 6f       	ori	r22, 0xFF	; 255
 928:	6b 73       	andi	r22, 0x3B	; 59
 92a:	2e 63       	ori	r18, 0x3E	; 62
 92c:	00 01       	movw	r0, r0
 92e:	00 00       	nop
 930:	00 00       	nop
 932:	05 02       	muls	r16, r21
 934:	00 00       	nop
 936:	00 00       	nop
 938:	03 1b       	sub	r16, r19
 93a:	01 02       	muls	r16, r17
 93c:	01 00       	.word	0x0001	; ????
 93e:	01 01       	movw	r0, r2

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	10 00       	.word	0x0010	; ????
   2:	00 00       	nop
   4:	ff ff       	.word	0xffff	; ????
   6:	ff ff       	.word	0xffff	; ????
   8:	01 00       	.word	0x0001	; ????
   a:	02 7f       	andi	r16, 0xF2	; 242
   c:	24 0c       	add	r2, r4
   e:	20 02       	muls	r18, r16
  10:	a4 01       	movw	r20, r8
  12:	00 00       	nop
  14:	14 00       	.word	0x0014	; ????
  16:	00 00       	nop
  18:	00 00       	nop
  1a:	00 00       	nop
  1c:	60 00       	.word	0x0060	; ????
  1e:	00 00       	nop
  20:	6a 00       	.word	0x006a	; ????
  22:	00 00       	nop
  24:	41 0e       	add	r4, r17
  26:	03 9c       	mul	r0, r3
  28:	02 00       	.word	0x0002	; ????
  2a:	00 00       	nop
  2c:	0c 00       	.word	0x000c	; ????
  2e:	00 00       	nop
  30:	00 00       	nop
  32:	00 00       	nop
  34:	ca 00       	.word	0x00ca	; ????
  36:	00 00       	nop
  38:	34 00       	.word	0x0034	; ????
  3a:	00 00       	nop
  3c:	34 00       	.word	0x0034	; ????
  3e:	00 00       	nop
  40:	00 00       	nop
  42:	00 00       	nop
  44:	fe 00       	.word	0x00fe	; ????
  46:	00 00       	nop
  48:	98 00       	.word	0x0098	; ????
  4a:	00 00       	nop
  4c:	41 0e       	add	r4, r17
  4e:	03 81       	ldd	r16, Z+3	; 0x03
  50:	02 41       	sbci	r16, 0x12	; 18
  52:	0e 04       	cpc	r0, r14
  54:	80 03       	fmuls	r16, r16
  56:	44 0e       	add	r4, r20
  58:	05 92       	las	Z, r0
  5a:	04 41       	sbci	r16, 0x14	; 20
  5c:	0e 06       	cpc	r0, r30
  5e:	93 05       	cpc	r25, r3
  60:	41 0e       	add	r4, r17
  62:	07 94       	ror	r0
  64:	06 41       	sbci	r16, 0x16	; 22
  66:	0e 08       	sbc	r0, r14
  68:	95 07       	cpc	r25, r21
  6a:	41 0e       	add	r4, r17
  6c:	09 98       	cbi	0x01, 1	; 1
  6e:	08 41       	sbci	r16, 0x18	; 24
  70:	0e 0a       	sbc	r0, r30
  72:	99 09       	sbc	r25, r9
  74:	10 00       	.word	0x0010	; ????
  76:	00 00       	nop
  78:	ff ff       	.word	0xffff	; ????
  7a:	ff ff       	.word	0xffff	; ????
  7c:	01 00       	.word	0x0001	; ????
  7e:	02 7f       	andi	r16, 0xF2	; 242
  80:	24 0c       	add	r2, r4
  82:	20 02       	muls	r18, r16
  84:	a4 01       	movw	r20, r8
  86:	00 00       	nop
  88:	34 00       	.word	0x0034	; ????
  8a:	00 00       	nop
  8c:	74 00       	.word	0x0074	; ????
  8e:	00 00       	nop
  90:	96 01       	movw	r18, r12
  92:	00 00       	nop
  94:	94 00       	.word	0x0094	; ????
  96:	00 00       	nop
  98:	41 0e       	add	r4, r17
  9a:	03 81       	ldd	r16, Z+3	; 0x03
  9c:	02 41       	sbci	r16, 0x12	; 18
  9e:	0e 04       	cpc	r0, r14
  a0:	80 03       	fmuls	r16, r16
  a2:	44 0e       	add	r4, r20
  a4:	05 92       	las	Z, r0
  a6:	04 41       	sbci	r16, 0x14	; 20
  a8:	0e 06       	cpc	r0, r30
  aa:	93 05       	cpc	r25, r3
  ac:	41 0e       	add	r4, r17
  ae:	07 98       	cbi	0x00, 7	; 0
  b0:	06 41       	sbci	r16, 0x16	; 22
  b2:	0e 08       	sbc	r0, r14
  b4:	99 07       	cpc	r25, r25
  b6:	41 0e       	add	r4, r17
  b8:	09 9a       	sbi	0x01, 1	; 1
  ba:	08 41       	sbci	r16, 0x18	; 24
  bc:	0e 0a       	sbc	r0, r30
  be:	9b 09       	sbc	r25, r11
  c0:	0c 00       	.word	0x000c	; ????
  c2:	00 00       	nop
  c4:	74 00       	.word	0x0074	; ????
  c6:	00 00       	nop
  c8:	00 00       	nop
  ca:	00 00       	nop
  cc:	18 00       	.word	0x0018	; ????
  ce:	00 00       	nop
  d0:	0c 00       	.word	0x000c	; ????
  d2:	00 00       	nop
  d4:	74 00       	.word	0x0074	; ????
  d6:	00 00       	nop
  d8:	00 00       	nop
  da:	00 00       	nop
  dc:	48 00       	.word	0x0048	; ????
  de:	00 00       	nop
  e0:	2c 00       	.word	0x002c	; ????
  e2:	00 00       	nop
  e4:	74 00       	.word	0x0074	; ????
  e6:	00 00       	nop
  e8:	00 00       	nop
  ea:	00 00       	nop
  ec:	4a 00       	.word	0x004a	; ????
  ee:	00 00       	nop
  f0:	41 0e       	add	r4, r17
  f2:	03 8c       	ldd	r0, Z+27	; 0x1b
  f4:	02 41       	sbci	r16, 0x12	; 18
  f6:	0e 04       	cpc	r0, r14
  f8:	8d 03       	fmulsu	r16, r21
  fa:	41 0e       	add	r4, r17
  fc:	05 8e       	std	Z+29, r0	; 0x1d
  fe:	04 41       	sbci	r16, 0x14	; 20
 100:	0e 06       	cpc	r0, r30
 102:	8f 05       	cpc	r24, r15
 104:	41 0e       	add	r4, r17
 106:	07 9c       	mul	r0, r7
 108:	06 41       	sbci	r16, 0x16	; 22
 10a:	0e 08       	sbc	r0, r14
 10c:	9d 07       	cpc	r25, r29
 10e:	00 00       	nop
 110:	0c 00       	.word	0x000c	; ????
 112:	00 00       	nop
 114:	74 00       	.word	0x0074	; ????
 116:	00 00       	nop
 118:	2a 02       	muls	r18, r26
 11a:	00 00       	nop
 11c:	12 00       	.word	0x0012	; ????
 11e:	00 00       	nop
 120:	0c 00       	.word	0x000c	; ????
 122:	00 00       	nop
 124:	74 00       	.word	0x0074	; ????
 126:	00 00       	nop
 128:	3c 02       	muls	r19, r28
 12a:	00 00       	nop
 12c:	36 00       	.word	0x0036	; ????
 12e:	00 00       	nop
 130:	10 00       	.word	0x0010	; ????
 132:	00 00       	nop
 134:	ff ff       	.word	0xffff	; ????
 136:	ff ff       	.word	0xffff	; ????
 138:	01 00       	.word	0x0001	; ????
 13a:	02 7f       	andi	r16, 0xF2	; 242
 13c:	24 0c       	add	r2, r4
 13e:	20 02       	muls	r18, r16
 140:	a4 01       	movw	r20, r8
 142:	00 00       	nop
 144:	0c 00       	.word	0x000c	; ????
 146:	00 00       	nop
 148:	30 01       	movw	r6, r0
 14a:	00 00       	nop
 14c:	00 00       	nop
 14e:	00 00       	nop
 150:	06 00       	.word	0x0006	; ????
 152:	00 00       	nop
 154:	0c 00       	.word	0x000c	; ????
 156:	00 00       	nop
 158:	30 01       	movw	r6, r0
 15a:	00 00       	nop
 15c:	72 02       	muls	r23, r18
 15e:	00 00       	nop
 160:	28 00       	.word	0x0028	; ????
 162:	00 00       	nop
 164:	1c 00       	.word	0x001c	; ????
 166:	00 00       	nop
 168:	30 01       	movw	r6, r0
 16a:	00 00       	nop
 16c:	00 00       	nop
 16e:	00 00       	nop
 170:	7c 00       	.word	0x007c	; ????
 172:	00 00       	nop
 174:	41 0e       	add	r4, r17
 176:	03 91       	.word	0x9103	; ????
 178:	02 41       	sbci	r16, 0x12	; 18
 17a:	0e 04       	cpc	r0, r14
 17c:	9c 03       	fmulsu	r17, r20
 17e:	41 0e       	add	r4, r17
 180:	05 9d       	mul	r16, r5
 182:	04 00       	.word	0x0004	; ????
 184:	10 00       	.word	0x0010	; ????
 186:	00 00       	nop
 188:	ff ff       	.word	0xffff	; ????
 18a:	ff ff       	.word	0xffff	; ????
 18c:	01 00       	.word	0x0001	; ????
 18e:	02 7f       	andi	r16, 0xF2	; 242
 190:	24 0c       	add	r2, r4
 192:	20 02       	muls	r18, r16
 194:	a4 01       	movw	r20, r8
 196:	00 00       	nop
 198:	0c 00       	.word	0x000c	; ????
 19a:	00 00       	nop
 19c:	84 01       	movw	r16, r8
 19e:	00 00       	nop
 1a0:	00 00       	nop
 1a2:	00 00       	nop
 1a4:	2c 00       	.word	0x002c	; ????
 1a6:	00 00       	nop
 1a8:	0c 00       	.word	0x000c	; ????
 1aa:	00 00       	nop
 1ac:	84 01       	movw	r16, r8
 1ae:	00 00       	nop
 1b0:	9a 02       	muls	r25, r26
 1b2:	00 00       	nop
 1b4:	08 00       	.word	0x0008	; ????
 1b6:	00 00       	nop
 1b8:	18 00       	.word	0x0018	; ????
 1ba:	00 00       	nop
 1bc:	84 01       	movw	r16, r8
 1be:	00 00       	nop
 1c0:	a2 02       	muls	r26, r18
 1c2:	00 00       	nop
 1c4:	72 00       	.word	0x0072	; ????
 1c6:	00 00       	nop
 1c8:	41 0e       	add	r4, r17
 1ca:	03 9c       	mul	r0, r3
 1cc:	02 41       	sbci	r16, 0x12	; 18
 1ce:	0e 04       	cpc	r0, r14
 1d0:	9d 03       	fmulsu	r17, r21
 1d2:	00 00       	nop
 1d4:	28 00       	.word	0x0028	; ????
 1d6:	00 00       	nop
 1d8:	84 01       	movw	r16, r8
 1da:	00 00       	nop
 1dc:	00 00       	nop
 1de:	00 00       	nop
 1e0:	6a 00       	.word	0x006a	; ????
 1e2:	00 00       	nop
 1e4:	41 0e       	add	r4, r17
 1e6:	03 90       	.word	0x9003	; ????
 1e8:	02 41       	sbci	r16, 0x12	; 18
 1ea:	0e 04       	cpc	r0, r14
 1ec:	91 03       	fmuls	r17, r17
 1ee:	41 0e       	add	r4, r17
 1f0:	05 9c       	mul	r0, r5
 1f2:	04 41       	sbci	r16, 0x14	; 20
 1f4:	0e 06       	cpc	r0, r30
 1f6:	9d 05       	cpc	r25, r13
 1f8:	41 0e       	add	r4, r17
 1fa:	07 42       	sbci	r16, 0x27	; 39
 1fc:	0d 1c       	adc	r0, r13
 1fe:	00 00       	nop
 200:	18 00       	.word	0x0018	; ????
 202:	00 00       	nop
 204:	84 01       	movw	r16, r8
 206:	00 00       	nop
 208:	00 00       	nop
 20a:	00 00       	nop
 20c:	50 00       	.word	0x0050	; ????
 20e:	00 00       	nop
 210:	41 0e       	add	r4, r17
 212:	03 9c       	mul	r0, r3
 214:	02 41       	sbci	r16, 0x12	; 18
 216:	0e 04       	cpc	r0, r14
 218:	9d 03       	fmulsu	r17, r21
 21a:	00 00       	nop
 21c:	10 00       	.word	0x0010	; ????
 21e:	00 00       	nop
 220:	ff ff       	.word	0xffff	; ????
 222:	ff ff       	.word	0xffff	; ????
 224:	01 00       	.word	0x0001	; ????
 226:	02 7f       	andi	r16, 0xF2	; 242
 228:	24 0c       	add	r2, r4
 22a:	20 02       	muls	r18, r16
 22c:	a4 01       	movw	r20, r8
 22e:	00 00       	nop
 230:	0c 00       	.word	0x000c	; ????
 232:	00 00       	nop
 234:	1c 02       	muls	r17, r28
 236:	00 00       	nop
 238:	00 00       	nop
 23a:	00 00       	nop
 23c:	06 00       	.word	0x0006	; ????
 23e:	00 00       	nop
 240:	0c 00       	.word	0x000c	; ????
 242:	00 00       	nop
 244:	1c 02       	muls	r17, r28
 246:	00 00       	nop
 248:	00 00       	nop
 24a:	00 00       	nop
 24c:	02 00       	.word	0x0002	; ????
 24e:	00 00       	nop
 250:	0c 00       	.word	0x000c	; ????
 252:	00 00       	nop
 254:	1c 02       	muls	r17, r28
 256:	00 00       	nop
 258:	14 03       	mulsu	r17, r20
 25a:	00 00       	nop
 25c:	14 00       	.word	0x0014	; ????
 25e:	00 00       	nop
 260:	10 00       	.word	0x0010	; ????
 262:	00 00       	nop
 264:	ff ff       	.word	0xffff	; ????
 266:	ff ff       	.word	0xffff	; ????
 268:	01 00       	.word	0x0001	; ????
 26a:	02 7f       	andi	r16, 0xF2	; 242
 26c:	24 0c       	add	r2, r4
 26e:	20 02       	muls	r18, r16
 270:	a4 01       	movw	r20, r8
 272:	00 00       	nop
 274:	0c 00       	.word	0x000c	; ????
 276:	00 00       	nop
 278:	60 02       	muls	r22, r16
 27a:	00 00       	nop
 27c:	00 00       	nop
 27e:	00 00       	nop
 280:	02 00       	.word	0x0002	; ????
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	64 65       	ori	r22, 0x54	; 84
   2:	63 61       	ori	r22, 0x13	; 19
   4:	79 56       	subi	r23, 0x69	; 105
   6:	61 6c       	ori	r22, 0xC1	; 193
   8:	00 61       	ori	r16, 0x10	; 16
   a:	74 74       	andi	r23, 0x44	; 68
   c:	61 63       	ori	r22, 0x31	; 49
   e:	6b 56       	subi	r22, 0x6B	; 107
  10:	61 6c       	ori	r22, 0xC1	; 193
  12:	00 73       	andi	r16, 0x30	; 48
  14:	65 74       	andi	r22, 0x45	; 69
  16:	75 70       	andi	r23, 0x05	; 5
  18:	00 2f       	mov	r16, r16
  1a:	76 61       	ori	r23, 0x16	; 22
  1c:	72 2f       	mov	r23, r18
  1e:	66 6f       	ori	r22, 0xF6	; 246
  20:	6c 64       	ori	r22, 0x4C	; 76
  22:	65 72       	andi	r22, 0x25	; 37
  24:	73 2f       	mov	r23, r19
  26:	74 70       	andi	r23, 0x04	; 4
  28:	2f 37       	cpi	r18, 0x7F	; 127
  2a:	39 6b       	ori	r19, 0xB9	; 185
  2c:	6b 71       	andi	r22, 0x1B	; 27
  2e:	5f 36       	cpi	r21, 0x6F	; 111
  30:	78 36       	cpi	r23, 0x68	; 104
  32:	67 37       	cpi	r22, 0x77	; 119
  34:	31 74       	andi	r19, 0x41	; 65
  36:	30 36       	cpi	r19, 0x60	; 96
  38:	72 76       	andi	r23, 0x62	; 98
  3a:	6d 77       	andi	r22, 0x7D	; 125
  3c:	32 33       	cpi	r19, 0x32	; 50
  3e:	71 34       	cpi	r23, 0x41	; 65
  40:	30 30       	cpi	r19, 0x00	; 0
  42:	30 30       	cpi	r19, 0x00	; 0
  44:	30 67       	ori	r19, 0x70	; 112
  46:	70 2f       	mov	r23, r16
  48:	54 2f       	mov	r21, r20
  4a:	62 75       	andi	r22, 0x52	; 82
  4c:	69 6c       	ori	r22, 0xC9	; 201
  4e:	64 34       	cpi	r22, 0x44	; 68
  50:	30 38       	cpi	r19, 0x80	; 128
  52:	34 32       	cpi	r19, 0x24	; 36
  54:	36 32       	cpi	r19, 0x26	; 38
  56:	39 36       	cpi	r19, 0x69	; 105
  58:	30 37       	cpi	r19, 0x70	; 112
  5a:	30 39       	cpi	r19, 0x90	; 144
  5c:	33 38       	cpi	r19, 0x83	; 131
  5e:	32 37       	cpi	r19, 0x72	; 114
  60:	38 2e       	mov	r3, r24
  62:	74 6d       	ori	r23, 0xD4	; 212
  64:	70 2f       	mov	r23, r16
  66:	65 6e       	ori	r22, 0xE5	; 229
  68:	76 2e       	mov	r7, r22
  6a:	63 70       	andi	r22, 0x03	; 3
  6c:	70 00       	.word	0x0070	; ????
  6e:	61 64       	ori	r22, 0x41	; 65
  70:	63 56       	subi	r22, 0x63	; 99
  72:	61 6c       	ori	r22, 0xC1	; 193
  74:	00 62       	ori	r16, 0x20	; 32
  76:	6f 6f       	ori	r22, 0xFF	; 255
  78:	6c 00       	.word	0x006c	; ????
  7a:	77 61       	ori	r23, 0x17	; 23
  7c:	76 65       	ori	r23, 0x56	; 86
  7e:	53 65       	ori	r21, 0x53	; 83
  80:	6c 65       	ori	r22, 0x5C	; 92
  82:	63 74       	andi	r22, 0x43	; 67
  84:	00 5f       	subi	r16, 0xF0	; 240
  86:	5f 76       	andi	r21, 0x6F	; 111
  88:	65 63       	ori	r22, 0x35	; 53
  8a:	74 6f       	ori	r23, 0xF4	; 244
  8c:	72 5f       	subi	r23, 0xF2	; 242
  8e:	31 30       	cpi	r19, 0x01	; 1
  90:	00 6c       	ori	r16, 0xC0	; 192
  92:	6f 6f       	ori	r22, 0xFF	; 255
  94:	70 00       	.word	0x0070	; ????
  96:	66 6c       	ori	r22, 0xC6	; 198
  98:	6f 61       	ori	r22, 0x1F	; 31
  9a:	74 00       	.word	0x0074	; ????
  9c:	61 6e       	ori	r22, 0xE1	; 225
  9e:	61 6c       	ori	r22, 0xC1	; 193
  a0:	6f 67       	ori	r22, 0x7F	; 127
  a2:	52 65       	ori	r21, 0x52	; 82
  a4:	61 64       	ori	r22, 0x41	; 65
  a6:	00 73       	andi	r16, 0x30	; 48
  a8:	68 6f       	ori	r22, 0xF8	; 248
  aa:	72 74       	andi	r23, 0x42	; 66
  ac:	20 75       	andi	r18, 0x50	; 80
  ae:	6e 73       	andi	r22, 0x3E	; 62
  b0:	69 67       	ori	r22, 0x79	; 121
  b2:	6e 65       	ori	r22, 0x5E	; 94
  b4:	64 20       	and	r6, r4
  b6:	69 6e       	ori	r22, 0xE9	; 233
  b8:	74 00       	.word	0x0074	; ????
  ba:	64 65       	ori	r22, 0x54	; 84
  bc:	6c 61       	ori	r22, 0x1C	; 28
  be:	79 4d       	sbci	r23, 0xD9	; 217
  c0:	69 63       	ori	r22, 0x39	; 57
  c2:	72 6f       	ori	r23, 0xF2	; 242
  c4:	73 65       	ori	r23, 0x53	; 83
  c6:	63 6f       	ori	r22, 0xF3	; 243
  c8:	6e 64       	ori	r22, 0x4E	; 78
  ca:	73 00       	.word	0x0073	; ????
  cc:	70 69       	ori	r23, 0x90	; 144
  ce:	6e 4d       	sbci	r22, 0xDE	; 222
  d0:	6f 64       	ori	r22, 0x4F	; 79
  d2:	65 00       	.word	0x0065	; ????
  d4:	75 6e       	ori	r23, 0xE5	; 229
  d6:	73 69       	ori	r23, 0x93	; 147
  d8:	67 6e       	ori	r22, 0xE7	; 231
  da:	65 64       	ori	r22, 0x45	; 69
  dc:	20 63       	ori	r18, 0x30	; 48
  de:	68 61       	ori	r22, 0x18	; 24
  e0:	72 00       	.word	0x0072	; ????
  e2:	64 6f       	ori	r22, 0xF4	; 244
  e4:	75 62       	ori	r23, 0x25	; 37
  e6:	6c 65       	ori	r22, 0x5C	; 92
  e8:	00 61       	ori	r16, 0x10	; 16
  ea:	64 63       	ori	r22, 0x34	; 52
  ec:	4e 75       	andi	r20, 0x5E	; 94
  ee:	6d 00       	.word	0x006d	; ????
  f0:	6c 6f       	ori	r22, 0xFC	; 252
  f2:	6e 67       	ori	r22, 0x7E	; 126
  f4:	20 6c       	ori	r18, 0xC0	; 192
  f6:	6f 6e       	ori	r22, 0xEF	; 239
  f8:	67 20       	and	r6, r7
  fa:	75 6e       	ori	r23, 0xE5	; 229
  fc:	73 69       	ori	r23, 0x93	; 147
  fe:	67 6e       	ori	r22, 0xE7	; 231
 100:	65 64       	ori	r22, 0x45	; 69
 102:	20 69       	ori	r18, 0x90	; 144
 104:	6e 74       	andi	r22, 0x4E	; 78
 106:	00 75       	andi	r16, 0x50	; 80
 108:	69 6e       	ori	r22, 0xE9	; 233
 10a:	74 38       	cpi	r23, 0x84	; 132
 10c:	5f 74       	andi	r21, 0x4F	; 79
 10e:	00 6c       	ori	r16, 0xC0	; 192
 110:	6f 6e       	ori	r22, 0xEF	; 239
 112:	67 20       	and	r6, r7
 114:	6c 6f       	ori	r22, 0xFC	; 252
 116:	6e 67       	ori	r22, 0x7E	; 126
 118:	20 69       	ori	r18, 0x90	; 144
 11a:	6e 74       	andi	r22, 0x4E	; 78
 11c:	00 75       	andi	r16, 0x50	; 80
 11e:	69 6e       	ori	r22, 0xE9	; 233
 120:	74 31       	cpi	r23, 0x14	; 20
 122:	36 5f       	subi	r19, 0xF6	; 246
 124:	74 00       	.word	0x0074	; ????
 126:	2f 55       	subi	r18, 0x5F	; 95
 128:	73 65       	ori	r23, 0x53	; 83
 12a:	72 73       	andi	r23, 0x32	; 50
 12c:	2f 6e       	ori	r18, 0xEF	; 239
 12e:	61 6d       	ori	r22, 0xD1	; 209
 130:	6b 65       	ori	r22, 0x5B	; 91
 132:	00 63       	ori	r16, 0x30	; 48
 134:	75 72       	andi	r23, 0x25	; 37
 136:	72 65       	ori	r23, 0x52	; 82
 138:	6e 74       	andi	r22, 0x4E	; 78
 13a:	41 6d       	ori	r20, 0xD1	; 209
 13c:	70 6c       	ori	r23, 0xC0	; 192
 13e:	69 74       	andi	r22, 0x49	; 73
 140:	75 64       	ori	r23, 0x45	; 69
 142:	65 00       	.word	0x0065	; ????
 144:	47 4e       	sbci	r20, 0xE7	; 231
 146:	55 20       	and	r5, r5
 148:	43 2b       	or	r20, r19
 14a:	2b 20       	and	r2, r11
 14c:	34 2e       	mov	r3, r20
 14e:	38 2e       	mov	r3, r24
 150:	31 20       	and	r3, r1
 152:	2d 6d       	ori	r18, 0xDD	; 221
 154:	6d 63       	ori	r22, 0x3D	; 61
 156:	75 3d       	cpi	r23, 0xD5	; 213
 158:	61 74       	andi	r22, 0x41	; 65
 15a:	74 69       	ori	r23, 0x94	; 148
 15c:	6e 79       	andi	r22, 0x9E	; 158
 15e:	38 35       	cpi	r19, 0x58	; 88
 160:	20 2d       	mov	r18, r0
 162:	67 20       	and	r6, r7
 164:	2d 4f       	sbci	r18, 0xFD	; 253
 166:	73 20       	and	r7, r3
 168:	2d 66       	ori	r18, 0x6D	; 109
 16a:	66 75       	andi	r22, 0x56	; 86
 16c:	6e 63       	ori	r22, 0x3E	; 62
 16e:	74 69       	ori	r23, 0x94	; 148
 170:	6f 6e       	ori	r22, 0xEF	; 239
 172:	2d 73       	andi	r18, 0x3D	; 61
 174:	65 63       	ori	r22, 0x35	; 53
 176:	74 69       	ori	r23, 0x94	; 148
 178:	6f 6e       	ori	r22, 0xEF	; 239
 17a:	73 20       	and	r7, r3
 17c:	2d 66       	ori	r18, 0x6D	; 109
 17e:	64 61       	ori	r22, 0x14	; 20
 180:	74 61       	ori	r23, 0x14	; 20
 182:	2d 73       	andi	r18, 0x3D	; 61
 184:	65 63       	ori	r22, 0x35	; 53
 186:	74 69       	ori	r23, 0x94	; 148
 188:	6f 6e       	ori	r22, 0xEF	; 239
 18a:	73 20       	and	r7, r3
 18c:	2d 66       	ori	r18, 0x6D	; 109
 18e:	6e 6f       	ori	r22, 0xFE	; 254
 190:	2d 74       	andi	r18, 0x4D	; 77
 192:	68 72       	andi	r22, 0x28	; 40
 194:	65 61       	ori	r22, 0x15	; 21
 196:	64 73       	andi	r22, 0x34	; 52
 198:	61 66       	ori	r22, 0x61	; 97
 19a:	65 2d       	mov	r22, r5
 19c:	73 74       	andi	r23, 0x43	; 67
 19e:	61 74       	andi	r22, 0x41	; 65
 1a0:	69 63       	ori	r22, 0x39	; 57
 1a2:	73 20       	and	r7, r3
 1a4:	2d 66       	ori	r18, 0x6D	; 109
 1a6:	6e 6f       	ori	r22, 0xFE	; 254
 1a8:	2d 72       	andi	r18, 0x2D	; 45
 1aa:	74 74       	andi	r23, 0x44	; 68
 1ac:	69 20       	and	r6, r9
 1ae:	2d 66       	ori	r18, 0x6D	; 109
 1b0:	6e 6f       	ori	r22, 0xFE	; 254
 1b2:	2d 65       	ori	r18, 0x5D	; 93
 1b4:	6e 66       	ori	r22, 0x6E	; 110
 1b6:	6f 72       	andi	r22, 0x2F	; 47
 1b8:	63 65       	ori	r22, 0x53	; 83
 1ba:	2d 65       	ori	r18, 0x5D	; 93
 1bc:	68 2d       	mov	r22, r8
 1be:	73 70       	andi	r23, 0x03	; 3
 1c0:	65 63       	ori	r22, 0x35	; 53
 1c2:	73 20       	and	r7, r3
 1c4:	2d 66       	ori	r18, 0x6D	; 109
 1c6:	6e 6f       	ori	r22, 0xFE	; 254
 1c8:	2d 65       	ori	r18, 0x5D	; 93
 1ca:	78 63       	ori	r23, 0x38	; 56
 1cc:	65 70       	andi	r22, 0x05	; 5
 1ce:	74 69       	ori	r23, 0x94	; 148
 1d0:	6f 6e       	ori	r22, 0xEF	; 239
 1d2:	73 00       	.word	0x0073	; ????
 1d4:	74 69       	ori	r23, 0x94	; 148
 1d6:	6d 65       	ori	r22, 0x5D	; 93
 1d8:	72 30       	cpi	r23, 0x02	; 2
 1da:	5f 6f       	ori	r21, 0xFF	; 255
 1dc:	76 65       	ori	r23, 0x56	; 86
 1de:	72 66       	ori	r23, 0x62	; 98
 1e0:	6c 6f       	ori	r22, 0xFC	; 252
 1e2:	77 5f       	subi	r23, 0xF7	; 247
 1e4:	63 6f       	ori	r22, 0xF3	; 243
 1e6:	75 6e       	ori	r23, 0xE5	; 229
 1e8:	74 00       	.word	0x0074	; ????
 1ea:	73 74       	andi	r23, 0x43	; 67
 1ec:	61 72       	andi	r22, 0x21	; 33
 1ee:	74 00       	.word	0x0074	; ????
 1f0:	69 6e       	ori	r22, 0xE9	; 233
 1f2:	69 74       	andi	r22, 0x49	; 73
 1f4:	00 6d       	ori	r16, 0xD0	; 208
 1f6:	69 63       	ori	r22, 0x39	; 57
 1f8:	72 6f       	ori	r23, 0xF2	; 242
 1fa:	73 00       	.word	0x0073	; ????
 1fc:	74 69       	ori	r23, 0x94	; 148
 1fe:	6d 65       	ori	r22, 0x5D	; 93
 200:	72 30       	cpi	r23, 0x02	; 2
 202:	5f 6d       	ori	r21, 0xDF	; 223
 204:	69 6c       	ori	r22, 0xC9	; 201
 206:	6c 69       	ori	r22, 0x9C	; 156
 208:	73 00       	.word	0x0073	; ????
 20a:	64 65       	ori	r22, 0x54	; 84
 20c:	6c 61       	ori	r22, 0x1C	; 28
 20e:	79 00       	.word	0x0079	; ????
 210:	6f 6c       	ori	r22, 0xCF	; 207
 212:	64 53       	subi	r22, 0x34	; 52
 214:	52 45       	sbci	r21, 0x52	; 82
 216:	47 00       	.word	0x0047	; ????
 218:	47 4e       	sbci	r20, 0xE7	; 231
 21a:	55 20       	and	r5, r5
 21c:	43 20       	and	r4, r3
 21e:	34 2e       	mov	r3, r20
 220:	38 2e       	mov	r3, r24
 222:	31 20       	and	r3, r1
 224:	2d 6d       	ori	r18, 0xDD	; 221
 226:	6d 63       	ori	r22, 0x3D	; 61
 228:	75 3d       	cpi	r23, 0xD5	; 213
 22a:	61 74       	andi	r22, 0x41	; 65
 22c:	74 69       	ori	r23, 0x94	; 148
 22e:	6e 79       	andi	r22, 0x9E	; 158
 230:	38 35       	cpi	r19, 0x58	; 88
 232:	20 2d       	mov	r18, r0
 234:	67 20       	and	r6, r7
 236:	2d 4f       	sbci	r18, 0xFD	; 253
 238:	73 20       	and	r7, r3
 23a:	2d 66       	ori	r18, 0x6D	; 109
 23c:	66 75       	andi	r22, 0x56	; 86
 23e:	6e 63       	ori	r22, 0x3E	; 62
 240:	74 69       	ori	r23, 0x94	; 148
 242:	6f 6e       	ori	r22, 0xEF	; 239
 244:	2d 73       	andi	r18, 0x3D	; 61
 246:	65 63       	ori	r22, 0x35	; 53
 248:	74 69       	ori	r23, 0x94	; 148
 24a:	6f 6e       	ori	r22, 0xEF	; 239
 24c:	73 20       	and	r7, r3
 24e:	2d 66       	ori	r18, 0x6D	; 109
 250:	64 61       	ori	r22, 0x14	; 20
 252:	74 61       	ori	r23, 0x14	; 20
 254:	2d 73       	andi	r18, 0x3D	; 61
 256:	65 63       	ori	r22, 0x35	; 53
 258:	74 69       	ori	r23, 0x94	; 148
 25a:	6f 6e       	ori	r22, 0xEF	; 239
 25c:	73 00       	.word	0x0073	; ????
 25e:	79 69       	ori	r23, 0x99	; 153
 260:	65 6c       	ori	r22, 0xC5	; 197
 262:	64 00       	.word	0x0064	; ????
 264:	5f 5f       	subi	r21, 0xFF	; 255
 266:	76 65       	ori	r23, 0x56	; 86
 268:	63 74       	andi	r22, 0x43	; 67
 26a:	6f 72       	andi	r22, 0x2F	; 47
 26c:	5f 35       	cpi	r21, 0x5F	; 95
 26e:	00 2f       	mov	r16, r16
 270:	55 73       	andi	r21, 0x35	; 53
 272:	65 72       	andi	r22, 0x25	; 37
 274:	73 2f       	mov	r23, r19
 276:	6e 61       	ori	r22, 0x1E	; 30
 278:	6d 6b       	ori	r22, 0xBD	; 189
 27a:	65 2f       	mov	r22, r21
 27c:	44 65       	ori	r20, 0x54	; 84
 27e:	73 6b       	ori	r23, 0xB3	; 179
 280:	74 6f       	ori	r23, 0xF4	; 244
 282:	70 2f       	mov	r23, r16
 284:	41 72       	andi	r20, 0x21	; 33
 286:	64 75       	andi	r22, 0x54	; 84
 288:	69 6e       	ori	r22, 0xE9	; 233
 28a:	6f 2e       	mov	r6, r31
 28c:	61 70       	andi	r22, 0x01	; 1
 28e:	70 2f       	mov	r23, r16
 290:	43 6f       	ori	r20, 0xF3	; 243
 292:	6e 74       	andi	r22, 0x4E	; 78
 294:	65 6e       	ori	r22, 0xE5	; 229
 296:	74 73       	andi	r23, 0x34	; 52
 298:	2f 4a       	sbci	r18, 0xAF	; 175
 29a:	61 76       	andi	r22, 0x61	; 97
 29c:	61 2f       	mov	r22, r17
 29e:	68 61       	ori	r22, 0x18	; 24
 2a0:	72 64       	ori	r23, 0x42	; 66
 2a2:	77 61       	ori	r23, 0x17	; 23
 2a4:	72 65       	ori	r23, 0x52	; 82
 2a6:	2f 61       	ori	r18, 0x1F	; 31
 2a8:	72 64       	ori	r23, 0x42	; 66
 2aa:	75 69       	ori	r23, 0x95	; 149
 2ac:	6e 6f       	ori	r22, 0xFE	; 254
 2ae:	2f 61       	ori	r18, 0x1F	; 31
 2b0:	76 72       	andi	r23, 0x26	; 38
 2b2:	2f 63       	ori	r18, 0x3F	; 63
 2b4:	6f 72       	andi	r22, 0x2F	; 47
 2b6:	65 73       	andi	r22, 0x35	; 53
 2b8:	2f 61       	ori	r18, 0x1F	; 31
 2ba:	72 64       	ori	r23, 0x42	; 66
 2bc:	75 69       	ori	r23, 0x95	; 149
 2be:	6e 6f       	ori	r22, 0xFE	; 254
 2c0:	2f 77       	andi	r18, 0x7F	; 127
 2c2:	69 72       	andi	r22, 0x29	; 41
 2c4:	69 6e       	ori	r22, 0xE9	; 233
 2c6:	67 2e       	mov	r6, r23
 2c8:	63 00       	.word	0x0063	; ????
 2ca:	74 69       	ori	r23, 0x94	; 148
 2cc:	6d 65       	ori	r22, 0x5D	; 93
 2ce:	72 30       	cpi	r23, 0x02	; 2
 2d0:	5f 66       	ori	r21, 0x6F	; 111
 2d2:	72 61       	ori	r23, 0x12	; 18
 2d4:	63 74       	andi	r22, 0x43	; 67
 2d6:	00 5f       	subi	r16, 0xF0	; 240
 2d8:	42 6f       	ori	r20, 0xF2	; 242
 2da:	6f 6c       	ori	r22, 0xCF	; 207
 2dc:	00 5f       	subi	r16, 0xF0	; 240
 2de:	5f 61       	ori	r21, 0x1F	; 31
 2e0:	64 64       	ori	r22, 0x44	; 68
 2e2:	72 31       	cpi	r23, 0x12	; 18
 2e4:	36 00       	.word	0x0036	; ????
 2e6:	61 6e       	ori	r22, 0xE1	; 225
 2e8:	61 6c       	ori	r22, 0xC1	; 193
 2ea:	6f 67       	ori	r22, 0x7F	; 127
 2ec:	52 65       	ori	r21, 0x52	; 82
 2ee:	66 65       	ori	r22, 0x56	; 86
 2f0:	72 65       	ori	r23, 0x52	; 82
 2f2:	6e 63       	ori	r22, 0x3E	; 62
 2f4:	65 00       	.word	0x0065	; ????
 2f6:	68 69       	ori	r22, 0x98	; 152
 2f8:	67 68       	ori	r22, 0x87	; 135
 2fa:	00 61       	ori	r16, 0x10	; 16
 2fc:	6e 61       	ori	r22, 0x1E	; 30
 2fe:	6c 6f       	ori	r22, 0xFC	; 252
 300:	67 5f       	subi	r22, 0xF7	; 247
 302:	72 65       	ori	r23, 0x52	; 82
 304:	66 65       	ori	r22, 0x56	; 86
 306:	72 65       	ori	r23, 0x52	; 82
 308:	6e 63       	ori	r22, 0x3E	; 62
 30a:	65 00       	.word	0x0065	; ????
 30c:	64 69       	ori	r22, 0x94	; 148
 30e:	67 69       	ori	r22, 0x97	; 151
 310:	74 61       	ori	r23, 0x14	; 20
 312:	6c 57       	subi	r22, 0x7C	; 124
 314:	72 69       	ori	r23, 0x92	; 146
 316:	74 65       	ori	r23, 0x54	; 84
 318:	00 64       	ori	r16, 0x40	; 64
 31a:	69 67       	ori	r22, 0x79	; 121
 31c:	69 74       	andi	r22, 0x49	; 73
 31e:	61 6c       	ori	r22, 0xC1	; 193
 320:	5f 70       	andi	r21, 0x0F	; 15
 322:	69 6e       	ori	r22, 0xE9	; 233
 324:	5f 74       	andi	r21, 0x4F	; 79
 326:	6f 5f       	subi	r22, 0xFF	; 255
 328:	74 69       	ori	r23, 0x94	; 148
 32a:	6d 65       	ori	r22, 0x5D	; 93
 32c:	72 5f       	subi	r23, 0xF2	; 242
 32e:	50 47       	sbci	r21, 0x70	; 112
 330:	4d 00       	.word	0x004d	; ????
 332:	61 6e       	ori	r22, 0xE1	; 225
 334:	61 6c       	ori	r22, 0xC1	; 193
 336:	6f 67       	ori	r22, 0x7F	; 127
 338:	57 72       	andi	r21, 0x27	; 39
 33a:	69 74       	andi	r22, 0x49	; 73
 33c:	65 00       	.word	0x0065	; ????
 33e:	5f 5f       	subi	r21, 0xFF	; 255
 340:	72 65       	ori	r23, 0x52	; 82
 342:	73 75       	andi	r23, 0x53	; 83
 344:	6c 74       	andi	r22, 0x4C	; 76
 346:	00 6d       	ori	r16, 0xD0	; 208
 348:	6f 64       	ori	r22, 0x4F	; 79
 34a:	65 00       	.word	0x0065	; ????
 34c:	2f 55       	subi	r18, 0x5F	; 95
 34e:	73 65       	ori	r23, 0x53	; 83
 350:	72 73       	andi	r23, 0x32	; 50
 352:	2f 6e       	ori	r18, 0xEF	; 239
 354:	61 6d       	ori	r22, 0xD1	; 209
 356:	6b 65       	ori	r22, 0x5B	; 91
 358:	2f 44       	sbci	r18, 0x4F	; 79
 35a:	65 73       	andi	r22, 0x35	; 53
 35c:	6b 74       	andi	r22, 0x4B	; 75
 35e:	6f 70       	andi	r22, 0x0F	; 15
 360:	2f 41       	sbci	r18, 0x1F	; 31
 362:	72 64       	ori	r23, 0x42	; 66
 364:	75 69       	ori	r23, 0x95	; 149
 366:	6e 6f       	ori	r22, 0xFE	; 254
 368:	2e 61       	ori	r18, 0x1E	; 30
 36a:	70 70       	andi	r23, 0x00	; 0
 36c:	2f 43       	sbci	r18, 0x3F	; 63
 36e:	6f 6e       	ori	r22, 0xEF	; 239
 370:	74 65       	ori	r23, 0x54	; 84
 372:	6e 74       	andi	r22, 0x4E	; 78
 374:	73 2f       	mov	r23, r19
 376:	4a 61       	ori	r20, 0x1A	; 26
 378:	76 61       	ori	r23, 0x16	; 22
 37a:	2f 68       	ori	r18, 0x8F	; 143
 37c:	61 72       	andi	r22, 0x21	; 33
 37e:	64 77       	andi	r22, 0x74	; 116
 380:	61 72       	andi	r22, 0x21	; 33
 382:	65 2f       	mov	r22, r21
 384:	61 72       	andi	r22, 0x21	; 33
 386:	64 75       	andi	r22, 0x54	; 84
 388:	69 6e       	ori	r22, 0xE9	; 233
 38a:	6f 2f       	mov	r22, r31
 38c:	61 76       	andi	r22, 0x61	; 97
 38e:	72 2f       	mov	r23, r18
 390:	63 6f       	ori	r22, 0xF3	; 243
 392:	72 65       	ori	r23, 0x52	; 82
 394:	73 2f       	mov	r23, r19
 396:	61 72       	andi	r22, 0x21	; 33
 398:	64 75       	andi	r22, 0x54	; 84
 39a:	69 6e       	ori	r22, 0xE9	; 233
 39c:	6f 2f       	mov	r22, r31
 39e:	77 69       	ori	r23, 0x97	; 151
 3a0:	72 69       	ori	r23, 0x92	; 146
 3a2:	6e 67       	ori	r22, 0x7E	; 126
 3a4:	5f 61       	ori	r21, 0x1F	; 31
 3a6:	6e 61       	ori	r22, 0x1E	; 30
 3a8:	6c 6f       	ori	r22, 0xFC	; 252
 3aa:	67 2e       	mov	r6, r23
 3ac:	63 00       	.word	0x0063	; ????
 3ae:	73 69       	ori	r23, 0x93	; 147
 3b0:	7a 65       	ori	r23, 0x5A	; 90
 3b2:	74 79       	andi	r23, 0x94	; 148
 3b4:	70 65       	ori	r23, 0x50	; 80
 3b6:	00 74       	andi	r16, 0x40	; 64
 3b8:	69 6d       	ori	r22, 0xD9	; 217
 3ba:	65 72       	andi	r22, 0x25	; 37
 3bc:	00 74       	andi	r16, 0x40	; 64
 3be:	75 72       	andi	r23, 0x25	; 37
 3c0:	6e 4f       	sbci	r22, 0xFE	; 254
 3c2:	66 66       	ori	r22, 0x66	; 102
 3c4:	50 57       	subi	r21, 0x70	; 112
 3c6:	4d 00       	.word	0x004d	; ????
 3c8:	70 6f       	ori	r23, 0xF0	; 240
 3ca:	72 74       	andi	r23, 0x42	; 66
 3cc:	5f 74       	andi	r21, 0x4F	; 79
 3ce:	6f 5f       	subi	r22, 0xFF	; 255
 3d0:	6d 6f       	ori	r22, 0xFD	; 253
 3d2:	64 65       	ori	r22, 0x54	; 84
 3d4:	5f 50       	subi	r21, 0x0F	; 15
 3d6:	47 4d       	sbci	r20, 0xD7	; 215
 3d8:	00 70       	andi	r16, 0x00	; 0
 3da:	6f 72       	andi	r22, 0x2F	; 47
 3dc:	74 5f       	subi	r23, 0xF4	; 244
 3de:	74 6f       	ori	r23, 0xF4	; 244
 3e0:	5f 6f       	ori	r21, 0xFF	; 255
 3e2:	75 74       	andi	r23, 0x45	; 69
 3e4:	70 75       	andi	r23, 0x50	; 80
 3e6:	74 5f       	subi	r23, 0xF4	; 244
 3e8:	50 47       	sbci	r21, 0x70	; 112
 3ea:	4d 00       	.word	0x004d	; ????
 3ec:	69 6e       	ori	r22, 0xE9	; 233
 3ee:	69 74       	andi	r22, 0x49	; 73
 3f0:	56 61       	ori	r21, 0x16	; 22
 3f2:	72 69       	ori	r23, 0x92	; 146
 3f4:	61 6e       	ori	r22, 0xE1	; 225
 3f6:	74 00       	.word	0x0074	; ????
 3f8:	2f 55       	subi	r18, 0x5F	; 95
 3fa:	73 65       	ori	r23, 0x53	; 83
 3fc:	72 73       	andi	r23, 0x32	; 50
 3fe:	2f 6e       	ori	r18, 0xEF	; 239
 400:	61 6d       	ori	r22, 0xD1	; 209
 402:	6b 65       	ori	r22, 0x5B	; 91
 404:	2f 44       	sbci	r18, 0x4F	; 79
 406:	65 73       	andi	r22, 0x35	; 53
 408:	6b 74       	andi	r22, 0x4B	; 75
 40a:	6f 70       	andi	r22, 0x0F	; 15
 40c:	2f 41       	sbci	r18, 0x1F	; 31
 40e:	72 64       	ori	r23, 0x42	; 66
 410:	75 69       	ori	r23, 0x95	; 149
 412:	6e 6f       	ori	r22, 0xFE	; 254
 414:	2e 61       	ori	r18, 0x1E	; 30
 416:	70 70       	andi	r23, 0x00	; 0
 418:	2f 43       	sbci	r18, 0x3F	; 63
 41a:	6f 6e       	ori	r22, 0xEF	; 239
 41c:	74 65       	ori	r23, 0x54	; 84
 41e:	6e 74       	andi	r22, 0x4E	; 78
 420:	73 2f       	mov	r23, r19
 422:	4a 61       	ori	r20, 0x1A	; 26
 424:	76 61       	ori	r23, 0x16	; 22
 426:	2f 68       	ori	r18, 0x8F	; 143
 428:	61 72       	andi	r22, 0x21	; 33
 42a:	64 77       	andi	r22, 0x74	; 116
 42c:	61 72       	andi	r22, 0x21	; 33
 42e:	65 2f       	mov	r22, r21
 430:	61 72       	andi	r22, 0x21	; 33
 432:	64 75       	andi	r22, 0x54	; 84
 434:	69 6e       	ori	r22, 0xE9	; 233
 436:	6f 2f       	mov	r22, r31
 438:	61 76       	andi	r22, 0x61	; 97
 43a:	72 2f       	mov	r23, r18
 43c:	63 6f       	ori	r22, 0xF3	; 243
 43e:	72 65       	ori	r23, 0x52	; 82
 440:	73 2f       	mov	r23, r19
 442:	61 72       	andi	r22, 0x21	; 33
 444:	64 75       	andi	r22, 0x54	; 84
 446:	69 6e       	ori	r22, 0xE9	; 233
 448:	6f 2f       	mov	r22, r31
 44a:	77 69       	ori	r23, 0x97	; 151
 44c:	72 69       	ori	r23, 0x92	; 146
 44e:	6e 67       	ori	r22, 0x7E	; 126
 450:	5f 64       	ori	r21, 0x4F	; 79
 452:	69 67       	ori	r22, 0x79	; 121
 454:	69 74       	andi	r22, 0x49	; 73
 456:	61 6c       	ori	r22, 0xC1	; 193
 458:	2e 63       	ori	r18, 0x3E	; 62
 45a:	00 70       	andi	r16, 0x00	; 0
 45c:	6f 72       	andi	r22, 0x2F	; 47
 45e:	74 00       	.word	0x0074	; ????
 460:	64 69       	ori	r22, 0x94	; 148
 462:	67 69       	ori	r22, 0x97	; 151
 464:	74 61       	ori	r23, 0x14	; 20
 466:	6c 5f       	subi	r22, 0xFC	; 252
 468:	70 69       	ori	r23, 0x90	; 144
 46a:	6e 5f       	subi	r22, 0xFE	; 254
 46c:	74 6f       	ori	r23, 0xF4	; 244
 46e:	5f 70       	andi	r21, 0x0F	; 15
 470:	6f 72       	andi	r22, 0x2F	; 47
 472:	74 5f       	subi	r23, 0xF4	; 244
 474:	50 47       	sbci	r21, 0x70	; 112
 476:	4d 00       	.word	0x004d	; ????
 478:	70 6f       	ori	r23, 0xF0	; 240
 47a:	72 74       	andi	r23, 0x42	; 66
 47c:	5f 74       	andi	r21, 0x4F	; 79
 47e:	6f 5f       	subi	r22, 0xFF	; 255
 480:	69 6e       	ori	r22, 0xE9	; 233
 482:	70 75       	andi	r23, 0x50	; 80
 484:	74 5f       	subi	r23, 0xF4	; 244
 486:	50 47       	sbci	r21, 0x70	; 112
 488:	4d 00       	.word	0x004d	; ????
 48a:	64 69       	ori	r22, 0x94	; 148
 48c:	67 69       	ori	r22, 0x97	; 151
 48e:	74 61       	ori	r23, 0x14	; 20
 490:	6c 5f       	subi	r22, 0xFC	; 252
 492:	70 69       	ori	r23, 0x90	; 144
 494:	6e 5f       	subi	r22, 0xFE	; 254
 496:	74 6f       	ori	r23, 0xF4	; 244
 498:	5f 62       	ori	r21, 0x2F	; 47
 49a:	69 74       	andi	r22, 0x49	; 73
 49c:	5f 6d       	ori	r21, 0xDF	; 223
 49e:	61 73       	andi	r22, 0x31	; 49
 4a0:	6b 5f       	subi	r22, 0xFB	; 251
 4a2:	50 47       	sbci	r21, 0x70	; 112
 4a4:	4d 00       	.word	0x004d	; ????
 4a6:	64 69       	ori	r22, 0x94	; 148
 4a8:	67 69       	ori	r22, 0x97	; 151
 4aa:	74 61       	ori	r23, 0x14	; 20
 4ac:	6c 52       	subi	r22, 0x2C	; 44
 4ae:	65 61       	ori	r22, 0x15	; 21
 4b0:	64 00       	.word	0x0064	; ????
 4b2:	5f 5a       	subi	r21, 0xAF	; 175
 4b4:	31 34       	cpi	r19, 0x41	; 65
 4b6:	73 65       	ori	r23, 0x53	; 83
 4b8:	72 69       	ori	r23, 0x92	; 146
 4ba:	61 6c       	ori	r22, 0xC1	; 193
 4bc:	45 76       	andi	r20, 0x65	; 101
 4be:	65 6e       	ori	r22, 0xE5	; 229
 4c0:	74 52       	subi	r23, 0x24	; 36
 4c2:	75 6e       	ori	r23, 0xE5	; 229
 4c4:	76 00       	.word	0x0076	; ????
 4c6:	73 65       	ori	r23, 0x53	; 83
 4c8:	72 69       	ori	r23, 0x92	; 146
 4ca:	61 6c       	ori	r22, 0xC1	; 193
 4cc:	45 76       	andi	r20, 0x65	; 101
 4ce:	65 6e       	ori	r22, 0xE5	; 229
 4d0:	74 52       	subi	r23, 0x24	; 36
 4d2:	75 6e       	ori	r23, 0xE5	; 229
 4d4:	00 61       	ori	r16, 0x10	; 16
 4d6:	74 65       	ori	r23, 0x54	; 84
 4d8:	78 69       	ori	r23, 0x98	; 152
 4da:	74 00       	.word	0x0074	; ????
 4dc:	6d 61       	ori	r22, 0x1D	; 29
 4de:	69 6e       	ori	r22, 0xE9	; 233
 4e0:	00 2f       	mov	r16, r16
 4e2:	55 73       	andi	r21, 0x35	; 53
 4e4:	65 72       	andi	r22, 0x25	; 37
 4e6:	73 2f       	mov	r23, r19
 4e8:	6e 61       	ori	r22, 0x1E	; 30
 4ea:	6d 6b       	ori	r22, 0xBD	; 189
 4ec:	65 2f       	mov	r22, r21
 4ee:	44 65       	ori	r20, 0x54	; 84
 4f0:	73 6b       	ori	r23, 0xB3	; 179
 4f2:	74 6f       	ori	r23, 0xF4	; 244
 4f4:	70 2f       	mov	r23, r16
 4f6:	41 72       	andi	r20, 0x21	; 33
 4f8:	64 75       	andi	r22, 0x54	; 84
 4fa:	69 6e       	ori	r22, 0xE9	; 233
 4fc:	6f 2e       	mov	r6, r31
 4fe:	61 70       	andi	r22, 0x01	; 1
 500:	70 2f       	mov	r23, r16
 502:	43 6f       	ori	r20, 0xF3	; 243
 504:	6e 74       	andi	r22, 0x4E	; 78
 506:	65 6e       	ori	r22, 0xE5	; 229
 508:	74 73       	andi	r23, 0x34	; 52
 50a:	2f 4a       	sbci	r18, 0xAF	; 175
 50c:	61 76       	andi	r22, 0x61	; 97
 50e:	61 2f       	mov	r22, r17
 510:	68 61       	ori	r22, 0x18	; 24
 512:	72 64       	ori	r23, 0x42	; 66
 514:	77 61       	ori	r23, 0x17	; 23
 516:	72 65       	ori	r23, 0x52	; 82
 518:	2f 61       	ori	r18, 0x1F	; 31
 51a:	72 64       	ori	r23, 0x42	; 66
 51c:	75 69       	ori	r23, 0x95	; 149
 51e:	6e 6f       	ori	r22, 0xFE	; 254
 520:	2f 61       	ori	r18, 0x1F	; 31
 522:	76 72       	andi	r23, 0x26	; 38
 524:	2f 63       	ori	r18, 0x3F	; 63
 526:	6f 72       	andi	r22, 0x2F	; 47
 528:	65 73       	andi	r22, 0x35	; 53
 52a:	2f 61       	ori	r18, 0x1F	; 31
 52c:	72 64       	ori	r23, 0x42	; 66
 52e:	75 69       	ori	r23, 0x95	; 149
 530:	6e 6f       	ori	r22, 0xFE	; 254
 532:	2f 6d       	ori	r18, 0xDF	; 223
 534:	61 69       	ori	r22, 0x91	; 145
 536:	6e 2e       	mov	r6, r30
 538:	63 70       	andi	r22, 0x03	; 3
 53a:	70 00       	.word	0x0070	; ????
 53c:	5f 5f       	subi	r21, 0xFF	; 255
 53e:	65 6d       	ori	r22, 0xD5	; 213
 540:	70 74       	andi	r23, 0x40	; 64
 542:	79 00       	.word	0x0079	; ????
 544:	2f 55       	subi	r18, 0x5F	; 95
 546:	73 65       	ori	r23, 0x53	; 83
 548:	72 73       	andi	r23, 0x32	; 50
 54a:	2f 6e       	ori	r18, 0xEF	; 239
 54c:	61 6d       	ori	r22, 0xD1	; 209
 54e:	6b 65       	ori	r22, 0x5B	; 91
 550:	2f 44       	sbci	r18, 0x4F	; 79
 552:	65 73       	andi	r22, 0x35	; 53
 554:	6b 74       	andi	r22, 0x4B	; 75
 556:	6f 70       	andi	r22, 0x0F	; 15
 558:	2f 41       	sbci	r18, 0x1F	; 31
 55a:	72 64       	ori	r23, 0x42	; 66
 55c:	75 69       	ori	r23, 0x95	; 149
 55e:	6e 6f       	ori	r22, 0xFE	; 254
 560:	2e 61       	ori	r18, 0x1E	; 30
 562:	70 70       	andi	r23, 0x00	; 0
 564:	2f 43       	sbci	r18, 0x3F	; 63
 566:	6f 6e       	ori	r22, 0xEF	; 239
 568:	74 65       	ori	r23, 0x54	; 84
 56a:	6e 74       	andi	r22, 0x4E	; 78
 56c:	73 2f       	mov	r23, r19
 56e:	4a 61       	ori	r20, 0x1A	; 26
 570:	76 61       	ori	r23, 0x16	; 22
 572:	2f 68       	ori	r18, 0x8F	; 143
 574:	61 72       	andi	r22, 0x21	; 33
 576:	64 77       	andi	r22, 0x74	; 116
 578:	61 72       	andi	r22, 0x21	; 33
 57a:	65 2f       	mov	r22, r21
 57c:	61 72       	andi	r22, 0x21	; 33
 57e:	64 75       	andi	r22, 0x54	; 84
 580:	69 6e       	ori	r22, 0xE9	; 233
 582:	6f 2f       	mov	r22, r31
 584:	61 76       	andi	r22, 0x61	; 97
 586:	72 2f       	mov	r23, r18
 588:	63 6f       	ori	r22, 0xF3	; 243
 58a:	72 65       	ori	r23, 0x52	; 82
 58c:	73 2f       	mov	r23, r19
 58e:	61 72       	andi	r22, 0x21	; 33
 590:	64 75       	andi	r22, 0x54	; 84
 592:	69 6e       	ori	r22, 0xE9	; 233
 594:	6f 2f       	mov	r22, r31
 596:	68 6f       	ori	r22, 0xF8	; 248
 598:	6f 6b       	ori	r22, 0xBF	; 191
 59a:	73 2e       	mov	r7, r19
 59c:	63 00       	.word	0x0063	; ????

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	60 00       	.word	0x0060	; ????
   2:	00 00       	nop
   4:	62 00       	.word	0x0062	; ????
   6:	00 00       	nop
   8:	03 00       	.word	0x0003	; ????
   a:	92 20       	and	r9, r2
   c:	02 62       	ori	r16, 0x22	; 34
   e:	00 00       	nop
  10:	00 ca       	rjmp	.-3072   	; 0xfffff412 <__eeprom_end+0xff7ef412>
  12:	00 00       	nop
  14:	00 03       	mulsu	r16, r16
  16:	00 92 20 03 	sts	0x0320, r0
	...
  22:	d0 00       	.word	0x00d0	; ????
  24:	00 00       	nop
  26:	f0 00       	.word	0x00f0	; ????
  28:	00 00       	nop
  2a:	06 00       	.word	0x0006	; ????
  2c:	68 93       	.word	0x9368	; ????
  2e:	01 69       	ori	r16, 0x91	; 145
  30:	93 01       	movw	r18, r6
	...
  3a:	fe 00       	.word	0x00fe	; ????
  3c:	00 00       	nop
  3e:	00 01       	movw	r0, r0
  40:	00 00       	nop
  42:	03 00       	.word	0x0003	; ????
  44:	92 20       	and	r9, r2
  46:	02 00       	.word	0x0002	; ????
  48:	01 00       	.word	0x0001	; ????
  4a:	00 02       	muls	r16, r16
  4c:	01 00       	.word	0x0001	; ????
  4e:	00 03       	mulsu	r16, r16
  50:	00 92 20 03 	sts	0x0320, r0
  54:	02 01       	movw	r0, r4
  56:	00 00       	nop
  58:	0a 01       	movw	r0, r20
  5a:	00 00       	nop
  5c:	03 00       	.word	0x0003	; ????
  5e:	92 20       	and	r9, r2
  60:	04 0a       	sbc	r0, r20
  62:	01 00       	.word	0x0001	; ????
  64:	00 0c       	add	r0, r0
  66:	01 00       	.word	0x0001	; ????
  68:	00 03       	mulsu	r16, r16
  6a:	00 92 20 05 	sts	0x0520, r0
  6e:	0c 01       	movw	r0, r24
  70:	00 00       	nop
  72:	0e 01       	movw	r0, r28
  74:	00 00       	nop
  76:	03 00       	.word	0x0003	; ????
  78:	92 20       	and	r9, r2
  7a:	06 0e       	add	r0, r22
  7c:	01 00       	.word	0x0001	; ????
  7e:	00 10       	cpse	r0, r0
  80:	01 00       	.word	0x0001	; ????
  82:	00 03       	mulsu	r16, r16
  84:	00 92 20 07 	sts	0x0720, r0
  88:	10 01       	movw	r2, r0
  8a:	00 00       	nop
  8c:	12 01       	movw	r2, r4
  8e:	00 00       	nop
  90:	03 00       	.word	0x0003	; ????
  92:	92 20       	and	r9, r2
  94:	08 12       	cpse	r0, r24
  96:	01 00       	.word	0x0001	; ????
  98:	00 14       	cp	r0, r0
  9a:	01 00       	.word	0x0001	; ????
  9c:	00 03       	mulsu	r16, r16
  9e:	00 92 20 09 	sts	0x0920, r0
  a2:	14 01       	movw	r2, r8
  a4:	00 00       	nop
  a6:	96 01       	movw	r18, r12
  a8:	00 00       	nop
  aa:	03 00       	.word	0x0003	; ????
  ac:	92 20       	and	r9, r2
  ae:	0a 00       	.word	0x000a	; ????
  b0:	00 00       	nop
  b2:	00 00       	nop
  b4:	00 00       	nop
  b6:	00 1c       	adc	r0, r0
  b8:	01 00       	.word	0x0001	; ????
  ba:	00 42       	sbci	r16, 0x20	; 32
  bc:	01 00       	.word	0x0001	; ????
  be:	00 06       	cpc	r0, r16
  c0:	00 68       	ori	r16, 0x80	; 128
  c2:	93 01       	movw	r18, r6
  c4:	69 93       	st	Y+, r22
  c6:	01 42       	sbci	r16, 0x21	; 33
  c8:	01 00       	.word	0x0001	; ????
  ca:	00 48       	sbci	r16, 0x80	; 128
  cc:	01 00       	.word	0x0001	; ????
  ce:	00 05       	cpc	r16, r0
  d0:	00 03       	mulsu	r16, r16
  d2:	65 00       	.word	0x0065	; ????
  d4:	80 00       	.word	0x0080	; ????
  d6:	48 01       	movw	r8, r16
  d8:	00 00       	nop
  da:	6e 01       	movw	r12, r28
  dc:	00 00       	nop
  de:	06 00       	.word	0x0006	; ????
  e0:	68 93       	.word	0x9368	; ????
  e2:	01 69       	ori	r16, 0x91	; 145
  e4:	93 01       	movw	r18, r6
  e6:	6e 01       	movw	r12, r28
  e8:	00 00       	nop
  ea:	7a 01       	movw	r14, r20
  ec:	00 00       	nop
  ee:	05 00       	.word	0x0005	; ????
  f0:	03 65       	ori	r16, 0x53	; 83
  f2:	00 80       	ld	r0, Z
	...
  fc:	00 96       	adiw	r24, 0x00	; 0
  fe:	01 00       	.word	0x0001	; ????
 100:	00 98       	cbi	0x00, 0	; 0
 102:	01 00       	.word	0x0001	; ????
 104:	00 03       	mulsu	r16, r16
 106:	00 92 20 02 	sts	0x0220, r0
 10a:	98 01       	movw	r18, r16
 10c:	00 00       	nop
 10e:	9a 01       	movw	r18, r20
 110:	00 00       	nop
 112:	03 00       	.word	0x0003	; ????
 114:	92 20       	and	r9, r2
 116:	03 9a       	sbi	0x00, 3	; 0
 118:	01 00       	.word	0x0001	; ????
 11a:	00 a2       	std	Z+32, r0	; 0x20
 11c:	01 00       	.word	0x0001	; ????
 11e:	00 03       	mulsu	r16, r16
 120:	00 92 20 04 	sts	0x0420, r0
 124:	a2 01       	movw	r20, r4
 126:	00 00       	nop
 128:	a4 01       	movw	r20, r8
 12a:	00 00       	nop
 12c:	03 00       	.word	0x0003	; ????
 12e:	92 20       	and	r9, r2
 130:	05 a4       	ldd	r0, Z+45	; 0x2d
 132:	01 00       	.word	0x0001	; ????
 134:	00 a6       	std	Z+40, r0	; 0x28
 136:	01 00       	.word	0x0001	; ????
 138:	00 03       	mulsu	r16, r16
 13a:	00 92 20 06 	sts	0x0620, r0
 13e:	a6 01       	movw	r20, r12
 140:	00 00       	nop
 142:	a8 01       	movw	r20, r16
 144:	00 00       	nop
 146:	03 00       	.word	0x0003	; ????
 148:	92 20       	and	r9, r2
 14a:	07 a8       	ldd	r0, Z+55	; 0x37
 14c:	01 00       	.word	0x0001	; ????
 14e:	00 aa       	std	Z+48, r0	; 0x30
 150:	01 00       	.word	0x0001	; ????
 152:	00 03       	mulsu	r16, r16
 154:	00 92 20 08 	sts	0x0820, r0
 158:	aa 01       	movw	r20, r20
 15a:	00 00       	nop
 15c:	ac 01       	movw	r20, r24
 15e:	00 00       	nop
 160:	03 00       	.word	0x0003	; ????
 162:	92 20       	and	r9, r2
 164:	09 ac       	ldd	r0, Y+57	; 0x39
 166:	01 00       	.word	0x0001	; ????
 168:	00 2a       	or	r0, r16
 16a:	02 00       	.word	0x0002	; ????
 16c:	00 03       	mulsu	r16, r16
 16e:	00 92 20 0a 	sts	0x0A20, r0
	...
 17a:	bc 01       	movw	r22, r24
 17c:	00 00       	nop
 17e:	c0 01       	movw	r24, r0
 180:	00 00       	nop
 182:	0c 00       	.word	0x000c	; ????
 184:	68 93       	.word	0x9368	; ????
 186:	01 69       	ori	r16, 0x91	; 145
 188:	93 01       	movw	r18, r6
 18a:	6a 93       	st	-Y, r22
 18c:	01 6b       	ori	r16, 0xB1	; 177
 18e:	93 01       	movw	r18, r6
 190:	c0 01       	movw	r24, r0
 192:	00 00       	nop
 194:	ce 01       	movw	r24, r28
 196:	00 00       	nop
 198:	03 00       	.word	0x0003	; ????
 19a:	88 02       	muls	r24, r24
 19c:	9f ce       	rjmp	.-706    	; 0xfffffedc <__eeprom_end+0xff7efedc>
 19e:	01 00       	.word	0x0001	; ????
 1a0:	00 d0       	rcall	.+0      	; 0x1a2 <__vector_5+0xc>
 1a2:	01 00       	.word	0x0001	; ????
 1a4:	00 0c       	add	r0, r0
 1a6:	00 68       	ori	r16, 0x80	; 128
 1a8:	93 01       	movw	r18, r6
 1aa:	69 93       	st	Y+, r22
 1ac:	01 6a       	ori	r16, 0xA1	; 161
 1ae:	93 01       	movw	r18, r6
 1b0:	6b 93       	.word	0x936b	; ????
 1b2:	01 d0       	rcall	.+2      	; 0x1b6 <__vector_5+0x20>
 1b4:	01 00       	.word	0x0001	; ????
 1b6:	00 da       	rcall	.-3072   	; 0xfffff5b8 <__eeprom_end+0xff7ef5b8>
 1b8:	01 00       	.word	0x0001	; ????
 1ba:	00 03       	mulsu	r16, r16
 1bc:	00 88       	ldd	r0, Z+16	; 0x10
 1be:	02 9f       	mul	r16, r18
 1c0:	da 01       	movw	r26, r20
 1c2:	00 00       	nop
 1c4:	fe 01       	movw	r30, r28
 1c6:	00 00       	nop
 1c8:	0c 00       	.word	0x000c	; ????
 1ca:	68 93       	.word	0x9368	; ????
 1cc:	01 69       	ori	r16, 0x91	; 145
 1ce:	93 01       	movw	r18, r6
 1d0:	6a 93       	st	-Y, r22
 1d2:	01 6b       	ori	r16, 0xB1	; 177
 1d4:	93 01       	movw	r18, r6
 1d6:	fe 01       	movw	r30, r28
 1d8:	00 00       	nop
 1da:	14 02       	muls	r17, r20
 1dc:	00 00       	nop
 1de:	05 00       	.word	0x0005	; ????
 1e0:	03 68       	ori	r16, 0x83	; 131
 1e2:	00 80       	ld	r0, Z
	...
 1ec:	00 c0       	rjmp	.+0      	; 0x1ee <__vector_5+0x58>
 1ee:	01 00       	.word	0x0001	; ????
 1f0:	00 c4       	rjmp	.+2048   	; 0x9f2 <__data_load_end+0x6c6>
 1f2:	01 00       	.word	0x0001	; ????
 1f4:	00 01       	movw	r0, r0
 1f6:	00 63       	ori	r16, 0x30	; 48
 1f8:	c4 01       	movw	r24, r8
 1fa:	00 00       	nop
 1fc:	d2 01       	movw	r26, r4
 1fe:	00 00       	nop
 200:	01 00       	.word	0x0001	; ????
 202:	62 d2       	rcall	.+1220   	; 0x6c8 <__data_load_end+0x39c>
 204:	01 00       	.word	0x0001	; ????
 206:	00 d4       	rcall	.+2048   	; 0xa08 <__data_load_end+0x6dc>
 208:	01 00       	.word	0x0001	; ????
 20a:	00 03       	mulsu	r16, r16
 20c:	00 83       	st	Z, r16
 20e:	06 9f       	mul	r16, r22
 210:	d4 01       	movw	r26, r8
 212:	00 00       	nop
 214:	20 02       	muls	r18, r16
 216:	00 00       	nop
 218:	01 00       	.word	0x0001	; ????
 21a:	62 20       	and	r6, r2
 21c:	02 00       	.word	0x0002	; ????
 21e:	00 24       	eor	r0, r0
 220:	02 00       	.word	0x0002	; ????
 222:	00 05       	cpc	r16, r0
 224:	00 03       	mulsu	r16, r16
 226:	67 00       	.word	0x0067	; ????
 228:	80 00       	.word	0x0080	; ????
	...
 23a:	01 00       	.word	0x0001	; ????
 23c:	63 00       	.word	0x0063	; ????
 23e:	00 00       	nop
 240:	00 00       	nop
 242:	00 00       	nop
 244:	00 02       	muls	r16, r16
 246:	00 08       	sbc	r0, r0
 248:	5f 00       	.word	0x005f	; ????
	...
 256:	00 00       	nop
 258:	00 03       	mulsu	r16, r16
 25a:	00 92 20 02 	sts	0x0220, r0
	...
 266:	03 00       	.word	0x0003	; ????
 268:	92 20       	and	r9, r2
 26a:	03 00       	.word	0x0003	; ????
 26c:	00 00       	nop
 26e:	00 00       	nop
 270:	00 00       	nop
 272:	00 03       	mulsu	r16, r16
 274:	00 92 20 04 	sts	0x0420, r0
	...
 280:	03 00       	.word	0x0003	; ????
 282:	92 20       	and	r9, r2
 284:	05 00       	.word	0x0005	; ????
 286:	00 00       	nop
 288:	00 00       	nop
 28a:	00 00       	nop
 28c:	00 03       	mulsu	r16, r16
 28e:	00 92 20 06 	sts	0x0620, r0
	...
 29a:	03 00       	.word	0x0003	; ????
 29c:	92 20       	and	r9, r2
 29e:	07 00       	.word	0x0007	; ????
 2a0:	00 00       	nop
 2a2:	00 00       	nop
 2a4:	00 00       	nop
 2a6:	00 03       	mulsu	r16, r16
 2a8:	00 92 20 08 	sts	0x0820, r0
	...
 2bc:	0c 00       	.word	0x000c	; ????
 2be:	66 93       	lac	Z, r22
 2c0:	01 67       	ori	r16, 0x71	; 113
 2c2:	93 01       	movw	r18, r6
 2c4:	68 93       	.word	0x9368	; ????
 2c6:	01 69       	ori	r16, 0x91	; 145
 2c8:	93 01       	movw	r18, r6
	...
 2d2:	0c 00       	.word	0x000c	; ????
 2d4:	5c 93       	st	X, r21
 2d6:	01 5d       	subi	r16, 0xD1	; 209
 2d8:	93 01       	movw	r18, r6
 2da:	5e 93       	st	-X, r21
 2dc:	01 5f       	subi	r16, 0xF1	; 241
 2de:	93 01       	movw	r18, r6
	...
 2f0:	06 00       	.word	0x0006	; ????
 2f2:	6c 93       	st	X, r22
 2f4:	01 6d       	ori	r16, 0xD1	; 209
 2f6:	93 01       	movw	r18, r6
	...
 300:	2a 02       	muls	r18, r26
 302:	00 00       	nop
 304:	34 02       	muls	r19, r20
 306:	00 00       	nop
 308:	06 00       	.word	0x0006	; ????
 30a:	68 93       	.word	0x9368	; ????
 30c:	01 69       	ori	r16, 0x91	; 145
 30e:	93 01       	movw	r18, r6
 310:	34 02       	muls	r19, r20
 312:	00 00       	nop
 314:	3a 02       	muls	r19, r26
 316:	00 00       	nop
 318:	06 00       	.word	0x0006	; ????
 31a:	68 93       	.word	0x9368	; ????
 31c:	01 69       	ori	r16, 0x91	; 145
 31e:	93 01       	movw	r18, r6
	...
 328:	72 02       	muls	r23, r18
 32a:	00 00       	nop
 32c:	78 02       	muls	r23, r24
 32e:	00 00       	nop
 330:	01 00       	.word	0x0001	; ????
 332:	68 78       	andi	r22, 0x88	; 136
 334:	02 00       	.word	0x0002	; ????
 336:	00 7a       	andi	r16, 0xA0	; 160
 338:	02 00       	.word	0x0002	; ????
 33a:	00 01       	movw	r0, r0
 33c:	00 68       	ori	r16, 0x80	; 128
	...
 34e:	03 00       	.word	0x0003	; ????
 350:	92 20       	and	r9, r2
 352:	02 00       	.word	0x0002	; ????
 354:	00 00       	nop
 356:	00 00       	nop
 358:	00 00       	nop
 35a:	00 03       	mulsu	r16, r16
 35c:	00 92 20 03 	sts	0x0320, r0
	...
 368:	03 00       	.word	0x0003	; ????
 36a:	92 20       	and	r9, r2
 36c:	04 00       	.word	0x0004	; ????
 36e:	00 00       	nop
 370:	00 00       	nop
 372:	00 00       	nop
 374:	00 03       	mulsu	r16, r16
 376:	00 92 20 05 	sts	0x0520, r0
	...
 38a:	01 00       	.word	0x0001	; ????
 38c:	68 00       	.word	0x0068	; ????
 38e:	00 00       	nop
 390:	00 00       	nop
 392:	00 00       	nop
 394:	00 01       	movw	r0, r0
 396:	00 61       	ori	r16, 0x10	; 16
	...
 3a0:	01 00       	.word	0x0001	; ????
 3a2:	68 00       	.word	0x0068	; ????
 3a4:	00 00       	nop
 3a6:	00 00       	nop
 3a8:	00 00       	nop
 3aa:	00 04       	cpc	r0, r0
 3ac:	00 f3       	brcs	.-64     	; 0x36e <__data_load_end+0x42>
 3ae:	01 68       	ori	r16, 0x81	; 129
 3b0:	9f 00       	.word	0x009f	; ????
 3b2:	00 00       	nop
 3b4:	00 00       	nop
 3b6:	00 00       	nop
 3b8:	00 01       	movw	r0, r0
 3ba:	00 61       	ori	r16, 0x10	; 16
	...
 3c4:	04 00       	.word	0x0004	; ????
 3c6:	f3 01       	movw	r30, r6
 3c8:	68 9f       	mul	r22, r24
	...
 3da:	06 00       	.word	0x0006	; ????
 3dc:	66 93       	lac	Z, r22
 3de:	01 67       	ori	r16, 0x71	; 113
 3e0:	93 01       	movw	r18, r6
	...
 3ea:	06 00       	.word	0x0006	; ????
 3ec:	6c 93       	st	X, r22
 3ee:	01 6d       	ori	r16, 0xD1	; 209
 3f0:	93 01       	movw	r18, r6
	...
 3fa:	04 00       	.word	0x0004	; ????
 3fc:	f3 01       	movw	r30, r6
 3fe:	66 9f       	mul	r22, r22
	...
 408:	06 00       	.word	0x0006	; ????
 40a:	6c 93       	st	X, r22
 40c:	01 6d       	ori	r16, 0xD1	; 209
 40e:	93 01       	movw	r18, r6
	...
 418:	04 00       	.word	0x0004	; ????
 41a:	f3 01       	movw	r30, r6
 41c:	66 9f       	mul	r22, r22
	...
 42e:	06 00       	.word	0x0006	; ????
 430:	81 00       	.word	0x0081	; ????
 432:	08 ff       	.word	0xff08	; ????
 434:	1a 9f       	mul	r17, r26
	...
 43e:	07 00       	.word	0x0007	; ????
 440:	f3 01       	movw	r30, r6
 442:	68 08       	sbc	r6, r8
 444:	ff 1a       	sub	r15, r31
 446:	9f 00       	.word	0x009f	; ????
	...
 454:	00 00       	nop
 456:	00 01       	movw	r0, r0
 458:	00 68       	ori	r16, 0x80	; 128
	...
 462:	04 00       	.word	0x0004	; ????
 464:	f3 01       	movw	r30, r6
 466:	68 9f       	mul	r22, r24
	...
 470:	01 00       	.word	0x0001	; ????
 472:	68 00       	.word	0x0068	; ????
 474:	00 00       	nop
 476:	00 00       	nop
 478:	00 00       	nop
 47a:	00 04       	cpc	r0, r0
 47c:	00 f3       	brcs	.-64     	; 0x43e <__data_load_end+0x112>
 47e:	01 68       	ori	r16, 0x81	; 129
 480:	9f 00       	.word	0x009f	; ????
 482:	00 00       	nop
 484:	00 00       	nop
 486:	00 00       	nop
 488:	00 01       	movw	r0, r0
 48a:	00 68       	ori	r16, 0x80	; 128
	...
 494:	04 00       	.word	0x0004	; ????
 496:	f3 01       	movw	r30, r6
 498:	68 9f       	mul	r22, r24
	...
 4aa:	02 00       	.word	0x0002	; ????
 4ac:	31 9f       	mul	r19, r17
	...
 4b6:	a2 02       	muls	r26, r18
 4b8:	00 00       	nop
 4ba:	a4 02       	muls	r26, r20
 4bc:	00 00       	nop
 4be:	03 00       	.word	0x0003	; ????
 4c0:	92 20       	and	r9, r2
 4c2:	02 a4       	ldd	r0, Z+42	; 0x2a
 4c4:	02 00       	.word	0x0002	; ????
 4c6:	00 a6       	std	Z+40, r0	; 0x28
 4c8:	02 00       	.word	0x0002	; ????
 4ca:	00 03       	mulsu	r16, r16
 4cc:	00 92 20 03 	sts	0x0320, r0
 4d0:	a6 02       	muls	r26, r22
 4d2:	00 00       	nop
 4d4:	14 03       	mulsu	r17, r20
 4d6:	00 00       	nop
 4d8:	03 00       	.word	0x0003	; ????
 4da:	92 20       	and	r9, r2
 4dc:	04 00       	.word	0x0004	; ????
 4de:	00 00       	nop
 4e0:	00 00       	nop
 4e2:	00 00       	nop
 4e4:	00 a2       	std	Z+32, r0	; 0x20
 4e6:	02 00       	.word	0x0002	; ????
 4e8:	00 b8       	out	0x00, r0	; 0
 4ea:	02 00       	.word	0x0002	; ????
 4ec:	00 01       	movw	r0, r0
 4ee:	00 68       	ori	r16, 0x80	; 128
 4f0:	b8 02       	muls	r27, r24
 4f2:	00 00       	nop
 4f4:	14 03       	mulsu	r17, r20
 4f6:	00 00       	nop
 4f8:	04 00       	.word	0x0004	; ????
 4fa:	f3 01       	movw	r30, r6
 4fc:	68 9f       	mul	r22, r24
	...
 506:	b0 02       	muls	r27, r16
 508:	00 00       	nop
 50a:	e2 02       	muls	r30, r18
 50c:	00 00       	nop
 50e:	01 00       	.word	0x0001	; ????
 510:	62 e2       	ldi	r22, 0x22	; 34
 512:	02 00       	.word	0x0002	; ????
 514:	00 ec       	ldi	r16, 0xC0	; 192
 516:	02 00       	.word	0x0002	; ????
 518:	00 04       	cpc	r0, r0
 51a:	00 82       	st	Z, r0
 51c:	00 20       	and	r0, r0
 51e:	9f ec       	ldi	r25, 0xCF	; 207
 520:	02 00       	.word	0x0002	; ????
 522:	00 00       	nop
 524:	03 00       	.word	0x0003	; ????
 526:	00 01       	movw	r0, r0
 528:	00 62       	ori	r16, 0x20	; 32
 52a:	04 03       	mulsu	r16, r20
 52c:	00 00       	nop
 52e:	0c 03       	fmul	r16, r20
 530:	00 00       	nop
 532:	01 00       	.word	0x0001	; ????
 534:	62 00       	.word	0x0062	; ????
 536:	00 00       	nop
 538:	00 00       	nop
 53a:	00 00       	nop
 53c:	00 b8       	out	0x00, r0	; 0
 53e:	02 00       	.word	0x0002	; ????
 540:	00 c2       	rjmp	.+1024   	; 0x942 <__data_load_end+0x616>
 542:	02 00       	.word	0x0002	; ????
 544:	00 01       	movw	r0, r0
 546:	00 68       	ori	r16, 0x80	; 128
	...
 550:	cc 02       	muls	r28, r28
 552:	00 00       	nop
 554:	0e 03       	fmul	r16, r22
 556:	00 00       	nop
 558:	06 00       	.word	0x0006	; ????
 55a:	6a 93       	st	-Y, r22
 55c:	01 6b       	ori	r16, 0xB1	; 177
 55e:	93 01       	movw	r18, r6
	...
 568:	d6 02       	muls	r29, r22
 56a:	00 00       	nop
 56c:	0e 03       	fmul	r16, r22
 56e:	00 00       	nop
 570:	06 00       	.word	0x0006	; ????
 572:	6c 93       	st	X, r22
 574:	01 6d       	ori	r16, 0xD1	; 209
 576:	93 01       	movw	r18, r6
	...
 580:	a8 02       	muls	r26, r24
 582:	00 00       	nop
 584:	ae 02       	muls	r26, r30
 586:	00 00       	nop
 588:	09 00       	.word	0x0009	; ????
 58a:	88 00       	.word	0x0088	; ????
 58c:	03 1e       	adc	r0, r19
 58e:	00 00       	nop
 590:	00 22       	and	r0, r16
 592:	9f ae       	std	Y+63, r9	; 0x3f
 594:	02 00       	.word	0x0002	; ????
 596:	00 b2       	in	r0, 0x10	; 16
 598:	02 00       	.word	0x0002	; ????
 59a:	00 06       	cpc	r0, r16
 59c:	00 6e       	ori	r16, 0xE0	; 224
 59e:	93 01       	movw	r18, r6
 5a0:	6f 93       	push	r22
 5a2:	01 b2       	in	r0, 0x11	; 17
 5a4:	02 00       	.word	0x0002	; ????
 5a6:	00 b8       	out	0x00, r0	; 0
 5a8:	02 00       	.word	0x0002	; ????
 5aa:	00 09       	sbc	r16, r0
 5ac:	00 88       	ldd	r0, Z+16	; 0x10
 5ae:	00 03       	mulsu	r16, r16
 5b0:	1e 00       	.word	0x001e	; ????
 5b2:	00 00       	nop
 5b4:	22 9f       	mul	r18, r18
 5b6:	b8 02       	muls	r27, r24
 5b8:	00 00       	nop
 5ba:	c4 02       	muls	r28, r20
 5bc:	00 00       	nop
 5be:	0f 00       	.word	0x000f	; ????
 5c0:	8e 00       	.word	0x008e	; ????
 5c2:	03 28       	or	r0, r3
 5c4:	00 00       	nop
 5c6:	00 1c       	adc	r0, r0
 5c8:	03 1e       	adc	r0, r19
 5ca:	00 00       	nop
 5cc:	00 22       	and	r0, r16
 5ce:	9f 00       	.word	0x009f	; ????
 5d0:	00 00       	nop
 5d2:	00 00       	nop
 5d4:	00 00       	nop
 5d6:	00 b0       	in	r0, 0x00	; 0
 5d8:	02 00       	.word	0x0002	; ????
 5da:	00 b6       	in	r0, 0x30	; 48
 5dc:	02 00       	.word	0x0002	; ????
 5de:	00 09       	sbc	r16, r0
 5e0:	00 88       	ldd	r0, Z+16	; 0x10
 5e2:	00 03       	mulsu	r16, r16
 5e4:	28 00       	.word	0x0028	; ????
 5e6:	00 00       	nop
 5e8:	22 9f       	mul	r18, r18
 5ea:	b6 02       	muls	r27, r22
 5ec:	00 00       	nop
 5ee:	c4 02       	muls	r28, r20
 5f0:	00 00       	nop
 5f2:	06 00       	.word	0x0006	; ????
 5f4:	6e 93       	st	-X, r22
 5f6:	01 6f       	ori	r16, 0xF1	; 241
 5f8:	93 01       	movw	r18, r6
	...
 602:	c8 02       	muls	r28, r24
 604:	00 00       	nop
 606:	cc 02       	muls	r28, r28
 608:	00 00       	nop
 60a:	06 00       	.word	0x0006	; ????
 60c:	6e 93       	st	-X, r22
 60e:	01 6f       	ori	r16, 0xF1	; 241
 610:	93 01       	movw	r18, r6
	...
 61a:	d0 02       	muls	r29, r16
 61c:	00 00       	nop
 61e:	d6 02       	muls	r29, r22
 620:	00 00       	nop
 622:	06 00       	.word	0x0006	; ????
 624:	68 93       	.word	0x9368	; ????
 626:	01 69       	ori	r16, 0x91	; 145
 628:	93 01       	movw	r18, r6
	...
 632:	dc 02       	muls	r29, r28
 634:	00 00       	nop
 636:	ec 02       	muls	r30, r28
 638:	00 00       	nop
 63a:	01 00       	.word	0x0001	; ????
 63c:	69 00       	.word	0x0069	; ????
 63e:	00 00       	nop
 640:	00 00       	nop
 642:	00 00       	nop
 644:	00 f0       	brcs	.+0      	; 0x646 <__data_load_end+0x31a>
 646:	02 00       	.word	0x0002	; ????
 648:	00 00       	nop
 64a:	03 00       	.word	0x0003	; ????
 64c:	00 01       	movw	r0, r0
 64e:	00 69       	ori	r16, 0x90	; 144
	...
 658:	04 03       	mulsu	r16, r20
 65a:	00 00       	nop
 65c:	0c 03       	fmul	r16, r20
 65e:	00 00       	nop
 660:	01 00       	.word	0x0001	; ????
 662:	69 00       	.word	0x0069	; ????
	...
 670:	00 00       	nop
 672:	00 03       	mulsu	r16, r16
 674:	00 92 20 02 	sts	0x0220, r0
	...
 680:	03 00       	.word	0x0003	; ????
 682:	92 20       	and	r9, r2
 684:	03 00       	.word	0x0003	; ????
 686:	00 00       	nop
 688:	00 00       	nop
 68a:	00 00       	nop
 68c:	00 03       	mulsu	r16, r16
 68e:	00 92 20 04 	sts	0x0420, r0
	...
 69a:	03 00       	.word	0x0003	; ????
 69c:	92 20       	and	r9, r2
 69e:	05 00       	.word	0x0005	; ????
 6a0:	00 00       	nop
 6a2:	00 00       	nop
 6a4:	00 00       	nop
 6a6:	00 03       	mulsu	r16, r16
 6a8:	00 92 20 06 	sts	0x0620, r0
	...
 6b4:	03 00       	.word	0x0003	; ????
 6b6:	92 20       	and	r9, r2
 6b8:	07 00       	.word	0x0007	; ????
 6ba:	00 00       	nop
 6bc:	00 00       	nop
 6be:	00 00       	nop
 6c0:	00 02       	muls	r16, r16
 6c2:	00 8c       	ldd	r0, Z+24	; 0x18
 6c4:	07 00       	.word	0x0007	; ????
	...
 6d2:	00 00       	nop
 6d4:	00 01       	movw	r0, r0
 6d6:	00 68       	ori	r16, 0x80	; 128
	...
 6e0:	01 00       	.word	0x0001	; ????
 6e2:	62 00       	.word	0x0062	; ????
 6e4:	00 00       	nop
 6e6:	00 00       	nop
 6e8:	00 00       	nop
 6ea:	00 04       	cpc	r0, r0
 6ec:	00 f3       	brcs	.-64     	; 0x6ae <__data_load_end+0x382>
 6ee:	01 68       	ori	r16, 0x81	; 129
 6f0:	9f 00       	.word	0x009f	; ????
	...
 6fe:	00 00       	nop
 700:	00 01       	movw	r0, r0
 702:	00 66       	ori	r16, 0x60	; 96
	...
 70c:	04 00       	.word	0x0004	; ????
 70e:	f3 01       	movw	r30, r6
 710:	66 9f       	mul	r22, r22
	...
 722:	01 00       	.word	0x0001	; ????
 724:	68 00       	.word	0x0068	; ????
	...
 732:	00 00       	nop
 734:	00 01       	movw	r0, r0
 736:	00 61       	ori	r16, 0x10	; 16
	...
 740:	04 00       	.word	0x0004	; ????
 742:	81 00       	.word	0x0081	; ????
 744:	20 9f       	mul	r18, r16
	...
 74e:	01 00       	.word	0x0001	; ????
 750:	61 00       	.word	0x0061	; ????
	...
 75e:	00 00       	nop
 760:	00 01       	movw	r0, r0
 762:	00 60       	ori	r16, 0x00	; 0
	...
 774:	06 00       	.word	0x0006	; ????
 776:	6a 93       	st	-Y, r22
 778:	01 6b       	ori	r16, 0xB1	; 177
 77a:	93 01       	movw	r18, r6
	...
 78c:	01 00       	.word	0x0001	; ????
 78e:	69 00       	.word	0x0069	; ????
	...
 79c:	00 00       	nop
 79e:	00 09       	sbc	r16, r0
 7a0:	00 82       	st	Z, r0
 7a2:	00 03       	mulsu	r16, r16
 7a4:	00 00       	nop
 7a6:	00 00       	nop
 7a8:	22 9f       	mul	r18, r18
	...
 7b2:	06 00       	.word	0x0006	; ????
 7b4:	6e 93       	st	-X, r22
 7b6:	01 6f       	ori	r16, 0xF1	; 241
 7b8:	93 01       	movw	r18, r6
	...
 7c2:	09 00       	.word	0x0009	; ????
 7c4:	82 00       	.word	0x0082	; ????
 7c6:	03 00       	.word	0x0003	; ????
 7c8:	00 00       	nop
 7ca:	00 22       	and	r0, r16
 7cc:	9f 00       	.word	0x009f	; ????
	...
 7da:	00 00       	nop
 7dc:	00 09       	sbc	r16, r0
 7de:	00 82       	st	Z, r0
 7e0:	00 03       	mulsu	r16, r16
 7e2:	1e 00       	.word	0x001e	; ????
 7e4:	00 00       	nop
 7e6:	22 9f       	mul	r18, r18
	...
 7f0:	06 00       	.word	0x0006	; ????
 7f2:	6e 93       	st	-X, r22
 7f4:	01 6f       	ori	r16, 0xF1	; 241
 7f6:	93 01       	movw	r18, r6
	...
 800:	09 00       	.word	0x0009	; ????
 802:	82 00       	.word	0x0082	; ????
 804:	03 1e       	adc	r0, r19
 806:	00 00       	nop
 808:	00 22       	and	r0, r16
 80a:	9f 00       	.word	0x009f	; ????
	...
 818:	00 00       	nop
 81a:	00 09       	sbc	r16, r0
 81c:	00 82       	st	Z, r0
 81e:	00 03       	mulsu	r16, r16
 820:	28 00       	.word	0x0028	; ????
 822:	00 00       	nop
 824:	22 9f       	mul	r18, r18
	...
 82e:	06 00       	.word	0x0006	; ????
 830:	6e 93       	st	-X, r22
 832:	01 6f       	ori	r16, 0xF1	; 241
 834:	93 01       	movw	r18, r6
	...
 846:	06 00       	.word	0x0006	; ????
 848:	6e 93       	st	-X, r22
 84a:	01 6f       	ori	r16, 0xF1	; 241
 84c:	93 01       	movw	r18, r6
	...
 85e:	03 00       	.word	0x0003	; ????
 860:	92 20       	and	r9, r2
 862:	02 00       	.word	0x0002	; ????
 864:	00 00       	nop
 866:	00 00       	nop
 868:	00 00       	nop
 86a:	00 03       	mulsu	r16, r16
 86c:	00 92 20 03 	sts	0x0320, r0
	...
 878:	03 00       	.word	0x0003	; ????
 87a:	92 20       	and	r9, r2
 87c:	04 00       	.word	0x0004	; ????
	...
 88a:	00 00       	nop
 88c:	00 01       	movw	r0, r0
 88e:	00 68       	ori	r16, 0x80	; 128
	...
 898:	01 00       	.word	0x0001	; ????
 89a:	62 00       	.word	0x0062	; ????
 89c:	00 00       	nop
 89e:	00 00       	nop
 8a0:	00 00       	nop
 8a2:	00 04       	cpc	r0, r0
 8a4:	00 f3       	brcs	.-64     	; 0x866 <__data_load_end+0x53a>
 8a6:	01 68       	ori	r16, 0x81	; 129
 8a8:	9f 00       	.word	0x009f	; ????
 8aa:	00 00       	nop
 8ac:	00 00       	nop
 8ae:	00 00       	nop
 8b0:	00 01       	movw	r0, r0
 8b2:	00 62       	ori	r16, 0x20	; 32
	...
 8bc:	04 00       	.word	0x0004	; ????
 8be:	f3 01       	movw	r30, r6
 8c0:	68 9f       	mul	r22, r24
	...
 8d2:	01 00       	.word	0x0001	; ????
 8d4:	68 00       	.word	0x0068	; ????
 8d6:	00 00       	nop
 8d8:	00 00       	nop
 8da:	00 00       	nop
 8dc:	00 01       	movw	r0, r0
 8de:	00 68       	ori	r16, 0x80	; 128
	...
 8f0:	01 00       	.word	0x0001	; ????
 8f2:	6d 00       	.word	0x006d	; ????
	...
 900:	00 00       	nop
 902:	00 01       	movw	r0, r0
 904:	00 6c       	ori	r16, 0xC0	; 192
	...
 916:	09 00       	.word	0x0009	; ????
 918:	82 00       	.word	0x0082	; ????
 91a:	03 00       	.word	0x0003	; ????
 91c:	00 00       	nop
 91e:	00 22       	and	r0, r16
 920:	9f 00       	.word	0x009f	; ????
 922:	00 00       	nop
 924:	00 00       	nop
 926:	00 00       	nop
 928:	00 06       	cpc	r0, r16
 92a:	00 6e       	ori	r16, 0xE0	; 224
 92c:	93 01       	movw	r18, r6
 92e:	6f 93       	push	r22
 930:	01 00       	.word	0x0001	; ????
 932:	00 00       	nop
 934:	00 00       	nop
 936:	00 00       	nop
 938:	00 09       	sbc	r16, r0
 93a:	00 82       	st	Z, r0
 93c:	00 03       	mulsu	r16, r16
 93e:	00 00       	nop
 940:	00 00       	nop
 942:	22 9f       	mul	r18, r18
	...
 94c:	09 00       	.word	0x0009	; ????
 94e:	82 00       	.word	0x0082	; ????
 950:	03 00       	.word	0x0003	; ????
 952:	00 00       	nop
 954:	00 22       	and	r0, r16
 956:	9f 00       	.word	0x009f	; ????
	...
 964:	00 00       	nop
 966:	00 09       	sbc	r16, r0
 968:	00 82       	st	Z, r0
 96a:	00 03       	mulsu	r16, r16
 96c:	1e 00       	.word	0x001e	; ????
 96e:	00 00       	nop
 970:	22 9f       	mul	r18, r18
	...
 97a:	06 00       	.word	0x0006	; ????
 97c:	6e 93       	st	-X, r22
 97e:	01 6f       	ori	r16, 0xF1	; 241
 980:	93 01       	movw	r18, r6
	...
 98a:	09 00       	.word	0x0009	; ????
 98c:	82 00       	.word	0x0082	; ????
 98e:	03 1e       	adc	r0, r19
 990:	00 00       	nop
 992:	00 22       	and	r0, r16
 994:	9f 00       	.word	0x009f	; ????
 996:	00 00       	nop
 998:	00 00       	nop
 99a:	00 00       	nop
 99c:	00 09       	sbc	r16, r0
 99e:	00 82       	st	Z, r0
 9a0:	00 03       	mulsu	r16, r16
 9a2:	1e 00       	.word	0x001e	; ????
 9a4:	00 00       	nop
 9a6:	22 9f       	mul	r18, r18
	...
 9b8:	09 00       	.word	0x0009	; ????
 9ba:	82 00       	.word	0x0082	; ????
 9bc:	03 28       	or	r0, r3
 9be:	00 00       	nop
 9c0:	00 22       	and	r0, r16
 9c2:	9f 00       	.word	0x009f	; ????
 9c4:	00 00       	nop
 9c6:	00 00       	nop
 9c8:	00 00       	nop
 9ca:	00 06       	cpc	r0, r16
 9cc:	00 6e       	ori	r16, 0xE0	; 224
 9ce:	93 01       	movw	r18, r6
 9d0:	6f 93       	push	r22
 9d2:	01 00       	.word	0x0001	; ????
 9d4:	00 00       	nop
 9d6:	00 00       	nop
 9d8:	00 00       	nop
 9da:	00 06       	cpc	r0, r16
 9dc:	00 6e       	ori	r16, 0xE0	; 224
 9de:	93 01       	movw	r18, r6
 9e0:	6f 93       	push	r22
 9e2:	01 00       	.word	0x0001	; ????
	...
 9f0:	00 00       	nop
 9f2:	00 06       	cpc	r0, r16
 9f4:	00 6e       	ori	r16, 0xE0	; 224
 9f6:	93 01       	movw	r18, r6
 9f8:	6f 93       	push	r22
 9fa:	01 00       	.word	0x0001	; ????
	...
 a08:	00 00       	nop
 a0a:	00 06       	cpc	r0, r16
 a0c:	00 6a       	ori	r16, 0xA0	; 160
 a0e:	93 01       	movw	r18, r6
 a10:	6b 93       	.word	0x936b	; ????
 a12:	01 00       	.word	0x0001	; ????
 a14:	00 00       	nop
 a16:	00 00       	nop
 a18:	00 00       	nop
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	60 00       	.word	0x0060	; ????
   2:	00 00       	nop
   4:	ca 00       	.word	0x00ca	; ????
   6:	00 00       	nop
   8:	ca 00       	.word	0x00ca	; ????
   a:	00 00       	nop
   c:	fe 00       	.word	0x00fe	; ????
   e:	00 00       	nop
  10:	fe 00       	.word	0x00fe	; ????
  12:	00 00       	nop
  14:	96 01       	movw	r18, r12
	...
  1e:	00 00       	nop
  20:	96 01       	movw	r18, r12
  22:	00 00       	nop
  24:	2a 02       	muls	r18, r26
  26:	00 00       	nop
  28:	01 00       	.word	0x0001	; ????
  2a:	00 00       	nop
  2c:	01 00       	.word	0x0001	; ????
  2e:	00 00       	nop
  30:	01 00       	.word	0x0001	; ????
  32:	00 00       	nop
  34:	01 00       	.word	0x0001	; ????
  36:	00 00       	nop
  38:	01 00       	.word	0x0001	; ????
  3a:	00 00       	nop
  3c:	01 00       	.word	0x0001	; ????
  3e:	00 00       	nop
  40:	2a 02       	muls	r18, r26
  42:	00 00       	nop
  44:	3c 02       	muls	r19, r28
  46:	00 00       	nop
  48:	3c 02       	muls	r19, r28
  4a:	00 00       	nop
  4c:	72 02       	muls	r23, r18
	...
  56:	00 00       	nop
  58:	01 00       	.word	0x0001	; ????
  5a:	00 00       	nop
  5c:	01 00       	.word	0x0001	; ????
  5e:	00 00       	nop
  60:	72 02       	muls	r23, r18
  62:	00 00       	nop
  64:	9a 02       	muls	r25, r26
  66:	00 00       	nop
  68:	01 00       	.word	0x0001	; ????
  6a:	00 00       	nop
  6c:	01 00       	.word	0x0001	; ????
	...
  76:	00 00       	nop
  78:	d6 02       	muls	r29, r22
  7a:	00 00       	nop
  7c:	d8 02       	muls	r29, r24
  7e:	00 00       	nop
  80:	dc 02       	muls	r29, r28
  82:	00 00       	nop
  84:	ec 02       	muls	r30, r28
	...
  8e:	00 00       	nop
  90:	01 00       	.word	0x0001	; ????
  92:	00 00       	nop
  94:	01 00       	.word	0x0001	; ????
  96:	00 00       	nop
  98:	9a 02       	muls	r25, r26
  9a:	00 00       	nop
  9c:	a2 02       	muls	r26, r18
  9e:	00 00       	nop
  a0:	a2 02       	muls	r26, r18
  a2:	00 00       	nop
  a4:	14 03       	mulsu	r17, r20
  a6:	00 00       	nop
  a8:	01 00       	.word	0x0001	; ????
  aa:	00 00       	nop
  ac:	01 00       	.word	0x0001	; ????
  ae:	00 00       	nop
  b0:	01 00       	.word	0x0001	; ????
  b2:	00 00       	nop
  b4:	01 00       	.word	0x0001	; ????
	...
  be:	00 00       	nop
  c0:	01 00       	.word	0x0001	; ????
  c2:	00 00       	nop
  c4:	01 00       	.word	0x0001	; ????
  c6:	00 00       	nop
  c8:	01 00       	.word	0x0001	; ????
  ca:	00 00       	nop
  cc:	01 00       	.word	0x0001	; ????
  ce:	00 00       	nop
  d0:	14 03       	mulsu	r17, r20
  d2:	00 00       	nop
  d4:	28 03       	fmul	r18, r16
	...
  de:	00 00       	nop
  e0:	01 00       	.word	0x0001	; ????
  e2:	00 00       	nop
  e4:	01 00       	.word	0x0001	; ????
	...
