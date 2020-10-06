.import source "constants.asm"
*=$1201
	.import binary "1201-1fff.bin"
*=$2000

start:
// Set up screen size and colours
	cld 
	lda #$CD
	sta CharsetPointer 		//set screen/charset location
	lda #$08
	sta ScreenColour 		//set screen/boarder colour
	lda #$BC
	sta ScreenRows 		//Raster value (lowest bit)/ Number of rows / Double character size
	lda #$1A
	sta ScreenOriginV 		//Screen origin (vertical)
	lda #$19
	sta ScreenOffset 		//Screen memory offset / Number of columns
	lda #$09
	sta ScreenOriginH		//Interlace mode / Screen origin (horizontal)
	jsr SetupTitleScreen	//L_JSR_20ED_201F_OK
	jmp L_JMP_3060_2022_OK
          
Title_Screen:                           //Title screen data
/* 	.byte $20, $4B,$4B,$4B
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
	.byte $20 //jsr $0520 */

          .byte $20,$4B,$4B,$4B,$20,$20,$20,$20
	.byte $20,$20,$20,$20,$41,$42,$43,$44
	.byte $45,$20,$20,$20,$20,$20,$4b,$4b 
          .byte $4B,$20,$20,$20,$20,$20,$20,$20
	.byte $20,$20,$20,$20,$20,$46,$47,$48      
          .byte $49,$4A,$20,$20,$20,$20,$20,$20 
          .byte $20,$20,$20,$5A,$31,$20,$30,$30  
          .byte $30,$30,$30,$20,$20,$20,$20,$20   
          .byte $20,$20,$20,$20,$5A,$32,$20,$30
          .byte $30,$30,$30,$30,$20,$20,$20,$20
          .byte $20,$20,$20,$20,$20,$6E
//2079
//	
	.byte $20,$0C,$0C,$01,$0D,$01,$20,$20  //"  LLAMA  "
          .byte $20,$20,$20,$20,$20,$20

Title_Screen_Colours:                            //title screen colours data
/*           .byte $20,$05
	ora $05
//------------------------------
L_BRS_208C_205A_JAM:
L_BRS_208E_205C_JAM:
L_BRS_2091_206F_JAM:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $03,$03,$03,$03,$03,$00,$00,$00
//------------------------------
L_BRS_209F_206D_JAM:
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
	.byte $00,$00,$00,$00,$00,$00 */

//---------------------------------------------
          .byte $20,$05,$05,$05,$00,$00,$00,$00 
          .byte $00,$00,$00,$00,$03,$03,$03,$03
          .byte $03,$00,$00,$00,$00,$00,$04,$04
          .byte $04,$00,$00,$00,$00,$00,$00,$00
          .byte $00,$00,$00,$00,$00,$03,$03,$03
          .byte $03,$03,$00,$00,$00,$00,$00,$00
          .byte $00,$00,$00,$03,$03,$00,$01,$01
          .byte $01,$01,$01,$00,$00,$00,$00,$00 
          .byte $00,$00,$00,$00,$03,$03,$00,$01
          .byte $01,$01,$01,$01,$00,$00,$00,$00  
          .byte $00,$00,$00,$00,$00,$01,$00,$03 
          .byte $03,$03,$03,$03,$00,$00,$00,$00
          .byte $00,$00,$00,$00,$00
//------------------------------
SetupTitleScreen:                       //L_JSR_20ED_201F_OK:
                                        //L_JSR_20ED_3233_OK:
//------------------------------
	ldy #$64
LoopGetChars:                           //L_BRS_20EF_20FC_OK:
//------------------------------
	lda Title_Screen,Y 		//screen
	sta ScreenMemory-1,Y 
	lda Title_Screen_Colours,Y 	//screen colour
	sta ScreenColourRam-1,Y 
	dey 
	bne LoopGetChars              //L_BRS_20EF_20FC_OK
	rts 
//------------------------------
L_JSR_20FF_337A_OK:
L_JSR_20FF_3392_OK:
L_JSR_20FF_33FA_OK:
//------------------------------
	nop 
