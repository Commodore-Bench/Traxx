*=$1200	
	
	.byte $00,$0B
	php 
	asl A 
	.byte $00,$9E
	sec 
	and ($39),Y 
	.byte $32,$00,$00,$00
	bvc L_BRS_122F_120D_OK
//------------------------------
L_JSR_1210_3109_BAD:
//------------------------------
	jsr $5020
	jsr $2020
	bvc L_BRS_1237_1215_OK
	jsr $5020
	jsr $2020
	bvc L_BRS_123F_121D_OK
	jsr $5020
	jsr $2020
	bvc L_BRS_1277_1225_BAD
	jsr $2020
	bvc L_BRS_124C_122A_OK
	jsr $5020
//------------------------------
L_BRS_122F_120D_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_1254_1232_OK
	jsr $5020
//------------------------------
L_BRS_1237_1215_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_125C_123A_BAD
	jsr $5020
//------------------------------
L_BRS_123F_121D_OK:
//------------------------------
	bvc L_BRS_1261_123F_OK
	jsr $5020
	jsr $2020
	bvc L_BRS_1269_1247_OK
	jsr $5020
//------------------------------
L_BRS_124C_122A_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_1271_124F_OK
	jsr $5020
//------------------------------
L_BRS_1254_1232_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_12AF_1257_BAD
	eor ($51),Y 
//------------------------------
L_BRS_125C_123A_BAD:
//------------------------------
	eor ($4F),Y 
	eor ($51),Y 
	eor ($4F),Y 
//------------------------------
L_BRS_1261_123F_OK:
//------------------------------
	eor ($51),Y 
	eor ($4F),Y 
	eor ($51),Y 
	eor ($4F),Y 
//------------------------------
L_BRS_1269_1247_OK:
//------------------------------
	eor ($51),Y 
	eor ($4F),Y 
	eor ($51),Y 
	eor ($57),Y 
//------------------------------
L_BRS_1271_124F_OK:
//------------------------------
	bvc L_BRS_1293_1271_OK
	jsr $5020
//------------------------------
L_BRS_1277_1225_BAD:
//------------------------------
	jsr $2020
	bvc L_BRS_129B_1279_OK
	jsr $5020
	jsr $2020
	bvc L_BRS_12A3_1281_OK
	jsr $5020
	jsr $2020
	bvc L_BRS_12DB_1289_OK
	jsr $2020
	bvc L_BRS_12B0_128E_OK
	jsr $5020
//------------------------------
L_BRS_1293_1271_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_12B8_1296_OK
	jsr $5020
//------------------------------
L_BRS_129B_1279_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_12C0_129E_BAD
	jsr $5020
//------------------------------
L_BRS_12A3_1281_OK:
//------------------------------
	bvc L_BRS_12C5_12A3_OK
	jsr $5020
	jsr $2020
	bvc L_BRS_12CD_12AB_OK
//------------------------------
L_BRS_12AF_1257_BAD:
//------------------------------
	jsr $5020
//------------------------------
L_BRS_12B0_128E_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_12D5_12B3_OK
	jsr $5020
//------------------------------
L_BRS_12B8_1296_OK:
//------------------------------
	jsr $2020
	bvc L_BRS_1312_12BB_OK
	eor ($51),Y 
//------------------------------
L_BRS_12C0_129E_BAD:
//------------------------------
	eor ($59),Y 
	eor ($51),Y 
	eor ($59),Y 
//------------------------------
L_BRS_12C5_12A3_OK:
//------------------------------
	eor ($51),Y 
	eor ($59),Y 
	eor ($51),Y 
	eor ($59),Y 
//------------------------------
L_BRS_12CD_12AB_OK:
//------------------------------
	eor ($51),Y 
	eor ($59),Y 
	eor ($51),Y 
	eor ($54),Y 
//------------------------------
L_BRS_12D5_12B3_OK:
//------------------------------
	jsr $2020
	jsr $2020
//------------------------------
L_BRS_12DB_1289_OK:
//------------------------------
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $7820
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
//------------------------------
L_JSR_12FD_3DA6_OK:
//------------------------------
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
//------------------------------
L_BRS_1312_12BB_OK:
//------------------------------
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	lsr $51,X 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	eor ($51),Y 
	.byte $57
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
//------------------------------
L_BRS_1392_1408_OK:
//------------------------------
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
//------------------------------
L_BRS_139A_1410_OK:
//------------------------------
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
//------------------------------
L_BRS_13FA_1470_OK:
//------------------------------
	sei 
	sei 
	sei 
	sei 
	sei 
	sei 
	.byte $1C,$22
//------------------------------
L_BRS_1402_1478_OK:
//------------------------------
	lsr A 
	lsr $4C,X 
	jsr $001E
	beq L_BRS_1392_1408_OK
	sty $FE 
	.byte $82,$82,$82,$00
	beq L_BRS_139A_1410_OK
	sty $FE 
	.byte $82,$82
	inc $1E00,X 
//------------------------------
L_BRS_141A_1490_BAD:
//------------------------------
	jsr $8040
//------------------------------
L_BRS_141D_145B_JAM:
//------------------------------
	.byte $80,$80
	inc $F000,X 
	dey 
	sty $82 
	.byte $82,$82
	inc $1E00,X 
	jsr $FE40
	.byte $80,$80
	inc $1E00,X 
	jsr $FE40
	.byte $80,$80,$80,$00
	asl $4020,X 
	.byte $9E,$82,$82
	inc $8200,X 
	.byte $82,$82
	inc $8282,X 
	.byte $82,$00,$7C
	bpl L_BRS_145B_1449_OK
	bpl L_BRS_145D_144B_OK
	bpl L_BRS_14CB_144D_OK
	.byte $00,$02,$02,$02,$02,$04
	php 
	beq L_BRS_1458_1456_JAM
//------------------------------
L_BRS_1458_1456_JAM:
//------------------------------
	.byte $82
	sty $88 
//------------------------------
L_BRS_145B_1449_OK:
//------------------------------
	beq L_BRS_141D_145B_JAM
//------------------------------
L_BRS_145D_144B_OK:
//------------------------------
	ldy #$9E
	.byte $00,$80,$80,$80,$80,$80,$80
	inc $F000,X 
	tya 
	sty $92,X 
	.byte $92,$92,$92,$00
	beq L_BRS_13FA_1470_OK
	sty $82 
	.byte $82,$82,$82,$00
	beq L_BRS_1402_1478_OK
	sty $82 
	.byte $42,$22
	asl $F000,X 
	dey 
	sty $FE 
	.byte $80,$80,$80,$00
	asl $4222,X 
	.byte $92
	sty $F28C 
	.byte $00
	beq L_BRS_141A_1490_BAD
	sty $FE 
	cpy #$A0
	.byte $9E,$00
	asl $4020,X 
	inc $0804,X 
	beq L_BRS_14A0_149E_OK
//------------------------------
L_BRS_14A0_149E_OK:
//------------------------------
	inc $1010,X 
	bpl L_BRS_14B5_14A3_OK
	bpl L_BRS_14B7_14A5_JAM
	.byte $00,$82,$82,$82,$82,$42,$22
	asl $8200,X 
	.byte $82,$82,$82,$42
//------------------------------
L_BRS_14B5_14A3_OK:
//------------------------------
	bit $18 
//------------------------------
L_BRS_14B7_14A5_JAM:
//------------------------------
	.byte $00,$92,$92,$92,$92,$52,$32
	asl $8800,X 
	pha 
	plp 
	clc 
	clc 
	.byte $14,$12,$00,$82,$42,$22
//------------------------------
L_BRS_14CB_144D_OK:
//------------------------------
	asl $0402,X 
	.byte $F8,$00
	inc $0804,X 
	bpl L_BRS_14F5_14D3_OK
	rti 
//------------------------------
	inc $3C00,X 
	jsr $2020
	jsr L_JSR_3C20_14DC_OK
	.byte $00,$0C
	bpl L_BRS_14F3_14E1_OK
	.byte $3C
	bpl L_BRS_1556_14E4_OK
	ror $3C00 
	.byte $04,$04,$04,$04,$04,$3C,$00,$00
	php 
	.byte $1C
//------------------------------
L_BRS_14F3_14E1_OK:
//------------------------------
	rol A 
	php 
//------------------------------
L_BRS_14F5_14D3_OK:
//------------------------------
	php 
	php 
	php 
	.byte $00,$00
	bpl L_BRS_151C_14FA_BAD
	.byte $7F
	jsr $0010
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	php 
	php 
	php 
	php 
	.byte $00,$00
	php 
	.byte $00
	bit $24 
	bit $00 
	.byte $00,$00,$00,$00
	bit $24 
//------------------------------
L_BRS_151C_14FA_BAD:
//------------------------------
	ror $7E24,X 
	bit $24 
	.byte $00
	php 
	asl $1C28,X 
	asl A 
	.byte $3C
	php 
	.byte $00,$00,$62,$64
	php 
	bpl L_BRS_1554_152C_BAD
	lsr $00 
	bmi L_BRS_157A_1530_JAM
	pha 
	bmi L_BRS_157F_1533_JAM
	.byte $44,$3A,$00,$04
	php 
	bpl L_BRS_153C_153A_JAM
//------------------------------
L_BRS_153C_153A_JAM:
L_BRS_153D_15B3_JAM:
//------------------------------
	.byte $00,$00,$00,$00,$04
	php 
	bpl L_BRS_1554_1542_BAD
	bpl L_BRS_154E_1544_BAD
	.byte $04,$00
	jsr $0810
	php 
	php 
//------------------------------
L_BRS_154E_1544_BAD:
//------------------------------
	bpl L_BRS_156F_154D_JAM
	.byte $00
	php 
	rol A 
	.byte $1C
//------------------------------
L_BRS_1554_152C_BAD:
L_BRS_1554_1542_BAD:
//------------------------------
	rol $2A1C,X 
//------------------------------
L_BRS_1556_14E4_OK:
//------------------------------
	php 
	.byte $00,$00
	php 
	php 
	rol $0808,X 
	.byte $00,$00,$00,$00,$00,$00,$00
	php 
	php 
	bpl L_BRS_1569_1567_JAM
//------------------------------
L_BRS_1569_1567_JAM:
//------------------------------
	.byte $00,$00
	ror $0000,X 
//------------------------------
L_BRS_156F_154D_JAM:
//------------------------------
	.byte $00,$00,$00,$00,$00,$00,$00
	clc 
	clc 
//------------------------------
L_BRS_157A_1530_JAM:
//------------------------------
	.byte $00,$00,$02,$04
	php 
	bpl L_BRS_159E_157C_OK
	rti 
//------------------------------
L_BRS_157F_1533_JAM:
//------------------------------
	.byte $00
	asl $4A26,X 
	.byte $92
	ldy $C8 
	beq L_BRS_1588_1586_OK
//------------------------------
L_BRS_1588_1586_OK:
//------------------------------
	bmi L_BRS_15DA_1588_OK
	bpl L_BRS_159C_158A_BAD
	bpl L_BRS_159E_158C_OK
	inc $F000,X 
	php 
	.byte $04
	inc $8080,X 
	inc $F000,X 
	php 
	.byte $04
//------------------------------
L_BRS_159C_158A_BAD:
//------------------------------
	inc $0202,X 
//------------------------------
L_BRS_159E_157C_OK:
L_BRS_159E_158C_OK:
//------------------------------
	inc $1000,X 
	jsr $8848
	inc $0808,X 
	.byte $00
	inc $FE80,X 
	.byte $02,$04
	php 
	beq L_BRS_15B0_15AE_OK
//------------------------------
L_BRS_15B0_15AE_OK:
//------------------------------
	asl $4020,X 
	beq L_BRS_153D_15B3_JAM
	sty $FE 
	.byte $00
	inc $0804,X 
	bpl L_BRS_15DD_15BB_OK
	rti 
//------------------------------
	.byte $80,$00
	sec 
	.byte $44,$82,$7C,$82,$44
	sec 
	.byte $00
	inc $2242,X 
	asl $0402,X 
	.byte $F8,$00,$00,$00
	php 
	.byte $00,$00
	php 
	.byte $00,$00,$00,$00
//------------------------------
L_BRS_15DA_1588_OK:
//------------------------------
	php 
	.byte $00,$00
//------------------------------
L_BRS_15DD_15BB_OK:
//------------------------------
	php 
	php 
	bpl L_BRS_15EF_15DF_JAM
	clc 
	bmi L_BRS_1644_15E2_BAD
	bmi L_BRS_15FE_15E4_OK
	asl $0000 
	.byte $00
	ror $7E00,X 
//------------------------------
L_BRS_15EF_15DF_JAM:
//------------------------------
	.byte $00,$00,$00
	bvs L_BRS_160A_15F0_OK
	.byte $0C
	asl $0C 
	clc 
	bvs L_BRS_15F8_15F6_OK
//------------------------------
L_BRS_15F8_15F6_OK:
//------------------------------
	beq L_BRS_1602_15F8_JAM
	.byte $04
	asl $0010,X 
//------------------------------
L_BRS_15FE_15E4_OK:
//------------------------------
	bpl L_BRS_1600_15FE_JAM
//------------------------------
L_BRS_1600_15FE_JAM:
L_BRS_1602_15F8_JAM:
//------------------------------
	.byte $00,$00,$00,$00,$FF,$00,$00,$00
	.byte $00,$00
//------------------------------
L_BRS_160A_15F0_OK:
//------------------------------
	bmi L_BRS_163C_160A_JAM
	.byte $FC,$FC
	bmi L_BRS_1640_160E_OK
	.byte $00,$00,$00,$00
	cld 
	.byte $FC
	sbc ($E1),Y 
	.byte $00,$00,$00,$00
	adc #$F9
	cld 
	tya 
	.byte $00,$00,$00,$00,$04
	stx $71DB 
//------------------------------
L_BRS_1628_1666_JAM:
//------------------------------
	.byte $00,$00,$00,$00
	bpl L_BRS_165E_162C_BAD
	rts 
//------------------------------
	cpy #$30
	.byte $3C,$3C
	clc 
	.byte $00,$00,$00,$00
	cmp ($C1,X) 
	cpy #$C0
//------------------------------
L_BRS_163C_160A_JAM:
//------------------------------
	.byte $00,$00,$00,$00
//------------------------------
L_BRS_1640_160E_OK:
//------------------------------
	cld 
	.byte $F8
//------------------------------
L_BRS_1644_15E2_BAD:
//------------------------------
	sbc $0069,Y 
	.byte $00,$00,$00
	adc ($DB),Y 
	stx $0004 
	.byte $00,$00,$00
	cpy #$60
	bmi L_BRS_1664_1652_JAM
	.byte $00,$00,$00,$00
	clc 
	clc 
	bit $3C 
//------------------------------
L_BRS_165E_162C_BAD:
//------------------------------
	ror $A55A,X 
	.byte $C3
	cpy #$B0
//------------------------------
L_BRS_1664_1652_JAM:
//------------------------------
	.byte $5C,$3B,$3B,$5C
	bcs L_BRS_1628_1666_JAM
	.byte $C3
	lda $5A 
	ror $243C,X 
	clc 
	clc 
	.byte $03
	ora $DC3A
	.byte $DC,$3A
	ora $5A03
	.byte $DB
	clc 
	.byte $FF,$FF
	clc 
	.byte $DB,$5A,$5A,$5A,$5A,$5A,$5A,$5A
	.byte $5A,$5A,$00,$FF,$00,$FF,$FF,$00
	.byte $FF,$00,$00,$7F
	rti 
//------------------------------
	.byte $5F,$5F
	cli 
	.byte $5B,$5A,$00
	inc $FA02,X 
	.byte $FA,$1A,$DA,$5A,$5A,$DA,$1A,$FA
	.byte $FA,$02
	inc $5A00,X 
	.byte $5B
	cli 
	.byte $5F,$5F
	rti 
//------------------------------
	.byte $7F,$00,$5A,$5B
	cli 
	.byte $5F,$5F
	cli 
	.byte $5B,$5A,$5A,$DA,$1A,$FA,$FA,$1A
	.byte $DA,$5A,$00,$FF,$00,$FF,$FF
	clc 
	.byte $DB,$5A,$5A,$DB
	clc 
	.byte $FF,$FF,$00,$FF,$00,$00
	inx 
	lda #$E8
	.byte $89
	dey 
	stx $C200 
	and $18
	ror $34AD,X 
	ror $9199,X 
	eor #$7A
	cpx $7ADC 
	eor #$92
	sta $2C7E,Y 
	lda $7E,X 
	clc 
	ldy $43 
	.byte $89,$92
	lsr $3B37,X 
	lsr $4992,X 
	.byte $43
	ldy $18 
	.byte $FF,$34
	bit $18FF 
	lsr A 
	eor #$7A
	.byte $DC
	cpx $497A 
	eor #$18
	.byte $FF,$34
	bit $18FF 
	and $C2
	.byte $92,$92
	lsr $3B37,X 
	lsr $5292,X 
	jsr L_JSR_2060_1718_OK
	.byte $3F
	rol $2222,X 
	ror $5E 
	.byte $7B
	eor $1818,Y 
	clc 
	clc 
	clc 
	clc 
	.byte $3C,$5A
	ror $2418,X 
//------------------------------
L_BRS_172E_174C_JAM:
//------------------------------
	.byte $42
	lda $AA 
	eor $AA,X 
	eor $AA,X 
	eor $AA,X 
	eor $01,X 
	ora ($01,X)
	ora ($01,X)
	ora ($01,X)
	ora ($00,X)
	.byte $00,$00,$00
	tax 
	eor $AA,X 
	eor $FF,X 
	inc $F8FC,X 
	beq L_BRS_172E_174C_JAM
	cpy #$80
	.byte $03,$03,$03,$03,$03,$03,$03,$03
	php 
	php 
	php 
	php 
	.byte $0F
	php 
	php 
	php 
	.byte $00,$00,$00,$00,$0F,$0F,$0F,$0F
	php 
	php 
	php 
	php 
	.byte $0F,$00,$00,$00,$00
	tay 
	tax 
	inx 
	tay 
	tax 
	tay 
	.byte $00,$00,$00,$00,$00,$00,$00,$FF
	.byte $FF,$00,$00,$00,$00,$0F
	php 
	php 
	php 
	php 
	php 
	php 
	php 
	.byte $FF,$00,$00,$00,$00,$00,$00,$00
	.byte $FF
	php 
	php 
	php 
	php 
	php 
	php 
	php 
	.byte $F8
	php 
	php 
	php 
	cpy #$C0
	cpy #$C0
	cpy #$C0
	cpy #$C0
	cpx #$E0
	cpx #$E0
	cpx #$E0
	cpx #$E0
	.byte $07,$07,$07,$07,$07,$07,$07,$07
	.byte $FF,$FF,$00,$00,$00,$00,$00,$00
	.byte $FF,$FF,$FF,$00,$00,$00,$00,$00
//------------------------------
L_BRS_17CE_17DC_JAM:
//------------------------------
	.byte $00,$00,$00,$00,$00,$FF,$FF,$FF
//------------------------------
L_BRS_17D0_17DE_OK:
//------------------------------
	ora ($01,X)
	ora ($01,X)
	ora ($01,X)
	ora ($FF,X)
	.byte $00,$00,$00,$00
	beq L_BRS_17CE_17DC_JAM
	beq L_BRS_17D0_17DE_OK
//------------------------------
L_BRS_17E2_17F0_JAM:
L_BRS_17E4_17F2_JAM:
//------------------------------
	.byte $0F,$0F,$0F,$0F,$00,$00,$00,$00
	php 
	php 
//------------------------------
L_BRS_17EA_17F8_OK:
//------------------------------
	php 
	php 
