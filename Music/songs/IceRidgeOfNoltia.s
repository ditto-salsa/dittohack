	.include "MPlayDef.s"

	.equ	IceRidgeOfNoltia_grp, BCVoices
	.equ	IceRidgeOfNoltia_pri, 0
	.equ	IceRidgeOfNoltia_rev, 0
	.equ	IceRidgeOfNoltia_mvl, 127
	.equ	IceRidgeOfNoltia_key, 0
	.equ	IceRidgeOfNoltia_tbs, 1
	.equ	IceRidgeOfNoltia_exg, 0
	.equ	IceRidgeOfNoltia_cmp, 1

	.section .rodata
	.global	IceRidgeOfNoltia
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

IceRidgeOfNoltia_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , IceRidgeOfNoltia_key+0
Label_54A28A:
 .byte   TEMPO , 140*IceRidgeOfNoltia_tbs/2
 .byte   VOICE , 2
 .byte   MODT 0
 .byte   LFOS 44
 .byte   PAN , c_v-1
 .byte   VOL , 39*IceRidgeOfNoltia_mvl/mxv
 .byte   MOD 0
 .byte   BEND , c_v+0
 .byte   N05 ,Cn1 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @001   ----------------------------------------
Label_54A2B4:
 .byte   N05 ,As0 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #01 @002   ----------------------------------------
Label_54A2CF:
 .byte   N05 ,Gs0 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #01 @003   ----------------------------------------
 .byte   Gn0
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs0
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   As0
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @004   ----------------------------------------
Label_54A304:
 .byte   N05 ,Cn1 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #01 @005   ----------------------------------------
 .byte   PATT
  .word Label_54A304
@  #01 @006   ----------------------------------------
 .byte   PATT
  .word Label_54A2CF
@  #01 @007   ----------------------------------------
 .byte   N05 ,Gs0 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Gs1
 .byte   W06
 .byte   Gn0
 .byte   W06
 .byte   Gn1
 .byte   W06
@  #01 @008   ----------------------------------------
Label_54A345:
 .byte   N05 ,Fn1 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   PEND 
@  #01 @009   ----------------------------------------
 .byte   PATT
  .word Label_54A345
@  #01 @010   ----------------------------------------
 .byte   N05 ,Gn1 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @011   ----------------------------------------
 .byte   Gn0
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @012   ----------------------------------------
 .byte   PATT
  .word Label_54A304
@  #01 @013   ----------------------------------------
 .byte   PATT
  .word Label_54A2CF
@  #01 @014   ----------------------------------------
 .byte   PATT
  .word Label_54A2B4
@  #01 @015   ----------------------------------------
 .byte   N05 ,Gn0 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   An0
 .byte   W06
 .byte   Bn0
 .byte   W06
@  #01 @016   ----------------------------------------
 .byte   PATT
  .word Label_54A304
@  #01 @017   ----------------------------------------
 .byte   PATT
  .word Label_54A2CF
@  #01 @018   ----------------------------------------
 .byte   PATT
  .word Label_54A2B4
@  #01 @019   ----------------------------------------
 .byte   N05 ,Cn1 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   N05
 .byte   W06
@  #01 @020   ----------------------------------------
Label_54A3ED:
 .byte   N22 ,Gs0 ,v127
 .byte   W24
 .byte   N04 ,Cn1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   N44 ,Gs1
 .byte   W48
 .byte   N04 ,Gs0
 .byte   W06
 .byte   N04
 .byte   W06
 .byte   PEND 
@  #01 @021   ----------------------------------------
Label_54A3FF:
 .byte   N22 ,As0 ,v127
 .byte   W24
 .byte   N04 ,Dn1
 .byte   W06
 .byte   Fn1
 .byte   W06
 .byte   N44 ,As1
 .byte   W48
 .byte   N04 ,As0
 .byte   W06
 .byte   N04
 .byte   W06
 .byte   PEND 
@  #01 @022   ----------------------------------------
Label_54A411:
 .byte   N22 ,Cn1 ,v127
 .byte   W24
 .byte   N04
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   N44 ,Cn1
 .byte   W48
 .byte   N04 ,Gn0
 .byte   W06
 .byte   N04
 .byte   W06
 .byte   PEND 
@  #01 @023   ----------------------------------------
Label_54A422:
 .byte   N22 ,Cn1 ,v127
 .byte   W24
 .byte   N04
 .byte   W06
 .byte   Cn2
 .byte   W06
 .byte   N10 ,Cn1
 .byte   W12
 .byte   N04 ,Fn1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Dn1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Cn1
 .byte   W06
 .byte   As0
 .byte   W06
 .byte   N10 ,Gn0
 .byte   W12
 .byte   PEND 
@  #01 @024   ----------------------------------------
 .byte   PATT
  .word Label_54A3ED