//------------------------------
DrawPlayScreen:
//L_JSR_2100_2BA3_OK:
//L_JSR_2100_2D46_OK:
//L_JSR_2100_2E8C_OK: 
//------------------------------
//Draw Play screen
//
	lda #$10                      //set address $1064
	sta $03                       //In ZP locations
	sta $05                       //02-03 and 04-05
	lda #$64                      //the 100th screen
	sta $02                       //position
	sta $04 
	ldx #$08
//------------------------------
!Loop:                                                      //L_BRS_210E_2131_OK:
	ldy #$17                      //print 23 
	lda #$51                      //Horizontal Track
//------------------------------
!Loop:                                                      //L_BRS_2112_2115_OK:
	sta ($04),Y                   //to screen position in zp04-05
	dey 
	bne !Loop-                                        //L_BRS_2112_2115_OK
	lda #$56                      //Virtical 'T' to right (|-)
	ldy #$00
	sta ($04),Y 
	lda #$57                      //Virtical 'T' to left (-|)
	ldy #$18                      //letter 'X'
	sta ($04),Y 
	clc 
	lda $04 
	adc #$64
	sta $04 
	lda $05 
	adc #$00
	sta $05 
	dex 
	bne !Loop--                   //L_BRS_210E_2131_OK
	lda $02 
	sta $04 
	lda $03 
	sta $05 
	ldy #$00
//------------------------------
!Loop:                                  //L_BRS_213D_2178_OK:
	lda #$58                      //Horizontal 'T' down 
	sta ($04),Y 
	ldx #$18
//------------------------------
!Loop:                                  //L_BRS_2143_2163_OK:
	lda $04 
	clc 
	adc #$19
	sta $04 
	lda $05 
	adc #$00
	sta $05 
	lda #$50                      //vertical track
	sta $06 
	jsr DrawJunctions        	//insert cross track
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
	bne !Loop-                                                  //L_BRS_2143_2163_OK
	lda #$59                      //Inverted 'T' track
	sta ($04),Y 
	lda $02 
	sta $04 
	lda $03 
	sta $05 
	iny                           //4 blank spaces (Square Centers)
	iny 
	iny 
	iny 
	nop 
	cpy #$1C
	bne !Loop--                                                 //L_BRS_213D_2178_OK
	lda #$52                      //Top left corner
	ldy #$00
	sta ($02),Y 
	ldy #$18
	lda #$53                      //Top right corner
	sta ($02),Y 
	lda #$55                      //bottom left corner
	ldy #$00
	sta $12BC,Y 
	ldy #$18
	lda #$54                      //bottom right corner
	sta $12BC,Y 
	rts 
//------------------------------
DrawJunctions:						//L_JSR_2195_2154_OK:
//------------------------------
	lda ($04),Y 
	cmp #$51                 	//Horizontal track
	bne !skip+                                                  //L_BRS_21A0_2199_OK
	lda #$4F                     	//Cross track
	sta $06 
	rts 
//------------------------------
!skip:                                                                //L_BRS_21A0_2199_OK:
//------------------------------
	cmp #$56                                //Vertical T to right
	bne !skip+                                                  //L_BRS_21A7_21A2_OK
	sta $06 
	rts 
//------------------------------
!skip:                                                                //L_BRS_21A7_21A2_OK:
//------------------------------
	cmp #$57                                //vertical 'T' to left
	bne !skip+                                                  //L_BRS_21AD_21A9_OK
	sta $06 
//------------------------------
!skip:                                                                //L_BRS_21AD_21A9_OK:
//------------------------------
	rts 
//------------------------------
L_JSR_21AE_2E89_OK:
L_JSR_21AE_2F03_OK:
L_JSR_21AE_3000_OK:                     //code
//------------------------------
//set $04-05 to top left of play screen ($1064)
	lda #$10
	sta $05 
	lda #$64
	sta $04 
	ldx #$1A
//------------------------------
!Loop:                                                                //L_BRS_21B8_21D1_OK:
	ldy #$00