//------------------------------
L_BRS_17EC_17FA_JAM:
//------------------------------
	.byte $F8,$00,$00,$00
	beq L_BRS_17E2_17F0_JAM
	beq L_BRS_17E4_17F2_JAM
	.byte $00,$00,$00,$00
	beq L_BRS_17EA_17F8_OK
	beq L_BRS_17EC_17FA_JAM
	.byte $0F,$0F,$0F,$0F,$E3
	cmp $A9B5,X 
	.byte $B3,$DF
	sbc ($FF,X) 
	.byte $00,$00
	jsr $5050
	.byte $32
	and $55
	.byte $00,$22
	ror $55 
	eor $55,X 
//------------------------------
L_BRS_1816_1834_OK:
//------------------------------
	lsr $6F,X 
	.byte $00,$00,$00,$00,$00,$00
	rti 
//------------------------------
	.byte $80,$00,$00,$00
	php 
	plp 
	bit $4454 
	.byte $00,$00,$00,$00,$00,$03
	rti 
//------------------------------
	.byte $00,$00,$00
	rti 
//------------------------------
	rti 
//------------------------------
	bvc L_BRS_1816_1834_OK
	tya 
	lda #$00
	.byte $00,$00,$00,$00,$00,$00
	cpx #$8A
	asl $4829,X 
	pha 
	bmi L_BRS_1847_1845_JAM
//------------------------------
L_BRS_1847_1845_JAM:
//------------------------------
	.byte $00
	ror $D5,X 
	eor $2B,X 
	rol A 
	bpl L_BRS_184F_184D_JAM
//------------------------------
L_BRS_184F_184D_JAM:
//------------------------------
	.byte $00,$44,$44
	sta $85 
	.byte $00,$00,$00,$00
	tya 
	lda $56,X 
	.byte $80,$00,$00,$00,$00,$AB,$B2
	dec $0000,X 
	.byte $00,$00,$00
	bpl L_BRS_186A_1868_JAM
//------------------------------
L_BRS_186A_1868_JAM:
//------------------------------
	.byte $00,$00,$00,$00,$00,$00
	lda $AD9D,X 
	lda $B9,X 
	lda $FFBD,X 
	.byte $E7,$DB
	lda $BDBD,X 
	.byte $DB,$E7,$FF,$83
	lda $83BD,X 
	.byte $BF,$BF,$BF,$FF,$E7,$DB
	lda $B5BD,X 
	.byte $DB
	sbc $FF 
	.byte $83
	lda $83BD,X 
	.byte $B7,$BB
	lda $C3FF,X 
	lda $C3BF,X 
	sbc $C3BD,X 
	.byte $FF
	cmp ($F7,X) 
	.byte $F7,$F7,$F7,$F7,$F7,$FF
	lda $BDBD,X 
	lda $BDBD,X 
	.byte $C3,$FF
	lda $BDBD,X 
	.byte $DB,$DB,$E7,$E7,$FF
	lda $BDBD,X 
	lda $A5 
	sta $FFBD,Y 
	lda $DBBD,X 
	.byte $E7,$DB
	lda $FFBD,X 
	cmp $DDDD,X 
	.byte $E3,$F7,$F7,$F7,$FF
	sta ($FD,X) 
	.byte $FB,$E7,$DF,$BF
	sta ($FF,X) 
	.byte $C3,$DF,$DF,$DF,$DF,$DF,$C3,$FF
	.byte $F3,$EF,$EF,$C3,$EF,$8F
	sta ($FF),Y 
	.byte $C3,$FB,$FB,$FB,$FB,$FB,$C3,$FF
	.byte $FF,$F7,$E3
	cmp $F7,X 
	.byte $F7,$F7,$F7,$FF,$FF,$EF,$DF,$80
	.byte $DF,$EF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$F7,$F7,$F7,$F7,$FF
	.byte $FF,$F7,$FF,$00
	inc $0E82,X 
	sec 
	cpx #$FE
	inc $DBDB,X 
	sta ($DB,X) 
	sta ($DB,X) 
	.byte $DB,$FF,$00
	rti 
//------------------------------
	iny 
	iny 
	inc $0808,X 
	.byte $00,$FF
	sta $F79B,X 
	.byte $EF
	cmp $FFB9,Y 
	.byte $CF,$B7,$B7,$CF
	lda $BB,X 
	cmp $FF 
	.byte $FB,$F7,$EF,$FF,$FF,$FF,$FF,$FF
	.byte $00
	ror $4242,X 
	inc $C2C2,X 
	inc $EFDF,X 
	.byte $F7,$F7,$F7,$EF,$DF,$FF,$F7
	cmp $E3,X 
	cmp ($E3,X) 
	cmp $F7,X 
	.byte $FF,$FF,$F7,$F7
	cmp ($F7,X) 
	.byte $F7,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $F7,$F7,$EF,$FF,$FF,$FF
	sta ($FF,X) 
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $E7,$E7,$FF,$FF
	sbc $F7FB,X 
	.byte $EF,$DF,$BF,$FF,$00
	lsr $5056,X 
	dec $D2D2,X 
	dec $E7F7,X 
	.byte $D7,$F7,$F7,$F7
	cmp ($FF,X) 
	.byte $C3
	lda $F3FD,X 
	.byte $CF,$BF
	sta ($FF,X) 
	.byte $C3
	lda $E3FD,X 
	sbc $C3BD,X 
	.byte $FF,$FB,$F3,$EB,$DB
	sta ($FB,X) 
	.byte $FB,$FF
	sta ($BF,X) 
	.byte $87,$FB
	sbc $C7BB,X 
	.byte $FF,$E3,$DF,$BF,$83
	lda $C3BD,X 
	.byte $FF
	sta ($BD,X) 
	.byte $FB,$F7,$EF,$EF,$EF,$FF,$C3
	lda $C3BD,X 
	lda $C3BD,X 
	.byte $FF,$C3
	lda $C1BD,X 
	sbc $C7FB,X 
	.byte $FF,$FF,$FF,$F7,$FF,$FF,$F7,$FF
	.byte $FF,$FF,$FF,$F7,$FF,$FF,$F7,$F7
	.byte $EF
	sbc ($E7),Y 
	.byte $CF,$9F,$CF,$E7
	sbc ($FF),Y 
	.byte $FF,$FF
	sta ($FF,X) 
	sta ($FF,X) 
	.byte $FF,$FF,$8F,$E7,$F3
	sbc $E7F3,Y 
	.byte $8F,$FF,$C3
	lda $F3FD,X 
	.byte $EF,$FF,$EF,$FF,$FF,$FF,$FF,$FF
	.byte $00,$FF,$FF,$FF,$F7,$E3
	cmp ($80,X) 
	.byte $80,$E3
	cmp ($FF,X) 
	.byte $EF,$EF,$EF,$EF,$EF,$EF,$EF,$EF
	.byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$00,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$00,$FF,$FF
	.byte $DF,$DF,$DF,$DF,$DF,$DF,$DF,$DF
	.byte $FB,$FB,$FB,$FB,$FB,$FB,$FB,$FB
	.byte $FF,$FF,$FF,$FF,$1F,$EF,$F7,$F7
	.byte $F7,$F7,$F7,$FB,$FC,$FF,$FF,$FF
	.byte $F7,$F7,$F7,$EF,$1F,$FF,$FF,$FF
	.byte $7F,$7F,$7F,$7F,$7F,$7F,$7F,$00
	.byte $7F,$BF,$DF,$EF,$F7,$FB
	sbc $FEFE,X 
	sbc $F7FB,X 
	.byte $EF,$DF,$BF,$7F,$00,$7F,$7F,$7F
	.byte $7F,$7F,$7F,$7F,$00
	inc $FEFE,X 
	inc $FEFE,X 
	inc $C3FF,X 
	sta ($81,X) 
	sta ($81,X) 
	.byte $C3,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $00,$FF
	cmp #$80
	.byte $80,$80
	cmp ($E3,X) 
	.byte $F7,$FF,$BF,$BF,$BF,$BF,$BF,$BF
	.byte $BF,$BF,$FF,$FF,$FF,$FF,$FC,$FB
	.byte $F7,$F7
	ror $DBBD,X 
	.byte $E7,$E7,$DB
	lda $FF7E,X 
	.byte $C3
	lda $BDBD,X 
	lda $FFC3,X 
	.byte $F7,$E3
	cmp $88,X 
	cmp $F7,X 
	.byte $F7,$FF
	sbc $FDFD,X 
	sbc $FDFD,X 
	sbc $F7FD,X 
	.byte $E3
	cmp ($80,X) 
	cmp ($E3,X) 
	.byte $F7,$FF,$F7,$F7,$F7,$F7,$00,$F7
	.byte $F7,$F7,$5F,$AF,$5F,$AF,$5F,$AF
//------------------------------
L_BRS_1AE6_1B3A_JAM:
//------------------------------
	.byte $5F,$AF,$F7,$F7,$F7,$F7,$F7,$F7
	.byte $F7,$F7,$FF,$FF
	inc $ABC1,X 
//------------------------------
L_BRS_1AF6_1AFC_JAM:
//------------------------------
	.byte $EB,$EB,$FF,$00,$80
	cpy #$E0
	beq L_BRS_1AF6_1AFC_JAM
	.byte $FC
	inc $FFFF,X 
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$0F,$0F
	.byte $0F,$0F,$0F,$0F,$0F,$0F,$FF,$FF
	.byte $FF,$FF,$00,$00,$00,$00,$00,$FF
	.byte $FF,$FF
	lda ($23,X) 
	and ($2C),Y 
	eor ($24,X) 
	.byte $3A,$8B
	eor ($24,X) 
	.byte $B2,$22,$22,$A7
	eor ($24,X) 
	.byte $B2,$C7
	plp 
	bmi L_BRS_1B86_1B2F_JAM
	tax 
	eor $AA,X 
	eor $AA,X 
	eor $AA,X 
	and ($32),Y 
	bmi L_BRS_1AE6_1B3A_JAM
	cli 
	bit $28C6 
	eor ($24,X) 
	and #$3A
//------------------------------
L_BRS_1B44_1B90_JAM:
//------------------------------
	.byte $82,$3A
	ldy #$31
	.byte $3A
	stx $7800 
	.byte $1B,$F8
	rol A 
	.byte $43
//------------------------------
L_BRS_1B50_1B9B_OK:
//------------------------------
	jmp L_JMP_28B2_1B50_OK
	.byte $C2
	plp 
	.byte $53
	lsr $4828 
	bit $2931 
	tax 
	.byte $43,$4F
	and #$29
	.byte $AF
	and ($35),Y 
	.byte $3A,$8B,$43
	jmp L_JMP_37B2_1B67_JAM
	bcs L_BRS_1BAF_1B6A_OK
	jmp L_JMP_31B2_1B6C_OK
	.byte $A7,$54,$54,$B2,$54,$54
	tax 
	and ($00),Y 
	sty $021B 
	.byte $2B,$97,$53
	lsr $5428 
	bit $2931 
	tax 
//------------------------------
L_BRS_1B86_1B2F_JAM:
//------------------------------
	.byte $43,$4F
	bit $3A32 
	stx $A600 
	.byte $1B
	tya 
	.byte $3A
	bvc L_BRS_1B44_1B90_JAM
	bvc L_BRS_1BD6_1B92_BAD
	plp 
	cli 
	bit $2934 
	.byte $3A,$8B
	bvc L_BRS_1B50_1B9B_OK
	.byte $37
	and $31A7,Y 
	rol $30,X 
//------------------------------
L_BRS_1BA3_1BFA_OK:
//------------------------------
	bmi L_BRS_1BD5_1BA3_OK
	.byte $00,$F2,$1B
	ldx #$3A
	lsr $4C 
	.byte $B2
	bmi L_BRS_1BE9_1BAD_BAD
//------------------------------
L_BRS_1BAF_1B6A_OK:
//------------------------------
	eor $A5B2,Y 
	.byte $52
	plp 
	.byte $34
	and #$3A
	eor ($B2),Y 
	.byte $C2
	plp 
	bvc L_BRS_1BFF_1BBB_BAD
	plp 
	cli 
	bit $2931 
	tax 
	.byte $44
	plp 
	eor $2929,Y 
	.byte $3A,$8B
	eor ($B2),Y 
	bvc L_BRS_1C22_1BCC_OK
	plp 
	eor $B029,Y 
	eor ($B2),Y 
	.byte $37
//------------------------------
L_BRS_1BD6_1B92_BAD:
L_BRS_1BD5_1BA3_OK:
//------------------------------
	and $28B0,Y 
	eor ($B1),Y 
	sec 
	and ($AF),Y 
	eor ($B3),Y 
	and $2930,Y 
	.byte $A7
	bvc L_BRS_1C27_1BE3_BAD
	plp 
	cli 
//------------------------------
L_BRS_1BE9_1BAD_BAD:
//------------------------------
	bit $2932 
	.byte $B2
	eor $463A,Y 
	jmp L_JMP_31B2_1BEE_OK
	.byte $00,$02,$1C
	ldy $8B3A 
	lsr $4C 
	.byte $B2
	bmi L_BRS_1BA3_1BFA_OK
	and ($35),Y 
//------------------------------
L_BRS_1BFF_1BBB_BAD:
//------------------------------
	bmi L_BRS_1C31_1BFE_BAD
	ldy #$CB
	ldy $88,X 
	.byte $52,$F3,$37
	bit $4351 
	eor $C7,X 
	.byte $92,$77
	ldx #$EB
	sty $FCC7 
	cpx $F2C4 
	cpy $1F 
	dec $4CCD 
	.byte $74
	sty $ECC5 
	cpy $C8 
	pha 
//------------------------------
L_BRS_1C22_1BCC_OK:
//------------------------------
	cpy $949A 
//------------------------------
L_BRS_1C27_1BE3_BAD:
//------------------------------
	cpy $CC89 
	cpy $BACC 
	cpy $6EDC 
	.byte $DC
//------------------------------
L_BRS_1C31_1BFE_BAD:
//------------------------------
	inc $C390 
	ldy $70 
	sta ($68),Y 
	.byte $F8
	sbc #$B7
	cpx $A1 
	.byte $0F,$3C
	tax 
	.byte $FB
	rts 
//------------------------------
	.byte $B2
	sta $4417,Y 
	sbc $324A,X 
	.byte $AB
	and ($C6),Y 
	sbc $E2 
	.byte $23,$EB
	ora ($C2),Y
	sta $C8C3,X 
	.byte $E7
	jmp 5CDD_
	sta $653C,Y 
	cld 
	.byte $DC
	cpy $86B2 
	cmp $9C 
	ldy $4F8D 
	.byte $5C
	eor $C845 
	lsr $BCCC 
	cmp $A480,X 
	cpy $CC 
	txs 
	cmp $2B 
	.byte $7C,$3A,$9E
	and $745E,Y 
	lsr $C0A3,X 
	.byte $32,$FC,$3B
	sty $8939 
	.byte $23,$44,$47,$D7
	ldx #$2F
	cpy #$61
	.byte $EF
	sbc $A31B,Y 
	cpx #$CF
	cmp $892F 
	eor $DE,X 
	lsr $B2DC,X 
	cpy $DA86 
	tay 
	jmp 9C83
	cpy #$CD
	sta $CAFC 
	jmp 4CDD
	sty $AF6C 
	cpy $CCD8 
	.byte $DC,$5C
	cpy $201A 
	ldy $BB5E,X 
	.byte $72,$D3,$3F
	ldy $45,X 
	.byte $B8
	jmp A038_
	sty $C4,X 
	and $2ADE,Y 
	sta ($B7,X) 
	cpx #$53
	.byte $C3,$C3,$8B,$17,$54
	lsr A 
	eor ($36,X) 
	.byte $EF
	cpy $FB 
	iny 
	cpy $A3DC 
	eor $CCD4 
	cpy #$C5
	.byte $D2
	jmp 8C28_
	sta $CC 
	.byte $DA
	cpy $58FD 
	cpy $CEB8 
	.byte $44
	ldy $FCDC 
	.byte $5C
	cpx $8CFA 
	cmp $81CB,X 
	php 
	ora $F2,X
	.byte $6B,$CB
	inc $68,X 
	.byte $27
	cpy $041E 
	inx 
	cpy $FF 
	cmp #$35
	.byte $03
	inc $E3 
//------------------------------
L_BRS_1D08_1D38_JAM:
//------------------------------
	.byte $22,$12,$33
	adc $6863,Y 
	.byte $B2,$EF
	and $86
	cmp #$C2
	cpy $CA 
	.byte $DC
	eor #$CE
	.byte $D7,$DC
	jmp 88CC_
	sbc $8CED 
	.byte $D4
	sta $085E 
	sbc #$B4
	iny 
	cld 
	txa 
	.byte $44
	cpx $D8 
	cpy $4C 
	.byte $44,$DC
	dec $C788 
	.byte $23
	rol $CF2D 
	.byte $A7,$00
	bmi L_BRS_1D08_1D38_JAM
	.byte $53,$7C
	sec 
	.byte $DA
	ldx $C6,Y 
	sta ($3D),Y 
	.byte $74
	lda ($33,X) 
	.byte $1C
	asl A 
	.byte $EF,$33,$3B,$13
	sbc $DA2D,X 
	and $9CEF,Y 
	dex 
	stx $7C55 
	lda $9ED4 
	iny 
//------------------------------
L_BRS_1D59_1D7C_OK:
//------------------------------
	dec $9ECC 
	.byte $0C
	ldx $C58C 
	cpy $CED8 
	cpy $CCCD 
//------------------------------
L_BRS_1D68_1D82_BAD:
//------------------------------
	cmp $D8E4 
	cpy $E6E4 
	cmp $6C9D 
	cpx $D418 
	stx $9B 
	and ($3A),Y 
	.byte $AB
	adc $2C54,Y 
	bpl L_BRS_1DD8_1D7A_OK
	bmi L_BRS_1D59_1D7C_OK
	.byte $7A
//------------------------------
L_BRS_1D81_1DF4_BAD:
//------------------------------
	cmp $D627,X 
	bmi L_BRS_1D68_1D82_BAD
	and $F9
	adc $6C,X 
	eor $1A 
	.byte $3A
	dec $6F 
	.byte $42
	adc ($DC,X) 
	stx $8C34 
	sbc $4BCC 
	cpx $CFEE 
	cli 
	.byte $F8
	cmp $9DCE,X 
	sty $CC,X 
	sty $C488 
	cpy $CCEC 
	cpy $A8E8 
	jmp ECDC
	sty $DC8E 
	dec $E304 
	bvc L_BRS_1E14_1DB2_JAM
	dec $0B,X 
	pla 
	.byte $7C,$B2,$F4
	stx $0F,Y 
	.byte $FB
	clc 
	.byte $33
	lsr $1D 
	lda $23 
	.byte $C2,$27
	eor #$15
	.byte $83,$34,$5F
	and ($D9),Y 
	.byte $33
	ora $CA15,Y
	dec $8ADF,X 
	.byte $D7
	sbc ($D1),Y 
	cmp #$4E
//------------------------------
L_BRS_1DD8_1D7A_OK:
//------------------------------
	sty $151D 
	sta $CE88,Y 
	.byte $9E
	dec $CC 
	dec $6E8C 
	sbc #$84
	inc $FCEC 
	lsr $4C 
	jmp 2CCC_
	lsr $C3CD 
	.byte $D7,$12,$4F
	bmi L_BRS_1D81_1DF4_BAD
	.byte $B2
	sty $2B 
	nop 
	.byte $22
	plp 
	.byte $37
	tay 
	sec 
	.byte $C7
	rol $BE,X 
	.byte $A7,$02,$2B
	nop 
	.byte $5A
	dec $22 
	.byte $43,$F2
	asl A 
	.byte $12,$80
	ora ($C6),Y
	.byte $DC,$C3
	iny 
	iny 