@  #01 @025   ----------------------------------------
 .byte   PATT
  .word Label_54A3FF
@  #01 @026   ----------------------------------------
 .byte   PATT
  .word Label_54A411
@  #01 @027   ----------------------------------------
 .byte   PATT
  .word Label_54A422
@  #01 @028   ----------------------------------------
 .byte   PATT
  .word Label_54A3ED
@  #01 @029   ----------------------------------------
 .byte   PATT
  .word Label_54A3FF
@  #01 @030   ----------------------------------------
 .byte   PATT
  .word Label_54A411
@  #01 @031   ----------------------------------------
 .byte   PATT
  .word Label_54A422
@  #01 @032   ----------------------------------------
 .byte   PATT
  .word Label_54A3ED
@  #01 @033   ----------------------------------------
 .byte   PATT
  .word Label_54A3FF
@  #01 @034   ----------------------------------------
 .byte   N16 ,Cn1 ,v127
 .byte   W18
 .byte   N04
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Dn1
 .byte   W06
 .byte   N10 ,Cn1
 .byte   W12
 .byte   N04
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Dn1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Fn1
 .byte   W06
 .byte   Ds1
 .byte   W06
 .byte   Dn1
 .byte   W06
 .byte   Ds1
 .byte   W06
@  #01 @035   ----------------------------------------
 .byte   N16 ,Gn0
 .byte   W18
 .byte   An0
 .byte   W18
 .byte   N10 ,Bn0
 .byte   W12
 .byte   N16
 .byte   W18
 .byte   Cn1
 .byte   W18
 .byte   N10 ,Dn1
 .byte   W12
@  #01 @036   ----------------------------------------
 .byte   GOTO
  .word Label_54A28A
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

IceRidgeOfNoltia_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , IceRidgeOfNoltia_key+0
Label_549912:
 .byte   VOICE , 61
 .byte   MODT 0
 .byte   LFOS 44
 .byte   PAN , c_v-1
 .byte   VOL , 36*IceRidgeOfNoltia_mvl/mxv
 .byte   MOD 0
 .byte   BEND , c_v+0
 .byte   N96 ,Gn2 ,v072
 .byte   N96 ,Ds3
 .byte   N96 ,Cn4
 .byte   W96
@  #02 @001   ----------------------------------------
 .byte   As2
 .byte   N96 ,Fn3
 .byte   N96 ,Cn4
 .byte   W96
@  #02 @002   ----------------------------------------
 .byte   Gs2
 .byte   N96 ,Ds3
 .byte   N96 ,Cn4
 .byte   W96
@  #02 @003   ----------------------------------------
 .byte   N48 ,An2
 .byte   N48 ,Fn3
 .byte   N48 ,Cn4
 .byte   W48
 .byte   Bn2
 .byte   N48 ,Gn3
 .byte   N48 ,Dn4
 .byte   W48
@  #02 @004   ----------------------------------------
 .byte   TIE ,Gn2
 .byte   TIE ,Ds3
 .byte   TIE ,Cn4
 .byte   W96
@  #02 @005   ----------------------------------------
 .byte   W96
@  #02 @006   ----------------------------------------
 .byte   EOT
 .byte   Gn2 ,v063
 .byte   Cn4
 .byte   TIE ,Gs2
 .byte   TIE ,Ds3
 .byte   TIE ,Cn4
 .byte   W96
@  #02 @007   ----------------------------------------
 .byte   W96
@  #02 @008   ----------------------------------------
 .byte   EOT
 .byte   Gs2 ,v063
 .byte   Cn4
 .byte   TIE ,Gs2
 .byte   TIE ,Fn3
 .byte   TIE ,Cn4
 .byte   W96
@  #02 @009   ----------------------------------------
 .byte   W96
@  #02 @010   ----------------------------------------
 .byte   EOT
 .byte   Gs2 ,v065
 .byte   Cn4
 .byte   N18 ,An2
 .byte   N18 ,Fn3
 .byte   N18 ,Cn4
 .byte   W18
 .byte   N48 ,Bn2
 .byte   N48 ,Gn3
 .byte   N44 ,Dn4
 .byte   W54
 .byte   N18 ,An2
 .byte   N18 ,Cn3
 .byte   N18 ,Fn3
 .byte   W18
 .byte   TIE ,Bn2
 .byte   TIE ,Dn3
 .byte   TIE ,Gn3
 .byte   W06
@  #02 @011   ----------------------------------------
 .byte   W92
 .byte   W02
 .byte   EOT
 .byte   W01
 .byte   EOT
 .byte   Bn2 ,v062
 .byte   W01
@  #02 @012   ----------------------------------------
Label_549989:
 .byte   N96 ,Cn3 ,v072
 .byte   N96 ,Ds3
 .byte   N96 ,Gn3
 .byte   W96
 .byte   PEND 