//------------------------------
!Loop:                                                                //L_BRS_21BA_21C1_OK:
	lda #$20                      //Space character
	jsr L_JSR_21D4_21BC_OK
	cpy #$1A
	bne !Loop-                    //L_BRS_21BA_21C1_OK
	lda $04 
	clc 
	adc #$19
	sta $04 
	lda $05 
	adc #$00
	sta $05 
	dex 
	bne !Loop--                   //L_BRS_21B8_21D1_OK
	rts 
//------------------------------
L_JSR_21D4_21BC_OK:                     //code
//------------------------------
	sta ($04),Y 
	lda $05 
	pha 
	clc 
	adc #$84
	sta $05 
	lda #$07                      // H
	sta ($04),Y 
	pla 
	sta $05 
	iny 
	rts 
//------------------------------
//Data
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
	sta SoundVolume 
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
//Main Game Loop?
MainGameLoop:
                                                  //L_JMP_2250_2265_OK:
                                                  //L_BRS_2250_2294_OK:
                                                  //L_JMP_2250_2E98_OK:
                                                  //L_JMP_2250_2EF8_OK:
//------------------------------
	jsr L_JSR_28C8_2250_OK
	jsr Read_Joystick                       //L_JSR_2560_2253_OK
	jsr L_JSR_28E1_2256_OK
	jsr L_JSR_2A0E_2259_OK
	jsr L_JSR_2A3B_225C_OK
	jsr L_JSR_2B11_225F_OK
	jsr L_JSR_2E9B_2262_OK
	jmp MainGameLoop                        //L_JMP_2250_2265_OK
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
	jsr STOP                                //$FFE1 Scan Stop Key
	bne MainGameLoop                        //L_BRS_2250_2294_OK
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
//Sound Routine using noise
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
	stx SoundNoise 
	dey 
	bne L_BRS_23D4_23D8_OK
	inx 
	bne L_BRS_23D4_23DB_OK
//------------------------------
L_BRS_23DD_23E1_OK:
L_BRS_23DD_23E6_OK:
//------------------------------
	stx SoundNoise 
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
L_JSR_23F0_251E_OK:                     //code
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
L_BRS_2409_2403_OK:                     //code
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
L_BRS_243F_241F_OK:                     //code
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
L_BRS_2457_2441_OK:                     //code
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
L_JSR_2510_25E0_OK:                     //code
//------------------------------
	ldy #$00
	lda $00 
	sta $FD 
//------------------------------
L_BRS_2516_2523_OK:
//------------------------------
	lda $FD 
	asl 
	asl  
	clc 
	adc $FD 
	tax 
	jsr L_JSR_23F0_251E_OK
	dec $FD 
	bne L_BRS_2516_2523_OK
	rts 
//------------------------------
L_JMP_2526_28D1_OK:                     //code
//------------------------------
	dec $08 
	beq L_BRS_252B_2528_OK
	rts 
//------------------------------
L_BRS_252B_2528_OK:                     //code
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
Read_Joystick:
                                        //L_JSR_2560_2253_OK:
                                        //L_JSR_2560_3079_OK:

//------------------------------
	sei 
	ldx #$7F
	stx DDR_B 
//------------------------------
!Loop:                                  //L_BRS_2566_256C_OK:
//------------------------------
	ldy OutputRegister_B 
	cpy OutputRegister_B 
	bne !Loop-                    //L_BRS_2566_256C_OK
	ldx #$FF
	stx DDR_B 
	ldx #$F7
	stx OutputRegister_B 
	cli 
//------------------------------
!Loop:                                  //L_BRS_2579_257F_OK:
//------------------------------
//Read joystick fire/up down left
	lda Via1_DR_A 
	cmp Via1_DR_A 
	bne !Loop-                    //L_BRS_2579_257F_OK
	pha 
	and #$1C
	lsr
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
	ror
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
L_JMP_25E0_28D8_OK:                     //code
//------------------------------
	jsr L_JSR_2510_25E0_OK
	jmp L_JMP_2620_25E3_OK