//------------------------------
L_BRS_1E14_1DB2_JAM:
//------------------------------
	.byte $DC,$F8
	sta $C48F,X 
	.byte $82
	cpy $C8C1 
	.byte $C3
	cpy $CA 
	sty $548C 
	cpy $F5C8 
	.byte $CF
	cpy $CDC8 
	sty $CCAC 
	iny 
	php 
	sta $ABAC 
	lsr $5129,X 
	cli 
	adc ($DC),Y 
	rol $CC,X 
	.byte $DF
	rol $49 
	ldx $CC36 
	.byte $14,$D2,$3A
	cmp $2994,Y 
	and #$99
	adc $DB7D,Y 
	asl $73 
	.byte $43
	and $BD,X 
	stx $8E97 
	cpy $A4 
	lda $96ED 
	cpy $D8F2 
	dec $DDBC 
	sta $C8C8,X 
	ldx $44CC 
	.byte $DC,$FC
	cmp $E4EC,Y 
	cpy $E8E4 
	jmp CE2C
	cpy $B787 
	.byte $32,$9C
	and $BB26,X 
	.byte $0F
	jsr $C7CC
	.byte $F4,$3A
	cmp $B9,X 
	cpy $18 
	lsr $8DB6 
	.byte $B3
	inc $21B3,X 
	.byte $32
	dex 
	and $FA
	.byte $3B
	sty $9537 
	cmp $CC57,Y 
	.byte $C3
	cpy $ECCD 
	cmp ($7E,X) 
	cmp $5F 
	.byte $82
	iny 
	asl $CE96 
	cpy $CCC4 
	asl $5D0D 
	cpy $4C9C 
	cmp $CE85 
	jmp 94C4
	cpy $CA8D 
	.byte $33
	cpx $90 
	.byte $7A,$37,$93
	rol $90,X 
	ror $75CA,X 
	.byte $9B
	asl $18CC 
	txa 
	.byte $33
	sta $CB1B 
	.byte $37,$AB,$23,$44
	jsr $9766
	pla 
	.byte $B2,$C7
	cpy $ECC7 
	dec $C2,X 
	.byte $C3
	tax 
	cpy $565D 
	cmp $8CCC 
	dec $CED4 
	.byte $DC
	cpy $E4 
	.byte $EF
	cpx $A98D 
	.byte $DC
	cpy $ED4C 
	cpx $DCC9 
	cpy $CECE 
	.byte $8B
	and ($8C,X) 
	clc 
	.byte $CF
	plp 
	sbc $D422 
	.byte $F4,$54
	cmp $ACA6,Y 
	stx $92,Y 
	.byte $FB
	and $E5,X 
	.byte $33,$C2,$D3,$C3
	ldx $D3,Y 
	rol A 
	.byte $62
	adc $927F,Y 
	cpy $8D 
	.byte $C2
	stx $84 
	adc $BA 
	cpy $7CCA 
	cpy $8D 
	.byte $DF
	cmp $DC87 
	dec $C4 
	jmp ECCE
	.byte $C3
	nop 
	stx $A64C 
	sty $C58A 
	.byte $DC
	jmp EC0C
	.byte $5C,$80
	lda ($23,X) 
	and $3B6B 
	nop 
	asl A 
	eor ($33),Y 
	.byte $BF
	ora ($DC),Y
	.byte $9C
	cmp $BE 
	.byte $CF,$1B,$22
	sta ($41),Y 
	.byte $BF
	cmp ($B5),Y 
	dex 
	.byte $BF
	sbc $3E 
	dec $D6,X 
	.byte $C7,$87,$FF
	dec $CCCF 
	inc $C0DC 
	eor $DCC2 
	lda $96FC,X 
	dec $C4 
	cmp $FC44,X 
	sbc $CECC,X 
	cpy $0DC8 
	.byte $8F
	cmp #$9C
	jmp DCDC_
	cmp $99 
	inc $AA,X 
	ror $FBEC,X 
	.byte $3A
	cmp $03,X 
	ror $CD74 
	rol $D4,X 
	.byte $97
	dec $DF32 
	.byte $80,$DA,$F3,$9B
	ldx $339F 
	ldx $9F,Y 
	.byte $8B,$33,$F3
	and #$E3
	.byte $8F
	dec $4E 
	cpy $1C 
	.byte $44
	eor $CC4E 
	lda $969C 
	stx $6CD9 
	cmp $D4 
	cpx $8F4C 
	dec $78EC 
	sty $58EE 
	lsr A 
	sta $C48C 
	.byte $D4
	cpy $9D 
	cpy #$5A
	sbc $61 
	cpy #$2A
	.byte $9C
	ora $8C,X
	.byte $1B,$CF
	sec 
	.byte $B8
	sbc $5BF0,Y 
	ror A 
	sta ($D5,X) 
	.byte $1A
	eor $9E3A 
	.byte $13,$FA,$3A
	sbc ($72),Y 
	ror $457B,X 
	cpy $80 
	sta $ADAB 
	.byte $0C
	ldy $CF58 
	dex 
	.byte $FC,$DA
	sty $84 
	sty $CC 
	cpy $C4EC 
	.byte $44
	cld 
	jmp 84CC
	.byte $F8
	dec $FEE6 
	cpy $F6C8 
	cpx $44FB 
	.byte $0B
	cli 
	sta $D9,X 
	.byte $B2
	ldy #$3F
	.byte $13,$32
	adc $BA7B 
	sta $D8CE 
	lda #$CD
	sta $9005 
	lda #$08
	sta $900F 
	lda #$BC
	sta $9003 
	lda #$1A
	sta $9001 
	lda #$19
	sta $9002 
	lda #$09
	sta $9000 
	jsr L_JSR_20ED_201F_OK
	jmp L_JMP_3060_2022_OK
	.byte $4B,$4B,$4B
	jsr $2020
	jsr $2020
	jsr $4120
	.byte $42,$43,$44
	eor $20 
	jsr $2020
//------------------------------
L_JSR_203A_3166_BAD:
L_JSR_203A_317A_BAD:
//------------------------------
	jsr $4B4B
	.byte $4B
	jsr $2020
	jsr $2020
	jsr $2020
	jsr $2020
	lsr $47 
	pha 
	eor #$4A
	jsr $2020
	jsr $2020
	jsr $2020
	.byte $5A
	and ($20),Y 
	bmi L_BRS_208C_205A_JAM
	bmi L_BRS_208E_205C_JAM
	bmi L_BRS_2080_205E_BAD
//------------------------------
L_JSR_2060_1718_OK:
//------------------------------
	jsr $2020
	jsr $2020
	jsr $5A20
	.byte $32
	jsr L_JSR_3030_206A_OK
	bmi L_BRS_209F_206D_JAM
	bmi L_BRS_2091_206F_JAM
	jsr $2020
	jsr $2020
	jsr $6E20
	jsr $0C0C
	ora ($0D,X)
//------------------------------
L_BRS_2080_205E_BAD:
//------------------------------
	ora ($20,X)
	jsr $2020
	jsr $2020
	jsr $0520
	ora $05
//------------------------------
L_BRS_208C_205A_JAM:
L_BRS_208E_205C_JAM:
L_BRS_2091_206F_JAM:
//------------------------------
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $03,$03,$03,$03,$03,$00,$00,$00
//------------------------------
L_BRS_209F_206D_JAM:
//------------------------------
	.byte $00,$00,$04,$04,$04,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$03,$03,$03,$03,$03,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$03
	.byte $03,$00
	ora ($01,X)
	ora ($01,X)
	ora ($00,X)
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $03,$03,$00
	ora ($01,X)
	ora ($01,X)
	ora ($00,X)
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	ora ($00,X)
	.byte $03,$03,$03,$03,$03,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00
//------------------------------
L_JSR_20ED_201F_OK:
L_JSR_20ED_3233_OK:
//------------------------------
	ldy #$64
//------------------------------
L_BRS_20EF_20FC_OK:
//------------------------------
	lda $2024,Y 
	sta $0FFF,Y 
	lda $2088,Y 
	sta $93FF,Y 
	dey 
	bne L_BRS_20EF_20FC_OK
	rts 
//------------------------------
L_JSR_20FF_337A_OK:
L_JSR_20FF_3392_OK:
L_JSR_20FF_33FA_OK:
//------------------------------
	nop 
//------------------------------
L_JSR_2100_2BA3_OK:
L_JSR_2100_2D46_OK:
L_JSR_2100_2E8C_OK:
//------------------------------
	lda #$10
	sta $03 
	sta $05 
	lda #$64
	sta $02 
	sta $04 
	ldx #$08
//------------------------------
L_BRS_210E_2131_OK:
//------------------------------
	ldy #$17
	lda #$51
//------------------------------
L_BRS_2112_2115_OK:
//------------------------------
	sta ($04),Y 
	dey 
	bne L_BRS_2112_2115_OK
	lda #$56
	ldy #$00
	sta ($04),Y 
	lda #$57
	ldy #$18
	sta ($04),Y 
	clc 
	lda $04 
	adc #$64
	sta $04 
	lda $05 
	adc #$00
	sta $05 
	dex 
	bne L_BRS_210E_2131_OK
	lda $02 
	sta $04 
	lda $03 
	sta $05 
	ldy #$00
//------------------------------
L_BRS_213D_2178_OK:
//------------------------------
	lda #$58
	sta ($04),Y 
	ldx #$18
//------------------------------
L_BRS_2143_2163_OK:
//------------------------------
	lda $04 
	clc 
	adc #$19
	sta $04 
	lda $05 
	adc #$00
	sta $05 
	lda #$50
	sta $06 
	jsr L_JSR_2195_2154_OK
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	lda $06 
	sta ($04),Y 
	dex 
	bne L_BRS_2143_2163_OK
	lda #$59
	sta ($04),Y 
	lda $02 
	sta $04 
	lda $03 
	sta $05 
	iny 
	iny 
	iny 
	iny 
	nop 
	cpy #$1C
	bne L_BRS_213D_2178_OK
	lda #$52
	ldy #$00
	sta ($02),Y 
	ldy #$18
	lda #$53
	sta ($02),Y 
	lda #$55
	ldy #$00
	sta $12BC,Y 
	ldy #$18
	lda #$54
	sta $12BC,Y 
	rts 
//------------------------------
L_JSR_2195_2154_OK:
//------------------------------
	lda ($04),Y 
	cmp #$51
	bne L_BRS_21A0_2199_OK
	lda #$4F
	sta $06 
	rts 
//------------------------------
L_BRS_21A0_2199_OK:
//------------------------------
	cmp #$56
	bne L_BRS_21A7_21A2_OK
	sta $06 
	rts 
//------------------------------
L_BRS_21A7_21A2_OK:
//------------------------------
	cmp #$57
	bne L_BRS_21AD_21A9_OK
	sta $06 
//------------------------------
L_BRS_21AD_21A9_OK:
//------------------------------
	rts 
//------------------------------
L_JSR_21AE_2E89_OK:
L_JSR_21AE_2F03_OK:
L_JSR_21AE_3000_OK:
//------------------------------
	lda #$10
	sta $05 
	lda #$64
	sta $04 
	ldx #$1A
//------------------------------
L_BRS_21B8_21D1_OK:
//------------------------------
	ldy #$00
//------------------------------
L_BRS_21BA_21C1_OK:
//------------------------------
	lda #$20
	jsr L_JSR_21D4_21BC_OK
	cpy #$1A
	bne L_BRS_21BA_21C1_OK
	lda $04 
	clc 
	adc #$19
	sta $04 
	lda $05 
	adc #$00
	sta $05 
	dex 
	bne L_BRS_21B8_21D1_OK
	rts 
//------------------------------
L_JSR_21D4_21BC_OK:
//------------------------------
	sta ($04),Y 
	lda $05 
	pha 
	clc 
	adc #$84
	sta $05 
	lda #$07
	sta ($04),Y 
	pla 
	sta $05 
	iny 
	rts 
//------------------------------
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
//------------------------------
L_JMP_2200_3236_BAD:
//------------------------------
	sbc $20,X 
	ldx $2021 
	.byte $00
	and ($A5,X) 
	ora $1985,Y
	lda #$0F
	sta $900E 
	jsr L_JSR_2E0E_220F_OK
	jsr L_JSR_2C1C_2212_OK
	jsr L_JSR_2DDD_2215_BAD
	nop 
	lda #$03
	sta $0E 
	sta $0F 
	lda $0D 
	sta $0D 
	sta $08 
	jsr L_JSR_2920_2225_OK
	lda #$03
	sta $14 
	sta $13 
	lda $05 
	sta $2A 
	lda #$10
	sta $1B 
	lda $19 
	sta $19 
	lda #$00
	sta $17 
	sta $18 
	lda #$03
	sta $20 
	lda #$1F
	sta $21 
	lda $19 
	sta $00 
	nop 
	nop 
	nop 
	nop 
//------------------------------
L_JMP_2250_2265_OK:
L_BRS_2250_2294_OK:
L_JMP_2250_2E98_OK:
L_JMP_2250_2EF8_OK:
//------------------------------
	jsr L_JSR_28C8_2250_OK
	jsr L_JSR_2560_2253_OK
	jsr L_JSR_28E1_2256_OK
	jsr L_JSR_2A0E_2259_OK
	jsr L_JSR_2A3B_225C_OK
	jsr L_JSR_2B11_225F_OK
	jsr L_JSR_2E9B_2262_OK
	jmp L_JMP_2250_2265_OK
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	jsr $FFE1
	bne L_BRS_2250_2294_OK
	rts 
//------------------------------
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
//------------------------------
L_BRS_22C0_2318_BAD:
//------------------------------
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
//------------------------------
L_BRS_22C9_231D_OK:
//------------------------------
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $EA,X 
//------------------------------
L_BRS_22D2_2322_BAD:
//------------------------------
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
//------------------------------
L_BRS_22D8_2327_BAD:
//------------------------------
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
//------------------------------
L_BRS_22F5_232C_OK:
//------------------------------
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $F5,X 
	sbc $96,X 
	bpl L_BRS_2303_2301_JAM
//------------------------------
L_BRS_2303_2301_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_233F_2304_BAD
	ora ($01),Y
	.byte $B7
	eor ($F8),Y 
	ora ($01),Y
	.byte $87,$4F
	asl $12 
	ora ($B7,X)
	eor ($A2),Y 
	bpl L_BRS_2317_2315_JAM
//------------------------------
L_BRS_2317_2315_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_22C0_2318_BAD
	bpl L_BRS_231C_231A_JAM
//------------------------------
L_BRS_231C_231A_JAM:
//------------------------------
	.byte $B7
	bvc L_BRS_22C9_231D_OK
	bpl L_BRS_2321_231F_JAM
//------------------------------
L_BRS_2321_231F_JAM:
//------------------------------
	.byte $27
	bvc L_BRS_22D2_2322_BAD
	bpl L_BRS_2326_2324_JAM
//------------------------------
L_BRS_2326_2324_JAM:
//------------------------------
	.byte $27
	bvc L_BRS_22D8_2327_BAD
	bpl L_BRS_232D_2329_BAD
	.byte $B7
//------------------------------
L_BRS_232D_2329_BAD:
//------------------------------
	bvc L_BRS_22F5_232C_OK
	bpl L_BRS_2332_232E_BAD
	.byte $07
//------------------------------
L_BRS_2332_232E_BAD:
//------------------------------
	bvc L_BRS_2333_2331_JAM
//------------------------------
L_BRS_2333_2331_JAM:
//------------------------------
	.byte $00,$00,$E3,$00,$00,$5B,$5C
	eor $5F5E,X 
	rts 
//------------------------------
L_BRS_233F_2304_BAD:
//------------------------------
	adc ($E4,X) 
	ora ($19,X)
	.byte $00,$00,$00,$00,$00,$00
	lsr $01,X 
	.byte $02,$03,$00
	cli 
	.byte $00,$02,$03,$04,$4F
	ora ($02,X)
	.byte $03,$04,$63
	ora ($02,X)
	.byte $03,$04,$64
	ora ($02,X)
	.byte $03,$04,$6F
	ora ($02,X)
	.byte $03,$04
	eor $0201,Y 
	.byte $00,$04,$57
	ora ($00,X)
	.byte $03,$04,$52,$00,$02,$03,$00,$53
	.byte $00,$00,$03,$04,$54
	ora ($00,X)
	.byte $00,$04
	eor $01,X 
	.byte $02,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00
//------------------------------
L_JMP_2390_2F52_OK:
//------------------------------
	lda $00 
	sta $FD 
//------------------------------
L_BRS_2394_23B2_OK:
//------------------------------
	ldx #$00
	ldy $FD 
//------------------------------
L_BRS_2398_239E_OK:
//------------------------------
	inx 
	inx 
	inx 
	inx 
	inx 
	dey 
	bne L_BRS_2398_239E_OK
	lda $2300,X 
	sta $01 
	lda $2301,X 
	sta $02 
	jsr L_JSR_23B5_23AA_OK
	jsr L_JSR_23CE_23AD_OK
	dec $FD 
	bne L_BRS_2394_23B2_OK
	rts 
//------------------------------
L_JSR_23B5_23AA_OK:
//------------------------------
	txa 
	pha 
	lda $2302,X 
	tax 
	lda $2338,X 
	sta ($01),Y 
	lda $02 
	clc 
	adc #$84
	sta $02 
	lda #$03
	sta ($01),Y 
	pla 
	tax 
	rts 
//------------------------------
L_JSR_23CE_23AD_OK:
//------------------------------
	txa 
	pha 
	tya 
	pha 
	ldx #$80
//------------------------------
L_BRS_23D4_23D8_OK:
L_BRS_23D4_23DB_OK:
//------------------------------
	stx $900D 
	dey 
	bne L_BRS_23D4_23D8_OK
	inx 
	bne L_BRS_23D4_23DB_OK
//------------------------------
L_BRS_23DD_23E1_OK:
L_BRS_23DD_23E6_OK:
//------------------------------
	stx $900D 
	dey 
	bne L_BRS_23DD_23E1_OK
	dex 
	cpx #$7E
	bne L_BRS_23DD_23E6_OK
	pla 
	tay 
	pla 
	tax 
	rts 
//------------------------------
	.byte $00,$00,$00
//------------------------------
L_JSR_23F0_251E_OK:
//------------------------------
	lda $2300,X 
	sta $01 
	lda $2301,X 
	sta $02 
	lda #$00
	sta $03 
	clc 
	lda ($01),Y 
	and #$04
	bne L_BRS_2409_2403_OK
	lda #$04
	sta $03 
//------------------------------
L_BRS_2409_2403_OK:
//------------------------------
	lda $2304,X 
	sta ($01),Y 
	lda $02 
	clc 
	adc #$84
	sta $02 
	lda $2303,X 
	sta ($01),Y 
//------------------------------
L_JMP_241A_2559_OK:
//------------------------------
	lda $2302,X 
	cmp #$00
	beq L_BRS_243F_241F_OK
	cmp #$02
	beq L_BRS_243F_2423_OK
	cmp #$01
	bne L_BRS_2434_2427_OK
	inc $2300,X 
	bne L_BRS_2431_242C_OK
	inc $2301,X 
//------------------------------
L_BRS_2431_242C_OK:
//------------------------------
	jmp L_JMP_2468_2431_OK
//------------------------------
L_BRS_2434_2427_OK:
//------------------------------
	ldy #$01
	jsr L_JSR_2532_2436_OK
	nop 
	nop 
	nop 
	jmp L_JMP_2468_243C_OK