@  #02 @013   ----------------------------------------
Label_549992:
 .byte   N96 ,Cn3 ,v072
 .byte   N96 ,Ds3
 .byte   N96 ,Gs3
 .byte   W96
 .byte   PEND 
@  #02 @014   ----------------------------------------
Label_54999B:
 .byte   N96 ,As2 ,v072
 .byte   N96 ,Dn3
 .byte   N96 ,Fn3
 .byte   W96
 .byte   PEND 
@  #02 @015   ----------------------------------------
 .byte   Bn2
 .byte   N96 ,Dn3
 .byte   N96 ,Fn3
 .byte   W96
@  #02 @016   ----------------------------------------
 .byte   PATT
  .word Label_549989
@  #02 @017   ----------------------------------------
 .byte   PATT
  .word Label_549992
@  #02 @018   ----------------------------------------
 .byte   PATT
  .word Label_54999B
@  #02 @019   ----------------------------------------
 .byte   PATT
  .word Label_549989
@  #02 @020   ----------------------------------------
Label_5499BE:
 .byte   N96 ,Gs2 ,v072
 .byte   N96 ,Cn3
 .byte   N96 ,Ds3
 .byte   N96 ,Gn3
 .byte   W96
 .byte   PEND 
@  #02 @021   ----------------------------------------
Label_5499C9:
 .byte   N96 ,Fn2 ,v072
 .byte   N96 ,As2
 .byte   N96 ,Dn3
 .byte   N96 ,Fn3
 .byte   W96
 .byte   PEND 
@  #02 @022   ----------------------------------------
Label_5499D4:
 .byte   N96 ,Gn2 ,v072
 .byte   N96 ,Cn3
 .byte   N96 ,Ds3
 .byte   N96 ,Gn3
 .byte   W96
 .byte   PEND 
@  #02 @023   ----------------------------------------
Label_5499DF:
 .byte   N96 ,As2 ,v072
 .byte   N96 ,Cn3
 .byte   N96 ,Ds3
 .byte   N96 ,Gn3
 .byte   W96
 .byte   PEND 
@  #02 @024   ----------------------------------------
 .byte   Gs2
 .byte   N96 ,Cn3
 .byte   N96 ,Ds3
 .byte   N96 ,Gs3
 .byte   W96
@  #02 @025   ----------------------------------------
Label_5499F2:
 .byte   N96 ,As2 ,v072
 .byte   N96 ,Dn3
 .byte   N96 ,Fn3
 .byte   N96 ,As3
 .byte   W96
 .byte   PEND 
@  #02 @026   ----------------------------------------
 .byte   PATT
  .word Label_5499F2
@  #02 @027   ----------------------------------------
 .byte   PATT
  .word Label_5499D4
@  #02 @028   ----------------------------------------
 .byte   PATT
  .word Label_5499BE
@  #02 @029   ----------------------------------------
 .byte   PATT
  .word Label_5499C9
@  #02 @030   ----------------------------------------
 .byte   PATT
  .word Label_5499D4
@  #02 @031   ----------------------------------------
 .byte   PATT
  .word Label_5499DF
@  #02 @032   ----------------------------------------
 .byte   PATT
  .word Label_5499BE
@  #02 @033   ----------------------------------------
 .byte   PATT
  .word Label_5499C9
@  #02 @034   ----------------------------------------
 .byte   PATT
  .word Label_5499D4
@  #02 @035   ----------------------------------------
 .byte   N96 ,Bn2 ,v072
 .byte   N96 ,Dn3
 .byte   N96 ,Gn3
 .byte   W96
@  #02 @036   ----------------------------------------
 .byte   GOTO
  .word Label_549912
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

IceRidgeOfNoltia_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , IceRidgeOfNoltia_key+0
Label_54960E:
 .byte   VOICE , 100
 .byte   MODT 0
 .byte   LFOS 44
 .byte   PAN , c_v-1
 .byte   VOL , 41*IceRidgeOfNoltia_mvl/mxv
 .byte   MOD 5
 .byte   BEND , c_v+0
 .byte   N32 ,Cn3 ,v127
 .byte   W30
 .byte   N06 ,Ds3
 .byte   W06
 .byte   N05 ,Gn3
 .byte   W06
 .byte   N07 ,As3
 .byte   W06
 .byte   N60 ,Dn4
 .byte   W48
@  #03 @001   ----------------------------------------
 .byte   W24
 .byte   N18 ,Gn4
 .byte   W24
 .byte   N16 ,Fn4
 .byte   W24
 .byte   N17 ,Cn4
 .byte   W24