//------------------------------
//Data Block
//------------------------------
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$04
	.byte $a6,$10                           //ldx $10 
	.byte $50,$00                           //bvc L_BRS_2604_2602_JAM
	.byte $00,$00,$00,$00,$07,$4B
	.byte $4c,$4d,$4e                       //jmp $4E4D
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
	beq !Skip_jump+                          //L_BRS_2639_2634_OK
	jmp L_JMP_2B91_2636_OK
//------------------------------
!Skip_jump:                                        //L_BRS_2639_2634_OK:
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
	asl 
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
	asl
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
L_JMP_2833_287B_OK:                     //code
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
L_JSR_2841_2D3A_OK:                     //code
//------------------------------
	lda #$07
	sta $2608 
	lda $2604 
	cmp #$00
	bne L_BRS_2850_284B_OK
	jmp L_JMP_2876_284D_OK
//------------------------------
L_BRS_2850_284B_OK:                     //code
//------------------------------
	asl
	tax 
//------------------------------
!Loop:                                  //L_BRS_2852_2867_OK:
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
	bne !Loop-                    //L_BRS_2852_2867_OK
	lda #$00
	sta $2604 
	lda #$C3
	sta SoundNoise 
	jmp L_JMP_2833_2873_OK
//------------------------------
L_JMP_2876_284D_OK:                     //code
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
L_JSR_289A_2862_OK:                     //code
L_JSR_289A_28C2_OK:
//------------------------------
	txa 
	pha 
	tya 
	pha 
	ldy #$0A
	ldx #$00
//------------------------------
L_BRS_28A2_28BB_OK:                     //code
//------------------------------
	lda $2300,X 
	cmp $01 
	bne L_BRS_28B5_28A7_OK
	jsr L_JSR_29C6_28A9_OK
	nop 
	nop 
	bne L_BRS_28B5_28AE_OK
	lda #$07
	sta $2303,X 
//------------------------------
L_BRS_28B5_28A7_OK:                     //code
L_BRS_28B5_28AE_OK:                     //code
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
L_JSR_28C8_2250_OK:                     //code
//------------------------------
	dec $0F 
	beq L_BRS_28CD_28CA_OK
	rts 
//------------------------------
L_BRS_28CD_28CA_OK:                     //code
//------------------------------
	lda $0E 
	sta $0F 
	jmp L_JMP_2526_28D1_OK
//------------------------------
L_JMP_28D4_252B_OK:                     //code
//------------------------------
	lda $0D 
	sta $08 
	jmp L_JMP_25E0_28D8_OK
//------------------------------
L_JSR_28DB_249B_OK:
//------------------------------
	sta $05 
	lda Raster 
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
	dec SoundVolume 
	lda SoundVolume 
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
	sta SoundVoice3  
	iny 
	lda ($15),Y 
	sta $13 
	sta $14 
	lda #$0F
	sta SoundVolume 
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
L_JSR_29C6_28A9_OK:                     //code
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
	sta SoundVolume 
	rts 
//------------------------------
L_BRS_29E8_2A12_OK:
L_JMP_29E8_2B28_OK:
//------------------------------
	ldx #$01
//------------------------------
L_BRS_29EA_2A0B_OK:
//------------------------------
	lda SoundNoise 
	cmp #$C3
	bne L_BRS_29F9_29EF_OK
	lda #$E1
	sta SoundNoise 
	jmp L_JMP_2A0A_29F6_OK
//------------------------------
L_BRS_29F9_29EF_OK:
//------------------------------
	cmp #$E1
	bne L_BRS_2A05_29FB_OK
	lda #$F0
	sta SoundNoise 
	jmp L_JMP_2A0A_2A02_OK
//------------------------------
L_BRS_2A05_29FB_OK:
//------------------------------
	lda #$00
	sta SoundNoise 
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
	lda SoundVoice2 
	cmp #$00
	bne L_BRS_2A1D_2A1A_OK
	rts 
//------------------------------
L_BRS_2A1D_2A1A_OK:
//------------------------------
	inc SoundVoice2 
	inc SoundVoice1 
	inc SoundNoise 
	rts 