//------------------------------
L_BRS_243F_241F_OK:
L_BRS_243F_2423_OK:
//------------------------------
	cmp #$02
	beq L_BRS_2457_2441_OK
	nop 
	nop 
	nop 
	jsr L_JSR_2530_2446_OK
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	jmp L_JMP_2468_2454_OK
//------------------------------
L_BRS_2457_2441_OK:
//------------------------------
	lda $2300,X 
	clc 
	adc #$19
	sta $2300,X 
	lda $2301,X 
	adc #$00
	sta $2301,X 
//------------------------------
L_JMP_2468_2431_OK:
L_JMP_2468_243C_OK:
L_JMP_2468_2454_OK:
//------------------------------
	lda $2300,X 
	sta $01 
	lda $2301,X 
	sta $02 
	lda ($01),Y 
	cmp #$50
	beq L_BRS_24D8_2476_OK
	cmp #$51
	beq L_BRS_24D8_247A_OK
	sta $04 
	txa 
	pha 
	ldy #$0C
	ldx #$00
//------------------------------
L_BRS_2484_2491_OK:
//------------------------------
	lda $2348,X 
	cmp $04 
	beq L_BRS_2495_2489_OK
	inx 
	inx 
	inx 
	inx 
	inx 
	dey 
	bne L_BRS_2484_2491_OK
	beq L_BRS_2508_2493_OK
//------------------------------
L_BRS_2495_2489_OK:
//------------------------------
	stx $06 
	pla 
	tax 
	lda #$03
	jsr L_JSR_28DB_249B_OK
	nop 
	and #$01
	beq L_BRS_24A7_24A1_OK
	lda #$01
	sta $05 
//------------------------------
L_BRS_24A7_24A1_OK:
//------------------------------
	ldy $05 
//------------------------------
L_BRS_24A9_24B9_OK:
L_JMP_24A9_24D3_OK:
//------------------------------
	inc $2302,X 
	lda $2302,X 
	cmp #$04
	bne L_BRS_24B8_24B1_OK
	lda #$00
	sta $2302,X 
//------------------------------
L_BRS_24B8_24B1_OK:
//------------------------------
	dey 
	bne L_BRS_24A9_24B9_OK
	txa 
	pha 
	lda $2302,X 
	sta $07 
	lda $06 
	clc 
	adc $07 
	tax 
	lda $2349,X 
	cmp #$00
	bne L_BRS_24D6_24CD_OK
	pla 
	tax 
	ldy #$02
	jmp L_JMP_24A9_24D3_OK
//------------------------------
L_BRS_24D6_24CD_OK:
//------------------------------
	pla 
	tax 
//------------------------------
L_BRS_24D8_2476_OK:
L_BRS_24D8_247A_OK:
//------------------------------
	lda $2300,X 
	sta $01 
	lda $2301,X 
	sta $02 
	lda ($01),Y 
	sta $2304,X 
	txa 
	pha 
	lda $2302,X 
	clc 
	adc $03 
	tax 
	lda $2338,X 
	sta ($01),Y 
	pla 
	tax 
	lda $02 
	clc 
	adc #$84
	sta $02 
//------------------------------
L_JSR_24FF_3384_BAD:
//------------------------------
	lda ($01),Y 
	sta $2303,X 
	lda $20 
	sta ($01),Y 
	rts 
//------------------------------
L_BRS_2508_2493_OK:
//------------------------------
	jmp L_JMP_2BF8_2508_OK
	.byte $00,$00,$00,$00,$00
//------------------------------
L_JSR_2510_25E0_OK:
//------------------------------
	ldy #$00
	lda $00 
	sta $FD 
//------------------------------
L_BRS_2516_2523_OK:
//------------------------------
	lda $FD 
	asl A 
	asl A 
	clc 
	adc $FD 
	tax 
	jsr L_JSR_23F0_251E_OK
	dec $FD 
	bne L_BRS_2516_2523_OK
	rts 
//------------------------------
L_JMP_2526_28D1_OK:
//------------------------------
	dec $08 
	beq L_BRS_252B_2528_OK
	rts 
//------------------------------
L_BRS_252B_2528_OK:
//------------------------------
	jmp L_JMP_28D4_252B_OK
	.byte $00,$00
//------------------------------
L_JSR_2530_2446_OK:
//------------------------------
	ldy #$19
//------------------------------
L_JSR_2532_2436_OK:
L_BRS_2532_2540_OK:
//------------------------------
	dec $2300,X 
	lda $2300,X 
	cmp #$FF
	bne L_BRS_253F_253A_OK
	dec $2301,X 
//------------------------------
L_BRS_253F_253A_OK:
//------------------------------
	dey 
	bne L_BRS_2532_2540_OK
	rts 
//------------------------------
L_JMP_2543_2C04_OK:
//------------------------------
	pla 
	tax 
	ldy #$02
//------------------------------
L_BRS_2547_2557_OK:
//------------------------------
	inc $2302,X 
	lda $2302,X 
	cmp #$04
	bne L_BRS_2556_254F_OK
	lda #$00
	sta $2302,X 
//------------------------------
L_BRS_2556_254F_OK:
//------------------------------
	dey 
	bne L_BRS_2547_2557_OK
	jmp L_JMP_241A_2559_OK
	.byte $00,$00,$00,$00
//------------------------------
L_JSR_2560_2253_OK:
L_JSR_2560_3079_OK:
//------------------------------
	sei 
	ldx #$7F
	stx $9122 
//------------------------------
L_BRS_2566_256C_OK:
//------------------------------
	ldy $9120 
	cpy $9120 
	bne L_BRS_2566_256C_OK
	ldx #$FF
	stx $9122 
	ldx #$F7
	stx $9120 
	cli 
//------------------------------
L_BRS_2579_257F_OK:
//------------------------------
	lda $911F 
	cmp $911F 
	bne L_BRS_2579_257F_OK
	pha 
	and #$1C
	lsr A 
	cpy #$80
	bcc L_BRS_258B_2587_OK
	ora #$10
//------------------------------
L_BRS_258B_2587_OK:
//------------------------------
	tay 
	pla 
	and #$20
	cmp #$20
	tya 
	ror A 
	eor #$8F
	sta $0A 
	rts 
//------------------------------
	.byte $00,$00,$00,$00,$00,$00,$00,$00
//------------------------------
L_JMP_25A0_2BA6_OK:
L_JSR_25A0_2D5E_OK:
L_JSR_25A0_2D61_OK:
L_JMP_25A0_2E20_OK:
L_JSR_25A0_2E8F_OK:
//------------------------------
	lda #$C7
	sta $01 
	lda #$96
	sta $02 
	ldy #$05
	lda #$02
//------------------------------
L_BRS_25AC_25AF_OK:
//------------------------------
	sta ($01),Y 
	dey 
	bne L_BRS_25AC_25AF_OK
	inc $01 
	inc $01 
	lda $01 
	sta $2600 
	lda #$12
	sta $2601 
	lda #$51
	sta $2602 
	lda #$01
	sta $2603 
	lda #$00
	sta $2604 
	lda #$12
	sta $02 
	lda #$4C
	sta ($01),Y 
	lda #$02
	sta $2608 
	rts 
//------------------------------
	.byte $00,$00,$00,$00
//------------------------------
L_JMP_25E0_28D8_OK:
//------------------------------
	jsr L_JSR_2510_25E0_OK
	jmp L_JMP_2620_25E3_OK
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$04
	ldx $10 
	bvc L_BRS_2604_2602_JAM
//------------------------------
L_BRS_2604_2602_JAM:
//------------------------------
	.byte $00,$00,$00,$00,$07,$4B
	jmp 4E4D
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00
//------------------------------
L_JMP_2620_25E3_OK:
L_JMP_2620_2BB4_OK:
//------------------------------
	lda $2600 
	sta $01 
	lda $2601 
	sta $02 
	ldy #$00
	lda ($01),Y 
	ldx $2603 
	cmp $2609,X 
	beq L_BRS_2639_2634_OK
	jmp L_JMP_2B91_2636_OK
//------------------------------
L_BRS_2639_2634_OK:
//------------------------------
	lda #$00
	sta $0B 
	lda $2602 
	sta ($01),Y 
	lda $02 
	clc 
	adc #$84
	sta $02 
	lda $2608 
	sta ($01),Y 
	lda $2602 
	cmp #$50
	bne L_BRS_265C_2653_OK
	lda #$03
	sta $0B 
	jmp L_JMP_26A7_2659_OK
//------------------------------
L_BRS_265C_2653_OK:
//------------------------------
	cmp #$51
	bne L_BRS_2667_265E_OK
	lda #$0C
	sta $0B 
	jmp L_JMP_26A7_2664_OK
//------------------------------
L_BRS_2667_265E_OK:
//------------------------------
	ldx #$00
	ldy #$0C
	lda $2602 
//------------------------------
L_BRS_266E_2679_OK:
//------------------------------
	cmp $2348,X 
	beq L_BRS_267B_2671_OK
	inx 
	inx 
	inx 
	inx 
	inx 
	dey 
	bne L_BRS_266E_2679_OK
//------------------------------
L_BRS_267B_2671_OK:
//------------------------------
	lda $2349,X 
	beq L_BRS_2686_267E_OK
	lda #$01
	ora $0B
	sta $0B 
//------------------------------
L_BRS_2686_267E_OK:
//------------------------------
	lda $234A,X 
	beq L_BRS_2691_2689_OK
	lda #$08
	ora $0B
	sta $0B 
//------------------------------
L_BRS_2691_2689_OK:
//------------------------------
	lda $234B,X 
	beq L_BRS_269C_2694_OK
	lda #$02
	ora $0B
	sta $0B 
//------------------------------
L_BRS_269C_2694_OK:
//------------------------------
	lda $234C,X 
	beq L_BRS_26A7_269F_OK
	lda #$04
	ora $0B
	sta $0B 
//------------------------------
L_JMP_26A7_2659_OK:
L_JMP_26A7_2664_OK:
L_BRS_26A7_269F_OK:
//------------------------------
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	lda $0A 
	and #$0F
	beq L_BRS_272D_26B1_OK
	lda $0A 
	and $0B
	sta $0B 
	lda $0B 
	beq L_BRS_272D_26BB_OK
	and #$01
	beq L_BRS_26DB_26BF_OK
	ldy #$19
//------------------------------
L_BRS_26C3_26D1_OK:
//------------------------------
	dec $2600 
	lda $2600 
	cmp #$FF
	bne L_BRS_26D0_26CB_OK
	dec $2601 
//------------------------------
L_BRS_26D0_26CB_OK:
//------------------------------
	dey 
	bne L_BRS_26C3_26D1_OK
	lda #$00
	sta $2603 
	jmp L_JMP_272D_26D8_OK
//------------------------------
L_BRS_26DB_26BF_OK:
//------------------------------
	lda $0B 
	and #$08
	beq L_BRS_26F1_26DF_OK
	inc $2600 
	bne L_BRS_26E9_26E4_OK
	inc $2601 
//------------------------------
L_BRS_26E9_26E4_OK:
//------------------------------
	lda #$01
	sta $2603 
	jmp L_JMP_272D_26EE_OK
//------------------------------
L_BRS_26F1_26DF_OK:
//------------------------------
	lda $0B 
	and #$02
	beq L_BRS_2710_26F5_OK
	lda $2600 
	clc 
	adc #$19
	sta $2600 
	lda $2601 
	adc #$00
	sta $2601 
	lda #$02
	sta $2603 
	jmp L_JMP_272D_270D_OK
//------------------------------
L_BRS_2710_26F5_OK:
//------------------------------
	lda $0B 
	and #$04
	beq L_BRS_272D_2714_OK
	dec $2600 
	lda $2600 
	cmp #$FF
	bne L_BRS_2723_271E_OK
	dec $2601 
//------------------------------
L_BRS_2723_271E_OK:
//------------------------------
	lda #$03
	sta $2603 
	nop 
	nop 
	nop 
	nop 
	nop 
//------------------------------
L_BRS_272D_26B1_OK:
L_BRS_272D_26BB_OK:
L_JMP_272D_26D8_OK:
L_JMP_272D_26EE_OK:
L_JMP_272D_270D_OK:
L_BRS_272D_2714_OK:
//------------------------------
	ldy #$00
	nop 
	lda $2600 
	sta $01 
	lda $2601 
	sta $02 
	lda ($01),Y 
	ldx #$08
//------------------------------
L_BRS_273E_2747_OK:
//------------------------------
	cmp $2337,X 
	bne L_BRS_2746_2741_OK
	jmp L_JMP_2B91_2743_OK
//------------------------------
L_BRS_2746_2741_OK:
//------------------------------
	dex 
	bne L_BRS_273E_2747_OK
	sta $2602 
	lda $02 
	clc 
	adc #$84
	sta $02 
	lda ($01),Y 
	and #$07
	cmp #$02
	bne L_BRS_2773_2759_OK
	lda #$02
	sta $2608 
	lda $2604 
	beq L_BRS_276B_2763_OK
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
//------------------------------
L_BRS_276B_2763_OK:
//------------------------------
	nop 
	nop 
	jsr L_JSR_27F8_276D_OK
	jmp L_JMP_2787_2770_OK
//------------------------------
L_BRS_2773_2759_OK:
//------------------------------
	lda $2608 
	cmp #$07
	beq L_BRS_2787_2778_OK
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	jsr L_JSR_27C0_2784_OK
//------------------------------
L_JMP_2787_2770_OK:
L_BRS_2787_2778_OK:
//------------------------------
	lda $09 
	nop 
	sta ($01),Y 
	lda $2601 
	sta $02 
	ldx $2603 
	lda $2609,X 
	sta ($01),Y 
	rts 
//------------------------------
	.byte $00,$00,$07,$00,$07,$00,$4F
	stx $36,Y 
	stx $1D,Y 
	stx $04,Y 
	stx $EB,Y 
	sta $D2,X 
	sta $B9,X 
	sta $A0,X 
	sta $87,X 
	sta $6E,X 
	sta $55,X 
	sta $3C,X 
	sta $4F,X 
	lsr $57,X 
	cli 
	eor $0000,Y 
	.byte $00
//------------------------------
L_JSR_27C0_2784_OK:
//------------------------------
	inc $2604 
	lda $2604 
	asl A 
	tax 
	lda $2600 
	sta $279E,X 
	lda $2601 
	clc 
	adc #$84
	sta $279F,X 
	txa 
	cmp #$02
	bne L_BRS_27DD_27DA_OK
	rts 
//------------------------------
L_BRS_27DD_27DA_OK:
//------------------------------
	lda $279C,X 
	cmp $279E,X 
	bne L_BRS_27E9_27E3_OK
	dec $2604 
	rts 
//------------------------------
L_BRS_27E9_27E3_OK:
//------------------------------
	lda $2604 
	cmp #$0C
	beq L_BRS_27F1_27EE_OK
	rts 
//------------------------------
L_BRS_27F1_27EE_OK:
//------------------------------
	jmp L_JMP_2880_27F1_OK
	.byte $00,$00,$00,$00
//------------------------------
L_JSR_27F8_276D_OK:
//------------------------------
	lda $2604 
	asl A 
	tax 
	lda $279E,X 
	cmp $2600 
	bne L_BRS_2806_2803_OK
	rts 
//------------------------------
L_BRS_2806_2803_OK:
//------------------------------
	lda $2604 
	cmp #$03
	beq L_BRS_2818_280B_OK
	cmp #$07
	beq L_BRS_2818_280F_OK
	cmp #$0B
	beq L_BRS_2818_2813_OK
	jmp L_JMP_2880_2815_OK
//------------------------------
L_BRS_2818_280B_OK:
L_BRS_2818_280F_OK:
L_BRS_2818_2813_OK:
//------------------------------
	lda $2602 
	jmp L_JMP_2821_281B_OK
//------------------------------
L_BRS_281E_2826_OK:
//------------------------------
	jmp L_JMP_2A44_281E_OK
//------------------------------
L_JMP_2821_281B_OK:
//------------------------------
	ldx #$05
//------------------------------
L_BRS_2823_2829_OK:
//------------------------------
	cmp $27B7,X 
	beq L_BRS_281E_2826_OK
	dex 
	bne L_BRS_2823_2829_OK
	jmp L_JMP_2880_282B_OK
//------------------------------
L_JMP_282E_28C5_OK:
L_JMP_282E_2E3C_OK:
//------------------------------
	lda #$00
	sta $2604 
//------------------------------
L_JMP_2833_2873_OK:
L_JMP_2833_287B_OK:
//------------------------------
	lda $2600 
	sta $01 
	lda $2601 
	clc 
	adc #$84
	sta $02 
	rts 
//------------------------------
L_BRS_2841_2885_OK:
L_JSR_2841_2BA0_OK:
L_JSR_2841_2D3A_OK:
//------------------------------
	lda #$07
	sta $2608 
	lda $2604 
	cmp #$00
	bne L_BRS_2850_284B_OK
	jmp L_JMP_2876_284D_OK
//------------------------------
L_BRS_2850_284B_OK:
//------------------------------
	asl A 
	tax 
//------------------------------
L_BRS_2852_2867_OK:
//------------------------------
	lda $279E,X 
	sta $01 
	lda $279F,X 
	sta $02 
	ldy #$00
	lda #$07
	sta ($01),Y 
	jsr L_JSR_289A_2862_OK
	dex 
	dex 
	bne L_BRS_2852_2867_OK
	lda #$00
	sta $2604 
	lda #$C3
	sta $900D 
	jmp L_JMP_2833_2873_OK
//------------------------------
L_JMP_2876_284D_OK:
//------------------------------
	lda #$02
	sta $2608 
	jmp L_JMP_2833_287B_OK
	.byte $02,$02
//------------------------------
L_JMP_2880_27F1_OK:
L_JMP_2880_2815_OK:
L_JMP_2880_282B_OK:
//------------------------------
	lda $2604 
	cmp #$01
	bne L_BRS_2841_2885_OK
	lda $27A0 
	sta $01 
	lda $27A1 
	sta $02 
	ldy #$00
	lda #$07
	sta ($01),Y 
	jmp L_JMP_28C2_2897_OK
//------------------------------
L_JSR_289A_2862_OK:
L_JSR_289A_28C2_OK:
//------------------------------
	txa 
	pha 
	tya 
	pha 
	ldy #$0A
	ldx #$00
//------------------------------
L_BRS_28A2_28BB_OK:
//------------------------------
	lda $2300,X 
	cmp $01 
	bne L_BRS_28B5_28A7_OK
	jsr L_JSR_29C6_28A9_OK
	nop 
	nop 
	bne L_BRS_28B5_28AE_OK
	lda #$07
//------------------------------
L_JMP_28B2_1B50_OK:
//------------------------------
	sta $2303,X 
//------------------------------
L_BRS_28B5_28A7_OK:
L_BRS_28B5_28AE_OK:
//------------------------------
	inx 
	inx 
	inx 
	inx 
	inx 
	dey 
	bne L_BRS_28A2_28BB_OK
	pla 
	tay 
	pla 
	tax 
	rts 
//------------------------------
L_JMP_28C2_2897_OK:
//------------------------------
	jsr L_JSR_289A_28C2_OK
	jmp L_JMP_282E_28C5_OK
//------------------------------
L_JSR_28C8_2250_OK:
//------------------------------
	dec $0F 
	beq L_BRS_28CD_28CA_OK
	rts 
//------------------------------
L_BRS_28CD_28CA_OK:
//------------------------------
	lda $0E 
	sta $0F 
	jmp L_JMP_2526_28D1_OK