@  #03 @002   ----------------------------------------
 .byte   N64 ,Dn4
 .byte   W72
 .byte   N04 ,Ds4
 .byte   W06
 .byte   N03 ,Dn4
 .byte   W06
 .byte   N04 ,Ds4
 .byte   W06
 .byte   N07 ,Fn4
 .byte   W06
@  #03 @003   ----------------------------------------
 .byte   N06 ,Dn4
 .byte   W12
 .byte   N04 ,Gn3
 .byte   W06
 .byte   N16 ,Dn4
 .byte   W18
 .byte   N04 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N42 ,Gn4
 .byte   W48
@  #03 @004   ----------------------------------------
 .byte   Dn4
 .byte   W48
 .byte   Cn4
 .byte   W48
@  #03 @005   ----------------------------------------
 .byte   N15 ,Ds4
 .byte   W18
 .byte   Fn4
 .byte   W18
 .byte   N10 ,Gn4
 .byte   W12
 .byte   N15 ,Fn4
 .byte   W18
 .byte   Ds4
 .byte   W18
 .byte   N10 ,As3
 .byte   W12
@  #03 @006   ----------------------------------------
 .byte   N42 ,Cn4
 .byte   W48
 .byte   N04 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N76 ,Gn4
 .byte   W36
@  #03 @007   ----------------------------------------
 .byte   W48
 .byte   N04 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   As3
 .byte   W06
@  #03 @008   ----------------------------------------
 .byte   N42 ,Cn4
 .byte   W48
 .byte   N04 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N21 ,Ds4
 .byte   W24
@  #03 @009   ----------------------------------------
 .byte   N04 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N54 ,Gn4
 .byte   W60
 .byte   N04 ,Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
@  #03 @010   ----------------------------------------
 .byte   N15 ,Fn4
 .byte   W18
 .byte   N48 ,Gn4
 .byte   W54
 .byte   N15 ,Fn3
 .byte   W18
 .byte   N88 ,Gn3
 .byte   W06
@  #03 @011   ----------------------------------------
 .byte   W96
@  #03 @012   ----------------------------------------
Label_5496B4:
 .byte   N32 ,Gn3 ,v076
 .byte   W36
 .byte   N05 ,Fn3
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   N44 ,Cn3
 .byte   W48
 .byte   PEND 
@  #03 @013   ----------------------------------------
 .byte   Gn3
 .byte   W48
 .byte   N23 ,Cn4
 .byte   W24
 .byte   Gn4
 .byte   W24
@  #03 @014   ----------------------------------------
 .byte   N32 ,Fn4
 .byte   W36
 .byte   N05 ,Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N32 ,Dn4
 .byte   W36
 .byte   N32
 .byte   W12
@  #03 @015   ----------------------------------------
 .byte   W24
 .byte   N11 ,Ds4
 .byte   W12
 .byte   N23 ,Fn4
 .byte   W24
 .byte   N11 ,Gs4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   Fn4
 .byte   W12
@  #03 @016   ----------------------------------------
 .byte   PATT
  .word Label_5496B4
@  #03 @017   ----------------------------------------
 .byte   N44 ,Gn3 ,v076
 .byte   W48
 .byte   N17 ,Cn4
 .byte   W18
 .byte   Dn4
 .byte   W18
 .byte   N11 ,Ds4
 .byte   W12
@  #03 @018   ----------------------------------------
 .byte   N44 ,Dn4
 .byte   W48
 .byte   Fn4
 .byte   W48
@  #03 @019   ----------------------------------------
 .byte   N92 ,Gn4
 .byte   W96
@  #03 @020   ----------------------------------------
Label_5496FC:
 .byte   N60 ,Cn4 ,v127
 .byte   W72
 .byte   N03
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   PEND 
@  #03 @021   ----------------------------------------
Label_549709:
 .byte   N60 ,Dn4 ,v127
 .byte   W72
 .byte   N03 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   PEND 
@  #03 @022   ----------------------------------------
Label_549717:
 .byte   N60 ,Ds4 ,v127
 .byte   W72
 .byte   N03 ,Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   PEND 
@  #03 @023   ----------------------------------------
 .byte   N80 ,Ds3
 .byte   W96
@  #03 @024   ----------------------------------------
Label_549728:
 .byte   N60 ,Gs2 ,v127
 .byte   W72
 .byte   N03
 .byte   W06
 .byte   N03
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   PEND 
@  #03 @025   ----------------------------------------
Label_549735:
 .byte   N36 ,Dn3 ,v127
 .byte   W48
 .byte   N19 ,Ds3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   PEND 
@  #03 @026   ----------------------------------------
 .byte   N14
 .byte   W18
 .byte   N54 ,Ds3
 .byte   W66
 .byte   N03 ,Dn3
 .byte   W06
 .byte   Ds3
 .byte   W06