//------------------------------
	.byte $0F
	sta SoundVolume 
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
	sta SoundVoice1 
	sta SoundVoice2 
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
	sta SoundVoice3  
	lda #$01
	sta $13 
	rts 
//------------------------------
L_BRS_2AD6_2AC6_OK:
//------------------------------
	jsr L_JSR_2B2B_2AD6_OK
	lda SoundVoice3  
	cmp #$C0
	beq L_BRS_2AE1_2ADE_OK
	rts 
//------------------------------
L_BRS_2AE1_2ADE_OK:
//------------------------------
	lda #$90
	sta SoundVoice3  
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
	inc SoundVoice3  
	lda #$0F
	sta SoundVolume 
	lda #$20
	sta $10 
	rts 
//------------------------------
L_BRS_2B38_2B95_OK:                     //code
//------------------------------
	lda $18 
	beq L_BRS_2B52_2B3A_OK
	jsr L_JSR_2FD2_2B3C_OK
	nop 
	beq L_BRS_2B45_2B40_OK
	asl
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
L_BRS_2B52_2B3A_OK:                     //code
L_JMP_2B52_2B97_OK:
//------------------------------
	lda #$00
	jsr L_JSR_2EDB_2B54_OK
	lda #$80
	sta SoundNoise 
	lda #$0F
	sta SoundVolume 
	sta SoundVolume 
//------------------------------
L_BRS_2B64_2B6D_OK:                     //code
//------------------------------
	ldy #$50
//------------------------------
L_BRS_2B66_2B67_OK:                     //code
L_BRS_2B66_2B8C_OK:                     //code
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
	lda SoundVolume 
	and #$03
	tax 
//------------------------------
L_BRS_2B80_2B87_OK:                     //code
//------------------------------
	lda $2609,X 
	sta ($01),Y 
	dec $1F 
	bne L_BRS_2B80_2B87_OK
	dec SoundVolume 
	bne L_BRS_2B66_2B8C_OK
	jmp L_JMP_2D3A_2B8E_OK
//------------------------------
L_JMP_2B91_2636_OK:
L_JMP_2B91_2743_OK:
L_JMP_2B91_2C19_OK:                     //code
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
	jsr DrawPlayScreen                                //L_JSR_2100_2BA3_OK
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
	sta SoundVoice3  
	inc $1F 
	bne L_BRS_2BD7_2BEE_OK
	lda #$90
	sta SoundVoice3  
	jmp L_JMP_2BA0_2BF5_OK
//------------------------------
L_JMP_2BF8_2508_OK:                     //code
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
L_BRS_2C07_2BFF_OK:                     //code
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
L_JMP_2D3A_2B8E_OK:                     //code
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
	jsr DrawPlayScreen                                 //L_JSR_2100_2D46_OK
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
	sta SoundVoice3  
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
	sta SoundVoice3  
	sta SoundVoice2 
	sta SoundVoice1 
	jsr L_JSR_21AE_2E89_OK
	jsr DrawPlayScreen                                //L_JSR_2100_2E8C_OK
	jsr L_JSR_25A0_2E8F_OK
	jsr L_JSR_2DDD_2E92_BAD
	jmp L_JMP_2EF4_2E95_OK
	jmp MainGameLoop                                  //L_JMP_2250_2E98_OK
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
L_JSR_2EDB_2B54_OK:                     //code
L_JSR_2EDB_2EEE_OK:
L_JSR_2EDB_2EFB_OK:
L_JSR_2EDB_2F4F_OK:
L_JSR_2EDB_2F99_OK:
//------------------------------
	lda #$00
	sta SoundVoice1 
	sta SoundVoice2 
	sta SoundVoice3  
	sta SoundNoise 
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
	jmp MainGameLoop                         //L_JMP_2250_2EF8_OK
//------------------------------
L_JMP_2EFB_2C72_OK:
//------------------------------
	jsr L_JSR_2EDB_2EFB_OK
	lda #$0F
	sta SoundVolume 
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
	sty SoundVoice1 
	sty SoundVoice2 
	sty SoundVoice3  
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
//$2f35 data read $2f08