//------------------------------
L_JMP_28D4_252B_OK:
//------------------------------
	lda $0D 
	sta $08 
	jmp L_JMP_25E0_28D8_OK
//------------------------------
L_JSR_28DB_249B_OK:
//------------------------------
	sta $05 
	lda $9004 
	rts 
//------------------------------
L_JSR_28E1_2256_OK:
//------------------------------
	dec $14 
	beq L_BRS_28E6_28E3_OK
	rts 
//------------------------------
L_BRS_28E6_28E3_OK:
//------------------------------
	lda $13 
	sta $14 
	dec $10 
	beq L_BRS_28EF_28EC_OK
	rts 
//------------------------------
L_BRS_28EF_28EC_OK:
//------------------------------
	lda #$28
	sta $10 
	dec $900E 
	lda $900E 
	beq L_BRS_28FC_28F9_OK
	rts 
//------------------------------
L_BRS_28FC_28F9_OK:
//------------------------------
	ldy #$02
//------------------------------
L_BRS_28FE_2905_OK:
//------------------------------
	inc $15 
	bne L_BRS_2904_2900_OK
	inc $16 
//------------------------------
L_BRS_2904_2900_OK:
//------------------------------
	dey 
	bne L_BRS_28FE_2905_OK
	ldy #$00
	lda ($15),Y 
	cmp #$FF
	beq L_BRS_2920_290D_OK
	sta $900C 
	iny 
	lda ($15),Y 
	sta $13 
	sta $14 
	lda #$0F
	sta $900E 
	rts 
//------------------------------
	nop 
//------------------------------
L_JSR_2920_2225_OK:
L_BRS_2920_290D_OK:
//------------------------------
	jmp L_JMP_29D0_2920_OK
	ora $A9,X
	and #$85
	asl $60,X 
	.byte $02,$02,$87,$02,$9F,$02,$AF,$02
	.byte $87
	ora ($9F,X)
	.byte $02,$AF,$02,$87
	ora ($9F,X)
	.byte $02,$AF,$02,$87,$02
	ldy $02 
	.byte $B7,$02,$87
	ora ($A4,X)
	.byte $02,$B7,$02,$87
	ora ($A4,X)
	.byte $02,$B7,$02,$87,$02,$9F,$02,$AF
	.byte $02,$87
	ora ($9F,X)
	.byte $02,$AF,$02,$87
	ora ($9F,X)
	.byte $02,$AF,$02
	ldy $02 
	ldy $02 
	ldy $01 
	ldy $02 
	ldy $04 
	ldy $01 
	ldy $01 
	.byte $AF
	ora ($AF,X)
	ora ($B3,X)
	ora ($B3,X)
	ora ($B7,X)
	.byte $02,$BB,$02,$B7,$02,$AF,$02
	ldy $02 
	.byte $AF,$02
	ldy $02 
	.byte $93,$02,$AF,$02,$AF
	ora ($B7,X)
	ora ($AF,X)
	.byte $02
	ldy $02 
	.byte $9F
	ora ($9F,X)
	ora ($93,X)
	.byte $02,$87,$04,$B7
	ora ($B7,X)
	ora ($BB,X)
	.byte $02,$B7,$02,$AF,$02
	ldy $02 
	.byte $AF,$02
	ldy $02 
	.byte $93,$02,$AF,$02,$AF
	ora ($B7,X)
	ora ($AF,X)
	.byte $02
	ldy $02 
	.byte $9F
	ora ($9F,X)
	ora ($93,X)
	.byte $02,$87,$04,$00
	ora ($FF,X)
	.byte $FF,$FF,$FF,$FF,$FF,$FF
//------------------------------
L_JSR_29C6_28A9_OK:
//------------------------------
	lda $2301,X 
	clc 
	adc #$84
	cmp $02 
	rts 
//------------------------------
	.byte $FF
//------------------------------
L_JMP_29D0_2920_OK:
//------------------------------
	lda #$29
	sta $15 
	sta $16 
	lda #$01
	sta $10 
	lda #$01
	sta $13 
	sta $14 
	ldy #$00
	lda #$01
	sta $900E 
	rts 
//------------------------------
L_BRS_29E8_2A12_OK:
L_JMP_29E8_2B28_OK:
//------------------------------
	ldx #$01
//------------------------------
L_BRS_29EA_2A0B_OK:
//------------------------------
	lda $900D 
	cmp #$C3
	bne L_BRS_29F9_29EF_OK
	lda #$E1
	sta $900D 
	jmp L_JMP_2A0A_29F6_OK
//------------------------------
L_BRS_29F9_29EF_OK:
//------------------------------
	cmp #$E1
	bne L_BRS_2A05_29FB_OK
	lda #$F0
	sta $900D 
	jmp L_JMP_2A0A_2A02_OK
//------------------------------
L_BRS_2A05_29FB_OK:
//------------------------------
	lda #$00
	sta $900D 
//------------------------------
L_JMP_2A0A_29F6_OK:
L_JMP_2A0A_2A02_OK:
//------------------------------
	dex 
	bne L_BRS_29EA_2A0B_OK
	rts 
//------------------------------
L_JSR_2A0E_2259_OK:
//------------------------------
	lda $08 
	cmp #$01
	beq L_BRS_29E8_2A12_OK
	rts 
//------------------------------
L_BRS_2A17_2A38_BAD:
L_BRS_2A15_2A41_OK:
//------------------------------
	lda $900B 
	cmp #$00
	bne L_BRS_2A1D_2A1A_OK
	rts 
//------------------------------
L_BRS_2A1D_2A1A_OK:
//------------------------------
	inc $900B 
	inc $900A 
	inc $900D 
	rts 
//------------------------------
	.byte $0F
	sta $900E 
	rts 
//------------------------------
	sta $9009,X 
	jmp L_JMP_2A37_2A2F_OK
	lda #$00
	sta $9009,X 
//------------------------------
L_JMP_2A37_2A2F_OK:
//------------------------------
	dex 
	bne L_BRS_2A17_2A38_BAD
	rts 
//------------------------------
L_JSR_2A3B_225C_OK:
//------------------------------
	lda $08 
	nop 
	nop 
	cmp #$01
	beq L_BRS_2A15_2A41_OK
	rts 
//------------------------------
L_JMP_2A44_281E_OK:
//------------------------------
	lda #$F2
	sta $900A 
	sta $900B 
	ldy #$03
	ldx $19 
	jsr L_JSR_2A60_2A50_OK
	inc $17 
	lda $17 
	cmp #$24
	beq L_BRS_2A7E_2A59_OK
	nop 
	nop 
	jmp L_JMP_2A83_2A5D_OK
//------------------------------
L_JSR_2A60_2A50_OK:
L_BRS_2A60_2A79_OK:
L_JSR_2A60_2B49_OK:
//------------------------------
	tya 
	pha 
//------------------------------
L_BRS_2A62_2A74_OK:
//------------------------------
	lda ($1A),Y 
	clc 
	adc #$01
	sta ($1A),Y 
	cmp #$3A
	bne L_BRS_2A76_2A6B_OK
	lda #$30
	sta ($1A),Y 
	dey 
	cpy #$FF
	bne L_BRS_2A62_2A74_OK
//------------------------------
L_BRS_2A76_2A6B_OK:
//------------------------------
	pla 
	tay 
	dex 
	bne L_BRS_2A60_2A79_OK
	ldy #$00
	rts 
//------------------------------
L_BRS_2A7E_2A59_OK:
//------------------------------
	jmp L_JMP_2EEE_2A7E_OK
	pla 
	rts 
//------------------------------
L_JMP_2A83_2A5D_OK:
//------------------------------
	jsr L_JSR_2FDA_2A83_OK
	and #$07
	cmp #$07
	beq L_BRS_2AB3_2A8A_OK
	lda $947C 
	and #$07
	cmp #$07
	beq L_BRS_2AB3_2A93_OK
	lda $96BC 
	and #$07
	cmp #$07
	beq L_BRS_2AB3_2A9C_OK
	lda $96D4 
	and #$07
	cmp #$07
	beq L_BRS_2AB3_2AA5_OK
	lda $18 
	bne L_BRS_2AB3_2AA9_OK
	lda #$20
	sta $18 
	lda #$01
	sta $20 
//------------------------------
L_BRS_2AB3_2A8A_OK:
L_BRS_2AB3_2A93_OK:
L_BRS_2AB3_2A9C_OK:
L_BRS_2AB3_2AA5_OK:
L_BRS_2AB3_2AA9_OK:
//------------------------------
	jmp L_JMP_2E38_2AB3_OK
//------------------------------
L_JMP_2AB6_2B19_OK:
//------------------------------
	lda $18 
	bne L_BRS_2ABB_2AB8_OK
	rts 
//------------------------------
L_BRS_2ABB_2AB8_OK:
//------------------------------
	cmp #$FF
	bne L_BRS_2AC4_2ABD_OK
	lda #$03
	sta $20 
	rts 
//------------------------------
L_BRS_2AC4_2ABD_OK:
//------------------------------
	cmp #$20
	bne L_BRS_2AD6_2AC6_OK
	lda $21 
	sta $18 
	lda #$90
	sta $900C 
	lda #$01
	sta $13 
	rts 
//------------------------------
L_BRS_2AD6_2AC6_OK:
//------------------------------
	jsr L_JSR_2B2B_2AD6_OK
	lda $900C 
	cmp #$C0
	beq L_BRS_2AE1_2ADE_OK
	rts 
//------------------------------
L_BRS_2AE1_2ADE_OK:
//------------------------------
	lda #$90
	sta $900C 
	dec $18 
	lda #$01
	sta $20 
	lda #$01
	sta $20 
	lda $18 
	cmp #$08
	bne L_BRS_2AFB_2AF4_OK
//------------------------------
L_BRS_2AF6_2AFD_OK:
L_BRS_2AF6_2B01_OK:
L_BRS_2AF6_2B05_OK:
//------------------------------
	lda #$06
	sta $20 
	rts 
//------------------------------
L_BRS_2AFB_2AF4_OK:
//------------------------------
	cmp #$06
	beq L_BRS_2AF6_2AFD_OK
	cmp #$04
	beq L_BRS_2AF6_2B01_OK
	cmp #$02
	beq L_BRS_2AF6_2B05_OK
	cmp #$01
	beq L_BRS_2B0C_2B09_OK
	rts 
//------------------------------
L_BRS_2B0C_2B09_OK:
//------------------------------
	lda #$FF
	sta $18 
	rts 
//------------------------------
L_JSR_2B11_225F_OK:
//------------------------------
	lda $0010 
	cmp #$10
	beq L_BRS_2B19_2B16_OK
	rts 
//------------------------------
L_BRS_2B19_2B16_OK:
//------------------------------
	jmp L_JMP_2AB6_2B19_OK
	lda $08 
	cmp #$01
	beq L_BRS_2B23_2B20_OK
	rts 
//------------------------------
L_BRS_2B23_2B20_OK:
//------------------------------
	lda $18 
	beq L_BRS_2B28_2B25_OK
	rts 
//------------------------------
L_BRS_2B28_2B25_OK:
//------------------------------
	jmp L_JMP_29E8_2B28_OK
//------------------------------
L_JSR_2B2B_2AD6_OK:
//------------------------------
	inc $900C 
	lda #$0F
	sta $900E 
	lda #$20
	sta $10 
	rts 
//------------------------------
L_BRS_2B38_2B95_OK:
//------------------------------
	lda $18 
	beq L_BRS_2B52_2B3A_OK
	jsr L_JSR_2FD2_2B3C_OK
	nop 
	beq L_BRS_2B45_2B40_OK
	asl A 
	sta $22 
//------------------------------
L_BRS_2B45_2B40_OK:
//------------------------------
	ldx $22 
	ldy #$02
	jsr L_JSR_2A60_2B49_OK
	lda #$C3
	jmp L_JMP_2BB7_2B4E_OK
	rts 
//------------------------------
L_BRS_2B52_2B3A_OK:
L_JMP_2B52_2B97_OK:
//------------------------------
	lda #$00
	jsr L_JSR_2EDB_2B54_OK
	lda #$80
	sta $900D 
	lda #$0F
	sta $900E 
	sta $900E 
//------------------------------
L_BRS_2B64_2B6D_OK:
//------------------------------
	ldy #$50
//------------------------------
L_BRS_2B66_2B67_OK:
L_BRS_2B66_2B8C_OK:
//------------------------------
	dey 
	bne L_BRS_2B66_2B67_OK
	nop 
	nop 
	dec $1F 
	bne L_BRS_2B64_2B6D_OK
	nop 
	lda $2600 
	sta $01 
	lda $2601 
	sta $02 
	lda $900E 
	and #$03
	tax 
//------------------------------
L_BRS_2B80_2B87_OK:
//------------------------------
	lda $2609,X 
	sta ($01),Y 
	dec $1F 
	bne L_BRS_2B80_2B87_OK
	dec $900E 
	bne L_BRS_2B66_2B8C_OK
	jmp L_JMP_2D3A_2B8E_OK
//------------------------------
L_JMP_2B91_2636_OK:
L_JMP_2B91_2743_OK:
L_JMP_2B91_2C19_OK:
//------------------------------
	lda $18 
	cmp #$FF
	bne L_BRS_2B38_2B95_OK
	jmp L_JMP_2B52_2B97_OK
	.byte $FF,$FF,$FF,$FF,$FF,$FF
//------------------------------
L_JMP_2BA0_2BF5_OK:
//------------------------------
	jsr L_JSR_2841_2BA0_OK
	jsr L_JSR_2100_2BA3_OK
	jmp L_JMP_25A0_2BA6_OK
	.byte $02
	ldx $2603 
	lda $2609,X 
	ldy #$00
	sta ($01),Y 
	jmp L_JMP_2620_2BB4_OK
//------------------------------
L_JMP_2BB7_2B4E_OK:
//------------------------------
	ldx $22 
	lda $2600 
	sta $01 
	lda $2601 
	sta $02 
	ldy #$00
	lda #$A0
	clc 
	adc $22 
	sta ($01),Y 
	lda $02 
	clc 
	adc #$84
	sta $02 
	lda #$80
	sta $1F 
//------------------------------
L_BRS_2BD7_2BEE_OK:
//------------------------------
	ldx #$08
	ldy #$00
//------------------------------
L_BRS_2BDB_2BDC_OK:
L_BRS_2BDB_2BDF_OK:
//------------------------------
	dey 
	bne L_BRS_2BDB_2BDC_OK
	dex 
	bne L_BRS_2BDB_2BDF_OK
	lda $1F 
	and #$07
	sta ($01),Y 
	lda $1F 
	sta $900C 
	inc $1F 
	bne L_BRS_2BD7_2BEE_OK
	lda #$90
	sta $900C 
	jmp L_JMP_2BA0_2BF5_OK
//------------------------------
L_JMP_2BF8_2508_OK:
//------------------------------
	lda $04 
	ldx #$04
//------------------------------
L_BRS_2BFC_2C02_OK:
//------------------------------
	cmp $2608,X 
	beq L_BRS_2C07_2BFF_OK
	dex 
	bne L_BRS_2BFC_2C02_OK
	jmp L_JMP_2543_2C04_OK
//------------------------------
L_BRS_2C07_2BFF_OK:
//------------------------------
	pla 
	tax 
	lda $2602 
	sta $2304,X 
	lda $2608 
	sta $2303,X 
	pla 
	pla 
	pla 
	pla 
	jmp L_JMP_2B91_2C19_OK
//------------------------------
L_JSR_2C1C_2212_OK:
//------------------------------
	ldx #$00
//------------------------------
L_BRS_2C1E_2C3A_OK:
//------------------------------
	lda $9400,X 
	sta $3500,X 
	sta $3900,X 
	lda $9500,X 
	sta $3600,X 
	sta $3A00,X 
	lda $9600,X 
	sta $3700,X 
	sta $3B00,X 
	inx 
	bne L_BRS_2C1E_2C3A_OK
	lda $26 
	sta $26 
	lda #$01
	sta $29 
	lda #$03
	sta $3C00 
	sta $3C10 
	lda #$00
	sta $3C01 
	sta $3C11 
//------------------------------
L_JSR_2C54_2D64_OK:
//------------------------------
	lda $29 
	cmp #$02
	bne L_BRS_2C5C_2C58_OK
	ldx #$10
//------------------------------
L_BRS_2C5C_2C58_OK:
//------------------------------
	lda $3C00,X 
	bne L_BRS_2C7B_2C5F_OK
	cpx #$10
	bne L_BRS_2C6A_2C63_OK
	ldx #$10
	jmp L_JMP_2C6C_2C67_OK
//------------------------------
L_BRS_2C6A_2C63_OK:
//------------------------------
	ldx #$00
//------------------------------
L_JMP_2C6C_2C67_OK:
//------------------------------
	lda $3C00,X 
	beq L_BRS_2C72_2C6F_OK
	rts 
//------------------------------
L_BRS_2C72_2C6F_OK:
L_JMP_2C72_2E35_OK:
//------------------------------
	jmp L_JMP_2EFB_2C72_OK
	pla 
	nop 
	nop 
	nop 
	nop 
	rts 
//------------------------------
L_BRS_2C7B_2C5F_OK:
//------------------------------
	lda #$10
	sta $24 
	ldy #$00
	lda $29 
	cmp #$02
	bne L_BRS_2C89_2C85_OK
	ldy #$15
//------------------------------
L_BRS_2C89_2C85_OK:
//------------------------------
	sty $23 
	lda $29 
	cmp #$01
	bne L_BRS_2C98_2C8F_OK
	lda #$35
	sta $2B 
	jmp L_JMP_2C9C_2C95_OK
//------------------------------
L_BRS_2C98_2C8F_OK:
//------------------------------
	lda #$39
	sta $2B 
//------------------------------
L_JMP_2C9C_2C95_OK:
//------------------------------
	lda #$00
	sta $2A 
	sta $27 
	lda #$94
	sta $28 
	ldx #$03
//------------------------------
L_BRS_2CA8_2CB6_OK:
//------------------------------
	ldy #$00
//------------------------------
L_BRS_2CAA_2CAF_OK:
//------------------------------
	lda ($2A),Y 
	sta ($27),Y 
	iny 
	bne L_BRS_2CAA_2CAF_OK
	inc $28 
	inc $2B 
	dex 
	bne L_BRS_2CA8_2CB6_OK
	ldy #$05
	lda #$35
	sta $1A 
	lda $29 
	cmp #$02
	bne L_BRS_2CCA_2CC2_OK
	ldy #$04
	lda #$46
	sta $1A 
//------------------------------
L_BRS_2CCA_2CC2_OK:
//------------------------------
	sty $09 
	rts 
//------------------------------
	nop 
	nop 
	nop 
//------------------------------
L_JMP_2CD0_2D89_OK:
//------------------------------
	ldx #$05
	lda $00 
	sta $1F 
	ldy #$00
//------------------------------
L_BRS_2CD8_2CF1_OK:
//------------------------------
	lda $2300,X 
	sta $01 
	lda $2301,X 
	clc 
	adc #$84
	sta $02 
	lda $2303,X 
	sta ($01),Y 
	inx 
	inx 
	inx 
	inx 
	inx 
	dec $1F 
	bne L_BRS_2CD8_2CF1_OK
	lda $29 
	cmp #$01
	bne L_BRS_2D00_2CF7_OK
	lda #$35
	sta $2B 
	jmp L_JMP_2D04_2CFD_OK
//------------------------------
L_BRS_2D00_2CF7_OK:
//------------------------------
	lda #$39
	sta $2B 
//------------------------------
L_JMP_2D04_2CFD_OK:
//------------------------------
	lda #$00
	sta $2A 
	sta $27 
	lda #$94
	sta $28 
	ldx #$03