@  #03 @027   ----------------------------------------
 .byte   Fn3
 .byte   W06
 .byte   Dn3 ,v120
 .byte   W06
 .byte   Ds3 ,v116
 .byte   W06
 .byte   Fn3 ,v112
 .byte   W06
 .byte   Dn3 ,v108
 .byte   W06
 .byte   Ds3 ,v104
 .byte   W06
 .byte   Fn3 ,v100
 .byte   W06
 .byte   Dn3 ,v092
 .byte   W06
 .byte   Ds3 ,v088
 .byte   W06
 .byte   Fn3 ,v084
 .byte   W06
 .byte   Dn3 ,v080
 .byte   W06
 .byte   Ds3 ,v076
 .byte   W06
 .byte   Fn3 ,v127
 .byte   W06
 .byte   Gn3
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
@  #03 @028   ----------------------------------------
 .byte   PATT
  .word Label_5496FC
@  #03 @029   ----------------------------------------
 .byte   PATT
  .word Label_549709
@  #03 @030   ----------------------------------------
 .byte   PATT
  .word Label_549717
@  #03 @031   ----------------------------------------
 .byte   N72 ,Ds3 ,v127
 .byte   W96
@  #03 @032   ----------------------------------------
 .byte   PATT
  .word Label_549728
@  #03 @033   ----------------------------------------
 .byte   PATT
  .word Label_549735
@  #03 @034   ----------------------------------------
 .byte   N03 ,Ds3 ,v127
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N68 ,Cn3
 .byte   W84
@  #03 @035   ----------------------------------------
 .byte   N15 ,Gn2
 .byte   N15 ,Bn2
 .byte   W18
 .byte   An2
 .byte   N15 ,Cn3
 .byte   W18
 .byte   N09 ,Bn2
 .byte   N09 ,Dn3
 .byte   W12
 .byte   N15 ,Bn2
 .byte   N15 ,Dn3
 .byte   W18
 .byte   Cn3
 .byte   N15 ,Ds3
 .byte   W18
 .byte   N09 ,Dn3
 .byte   N09 ,Fn3
 .byte   W12
@  #03 @036   ----------------------------------------
 .byte   GOTO
  .word Label_54960E
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

IceRidgeOfNoltia_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , IceRidgeOfNoltia_key+0
Label_549F2A:
 .byte   VOICE , 48
 .byte   MODT 0
 .byte   LFOS 44
 .byte   PAN , c_v-1
 .byte   VOL , 48*IceRidgeOfNoltia_mvl/mxv
 .byte   MOD 0
 .byte   BEND , c_v+0
 .byte   N32 ,Cn4 ,v092
 .byte   W28
 .byte   W01
 .byte   N06 ,Ds3
 .byte   W06
 .byte   N05 ,Gn3
 .byte   W06
 .byte   N07 ,As3
 .byte   W06
 .byte   N60 ,Dn4
 .byte   W48
 .byte   W01
@  #04 @001   ----------------------------------------
 .byte   W23
 .byte   N18 ,Gn4
 .byte   W24
 .byte   N16 ,Fn4
 .byte   W24
 .byte   N17 ,Cn4
 .byte   W24
 .byte   N64 ,Dn4
 .byte   W01
@  #04 @002   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   N04 ,Ds4
 .byte   W06
 .byte   N03 ,Dn4
 .byte   W06
 .byte   N04 ,Ds4
 .byte   W06
 .byte   N07 ,Fn4
 .byte   W06
 .byte   N06 ,Dn4
 .byte   W01
@  #04 @003   ----------------------------------------
 .byte   W11
 .byte   N04 ,Gn3
 .byte   W06
 .byte   N16 ,Dn4
 .byte   W18
 .byte   N04 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N42 ,Gn4
 .byte   W48
 .byte   Dn4
 .byte   W01
@  #04 @004   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   Cn4
 .byte   W48
 .byte   N15 ,Ds4
 .byte   W01
@  #04 @005   ----------------------------------------
 .byte   W17
 .byte   Fn4
 .byte   W18
 .byte   N10 ,Gn4
 .byte   W12
 .byte   N15 ,Fn4
 .byte   W18
 .byte   Ds4
 .byte   W18
 .byte   N10 ,As3
 .byte   W12
 .byte   N42 ,Cn4
 .byte   W01
@  #04 @006   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   N04 ,Gn4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N76 ,Gn4
 .byte   W36
 .byte   W01
@  #04 @007   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   N04 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N42 ,Cn4
 .byte   W01
@  #04 @008   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   N04 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N21 ,Ds4
 .byte   W24
 .byte   N04 ,Cn4
 .byte   W01
@  #04 @009   ----------------------------------------
 .byte   W05
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N54 ,Gn4
 .byte   W60
 .byte   N04 ,Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   N15 ,Fn4
 .byte   W01