.byte $0d,$05,$07,$01,$0d,$05
.byte $20,$0f,$16,$05,$12
//------------------------------
L_JMP_2F40_2ED8_OK:
//------------------------------
	lda $19 
	asl 
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
L_JSR_3000_3060_OK:                     //code
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
L_JMP_3060_2022_OK:                     //code
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
	jsr Read_Joystick                       //L_JSR_2560_3079_OK
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
	jsr $1210
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
	.byte $20,$3a,$20             //jsr L_JSR_203A_3166_BAD

	jsr $0631
	and $3A,X 
	jsr $0F0E
	rol $1020 
	.byte $0C
	ora ($19,X)
	ora $12
	.byte $13

	.byte $20,$3a,$20             //jsr L_JSR_203A_317A_BAD
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
	jsr SetupTitleScreen 		//L_JSR_20ED_3233_OK
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
	//beq L_BRS_3495_3513_JAM
	.byte $f0,$80
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
	//beq L_BRS_34AD_352B_JAM
	.byte $f0,$80
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
	jsr $00FF
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
	jsr $88FC
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
	jsr $B2FF
	inc $FF00,X 
	.byte $00,$FF
	sta ($EE),Y 
	.byte $80,$FF,$00,$FF,$00,$FF,$80
	inc $FF20,X 
	.byte $00,$FF,$00,$FF,$80,$EF
	jsr $00FF
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
	jsr $C020
	.byte $00,$00
	cpy #$20
	.byte $23,$C3,$03,$03,$C3
//------------------------------
L_BRS_3911_394F_BAD:
//------------------------------
	jsr $C020
	//beq L_BRS_3895_3913_JAM
	.byte $f0,$80
	cpy $54 
	.byte $54
	cpy #$00
	.byte $00
	cpy #$20
//------------------------------
L_BRS_391D_395B_OK:
//------------------------------
	jsr $10C0
	jsr $50C0
	bvc L_BRS_38E8_3923_BAD
	.byte $83,$83,$C3,$53
	bvc L_BRS_38EB_3929_JAM
	//beq L_BRS_38AD_392B_JAM
	.byte $f0,$80
	cpy #$50
	bvc L_BRS_38F1_392F_BAD
	.byte $00,$03,$C3
	jsr $C121
	ora ($01,X)
	cmp ($20,X) 
	jsr $00C0
	.byte $00
	cpy #$20
	jsr $F300
	.byte $83
	bvc L_BRS_3998_3945_JAM
	eor ($01),Y 
	ora ($C1,X)
	jsr $C020
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
	jsr $009F
	.byte $FF,$00,$FF
	jsr $03F7
	.byte $00,$03,$00,$00,$FF,$00
	lda $06 
	.byte $FF,$00,$FF,$00,$FF,$00,$AF
	jsr $00FF
	.byte $FF,$00,$FF,$00,$A7
	jsr $00F7
	.byte $FF,$00,$FF,$00,$B7
	jsr $00FF
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
	jsr $80DF
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
	jsr $00BF
	.byte $FF,$00,$FF,$00,$FF,$00,$FF,$1A
	.byte $AF,$00,$FF,$00,$FF,$00,$F7
	ora ($E6,X)
	.byte $00,$FF,$00,$FF
	asl
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
	jsr $01F5
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
	asl
	.byte $FF,$12,$FF,$00,$FF,$00,$FF
//------------------------------
L_BRS_3D97_3D96_BAD:
//------------------------------
	bpl L_BRS_3D97_3D96_BAD
	asl $FC 
	.byte $00,$FF,$00,$FF,$00,$F3,$00
	sbc $FF00,Y 
	.byte $00,$FF
	jsr $12FD
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
	jsr $00FF
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
	jsr $0000
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF,$00,$00,$00,$00,$00
	.byte $FF,$00,$FF
	jsr $0000
	.byte $00,$00,$FF,$00,$FF,$00,$00,$00
	jsr $FF00
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
	.byte $00,$00,$00,$FF,$00,$FF,$00,$FF