//------------------------------
L_BRS_2D10_2D1E_OK:
//------------------------------
	ldy #$00
//------------------------------
L_BRS_2D12_2D17_OK:
//------------------------------
	lda ($27),Y 
	sta ($2A),Y 
	iny 
	bne L_BRS_2D12_2D17_OK
	inc $2B 
	inc $28 
	dex 
	bne L_BRS_2D10_2D1E_OK
	lda $29 
	cmp #$02
	bne L_BRS_2D28_2D24_OK
	ldx #$10
//------------------------------
L_BRS_2D28_2D24_OK:
//------------------------------
	lda $3C00,X 
	tay 
	dey 
	lda #$20
	sta ($23),Y 
	dec $3C00,X 
	nop 
	nop 
	rts 
//------------------------------
	nop 
	nop 
	nop 
//------------------------------
L_JMP_2D3A_2B8E_OK:
//------------------------------
	jsr L_JSR_2841_2D3A_OK
	jsr L_JSR_2D70_2D3D_OK
	lda $26 
	cmp #$01
	bne L_BRS_2D4F_2D44_OK
//------------------------------
L_BRS_2D46_2D55_OK:
L_JMP_2D46_2D5B_OK:
//------------------------------
	jsr L_JSR_2100_2D46_OK
	jmp L_JMP_2D5E_2D49_OK
	nop 
	nop 
	nop 
//------------------------------
L_BRS_2D4F_2D44_OK:
L_BRS_2D50_2DB4_BAD:
//------------------------------
	inc $29 
	lda $29 
	cmp #$03
	bne L_BRS_2D46_2D55_OK
	lda #$01
//------------------------------
L_BRS_2D59_2DB9_OK:
//------------------------------
	sta $29 
	jmp L_JMP_2D46_2D5B_OK
//------------------------------
L_JMP_2D5E_2D49_OK:
//------------------------------
	jsr L_JSR_25A0_2D5E_OK
//------------------------------
L_BRS_2D62_2DBE_BAD:
//------------------------------
	jsr L_JSR_25A0_2D61_OK
	jsr L_JSR_2C54_2D64_OK
	lda #$02
//------------------------------
L_BRS_2D6B_2DC3_BAD:
//------------------------------
	sta $900E 
	jmp L_JMP_2D8D_2D6C_OK
	nop 
//------------------------------
L_JSR_2D70_2D3D_OK:
L_JMP_2D70_2ED1_OK:
//------------------------------
	ldx #$00
	lda $29 
//------------------------------
L_BRS_2D74_2DC8_OK:
//------------------------------
	cmp #$02
	bne L_BRS_2D7A_2D76_OK
	ldx #$10
//------------------------------
L_BRS_2D7A_2D76_OK:
//------------------------------
	lda $17 
//------------------------------
L_BRS_2D7D_2DCD_BAD:
//------------------------------
	sta $3C03,X 
//------------------------------
L_BRS_2D80_2DDC_BAD:
//------------------------------
	lda $19 
//------------------------------
L_BRS_2D83_2DD2_BAD:
//------------------------------
	sta $3C02,X 
	lda $18 
	sta $3C04,X 
	jmp L_JMP_2CD0_2D89_OK
	nop 
//------------------------------
L_JMP_2D8D_2D6C_OK:
//------------------------------
	ldx #$00
	lda $29 
	cmp #$02
	bne L_BRS_2D97_2D93_OK
	ldx #$10
//------------------------------
L_BRS_2D97_2D93_OK:
//------------------------------
	lda $3C02,X 
	sta $19 
	lda $3C03,X 
//------------------------------
L_BRS_2DA0_2DD7_BAD:
//------------------------------
	sta $17 
	lda $3C04,X 
	sta $18 
	jsr L_JSR_2DDD_2DA6_BAD
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	rts 
//------------------------------
	stx $10,Y 
	.byte $00,$07
	bvc L_BRS_2D50_2DB4_BAD
	bpl L_BRS_2DB8_2DB6_JAM
//------------------------------
L_BRS_2DB8_2DB6_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_2D59_2DB9_OK
	bpl L_BRS_2DBD_2DBB_JAM
//------------------------------
L_BRS_2DBD_2DBB_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_2D62_2DBE_BAD
	bpl L_BRS_2DC2_2DC0_JAM
//------------------------------
L_BRS_2DC2_2DC0_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_2D6B_2DC3_BAD
	bpl L_BRS_2DC7_2DC5_JAM
//------------------------------
L_BRS_2DC7_2DC5_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_2D74_2DC8_OK
	bpl L_BRS_2DCC_2DCA_JAM
//------------------------------
L_BRS_2DCC_2DCA_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_2D7D_2DCD_BAD
	bpl L_BRS_2DD1_2DCF_JAM
//------------------------------
L_BRS_2DD1_2DCF_JAM:
//------------------------------
	.byte $07
	bvc L_BRS_2D83_2DD2_BAD
	bpl L_BRS_2DD8_2DD4_BAD
	.byte $07
//------------------------------
L_BRS_2DD8_2DD4_BAD:
//------------------------------
	bvc L_BRS_2DA0_2DD7_BAD
	bpl L_BRS_2DDD_2DD9_BAD
	.byte $07
//------------------------------
L_JSR_2DDD_2215_BAD:
L_JSR_2DDD_2DA6_BAD:
L_BRS_2DDD_2DD9_BAD:
L_JSR_2DDD_2E92_BAD:
//------------------------------
	bvc L_BRS_2D80_2DDC_BAD
//------------------------------
L_BRS_2DDF_2DE6_BAD:
//------------------------------
	and $AFBD 
	and $049D 
	.byte $23
	dex 
	bne L_BRS_2DDF_2DE6_BAD
	ldx #$05
	ldy #$00
	lda #$09
	sta $1F 
//------------------------------
L_BRS_2DF0_2E09_OK:
//------------------------------
	lda $2300,X 
	sta $01 
	lda $2301,X 
	clc 
	adc #$84
	sta $02 
	lda ($01),Y 
	sta $2303,X 
	inx 
	inx 
	inx 
	inx 
	inx 
	dec $1F 
	bne L_BRS_2DF0_2E09_OK
	jmp L_JMP_2ED4_2E0B_OK
//------------------------------
L_JSR_2E0E_220F_OK:
//------------------------------
	lda $19 
	sta $3C12 
	lda #$00
	sta $3C13 
	lda #$00
	sta $3C14 
	nop 
	nop 
	nop 
	jmp L_JMP_25A0_2E20_OK
	cpx #$10
	bne L_BRS_2E28_2E25_OK
//------------------------------
L_BRS_2E27_2E2C_OK:
L_BRS_2E27_2E33_OK:
//------------------------------
	rts 
//------------------------------
L_BRS_2E28_2E25_OK:
//------------------------------
	lda $26 
	cmp #$01
	bne L_BRS_2E27_2E2C_OK
	lda $2C00 
	cmp #$00
	bne L_BRS_2E27_2E33_OK
	jmp L_JMP_2C72_2E35_OK
//------------------------------
L_JMP_2E38_2AB3_OK:
//------------------------------
	lda #$01
	sta $22 
	jmp L_JMP_282E_2E3C_OK
	.byte $00
//------------------------------
L_JMP_2E40_2EF1_OK:
//------------------------------
	ldx #$10
//------------------------------
L_BRS_2E42_2E5E_OK:
//------------------------------
	lda #$E0
	sta $1F 
//------------------------------
L_BRS_2E46_2E5B_OK:
//------------------------------
	ldy #$00
//------------------------------
L_BRS_2E48_2E52_OK:
//------------------------------
	sta $9464,Y 
	sta $9500,Y 
	sta $9600,Y 
	iny 
	bne L_BRS_2E48_2E52_OK
	lda $1F 
	sta $900C 
	inc $1F 
	bne L_BRS_2E46_2E5B_OK
	dex 
	bne L_BRS_2E42_2E5E_OK
	inc $19 
	lda #$00
	sta $18 
	lda #$01
	sta $22 
	lda #$00
	sta $17 
	inc $00 
	lda $19 
	cmp #$0A
	bne L_BRS_2E7A_2E74_OK
	lda #$09
	sta $19 
//------------------------------
L_BRS_2E7A_2E74_OK:
//------------------------------
	lda $19 
	sta $00 
	lda #$00
	sta $900C 
	sta $900B 
	sta $900A 
	jsr L_JSR_21AE_2E89_OK
	jsr L_JSR_2100_2E8C_OK
	jsr L_JSR_25A0_2E8F_OK
	jsr L_JSR_2DDD_2E92_BAD
	jmp L_JMP_2EF4_2E95_OK
	jmp L_JMP_2250_2E98_OK
//------------------------------
L_JSR_2E9B_2262_OK:
//------------------------------
	lda $08 
	cmp #$01
	beq L_BRS_2EA2_2E9F_OK
	rts 
//------------------------------
L_BRS_2EA2_2E9F_OK:
//------------------------------
	dec $2A 
	beq L_BRS_2EA7_2EA4_OK
	rts 
//------------------------------
L_BRS_2EA7_2EA4_OK:
//------------------------------
	lda #$05
	sta $2A 
	ldx #$00
	lda $29 
	cmp #$02
	bne L_BRS_2EB5_2EB1_OK
	ldx #$10
//------------------------------
L_BRS_2EB5_2EB1_OK:
//------------------------------
	ldy $3C00,X 
	dey 
	lda ($23),Y 
	cmp #$20
	beq L_BRS_2EC4_2EBD_OK
	lda #$20
	sta ($23),Y 
	rts 
//------------------------------
L_BRS_2EC4_2EBD_OK:
//------------------------------
	lda #$4B
	sta ($23),Y 
	rts 
//------------------------------
	rti 
//------------------------------
	lda #$05
	sta $2A 
	nop 
	nop 
	nop 
	jmp L_JMP_2D70_2ED1_OK
//------------------------------
L_JMP_2ED4_2E0B_OK:
//------------------------------
	lda $19 
	sta $00 
	jmp L_JMP_2F40_2ED8_OK
//------------------------------
L_JSR_2EDB_2B54_OK:
L_JSR_2EDB_2EEE_OK:
L_JSR_2EDB_2EFB_OK:
L_JSR_2EDB_2F4F_OK:
L_JSR_2EDB_2F99_OK:
//------------------------------
	lda #$00
	sta $900A 
	sta $900B 
	sta $900C 
	sta $900D 
	lda #$03
	sta $20 
	rts 
//------------------------------
L_JMP_2EEE_2A7E_OK:
//------------------------------
	jsr L_JSR_2EDB_2EEE_OK
	jmp L_JMP_2E40_2EF1_OK
//------------------------------
L_JMP_2EF4_2E95_OK:
//------------------------------
	pla 
	pla 
	pla 
	pla 
	jmp L_JMP_2250_2EF8_OK
//------------------------------
L_JMP_2EFB_2C72_OK:
//------------------------------
	jsr L_JSR_2EDB_2EFB_OK
	lda #$0F
	sta $900E 
	jsr L_JSR_21AE_2F03_OK
	ldx #$09
//------------------------------
L_BRS_2F08_2F0F_OK:
//------------------------------
	lda $2F36,X 
	sta $1101,X 
	dex 
	bne L_BRS_2F08_2F0F_OK
	lda #$FF
	sta $1F 
//------------------------------
L_BRS_2F15_2F2E_OK:
//------------------------------
	ldy $1F 
//------------------------------
L_BRS_2F17_2F18_OK:
L_BRS_2F17_2F26_OK:
//------------------------------
	dex 
	bne L_BRS_2F17_2F18_OK
	sty $900A 
	sty $900B 
	sty $900C 
	dey 
	cpy #$80
	bne L_BRS_2F17_2F26_OK
	dec $1F 
	lda $1F 
	cmp #$C0
	bne L_BRS_2F15_2F2E_OK
	jmp L_JMP_2F55_2F30_OK
	pla 
	rts 
//------------------------------
	ora $0705
	ora ($0D,X)
	ora $20
	.byte $0F
	asl $05,X 
	.byte $12
//------------------------------
L_JMP_2F40_2ED8_OK:
//------------------------------
	lda $19 
	asl A 
	sta $21 
	lda #$20
	sec 
	sbc $21 
	sta $21 
	nop 
	nop 
	nop 
	jsr L_JSR_2EDB_2F4F_OK
	jmp L_JMP_2390_2F52_OK
//------------------------------
L_JMP_2F55_2F30_OK:
//------------------------------
	ldy #$00
	ldx #$05
//------------------------------
L_BRS_2F59_2F67_OK:
//------------------------------
	lda $1035,Y 
	cmp $207B,Y 
	beq L_BRS_2F65_2F5F_OK
	bpl L_BRS_2F69_2F61_OK
	bmi L_BRS_2F77_2F63_OK
//------------------------------
L_BRS_2F65_2F5F_OK:
//------------------------------
	iny 
	dex 
	bne L_BRS_2F59_2F67_OK
//------------------------------
L_BRS_2F69_2F61_OK:
//------------------------------
	ldx #$05
//------------------------------
L_BRS_2F6B_2F75_OK:
//------------------------------
	lda $1034,X 
	sta $207A,X 
	sta $1055,X 
	dex 
	bne L_BRS_2F6B_2F75_OK
//------------------------------
L_BRS_2F77_2F63_OK:
//------------------------------
	ldy #$00
	ldx #$05
//------------------------------
L_BRS_2F7B_2F89_OK:
//------------------------------
	lda $1046,Y 
	cmp $207B,Y 
	beq L_BRS_2F87_2F81_OK
	bpl L_BRS_2F8B_2F83_OK
	bmi L_BRS_2F99_2F85_OK
//------------------------------
L_BRS_2F87_2F81_OK:
//------------------------------
	iny 
	dex 
	bne L_BRS_2F7B_2F89_OK
//------------------------------
L_BRS_2F8B_2F83_OK:
//------------------------------
	ldx #$05
//------------------------------
L_BRS_2F8D_2F97_OK:
//------------------------------
	lda $1045,X 
	sta $207A,X 
	sta $1055,X 
	dex 
	bne L_BRS_2F8D_2F97_OK
//------------------------------
L_BRS_2F99_2F85_OK:
//------------------------------
	jsr L_JSR_2EDB_2F99_OK
	nop 
	nop 
	nop 
	pla 
	pla 
	pla 
	pla 
	jmp L_JMP_3060_2FA3_OK
//------------------------------
L_JSR_2FA6_2FD2_OK:
L_JSR_2FA6_2FDA_OK:
//------------------------------
	txa 
	pha 
	tya 
	pha 
	lda $00 
	sta $1F 
	ldx #$05
	ldy #$00
//------------------------------
L_BRS_2FB2_2FCB_OK:
//------------------------------
	lda $2300,X 
	sta $01 
	lda $2301,X 
	clc 
	adc #$84
	sta $02 
	lda $2303,X 
	sta ($01),Y 
	inx 
	inx 
	inx 
	inx 
	inx 
	dec $1F 
	bne L_BRS_2FB2_2FCB_OK
	pla 
	tay 
	pla 
	tax 
	rts 
//------------------------------
L_JSR_2FD2_2B3C_OK:
//------------------------------
	jsr L_JSR_2FA6_2FD2_OK
	lda $22 
	cmp #$10
	rts 
//------------------------------
L_JSR_2FDA_2A83_OK:
//------------------------------
	jsr L_JSR_2FA6_2FDA_OK
	lda $9464 
	rts 
//------------------------------
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00
//------------------------------
L_JSR_3000_3060_OK:
L_JSR_3000_30CA_OK:
//------------------------------
	jsr L_JSR_21AE_3000_OK
	ldx #$12
//------------------------------
L_BRS_3005_300C_OK:
//------------------------------
	lda $30FF,X 
	sta $107F,X 
	dex 
	bne L_BRS_3005_300C_OK
	ldx #$05
//------------------------------
L_BRS_3010_301D_OK:
//------------------------------
	lda $3111,X 
	sta $10B9,X 
	lda $3116,X 
	sta $10D2,X 
	dex 
	bne L_BRS_3010_301D_OK
	ldx #$19
//------------------------------
L_BRS_3021_3028_OK:
//------------------------------
	lda $311B,X 
	sta $10F9,X 
	dex 
	bne L_BRS_3021_3028_OK
	nop 
	ldx #$07
//------------------------------
L_BRS_302D_303A_OK:
//------------------------------
	lda $3134,X 
//------------------------------
L_JSR_3030_206A_OK:
//------------------------------
	sta $1135,X 
	lda $313B,X 
	sta $114E,X 
	dex 
	bne L_BRS_302D_303A_OK
	ldx #$14
//------------------------------
L_BRS_303E_3051_OK:
//------------------------------
	lda $3142,X 
	sta $1178,X 
	lda $3156,X 
	sta $11AA,X 
	lda $316A,X 
	sta $11DC,X 
	dex 
	bne L_BRS_303E_3051_OK
	ldx #$14
//------------------------------
L_BRS_3055_305C_OK:
//------------------------------
	lda $317E,X 
	sta $120E,X 
	dex 
	bne L_BRS_3055_305C_OK
	rts 
//------------------------------
	nop 
//------------------------------
L_JMP_3060_2022_OK:
L_JMP_3060_2FA3_OK:
//------------------------------
	jsr L_JSR_3000_3060_OK
//------------------------------
L_BRS_3063_3089_OK:
L_BRS_3063_30B9_OK:
L_JMP_3063_30D3_OK:
//------------------------------
	ldx #$02
//------------------------------
L_BRS_3065_3077_OK:
//------------------------------
	txa 
	ldy #$00
//------------------------------
L_BRS_3068_3072_OK:
//------------------------------
	sta $9464,Y 
	sta $9500,Y 
	sta $9600,Y 
	dey 
	bne L_BRS_3068_3072_OK
	inx 
	cpx #$08
	bne L_BRS_3065_3077_OK
	jsr L_JSR_2560_3079_OK
	lda $0A 
	and #$80
	beq L_BRS_3085_3080_OK
	jmp L_JMP_3200_3082_OK
//------------------------------
L_BRS_3085_3080_OK:
//------------------------------
	lda $C5 
	cmp #$40
	beq L_BRS_3063_3089_OK
	cmp #$27
	bne L_BRS_30A1_308D_OK
	inc $3156 
	lda $3156 
	cmp #$3A
	bne L_BRS_30CA_3097_OK
	lda #$31
	sta $3156 
	jmp L_JMP_30CA_309E_OK
//------------------------------
L_BRS_30A1_308D_OK:
//------------------------------
	cmp #$2F
	bne L_BRS_30B7_30A3_OK
	inc $316A 
	lda $316A 
	cmp #$3A
	bne L_BRS_30CA_30AD_OK
	lda #$31
	sta $316A 
	jmp L_JMP_30CA_30B4_OK
//------------------------------
L_BRS_30B7_30A3_OK:
//------------------------------
	cmp #$37
	bne L_BRS_3063_30B9_OK
	inc $317E 
	lda $317E 
	cmp #$33
	bne L_BRS_30CA_30C3_OK
	lda #$31
	sta $317E 
//------------------------------
L_BRS_30CA_3097_OK:
L_JMP_30CA_309E_OK:
L_BRS_30CA_30AD_OK:
L_JMP_30CA_30B4_OK:
L_BRS_30CA_30C3_OK:
//------------------------------
	jsr L_JSR_3000_30CA_OK