@  #04 @010   ----------------------------------------
 .byte   W17
 .byte   N48 ,Gn4
 .byte   W54
 .byte   N15 ,Fn3
 .byte   W18
 .byte   N88 ,Gn3
 .byte   W07
@  #04 @011   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   N32 ,Cn4
 .byte   W01
@  #04 @012   ----------------------------------------
Label_549FE4:
 .byte   W32
 .byte   W03
 .byte   N05 ,As3 ,v092
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N44 ,Gn3
 .byte   W48
 .byte   N32 ,Cn4
 .byte   W01
 .byte   PEND 
@  #04 @013   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N17 ,Ds4
 .byte   W18
 .byte   Dn4
 .byte   W18
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N32 ,Dn4
 .byte   W01
@  #04 @014   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   N05 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N32 ,As3
 .byte   W36
 .byte   Bn3
 .byte   W13
@  #04 @015   ----------------------------------------
 .byte   W23
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   N32 ,Cn4
 .byte   W01
@  #04 @016   ----------------------------------------
 .byte   PATT
  .word Label_549FE4
@  #04 @017   ----------------------------------------
 .byte   W32
 .byte   W03
 .byte   N05 ,Cn4 ,v092
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N17 ,Ds4
 .byte   W18
 .byte   Fn4
 .byte   W18
 .byte   N11 ,Gn4
 .byte   W12
 .byte   N44 ,Fn4
 .byte   W01
@  #04 @018   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   As4
 .byte   W48
 .byte   N92 ,Cn5
 .byte   W01
@  #04 @019   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   N60 ,Cn4
 .byte   W01
@  #04 @020   ----------------------------------------
Label_54A045:
 .byte   W68
 .byte   W03
 .byte   N03 ,Cn4 ,v092
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   N60 ,Dn4
 .byte   W01
 .byte   PEND 
@  #04 @021   ----------------------------------------
Label_54A055:
 .byte   W68
 .byte   W03
 .byte   N03 ,Gn4 ,v092
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N60 ,Ds4
 .byte   W01
 .byte   PEND 
@  #04 @022   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   N03 ,Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N80 ,Ds3
 .byte   W01
@  #04 @023   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   N60 ,Gs2
 .byte   W01
@  #04 @024   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   N03
 .byte   W06
 .byte   N03
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   N36 ,Dn3
 .byte   W01
@  #04 @025   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   N19 ,Ds3
 .byte   W24
 .byte   Fn3
 .byte   W24
 .byte   N14
 .byte   W01
@  #04 @026   ----------------------------------------
 .byte   W17
 .byte   N54 ,Ds3
 .byte   W66
 .byte   N03 ,Dn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W01
@  #04 @027   ----------------------------------------
 .byte   W05
 .byte   Dn3 ,v088
 .byte   W06
 .byte   Ds3 ,v084
 .byte   W06
 .byte   Fn3 ,v076
 .byte   W06
 .byte   Dn3 ,v068
 .byte   W06
 .byte   Ds3 ,v060
 .byte   W06
 .byte   Fn3 ,v056
 .byte   W06
 .byte   Dn3 ,v048
 .byte   W06
 .byte   Ds3 ,v044
 .byte   W06
 .byte   Fn3 ,v040
 .byte   W06
 .byte   Dn3 ,v032
 .byte   W06
 .byte   Ds3 ,v028
 .byte   W06
 .byte   Fn3 ,v024
 .byte   W06
 .byte   Gn3 ,v092
 .byte   W06
 .byte   Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   N60 ,Cn4
 .byte   W01
@  #04 @028   ----------------------------------------
 .byte   PATT
  .word Label_54A045
@  #04 @029   ----------------------------------------
 .byte   PATT
  .word Label_54A055
@  #04 @030   ----------------------------------------
 .byte   W68
 .byte   W03
 .byte   N03 ,Gn3 ,v092
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N72 ,Ds3
 .byte   W01
@  #04 @031   ----------------------------------------
 .byte   W96
@  #04 @032   ----------------------------------------
 .byte   N48 ,Gs2
 .byte   W72
 .byte   N03 ,Gs2 ,v096
 .byte   W06
 .byte   N03
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
@  #04 @033   ----------------------------------------
 .byte   N36 ,Dn3
 .byte   W48
 .byte   N18 ,Ds3
 .byte   W24
 .byte   Fn3
 .byte   W24
@  #04 @034   ----------------------------------------
 .byte   N03 ,Ds3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   N72 ,Cn3
 .byte   W84
@  #04 @035   ----------------------------------------
 .byte   N15 ,Gn2
 .byte   N15 ,Bn2
 .byte   W18
 .byte   An2
 .byte   N15 ,Cn3
 .byte   W18
 .byte   N09 ,Bn2
 .byte   N09 ,Dn3
 .byte   W12
 .byte   N15 ,Bn2
 .byte   N15 ,Dn3
 .byte   W18
 .byte   Cn3
 .byte   N15 ,Ds3
 .byte   W18
 .byte   N09 ,Dn3
 .byte   N09 ,Fn3
 .byte   W12
@  #04 @036   ----------------------------------------
 .byte   GOTO
  .word Label_549F2A
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

IceRidgeOfNoltia_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , IceRidgeOfNoltia_key+0
Label_549A3A:
 .byte   VOICE , 28
 .byte   MODT 0
 .byte   LFOS 44
 .byte   PAN , c_v-1
 .byte   VOL , 41*IceRidgeOfNoltia_mvl/mxv
 .byte   MOD 0
 .byte   BEND , c_v+0
 .byte   W96
@  #05 @001   ----------------------------------------
 .byte   W96
@  #05 @002   ----------------------------------------
 .byte   W96
@  #05 @003   ----------------------------------------
 .byte   W96
@  #05 @004   ----------------------------------------
 .byte   W96
@  #05 @005   ----------------------------------------
 .byte   W96
@  #05 @006   ----------------------------------------
 .byte   W96
@  #05 @007   ----------------------------------------
 .byte   N04 ,Gn3 ,v127
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   N16 ,Gn3
 .byte   W84
@  #05 @008   ----------------------------------------
 .byte   W96
@  #05 @009   ----------------------------------------
 .byte   W96
@  #05 @010   ----------------------------------------
 .byte   W96
@  #05 @011   ----------------------------------------
 .byte   W96
@  #05 @012   ----------------------------------------
 .byte   VOICE , 68
 .byte   N32 ,Cn4 ,v120
 .byte   W36
 .byte   N05 ,As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N44 ,Gn3
 .byte   W48
@  #05 @013   ----------------------------------------
 .byte   N32 ,Cn4
 .byte   W36
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N17 ,Ds4
 .byte   W18
 .byte   Dn4
 .byte   W18
 .byte   N11 ,Cn4
 .byte   W12
@  #05 @014   ----------------------------------------
 .byte   N32 ,Dn4
 .byte   W36
 .byte   N05 ,Cn4
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N32 ,As3
 .byte   W36
 .byte   Bn3
 .byte   W12
@  #05 @015   ----------------------------------------
 .byte   W24
 .byte   N11 ,Cn4
 .byte   W12
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N11 ,Fn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Dn4
 .byte   W12
@  #05 @016   ----------------------------------------
 .byte   N32 ,Cn4
 .byte   W36
 .byte   N05 ,As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   N44 ,Gn3
 .byte   W48
@  #05 @017   ----------------------------------------
 .byte   N32 ,Cn4
 .byte   W36
 .byte   N05
 .byte   W06
 .byte   Dn4
 .byte   W06
 .byte   N17 ,Ds4
 .byte   W18
 .byte   Fn4
 .byte   W18
 .byte   N11 ,Gn4
 .byte   W12
@  #05 @018   ----------------------------------------
 .byte   N44 ,Fn4
 .byte   W48
 .byte   As4
 .byte   W48
@  #05 @019   ----------------------------------------
 .byte   N92 ,Cn5
 .byte   W96
@  #05 @020   ----------------------------------------
 .byte   VOICE , 28
 .byte   N84 ,Cn3 ,v092
 .byte   W12
 .byte   N72 ,Dn3 ,v080
 .byte   W12
 .byte   N60 ,Gn3 ,v092
 .byte   W72
@  #05 @021   ----------------------------------------
Label_549AC4:
 .byte   N84 ,Dn3 ,v092
 .byte   W12
 .byte   N72 ,Ds3 ,v080
 .byte   W12
 .byte   N60 ,As3 ,v092
 .byte   W72
 .byte   PEND 
@  #05 @022   ----------------------------------------
Label_549AD1:
 .byte   N80 ,Dn3 ,v092
 .byte   W12
 .byte   N68 ,Ds3 ,v080
 .byte   W12
 .byte   N60 ,As3 ,v092
 .byte   W72
 .byte   PEND 
@  #05 @023   ----------------------------------------
Label_549ADE:
 .byte   N80 ,Fn3 ,v092
 .byte   W12
 .byte   N68 ,Gn3 ,v080
 .byte   W12
 .byte   N60 ,Dn4 ,v092
 .byte   W72
 .byte   PEND 
@  #05 @024   ----------------------------------------
Label_549AEB:
 .byte   N84 ,Cn3 ,v092
 .byte   W12
 .byte   N72 ,Dn3 ,v080
 .byte   W12
 .byte   N60 ,Gn3 ,v092
 .byte   W72
 .byte   PEND 