//------------------------------
L_BRS_30CD_30D1_OK:
//------------------------------
	lda $C5 
	cmp #$40
	bne L_BRS_30CD_30D1_OK
	jmp L_JMP_3063_30D3_OK
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	.byte $0C,$0C
	ora ($0D,X)
	ora ($13,X)
	.byte $0F
	asl $14 
	jsr L_JSR_1210_3109_BAD
	ora $13
	ora $0E
	.byte $14,$13
	eor ($42,X) 
	.byte $43,$44
	eor $46 
	.byte $47
	pha 
	eor #$4A
	ora ($04,X)
	asl $01,X 
	asl $0503 
	.byte $04
	jsr $0107
	ora $2005
	.byte $13,$0F
	asl $14 
	.byte $17
	ora ($12,X)
	ora $20
	.byte $02
	ora $8281,Y
	.byte $83
	sty $85 
	stx $87 
	dey 
	.byte $89
	jsr $8B8A
	sty $068D 
	and ($3A),Y 
	jsr $0F0E
	rol $1020 
	ora $12,X
	.byte $13
	ora $05,X
	.byte $12,$13,$3A
	jsr L_JSR_3320_3154_JAM
	asl $33 
	.byte $3A
	jsr $1013
	ora $05
	.byte $04
	jsr $2020
	jsr $2020
	jsr L_JSR_203A_3166_BAD
	jsr $0631
	and $3A,X 
	jsr $0F0E
	rol $1020 
	.byte $0C
	ora ($19,X)
	ora $12
	.byte $13
	jsr L_JSR_203A_317A_BAD
	jsr $1031
	.byte $12
	ora $13
	.byte $13
	jsr $0906
	.byte $12
	ora $20
	.byte $14,$0F
	jsr $0502
	.byte $07
	ora #$0E
	rol $EAEA 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
//------------------------------
L_JMP_31B2_1B6C_OK:
L_JMP_31B2_1BEE_OK:
//------------------------------
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
//------------------------------
L_JMP_3200_3082_OK:
//------------------------------
	ldy #$30
	lda $317E 
	sta $26 
//------------------------------
L_BRS_3207_320A_OK:
//------------------------------
	dec $26 
	dey 
	bne L_BRS_3207_320A_OK
	ldy #$30
	lda $3156 
	sta $19 
//------------------------------
L_BRS_3213_3216_OK:
//------------------------------
	dec $19 
	dey 
	bne L_BRS_3213_3216_OK
	lda #$AA
	sta $0D 
	lda $316A 
	sta $1F 
	ldy #$30
//------------------------------
L_BRS_3223_3226_OK:
//------------------------------
	dec $1F 
	dey 
	bne L_BRS_3223_3226_OK
//------------------------------
L_BRS_3228_3231_OK:
//------------------------------
	lda $0D 
	sec 
	sbc #$0A
	sta $0D 
	dec $1F 
	bne L_BRS_3228_3231_OK
	jsr L_JSR_20ED_3233_OK
	jmp L_JMP_2200_3236_BAD
	.byte $02,$02,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$CB
	beq L_BRS_3303_3301_JAM
//------------------------------
L_BRS_3303_3301_JAM:
//------------------------------
	.byte $7F,$00,$7F
	bit $3F 
	bmi L_BRS_3389_3308_BAD
	.byte $00,$FF
	jsr L_JSR_34FF_330C_JAM
	.byte $7F,$14,$9F,$00,$FF,$00,$FF,$14
	.byte $5F,$34,$3F,$00,$FF,$00,$FF
	bpl L_BRS_338F_331E_JAM
//------------------------------
L_JSR_3320_3154_JAM:
//------------------------------
	.byte $14,$BF,$00,$FF,$00,$FF
	bmi L_BRS_33A7_3326_BAD
//------------------------------
L_BRS_3329_3368_JAM:
//------------------------------
	.byte $04,$3F,$00,$FF,$00,$FF
	bpl L_BRS_336F_332E_BAD
	.byte $14,$7F,$00,$FF,$00,$FF,$34,$7F
//------------------------------
L_BRS_3339_3338_BAD:
//------------------------------
	bmi L_BRS_3339_3338_BAD
	.byte $00,$FF,$00,$FF
	bmi L_BRS_33BF_333E_BAD
//------------------------------
L_BRS_3341_3340_BAD:
//------------------------------
	bmi L_BRS_3341_3340_BAD
	.byte $00,$FF,$00,$FF
	bmi L_BRS_33C5_3346_BAD
//------------------------------
L_BRS_3349_3388_JAM:
//------------------------------
	.byte $14,$BF,$00,$FF,$00,$FF
	bpl L_BRS_33CF_334E_JAM
	.byte $34,$3F,$00,$FF,$00,$FF
	bpl L_BRS_33D7_3356_BAD
	.byte $04,$5F,$00,$FF,$00,$FF
	bmi L_BRS_339F_335E_BAD
//------------------------------
L_BRS_3361_33A0_BAD:
//------------------------------
	jsr $00EB
	.byte $FF,$00,$FF
	bpl L_BRS_33A7_3366_BAD
	bmi L_BRS_3329_3368_JAM
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_336F_332E_BAD:
//------------------------------
	bcc L_BRS_33AF_336E_BAD
	.byte $04,$3F,$00,$FF,$00,$FF
	jsr L_JSR_343F_3376_JAM
	.byte $BF
//------------------------------
L_BRS_337B_33BA_BAD:
//------------------------------
	jsr L_JSR_20FF_337A_OK
	.byte $FF,$34,$3F
	bmi L_BRS_3401_3380_OK
	.byte $00,$FF
	jsr L_JSR_24FF_3384_BAD
	.byte $FF
//------------------------------
L_BRS_3389_3308_BAD:
//------------------------------
	bvs L_BRS_3349_3388_JAM
	.byte $00,$FF
//------------------------------
L_BRS_338D_338C_BAD:
//------------------------------
	bpl L_BRS_338D_338C_BAD
//------------------------------
L_BRS_338F_331E_JAM:
//------------------------------
	.byte $34,$BF
	bmi L_BRS_3411_3390_BAD
	jsr L_JSR_20FF_3392_OK
//------------------------------
L_BRS_3397_33D6_JAM:
//------------------------------
	.byte $FF,$32,$7F
	ldy $3F 
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_339F_335E_BAD:
//------------------------------
	bmi L_BRS_33BF_339E_BAD
	bmi L_BRS_3361_33A0_BAD
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_33A7_3326_BAD:
L_BRS_33A7_3366_BAD:
L_BRS_33A7_33A6_BAD:
//------------------------------
	bmi L_BRS_33A7_33A6_BAD
	.byte $34,$3F,$00,$FF,$04,$FF
//------------------------------
L_BRS_33AF_336E_BAD:
//------------------------------
	bpl L_BRS_33EF_33AE_BAD
	.byte $34,$FB,$00,$7F,$00,$FF
	bmi L_BRS_33F7_33B6_BAD
	.byte $34,$FF
	bpl L_BRS_337B_33BA_BAD
	.byte $00,$FF
//------------------------------
L_BRS_33BF_333E_BAD:
L_BRS_33BF_339E_BAD:
L_BRS_33BF_33BE_BAD:
//------------------------------
	bmi L_BRS_33BF_33BE_BAD
	bmi L_BRS_3401_33C0_OK
	.byte $00,$FF
//------------------------------
L_BRS_33C5_3346_BAD:
L_BRS_33C5_33C4_BAD:
//------------------------------
	bpl L_BRS_33C5_33C4_BAD
	.byte $34,$BF
	jsr $007F
//------------------------------
L_BRS_33CF_334E_JAM:
//------------------------------
	.byte $FF,$00,$FF,$34,$FF,$34,$7F,$00
	.byte $FF,$00,$FF
//------------------------------
L_BRS_33D7_3356_BAD:
//------------------------------
	bmi L_BRS_3397_33D6_JAM
	bpl L_BRS_3419_33D8_JAM
	.byte $00,$FF
//------------------------------
L_BRS_33DD_33DC_BAD:
//------------------------------
	bpl L_BRS_33DD_33DC_BAD
	bmi L_BRS_341F_33DE_JAM
	jsr $007F
	.byte $BF,$00,$FF,$34,$7F
	bmi L_BRS_3429_33E8_JAM
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_33EF_33AE_BAD:
//------------------------------
	bmi L_BRS_342F_33EE_JAM
	bmi L_BRS_3431_33F0_JAM
	jsr $10FF
	.byte $FF
//------------------------------
L_BRS_33F7_33B6_BAD:
//------------------------------
	bmi L_BRS_3417_33F6_JAM
	.byte $44,$3F
	jsr L_JSR_20FF_33FA_OK
	.byte $FF
	bmi L_BRS_346F_33FE_JAM
	.byte $FC
//------------------------------
L_BRS_3401_3380_OK:
L_BRS_3401_33C0_OK:
//------------------------------
	php 
	.byte $00,$FF,$00,$FF,$02,$FF
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$00,$F7
//------------------------------
L_BRS_3411_3390_BAD:
//------------------------------
	ora ($FF,X)
//------------------------------
L_BRS_3417_33F6_JAM:
L_BRS_3419_33D8_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$83,$FF,$13,$3F
//------------------------------
L_BRS_341F_33DE_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$02,$7F,$00,$FF
	.byte $00,$FF,$00,$FF
	ora ($F7,X)
//------------------------------
L_BRS_3429_33E8_JAM:
L_BRS_342F_33EE_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$00,$FF,$42,$F7
//------------------------------
L_BRS_3431_33F0_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$00,$FF
	ora ($FF),Y
//------------------------------
L_JSR_343F_3376_JAM:
//------------------------------
	.byte $02,$FF,$00,$FF,$00,$FF,$02,$FF
	.byte $00,$BF,$00,$F7,$00,$FF
	and ($F7,X) 
	.byte $02,$F7,$00,$FF,$00,$FF,$02,$FF
	.byte $00,$FF,$00,$FF,$00,$FF
	ora ($F7,X)
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$02,$EF,$13,$B7
	.byte $00,$FF,$00,$FF,$02,$F7
	ora ($FF,X)
//------------------------------
L_BRS_346F_33FE_JAM:
//------------------------------
	.byte $00,$FF,$02,$FF,$00,$F7
	eor ($F7,X) 
	.byte $02,$FF,$00,$FF,$22,$FF,$00,$FF
	.byte $00,$BF,$00,$FF,$02,$DF
	ora ($FF,X)
	.byte $00,$F7,$00,$FF,$02,$F7
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$82,$F7,$02,$DF
//------------------------------
L_BRS_3495_3513_JAM:
//------------------------------
	.byte $00,$FF,$02,$FF,$02,$FF,$00,$FF
	.byte $00,$FF,$00,$FF,$00,$DF,$03,$FF
	.byte $00,$FF
	ora ($FF,X)
//------------------------------
L_BRS_34AD_352B_JAM:
//------------------------------
	.byte $00,$DF,$02,$FF,$00,$FF,$00,$FF
	.byte $00,$7F
	ora ($FF,X)
	.byte $00,$FF
	ora ($FF,X)
	.byte $00,$FF
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$02,$FF
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$02,$FF,$00,$FF
	.byte $00,$FF,$00,$FF
	ora ($F7,X)
	.byte $02,$FF,$00,$FF,$02,$FF
	and ($FF,X) 
	ora ($BF,X)
	.byte $00,$FF,$00,$FF,$02,$F7,$00,$F7
	.byte $00,$FF,$00,$F7
	asl $EF 
//------------------------------
L_BRS_34E8_3523_JAM:
L_BRS_34EB_3529_JAM:
//------------------------------
	.byte $02,$FF,$00,$FF,$00,$FF
	jsr $00FF
//------------------------------
L_BRS_34F1_352F_JAM:
//------------------------------
	.byte $FF,$00,$FF,$00,$FF,$02,$FF
	ora ($FF,X)
//------------------------------
L_JSR_34FF_330C_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$03,$FF
	eor $05,X 
	ora $C0
	jsr $C020
	.byte $00,$00
	cpy #$20
	.byte $23,$C3,$03,$03,$C3
//------------------------------
L_BRS_3511_354F_BAD:
//------------------------------
	jsr $C020
	beq L_BRS_3495_3513_JAM
	cpy $54 
	.byte $54
	cpy #$00
	.byte $00
	cpy #$20
//------------------------------
L_BRS_351D_355B_OK:
//------------------------------
	jsr $10C0
	jsr $50C0
	bvc L_BRS_34E8_3523_JAM
	.byte $83,$83,$C3,$53
	bvc L_BRS_34EB_3529_JAM
	beq L_BRS_34AD_352B_JAM
	cpy #$50
	bvc L_BRS_34F1_352F_JAM
	.byte $00,$03,$C3
	jsr $C121
	ora ($01,X)
	cmp ($20,X) 
	jsr $00C0
	.byte $00
	cpy #$20
	jsr $F300
	.byte $83
	bvc L_BRS_3598_3545_JAM
	eor ($01),Y 
	ora ($C1,X)
	jsr $C020
	.byte $00
	bpl L_BRS_3511_354F_BAD
	bvc L_BRS_35A3_3551_JAM
	cpy #$91
	.byte $80,$C3,$53,$53,$C3,$03
	beq L_BRS_351D_355B_OK
	bvc L_BRS_35AF_355D_JAM
	cpy #$00
	.byte $00
	cpy #$20
	.byte $27,$C7,$07,$07,$C7,$27,$27,$C7
	.byte $07,$07,$C7,$27,$27,$C7,$07,$F7
	.byte $C7,$57,$57,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$17,$C7,$57,$57,$C7
	.byte $97,$87,$C7,$57,$57,$97,$07,$F7
	.byte $57,$57,$57,$07,$07,$C7,$27,$27
//------------------------------
L_BRS_3598_3545_JAM:
//------------------------------
	.byte $C7,$07,$07,$C7,$27,$27,$C7,$07
//------------------------------
L_BRS_35A3_3551_JAM:
//------------------------------
	.byte $07,$C7,$27,$27,$C7,$C7,$07,$C7
	.byte $57,$57,$C7,$07,$07,$C7,$27,$27
//------------------------------
L_BRS_35AF_355D_JAM:
//------------------------------
	.byte $C7,$07,$07,$C7,$57,$57,$C7,$47
	.byte $D7,$C7,$57,$57,$C7,$97,$07,$C7
	.byte $57,$57,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$27,$27,$C7,$07
	.byte $07,$C7,$27,$27,$D7,$87,$07,$57
	.byte $57,$57,$07,$07,$C7,$27,$27,$C7
	.byte $07,$07,$C7,$27,$57,$C7,$67,$47
	.byte $C7,$57,$57,$C7,$37,$97,$C7,$47
	.byte $57,$C7,$07,$07,$C7,$27,$27,$C7
	.byte $07,$07,$C7,$27,$27,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$27,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$87,$87,$C7,$57,$57,$C7
	.byte $07,$07,$C7,$27,$27,$C7,$07,$07
	.byte $C7,$27,$57,$C7,$37,$47,$C7,$57
	.byte $57,$57,$17,$17,$57,$47,$57,$07
	.byte $07,$C7,$27,$27,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$87,$87,$C7,$57,$57,$C7,$07
	.byte $07,$C7,$27,$27,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$17,$37,$C7,$57,$57
	.byte $C7,$47,$17,$C7,$47,$47,$C7,$07
	.byte $07,$C7,$27,$27,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $77,$87,$87,$57,$57,$57,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$17,$C7,$57,$57,$C7
	.byte $C7,$47,$C7,$47,$47,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$07,$C7,$27,$27,$C7
	.byte $57,$87,$C7,$57,$57,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$17,$C7,$57,$57,$97
	.byte $C7,$47,$57,$47,$57,$F7,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$27,$27,$C7,$87
	.byte $77,$C7,$57,$57,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$57,$57,$C7,$87
	.byte $C7,$C7,$47,$47,$C7,$F7,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$27,$27,$87,$87
	.byte $57,$57,$57,$57,$27,$27,$A7,$47
	.byte $07,$A7,$27,$27,$57,$57,$57,$57
	.byte $57,$57,$27,$47,$A7,$27,$27,$A7
	.byte $07,$27,$A7,$27,$27,$A7,$27,$47
	.byte $A7,$27,$57,$A7,$D7,$17,$A7,$47
	.byte $47,$A7,$07,$F7,$A7,$57,$27,$A7
	.byte $47,$27,$A7,$27,$27,$A7,$07,$47
	.byte $A7,$27,$27,$A7,$57,$57,$A7,$57
	.byte $57,$A7,$27,$47,$A7,$27,$27,$A7
	.byte $07,$27,$A7,$27,$27,$A7,$27,$47
	.byte $A7,$27,$57,$57,$D7,$57,$57,$47
	.byte $57,$F7,$07,$A7,$57,$57,$A7,$47
	.byte $07,$A7,$27,$27,$A7,$E7,$07,$A7
	.byte $27,$27,$A7,$57,$57,$A7,$57,$57
	.byte $A7,$E7,$27,$A7,$27,$27,$A7,$47
	.byte $07,$A7,$27,$27,$A7,$E7,$07,$A7
	.byte $27,$27,$A7,$57,$D7,$A7,$47,$47
	.byte $A7,$F7,$07,$A7,$57,$57,$A7,$47
	.byte $47,$A7,$27,$27,$A7,$E7,$07,$A7
	.byte $27,$27,$57,$57,$57,$57,$57,$57
	.byte $07,$E7,$A7,$27,$27,$A7,$47,$47
	.byte $A7,$27,$27,$A7,$07,$E7,$A7,$27
//------------------------------
L_JMP_37B2_1B67_JAM:
//------------------------------
	.byte $27,$A7,$57,$57,$A7,$47,$47,$A7
	.byte $F7,$F7,$A7,$57,$57,$A7,$07,$47
	.byte $A7,$27,$27,$A7,$07,$67,$A7,$27
	.byte $27,$A7,$57,$57
	ldx #$52
	.byte $52
	ldx #$02
	.byte $E7,$A7,$27,$27,$A7,$07,$47,$A7
	.byte $27,$27,$A7,$07,$67,$A7,$27,$27
	.byte $57,$57,$57,$57,$47,$57,$07,$F7
	.byte $A7,$57,$57,$A7,$F7,$07,$A7,$27
	.byte $27,$A7,$77,$07,$A7,$27,$27,$A7
	.byte $57,$57,$A7,$57,$57,$A7,$77,$07
	.byte $A7,$27,$27,$5F,$93,$00,$FF,$00
	.byte $FF,$80,$FF,$00,$FF,$00,$FF,$00
	.byte $FF
	ldy #$F7
	.byte $80,$FF,$00,$FF,$00,$FF
	lda ($DF,X) 
	.byte $00,$FF,$00,$FF,$00,$FF
	jsr $08FE
	dec $00,X 
	.byte $FF,$00,$FF
	and ($FE,X) 
	.byte $00,$FF,$00,$FF,$00,$FF
	jsr $84FE
	inc $FF00,X 
	.byte $00,$FF
	bit $FF 
	.byte $00
	inc $FF00,X 
	.byte $00,$FF,$00
	inc $FF00,X 
	.byte $00,$FF,$00,$FF,$00
	inc $F7A1,X 
	.byte $00,$FF,$00,$FF,$04,$BF,$00,$FF
	.byte $00,$FF,$00,$FF
	jsr $00FF
	.byte $FF,$00,$FF,$00,$FF
	jsr $88FF
	ldx $FF00,Y 
	.byte $00,$FF,$00,$BF
	ldy #$FF
	.byte $00,$FF,$00,$FF
	jsr 00FF
	ror $FF00,X 
	.byte $00,$FF
	ldy $FE 
	.byte $80
	inc $FF00,X 
	.byte $00,$FF,$80,$DF,$80,$FF,$00,$FF
	.byte $00,$FF
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$00,$FF,$00
	sbc $DF00,X 