@  #05 @025   ----------------------------------------
 .byte   PATT
  .word Label_549AC4
@  #05 @026   ----------------------------------------
 .byte   PATT
  .word Label_549AD1
@  #05 @027   ----------------------------------------
 .byte   PATT
  .word Label_549ADE
@  #05 @028   ----------------------------------------
 .byte   PATT
  .word Label_549AEB
@  #05 @029   ----------------------------------------
 .byte   PATT
  .word Label_549AC4
@  #05 @030   ----------------------------------------
 .byte   PATT
  .word Label_549AD1
@  #05 @031   ----------------------------------------
 .byte   N84 ,Fn3 ,v092
 .byte   W12
 .byte   N72 ,Gn3 ,v080
 .byte   W12
 .byte   N60 ,Dn4 ,v092
 .byte   W72
@  #05 @032   ----------------------------------------
 .byte   PATT
  .word Label_549AEB
@  #05 @033   ----------------------------------------
 .byte   PATT
  .word Label_549AC4
@  #05 @034   ----------------------------------------
 .byte   PATT
  .word Label_549AD1
@  #05 @035   ----------------------------------------
 .byte   W96
@  #05 @036   ----------------------------------------
 .byte   GOTO
  .word Label_549A3A
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

IceRidgeOfNoltia_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , IceRidgeOfNoltia_key+0
Label_594A1A:
 .byte   VOICE , 121
 .byte   MODT 0
 .byte   LFOS 44
 .byte   PAN , c_v-1
 .byte   VOL , 48*IceRidgeOfNoltia_mvl/mxv
 .byte   MOD 0
 .byte   BEND , c_v+0
 .byte   N24 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @001   ----------------------------------------
Label_594A8C:
 .byte   N24 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   PEND 
@  #06 @002   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @003   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @004   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @005   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @006   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @007   ----------------------------------------
 .byte   N24 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Dn1 ,v104
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Dn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N24 ,Dn1 ,v104
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @008   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @009   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @010   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @011   ----------------------------------------
 .byte   N24 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N18 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Dn1 ,v104
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Dn1 ,v127
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Dn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @012   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @013   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @014   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @015   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @016   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @017   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @018   ----------------------------------------
 .byte   PATT
  .word Label_594A8C
@  #06 @019   ----------------------------------------
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v048
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N12 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v080
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Dn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v024
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @020   ----------------------------------------
Label_594C99:
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v104
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   PEND 
@  #06 @021   ----------------------------------------
Label_594D04:
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v104
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   PEND 
@  #06 @022   ----------------------------------------
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v104
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @023   ----------------------------------------
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N12 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @024   ----------------------------------------
 .byte   PATT
  .word Label_594C99
@  #06 @025   ----------------------------------------
 .byte   PATT
  .word Label_594D04
@  #06 @026   ----------------------------------------
 .byte   PATT
  .word Label_594C99
@  #06 @027   ----------------------------------------
Label_594E63:
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N12 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   PEND 
@  #06 @028   ----------------------------------------
Label_594EDB:
 .byte   N06 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v104
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   PEND 
@  #06 @029   ----------------------------------------
 .byte   PATT
  .word Label_594D04
@  #06 @030   ----------------------------------------
 .byte   PATT
  .word Label_594C99
@  #06 @031   ----------------------------------------
 .byte   PATT
  .word Label_594E63
@  #06 @032   ----------------------------------------
 .byte   PATT
  .word Label_594EDB
@  #06 @033   ----------------------------------------
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   N24 ,Dn1 ,v104
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @034   ----------------------------------------
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N24 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   N18 ,Cn1 ,v127
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Dn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   N12 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @035   ----------------------------------------
 .byte   N12 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N12 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N12 ,Cn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N12 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   N12 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v056
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
 .byte   N12 ,Dn1 ,v127
 .byte   N06 ,Fs1 ,v032
 .byte   N06 ,Fn2 ,v056
 .byte   N06 ,As3
 .byte   W06
 .byte   Fs1 ,v032
 .byte   N06 ,As3 ,v028
 .byte   W06
@  #06 @036   ----------------------------------------
 .byte   GOTO
  .word Label_594A1A
 .byte   FINE

@******************************************************@
	.align	2

IceRidgeOfNoltia:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	IceRidgeOfNoltia_pri	@ Priority
	.byte	IceRidgeOfNoltia_rev	@ Reverb.
    
	.word	IceRidgeOfNoltia_grp
    
	.word	IceRidgeOfNoltia_001
	.word	IceRidgeOfNoltia_002
	.word	IceRidgeOfNoltia_003
	.word	IceRidgeOfNoltia_004
	.word	IceRidgeOfNoltia_005
	.word	IceRidgeOfNoltia_006

	.end