//------------------------------
L_BRS_3895_3913_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$00
	inc $7E20,X 
	.byte $00,$FF,$00,$FF
	jsr 88FC
	inc $FF00,X 
	.byte $00,$FF
	php 
	inc $FE22,X 
//------------------------------
L_BRS_38AD_392B_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$80
	inc $FE90,X 
	.byte $00,$FF,$00,$FF
	ora ($BF,X)
	.byte $00,$7F,$00,$FF,$00,$FF
	jsr B2FF
	inc $FF00,X 
	.byte $00,$FF
	sta ($EE),Y 
	.byte $80,$FF,$00,$FF,$00,$FF,$80
	inc $FF20,X 
	.byte $00,$FF,$00,$FF,$80,$EF
	jsr 00FF
	.byte $FF,$00,$FF,$80,$EF,$00,$DF,$00
	.byte $FF,$00,$FF,$80
//------------------------------
L_BRS_38E8_3923_BAD:
//------------------------------
	inc $FF00,X 
//------------------------------
L_BRS_38EB_3929_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF
	php 
//------------------------------
L_BRS_38F1_392F_BAD:
//------------------------------
	dec $FF20,X 
	.byte $00,$FF,$00,$FF,$80
	inc $FF00,X 
	.byte $00,$FF,$00,$FF,$00,$6F
	eor $05,X 
	ora $C0
	jsr C020
	.byte $00,$00
	cpy #$20
	.byte $23,$C3,$03,$03,$C3
//------------------------------
L_BRS_3911_394F_BAD:
//------------------------------
	jsr C020
	beq L_BRS_3895_3913_JAM
	cpy $54 
	.byte $54
	cpy #$00
	.byte $00
	cpy #$20
//------------------------------
L_BRS_391D_395B_OK:
//------------------------------
	jsr 10C0
	jsr 50C0
	bvc L_BRS_38E8_3923_BAD
	.byte $83,$83,$C3,$53
	bvc L_BRS_38EB_3929_JAM
	beq L_BRS_38AD_392B_JAM
	cpy #$50
	bvc L_BRS_38F1_392F_BAD
	.byte $00,$03,$C3
	jsr C121
	ora ($01,X)
	cmp ($20,X) 
	jsr 00C0
	.byte $00
	cpy #$20
	jsr F300
	.byte $83
	bvc L_BRS_3998_3945_JAM
	eor ($01),Y 
	ora ($C1,X)
	jsr C020
	.byte $00
	bpl L_BRS_3911_394F_BAD
	bvc L_BRS_39A3_3951_JAM
	cpy #$91
	.byte $80,$C3,$53,$53,$C3,$03
	beq L_BRS_391D_395B_OK
	bvc L_BRS_39AF_395D_JAM
	cpy #$00
	.byte $00
	cpy #$20
	.byte $27,$C7,$07,$07,$C7,$27,$27,$C7
	.byte $07,$07,$C7,$27,$27,$C7,$07,$F7
	.byte $C7,$57,$57,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$17,$C7,$57,$57,$C7
	.byte $97,$87,$C7,$57,$57,$97,$07,$F7
	.byte $57,$57,$57,$07,$07,$C7,$27,$27
//------------------------------
L_BRS_3998_3945_JAM:
//------------------------------
	.byte $C7,$07,$07,$C7,$27,$27,$C7,$07
//------------------------------
L_BRS_39A3_3951_JAM:
//------------------------------
	.byte $07,$C7,$27,$27,$C7,$C7,$07,$C7
	.byte $57,$57,$C7,$07,$07,$C7,$27,$27
//------------------------------
L_BRS_39AF_395D_JAM:
//------------------------------
	.byte $C7,$07,$07,$C7,$57,$57,$C7,$47
	.byte $D7,$C7,$57,$57,$C7,$97,$07,$C7
	.byte $57,$57,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$27,$27,$C7,$07
	.byte $07,$C7,$27,$27,$D7,$87,$07,$57
	.byte $57,$57,$07,$07,$C7,$27,$27,$C7
	.byte $07,$07,$C7,$27,$57,$C7,$67,$47
	.byte $C7,$57,$57,$C7,$37,$97,$C7,$47
	.byte $57,$C7,$07,$07,$C7,$27,$27,$C7
	.byte $07,$07,$C7,$27,$27,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$27,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$87,$87,$C7,$57,$57,$C7
	.byte $07,$07,$C7,$27,$27,$C7,$07,$07
	.byte $C7,$27,$57,$C7,$37,$47,$C7,$57
	.byte $57,$57,$17,$17,$57,$47,$57,$07
	.byte $07,$C7,$27,$27,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$87,$87,$C7,$57,$57,$C7,$07
	.byte $07,$C7,$27,$27,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$17,$37,$C7,$57,$57
	.byte $C7,$47,$17,$C7,$47,$47,$C7,$07
	.byte $07,$C7,$27,$27,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $77,$87,$87,$57,$57,$57,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$17,$C7,$57,$57,$C7
	.byte $C7,$47,$C7,$47,$47,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$07,$C7,$27,$27,$C7
	.byte $57,$87,$C7,$57,$57,$C7,$07,$07
	.byte $C7,$27,$27,$C7,$07,$07,$C7,$27
	.byte $27,$C7,$07,$17,$C7,$57,$57,$97
	.byte $C7,$47,$57,$47,$57,$F7,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$27,$27,$C7,$87
	.byte $77,$C7,$57,$57,$C7,$07,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$57,$57,$C7,$87
	.byte $C7,$C7,$47,$47,$C7,$F7,$07,$C7
	.byte $27,$27,$C7,$07,$07,$C7,$27,$27
	.byte $C7,$07,$07,$C7,$27,$27,$87,$87
	.byte $57,$57,$57,$57,$27,$27,$A7,$47
	.byte $07,$A7,$27,$27,$57,$57,$57,$57
	.byte $57,$57,$27,$47,$A7,$27,$27,$A7
	.byte $07,$27,$A7,$27,$27,$A7,$27,$47
	.byte $A7,$27,$57,$A7,$D7,$17,$A7,$47
	.byte $47,$A7,$07,$F7,$A7,$57,$27,$A7
	.byte $47,$27,$A7,$27,$27,$A7,$07,$47
	.byte $A7,$27,$27,$A7,$57,$57,$A7,$57
	.byte $57,$A7,$27,$47,$A7,$27,$27,$A7
	.byte $07,$27,$A7,$27,$27,$A7,$27,$47
	.byte $A7,$27,$57,$57,$D7,$57,$57,$47
	.byte $57,$F7,$07,$A7,$57,$57,$A7,$47
	.byte $07,$A7,$27,$27,$A7,$E7,$07,$A7
	.byte $27,$27,$A7,$57,$57,$A7,$57,$57
	.byte $A7,$E7,$27,$A7,$27,$27,$A7,$47
	.byte $07,$A7,$27,$27,$A7,$E7,$07,$A7
	.byte $27,$27,$A7,$57,$D7,$A7,$47,$47
	.byte $A7,$F7,$07,$A7,$57,$57,$A7,$47
	.byte $47,$A7,$27,$27,$A7,$E7,$07,$A7
	.byte $27,$27,$57,$57,$57,$57,$57,$57
	.byte $07,$E7,$A7,$27,$27,$A7,$47,$47
	.byte $A7,$27,$27,$A7,$07,$E7,$A7,$27
	.byte $27,$A7,$57,$57,$A7,$47,$47,$A7
	.byte $F7,$F7,$A7,$57,$57,$A7,$07,$47
	.byte $A7,$27,$27,$A7,$07,$67,$A7,$27
	.byte $27,$A7,$57,$57
	ldx #$52
	.byte $52
	ldx #$02
	.byte $E7,$A7,$27,$27,$A7,$07,$47,$A7
	.byte $27,$27,$A7,$07,$67,$A7,$27,$27
	.byte $57,$57,$57,$57,$47,$57,$07,$F7
	.byte $A7,$57,$57,$A7,$F7,$07,$A7,$27
	.byte $27,$A7,$77,$07,$A7,$27,$27,$A7
	.byte $57,$57,$A7,$57,$57,$A7,$77,$07
	.byte $A7,$27,$27,$03,$00,$03
	asl $00 
	.byte $FF,$00,$EF
	jsr 009F
	.byte $FF,$00,$FF
	jsr 03F7
	.byte $00,$03,$00,$00,$FF,$00
	lda $06 
	.byte $FF,$00,$FF,$00,$FF,$00,$AF
//------------------------------
L_JSR_3C20_14DC_OK:
//------------------------------
	jsr 00FF
	.byte $FF,$00,$FF,$00,$A7
	jsr 00F7
	.byte $FF,$00,$FF,$00,$B7
	jsr 00FF
	.byte $FF,$00,$FF
	sta ($AF),Y 
	rti 
//------------------------------
	.byte $AF,$00,$FF,$00,$FF,$00,$B7
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$82,$F7,$00,$FF
	.byte $00,$FF,$00,$FF,$00,$BF,$00,$F7
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_3C57_3C66_BAD:
//------------------------------
	jsr 80DF
	.byte $AF,$00,$FF,$00,$FF,$00,$FF,$00
	.byte $F7,$00,$FF,$00,$FF
	bpl L_BRS_3C57_3C66_BAD
	.byte $00,$F7,$00,$FF,$00,$FF,$02,$EF
	rti 
//------------------------------
	.byte $E7,$00,$FF,$00,$FF
	ldy #$FD
	.byte $02,$FF,$00,$FF,$00,$FF,$00
	inc $09,X 
	.byte $BF,$00,$FF,$00,$FF
//------------------------------
L_BRS_3C87_3C86_BAD:
//------------------------------
	bpl L_BRS_3C87_3C86_BAD
	.byte $00,$FF,$00,$FF,$00,$FF,$00
	sbc #$20
	.byte $EF,$00,$FF,$00,$FF,$00,$F7,$00
	.byte $FF,$00,$FF,$00,$FF,$00,$F7,$00
	.byte $BF,$00,$FF,$00,$FF,$00
	lda $BF00 
	.byte $00,$FF,$00,$FF,$00,$8F,$00,$BF
	.byte $00,$FF,$00,$FF,$00,$FF,$02,$B7
	.byte $00,$FF,$00,$FF
	sta ($A7,X) 
	.byte $00,$FF,$00,$FF,$00,$FF,$80
	sbc $BA00 
	.byte $00,$FF,$00,$FF,$00,$F7,$00,$E7
	.byte $00,$FF,$00,$FF,$80,$FF,$42,$EF
	.byte $00,$FF,$00,$FF,$00,$AF,$52
	sbc $00 
	.byte $FF,$00,$FF
	jsr 00BF
	.byte $FF,$00,$FF,$00,$FF,$00,$FF,$1A
	.byte $AF,$00,$FF,$00,$FF,$00,$F7
	ora ($E6,X)
	.byte $00,$FF,$00,$FF
	asl A 
	.byte $FF
	cpx $0086 
	.byte $FF,$00,$FF,$00,$FF
	ora $00F9,Y
	.byte $FF,$00,$FF,$12,$FF
	asl $FD,X 
	.byte $00,$FF,$00,$FF,$12
	inc $F600,X 
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_3D1F_3D1E_BAD:
//------------------------------
	bpl L_BRS_3D1F_3D1E_BAD
	.byte $00,$FB,$00,$FF,$00,$FF
	jsr 01F5
//------------------------------
L_BRS_3D2F_3D30_JAM:
//------------------------------
	.byte $FF,$00,$FF,$00,$FF,$52,$FF
	bpl L_BRS_3D2F_3D30_JAM
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_3D37_3D36_BAD:
//------------------------------
	bcc L_BRS_3D37_3D36_BAD
	.byte $00,$FB,$00,$FF,$00,$FF
	clc 
	lda $7B10,X 
//------------------------------
L_BRS_3D45_3D48_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF
//------------------------------
L_BRS_3D47_3D46_BAD:
//------------------------------
	bpl L_BRS_3D47_3D46_BAD
	bpl L_BRS_3D45_3D48_JAM
//------------------------------
L_BRS_3D4B_3D4E_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF
	bpl L_BRS_3D4B_3D4E_JAM
	.byte $12,$FF,$00,$FF,$00,$FF,$00
	sbc $FB10,X 
	.byte $00,$FF,$00,$FF,$02,$CF,$00,$FF
	.byte $00,$FF,$00,$FF
	clc 
	sbc $FF00,X 
	.byte $00,$FF,$00,$FF,$02,$FF
//------------------------------
L_BRS_3D71_3D70_BAD:
//------------------------------
	bpl L_BRS_3D71_3D70_BAD
	.byte $00,$FF,$00,$FF
	ora ($EF,X)
	.byte $12,$FF,$00,$FF,$00,$FF,$02
	sbc $FB12,Y 
//------------------------------
L_BRS_3D83_3D86_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF
	bpl L_BRS_3D83_3D86_JAM
	.byte $12,$FF,$00,$FF,$00,$FF
	asl A 
	.byte $FF,$12,$FF,$00,$FF,$00,$FF
//------------------------------
L_BRS_3D97_3D96_BAD:
//------------------------------
	bpl L_BRS_3D97_3D96_BAD
	asl $FC 
	.byte $00,$FF,$00,$FF,$00,$F3,$00
	sbc $FF00,Y 
	.byte $00,$FF
	jsr L_JSR_12FD_3DA6_OK
	.byte $F3,$00,$FF,$00,$FF
//------------------------------
L_BRS_3DAF_3DAE_BAD:
//------------------------------
	bcc L_BRS_3DAF_3DAE_BAD
	.byte $12
	sbc $FF00,Y 
//------------------------------
L_BRS_3DB7_3DB8_JAM:
//------------------------------
	.byte $00,$FF,$12,$FF
	bpl L_BRS_3DB7_3DB8_JAM
	.byte $00,$FF,$00,$FF,$02,$FB,$12,$FB
	.byte $00,$FF,$00,$FF,$00,$FB,$12
	inc $FF00,X 
	.byte $00,$FF,$02,$F7,$00,$FA,$00,$FF
	.byte $00,$FF,$13,$FB
//------------------------------
L_BRS_3DD9_3DD8_BAD:
L_BRS_3DD9_3DDE_BAD:
//------------------------------
	bpl L_BRS_3DD9_3DD8_BAD
//------------------------------
L_BRS_3DDD_3DE0_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF
	bpl L_BRS_3DD9_3DDE_BAD
	bpl L_BRS_3DDD_3DE0_JAM
//------------------------------
L_BRS_3DE5_3DE6_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF
	bpl L_BRS_3DE5_3DE6_JAM
	.byte $12,$FA,$00,$FF,$00,$FF
	ora ($F7),Y
	.byte $80,$FF,$00,$FF,$00,$FF,$04,$FF
	.byte $00,$FF,$00,$FF,$00,$FF,$00,$7A
	.byte $EF
	dex 
	.byte $00,$FF,$00,$FF,$00,$FF,$00,$FF
	.byte $00,$FF,$00,$FF,$00,$7F,$00,$FF
	.byte $00,$FF,$00,$FF,$00
	sbc $FF00,X 
	.byte $00,$FF,$00,$FF,$02
	sbc $FF08,X 
	.byte $00,$FF,$00,$FF,$00
	sbc $F702,X 
	.byte $00,$FF,$00,$FF,$00,$FF,$00,$FF
	.byte $00,$FF,$00,$FF,$00,$FF,$00,$FF
	.byte $00,$FF,$00,$FF,$00,$F3,$00,$FF
	.byte $00,$FF,$00,$FF
	jsr 00FF
	.byte $FF,$00,$FF,$00,$FF
	ora ($FF,X)
	.byte $00,$F7,$00,$FF,$00,$FF,$02,$F7
	.byte $00,$FF,$00,$FF,$00,$FF,$00
	sbc $00,X 
//------------------------------
L_BRS_3E61_3E68_JAM:
//------------------------------
	.byte $BF,$00,$FF,$00,$FF,$00,$FF
	bpl L_BRS_3E61_3E68_JAM
	.byte $00,$FF,$00,$FF,$00
	sbc $6700,X 
	.byte $00,$FF,$00,$FF
	php 
	sbc $00,X 
	.byte $B7,$00,$FF,$00,$FF
	lda $FF 
	.byte $00
	sbc $00,X 
	.byte $FF,$00,$FF,$00
	sbc $00,X 
	.byte $F7,$00,$FF,$00,$FF,$00,$FF,$00
	sbc $FF00,X 
	.byte $00,$FF,$02,$F7,$00,$F7,$00,$FF
	.byte $00,$FF,$00,$F7,$00,$F7,$00,$FF
	.byte $00,$FF,$00,$F7
//------------------------------
L_BRS_3EA9_3EA8_BAD:
//------------------------------
	bpl L_BRS_3EA9_3EA8_BAD
	.byte $00,$FF,$00,$FF,$00,$BF,$80,$FF
	.byte $00,$FF,$00,$FF,$00
	sbc $F540,X 
	.byte $00,$FF,$00,$FF,$14
	sbc $F700,X 
	.byte $00,$FF,$00,$FF
	php 
	.byte $F7
	ora ($EF,X)
//------------------------------
L_BRS_3ECF_3ED6_JAM:
//------------------------------
	.byte $00,$FF,$00,$FF,$00,$F7,$00,$FF
	.byte $00,$FF,$00,$FF
	bpl L_BRS_3ECF_3ED6_JAM
	ora ($FF,X)
	.byte $00,$FF,$00,$FF,$00
	sbc $50,X 
	sbc $FF00,X 
	.byte $00,$FF
	ora ($F7,X)
	.byte $00
	sbc $FF00,X 
	.byte $00,$FF,$04
	sbc $FF00,X 
	.byte $00,$FF,$00,$FF,$00,$FF,$00,$7F
	.byte $00,$FF,$00,$FF,$92,$FF,$FF
	cmp $00,X 
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00
	jsr 0000
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF
	jsr 0000
	.byte $00,$00,$FF,$00,$FF,$00,$00,$00
	jsr FF00
	.byte $00,$FF
	rti 
//------------------------------
	.byte $00,$00,$00,$00,$FB,$00,$FF
	rti 
//------------------------------
	.byte $00,$80,$00,$00,$FF,$00,$FF,$00
	.byte $00,$00,$00,$00,$FF,$00,$FF,$00
	.byte $80,$00,$00,$00,$FF,$00,$FF,$00
	.byte $00,$00,$00,$00,$FF,$00,$FF,$00
	.byte $00,$00,$02,$00,$FF,$00,$FF,$00
	.byte $00,$00,$00,$00,$FF,$00,$FF,$00
	.byte $00,$00,$00,$00,$FF,$00,$FF
	rts 
//------------------------------
	ora ($00,X)
	.byte $00,$00,$FF,$00,$FF,$00,$00
	php 
	.byte $00,$00,$FF,$00,$FF,$04,$00,$00
	.byte $00,$00,$FF,$00,$FF,$00,$00
	php 
	.byte $00,$00,$FF,$00,$FF,$00,$00,$00
	.byte $00,$00,$FF,$00,$FF,$00,$00,$00
	.byte $00,$00,$FF,$00,$FF,$00,$00
	ora ($00),Y
	.byte $00,$FF,$00,$FF,$00,$00,$00,$00
	.byte $00,$FF,$00,$FF,$00,$00,$00,$00
	.byte $00,$FF,$00,$FF,$00,$00,$00,$00
	.byte $00,$FF,$00,$FF,$00,$00,$00,$00
	.byte $00,$FF,$00,$FF,$00,$00,$00,$00
	.byte $00,$FF,$00,$FF,$00,$00,$00,$02
	.byte $00,$FF,$00,$FF
	ora ($00,X)
