subtitle "Microchip MPLAB XC8 C Compiler v2.50 (Free license) build 20240725155939 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.50\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_default_screen
	FNCALL	_main,_init_config
	FNCALL	_main,_main_menu
	FNCALL	_main,_read_switches
	FNCALL	_main,_set_date
	FNCALL	_main,_set_events
	FNCALL	_main,_set_time
	FNCALL	_main,_set_time_date
	FNCALL	_main,_set_view_events
	FNCALL	_main,_view_events
	FNCALL	_view_events,___awdiv
	FNCALL	_view_events,___awmod
	FNCALL	_view_events,_check
	FNCALL	_view_events,_clcd_print
	FNCALL	_view_events,_read_24c02
	FNCALL	_check,_clcd_print
	FNCALL	_check,_clcd_write
	FNCALL	_set_view_events,_clcd_print
	FNCALL	_set_time_date,_clcd_print
	FNCALL	_set_time,___lbdiv
	FNCALL	_set_time,___lbmod
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_putch
	FNCALL	_set_time,_get_time
	FNCALL	_set_time,_write_ds1307
	FNCALL	_set_events,___awmod
	FNCALL	_set_events,___lbdiv
	FNCALL	_set_events,___lbmod
	FNCALL	_set_events,___lwmod
	FNCALL	_set_events,_clcd_print
	FNCALL	_set_events,_clcd_putch
	FNCALL	_set_events,_get_time
	FNCALL	_set_events,_store_events
	FNCALL	_store_events,___awdiv
	FNCALL	_store_events,___awmod
	FNCALL	_store_events,_clcd_print
	FNCALL	_store_events,_read_24c02
	FNCALL	_store_events,_shift_store_event
	FNCALL	_store_events,_write_24c02
	FNCALL	_shift_store_event,___awdiv
	FNCALL	_shift_store_event,___awmod
	FNCALL	_shift_store_event,_read_24c02
	FNCALL	_shift_store_event,_write_24c02
	FNCALL	_write_24c02,_i2c_start
	FNCALL	_write_24c02,_i2c_stop
	FNCALL	_write_24c02,_i2c_write
	FNCALL	_set_date,___awmod
	FNCALL	_set_date,___lbdiv
	FNCALL	_set_date,___lbmod
	FNCALL	_set_date,_clcd_print
	FNCALL	_set_date,_clcd_putch
	FNCALL	_set_date,_write_ds1307
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_read_switches,_scan_key
	FNCALL	_main_menu,_clcd_print
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_timer0
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_default_screen,___awdiv
	FNCALL	_default_screen,___awmod
	FNCALL	_default_screen,_clcd_print
	FNCALL	_default_screen,_display_event
	FNCALL	_default_screen,_get_date
	FNCALL	_default_screen,_get_time
	FNCALL	_default_screen,_read_24c02
	FNCALL	_get_time,_read_ds1307
	FNCALL	_get_date,_read_ds1307
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_display_event,___awmod
	FNCALL	_display_event,_read_24c02
	FNCALL	_read_24c02,_i2c_read
	FNCALL	_read_24c02,_i2c_rep_start
	FNCALL	_read_24c02,_i2c_start
	FNCALL	_read_24c02,_i2c_stop
	FNCALL	_read_24c02,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_no_ack
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_clcd_print,_clcd_write
	FNROOT	_main
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	read_switches@once
	global	_key
	global	_days
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"matrix_keypad.c"
	line	94

;initializer for read_switches@once
	db	low(01h)
	file	"main.c"
	line	12

;initializer for _key
	db	low(0FFh)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"set_date.c"
	line	19

;initializer for _days
		db	low(STR_61)
	db	high(STR_61)

		db	low(STR_62)
	db	high(STR_62)

		db	low(STR_63)
	db	high(STR_63)

		db	low(STR_64)
	db	high(STR_64)

		db	low(STR_65)
	db	high(STR_65)

		db	low(STR_66)
	db	high(STR_66)

		db	low(STR_67)
	db	high(STR_67)

	global	_sw_press
	global	_set_flag
	global	_day
	global	_c_ap
	global	_c_mn
	global	_c_hr
	global	_count
	global	_menu_flag
	global	_s_sec
	global	_s_min
	global	_sec
	global	_min
	global	_hour
	global	read_switches@key
	global	_e_day
	global	_e_year
	global	_e_month
	global	_e_date
	global	_year
	global	_month
	global	_date_info
	global	_s_hr
	global	_mn
	global	_hr
	global	_addrs
	global	_alarm_s
	global	_am_pm
	global	_alarm_delay
	global	_once
	global	_addr2
	global	_view_count
	global	_event_cnt
	global	_view_arr
	global	_date_reg
	global	_time_reg
	global	_menu1
	global	_cnt
	global	_menu
	global	_field_select
	global	_delay
	global	_set_once
	global	_ap
	global	_m
	global	_h
	global	_next_event
	global	_e_ap
	global	_e_mn
	global	_e_hr
	global	_time_arr
	global	_date_arr
	global	_time_up
	global	_date
	global	_time
	global	_index
	global	_screen_flag
psect	nvCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pnvCOMRAM
__pnvCOMRAM:
	global	_screen_flag
_screen_flag:
       ds      1
	global	_TMR0
_TMR0	set	0xFD6
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_PSA
_PSA	set	0x7EAB
	global	_TMR0ON
_TMR0ON	set	0x7EAF
	global	_T0CS
_T0CS	set	0x7EAD
	global	_T08BIT
_T08BIT	set	0x7EAE
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_RD7
_RD7	set	0x7C1F
	global	_RC0
_RC0	set	0x7C10
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_RC2
_RC2	set	0x7C12
	global	_RC1
_RC1	set	0x7C11
	global	_GIE
_GIE	set	0x7F97
	global	_PEIE
_PEIE	set	0x7F96
	global	_RBPU
_RBPU	set	0x7F8F
	global	_RB0
_RB0	set	0x7C08
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_SMP
_SMP	set	0x7E3F
	global	_CKE
_CKE	set	0x7E3E
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_TRISC3
_TRISC3	set	0x7CA3
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	
STR_68:
	db	32
	db	32
	db	32
	db	32
	db	68	;'D'
	db	68	;'D'
	db	58	;':'
	db	77	;'M'
	db	77	;'M'
	db	58	;':'
	db	89	;'Y'
	db	89	;'Y'
	db	32
	db	68	;'D'
	db	97	;'a'
	db	121	;'y'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_47:
	db	32
	db	32
	db	32
	db	32
	db	72	;'H'
	db	72	;'H'
	db	58	;':'
	db	77	;'M'
	db	77	;'M'
	db	58	;':'
	db	65	;'A'
	db	77	;'M'
	db	47
	db	80	;'P'
	db	77	;'M'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_51:
	db	69	;'E'
	db	118	;'v'
	db	101	;'e'
	db	110	;'n'
	db	116	;'t'
	db	32
	db	76	;'L'
	db	105	;'i'
	db	109	;'m'
	db	105	;'i'
	db	116	;'t'
	db	32
	db	82	;'R'
	db	101	;'e'
	db	97	;'a'
	db	99	;'c'
	db	104	;'h'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_18:
	db	35
	db	32
	db	86	;'V'
	db	73	;'I'
	db	69	;'E'
	db	87	;'W'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	83	;'S'
	db	46
	db	46
	db	46
	db	0
	
STR_15:
	db	35
	db	32
	db	86	;'V'
	db	73	;'I'
	db	69	;'E'
	db	87	;'W'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	83	;'S'
	db	46
	db	46
	db	0
	
STR_54:
	db	35
	db	32
	db	83	;'S'
	db	84	;'T'
	db	79	;'O'
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	83	;'S'
	db	46
	db	46
	db	0
	
STR_87:
	db	32
	db	32
	db	32
	db	32
	db	72	;'H'
	db	72	;'H'
	db	58	;':'
	db	77	;'M'
	db	77	;'M'
	db	58	;':'
	db	83	;'S'
	db	83	;'S'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_1:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_93:
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	105	;'i'
	db	115	;'s'
	db	32
	db	117	;'u'
	db	112	;'p'
	db	100	;'d'
	db	97	;'a'
	db	116	;'t'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_72:
	db	68	;'D'
	db	97	;'a'
	db	116	;'t'
	db	101	;'e'
	db	32
	db	105	;'i'
	db	115	;'s'
	db	32
	db	117	;'u'
	db	112	;'p'
	db	100	;'d'
	db	97	;'a'
	db	116	;'t'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_56:
	db	69	;'E'
	db	120	;'x'
	db	105	;'i'
	db	115	;'s'
	db	116	;'t'
	db	101	;'e'
	db	100	;'d'
	db	46
	db	46
	db	46
	db	46
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_57:
	db	69	;'E'
	db	118	;'v'
	db	101	;'e'
	db	110	;'n'
	db	116	;'t'
	db	32
	db	115	;'s'
	db	116	;'t'
	db	111	;'o'
	db	114	;'r'
	db	101	;'e'
	db	100	;'d'
	db	46
	db	46
	db	46
	db	0
	
STR_5:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	47
	db	86	;'V'
	db	73	;'I'
	db	69	;'E'
	db	87	;'W'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	0
	
STR_55:
	db	69	;'E'
	db	118	;'v'
	db	101	;'e'
	db	110	;'n'
	db	116	;'t'
	db	32
	db	97	;'a'
	db	108	;'l'
	db	114	;'r'
	db	101	;'e'
	db	97	;'a'
	db	100	;'d'
	db	121	;'y'
	db	0
	
STR_11:
	db	35
	db	32
	db	86	;'V'
	db	73	;'I'
	db	69	;'E'
	db	87	;'W'
	db	95	;'_'
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	83	;'S'
	db	0
	
STR_4:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	47
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	69	;'E'
	db	0
	
STR_12:
	db	78	;'N'
	db	79	;'O'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	83	;'S'
	db	46
	db	46
	db	46
	db	0
	
STR_38:
	db	32
	db	78	;'N'
	db	79	;'O'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	83	;'S'
	db	32
	db	0
	
STR_103:
	db	86	;'V'
	db	73	;'I'
	db	69	;'E'
	db	87	;'W'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	0
	
STR_97:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	0
	
STR_84:
	db	32
	db	80	;'P'
	db	114	;'r'
	db	101	;'e'
	db	115	;'s'
	db	115	;'s'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	0
	
STR_76:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	0
	
STR_77:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	69	;'E'
	db	0
	
STR_20:
	db	101	;'e'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_37:
	db	69	;'E'
	db	86	;'V'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	32
	db	0
	
STR_31:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	0
	
STR_30:
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	69	;'E'
	db	32
	db	0
	
STR_83:
	db	75	;'K'
	db	101	;'e'
	db	121	;'y'
	db	32
	db	0
	
STR_26:
	db	32
	db	83	;'S'
	db	65	;'A'
	db	0
	
STR_23:
	db	32
	db	87	;'W'
	db	69	;'E'
	db	0
	
STR_24:
	db	32
	db	84	;'T'
	db	72	;'H'
	db	0
	
STR_32:
	db	32
	db	65	;'A'
	db	77	;'M'
	db	0
	
STR_33:
	db	32
	db	80	;'P'
	db	77	;'M'
	db	0
	
STR_21:
	db	32
	db	77	;'M'
	db	79	;'O'
	db	0
	
STR_25:
	db	32
	db	70	;'F'
	db	82	;'R'
	db	0
	
STR_27:
	db	32
	db	83	;'S'
	db	85	;'U'
	db	0
	
STR_22:
	db	32
	db	84	;'T'
	db	85	;'U'
	db	0
	
STR_39:
	db	58	;':'
	db	0
	
STR_3:
	db	42
	db	0
STR_62	equ	STR_22+0
STR_67	equ	STR_27+0
STR_10	equ	STR_5+0
STR_98	equ	STR_5+4
STR_101	equ	STR_97+0
STR_65	equ	STR_25+0
STR_61	equ	STR_21+0
STR_36	equ	STR_33+0
STR_46	equ	STR_33+0
STR_86	equ	STR_33+0
STR_90	equ	STR_33+0
STR_41	equ	STR_33+1
STR_35	equ	STR_32+0
STR_45	equ	STR_32+0
STR_85	equ	STR_32+0
STR_89	equ	STR_32+0
STR_42	equ	STR_32+1
STR_64	equ	STR_24+0
STR_63	equ	STR_23+0
STR_8	equ	STR_4+0
STR_82	equ	STR_77+0
STR_80	equ	STR_76+0
STR_66	equ	STR_26+0
STR_60	equ	STR_54+0
STR_9	equ	STR_3+0
STR_75	equ	STR_3+0
STR_81	equ	STR_3+0
STR_96	equ	STR_3+0
STR_102	equ	STR_3+0
STR_34	equ	STR_31+0
STR_2	equ	STR_1+0
STR_6	equ	STR_1+0
STR_7	equ	STR_1+0
STR_13	equ	STR_1+0
STR_14	equ	STR_1+0
STR_16	equ	STR_1+0
STR_17	equ	STR_1+0
STR_28	equ	STR_1+0
STR_29	equ	STR_1+0
STR_43	equ	STR_1+0
STR_44	equ	STR_1+0
STR_50	equ	STR_1+0
STR_52	equ	STR_1+0
STR_53	equ	STR_1+0
STR_58	equ	STR_1+0
STR_59	equ	STR_1+0
STR_70	equ	STR_1+0
STR_71	equ	STR_1+0
STR_73	equ	STR_1+0
STR_74	equ	STR_1+0
STR_78	equ	STR_1+0
STR_79	equ	STR_1+0
STR_91	equ	STR_1+0
STR_92	equ	STR_1+0
STR_94	equ	STR_1+0
STR_95	equ	STR_1+0
STR_99	equ	STR_1+0
STR_100	equ	STR_1+0
STR_48	equ	STR_1+12
STR_49	equ	STR_1+12
STR_69	equ	STR_1+12
STR_88	equ	STR_1+12
STR_19	equ	STR_1+15
STR_40	equ	STR_1+15
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_sw_press
_sw_press:
       ds      2
	global	_set_flag
_set_flag:
       ds      2
	global	_day
_day:
       ds      2
	global	_c_ap
_c_ap:
       ds      2
	global	_c_mn
_c_mn:
       ds      2
	global	_c_hr
_c_hr:
       ds      2
	global	_count
_count:
       ds      2
	global	_menu_flag
_menu_flag:
       ds      2
	global	_s_sec
_s_sec:
       ds      1
	global	_s_min
_s_min:
       ds      1
	global	_sec
_sec:
       ds      1
	global	_min
_min:
       ds      1
	global	_hour
_hour:
       ds      1
read_switches@key:
       ds      1
	global	_e_day
_e_day:
       ds      1
	global	_e_year
_e_year:
       ds      1
	global	_e_month
_e_month:
       ds      1
	global	_e_date
_e_date:
       ds      1
	global	_year
_year:
       ds      1
	global	_month
_month:
       ds      1
	global	_date_info
_date_info:
       ds      1
	global	_s_hr
_s_hr:
       ds      1
	global	_mn
_mn:
       ds      1
	global	_hr
_hr:
       ds      1
	global	_addrs
_addrs:
       ds      1
	global	_alarm_s
_alarm_s:
       ds      1
	global	_am_pm
_am_pm:
       ds      1
	global	_alarm_delay
_alarm_delay:
       ds      1
	global	_once
_once:
       ds      1
	global	_addr2
_addr2:
       ds      1
	global	_view_count
_view_count:
       ds      1
	global	_event_cnt
_event_cnt:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"matrix_keypad.c"
	line	94
read_switches@once:
       ds      1
psect	dataCOMRAM
	file	"main.c"
	line	12
	global	_key
_key:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_view_event
	global	_view_event
_view_event:
       ds      8
	global	_date_reg
_date_reg:
       ds      4
	global	_time_reg
_time_reg:
       ds      3
	global	_menu1
_menu1:
       ds      2
	global	_cnt
_cnt:
       ds      2
check_matrix_keypad@i:
       ds      2
	global	_menu
_menu:
       ds      2
	global	_field_select
_field_select:
       ds      2
	global	_delay
_delay:
       ds      2
	global	_set_once
_set_once:
       ds      2
	global	_ap
_ap:
       ds      2
	global	_m
_m:
       ds      2
	global	_h
_h:
       ds      2
	global	_next_event
_next_event:
       ds      2
	global	_e_ap
_e_ap:
       ds      2
	global	_e_mn
_e_mn:
       ds      2
	global	_e_hr
_e_hr:
       ds      2
	global	_s_am_pm
	global	_s_am_pm
_s_am_pm:
       ds      1
	global	_s_ap
	global	_s_ap
_s_ap:
       ds      1
	global	_s_mn
	global	_s_mn
_s_mn:
       ds      1
	global	_time_arr
_time_arr:
       ds      9
	global	_date_arr
_date_arr:
       ds      9
	global	_time_up
_time_up:
       ds      9
	global	_date
_date:
       ds      9
	global	_time
_time:
       ds      9
	global	_index
_index:
       ds      2
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"set_date.c"
	line	19
	global	_days
_days:
       ds      14
psect	bssBIGRAM,class=BIGRAM,space=1,noexec
global __pbssBIGRAM
__pbssBIGRAM:
	global	_view_arr
_view_arr:
       ds      270
	file	"pic18F4580.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (14 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,14
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (2 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+1		
	line	#
; Clear objects allocated to BIGRAM (270 bytes)
	global __pbssBIGRAM
lfsr	0,__pbssBIGRAM
lfsr	1,270
clear_0:
clrf	postinc0,c
movf	postdec1,w
movf	fsr1l,w
bnz	clear_0
movf	fsr1h,w
bnz	clear_0
; Clear objects allocated to BANK0 (93 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	93
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (40 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	40
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
	global	store_events@i_295
store_events@i_295:	; 2 bytes @ 0x0
	ds   2
	global	store_events@j
store_events@j:	; 2 bytes @ 0x2
	ds   2
	global	store_events@am_pm1_303
store_events@am_pm1_303:	; 2 bytes @ 0x4
	ds   2
	global	store_events@arr
store_events@arr:	; 10 bytes @ 0x6
	ds   10
	global	store_events@arr_300
store_events@arr_300:	; 10 bytes @ 0x10
	ds   10
	global	store_events@flag
store_events@flag:	; 2 bytes @ 0x1A
	ds   2
	global	store_events@a_p
store_events@a_p:	; 2 bytes @ 0x1C
	ds   2
	global	store_events@hr
store_events@hr:	; 2 bytes @ 0x1E
	ds   2
	global	store_events@mn
store_events@mn:	; 2 bytes @ 0x20
	ds   2
	global	store_events@hr1
store_events@hr1:	; 2 bytes @ 0x22
	ds   2
	global	store_events@mn1
store_events@mn1:	; 2 bytes @ 0x24
	ds   2
	global	store_events@hr1_301
store_events@hr1_301:	; 2 bytes @ 0x26
	ds   2
	global	store_events@mn1_302
store_events@mn1_302:	; 2 bytes @ 0x28
	ds   2
	global	store_events@i_298
store_events@i_298:	; 2 bytes @ 0x2A
	ds   2
	global	store_events@i
store_events@i:	; 2 bytes @ 0x2C
	ds   2
	global	store_events@addr
store_events@addr:	; 1 bytes @ 0x2E
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_check:	; 1 bytes @ 0x0
?_clcd_write:	; 1 bytes @ 0x0
?_read_ds1307:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_get_date:	; 1 bytes @ 0x0
?_display_event:	; 1 bytes @ 0x0
?_init_timer0:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_set_view_events:	; 1 bytes @ 0x0
?_set_time:	; 1 bytes @ 0x0
?_init_i2c:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
?_main_menu:	; 1 bytes @ 0x0
?_read_24c02:	; 1 bytes @ 0x0
?_view_events:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_default_screen:	; 1 bytes @ 0x0
?_set_events:	; 1 bytes @ 0x0
?_set_date:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
?_set_time_date:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
?___lbdiv:	; 1 bytes @ 0x0
?___lbmod:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0x0
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0x0
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
??_init_timer0:	; 1 bytes @ 0x0
??_init_i2c:	; 1 bytes @ 0x0
??_i2c_idle:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
??_i2c_rep_start:	; 1 bytes @ 0x0
??_i2c_write:	; 1 bytes @ 0x0
??_i2c_rx_mode:	; 1 bytes @ 0x0
??_i2c_no_ack:	; 1 bytes @ 0x0
??_i2c_read:	; 1 bytes @ 0x0
??_init_matrix_keypad:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
??_read_switches:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
	ds   1
?_write_ds1307:	; 1 bytes @ 0x1
	global	read_24c02@address
read_24c02@address:	; 1 bytes @ 0x1
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0x1
	global	read_ds1307@address
read_ds1307@address:	; 1 bytes @ 0x1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
??_read_ds1307:	; 1 bytes @ 0x1
??_read_24c02:	; 1 bytes @ 0x1
??___lbdiv:	; 1 bytes @ 0x1
??___lbmod:	; 1 bytes @ 0x1
	ds   1
?_clcd_putch:	; 1 bytes @ 0x2
	global	read_24c02@data
read_24c02@data:	; 1 bytes @ 0x2
	global	write_ds1307@address
write_ds1307@address:	; 1 bytes @ 0x2
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x2
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x2
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
??_write_ds1307:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
	ds   1
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0x3
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x3
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x3
??_get_time:	; 1 bytes @ 0x3
??_get_date:	; 1 bytes @ 0x3
??_clcd_putch:	; 1 bytes @ 0x3
??_init_ds1307:	; 1 bytes @ 0x3
	ds   1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
??_init_config:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
??_display_event:	; 1 bytes @ 0x6
	ds   2
?_clcd_print:	; 1 bytes @ 0x8
?_write_24c02:	; 1 bytes @ 0x8
	global	write_24c02@data
write_24c02@data:	; 1 bytes @ 0x8
	global	clcd_print@data
clcd_print@data:	; 3 bytes @ 0x8
	ds   1
	global	write_24c02@delay
write_24c02@delay:	; 2 bytes @ 0x9
??_write_24c02:	; 1 bytes @ 0x9
	ds   1
	global	display_event@i
display_event@i:	; 2 bytes @ 0xA
	ds   1
	global	write_24c02@address
write_24c02@address:	; 1 bytes @ 0xB
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0xB
	ds   1
?_shift_store_event:	; 1 bytes @ 0xC
	global	check@i
check@i:	; 2 bytes @ 0xC
	global	shift_store_event@i
shift_store_event@i:	; 2 bytes @ 0xC
??_clcd_print:	; 1 bytes @ 0xC
??_check:	; 1 bytes @ 0xC
??_set_view_events:	; 1 bytes @ 0xC
??_set_time:	; 1 bytes @ 0xC
??_main_menu:	; 1 bytes @ 0xC
??_default_screen:	; 1 bytes @ 0xC
??_set_date:	; 1 bytes @ 0xC
??_set_time_date:	; 1 bytes @ 0xC
	ds   2
	global	shift_store_event@addr
shift_store_event@addr:	; 2 bytes @ 0xE
??_view_events:	; 1 bytes @ 0xE
	ds   2
	global	default_screen@key
default_screen@key:	; 1 bytes @ 0x10
	global	shift_store_event@event_count
shift_store_event@event_count:	; 2 bytes @ 0x10
	global	set_time@j
set_time@j:	; 2 bytes @ 0x10
	ds   2
	global	view_events@am_pm
view_events@am_pm:	; 2 bytes @ 0x12
??_shift_store_event:	; 1 bytes @ 0x12
	ds   2
	global	view_events@hr
view_events@hr:	; 2 bytes @ 0x14
	ds   2
	global	view_events@mn
view_events@mn:	; 2 bytes @ 0x16
	global	shift_store_event@a_p
shift_store_event@a_p:	; 2 bytes @ 0x16
	ds   2
	global	view_events@i
view_events@i:	; 2 bytes @ 0x18
	global	shift_store_event@hr
shift_store_event@hr:	; 2 bytes @ 0x18
	ds   2
	global	shift_store_event@mn
shift_store_event@mn:	; 2 bytes @ 0x1A
	ds   2
	global	shift_store_event@j
shift_store_event@j:	; 2 bytes @ 0x1C
	ds   2
	global	shift_store_event@addr1
shift_store_event@addr1:	; 1 bytes @ 0x1E
	ds   1
?_store_events:	; 1 bytes @ 0x1F
	global	store_events@event_cnt
store_events@event_cnt:	; 2 bytes @ 0x1F
	ds   2
	global	store_events@hour
store_events@hour:	; 2 bytes @ 0x21
	ds   2
	global	store_events@min
store_events@min:	; 2 bytes @ 0x23
	ds   2
	global	store_events@am_pm
store_events@am_pm:	; 2 bytes @ 0x25
	ds   2
??_store_events:	; 1 bytes @ 0x27
	ds   4
	global	set_events@i
set_events@i:	; 2 bytes @ 0x2B
??_set_events:	; 1 bytes @ 0x2B
	ds   2
??_main:	; 1 bytes @ 0x2D
;!
;!Data Sizes:
;!    Strings     418
;!    Constant    0
;!    Data        16
;!    BSS         403
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     45      88
;!    BANK0           160     47     154
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@data	PTR const unsigned char  size(3) Largest target is 12288
;!		 -> date(BANK0[9]), date_arr(BANK0[9]), index(BANK0[2]), ROM(CODE[12288]), 
;!		 -> store_events@arr(BANK0[10]), store_events@arr_300(BANK0[10]), STR_1(CODE[17]), STR_10(CODE[15]), 
;!		 -> STR_100(CODE[17]), STR_101(CODE[10]), STR_102(CODE[2]), STR_103(CODE[10]), 
;!		 -> STR_11(CODE[14]), STR_12(CODE[13]), STR_13(CODE[17]), STR_14(CODE[17]), 
;!		 -> STR_15(CODE[19]), STR_16(CODE[17]), STR_17(CODE[17]), STR_18(CODE[20]), 
;!		 -> STR_19(CODE[2]), STR_2(CODE[17]), STR_20(CODE[8]), STR_21(CODE[4]), 
;!		 -> STR_22(CODE[4]), STR_23(CODE[4]), STR_24(CODE[4]), STR_25(CODE[4]), 
;!		 -> STR_26(CODE[4]), STR_27(CODE[4]), STR_28(CODE[17]), STR_29(CODE[17]), 
;!		 -> STR_3(CODE[2]), STR_30(CODE[6]), STR_31(CODE[6]), STR_32(CODE[4]), 
;!		 -> STR_33(CODE[4]), STR_34(CODE[6]), STR_35(CODE[4]), STR_36(CODE[4]), 
;!		 -> STR_37(CODE[7]), STR_38(CODE[12]), STR_39(CODE[2]), STR_4(CODE[14]), 
;!		 -> STR_40(CODE[2]), STR_41(CODE[3]), STR_42(CODE[3]), STR_43(CODE[17]), 
;!		 -> STR_44(CODE[17]), STR_45(CODE[4]), STR_46(CODE[4]), STR_47(CODE[20]), 
;!		 -> STR_48(CODE[5]), STR_49(CODE[5]), STR_5(CODE[15]), STR_50(CODE[17]), 
;!		 -> STR_51(CODE[20]), STR_52(CODE[17]), STR_53(CODE[17]), STR_54(CODE[18]), 
;!		 -> STR_55(CODE[14]), STR_56(CODE[16]), STR_57(CODE[16]), STR_58(CODE[17]), 
;!		 -> STR_59(CODE[17]), STR_6(CODE[17]), STR_60(CODE[18]), STR_61(CODE[4]), 
;!		 -> STR_62(CODE[4]), STR_63(CODE[4]), STR_64(CODE[4]), STR_65(CODE[4]), 
;!		 -> STR_66(CODE[4]), STR_67(CODE[4]), STR_68(CODE[21]), STR_69(CODE[5]), 
;!		 -> STR_7(CODE[17]), STR_70(CODE[17]), STR_71(CODE[17]), STR_72(CODE[16]), 
;!		 -> STR_73(CODE[17]), STR_74(CODE[17]), STR_75(CODE[2]), STR_76(CODE[9]), 
;!		 -> STR_77(CODE[9]), STR_78(CODE[17]), STR_79(CODE[17]), STR_8(CODE[14]), 
;!		 -> STR_80(CODE[9]), STR_81(CODE[2]), STR_82(CODE[9]), STR_83(CODE[5]), 
;!		 -> STR_84(CODE[10]), STR_85(CODE[4]), STR_86(CODE[4]), STR_87(CODE[17]), 
;!		 -> STR_88(CODE[5]), STR_89(CODE[4]), STR_9(CODE[2]), STR_90(CODE[4]), 
;!		 -> STR_91(CODE[17]), STR_92(CODE[17]), STR_93(CODE[16]), STR_94(CODE[17]), 
;!		 -> STR_95(CODE[17]), STR_96(CODE[2]), STR_97(CODE[10]), STR_98(CODE[11]), 
;!		 -> STR_99(CODE[17]), time(BANK0[9]), time_arr(BANK0[9]), time_up(BANK0[9]), 
;!		 -> view_arr(BIGRAM[270]), 
;!
;!    days	PTR unsigned char [7] size(2) Largest target is 4
;!		 -> STR_21(CODE[4]), STR_22(CODE[4]), STR_23(CODE[4]), STR_24(CODE[4]), 
;!		 -> STR_25(CODE[4]), STR_26(CODE[4]), STR_27(CODE[4]), STR_61(CODE[4]), 
;!		 -> STR_62(CODE[4]), STR_63(CODE[4]), STR_64(CODE[4]), STR_65(CODE[4]), 
;!		 -> STR_66(CODE[4]), STR_67(CODE[4]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_set_events
;!    _view_events->_check
;!    _check->_clcd_print
;!    _set_view_events->_clcd_print
;!    _set_time_date->_clcd_print
;!    _set_time->_clcd_print
;!    _set_events->_store_events
;!    _store_events->_shift_store_event
;!    _shift_store_event->_write_24c02
;!    _write_24c02->___awdiv
;!    _set_date->_clcd_print
;!    _clcd_putch->_clcd_write
;!    _main_menu->_clcd_print
;!    _init_config->_init_ds1307
;!    _init_ds1307->_read_ds1307
;!    _init_ds1307->_write_ds1307
;!    _write_ds1307->_i2c_write
;!    _init_clcd->_clcd_write
;!    _default_screen->_clcd_print
;!    _default_screen->_display_event
;!    _get_time->_read_ds1307
;!    _get_date->_read_ds1307
;!    _read_ds1307->_i2c_write
;!    _display_event->___awmod
;!    _read_24c02->_i2c_write
;!    _clcd_print->___awdiv
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _set_events->_store_events
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   13572
;!                     _default_screen
;!                        _init_config
;!                          _main_menu
;!                      _read_switches
;!                           _set_date
;!                         _set_events
;!                           _set_time
;!                      _set_time_date
;!                    _set_view_events
;!                        _view_events
;! ---------------------------------------------------------------------------------
;! (1) _view_events                                         12    12      0    1903
;!                                             14 COMRAM    12    12      0
;!                            ___awdiv
;!                            ___awmod
;!                              _check
;!                         _clcd_print
;!                         _read_24c02
;! ---------------------------------------------------------------------------------
;! (2) _check                                                2     2      0     418
;!                                             12 COMRAM     2     2      0
;!                         _clcd_print
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _set_view_events                                      0     0      0     335
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _set_time_date                                        0     0      0     335
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _set_time                                             6     6      0    1051
;!                                             12 COMRAM     6     6      0
;!                            ___lbdiv
;!                            ___lbmod
;!                         _clcd_print
;!                         _clcd_putch
;!                           _get_time
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (1) _set_events                                           2     2      0    6182
;!                                             43 COMRAM     2     2      0
;!                            ___awmod
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwmod
;!                         _clcd_print
;!                         _clcd_putch
;!                           _get_time
;!                       _store_events
;! ---------------------------------------------------------------------------------
;! (2) _store_events                                        61    53      8    4721
;!                                             31 COMRAM    12     4      8
;!                                              0 BANK0     47    47      0
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _read_24c02
;!                  _shift_store_event
;!                        _write_24c02
;! ---------------------------------------------------------------------------------
;! (3) _shift_store_event                                   19    13      6    1300
;!                                             12 COMRAM    19    13      6
;!                            ___awdiv
;!                            ___awmod
;!                         _read_24c02
;!                        _write_24c02
;! ---------------------------------------------------------------------------------
;! (3) _write_24c02                                          4     3      1     118
;!                                              8 COMRAM     4     3      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     161
;!                                              0 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) _set_date                                             2     2      0    1264
;!                                             12 COMRAM     2     2      0
;!                            ___awmod
;!                            ___lbdiv
;!                            ___lbmod
;!                         _clcd_print
;!                         _clcd_putch
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1     133
;!                                              2 COMRAM     2     1      1
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              4     3      1     181
;!                                              0 COMRAM     4     3      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     184
;!                                              0 COMRAM     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _read_switches                                        1     1      0      58
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (2) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _main_menu                                            0     0      0     335
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0     301
;!                          _init_clcd
;!                        _init_ds1307
;!                           _init_i2c
;!                 _init_matrix_keypad
;!                        _init_timer0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer0                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0     241
;!                                              3 COMRAM     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _write_ds1307                                         2     1      1      91
;!                                              1 COMRAM     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0      60
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _default_screen                                       5     5      0    1808
;!                                             12 COMRAM     5     5      0
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                      _display_event
;!                           _get_date
;!                           _get_time
;!                         _read_24c02
;! ---------------------------------------------------------------------------------
;! (2) _get_time                                             0     0      0      81
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _get_date                                             1     1      0      81
;!                                              3 COMRAM     1     1      0
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0      81
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) _display_event                                        6     6      0     533
;!                                              6 COMRAM     6     6      0
;!                            ___awmod
;!                         _read_24c02
;! ---------------------------------------------------------------------------------
;! (2) _read_24c02                                           2     2      0      81
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _i2c_write                                            1     1      0      29
;!                                              0 COMRAM     1     1      0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _i2c_read                                             0     0      0       0
;!                         _i2c_no_ack
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_no_ack                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     340
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           4     0      4     335
;!                                              8 COMRAM     4     0      4
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           2     1      1      60
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              8     4      4     328
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _isr                                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _default_screen
;!     ___awdiv
;!     ___awmod
;!     _clcd_print
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!       _clcd_write (ARG)
;!     _display_event
;!       ___awmod
;!       _read_24c02
;!         _i2c_read
;!           _i2c_no_ack
;!           _i2c_rx_mode
;!             _i2c_idle
;!         _i2c_rep_start
;!           _i2c_idle
;!         _i2c_start
;!           _i2c_idle
;!         _i2c_stop
;!           _i2c_idle
;!         _i2c_write
;!           _i2c_idle
;!     _get_date
;!       _read_ds1307
;!         _i2c_read
;!         _i2c_rep_start
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _get_time
;!       _read_ds1307
;!     _read_24c02
;!   _init_config
;!     _init_clcd
;!       _clcd_write
;!     _init_ds1307
;!       _read_ds1307
;!       _write_ds1307
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _init_i2c
;!     _init_matrix_keypad
;!     _init_timer0
;!   _main_menu
;!     _clcd_print
;!   _read_switches
;!     _scan_key
;!   _set_date
;!     ___awmod
;!     ___lbdiv
;!     ___lbmod
;!     _clcd_print
;!     _clcd_putch
;!       _clcd_write
;!     _write_ds1307
;!   _set_events
;!     ___awmod
;!     ___lbdiv
;!     ___lbmod
;!     ___lwmod
;!     _clcd_print
;!     _clcd_putch
;!     _get_time
;!     _store_events
;!       ___awdiv
;!       ___awmod
;!       _clcd_print
;!       _read_24c02
;!       _shift_store_event
;!         ___awdiv
;!         ___awmod
;!         _read_24c02
;!         _write_24c02
;!           ___awdiv (ARG)
;!           ___awmod (ARG)
;!           _i2c_start (ARG)
;!           _i2c_stop (ARG)
;!           _i2c_write (ARG)
;!       _write_24c02
;!   _set_time
;!     ___lbdiv
;!     ___lbmod
;!     _clcd_print
;!     _clcd_putch
;!     _get_time
;!     _write_ds1307
;!   _set_time_date
;!     _clcd_print
;!   _set_view_events
;!     _clcd_print
;!   _view_events
;!     ___awdiv
;!     ___awmod
;!     _check
;!       _clcd_print
;!       _clcd_write
;!     _clcd_print
;!     _read_24c02
;!
;! _isr (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            1535      0     270     17.6%
;!BITBIGSFRlll       641      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BANK1              256      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160     47     154     96.2%
;!BITCOMRAM           94      0       0      0.0%
;!COMRAM              94     45      88     93.6%
;!BITBIGSFRh          58      0       0      0.0%
;!BITBIGSFRlh         38      0       0      0.0%
;!BITBIGSFRllh        28      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     518      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 51 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_default_screen
;;		_init_config
;;		_main_menu
;;		_read_switches
;;		_set_date
;;		_set_events
;;		_set_time
;;		_set_time_date
;;		_set_view_events
;;		_view_events
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	51
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	51
	
_main:
;incstack = 0
	callstack 23
	line	52
	
l4424:
;main.c: 52: init_config();
	call	_init_config	;wreg free
	line	66
;main.c: 66: while(1)
	
l610:
	line	68
;main.c: 67: {;main.c: 68: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:_key))^00h,c
	line	70
	
l4426:
;main.c: 70: if(screen_flag == 1)
		decf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3841
	goto	u3840

u3841:
	goto	l4430
u3840:
	line	72
	
l4428:
;main.c: 71: {;main.c: 72: default_screen(key);
	movf	((c:_key))^00h,c,w
	
	call	_default_screen
	line	73
;main.c: 73: }
	goto	l610
	line	74
	
l4430:
;main.c: 74: else if(screen_flag == 2)
		movlw	2
	xorwf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3851
	goto	u3850

u3851:
	goto	l4434
u3850:
	line	76
	
l4432:
;main.c: 75: {;main.c: 76: main_menu();
	call	_main_menu	;wreg free
	line	77
;main.c: 77: }
	goto	l610
	line	78
	
l4434:
;main.c: 78: else if(screen_flag == 3)
		movlw	3
	xorwf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3861
	goto	u3860

u3861:
	goto	l4438
u3860:
	line	80
	
l4436:
;main.c: 79: {;main.c: 80: set_time_date();
	call	_set_time_date	;wreg free
	line	81
;main.c: 81: }
	goto	l610
	line	82
	
l4438:
;main.c: 82: else if(screen_flag == 4)
		movlw	4
	xorwf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3871
	goto	u3870

u3871:
	goto	l4442
u3870:
	line	84
	
l4440:
;main.c: 83: {;main.c: 84: set_view_events();
	call	_set_view_events	;wreg free
	line	85
;main.c: 85: }
	goto	l610
	line	88
	
l4442:
;main.c: 88: else if(screen_flag == 5)
		movlw	5
	xorwf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3881
	goto	u3880

u3881:
	goto	l4446
u3880:
	line	90
	
l4444:
;main.c: 89: {;main.c: 90: set_time();
	call	_set_time	;wreg free
	line	91
;main.c: 91: }
	goto	l610
	line	92
	
l4446:
;main.c: 92: else if(screen_flag == 6)
		movlw	6
	xorwf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3891
	goto	u3890

u3891:
	goto	l4450
u3890:
	line	94
	
l4448:
;main.c: 93: {;main.c: 94: set_date();
	call	_set_date	;wreg free
	line	95
;main.c: 95: }
	goto	l610
	line	97
	
l4450:
;main.c: 97: else if(screen_flag == 7)
		movlw	7
	xorwf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3901
	goto	u3900

u3901:
	goto	l4454
u3900:
	line	99
	
l4452:
;main.c: 98: {;main.c: 99: set_events();
	call	_set_events	;wreg free
	line	100
;main.c: 100: }
	goto	l610
	line	101
	
l4454:
;main.c: 101: else if(screen_flag == 8)
		movlw	8
	xorwf	((c:_screen_flag))^00h,c,w
	btfss	status,2
	goto	u3911
	goto	u3910

u3911:
	goto	l620
u3910:
	line	103
	
l4456:
;main.c: 102: {;main.c: 103: view_events();
	call	_view_events	;wreg free
	goto	l610
	line	106
	
l620:
	goto	l610
	global	start
	goto	start
	callstack 0
	line	108
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_view_events

;; *************** function _view_events *****************
;; Defined at:
;;		line 20 in file "view_event.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mn              2   22[COMRAM] int 
;;  hr              2   20[COMRAM] int 
;;  am_pm           2   18[COMRAM] int 
;;  i               2   24[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_check
;;		_clcd_print
;;		_read_24c02
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"view_event.c"
	line	20
global __ptext1
__ptext1:
psect	text1
	file	"view_event.c"
	line	20
	
_view_events:
;incstack = 0
	callstack 25
	line	25
	
l3726:
;view_event.c: 25: if(event_cnt == 0) {
	movf	((c:_event_cnt))^00h,c,w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l3732
u2650:
	line	26
	
l3728:
;view_event.c: 26: clcd_print("# VIEW_EVENTS", (0x80 + (0)));
		movlw	low(STR_11)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_11)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	27
;view_event.c: 27: clcd_print("NO EVENTS...", (0xC0 + (0)));
		movlw	low(STR_12)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_12)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	28
;view_event.c: 28: goto here;
	goto	l3816
	line	32
	
l3732:
;view_event.c: 32: if (!once) {
	movf	((c:_once))^00h,c,w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l3784
u2660:
	line	33
	
l3734:
;view_event.c: 33: addr2 = 0x00;
	clrf	((c:_addr2))^00h,c
	line	34
	
l3736:
;view_event.c: 34: for (int i = 0; i < event_cnt; i++) {
	movlw	high(0)
	movwf	((c:view_events@i+1))^00h,c
	movlw	low(0)
	movwf	((c:view_events@i))^00h,c
	goto	l3780
	line	35
	
l3738:
;view_event.c: 35: int hr = (read_24c02(addr2++) * 10) + read_24c02(addr2++);
	movf	((c:_addr2))^00h,c,w
	
	call	_read_24c02
	movwf	(??_view_events+0+0)^00h,c
	movf	((c:_addr2))^00h,c,w
	
	call	_read_24c02
	movwf	(??_view_events+1+0)^00h,c
	movf	((??_view_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_view_events+2+0
	movff	prodh,??_view_events+2+0+1
	movf	((??_view_events+0+0))^00h,c,w
	addwf	(??_view_events+2+0)^00h,c,w
	movwf	((c:view_events@hr))^00h,c
	movlw	0
	addwfc	(??_view_events+2+1)^00h,c,w
	movwf	1+((c:view_events@hr))^00h,c
	
l3740:
	incf	((c:_addr2))^00h,c
	
l3742:
	incf	((c:_addr2))^00h,c
	line	36
;view_event.c: 36: int mn = (read_24c02(addr2++) * 10) + read_24c02(addr2++);
	movf	((c:_addr2))^00h,c,w
	
	call	_read_24c02
	movwf	(??_view_events+0+0)^00h,c
	movf	((c:_addr2))^00h,c,w
	
	call	_read_24c02
	movwf	(??_view_events+1+0)^00h,c
	movf	((??_view_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_view_events+2+0
	movff	prodh,??_view_events+2+0+1
	movf	((??_view_events+0+0))^00h,c,w
	addwf	(??_view_events+2+0)^00h,c,w
	movwf	((c:view_events@mn))^00h,c
	movlw	0
	addwfc	(??_view_events+2+1)^00h,c,w
	movwf	1+((c:view_events@mn))^00h,c
	
l3744:
	incf	((c:_addr2))^00h,c
	
l3746:
	incf	((c:_addr2))^00h,c
	line	37
	
l3748:
;view_event.c: 37: int am_pm = read_24c02(addr2++);
	movf	((c:_addr2))^00h,c,w
	
	call	_read_24c02
	movwf	(??_view_events+0+0)^00h,c
	movf	((??_view_events+0+0))^00h,c,w
	movwf	((c:view_events@am_pm))^00h,c
	clrf	((c:view_events@am_pm+1))^00h,c
	
l3750:
	incf	((c:_addr2))^00h,c
	line	44
	
l3752:
;view_event.c: 44: view_arr[i][0] = '0' + (hr / 10);
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:view_events@hr),(c:___awdiv@dividend)
	movff	(c:view_events@hr+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	45
	
l3754:
;view_event.c: 45: view_arr[i][1] = '0' + (hr % 10);
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+01h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+01h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:view_events@hr),(c:___awmod@dividend)
	movff	(c:view_events@hr+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	46
	
l3756:
;view_event.c: 46: view_arr[i][2] = ':';
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+02h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+02h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(03Ah)
	movwf	indf2
	line	48
	
l3758:
;view_event.c: 48: view_arr[i][3] = '0' + (mn / 10);
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+03h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+03h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:view_events@mn),(c:___awdiv@dividend)
	movff	(c:view_events@mn+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	49
	
l3760:
;view_event.c: 49: view_arr[i][4] = '0' + (mn % 10);
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+04h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+04h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:view_events@mn),(c:___awmod@dividend)
	movff	(c:view_events@mn+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	50
	
l3762:
;view_event.c: 50: view_arr[i][5] = ' ';
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+05h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+05h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(020h)
	movwf	indf2
	line	52
	
l3764:
;view_event.c: 52: if (am_pm) {
	movf	((c:view_events@am_pm))^00h,c,w
iorwf	((c:view_events@am_pm+1))^00h,c,w
	btfsc	status,2
	goto	u2671
	goto	u2670

u2671:
	goto	l3768
u2670:
	line	53
	
l3766:
;view_event.c: 53: view_arr[i][6] = 'P';
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+06h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+06h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(050h)
	movwf	indf2
	line	54
;view_event.c: 54: view_arr[i][7] = 'M';
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+07h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+07h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(04Dh)
	movwf	indf2
	line	55
;view_event.c: 55: } else {
	goto	l142
	line	56
	
l3768:
;view_event.c: 56: view_arr[i][6] = 'A';
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+06h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+06h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(041h)
	movwf	indf2
	line	57
;view_event.c: 57: view_arr[i][7] = 'M';
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+07h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+07h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(04Dh)
	movwf	indf2
	line	58
	
l142:
	line	59
;view_event.c: 58: };view_event.c: 59: view_arr[i][8] = '\0';
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr+08h)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_view_arr+08h)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+c:fsr2l
	clrf	indf2
	line	60
	
l3770:
;view_event.c: 60: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_13)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_13)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	61
	
l3772:
;view_event.c: 61: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_14)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_14)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	62
	
l3774:
;view_event.c: 62: clcd_print("# VIEWING EVENTS..", (0x80 + (0)));
		movlw	low(STR_15)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_15)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	63
	
l3776:
;view_event.c: 63: clcd_print(view_arr[i],(0xC0 + (0)));
	movlw	low(09h)
	mulwf	((c:view_events@i))^00h,c
	movff	prodl,??_view_events+0+0
	movff	prodh,??_view_events+0+0+1
	mulwf	((c:view_events@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_view_events+0+0+1)^00h,c,f
	movlw	low(_view_arr)
	addwf	(??_view_events+0+0)^00h,c,w
	movwf	(??_view_events+2+0)^00h,c
	movlw	high(_view_arr)
	addwfc	(??_view_events+0+1)^00h,c,w
	movwf	1+(??_view_events+2+0)^00h,c
		movff	??_view_events+2+0,(c:clcd_print@data)
	movff	??_view_events+2+1,(c:clcd_print@data+1)
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	34
	
l3778:
	infsnz	((c:view_events@i))^00h,c
	incf	((c:view_events@i+1))^00h,c
	
l3780:
	movf	((c:_event_cnt))^00h,c,w
	movwf	(??_view_events+0+0)^00h,c
	clrf	(??_view_events+0+0+1)^00h,c

		movf	(??_view_events+0+0)^00h,c,w
	subwf	((c:view_events@i))^00h,c,w
	movf	((c:view_events@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_view_events+2+0)^00h,c
	movf	(??_view_events+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_view_events+2+0)^00h,c,w
	btfss	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l3738
u2680:
	line	66
	
l3782:
;view_event.c: 65: };view_event.c: 66: once = 1;
	movlw	low(01h)
	movwf	((c:_once))^00h,c
	line	70
	
l3784:
;view_event.c: 67: };view_event.c: 70: index[0] = '0' + (view_count + 1);
	movf	((c:_view_count))^00h,c,w
	addlw	low(031h)
	movlb	0	; () banked
	movwf	((_index))&0ffh
	line	71
	
l3786:; BSR set to: 0

;view_event.c: 71: index[1] = '\0';
	clrf	(0+(_index+01h))&0ffh
	line	73
	
l3788:; BSR set to: 0

;view_event.c: 73: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_16)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_16)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	74
	
l3790:
;view_event.c: 74: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_17)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_17)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	75
	
l3792:
;view_event.c: 75: clcd_print("# VIEWING EVENTS...", (0x80 + (0)));
		movlw	low(STR_18)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_18)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	76
	
l3794:
;view_event.c: 76: clcd_print(index, (0xC0 + (0)));
		movlw	low(_index)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	77
	
l3796:
;view_event.c: 77: clcd_print(" ", (0xC0 + (1)));
		movlw	low(STR_19)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_19)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	78
	
l3798:
;view_event.c: 78: clcd_print(view_arr[view_count], (0xC0 + (2)));
	movf	((c:_view_count))^00h,c,w
	mullw	09h
	movlw	low(_view_arr)
	addwf	(prodl)^0f00h,c,w
	movwf	(??_view_events+0+0)^00h,c
	movlw	high(_view_arr)
	addwfc	prod+1,w
	movwf	1+(??_view_events+0+0)^00h,c
		movff	??_view_events+0+0,(c:clcd_print@data)
	movff	??_view_events+0+1,(c:clcd_print@data+1)
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	81
	
l3800:
;view_event.c: 81: if (key == 2) {
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2691
	goto	u2690

u2691:
	goto	l3808
u2690:
	line	82
	
l3802:
;view_event.c: 82: view_count++;
	incf	((c:_view_count))^00h,c
	line	83
	
l3804:
;view_event.c: 83: if (view_count >= event_cnt) {
		movf	((c:_event_cnt))^00h,c,w
	subwf	((c:_view_count))^00h,c,w
	btfss	status,0
	goto	u2701
	goto	u2700

u2701:
	goto	l3816
u2700:
	line	84
	
l3806:
;view_event.c: 84: view_count = 0;
	clrf	((c:_view_count))^00h,c
	goto	l3816
	line	86
	
l3808:
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2711
	goto	u2710

u2711:
	goto	l137
u2710:
	line	87
	
l3810:
;view_event.c: 87: if (view_count == 0) {
	movf	((c:_view_count))^00h,c,w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l3814
u2720:
	line	88
	
l3812:
;view_event.c: 88: view_count = event_cnt - 1;
	decf	((c:_event_cnt))^00h,c,w
	movwf	((c:_view_count))^00h,c
	line	89
;view_event.c: 89: } else {
	goto	l3816
	line	90
	
l3814:
;view_event.c: 90: view_count--;
	decf	((c:_view_count))^00h,c
	goto	l3816
	line	96
	
l137:
	line	98
	
l3816:
;view_event.c: 98: if (key == 5) {
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2731
	goto	u2730

u2731:
	goto	l151
u2730:
	line	99
	
l3818:
;view_event.c: 99: check();
	call	_check	;wreg free
	line	100
	
l3820:
;view_event.c: 100: screen_flag = 2;
	movlw	low(02h)
	movwf	((c:_screen_flag))^00h,c
	line	101
	
l3822:
;view_event.c: 101: addr2 = 0x00;
	clrf	((c:_addr2))^00h,c
	line	102
	
l3824:
;view_event.c: 102: once = 0;
	clrf	((c:_once))^00h,c
	line	104
	
l151:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_events
	__end_of_view_events:
	signat	_view_events,89
	global	_check

;; *************** function _check *****************
;; Defined at:
;;		line 105 in file "view_event.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   12[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;;		_clcd_write
;; This function is called by:
;;		_view_events
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	105
global __ptext2
__ptext2:
psect	text2
	file	"view_event.c"
	line	105
	
_check:
;incstack = 0
	callstack 26
	line	106
	
l3226:
;view_event.c: 106: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	107
	
l3228:
;view_event.c: 107: clcd_print("entered",(0x80 + (0)));
		movlw	low(STR_20)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_20)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	108
	
l3230:
;view_event.c: 108: for(int i = 500000;i--;);
	movlw	high(-24288)
	movwf	((c:check@i+1))^00h,c
	movlw	low(-24288)
	movwf	((c:check@i))^00h,c
	
l3232:
	decf	((c:check@i))^00h,c
	btfss	status,0
	decf	((c:check@i+1))^00h,c
		incf	((c:check@i))^00h,c,w
	bnz	u2191
	incf	((c:check@i+1))^00h,c,w
	btfss	status,2
	goto	u2191
	goto	u2190

u2191:
	goto	l3232
u2190:
	line	109
	
l157:
	return	;funcret
	callstack 0
GLOBAL	__end_of_check
	__end_of_check:
	signat	_check,89
	global	_set_view_events

;; *************** function _set_view_events *****************
;; Defined at:
;;		line 17 in file "set_view_events.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"set_view_events.c"
	line	17
global __ptext3
__ptext3:
psect	text3
	file	"set_view_events.c"
	line	17
	
_set_view_events:
;incstack = 0
	callstack 27
	line	19
	
l4248:
;set_view_events.c: 19: if(key == 2)
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3471
	goto	u3470

u3471:
	goto	l4252
u3470:
	line	21
	
l4250:
;set_view_events.c: 20: {;set_view_events.c: 21: menu1 = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_menu1+1))&0ffh
	movlw	low(0)
	movwf	((_menu1))&0ffh
	line	22
;set_view_events.c: 22: }
	goto	l4256
	line	23
	
l4252:
;set_view_events.c: 23: else if(key == 1)
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3481
	goto	u3480

u3481:
	goto	l4256
u3480:
	line	25
	
l4254:
;set_view_events.c: 24: {;set_view_events.c: 25: menu1 = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_menu1+1))&0ffh
	movlw	low(01h)
	movwf	((_menu1))&0ffh
	line	27
	
l4256:
;set_view_events.c: 26: };set_view_events.c: 27: if(!menu1)
	movlb	0	; () banked
	movf	((_menu1))&0ffh,w
iorwf	((_menu1+1))&0ffh,w
	btfss	status,2
	goto	u3491
	goto	u3490

u3491:
	goto	l4260
u3490:
	line	29
	
l4258:; BSR set to: 0

;set_view_events.c: 28: {;set_view_events.c: 29: clcd_print("                ",(0x80 + (0)));
		movlw	low(STR_94)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_94)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	30
;set_view_events.c: 30: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_95)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_95)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	31
;set_view_events.c: 31: clcd_print("*",(0x80 + (0)));
		movlw	low(STR_96)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_96)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	32
;set_view_events.c: 32: clcd_print("SET EVENT",(0x80 + (2)));
		movlw	low(STR_97)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_97)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	33
;set_view_events.c: 33: clcd_print("VIEW EVENT",(0xC0 + (2)));
		movlw	low(STR_98)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_98)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	34
;set_view_events.c: 34: }
	goto	l4264
	line	35
	
l4260:; BSR set to: 0

;set_view_events.c: 35: else if(menu1)
	movf	((_menu1))&0ffh,w
iorwf	((_menu1+1))&0ffh,w
	btfsc	status,2
	goto	u3501
	goto	u3500

u3501:
	goto	l4264
u3500:
	line	37
	
l4262:; BSR set to: 0

;set_view_events.c: 36: {;set_view_events.c: 37: clcd_print("                ",(0x80 + (0)));
		movlw	low(STR_99)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_99)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	38
;set_view_events.c: 38: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_100)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_100)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	39
;set_view_events.c: 39: clcd_print("SET EVENT",(0x80 + (2)));
		movlw	low(STR_101)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_101)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	40
;set_view_events.c: 40: clcd_print("*",(0xC0 + (0)));
		movlw	low(STR_102)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_102)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	41
;set_view_events.c: 41: clcd_print("VIEW EVEN",(0xC0 + (2)));
		movlw	low(STR_103)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_103)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	43
	
l4264:
;set_view_events.c: 42: };set_view_events.c: 43: if(key == 4)
		movlw	4
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3511
	goto	u3510

u3511:
	goto	l4272
u3510:
	line	45
	
l4266:
;set_view_events.c: 44: {;set_view_events.c: 45: if(!menu1)
	movlb	0	; () banked
	movf	((_menu1))&0ffh,w
iorwf	((_menu1+1))&0ffh,w
	btfss	status,2
	goto	u3521
	goto	u3520

u3521:
	goto	l4270
u3520:
	line	47
	
l4268:; BSR set to: 0

;set_view_events.c: 46: {;set_view_events.c: 47: screen_flag = 7;
	movlw	low(07h)
	movwf	((c:_screen_flag))^00h,c
	line	48
;set_view_events.c: 48: }
	goto	l4272
	line	50
	
l4270:; BSR set to: 0

;set_view_events.c: 49: else;set_view_events.c: 50: screen_flag = 8;
	movlw	low(08h)
	movwf	((c:_screen_flag))^00h,c
	line	52
	
l4272:
;set_view_events.c: 51: };set_view_events.c: 52: if(key == 5)
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3531
	goto	u3530

u3531:
	goto	l777
u3530:
	line	54
	
l4274:
;set_view_events.c: 53: {;set_view_events.c: 54: screen_flag = 2;
	movlw	low(02h)
	movwf	((c:_screen_flag))^00h,c
	line	56
	
l777:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_view_events
	__end_of_set_view_events:
	signat	_set_view_events,89
	global	_set_time_date

;; *************** function _set_time_date *****************
;; Defined at:
;;		line 69 in file "set_time_date.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"set_time_date.c"
	line	69
global __ptext4
__ptext4:
psect	text4
	file	"set_time_date.c"
	line	69
	
_set_time_date:
;incstack = 0
	callstack 27
	line	70
	
l4204:
;set_time_date.c: 70: if (key == 2) {
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3401
	goto	u3400

u3401:
	goto	l4208
u3400:
	line	71
	
l4206:
;set_time_date.c: 71: menu = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_menu+1))&0ffh
	movlw	low(01h)
	movwf	((_menu))&0ffh
	line	72
;set_time_date.c: 72: } else if (key == 1) {
	goto	l4212
	
l4208:
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3411
	goto	u3410

u3411:
	goto	l4212
u3410:
	line	73
	
l4210:
;set_time_date.c: 73: menu = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_menu+1))&0ffh
	movlw	low(0)
	movwf	((_menu))&0ffh
	line	76
	
l4212:
;set_time_date.c: 74: };set_time_date.c: 76: if (!menu) {
	movlb	0	; () banked
	movf	((_menu))&0ffh,w
iorwf	((_menu+1))&0ffh,w
	btfss	status,2
	goto	u3421
	goto	u3420

u3421:
	goto	l4216
u3420:
	line	77
	
l4214:; BSR set to: 0

;set_time_date.c: 77: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_73)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_73)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	78
;set_time_date.c: 78: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_74)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_74)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	79
;set_time_date.c: 79: clcd_print("*", (0x80 + (0)));
		movlw	low(STR_75)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_75)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	80
;set_time_date.c: 80: clcd_print("SET TIME", (0x80 + (2)));
		movlw	low(STR_76)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_76)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	81
;set_time_date.c: 81: clcd_print("SET DATE", (0xC0 + (2)));
		movlw	low(STR_77)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_77)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	82
;set_time_date.c: 82: } else if (menu) {
	goto	l4220
	
l4216:; BSR set to: 0

	movf	((_menu))&0ffh,w
iorwf	((_menu+1))&0ffh,w
	btfsc	status,2
	goto	u3431
	goto	u3430

u3431:
	goto	l4220
u3430:
	line	83
	
l4218:; BSR set to: 0

;set_time_date.c: 83: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_78)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_78)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	84
;set_time_date.c: 84: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_79)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_79)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	85
;set_time_date.c: 85: clcd_print("SET TIME", (0x80 + (2)));
		movlw	low(STR_80)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_80)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	86
;set_time_date.c: 86: clcd_print("*", (0xC0 + (0)));
		movlw	low(STR_81)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_81)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	87
;set_time_date.c: 87: clcd_print("SET DATE", (0xC0 + (2)));
		movlw	low(STR_82)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_82)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	90
	
l4220:
;set_time_date.c: 88: };set_time_date.c: 90: if (key == 4) {
		movlw	4
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3441
	goto	u3440

u3441:
	goto	l4228
u3440:
	line	91
	
l4222:
;set_time_date.c: 91: if (menu) {
	movlb	0	; () banked
	movf	((_menu))&0ffh,w
iorwf	((_menu+1))&0ffh,w
	btfsc	status,2
	goto	u3451
	goto	u3450

u3451:
	goto	l4226
u3450:
	line	92
	
l4224:; BSR set to: 0

;set_time_date.c: 92: screen_flag = 6;
	movlw	low(06h)
	movwf	((c:_screen_flag))^00h,c
	line	93
;set_time_date.c: 93: } else {
	goto	l4228
	line	94
	
l4226:; BSR set to: 0

;set_time_date.c: 94: screen_flag = 5;
	movlw	low(05h)
	movwf	((c:_screen_flag))^00h,c
	line	98
	
l4228:
;set_time_date.c: 95: };set_time_date.c: 96: };set_time_date.c: 98: if (key == 5) {
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3461
	goto	u3460

u3461:
	goto	l550
u3460:
	line	99
	
l4230:
;set_time_date.c: 99: screen_flag = 2;
	movlw	low(02h)
	movwf	((c:_screen_flag))^00h,c
	line	101
	
l550:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time_date
	__end_of_set_time_date:
	signat	_set_time_date,89
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 22 in file "set_time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___lbdiv
;;		___lbmod
;;		_clcd_print
;;		_clcd_putch
;;		_get_time
;;		_write_ds1307
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"set_time.c"
	line	22
global __ptext5
__ptext5:
psect	text5
	file	"set_time.c"
	line	22
	
_set_time:
;incstack = 0
	callstack 24
	line	23
	
l4276:
;set_time.c: 23: if (!set_once) {
	movlb	0	; () banked
	movf	((_set_once))&0ffh,w
iorwf	((_set_once+1))&0ffh,w
	btfss	status,2
	goto	u3541
	goto	u3540

u3541:
	goto	l4296
u3540:
	line	24
	
l4278:; BSR set to: 0

;set_time.c: 24: get_time();
	call	_get_time	;wreg free
	line	26
	
l4280:; BSR set to: 0

;set_time.c: 26: hour = (time[0] - '0') * 10 + (time[1] - '0');
	movf	((_time))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_time+01h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_hour))^00h,c
	line	27
	
l4282:; BSR set to: 0

;set_time.c: 27: min = (time[3] - '0') * 10 + (time[4] - '0');
	movf	(0+(_time+03h))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_time+04h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_min))^00h,c
	line	28
	
l4284:; BSR set to: 0

;set_time.c: 28: sec = (time[6] - '0') * 10 + (time[7] - '0');
	movf	(0+(_time+06h))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_time+07h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_sec))^00h,c
	line	29
	
l4286:; BSR set to: 0

;set_time.c: 29: if(am_pm == 0)
	movf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l4290
u3550:
	line	30
	
l4288:; BSR set to: 0

;set_time.c: 30: clcd_print(" AM",(0xC0 + (13)));
		movlw	low(STR_85)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_85)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l4294
	line	31
	
l4290:; BSR set to: 0

;set_time.c: 31: else if(am_pm == 1)
		decf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u3561
	goto	u3560

u3561:
	goto	l4294
u3560:
	line	32
	
l4292:; BSR set to: 0

;set_time.c: 32: clcd_print(" PM",(0xC0 + (13)));
		movlw	low(STR_86)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_86)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	33
	
l4294:
;set_time.c: 33: set_once = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_set_once+1))&0ffh
	movlw	low(01h)
	movwf	((_set_once))&0ffh
	line	37
	
l4296:; BSR set to: 0

;set_time.c: 34: };set_time.c: 37: time_arr[0] = '0' + (hour / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_hour))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time_arr))&0ffh
	line	38
	
l4298:; BSR set to: 0

;set_time.c: 38: time_arr[1] = '0' + (hour % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_hour))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_arr+01h))&0ffh
	line	39
	
l4300:; BSR set to: 0

;set_time.c: 39: time_arr[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time_arr+02h))&0ffh
	line	40
	
l4302:; BSR set to: 0

;set_time.c: 40: time_arr[3] = '0' + (min / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_min))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_arr+03h))&0ffh
	line	41
	
l4304:; BSR set to: 0

;set_time.c: 41: time_arr[4] = '0' + (min % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_min))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_arr+04h))&0ffh
	line	42
	
l4306:; BSR set to: 0

;set_time.c: 42: time_arr[5] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time_arr+05h))&0ffh
	line	43
	
l4308:; BSR set to: 0

;set_time.c: 43: time_arr[6] = '0' + (sec / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_sec))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_arr+06h))&0ffh
	line	44
	
l4310:; BSR set to: 0

;set_time.c: 44: time_arr[7] = '0' + (sec % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_sec))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_arr+07h))&0ffh
	line	45
	
l4312:; BSR set to: 0

;set_time.c: 45: time_arr[8] = '\0';
	clrf	(0+(_time_arr+08h))&0ffh
	line	48
	
l4314:; BSR set to: 0

;set_time.c: 48: clcd_print("    HH:MM:SS    ", (0x80 + (0)));
		movlw	low(STR_87)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_87)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	49
	
l4316:
;set_time.c: 49: clcd_print("    ", (0xC0 + (0)));
		movlw	low(STR_88)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_88)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	50
	
l4318:
;set_time.c: 50: clcd_print(time_arr, (0xC0 + (4)));
		movlw	low(_time_arr)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	51
;set_time.c: 51: if(am_pm == 0)
	movf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4322
u3570:
	line	52
	
l4320:
;set_time.c: 52: clcd_print(" AM",(0xC0 + (13)));
		movlw	low(STR_89)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_89)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l4326
	line	53
	
l4322:
;set_time.c: 53: else if(am_pm == 1)
		decf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u3581
	goto	u3580

u3581:
	goto	l4326
u3580:
	line	54
	
l4324:
;set_time.c: 54: clcd_print(" PM",(0xC0 + (13)));
		movlw	low(STR_90)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_90)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	57
	
l4326:
;set_time.c: 57: if (key == 1) {
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3591
	goto	u3590

u3591:
	goto	l4330
u3590:
	line	58
	
l4328:
;set_time.c: 58: field_select = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_field_select+1))&0ffh
	movlw	low(01h)
	movwf	((_field_select))&0ffh
	line	62
	
l4330:
;set_time.c: 59: };set_time.c: 62: if (++delay == 150) {
	movlb	0	; () banked
	infsnz	((_delay))&0ffh
	incf	((_delay+1))&0ffh
		movlw	150
	xorwf	((_delay))&0ffh,w
iorwf	((_delay+1))&0ffh,w
	btfss	status,2
	goto	u3601
	goto	u3600

u3601:
	goto	l4336
u3600:
	line	63
	
l4332:; BSR set to: 0

;set_time.c: 63: set_flag = !set_flag;
	movf	((c:_set_flag))^00h,c,w
iorwf	((c:_set_flag+1))^00h,c,w
	btfsc	status,2
	goto	u3611
	goto	u3610

u3611:
	movlw	1
	goto	u3620
u3610:
	movlw	0
u3620:
	movwf	((c:_set_flag))^00h,c
	clrf	((c:_set_flag+1))^00h,c
	line	64
	
l4334:; BSR set to: 0

;set_time.c: 64: delay = 0;
	movlw	high(0)
	movwf	((_delay+1))&0ffh
	movlw	low(0)
	movwf	((_delay))&0ffh
	line	68
	
l4336:; BSR set to: 0

;set_time.c: 65: };set_time.c: 68: if (key == 2) {
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3631
	goto	u3630

u3631:
	goto	l4344
u3630:
	line	69
	
l4338:; BSR set to: 0

;set_time.c: 69: sw_press++;
	infsnz	((c:_sw_press))^00h,c
	incf	((c:_sw_press+1))^00h,c
	line	70
	
l4340:; BSR set to: 0

;set_time.c: 70: if(sw_press == 4)
		movlw	4
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3641
	goto	u3640

u3641:
	goto	l4344
u3640:
	line	72
	
l4342:; BSR set to: 0

;set_time.c: 71: {;set_time.c: 72: sw_press = 0;
	movlw	high(0)
	movwf	((c:_sw_press+1))^00h,c
	movlw	low(0)
	movwf	((c:_sw_press))^00h,c
	line	78
	
l4344:; BSR set to: 0

;set_time.c: 73: };set_time.c: 75: };set_time.c: 78: if (field_select) {
	movf	((_field_select))&0ffh,w
iorwf	((_field_select+1))&0ffh,w
	btfsc	status,2
	goto	u3651
	goto	u3650

u3651:
	goto	l4374
u3650:
	line	79
	
l4346:; BSR set to: 0

;set_time.c: 79: if(sw_press == 0)
	movf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3661
	goto	u3660

u3661:
	goto	l4350
u3660:
	line	81
	
l4348:; BSR set to: 0

;set_time.c: 80: {;set_time.c: 81: am_pm = !am_pm;
	movf	((c:_am_pm))^00h,c,w
	btfsc	status,2
	goto	u3671
	goto	u3670
u3671:
	movlw	1
	goto	u3680
u3670:
	movlw	0
u3680:
	movwf	((c:_am_pm))^00h,c
	line	82
;set_time.c: 82: }
	goto	l735
	line	83
	
l4350:; BSR set to: 0

;set_time.c: 83: else if (sw_press == 1) {
		decf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3691
	goto	u3690

u3691:
	goto	l4358
u3690:
	line	84
	
l4352:; BSR set to: 0

;set_time.c: 84: sec++;
	incf	((c:_sec))^00h,c
	line	85
	
l4354:; BSR set to: 0

;set_time.c: 85: if(sec == 61)
		movlw	61
	xorwf	((c:_sec))^00h,c,w
	btfss	status,2
	goto	u3701
	goto	u3700

u3701:
	goto	l735
u3700:
	line	87
	
l4356:; BSR set to: 0

;set_time.c: 86: {;set_time.c: 87: sec = 1;
	movlw	low(01h)
	movwf	((c:_sec))^00h,c
	goto	l735
	line	89
	
l4358:; BSR set to: 0

		movlw	2
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3711
	goto	u3710

u3711:
	goto	l4366
u3710:
	line	90
	
l4360:; BSR set to: 0

;set_time.c: 90: min++;
	incf	((c:_min))^00h,c
	line	91
	
l4362:; BSR set to: 0

;set_time.c: 91: if(min == 61)
		movlw	61
	xorwf	((c:_min))^00h,c,w
	btfss	status,2
	goto	u3721
	goto	u3720

u3721:
	goto	l735
u3720:
	line	93
	
l4364:; BSR set to: 0

;set_time.c: 92: {;set_time.c: 93: min = 1;
	movlw	low(01h)
	movwf	((c:_min))^00h,c
	goto	l735
	line	95
	
l4366:; BSR set to: 0

		movlw	3
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3731
	goto	u3730

u3731:
	goto	l735
u3730:
	line	96
	
l4368:; BSR set to: 0

;set_time.c: 96: hour++;
	incf	((c:_hour))^00h,c
	line	97
	
l4370:; BSR set to: 0

;set_time.c: 97: if(hour == 13)
		movlw	13
	xorwf	((c:_hour))^00h,c,w
	btfss	status,2
	goto	u3741
	goto	u3740

u3741:
	goto	l735
u3740:
	line	99
	
l4372:; BSR set to: 0

;set_time.c: 98: {;set_time.c: 99: hour = 1;
	movlw	low(01h)
	movwf	((c:_hour))^00h,c
	line	103
	
l735:; BSR set to: 0

;set_time.c: 100: };set_time.c: 101: };set_time.c: 103: field_select = 0;
	movlw	high(0)
	movwf	((_field_select+1))&0ffh
	movlw	low(0)
	movwf	((_field_select))&0ffh
	line	107
	
l4374:; BSR set to: 0

;set_time.c: 104: };set_time.c: 107: if (set_flag) {
	movf	((c:_set_flag))^00h,c,w
iorwf	((c:_set_flag+1))^00h,c,w
	btfsc	status,2
	goto	u3751
	goto	u3750

u3751:
	goto	l4392
u3750:
	line	108
	
l4376:; BSR set to: 0

;set_time.c: 108: if (sw_press == 0) {
	movf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3761
	goto	u3760

u3761:
	goto	l4380
u3760:
	line	109
	
l4378:; BSR set to: 0

;set_time.c: 109: clcd_putch(' ', (0xC0 + (14)));
	movlw	low(0CEh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	110
;set_time.c: 110: clcd_putch(' ', (0xC0 + (15)));
	movlw	low(0CFh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	111
;set_time.c: 111: }
	goto	l4392
	line	112
	
l4380:; BSR set to: 0

;set_time.c: 112: else if (sw_press == 1) {
		decf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3771
	goto	u3770

u3771:
	goto	l4384
u3770:
	line	113
	
l4382:; BSR set to: 0

;set_time.c: 113: clcd_putch(' ', (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	114
;set_time.c: 114: clcd_putch(' ', (0xC0 + (11)));
	movlw	low(0CBh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	115
;set_time.c: 115: } else if (sw_press == 2) {
	goto	l4392
	
l4384:; BSR set to: 0

		movlw	2
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3781
	goto	u3780

u3781:
	goto	l4388
u3780:
	line	116
	
l4386:; BSR set to: 0

;set_time.c: 116: clcd_putch(' ', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	117
;set_time.c: 117: clcd_putch(' ', (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	118
;set_time.c: 118: } else if (sw_press == 3) {
	goto	l4392
	
l4388:; BSR set to: 0

		movlw	3
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3791
	goto	u3790

u3791:
	goto	l746
u3790:
	line	119
	
l4390:; BSR set to: 0

;set_time.c: 119: clcd_putch(' ', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	120
;set_time.c: 120: clcd_putch(' ', (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l4392
	line	123
	
l746:; BSR set to: 0

	line	126
	
l4392:
;set_time.c: 121: };set_time.c: 123: };set_time.c: 126: if (key == 4) {
		movlw	4
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3801
	goto	u3800

u3801:
	goto	l4420
u3800:
	line	127
	
l4394:
;set_time.c: 127: s_hr = (((hour / 10) << 4) | (hour % 10)) | 0x40 | (am_pm << 5);
	movff	(c:_am_pm),??_set_time+0+0
	movlw	05h
	movwf	(??_set_time+1+0)^00h,c
u3815:
	bcf	status,0
	rlcf	(??_set_time+0+0)^00h,c
	decfsz	(??_set_time+1+0)^00h,c
	goto	u3815
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_hour))^00h,c,w
	
	call	___lbmod
	movwf	(??_set_time+2+0)^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_hour))^00h,c,w
	
	call	___lbdiv
	movwf	(??_set_time+3+0)^00h,c
	swapf	((??_set_time+3+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((??_set_time+2+0))^00h,c,w
	iorwf	(??_set_time+0+0)^00h,c,w
	iorlw	low(040h)
	movwf	((c:_s_hr))^00h,c
	line	128
;set_time.c: 128: s_min = ((min / 10) << 4) | (min % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_min))^00h,c,w
	
	call	___lbmod
	movwf	(??_set_time+0+0)^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_min))^00h,c,w
	
	call	___lbdiv
	movwf	(??_set_time+1+0)^00h,c
	swapf	((??_set_time+1+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((??_set_time+0+0))^00h,c,w
	movwf	((c:_s_min))^00h,c
	line	129
;set_time.c: 129: s_sec = ((sec / 10) << 4) | (sec % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_sec))^00h,c,w
	
	call	___lbmod
	movwf	(??_set_time+0+0)^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_sec))^00h,c,w
	
	call	___lbdiv
	movwf	(??_set_time+1+0)^00h,c
	swapf	((??_set_time+1+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((??_set_time+0+0))^00h,c,w
	movwf	((c:_s_sec))^00h,c
	line	130
	
l4396:
;set_time.c: 130: write_ds1307(0x02, s_hr);
	movff	(c:_s_hr),(c:write_ds1307@data)
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	131
	
l4398:
;set_time.c: 131: write_ds1307(0x01, s_min);
	movff	(c:_s_min),(c:write_ds1307@data)
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	132
	
l4400:
;set_time.c: 132: write_ds1307(0x00, s_sec);
	movff	(c:_s_sec),(c:write_ds1307@data)
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	135
	
l4402:
;set_time.c: 135: clcd_print("                ",(0x80 + (0)));
		movlw	low(STR_91)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_91)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	136
	
l4404:
;set_time.c: 136: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_92)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_92)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	137
	
l4406:
;set_time.c: 137: clcd_print("Time is updated",(0xC0 + (1)));
		movlw	low(STR_93)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_93)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	138
	
l4408:
;set_time.c: 138: for (int j = 0; j < 5000; j++);
	movlw	high(0)
	movwf	((c:set_time@j+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@j))^00h,c
	
l4414:
	infsnz	((c:set_time@j))^00h,c
	incf	((c:set_time@j+1))^00h,c
	
l4416:
	btfsc	((c:set_time@j+1))^00h,c,7
	goto	u3821
	movlw	136
	subwf	 ((c:set_time@j))^00h,c,w
	movlw	19
	subwfb	((c:set_time@j+1))^00h,c,w
	btfss	status,0
	goto	u3821
	goto	u3820

u3821:
	goto	l4414
u3820:
	line	139
	
l4418:
;set_time.c: 139: screen_flag = 3;
	movlw	low(03h)
	movwf	((c:_screen_flag))^00h,c
	line	143
	
l4420:
;set_time.c: 140: };set_time.c: 143: if (key == 5) {
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3831
	goto	u3830

u3831:
	goto	l756
u3830:
	line	144
	
l4422:
;set_time.c: 144: screen_flag = 3;
	movlw	low(03h)
	movwf	((c:_screen_flag))^00h,c
	line	146
	
l756:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,89
	global	_set_events

;; *************** function _set_events *****************
;; Defined at:
;;		line 19 in file "set_event.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   43[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		___awmod
;;		___lbdiv
;;		___lbmod
;;		___lwmod
;;		_clcd_print
;;		_clcd_putch
;;		_get_time
;;		_store_events
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"set_event.c"
	line	19
global __ptext6
__ptext6:
psect	text6
	file	"set_event.c"
	line	19
	
_set_events:
;incstack = 0
	callstack 23
	line	20
	
l3928:
;set_event.c: 20: if (!set_once) {
	movlb	0	; () banked
	movf	((_set_once))&0ffh,w
iorwf	((_set_once+1))&0ffh,w
	btfss	status,2
	goto	u2901
	goto	u2900

u2901:
	goto	l3950
u2900:
	line	21
	
l3930:; BSR set to: 0

;set_event.c: 21: get_time();
	call	_get_time	;wreg free
	line	22
	
l3932:; BSR set to: 0

;set_event.c: 22: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_43)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_43)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	23
	
l3934:
;set_event.c: 23: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_44)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_44)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	25
	
l3936:
;set_event.c: 25: hr = (time[0] - '0') * 10 + (time[1] - '0');
	movlb	0	; () banked
	movf	((_time))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_time+01h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_hr))^00h,c
	line	26
	
l3938:; BSR set to: 0

;set_event.c: 26: mn = (time[3] - '0') * 10 + (time[4] - '0');
	movf	(0+(_time+03h))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_time+04h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_mn))^00h,c
	line	27
	
l3940:; BSR set to: 0

;set_event.c: 27: if(am_pm == 0)
	movf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l3944
u2910:
	line	28
	
l3942:; BSR set to: 0

;set_event.c: 28: clcd_print(" AM", (0xC0 + (13)));
		movlw	low(STR_45)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_45)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l3948
	line	29
	
l3944:; BSR set to: 0

;set_event.c: 29: else if(am_pm == 1)
		decf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u2921
	goto	u2920

u2921:
	goto	l3948
u2920:
	line	30
	
l3946:; BSR set to: 0

;set_event.c: 30: clcd_print(" PM", (0xC0 + (13)));
		movlw	low(STR_46)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_46)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	31
	
l3948:
;set_event.c: 31: set_once = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_set_once+1))&0ffh
	movlw	low(01h)
	movwf	((_set_once))&0ffh
	line	35
	
l3950:; BSR set to: 0

;set_event.c: 32: };set_event.c: 35: time_up[0] = '0' + (hr / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_hr))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time_up))&0ffh
	line	36
	
l3952:; BSR set to: 0

;set_event.c: 36: time_up[1] = '0' + (hr % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_hr))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_up+01h))&0ffh
	line	37
	
l3954:; BSR set to: 0

;set_event.c: 37: time_up[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time_up+02h))&0ffh
	line	38
	
l3956:; BSR set to: 0

;set_event.c: 38: time_up[3] = '0' + (mn / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_mn))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_up+03h))&0ffh
	line	39
	
l3958:; BSR set to: 0

;set_event.c: 39: time_up[4] = '0' + (mn % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_mn))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_time_up+04h))&0ffh
	line	40
	
l3960:; BSR set to: 0

;set_event.c: 40: time_up[5] = ' ';
	movlw	low(020h)
	movwf	(0+(_time_up+05h))&0ffh
	line	41
	
l3962:; BSR set to: 0

;set_event.c: 41: if(am_pm) {
	movf	((c:_am_pm))^00h,c,w
	btfsc	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3966
u2930:
	line	42
	
l3964:; BSR set to: 0

;set_event.c: 42: time_up[6] = 'P';
	movlw	low(050h)
	movwf	(0+(_time_up+06h))&0ffh
	line	43
;set_event.c: 43: time_up[7] = 'M';
	movlw	low(04Dh)
	movwf	(0+(_time_up+07h))&0ffh
	line	44
;set_event.c: 44: } else {
	goto	l3968
	line	45
	
l3966:; BSR set to: 0

;set_event.c: 45: time_up[6] = 'A';
	movlw	low(041h)
	movwf	(0+(_time_up+06h))&0ffh
	line	46
;set_event.c: 46: time_up[7] = 'M';
	movlw	low(04Dh)
	movwf	(0+(_time_up+07h))&0ffh
	line	48
	
l3968:; BSR set to: 0

;set_event.c: 47: };set_event.c: 48: time_up[8] = '\0';
	clrf	(0+(_time_up+08h))&0ffh
	line	51
	
l3970:; BSR set to: 0

;set_event.c: 51: clcd_print("    HH:MM:AM/PM    ", (0x80 + (0)));
		movlw	low(STR_47)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_47)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	52
	
l3972:
;set_event.c: 52: clcd_print("    ", (0xC0 + (0)));
		movlw	low(STR_48)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_48)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	53
	
l3974:
;set_event.c: 53: clcd_print(time_up, (0xC0 + (4)));
		movlw	low(_time_up)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	54
	
l3976:
;set_event.c: 54: clcd_print("    ", (0xC0 + (12)));
		movlw	low(STR_49)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_49)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CCh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	57
	
l3978:
;set_event.c: 57: if (key == 1) {
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2941
	goto	u2940

u2941:
	goto	l3982
u2940:
	line	58
	
l3980:
;set_event.c: 58: field_select = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_field_select+1))&0ffh
	movlw	low(01h)
	movwf	((_field_select))&0ffh
	line	62
	
l3982:
;set_event.c: 59: };set_event.c: 62: if (++delay == 150) {
	movlb	0	; () banked
	infsnz	((_delay))&0ffh
	incf	((_delay+1))&0ffh
		movlw	150
	xorwf	((_delay))&0ffh,w
iorwf	((_delay+1))&0ffh,w
	btfss	status,2
	goto	u2951
	goto	u2950

u2951:
	goto	l3988
u2950:
	line	63
	
l3984:; BSR set to: 0

;set_event.c: 63: set_flag = !set_flag;
	movf	((c:_set_flag))^00h,c,w
iorwf	((c:_set_flag+1))^00h,c,w
	btfsc	status,2
	goto	u2961
	goto	u2960

u2961:
	movlw	1
	goto	u2970
u2960:
	movlw	0
u2970:
	movwf	((c:_set_flag))^00h,c
	clrf	((c:_set_flag+1))^00h,c
	line	64
	
l3986:; BSR set to: 0

;set_event.c: 64: delay = 0;
	movlw	high(0)
	movwf	((_delay+1))&0ffh
	movlw	low(0)
	movwf	((_delay))&0ffh
	line	68
	
l3988:; BSR set to: 0

;set_event.c: 65: };set_event.c: 68: if (key == 2) {
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2981
	goto	u2980

u2981:
	goto	l3992
u2980:
	line	69
	
l3990:; BSR set to: 0

;set_event.c: 69: sw_press = (sw_press + 1) % 3;
	movlw	low(01h)
	addwf	((c:_sw_press))^00h,c,w
	movwf	((c:___lwmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	((c:_sw_press+1))^00h,c,w
	movwf	1+((c:___lwmod@dividend))^00h,c
	movlw	high(03h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(03h)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:_sw_press)
	movff	1+?___lwmod,(c:_sw_press+1)
	line	73
	
l3992:; BSR set to: 0

;set_event.c: 70: };set_event.c: 73: if (field_select) {
	movf	((_field_select))&0ffh,w
iorwf	((_field_select+1))&0ffh,w
	btfsc	status,2
	goto	u2991
	goto	u2990

u2991:
	goto	l4008
u2990:
	line	74
	
l3994:; BSR set to: 0

;set_event.c: 74: if (sw_press == 0) {
	movf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3001
	goto	u3000

u3001:
	goto	l3998
u3000:
	line	75
	
l3996:; BSR set to: 0

;set_event.c: 75: am_pm = !am_pm;
	movf	((c:_am_pm))^00h,c,w
	btfsc	status,2
	goto	u3011
	goto	u3010
u3011:
	movlw	1
	goto	u3020
u3010:
	movlw	0
u3020:
	movwf	((c:_am_pm))^00h,c
	line	76
;set_event.c: 76: } else if (sw_press == 1) {
	goto	l4006
	
l3998:; BSR set to: 0

		decf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3031
	goto	u3030

u3031:
	goto	l4002
u3030:
	line	77
	
l4000:; BSR set to: 0

;set_event.c: 77: mn = (mn + 1) % 60;
	movlw	low(01h)
	addwf	((c:_mn))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	clrf	1+((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	1+((c:___awmod@dividend))^00h,c
	movlw	high(03Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:_mn))^00h,c
	line	78
;set_event.c: 78: } else if (sw_press == 2) {
	goto	l4006
	
l4002:; BSR set to: 0

		movlw	2
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3041
	goto	u3040

u3041:
	goto	l4006
u3040:
	line	79
	
l4004:; BSR set to: 0

;set_event.c: 79: hr = (hr + 1) % 12;
	movlw	low(01h)
	addwf	((c:_hr))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	clrf	1+((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	1+((c:___awmod@dividend))^00h,c
	movlw	high(0Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:_hr))^00h,c
	line	81
	
l4006:
;set_event.c: 80: };set_event.c: 81: field_select = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_field_select+1))&0ffh
	movlw	low(0)
	movwf	((_field_select))&0ffh
	line	85
	
l4008:; BSR set to: 0

;set_event.c: 82: };set_event.c: 85: if (set_flag) {
	movf	((c:_set_flag))^00h,c,w
iorwf	((c:_set_flag+1))^00h,c,w
	btfsc	status,2
	goto	u3051
	goto	u3050

u3051:
	goto	l4022
u3050:
	line	86
	
l4010:; BSR set to: 0

;set_event.c: 86: if (sw_press == 0) {
	movf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3061
	goto	u3060

u3061:
	goto	l4014
u3060:
	line	87
	
l4012:; BSR set to: 0

;set_event.c: 87: clcd_putch(' ', (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	88
;set_event.c: 88: clcd_putch(' ', (0xC0 + (11)));
	movlw	low(0CBh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	89
;set_event.c: 89: } else if (sw_press == 1) {
	goto	l4022
	
l4014:; BSR set to: 0

		decf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3071
	goto	u3070

u3071:
	goto	l4018
u3070:
	line	90
	
l4016:; BSR set to: 0

;set_event.c: 90: clcd_putch(' ', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	91
;set_event.c: 91: clcd_putch(' ', (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	92
;set_event.c: 92: } else if (sw_press == 2) {
	goto	l4022
	
l4018:; BSR set to: 0

		movlw	2
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3081
	goto	u3080

u3081:
	goto	l360
u3080:
	line	93
	
l4020:; BSR set to: 0

;set_event.c: 93: clcd_putch(' ', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	94
;set_event.c: 94: clcd_putch(' ', (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l4022
	line	96
	
l360:; BSR set to: 0

	line	99
	
l4022:
;set_event.c: 95: };set_event.c: 96: };set_event.c: 99: if (key == 4) {
		movlw	4
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3091
	goto	u3090

u3091:
	goto	l4046
u3090:
	line	100
	
l4024:
;set_event.c: 100: if (event_cnt < 40) {
		movlw	028h-0
	cpfslt	((c:_event_cnt))^00h,c
	goto	u3101
	goto	u3100

u3101:
	goto	l4034
u3100:
	line	101
	
l4026:
;set_event.c: 101: screen_flag = 4;
	movlw	low(04h)
	movwf	((c:_screen_flag))^00h,c
	line	102
	
l4028:
;set_event.c: 102: event_cnt++;
	incf	((c:_event_cnt))^00h,c
	line	103
	
l4030:
;set_event.c: 103: store_events(event_cnt, hr, mn, am_pm);
	movff	(c:_event_cnt),(c:store_events@event_cnt)
	clrf	((c:store_events@event_cnt+1))^00h,c
	movff	(c:_hr),(c:store_events@hour)
	clrf	((c:store_events@hour+1))^00h,c
	movff	(c:_mn),(c:store_events@min)
	clrf	((c:store_events@min+1))^00h,c
	movff	(c:_am_pm),(c:store_events@am_pm)
	clrf	((c:store_events@am_pm+1))^00h,c
	call	_store_events	;wreg free
	line	104
	
l4032:; BSR set to: 0

;set_event.c: 104: screen_flag = 4;
	movlw	low(04h)
	movwf	((c:_screen_flag))^00h,c
	line	105
;set_event.c: 105: } else {
	goto	l4046
	line	106
	
l4034:
;set_event.c: 106: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_50)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_50)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	107
;set_event.c: 107: clcd_print("Event Limit Reached", (0xC0 + (0)));
		movlw	low(STR_51)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_51)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	108
	
l4036:
;set_event.c: 108: for (int i = 0; i < 5000; i++);
	movlw	high(0)
	movwf	((c:set_events@i+1))^00h,c
	movlw	low(0)
	movwf	((c:set_events@i))^00h,c
	
l4042:
	infsnz	((c:set_events@i))^00h,c
	incf	((c:set_events@i+1))^00h,c
	
l4044:
	btfsc	((c:set_events@i+1))^00h,c,7
	goto	u3111
	movlw	136
	subwf	 ((c:set_events@i))^00h,c,w
	movlw	19
	subwfb	((c:set_events@i+1))^00h,c,w
	btfss	status,0
	goto	u3111
	goto	u3110

u3111:
	goto	l4042
u3110:
	line	112
	
l4046:
;set_event.c: 109: };set_event.c: 110: };set_event.c: 112: if (key == 5) {
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3121
	goto	u3120

u3121:
	goto	l370
u3120:
	line	113
	
l4048:
;set_event.c: 113: screen_flag = 4;
	movlw	low(04h)
	movwf	((c:_screen_flag))^00h,c
	line	115
	
l370:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_events
	__end_of_set_events:
	signat	_set_events,89
	global	_store_events

;; *************** function _store_events *****************
;; Defined at:
;;		line 200 in file "set_event.c"
;; Parameters:    Size  Location     Type
;;  event_cnt       2   31[COMRAM] int 
;;  hour            2   33[COMRAM] int 
;;  min             2   35[COMRAM] int 
;;  am_pm           2   37[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  i               2   42[BANK0 ] int 
;;  j               2    2[BANK0 ] int 
;;  arr            10   16[BANK0 ] unsigned char [10]
;;  mn1             2   40[BANK0 ] int 
;;  hr1             2   38[BANK0 ] int 
;;  am_pm1          2    4[BANK0 ] int 
;;  i               2    0[BANK0 ] int 
;;  arr            10    6[BANK0 ] unsigned char [10]
;;  mn1             2   36[BANK0 ] int 
;;  hr1             2   34[BANK0 ] int 
;;  am_pm1          2    0        int 
;;  i               2   44[BANK0 ] int 
;;  mn              2   32[BANK0 ] int 
;;  hr              2   30[BANK0 ] int 
;;  a_p             2   28[BANK0 ] int 
;;  flag            2   26[BANK0 ] int 
;;  addr            1   46[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         0      47       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        12      47       0       0       0       0       0
;;Total ram usage:       59 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_read_24c02
;;		_shift_store_event
;;		_write_24c02
;; This function is called by:
;;		_set_events
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	line	200
global __ptext7
__ptext7:
psect	text7
	file	"set_event.c"
	line	200
	
_store_events:
;incstack = 0
	callstack 23
	line	201
	
l3348:
;set_event.c: 201: char addr = 0x00;
	movlb	0	; () banked
	clrf	((store_events@addr))&0ffh
	line	203
	
l3350:; BSR set to: 0

;set_event.c: 202: int a_p, hr, mn;;set_event.c: 203: int flag = 1;
	movlw	high(01h)
	movwf	((store_events@flag+1))&0ffh
	movlw	low(01h)
	movwf	((store_events@flag))&0ffh
	line	206
	
l3352:; BSR set to: 0

;set_event.c: 206: if (event_cnt == 1) {
		decf	((c:store_events@event_cnt))^00h,c,w
iorwf	((c:store_events@event_cnt+1))^00h,c,w
	btfss	status,2
	goto	u2291
	goto	u2290

u2291:
	goto	l3408
u2290:
	line	207
	
l3354:; BSR set to: 0

;set_event.c: 207: write_24c02(addr++, hour / 10);
	movff	(c:store_events@hour),(c:___awdiv@dividend)
	movff	(c:store_events@hour+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_24c02
	
l3356:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	208
	
l3358:; BSR set to: 0

;set_event.c: 208: write_24c02(addr++, hour % 10);
	movff	(c:store_events@hour),(c:___awmod@dividend)
	movff	(c:store_events@hour+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	209
	
l3360:; BSR set to: 0

;set_event.c: 209: write_24c02(addr++, min / 10);
	movff	(c:store_events@min),(c:___awdiv@dividend)
	movff	(c:store_events@min+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	
l3362:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	210
;set_event.c: 210: write_24c02(addr++, min % 10);
	movff	(c:store_events@min),(c:___awmod@dividend)
	movff	(c:store_events@min+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	
l3364:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	211
	
l3366:; BSR set to: 0

;set_event.c: 211: write_24c02(addr++, am_pm);
	movff	(c:store_events@am_pm),(c:write_24c02@data)
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	212
	
l3368:; BSR set to: 0

	line	214
	
l3370:; BSR set to: 0

;set_event.c: 213: char arr[10];;set_event.c: 214: int hr1 = (read_24c02(addr) * 10) + read_24c02(addr+1);
	movlw	(01h)&0ffh
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movlw	(0)&0ffh
	
	call	_read_24c02
	movwf	(??_store_events+1+0)^00h,c
	movf	((??_store_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_store_events+2+0
	movff	prodh,??_store_events+2+0+1
	movf	((??_store_events+0+0))^00h,c,w
	addwf	(??_store_events+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@hr1))&0ffh
	movlw	0
	addwfc	(??_store_events+2+1)^00h,c,w
	movwf	1+((store_events@hr1))&0ffh
	line	215
	
l3372:; BSR set to: 0

;set_event.c: 215: int mn1 = (read_24c02(addr+2) * 10) + read_24c02(addr+3);
	movlw	(03h)&0ffh
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movlw	(02h)&0ffh
	
	call	_read_24c02
	movwf	(??_store_events+1+0)^00h,c
	movf	((??_store_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_store_events+2+0
	movff	prodh,??_store_events+2+0+1
	movf	((??_store_events+0+0))^00h,c,w
	addwf	(??_store_events+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@mn1))&0ffh
	movlw	0
	addwfc	(??_store_events+2+1)^00h,c,w
	movwf	1+((store_events@mn1))&0ffh
	line	216
	
l3374:; BSR set to: 0

	movlw	(04h)&0ffh
	
	call	_read_24c02
	line	223
	
l3376:
;set_event.c: 223: arr[0] = '0' + (hr1 / 10);
	movff	(store_events@hr1),(c:___awdiv@dividend)
	movff	(store_events@hr1+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((store_events@arr))&0ffh
	line	224
	
l3378:; BSR set to: 0

;set_event.c: 224: arr[1] = '0' + (hr1 % 10);
	movff	(store_events@hr1),(c:___awmod@dividend)
	movff	(store_events@hr1+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(store_events@arr+01h))&0ffh
	line	225
	
l3380:; BSR set to: 0

;set_event.c: 225: arr[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(store_events@arr+02h))&0ffh
	line	227
	
l3382:; BSR set to: 0

;set_event.c: 227: arr[3] = '0' + (mn1 / 10);
	movff	(store_events@mn1),(c:___awdiv@dividend)
	movff	(store_events@mn1+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(store_events@arr+03h))&0ffh
	line	228
	
l3384:; BSR set to: 0

;set_event.c: 228: arr[4] = '0' + (mn1 % 10);
	movff	(store_events@mn1),(c:___awmod@dividend)
	movff	(store_events@mn1+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(store_events@arr+04h))&0ffh
	line	229
	
l3386:; BSR set to: 0

;set_event.c: 229: arr[5] = ' ';
	movlw	low(020h)
	movwf	(0+(store_events@arr+05h))&0ffh
	line	232
	
l3390:; BSR set to: 0

;set_event.c: 232: arr[6] = 'P';
	movlw	low(050h)
	movwf	(0+(store_events@arr+06h))&0ffh
	line	233
;set_event.c: 233: arr[7] = 'M';
	movlw	low(04Dh)
	movwf	(0+(store_events@arr+07h))&0ffh
	line	238
;set_event.c: 234: } else {
	
l3394:; BSR set to: 0

;set_event.c: 237: };set_event.c: 238: arr[8] = '\0';
	clrf	(0+(store_events@arr+08h))&0ffh
	line	239
	
l3396:; BSR set to: 0

;set_event.c: 239: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_52)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_52)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	240
	
l3398:
;set_event.c: 240: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_53)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_53)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	241
	
l3400:
;set_event.c: 241: clcd_print("# STORED EVENTS..", (0x80 + (0)));
		movlw	low(STR_54)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_54)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	242
	
l3402:
;set_event.c: 242: clcd_print(arr,(0xC0 + (0)));
		movlw	low(store_events@arr)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	243
;set_event.c: 243: for(int i = 0; i< 50000;i++);
	movlw	high(0)
	movlb	0	; () banked
	movwf	((store_events@i_295+1))&0ffh
	movlw	low(0)
	movwf	((store_events@i_295))&0ffh
	
l3406:; BSR set to: 0

	infsnz	((store_events@i_295))&0ffh
	incf	((store_events@i_295+1))&0ffh
	goto	l3406
	line	249
	
l3408:; BSR set to: 0

;set_event.c: 248: else {;set_event.c: 249: for (i = 0; i < event_cnt; i++) {
	movlw	high(0)
	movwf	((store_events@i+1))&0ffh
	movlw	low(0)
	movwf	((store_events@i))&0ffh
	goto	l3470
	line	250
	
l3410:; BSR set to: 0

;set_event.c: 250: addr = i * 5;
	movf	((store_events@i))&0ffh,w
	mullw	05h
	movff	prodl,(store_events@addr)
	line	251
	
l3412:; BSR set to: 0

;set_event.c: 251: a_p = read_24c02(addr + 4);
	movf	((store_events@addr))&0ffh,w
	addlw	low(04h)
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movf	((??_store_events+0+0))^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@a_p))&0ffh
	clrf	((store_events@a_p+1))&0ffh
	line	252
	
l3414:; BSR set to: 0

;set_event.c: 252: hr = (read_24c02(addr) * 10) + read_24c02(addr + 1);
	incf	((store_events@addr))&0ffh,w
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_read_24c02
	movwf	(??_store_events+1+0)^00h,c
	movf	((??_store_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_store_events+2+0
	movff	prodh,??_store_events+2+0+1
	movf	((??_store_events+0+0))^00h,c,w
	addwf	(??_store_events+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@hr))&0ffh
	movlw	0
	addwfc	(??_store_events+2+1)^00h,c,w
	movwf	1+((store_events@hr))&0ffh
	line	253
	
l3416:; BSR set to: 0

;set_event.c: 253: mn = (read_24c02(addr + 2) * 10) + read_24c02(addr + 3);
	movf	((store_events@addr))&0ffh,w
	addlw	low(03h)
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	addlw	low(02h)
	
	call	_read_24c02
	movwf	(??_store_events+1+0)^00h,c
	movf	((??_store_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_store_events+2+0
	movff	prodh,??_store_events+2+0+1
	movf	((??_store_events+0+0))^00h,c,w
	addwf	(??_store_events+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@mn))&0ffh
	movlw	0
	addwfc	(??_store_events+2+1)^00h,c,w
	movwf	1+((store_events@mn))&0ffh
	line	255
	
l3418:; BSR set to: 0

;set_event.c: 255: if (am_pm > a_p) {
		movf	((c:store_events@am_pm))^00h,c,w
	subwf	((store_events@a_p))&0ffh,w
	movf	((store_events@a_p+1))&0ffh,w
	xorlw	80h
	movwf	(??_store_events+0+0)^00h,c
	movf	((c:store_events@am_pm+1))^00h,c,w
	xorlw	80h
	subwfb	(??_store_events+0+0)^00h,c,w
	btfsc	status,0
	goto	u2301
	goto	u2300

u2301:
	goto	l3424
u2300:
	goto	l3468
	line	257
	
l3424:; BSR set to: 0

		movf	((store_events@a_p))&0ffh,w
	subwf	((c:store_events@am_pm))^00h,c,w
	movf	((c:store_events@am_pm+1))^00h,c,w
	xorlw	80h
	movwf	(??_store_events+0+0)^00h,c
	movf	((store_events@a_p+1))&0ffh,w
	xorlw	80h
	subwfb	(??_store_events+0+0)^00h,c,w
	btfsc	status,0
	goto	u2311
	goto	u2310

u2311:
	goto	l3430
u2310:
	line	258
	
l3426:; BSR set to: 0

;set_event.c: 258: shift_store_event(i, addr, event_cnt);
	movff	(store_events@i),(c:shift_store_event@i)
	movff	(store_events@i+1),(c:shift_store_event@i+1)
	movff	(store_events@addr),(c:shift_store_event@addr)
	clrf	((c:shift_store_event@addr+1))^00h,c
	movff	(c:store_events@event_cnt),(c:shift_store_event@event_count)
	movff	(c:store_events@event_cnt+1),(c:shift_store_event@event_count+1)
	call	_shift_store_event	;wreg free
	line	259
;set_event.c: 259: break;
	goto	l3472
	line	261
	
l3430:; BSR set to: 0

;set_event.c: 261: if (hour > hr) {
		movf	((c:store_events@hour))^00h,c,w
	subwf	((store_events@hr))&0ffh,w
	movf	((store_events@hr+1))&0ffh,w
	xorlw	80h
	movwf	(??_store_events+0+0)^00h,c
	movf	((c:store_events@hour+1))^00h,c,w
	xorlw	80h
	subwfb	(??_store_events+0+0)^00h,c,w
	btfsc	status,0
	goto	u2321
	goto	u2320

u2321:
	goto	l3436
u2320:
	goto	l3468
	line	263
	
l3436:; BSR set to: 0

		movf	((store_events@hr))&0ffh,w
	subwf	((c:store_events@hour))^00h,c,w
	movf	((c:store_events@hour+1))^00h,c,w
	xorlw	80h
	movwf	(??_store_events+0+0)^00h,c
	movf	((store_events@hr+1))&0ffh,w
	xorlw	80h
	subwfb	(??_store_events+0+0)^00h,c,w
	btfsc	status,0
	goto	u2331
	goto	u2330

u2331:
	goto	l3442
u2330:
	goto	l3426
	line	267
	
l3442:; BSR set to: 0

;set_event.c: 267: if (min > mn) {
		movf	((c:store_events@min))^00h,c,w
	subwf	((store_events@mn))&0ffh,w
	movf	((store_events@mn+1))&0ffh,w
	xorlw	80h
	movwf	(??_store_events+0+0)^00h,c
	movf	((c:store_events@min+1))^00h,c,w
	xorlw	80h
	subwfb	(??_store_events+0+0)^00h,c,w
	btfsc	status,0
	goto	u2341
	goto	u2340

u2341:
	goto	l3448
u2340:
	goto	l3468
	line	269
	
l3448:; BSR set to: 0

		movf	((store_events@mn))&0ffh,w
	subwf	((c:store_events@min))^00h,c,w
	movf	((c:store_events@min+1))^00h,c,w
	xorlw	80h
	movwf	(??_store_events+0+0)^00h,c
	movf	((store_events@mn+1))&0ffh,w
	xorlw	80h
	subwfb	(??_store_events+0+0)^00h,c,w
	btfsc	status,0
	goto	u2351
	goto	u2350

u2351:
	goto	l3454
u2350:
	goto	l3426
	line	273
	
l3454:; BSR set to: 0

;set_event.c: 273: flag = 0;
	movlw	high(0)
	movwf	((store_events@flag+1))&0ffh
	movlw	low(0)
	movwf	((store_events@flag))&0ffh
	line	274
	
l3456:; BSR set to: 0

;set_event.c: 274: clcd_print("Event already", (0x80 + (0)));
		movlw	low(STR_55)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_55)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	275
	
l3458:
;set_event.c: 275: clcd_print("Existed....    ", (0xC0 + (0)));
		movlw	low(STR_56)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_56)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	276
;set_event.c: 276: for (int i = 0; i < 5000; i++);
	movlw	high(0)
	movlb	0	; () banked
	movwf	((store_events@i_298+1))&0ffh
	movlw	low(0)
	movwf	((store_events@i_298))&0ffh
	
l3460:; BSR set to: 0

	btfsc	((store_events@i_298+1))&0ffh,7
	goto	u2361
	movlw	136
	subwf	 ((store_events@i_298))&0ffh,w
	movlw	19
	subwfb	((store_events@i_298+1))&0ffh,w
	btfss	status,0
	goto	u2361
	goto	u2360

u2361:
	goto	l3464
u2360:
	goto	l3472
	
l3464:; BSR set to: 0

	infsnz	((store_events@i_298))&0ffh
	incf	((store_events@i_298+1))&0ffh
	goto	l3460
	line	249
	
l3468:; BSR set to: 0

	infsnz	((store_events@i))&0ffh
	incf	((store_events@i+1))&0ffh
	
l3470:; BSR set to: 0

		movf	((c:store_events@event_cnt))^00h,c,w
	subwf	((store_events@i))&0ffh,w
	movf	((store_events@i+1))&0ffh,w
	xorlw	80h
	movwf	(??_store_events+0+0)^00h,c
	movf	((c:store_events@event_cnt+1))^00h,c,w
	xorlw	80h
	subwfb	(??_store_events+0+0)^00h,c,w
	btfss	status,0
	goto	u2371
	goto	u2370

u2371:
	goto	l3410
u2370:
	line	283
	
l3472:
;set_event.c: 278: };set_event.c: 279: };set_event.c: 280: };set_event.c: 281: };set_event.c: 283: if (flag) {
	movlb	0	; () banked
	movf	((store_events@flag))&0ffh,w
iorwf	((store_events@flag+1))&0ffh,w
	btfsc	status,2
	goto	u2381
	goto	u2380

u2381:
	goto	l402
u2380:
	line	284
	
l3474:; BSR set to: 0

;set_event.c: 284: addr = 5 * i;
	movf	((store_events@i))&0ffh,w
	mullw	05h
	movff	prodl,(store_events@addr)
	line	285
	
l3476:; BSR set to: 0

;set_event.c: 285: write_24c02(addr++, hour / 10);
	movff	(c:store_events@hour),(c:___awdiv@dividend)
	movff	(c:store_events@hour+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	
l3478:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	286
	
l3480:; BSR set to: 0

;set_event.c: 286: write_24c02(addr++, hour % 10);
	movff	(c:store_events@hour),(c:___awmod@dividend)
	movff	(c:store_events@hour+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	
l3482:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	287
	
l3484:; BSR set to: 0

;set_event.c: 287: write_24c02(addr++, min / 10);
	movff	(c:store_events@min),(c:___awdiv@dividend)
	movff	(c:store_events@min+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	
l3486:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	288
	
l3488:; BSR set to: 0

;set_event.c: 288: write_24c02(addr++, min % 10);
	movff	(c:store_events@min),(c:___awmod@dividend)
	movff	(c:store_events@min+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	
l3490:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	289
	
l3492:; BSR set to: 0

;set_event.c: 289: write_24c02(addr++, am_pm);
	movff	(c:store_events@am_pm),(c:write_24c02@data)
	movf	((store_events@addr))&0ffh,w
	
	call	_write_24c02
	
l3494:
	movlb	0	; () banked
	incf	((store_events@addr))&0ffh
	line	290
	
l3496:; BSR set to: 0

;set_event.c: 290: clcd_print("Event stored...", (0x80 + (0)));
		movlw	low(STR_57)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_57)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	291
	
l3498:
;set_event.c: 291: addr = 5 * i;
	movlb	0	; () banked
	movf	((store_events@i))&0ffh,w
	mullw	05h
	movff	prodl,(store_events@addr)
	line	293
	
l3500:; BSR set to: 0

;set_event.c: 292: char arr[10];;set_event.c: 293: int hr1 = (read_24c02(addr) * 10) + read_24c02(addr+1);
	incf	((store_events@addr))&0ffh,w
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	
	call	_read_24c02
	movwf	(??_store_events+1+0)^00h,c
	movf	((??_store_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_store_events+2+0
	movff	prodh,??_store_events+2+0+1
	movf	((??_store_events+0+0))^00h,c,w
	addwf	(??_store_events+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@hr1_301))&0ffh
	movlw	0
	addwfc	(??_store_events+2+1)^00h,c,w
	movwf	1+((store_events@hr1_301))&0ffh
	line	294
	
l3502:; BSR set to: 0

;set_event.c: 294: int mn1 = (read_24c02(addr+2) * 10) + read_24c02(addr+3);
	movf	((store_events@addr))&0ffh,w
	addlw	low(03h)
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movlb	0	; () banked
	movf	((store_events@addr))&0ffh,w
	addlw	low(02h)
	
	call	_read_24c02
	movwf	(??_store_events+1+0)^00h,c
	movf	((??_store_events+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_store_events+2+0
	movff	prodh,??_store_events+2+0+1
	movf	((??_store_events+0+0))^00h,c,w
	addwf	(??_store_events+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@mn1_302))&0ffh
	movlw	0
	addwfc	(??_store_events+2+1)^00h,c,w
	movwf	1+((store_events@mn1_302))&0ffh
	line	295
	
l3504:; BSR set to: 0

;set_event.c: 295: int am_pm1 = read_24c02(addr+4);
	movf	((store_events@addr))&0ffh,w
	addlw	low(04h)
	
	call	_read_24c02
	movwf	(??_store_events+0+0)^00h,c
	movf	((??_store_events+0+0))^00h,c,w
	movlb	0	; () banked
	movwf	((store_events@am_pm1_303))&0ffh
	clrf	((store_events@am_pm1_303+1))&0ffh
	line	302
	
l3506:; BSR set to: 0

;set_event.c: 302: arr[0] = '0' + (hr1 / 10);
	movff	(store_events@hr1_301),(c:___awdiv@dividend)
	movff	(store_events@hr1_301+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((store_events@arr_300))&0ffh
	line	303
	
l3508:; BSR set to: 0

;set_event.c: 303: arr[1] = '0' + (hr1 % 10);
	movff	(store_events@hr1_301),(c:___awmod@dividend)
	movff	(store_events@hr1_301+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(store_events@arr_300+01h))&0ffh
	line	304
	
l3510:; BSR set to: 0

;set_event.c: 304: arr[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(store_events@arr_300+02h))&0ffh
	line	306
	
l3512:; BSR set to: 0

;set_event.c: 306: arr[3] = '0' + (mn1 / 10);
	movff	(store_events@mn1_302),(c:___awdiv@dividend)
	movff	(store_events@mn1_302+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(store_events@arr_300+03h))&0ffh
	line	307
	
l3514:; BSR set to: 0

;set_event.c: 307: arr[4] = '0' + (mn1 % 10);
	movff	(store_events@mn1_302),(c:___awmod@dividend)
	movff	(store_events@mn1_302+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(store_events@arr_300+04h))&0ffh
	line	308
	
l3516:; BSR set to: 0

;set_event.c: 308: arr[5] = ' ';
	movlw	low(020h)
	movwf	(0+(store_events@arr_300+05h))&0ffh
	line	311
	
l3520:; BSR set to: 0

;set_event.c: 311: arr[6] = 'P';
	movlw	low(050h)
	movwf	(0+(store_events@arr_300+06h))&0ffh
	line	312
;set_event.c: 312: arr[7] = 'M';
	movlw	low(04Dh)
	movwf	(0+(store_events@arr_300+07h))&0ffh
	line	317
;set_event.c: 313: } else {
	
l3524:; BSR set to: 0

;set_event.c: 316: };set_event.c: 317: arr[8] = '\0';
	clrf	(0+(store_events@arr_300+08h))&0ffh
	line	318
	
l3526:; BSR set to: 0

;set_event.c: 318: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_58)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_58)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	319
	
l3528:
;set_event.c: 319: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_59)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_59)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	320
	
l3530:
;set_event.c: 320: clcd_print("# STORED EVENTS..", (0x80 + (0)));
		movlw	low(STR_60)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_60)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	321
	
l3532:
;set_event.c: 321: clcd_print(arr,(0xC0 + (0)));
		movlw	low(store_events@arr_300)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	322
;set_event.c: 322: for (int j = 0; j < 50000; j++);
	movlw	high(0)
	movlb	0	; () banked
	movwf	((store_events@j+1))&0ffh
	movlw	low(0)
	movwf	((store_events@j))&0ffh
	
l3536:; BSR set to: 0

	infsnz	((store_events@j))&0ffh
	incf	((store_events@j+1))&0ffh
	goto	l3536
	line	326
	
l402:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_store_events
	__end_of_store_events:
	signat	_store_events,16505
	global	_shift_store_event

;; *************** function _shift_store_event *****************
;; Defined at:
;;		line 328 in file "set_event.c"
;; Parameters:    Size  Location     Type
;;  i               2   12[COMRAM] int 
;;  addr            2   14[COMRAM] int 
;;  event_count     2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  addr1           1   30[COMRAM] unsigned char 
;;  j               2   28[COMRAM] int 
;;  mn              2   26[COMRAM] int 
;;  hr              2   24[COMRAM] int 
;;  a_p             2   22[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        19       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_read_24c02
;;		_write_24c02
;; This function is called by:
;;		_store_events
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	line	328
global __ptext8
__ptext8:
psect	text8
	file	"set_event.c"
	line	328
	
_shift_store_event:; BSR set to: 0

;incstack = 0
	callstack 23
	line	330
	
l3190:
;set_event.c: 329: int hr, mn, a_p;;set_event.c: 330: for (int j = event_count; j > i; j--) {
	movff	(c:shift_store_event@event_count),(c:shift_store_event@j)
	movff	(c:shift_store_event@event_count+1),(c:shift_store_event@j+1)
	goto	l3212
	line	331
	
l3192:
;set_event.c: 331: char addr1 = 5 * (j - 1);
	decf	((c:shift_store_event@j))^00h,c,w
	mullw	05h
	movff	prodl,(c:shift_store_event@addr1)
	line	332
	
l3194:
;set_event.c: 332: hr = (read_24c02(addr1) * 10) + read_24c02(addr1 + 1);
	incf	((c:shift_store_event@addr1))^00h,c,w
	
	call	_read_24c02
	movwf	(??_shift_store_event+0+0)^00h,c
	movf	((c:shift_store_event@addr1))^00h,c,w
	
	call	_read_24c02
	movwf	(??_shift_store_event+1+0)^00h,c
	movf	((??_shift_store_event+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_shift_store_event+2+0
	movff	prodh,??_shift_store_event+2+0+1
	movf	((??_shift_store_event+0+0))^00h,c,w
	addwf	(??_shift_store_event+2+0)^00h,c,w
	movwf	((c:shift_store_event@hr))^00h,c
	movlw	0
	addwfc	(??_shift_store_event+2+1)^00h,c,w
	movwf	1+((c:shift_store_event@hr))^00h,c
	line	333
	
l3196:
;set_event.c: 333: mn = (read_24c02(addr1 + 2) * 10) + read_24c02(addr1 + 3);
	movf	((c:shift_store_event@addr1))^00h,c,w
	addlw	low(03h)
	
	call	_read_24c02
	movwf	(??_shift_store_event+0+0)^00h,c
	movf	((c:shift_store_event@addr1))^00h,c,w
	addlw	low(02h)
	
	call	_read_24c02
	movwf	(??_shift_store_event+1+0)^00h,c
	movf	((??_shift_store_event+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_shift_store_event+2+0
	movff	prodh,??_shift_store_event+2+0+1
	movf	((??_shift_store_event+0+0))^00h,c,w
	addwf	(??_shift_store_event+2+0)^00h,c,w
	movwf	((c:shift_store_event@mn))^00h,c
	movlw	0
	addwfc	(??_shift_store_event+2+1)^00h,c,w
	movwf	1+((c:shift_store_event@mn))^00h,c
	line	334
	
l3198:
;set_event.c: 334: a_p = read_24c02(addr1 + 4);
	movf	((c:shift_store_event@addr1))^00h,c,w
	addlw	low(04h)
	
	call	_read_24c02
	movwf	(??_shift_store_event+0+0)^00h,c
	movf	((??_shift_store_event+0+0))^00h,c,w
	movwf	((c:shift_store_event@a_p))^00h,c
	clrf	((c:shift_store_event@a_p+1))^00h,c
	line	336
	
l3200:
;set_event.c: 336: write_24c02(addr1, hr / 10);
	movff	(c:shift_store_event@hr),(c:___awdiv@dividend)
	movff	(c:shift_store_event@hr+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movf	((c:shift_store_event@addr1))^00h,c,w
	
	call	_write_24c02
	line	337
	
l3202:
;set_event.c: 337: write_24c02(addr1 + 1, hr % 10);
	movff	(c:shift_store_event@hr),(c:___awmod@dividend)
	movff	(c:shift_store_event@hr+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	incf	((c:shift_store_event@addr1))^00h,c,w
	
	call	_write_24c02
	line	338
	
l3204:
;set_event.c: 338: write_24c02(addr1 + 2, mn / 10);
	movff	(c:shift_store_event@mn),(c:___awdiv@dividend)
	movff	(c:shift_store_event@mn+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movf	((c:shift_store_event@addr1))^00h,c,w
	addlw	low(02h)
	
	call	_write_24c02
	line	339
	
l3206:
;set_event.c: 339: write_24c02(addr1 + 3, mn % 10);
	movff	(c:shift_store_event@mn),(c:___awmod@dividend)
	movff	(c:shift_store_event@mn+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:write_24c02@data))^00h,c
	movf	((c:shift_store_event@addr1))^00h,c,w
	addlw	low(03h)
	
	call	_write_24c02
	line	340
	
l3208:
;set_event.c: 340: write_24c02(addr1 + 4, a_p);
	movff	(c:shift_store_event@a_p),(c:write_24c02@data)
	movf	((c:shift_store_event@addr1))^00h,c,w
	addlw	low(04h)
	
	call	_write_24c02
	line	330
	
l3210:
	decf	((c:shift_store_event@j))^00h,c
	btfss	status,0
	decf	((c:shift_store_event@j+1))^00h,c
	
l3212:
		movf	((c:shift_store_event@j))^00h,c,w
	subwf	((c:shift_store_event@i))^00h,c,w
	movf	((c:shift_store_event@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_shift_store_event+0+0)^00h,c
	movf	((c:shift_store_event@j+1))^00h,c,w
	xorlw	80h
	subwfb	(??_shift_store_event+0+0)^00h,c,w
	btfss	status,0
	goto	u2181
	goto	u2180

u2181:
	goto	l3192
u2180:
	line	342
	
l408:
	return	;funcret
	callstack 0
GLOBAL	__end_of_shift_store_event
	__end_of_shift_store_event:
	signat	_shift_store_event,12409
	global	_write_24c02

;; *************** function _write_24c02 *****************
;; Defined at:
;;		line 6 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   11[COMRAM] unsigned char 
;;  delay           2    9[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_store_events
;;		_shift_store_event
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"eeprom.c"
	line	6
global __ptext9
__ptext9:
psect	text9
	file	"eeprom.c"
	line	6
	
_write_24c02:
;incstack = 0
	callstack 25
;write_24c02@address stored from wreg
	movwf	((c:write_24c02@address))^00h,c
	line	9
	
l3030:
;eeprom.c: 9: i2c_start();
	call	_i2c_start	;wreg free
	line	12
	
l3032:
;eeprom.c: 12: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	15
	
l3034:
;eeprom.c: 15: i2c_write(address);
	movf	((c:write_24c02@address))^00h,c,w
	
	call	_i2c_write
	line	18
	
l3036:
;eeprom.c: 18: i2c_write(data);
	movf	((c:write_24c02@data))^00h,c,w
	
	call	_i2c_write
	line	21
	
l3038:
;eeprom.c: 21: i2c_stop();
	call	_i2c_stop	;wreg free
	line	23
	
l3040:
;eeprom.c: 23: for(unsigned int delay = 3000; delay--; );
	movlw	high(0BB8h)
	movwf	((c:write_24c02@delay+1))^00h,c
	movlw	low(0BB8h)
	movwf	((c:write_24c02@delay))^00h,c
	
l3042:
	decf	((c:write_24c02@delay))^00h,c
	btfss	status,0
	decf	((c:write_24c02@delay+1))^00h,c
		incf	((c:write_24c02@delay))^00h,c,w
	bnz	u1991
	incf	((c:write_24c02@delay+1))^00h,c,w
	btfss	status,2
	goto	u1991
	goto	u1990

u1991:
	goto	l3042
u1990:
	line	24
	
l103:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_24c02
	__end_of_write_24c02:
	signat	_write_24c02,8313
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_events
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lwmod.c"
	line	7
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 28
	line	12
	
l3682:; BSR set to: 0

	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2551
	goto	u2550

u2551:
	goto	l1286
u2550:
	line	13
	
l3684:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l3688
	line	15
	
l3686:; BSR set to: 0

	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l3688:; BSR set to: 0

	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3686
u2560:
	line	19
	
l3690:; BSR set to: 0

		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2571
	goto	u2570

u2571:
	goto	l3694
u2570:
	line	20
	
l3692:; BSR set to: 0

	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l3694:; BSR set to: 0

	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l3696:; BSR set to: 0

	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l3690
	line	23
	
l1286:; BSR set to: 0

	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l1293:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_set_date

;; *************** function _set_date *****************
;; Defined at:
;;		line 20 in file "set_date.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___awmod
;;		___lbdiv
;;		___lbmod
;;		_clcd_print
;;		_clcd_putch
;;		_write_ds1307
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"set_date.c"
	line	20
global __ptext11
__ptext11:
psect	text11
	file	"set_date.c"
	line	20
	
_set_date:; BSR set to: 0

;incstack = 0
	callstack 26
	line	22
	
l4050:
;set_date.c: 22: if (!set_once) {
	movlb	0	; () banked
	movf	((_set_once))&0ffh,w
iorwf	((_set_once+1))&0ffh,w
	btfss	status,2
	goto	u3131
	goto	u3130

u3131:
	goto	l4056
u3130:
	line	24
	
l4052:; BSR set to: 0

;set_date.c: 24: date_info= (date[0] - '0') * 10 + (date[1] - '0');
	movf	((_date))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_date+01h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_date_info))^00h,c
	line	25
;set_date.c: 25: month = (date[3] - '0') * 10 + (date[4] - '0');
	movf	(0+(_date+03h))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_date+04h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_month))^00h,c
	line	26
;set_date.c: 26: year = (date[6] - '0') * 10 + (date[7] - '0');
	movf	(0+(_date+06h))&0ffh,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(0+(_date+07h))&0ffh,w
	addlw	low(0F0h)
	movwf	((c:_year))^00h,c
	line	27
	
l4054:; BSR set to: 0

;set_date.c: 27: set_once = 1;
	movlw	high(01h)
	movwf	((_set_once+1))&0ffh
	movlw	low(01h)
	movwf	((_set_once))&0ffh
	line	31
	
l4056:; BSR set to: 0

;set_date.c: 28: };set_date.c: 31: date_arr[0] = '0' + (date_info / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_date_info))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_date_arr))&0ffh
	line	32
	
l4058:; BSR set to: 0

;set_date.c: 32: date_arr[1] = '0' + (date_info % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_date_info))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_date_arr+01h))&0ffh
	line	33
	
l4060:; BSR set to: 0

;set_date.c: 33: date_arr[2] = '-';
	movlw	low(02Dh)
	movwf	(0+(_date_arr+02h))&0ffh
	line	34
	
l4062:; BSR set to: 0

;set_date.c: 34: date_arr[3] = '0' + (month / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_month))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_date_arr+03h))&0ffh
	line	35
	
l4064:; BSR set to: 0

;set_date.c: 35: date_arr[4] = '0' + (month % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_month))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_date_arr+04h))&0ffh
	line	36
	
l4066:; BSR set to: 0

;set_date.c: 36: date_arr[5] = '-';
	movlw	low(02Dh)
	movwf	(0+(_date_arr+05h))&0ffh
	line	37
	
l4068:; BSR set to: 0

;set_date.c: 37: date_arr[6] = '0' + (year / 10);
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_year))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_date_arr+06h))&0ffh
	line	38
	
l4070:; BSR set to: 0

;set_date.c: 38: date_arr[7] = '0' + (year% 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_year))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_date_arr+07h))&0ffh
	line	39
	
l4072:; BSR set to: 0

;set_date.c: 39: date_arr[8] = '\0';
	clrf	(0+(_date_arr+08h))&0ffh
	line	42
	
l4074:; BSR set to: 0

;set_date.c: 42: clcd_print("    DD:MM:YY Day    ", (0x80 + (0)));
		movlw	low(STR_68)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_68)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	43
	
l4076:
;set_date.c: 43: clcd_print("    ", (0xC0 + (0)));
		movlw	low(STR_69)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_69)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	44
	
l4078:
;set_date.c: 44: clcd_print(date_arr, (0xC0 + (1)));
		movlw	low(_date_arr)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	45
	
l4080:
;set_date.c: 45: clcd_print(days[day-1], (0xC0 + (10)));
	movf	((c:_day))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_days+0FEh)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_set_date+0+0
	movff	postdec2,??_set_date+0+0+1
		movff	??_set_date+0+0,(c:clcd_print@data)
	movff	??_set_date+0+1,(c:clcd_print@data+1)
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CAh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	48
	
l4082:
;set_date.c: 48: if (key == 1) {
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3141
	goto	u3140

u3141:
	goto	l4086
u3140:
	line	49
	
l4084:
;set_date.c: 49: field_select = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_field_select+1))&0ffh
	movlw	low(01h)
	movwf	((_field_select))&0ffh
	line	53
	
l4086:
;set_date.c: 50: };set_date.c: 53: if (++delay == 150) {
	movlb	0	; () banked
	infsnz	((_delay))&0ffh
	incf	((_delay+1))&0ffh
		movlw	150
	xorwf	((_delay))&0ffh,w
iorwf	((_delay+1))&0ffh,w
	btfss	status,2
	goto	u3151
	goto	u3150

u3151:
	goto	l4092
u3150:
	line	54
	
l4088:; BSR set to: 0

;set_date.c: 54: set_flag = !set_flag;
	movf	((c:_set_flag))^00h,c,w
iorwf	((c:_set_flag+1))^00h,c,w
	btfsc	status,2
	goto	u3161
	goto	u3160

u3161:
	movlw	1
	goto	u3170
u3160:
	movlw	0
u3170:
	movwf	((c:_set_flag))^00h,c
	clrf	((c:_set_flag+1))^00h,c
	line	55
	
l4090:; BSR set to: 0

;set_date.c: 55: delay = 0;
	movlw	high(0)
	movwf	((_delay+1))&0ffh
	movlw	low(0)
	movwf	((_delay))&0ffh
	line	59
	
l4092:; BSR set to: 0

;set_date.c: 56: };set_date.c: 59: if (key == 2) {
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3181
	goto	u3180

u3181:
	goto	l456
u3180:
	line	60
	
l4094:; BSR set to: 0

;set_date.c: 60: sw_press = (sw_press + 1) % 4;
	movlw	01h
	addwf	((c:_sw_press))^00h,c,w
	movwf	(??_set_date+0+0)^00h,c
	movlw	0
	addwfc	((c:_sw_press+1))^00h,c,w
	movwf	(??_set_date+0+0+1)^00h,c
	movlw	03h
	andwf	(??_set_date+0+0)^00h,c,w
	movwf	((c:_sw_press))^00h,c
	clrf	1+((c:_sw_press))^00h,c
	line	61
	
l456:; BSR set to: 0

	line	64
;set_date.c: 61: };set_date.c: 64: if (field_select) {
	movf	((_field_select))&0ffh,w
iorwf	((_field_select+1))&0ffh,w
	btfsc	status,2
	goto	u3191
	goto	u3190

u3191:
	goto	l4130
u3190:
	line	65
	
l4096:; BSR set to: 0

;set_date.c: 65: if (sw_press == 0) {
	movf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3201
	goto	u3200

u3201:
	goto	l4104
u3200:
	line	66
	
l4098:; BSR set to: 0

;set_date.c: 66: day++;
	infsnz	((c:_day))^00h,c
	incf	((c:_day+1))^00h,c
	line	67
	
l4100:; BSR set to: 0

;set_date.c: 67: if(day == 8)
		movlw	8
	xorwf	((c:_day))^00h,c,w
iorwf	((c:_day+1))^00h,c,w
	btfss	status,2
	goto	u3211
	goto	u3210

u3211:
	goto	l460
u3210:
	line	69
	
l4102:; BSR set to: 0

;set_date.c: 68: {;set_date.c: 69: day = 0;
	movlw	high(0)
	movwf	((c:_day+1))^00h,c
	movlw	low(0)
	movwf	((c:_day))^00h,c
	goto	l460
	line	70
	
l459:; BSR set to: 0

	line	72
;set_date.c: 70: };set_date.c: 72: } else if (sw_press == 1) {
	goto	l460
	
l4104:; BSR set to: 0

		decf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3221
	goto	u3220

u3221:
	goto	l4114
u3220:
	line	73
	
l4106:; BSR set to: 0

;set_date.c: 73: year++;
	incf	((c:_year))^00h,c
	line	74
	
l4108:; BSR set to: 0

;set_date.c: 74: if(year == 100)
		movlw	100
	xorwf	((c:_year))^00h,c,w
	btfss	status,2
	goto	u3231
	goto	u3230

u3231:
	goto	l4112
u3230:
	line	76
	
l4110:; BSR set to: 0

;set_date.c: 75: {;set_date.c: 76: year = 0;
	clrf	((c:_year))^00h,c
	line	78
	
l4112:; BSR set to: 0

;set_date.c: 77: };set_date.c: 78: year = (year + 1) % 99;
	movlw	low(01h)
	addwf	((c:_year))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	clrf	1+((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	1+((c:___awmod@dividend))^00h,c
	movlw	high(063h)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(063h)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:_year))^00h,c
	line	79
;set_date.c: 79: } else if (sw_press == 2) {
	goto	l460
	
l4114:; BSR set to: 0

		movlw	2
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3241
	goto	u3240

u3241:
	goto	l4122
u3240:
	line	80
	
l4116:; BSR set to: 0

;set_date.c: 80: month++;
	incf	((c:_month))^00h,c
	line	81
	
l4118:; BSR set to: 0

;set_date.c: 81: if(month == 13)
		movlw	13
	xorwf	((c:_month))^00h,c,w
	btfss	status,2
	goto	u3251
	goto	u3250

u3251:
	goto	l460
u3250:
	line	83
	
l4120:; BSR set to: 0

;set_date.c: 82: {;set_date.c: 83: month = 1;
	movlw	low(01h)
	movwf	((c:_month))^00h,c
	goto	l460
	line	86
	
l4122:; BSR set to: 0

;set_date.c: 86: else if (sw_press == 3) {
		movlw	3
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3261
	goto	u3260

u3261:
	goto	l460
u3260:
	line	87
	
l4124:; BSR set to: 0

;set_date.c: 87: date_info++;
	incf	((c:_date_info))^00h,c
	line	88
	
l4126:; BSR set to: 0

;set_date.c: 88: if(date_info == 32)
		movlw	32
	xorwf	((c:_date_info))^00h,c,w
	btfss	status,2
	goto	u3271
	goto	u3270

u3271:
	goto	l459
u3270:
	line	89
	
l4128:; BSR set to: 0

;set_date.c: 89: date_info=1;
	movlw	low(01h)
	movwf	((c:_date_info))^00h,c
	line	91
	
l460:
;set_date.c: 90: };set_date.c: 91: field_select = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_field_select+1))&0ffh
	movlw	low(0)
	movwf	((_field_select))&0ffh
	line	95
	
l4130:; BSR set to: 0

;set_date.c: 92: };set_date.c: 95: if (set_flag) {
	movf	((c:_set_flag))^00h,c,w
iorwf	((c:_set_flag+1))^00h,c,w
	btfsc	status,2
	goto	u3281
	goto	u3280

u3281:
	goto	l4148
u3280:
	line	96
	
l4132:; BSR set to: 0

;set_date.c: 96: if (sw_press == 0) {
	movf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3291
	goto	u3290

u3291:
	goto	l4136
u3290:
	line	97
	
l4134:; BSR set to: 0

;set_date.c: 97: clcd_putch(' ', (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	98
;set_date.c: 98: clcd_putch(' ', (0xC0 + (11)));
	movlw	low(0CBh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	99
;set_date.c: 99: } else if (sw_press == 1) {
	goto	l4148
	
l4136:; BSR set to: 0

		decf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3301
	goto	u3300

u3301:
	goto	l4140
u3300:
	line	100
	
l4138:; BSR set to: 0

;set_date.c: 100: clcd_putch(' ', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	101
;set_date.c: 101: clcd_putch(' ', (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	102
;set_date.c: 102: } else if (sw_press == 2) {
	goto	l4148
	
l4140:; BSR set to: 0

		movlw	2
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3311
	goto	u3310

u3311:
	goto	l4144
u3310:
	line	103
	
l4142:; BSR set to: 0

;set_date.c: 103: clcd_putch(' ', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	104
;set_date.c: 104: clcd_putch(' ', (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	105
;set_date.c: 105: }
	goto	l4148
	line	106
	
l4144:; BSR set to: 0

;set_date.c: 106: else if (sw_press == 3) {
		movlw	3
	xorwf	((c:_sw_press))^00h,c,w
iorwf	((c:_sw_press+1))^00h,c,w
	btfss	status,2
	goto	u3321
	goto	u3320

u3321:
	goto	l471
u3320:
	line	107
	
l4146:; BSR set to: 0

;set_date.c: 107: clcd_putch(' ', (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	108
;set_date.c: 108: clcd_putch(' ', (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l4148
	line	110
	
l471:; BSR set to: 0

	line	113
	
l4148:
;set_date.c: 109: };set_date.c: 110: };set_date.c: 113: if (key == 4) {
		movlw	4
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3331
	goto	u3330

u3331:
	goto	l4170
u3330:
	line	114
	
l4150:
;set_date.c: 114: e_date = ((date_info / 10) << 4) | (date_info % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_date_info))^00h,c,w
	
	call	___lbmod
	movwf	(??_set_date+0+0)^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_date_info))^00h,c,w
	
	call	___lbdiv
	movwf	(??_set_date+1+0)^00h,c
	swapf	((??_set_date+1+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((??_set_date+0+0))^00h,c,w
	movwf	((c:_e_date))^00h,c
	line	115
;set_date.c: 115: e_year = ((year / 10) << 4) | (year % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_year))^00h,c,w
	
	call	___lbmod
	movwf	(??_set_date+0+0)^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_year))^00h,c,w
	
	call	___lbdiv
	movwf	(??_set_date+1+0)^00h,c
	swapf	((??_set_date+1+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((??_set_date+0+0))^00h,c,w
	movwf	((c:_e_year))^00h,c
	line	116
;set_date.c: 116: e_month = ((month / 10) << 4) | (month % 10);
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_month))^00h,c,w
	
	call	___lbmod
	movwf	(??_set_date+0+0)^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_month))^00h,c,w
	
	call	___lbdiv
	movwf	(??_set_date+1+0)^00h,c
	swapf	((??_set_date+1+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((??_set_date+0+0))^00h,c,w
	movwf	((c:_e_month))^00h,c
	line	117
	
l4152:
;set_date.c: 117: e_day = day;
	movff	(c:_day),(c:_e_day)
	line	119
	
l4154:
;set_date.c: 119: write_ds1307(0x04, e_date);
	movff	(c:_e_date),(c:write_ds1307@data)
	movlw	(04h)&0ffh
	
	call	_write_ds1307
	line	120
	
l4156:
;set_date.c: 120: write_ds1307(0x05, e_month);
	movff	(c:_e_month),(c:write_ds1307@data)
	movlw	(05h)&0ffh
	
	call	_write_ds1307
	line	121
	
l4158:
;set_date.c: 121: write_ds1307(0x06, e_year);
	movff	(c:_e_year),(c:write_ds1307@data)
	movlw	(06h)&0ffh
	
	call	_write_ds1307
	line	122
	
l4160:
;set_date.c: 122: write_ds1307(0x03, e_day);
	movff	(c:_e_day),(c:write_ds1307@data)
	movlw	(03h)&0ffh
	
	call	_write_ds1307
	line	123
	
l4162:
;set_date.c: 123: clcd_print("                ",(0x80 + (0)));
		movlw	low(STR_70)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_70)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	124
	
l4164:
;set_date.c: 124: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_71)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_71)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	125
	
l4166:
;set_date.c: 125: clcd_print("Date is updated",(0xC0 + (1)));
		movlw	low(STR_72)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_72)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	126
	
l4168:
;set_date.c: 126: screen_flag = 3;
	movlw	low(03h)
	movwf	((c:_screen_flag))^00h,c
	line	130
	
l4170:
;set_date.c: 127: };set_date.c: 130: if (key == 5) {
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3341
	goto	u3340

u3341:
	goto	l479
u3340:
	line	131
	
l4172:
;set_date.c: 131: screen_flag = 3;
	movlw	low(03h)
	movwf	((c:_screen_flag))^00h,c
	line	133
	
l479:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_date
	__end_of_set_date:
	signat	_set_date,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 60 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_set_events
;;		_set_date
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	60
global __ptext12
__ptext12:
psect	text12
	file	"clcd.c"
	line	60
	
_clcd_putch:
;incstack = 0
	callstack 27
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data))^00h,c
	line	62
	
l3346:
;clcd.c: 62: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@addr))^00h,c,w
	
	call	_clcd_write
	line	63
;clcd.c: 63: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@data))^00h,c,w
	
	call	_clcd_write
	line	64
	
l661:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMRAM] unsigned char 
;;  rem             1    3[COMRAM] unsigned char 
;;  counter         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_events
;;		_set_date
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lbmod.c"
	line	4
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lbmod.c"
	line	4
	
___lbmod:
;incstack = 0
	callstack 28
;___lbmod@dividend stored from wreg
	movwf	((c:___lbmod@dividend))^00h,c
	line	9
	
l3664:
	movlw	low(08h)
	movwf	((c:___lbmod@counter))^00h,c
	line	10
	
l3666:
	clrf	((c:___lbmod@rem))^00h,c
	line	12
	
l3668:
	bcf	status,0
	rlcf	((c:___lbmod@dividend))^00h,c,w
	rlcf	((c:___lbmod@rem))^00h,c,w
	movwf	((c:___lbmod@rem))^00h,c
	line	13
	
l3670:
	bcf status,0
	rlcf	((c:___lbmod@dividend))^00h,c

	line	14
	
l3672:
		movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c,w
	btfss	status,0
	goto	u2541
	goto	u2540

u2541:
	goto	l3676
u2540:
	line	15
	
l3674:
	movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c
	line	16
	
l3676:
	decfsz	((c:___lbmod@counter))^00h,c
	
	goto	l3668
	line	17
	
l3678:
	movf	((c:___lbmod@rem))^00h,c,w
	line	18
	
l1197:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMRAM] unsigned char 
;;  quotient        1    3[COMRAM] unsigned char 
;;  counter         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_events
;;		_set_date
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lbdiv.c"
	line	4
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\lbdiv.c"
	line	4
	
___lbdiv:
;incstack = 0
	callstack 28
;___lbdiv@dividend stored from wreg
	movwf	((c:___lbdiv@dividend))^00h,c
	line	9
	
l3638:
	clrf	((c:___lbdiv@quotient))^00h,c
	line	10
	
l3640:
	movf	((c:___lbdiv@divisor))^00h,c,w
	btfsc	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l3660
u2510:
	line	11
	
l3642:
	movlw	low(01h)
	movwf	((c:___lbdiv@counter))^00h,c
	line	12
	goto	l3648
	line	13
	
l3644:
	bcf status,0
	rlcf	((c:___lbdiv@divisor))^00h,c

	line	14
	
l3646:
	incf	((c:___lbdiv@counter))^00h,c
	line	12
	
l3648:
	
	btfss	((c:___lbdiv@divisor))^00h,c,(7)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l3644
u2520:
	line	17
	
l3650:
	bcf status,0
	rlcf	((c:___lbdiv@quotient))^00h,c

	line	18
		movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c,w
	btfss	status,0
	goto	u2531
	goto	u2530

u2531:
	goto	l3656
u2530:
	line	19
	
l3652:
	movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c
	line	20
	
l3654:
	bsf	(0+(0/8)+(c:___lbdiv@quotient))^00h,c,(0)&7
	line	22
	
l3656:
	bcf status,0
	rrcf	((c:___lbdiv@divisor))^00h,c

	line	23
	
l3658:
	decfsz	((c:___lbdiv@counter))^00h,c
	
	goto	l3650
	line	25
	
l3660:
	movf	((c:___lbdiv@quotient))^00h,c,w
	line	26
	
l1191:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 92 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	92
global __ptext15
__ptext15:
psect	text15
	file	"matrix_keypad.c"
	line	92
	
_read_switches:
;incstack = 0
	callstack 28
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type))^00h,c
	line	96
	
l4174:
;matrix_keypad.c: 94: static unsigned char once = 1, key;;matrix_keypad.c: 96: if (detection_type == 1)
		decf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u3351
	goto	u3350

u3351:
	goto	l4194
u3350:
	line	98
	
l4176:
;matrix_keypad.c: 97: {;matrix_keypad.c: 98: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key))^00h,c
	line	99
	
l4178:
;matrix_keypad.c: 99: if(key != 0xFF && once )
		incf	((c:read_switches@key))^00h,c,w
	btfsc	status,2
	goto	u3361
	goto	u3360

u3361:
	goto	l4190
u3360:
	
l4180:
	movf	((c:read_switches@once))^00h,c,w
	btfsc	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l4190
u3370:
	line	101
	
l4182:
;matrix_keypad.c: 100: {;matrix_keypad.c: 101: once = 0;
	clrf	((c:read_switches@once))^00h,c
	line	102
	
l4184:
;matrix_keypad.c: 102: return key;
	movf	((c:read_switches@key))^00h,c,w
	goto	l525
	line	104
	
l4190:
;matrix_keypad.c: 104: else if(key == 0xFF)
		incf	((c:read_switches@key))^00h,c,w
	btfss	status,2
	goto	u3381
	goto	u3380

u3381:
	goto	l4200
u3380:
	line	106
	
l4192:
;matrix_keypad.c: 105: {;matrix_keypad.c: 106: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once))^00h,c
	goto	l4200
	line	109
	
l4194:
;matrix_keypad.c: 109: else if (detection_type == 0)
	movf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l4200
u3390:
	line	111
	
l4196:
;matrix_keypad.c: 110: {;matrix_keypad.c: 111: return scan_key();
	call	_scan_key	;wreg free
	goto	l525
	line	114
	
l4200:
;matrix_keypad.c: 112: };matrix_keypad.c: 114: return 0xFF;
	movlw	(0FFh)&0ffh
	line	115
	
l525:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 19 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	line	19
global __ptext16
__ptext16:
psect	text16
	file	"matrix_keypad.c"
	line	19
	
_scan_key:
;incstack = 0
	callstack 28
	line	21
	
l3544:
;matrix_keypad.c: 21: PORTBbits.RB5 = 0;
	bcf	((c:3969))^0f00h,c,5	;volatile
	line	22
;matrix_keypad.c: 22: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	23
;matrix_keypad.c: 23: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	25
;matrix_keypad.c: 25: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l495
u2390:
	line	27
	
l3546:
;matrix_keypad.c: 26: {;matrix_keypad.c: 27: return 1;
	movlw	(01h)&0ffh
	goto	l496
	line	29
	
l495:
;matrix_keypad.c: 29: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l498
u2400:
	line	31
	
l3552:
;matrix_keypad.c: 30: {;matrix_keypad.c: 31: return 4;
	movlw	(04h)&0ffh
	goto	l496
	line	33
	
l498:
;matrix_keypad.c: 33: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u2411
	goto	u2410
u2411:
	goto	l500
u2410:
	line	35
	
l3558:
;matrix_keypad.c: 34: {;matrix_keypad.c: 35: return 7;
	movlw	(07h)&0ffh
	goto	l496
	line	37
	
l500:
;matrix_keypad.c: 37: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u2421
	goto	u2420
u2421:
	goto	l497
u2420:
	line	39
	
l3564:
;matrix_keypad.c: 38: {;matrix_keypad.c: 39: return 10;
	movlw	(0Ah)&0ffh
	goto	l496
	line	42
	
l497:
;matrix_keypad.c: 40: };matrix_keypad.c: 42: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	43
;matrix_keypad.c: 43: PORTBbits.RB6 = 0;
	bcf	((c:3969))^0f00h,c,6	;volatile
	line	44
;matrix_keypad.c: 44: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	46
;matrix_keypad.c: 46: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u2431
	goto	u2430
u2431:
	goto	l503
u2430:
	line	48
	
l3568:
;matrix_keypad.c: 47: {;matrix_keypad.c: 48: return 2;
	movlw	(02h)&0ffh
	goto	l496
	line	50
	
l503:
;matrix_keypad.c: 50: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u2441
	goto	u2440
u2441:
	goto	l505
u2440:
	line	52
	
l3574:
;matrix_keypad.c: 51: {;matrix_keypad.c: 52: return 5;
	movlw	(05h)&0ffh
	goto	l496
	line	54
	
l505:
;matrix_keypad.c: 54: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u2451
	goto	u2450
u2451:
	goto	l507
u2450:
	line	56
	
l3580:
;matrix_keypad.c: 55: {;matrix_keypad.c: 56: return 8;
	movlw	(08h)&0ffh
	goto	l496
	line	58
	
l507:
;matrix_keypad.c: 58: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u2461
	goto	u2460
u2461:
	goto	l504
u2460:
	line	60
	
l3586:
;matrix_keypad.c: 59: {;matrix_keypad.c: 60: return 11;
	movlw	(0Bh)&0ffh
	goto	l496
	line	63
	
l504:
;matrix_keypad.c: 61: };matrix_keypad.c: 63: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	64
;matrix_keypad.c: 64: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	65
;matrix_keypad.c: 65: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	67
;matrix_keypad.c: 67: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	72
;matrix_keypad.c: 72: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u2471
	goto	u2470
u2471:
	goto	l510
u2470:
	line	74
	
l3590:
;matrix_keypad.c: 73: {;matrix_keypad.c: 74: return 3;
	movlw	(03h)&0ffh
	goto	l496
	line	76
	
l510:
;matrix_keypad.c: 76: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u2481
	goto	u2480
u2481:
	goto	l512
u2480:
	line	78
	
l3596:
;matrix_keypad.c: 77: {;matrix_keypad.c: 78: return 6;
	movlw	(06h)&0ffh
	goto	l496
	line	80
	
l512:
;matrix_keypad.c: 80: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u2491
	goto	u2490
u2491:
	goto	l514
u2490:
	line	82
	
l3602:
;matrix_keypad.c: 81: {;matrix_keypad.c: 82: return 9;
	movlw	(09h)&0ffh
	goto	l496
	line	84
	
l514:
;matrix_keypad.c: 84: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u2501
	goto	u2500
u2501:
	goto	l513
u2500:
	line	86
	
l3608:
;matrix_keypad.c: 85: {;matrix_keypad.c: 86: return 12;
	movlw	(0Ch)&0ffh
	goto	l496
	line	89
	
l513:
	
l3612:
;matrix_keypad.c: 87: };matrix_keypad.c: 89: return 0xFF;
	movlw	(0FFh)&0ffh
	line	90
	
l496:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_main_menu

;; *************** function _main_menu *****************
;; Defined at:
;;		line 18 in file "main_menu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"main_menu.c"
	line	18
global __ptext17
__ptext17:
psect	text17
	file	"main_menu.c"
	line	18
	
_main_menu:
;incstack = 0
	callstack 27
	line	20
	
l3698:
;main_menu.c: 20: if(key == 2)
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2581
	goto	u2580

u2581:
	goto	l3702
u2580:
	line	22
	
l3700:
;main_menu.c: 21: {;main_menu.c: 22: menu_flag = 1;
	movlw	high(01h)
	movwf	((c:_menu_flag+1))^00h,c
	movlw	low(01h)
	movwf	((c:_menu_flag))^00h,c
	line	23
;main_menu.c: 23: }
	goto	l3706
	line	24
	
l3702:
;main_menu.c: 24: else if(key == 1)
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2591
	goto	u2590

u2591:
	goto	l3706
u2590:
	line	26
	
l3704:
;main_menu.c: 25: {;main_menu.c: 26: menu_flag = 0;
	movlw	high(0)
	movwf	((c:_menu_flag+1))^00h,c
	movlw	low(0)
	movwf	((c:_menu_flag))^00h,c
	line	28
	
l3706:
;main_menu.c: 27: };main_menu.c: 28: if(!menu_flag)
	movf	((c:_menu_flag))^00h,c,w
iorwf	((c:_menu_flag+1))^00h,c,w
	btfss	status,2
	goto	u2601
	goto	u2600

u2601:
	goto	l3710
u2600:
	line	30
	
l3708:
;main_menu.c: 29: {;main_menu.c: 30: clcd_print("                ",(0x80 + (0)));
		movlw	low(STR_1)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_1)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	31
;main_menu.c: 31: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_2)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_2)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	32
;main_menu.c: 32: clcd_print("*",(0x80 + (0)));
		movlw	low(STR_3)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_3)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	33
;main_menu.c: 33: clcd_print("SET TIME/DATE",(0x80 + (2)));
		movlw	low(STR_4)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_4)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	34
;main_menu.c: 34: clcd_print("SET/VIEW EVENT",(0xC0 + (2)));
		movlw	low(STR_5)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_5)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	35
;main_menu.c: 35: }
	goto	l3714
	line	36
	
l3710:
;main_menu.c: 36: else if(menu_flag)
	movf	((c:_menu_flag))^00h,c,w
iorwf	((c:_menu_flag+1))^00h,c,w
	btfsc	status,2
	goto	u2611
	goto	u2610

u2611:
	goto	l3714
u2610:
	line	38
	
l3712:
;main_menu.c: 37: {;main_menu.c: 38: clcd_print("                ",(0x80 + (0)));
		movlw	low(STR_6)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_6)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	39
;main_menu.c: 39: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_7)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_7)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	40
;main_menu.c: 40: clcd_print("SET TIME/DATE",(0x80 + (2)));
		movlw	low(STR_8)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_8)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	41
;main_menu.c: 41: clcd_print("*",(0xC0 + (0)));
		movlw	low(STR_9)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_9)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	42
;main_menu.c: 42: clcd_print("SET/VIEW EVENT",(0xC0 + (2)));
		movlw	low(STR_10)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_10)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	44
	
l3714:
;main_menu.c: 43: };main_menu.c: 44: if(key == 4)
		movlw	4
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2621
	goto	u2620

u2621:
	goto	l3722
u2620:
	line	46
	
l3716:
;main_menu.c: 45: {;main_menu.c: 46: if(menu_flag)
	movf	((c:_menu_flag))^00h,c,w
iorwf	((c:_menu_flag+1))^00h,c,w
	btfsc	status,2
	goto	u2631
	goto	u2630

u2631:
	goto	l3720
u2630:
	line	48
	
l3718:
;main_menu.c: 47: {;main_menu.c: 48: screen_flag = 4;
	movlw	low(04h)
	movwf	((c:_screen_flag))^00h,c
	line	49
;main_menu.c: 49: }
	goto	l3722
	line	51
	
l3720:
;main_menu.c: 50: else;main_menu.c: 51: screen_flag = 3;
	movlw	low(03h)
	movwf	((c:_screen_flag))^00h,c
	line	53
	
l3722:
;main_menu.c: 52: };main_menu.c: 53: if(key == 5)
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2641
	goto	u2640

u2641:
	goto	l87
u2640:
	line	55
	
l3724:
;main_menu.c: 54: {;main_menu.c: 55: screen_flag = 1;
	movlw	low(01h)
	movwf	((c:_screen_flag))^00h,c
	line	58
	
l87:
	return	;funcret
	callstack 0
GLOBAL	__end_of_main_menu
	__end_of_main_menu:
	signat	_main_menu,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 13 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_init_clcd
;;		_init_ds1307
;;		_init_i2c
;;		_init_matrix_keypad
;;		_init_timer0
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	13
global __ptext18
__ptext18:
psect	text18
	file	"main.c"
	line	13
	
_init_config:
;incstack = 0
	callstack 24
	line	15
	
l4232:
;main.c: 15: screen_flag = 1;
	movlw	low(01h)
	movwf	((c:_screen_flag))^00h,c
	line	16
	
l4234:
;main.c: 16: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	17
	
l4236:
;main.c: 17: init_timer0();
	call	_init_timer0	;wreg free
	line	19
	
l4238:
;main.c: 19: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	20
	
l4240:
;main.c: 20: init_clcd();
	call	_init_clcd	;wreg free
	line	21
	
l4242:
;main.c: 21: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	22
	
l4244:
;main.c: 22: init_i2c();
	call	_init_i2c	;wreg free
	line	23
	
l4246:
;main.c: 23: init_ds1307();
	call	_init_ds1307	;wreg free
	line	26
	
l595:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_timer0

;; *************** function _init_timer0 *****************
;; Defined at:
;;		line 10 in file "timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	file	"timer0.c"
	line	10
global __ptext19
__ptext19:
psect	text19
	file	"timer0.c"
	line	10
	
_init_timer0:
;incstack = 0
	callstack 28
	line	14
	
l3616:
;timer0.c: 14: T08BIT = 1;
	bsf	c:(32430/8),(32430)&7	;volatile
	line	17
;timer0.c: 17: T0CS = 0;
	bcf	c:(32429/8),(32429)&7	;volatile
	line	20
;timer0.c: 20: TMR0ON = 1;
	bsf	c:(32431/8),(32431)&7	;volatile
	line	23
;timer0.c: 23: PSA = 1;
	bsf	c:(32427/8),(32427)&7	;volatile
	line	26
	
l3618:
;timer0.c: 26: TMR0 = 6;
	movlw	high(06h)
	movwf	((c:4054+1))^0f00h,c	;volatile
	movlw	low(06h)
	movwf	((c:4054))^0f00h,c	;volatile
	line	29
	
l3620:
;timer0.c: 29: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	32
	
l3622:
;timer0.c: 32: TMR0IE = 1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	33
	
l794:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_timer0
	__end_of_init_timer0:
	signat	_init_timer0,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 5 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	5
global __ptext20
__ptext20:
psect	text20
	file	"matrix_keypad.c"
	line	5
	
_init_matrix_keypad:
;incstack = 0
	callstack 28
	line	8
	
l3538:
;matrix_keypad.c: 8: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	11
;matrix_keypad.c: 11: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	14
	
l3540:
;matrix_keypad.c: 14: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	16
	
l3542:
;matrix_keypad.c: 16: PORTB = PORTB | 0xE0;
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	17
	
l492:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 12 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	12
global __ptext21
__ptext21:
psect	text21
	file	"i2c.c"
	line	12
	
_init_i2c:
;incstack = 0
	callstack 28
	line	15
	
l3214:
;i2c.c: 15: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	16
;i2c.c: 16: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	18
	
l3216:
;i2c.c: 18: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038))^0f00h,c	;volatile
	line	20
;i2c.c: 20: SSPADD = 0x31;
	movlw	low(031h)
	movwf	((c:4040))^0f00h,c	;volatile
	line	22
	
l3218:
;i2c.c: 22: CKE = 0;
	bcf	c:(32318/8),(32318)&7	;volatile
	line	24
	
l3220:
;i2c.c: 24: SMP = 1;
	bsf	c:(32319/8),(32319)&7	;volatile
	line	26
	
l3222:
;i2c.c: 26: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	28
	
l3224:
;i2c.c: 28: BCLIF = 0;
	bcf	c:(32011/8),(32011)&7	;volatile
	line	29
	
l35:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 21 in file "rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"rtc.c"
	line	21
global __ptext22
__ptext22:
psect	text22
	file	"rtc.c"
	line	21
	
_init_ds1307:
;incstack = 0
	callstack 24
	line	26
	
l3234:
;rtc.c: 23: unsigned char dummy;;rtc.c: 26: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	27
	
l3236:
;rtc.c: 27: write_ds1307(0x00, dummy | 0x80);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	30
	
l3238:
;rtc.c: 30: dummy = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	31
;rtc.c: 31: write_ds1307(0x02, dummy & 0xAF);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(0AFh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	46
	
l3240:
;rtc.c: 46: write_ds1307(0x07, 0x93);
	movlw	low(093h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(07h)&0ffh
	
	call	_write_ds1307
	line	49
	
l3242:
;rtc.c: 49: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	50
;rtc.c: 50: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	52
	
l174:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 54 in file "rtc.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_set_date
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	54
global __ptext23
__ptext23:
psect	text23
	file	"rtc.c"
	line	54
	
_write_ds1307:
;incstack = 0
	callstack 26
;write_ds1307@address stored from wreg
	movwf	((c:write_ds1307@address))^00h,c
	line	57
	
l3180:
;rtc.c: 57: i2c_start();
	call	_i2c_start	;wreg free
	line	60
	
l3182:
;rtc.c: 60: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	63
	
l3184:
;rtc.c: 63: i2c_write(address);
	movf	((c:write_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	66
	
l3186:
;rtc.c: 66: i2c_write(data);
	movf	((c:write_ds1307@data))^00h,c,w
	
	call	_i2c_write
	line	69
	
l3188:
;rtc.c: 69: i2c_stop();
	call	_i2c_stop	;wreg free
	line	70
	
l177:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 36 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	36
global __ptext24
__ptext24:
psect	text24
	file	"clcd.c"
	line	36
	
_init_clcd:
;incstack = 0
	callstack 27
	line	39
	
l3624:
;clcd.c: 39: TRISD = 0x00;
	clrf	((c:3989))^0f00h,c	;volatile
	line	41
	
l3626:
;clcd.c: 41: TRISC = TRISC & 0xF8;
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	43
	
l3628:
;clcd.c: 43: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	45
	
l3630:
;clcd.c: 45: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	46
	
l3632:
;clcd.c: 46: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	47
	
l3634:
;clcd.c: 47: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	48
	
l3636:
;clcd.c: 48: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	49
	
l652:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_default_screen

;; *************** function _default_screen *****************
;; Defined at:
;;		line 30 in file "default_screen.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_display_event
;;		_get_date
;;		_get_time
;;		_read_24c02
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	file	"default_screen.c"
	line	30
global __ptext25
__ptext25:
psect	text25
	file	"default_screen.c"
	line	30
	
_default_screen:
;incstack = 0
	callstack 24
;default_screen@key stored from wreg
	movwf	((c:default_screen@key))^00h,c
	line	33
	
l3826:
;default_screen.c: 33: if (!once)
	movf	((c:_once))^00h,c,w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l3832
u2740:
	line	35
	
l3828:
;default_screen.c: 34: {;default_screen.c: 35: clcd_print("                ", (0x80 + (0)));
		movlw	low(STR_28)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_28)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	36
;default_screen.c: 36: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_29)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_29)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	37
	
l3830:
;default_screen.c: 37: once = 1;
	movlw	low(01h)
	movwf	((c:_once))^00h,c
	line	40
	
l3832:
;default_screen.c: 38: };default_screen.c: 40: get_time();
	call	_get_time	;wreg free
	line	41
	
l3834:; BSR set to: 0

;default_screen.c: 41: get_date();
	call	_get_date	;wreg free
	line	43
	
l3836:; BSR set to: 0

;default_screen.c: 43: if (count <= 5)
		movf	((c:_count+1))^00h,c,w
	bnz	u2751
	movlw	6
	subwf	 ((c:_count))^00h,c,w
	btfsc	status,0
	goto	u2751
	goto	u2750

u2751:
	goto	l3852
u2750:
	line	45
	
l3838:; BSR set to: 0

;default_screen.c: 44: {;default_screen.c: 45: clcd_print("DATE ", (0x80 + (0)));
		movlw	low(STR_30)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_30)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	46
;default_screen.c: 46: clcd_print(date, (0x80 + (5)));
		movlw	low(_date)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(085h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	47
	
l3840:
;default_screen.c: 47: clcd_print(days[day - 1], (0x80 + (13)));
	movf	((c:_day))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_days+0FEh)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_default_screen+0+0
	movff	postdec2,??_default_screen+0+0+1
		movff	??_default_screen+0+0,(c:clcd_print@data)
	movff	??_default_screen+0+1,(c:clcd_print@data+1)
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(08Dh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	48
	
l3842:
;default_screen.c: 48: clcd_print("TIME ", (0xC0 + (0)));
		movlw	low(STR_31)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_31)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	49
	
l3844:
;default_screen.c: 49: clcd_print(time, (0xC0 + (5)));
		movlw	low(_time)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C5h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	50
	
l3846:
;default_screen.c: 50: if (am_pm == 0)
	movf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l3850
u2760:
	line	51
	
l3848:
;default_screen.c: 51: clcd_print(" AM", (0xC0 + (13)));
		movlw	low(STR_32)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_32)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l3900
	line	53
	
l3850:
;default_screen.c: 52: else;default_screen.c: 53: clcd_print(" PM", (0xC0 + (13)));
		movlw	low(STR_33)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_33)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l3900
	line	55
	
l3852:; BSR set to: 0

;default_screen.c: 55: else if (count > 5 && count <= 7)
		movf	((c:_count+1))^00h,c,w
	bnz	u2770
	movlw	6
	subwf	 ((c:_count))^00h,c,w
	btfss	status,0
	goto	u2771
	goto	u2770

u2771:
	goto	l3896
u2770:
	
l3854:; BSR set to: 0

		movf	((c:_count+1))^00h,c,w
	bnz	u2781
	movlw	8
	subwf	 ((c:_count))^00h,c,w
	btfsc	status,0
	goto	u2781
	goto	u2780

u2781:
	goto	l3896
u2780:
	line	57
	
l3856:; BSR set to: 0

;default_screen.c: 56: {;default_screen.c: 57: clcd_print("TIME ", (0x80 + (0)));
		movlw	low(STR_34)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_34)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	58
;default_screen.c: 58: clcd_print(time, (0x80 + (5)));
		movlw	low(_time)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	020h
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(085h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	59
	
l3858:
;default_screen.c: 59: if (am_pm == 0)
	movf	((c:_am_pm))^00h,c,w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l3862
u2790:
	line	60
	
l3860:
;default_screen.c: 60: clcd_print(" AM", (0x80 + (13)));
		movlw	low(STR_35)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_35)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(08Dh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l252
	line	62
	
l3862:
;default_screen.c: 61: else;default_screen.c: 62: clcd_print(" PM", (0x80 + (13)));
		movlw	low(STR_36)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_36)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(08Dh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	
l252:
	line	63
;default_screen.c: 63: clcd_print("EVENT ", (0xC0 + (0)));
		movlw	low(STR_37)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_37)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	64
	
l3864:
;default_screen.c: 64: if (event_cnt == 0)
	movf	((c:_event_cnt))^00h,c,w
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3868
u2800:
	line	66
	
l3866:
;default_screen.c: 65: {;default_screen.c: 66: clcd_print(" NO EVENTS ", (0xC0 + (6)));
		movlw	low(STR_38)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_38)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C6h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	67
;default_screen.c: 67: }
	goto	l3900
	line	68
	
l3868:
;default_screen.c: 68: else if (event_cnt > 0)
	movf	((c:_event_cnt))^00h,c,w
	btfsc	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l3900
u2810:
	line	70
	
l3870:
;default_screen.c: 69: {;default_screen.c: 70: display_event();
	call	_display_event	;wreg free
	line	71
	
l3872:
;default_screen.c: 71: addrs = (next_event * 5);
	movlb	0	; () banked
	movf	((_next_event))&0ffh,w
	mullw	05h
	movff	prodl,(c:_addrs)
	line	72
	
l3874:; BSR set to: 0

;default_screen.c: 72: h = (read_24c02(addrs) * 10) + read_24c02(addrs + 1);
	incf	((c:_addrs))^00h,c,w
	
	call	_read_24c02
	movwf	(??_default_screen+0+0)^00h,c
	movf	((c:_addrs))^00h,c,w
	
	call	_read_24c02
	movwf	(??_default_screen+1+0)^00h,c
	movf	((??_default_screen+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_default_screen+2+0
	movff	prodh,??_default_screen+2+0+1
	movf	((??_default_screen+0+0))^00h,c,w
	addwf	(??_default_screen+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((_h))&0ffh
	movlw	0
	addwfc	(??_default_screen+2+1)^00h,c,w
	movwf	1+((_h))&0ffh
	line	73
	
l3876:; BSR set to: 0

;default_screen.c: 73: m = (read_24c02(addrs + 2) * 10) + read_24c02(addrs + 3);
	movf	((c:_addrs))^00h,c,w
	addlw	low(03h)
	
	call	_read_24c02
	movwf	(??_default_screen+0+0)^00h,c
	movf	((c:_addrs))^00h,c,w
	addlw	low(02h)
	
	call	_read_24c02
	movwf	(??_default_screen+1+0)^00h,c
	movf	((??_default_screen+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_default_screen+2+0
	movff	prodh,??_default_screen+2+0+1
	movf	((??_default_screen+0+0))^00h,c,w
	addwf	(??_default_screen+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((_m))&0ffh
	movlw	0
	addwfc	(??_default_screen+2+1)^00h,c,w
	movwf	1+((_m))&0ffh
	line	74
	
l3878:; BSR set to: 0

;default_screen.c: 74: ap = read_24c02(addrs + 4);
	movf	((c:_addrs))^00h,c,w
	addlw	low(04h)
	
	call	_read_24c02
	movwf	(??_default_screen+0+0)^00h,c
	movf	((??_default_screen+0+0))^00h,c,w
	movlb	0	; () banked
	movwf	((_ap))&0ffh
	clrf	((_ap+1))&0ffh
	line	75
	
l3880:; BSR set to: 0

;default_screen.c: 75: clcd_print(((h / 10) + '0'), (0xC0 + (6)));
	movff	(_h),(c:___awdiv@dividend)
	movff	(_h+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movlw	030h
	addwf	(0+?___awdiv)^00h,c
	movlw	0
	addwfc	(1+?___awdiv)^00h,c
	movff	0+?___awdiv,??_default_screen+0+0
	movff	1+?___awdiv,??_default_screen+0+0+1
	clrf	(??_default_screen+0+0+2)^00h,c
	movff	??_default_screen+0+0,(c:clcd_print@data)
	movff	??_default_screen+0+1,(c:clcd_print@data+1)
	movff	??_default_screen+0+2,(c:clcd_print@data+2)
	movlw	low(0C6h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	76
	
l3882:
;default_screen.c: 76: clcd_print((h % 10) + '0', (0xC0 + (7)));
	movff	(_h),(c:___awmod@dividend)
	movff	(_h+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movlw	030h
	addwf	(0+?___awmod)^00h,c
	movlw	0
	addwfc	(1+?___awmod)^00h,c
	movff	0+?___awmod,??_default_screen+0+0
	movff	1+?___awmod,??_default_screen+0+0+1
	clrf	(??_default_screen+0+0+2)^00h,c
	movff	??_default_screen+0+0,(c:clcd_print@data)
	movff	??_default_screen+0+1,(c:clcd_print@data+1)
	movff	??_default_screen+0+2,(c:clcd_print@data+2)
	movlw	low(0C7h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	77
	
l3884:
;default_screen.c: 77: clcd_print(":", (0xC0 + (8)));
		movlw	low(STR_39)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_39)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0C8h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	78
	
l3886:
;default_screen.c: 78: clcd_print(((m / 10) + '0'), (0xC0 + (9)));
	movff	(_m),(c:___awdiv@dividend)
	movff	(_m+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movlw	030h
	addwf	(0+?___awdiv)^00h,c
	movlw	0
	addwfc	(1+?___awdiv)^00h,c
	movff	0+?___awdiv,??_default_screen+0+0
	movff	1+?___awdiv,??_default_screen+0+0+1
	clrf	(??_default_screen+0+0+2)^00h,c
	movff	??_default_screen+0+0,(c:clcd_print@data)
	movff	??_default_screen+0+1,(c:clcd_print@data+1)
	movff	??_default_screen+0+2,(c:clcd_print@data+2)
	movlw	low(0C9h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	79
	
l3888:
;default_screen.c: 79: clcd_print((m % 10) + '0', (0xC0 + (10)));
	movff	(_m),(c:___awmod@dividend)
	movff	(_m+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movlw	030h
	addwf	(0+?___awmod)^00h,c
	movlw	0
	addwfc	(1+?___awmod)^00h,c
	movff	0+?___awmod,??_default_screen+0+0
	movff	1+?___awmod,??_default_screen+0+0+1
	clrf	(??_default_screen+0+0+2)^00h,c
	movff	??_default_screen+0+0,(c:clcd_print@data)
	movff	??_default_screen+0+1,(c:clcd_print@data+1)
	movff	??_default_screen+0+2,(c:clcd_print@data+2)
	movlw	low(0CAh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	80
	
l3890:
;default_screen.c: 80: clcd_print(" ", (0xC0 + (11)));
		movlw	low(STR_40)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_40)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CBh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	81
;default_screen.c: 81: if (ap)
	movlb	0	; () banked
	movf	((_ap))&0ffh,w
iorwf	((_ap+1))&0ffh,w
	btfsc	status,2
	goto	u2821
	goto	u2820

u2821:
	goto	l3894
u2820:
	line	82
	
l3892:; BSR set to: 0

;default_screen.c: 82: clcd_print("PM", (0xC0 + (12)));
		movlw	low(STR_41)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_41)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CCh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l3900
	line	84
	
l3894:; BSR set to: 0

;default_screen.c: 83: else;default_screen.c: 84: clcd_print("AM", (0xC0 + (12)));
		movlw	low(STR_42)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_42)
	movwf	((c:clcd_print@data+1))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	iorwf	((c:clcd_print@data+1))^00h,c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:clcd_print@data+2))^00h,c

	movlw	low(0CCh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l3900
	line	87
	
l3896:; BSR set to: 0

;default_screen.c: 87: else if (count > 7)
		movf	((c:_count+1))^00h,c,w
	bnz	u2830
	movlw	8
	subwf	 ((c:_count))^00h,c,w
	btfss	status,0
	goto	u2831
	goto	u2830

u2831:
	goto	l3900
u2830:
	line	89
	
l3898:; BSR set to: 0

;default_screen.c: 88: {;default_screen.c: 89: count = 0;
	movlw	high(0)
	movwf	((c:_count+1))^00h,c
	movlw	low(0)
	movwf	((c:_count))^00h,c
	line	93
	
l3900:
;default_screen.c: 90: };default_screen.c: 93: if (c_hr == h && c_mn == m && c_ap == ap)
	movlb	0	; () banked
	movf	((_h))&0ffh,w
xorwf	((c:_c_hr))^00h,c,w
	bnz	u2841
movf	((_h+1))&0ffh,w
xorwf	((c:_c_hr+1))^00h,c,w
	btfss	status,2
	goto	u2841
	goto	u2840

u2841:
	goto	l3910
u2840:
	
l3902:; BSR set to: 0

	movf	((_m))&0ffh,w
xorwf	((c:_c_mn))^00h,c,w
	bnz	u2851
movf	((_m+1))&0ffh,w
xorwf	((c:_c_mn+1))^00h,c,w
	btfss	status,2
	goto	u2851
	goto	u2850

u2851:
	goto	l3910
u2850:
	
l3904:; BSR set to: 0

	movf	((_ap))&0ffh,w
xorwf	((c:_c_ap))^00h,c,w
	bnz	u2861
movf	((_ap+1))&0ffh,w
xorwf	((c:_c_ap+1))^00h,c,w
	btfss	status,2
	goto	u2861
	goto	u2860

u2861:
	goto	l3910
u2860:
	line	95
	
l3906:; BSR set to: 0

;default_screen.c: 94: {;default_screen.c: 95: RB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	96
	
l3908:; BSR set to: 0

;default_screen.c: 96: alarm_s = 1;
	movlw	low(01h)
	movwf	((c:_alarm_s))^00h,c
	line	97
;default_screen.c: 97: }
	goto	l3924
	line	100
	
l3910:; BSR set to: 0

;default_screen.c: 98: else;default_screen.c: 99: {;default_screen.c: 100: if (alarm_s == 1)
		decf	((c:_alarm_s))^00h,c,w
	btfss	status,2
	goto	u2871
	goto	u2870

u2871:
	goto	l262
u2870:
	line	102
	
l3912:; BSR set to: 0

;default_screen.c: 101: {;default_screen.c: 102: alarm_delay++;
	incf	((c:_alarm_delay))^00h,c
	line	103
	
l3914:; BSR set to: 0

;default_screen.c: 103: if (alarm_delay >= 5)
		movlw	05h-1
	cpfsgt	((c:_alarm_delay))^00h,c
	goto	u2881
	goto	u2880

u2881:
	goto	l263
u2880:
	line	105
	
l3916:; BSR set to: 0

;default_screen.c: 104: {;default_screen.c: 105: alarm_s = 0;
	clrf	((c:_alarm_s))^00h,c
	line	106
	
l3918:; BSR set to: 0

;default_screen.c: 106: next_event++;
	infsnz	((_next_event))&0ffh
	incf	((_next_event+1))&0ffh
	line	107
	
l3920:; BSR set to: 0

;default_screen.c: 107: next_event = next_event % event_cnt;
	movff	(_next_event),(c:___awmod@dividend)
	movff	(_next_event+1),(c:___awmod@dividend+1)
	movff	(c:_event_cnt),(c:___awmod@divisor)
	clrf	((c:___awmod@divisor+1))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(_next_event)
	movff	1+?___awmod,(_next_event+1)
	line	108
	
l3922:
;default_screen.c: 108: alarm_delay = 0;
	clrf	((c:_alarm_delay))^00h,c
	line	109
;default_screen.c: 109: }
	goto	l3924
	line	110
	
l263:; BSR set to: 0

	line	112
;default_screen.c: 110: else;default_screen.c: 111: {;default_screen.c: 112: RB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	goto	l3924
	line	115
	
l262:; BSR set to: 0

	line	117
;default_screen.c: 115: else;default_screen.c: 116: {;default_screen.c: 117: RB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	122
	
l3924:
;default_screen.c: 118: };default_screen.c: 119: };default_screen.c: 122: if (key == 4)
		movlw	4
	xorwf	((c:default_screen@key))^00h,c,w
	btfss	status,2
	goto	u2891
	goto	u2890

u2891:
	goto	l267
u2890:
	line	127
	
l3926:
;default_screen.c: 123: {;default_screen.c: 127: screen_flag = 2;
	movlw	low(02h)
	movwf	((c:_screen_flag))^00h,c
	line	129
	
l267:
	return	;funcret
	callstack 0
GLOBAL	__end_of_default_screen
	__end_of_default_screen:
	signat	_default_screen,4217
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 131 in file "default_screen.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_default_screen
;;		_set_events
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	line	131
global __ptext26
__ptext26:
psect	text26
	file	"default_screen.c"
	line	131
	
_get_time:
;incstack = 0
	callstack 24
	line	133
	
l3244:
;default_screen.c: 133: time_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movlb	0	; () banked
	movwf	((_time_reg))&0ffh
	line	134
;default_screen.c: 134: time_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movlb	0	; () banked
	movwf	(0+(_time_reg+01h))&0ffh
	line	135
;default_screen.c: 135: time_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movlb	0	; () banked
	movwf	(0+(_time_reg+02h))&0ffh
	line	137
	
l3246:; BSR set to: 0

;default_screen.c: 137: time[0] = '0' + ((time_reg[0] >> 4) & 0x03);
	swapf	((_time_reg))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(03h)
	addlw	low(030h)
	movwf	((_time))&0ffh
	line	138
	
l3248:; BSR set to: 0

;default_screen.c: 138: time[1] = '0' + (time_reg[0] & 0x0F);
	movf	((_time_reg))&0ffh,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+01h))&0ffh
	line	139
	
l3250:; BSR set to: 0

;default_screen.c: 139: time[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time+02h))&0ffh
	line	140
	
l3252:; BSR set to: 0

;default_screen.c: 140: time[3] = '0' + ((time_reg[1] >> 4) & 0x0F);
	swapf	(0+(_time_reg+01h))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+03h))&0ffh
	line	141
	
l3254:; BSR set to: 0

;default_screen.c: 141: time[4] = '0' + (time_reg[1] & 0x0F);
	movf	(0+(_time_reg+01h))&0ffh,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+04h))&0ffh
	line	142
	
l3256:; BSR set to: 0

;default_screen.c: 142: time[5] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time+05h))&0ffh
	line	143
	
l3258:; BSR set to: 0

;default_screen.c: 143: time[6] = '0' + ((time_reg[2] >> 4) & 0x0F);
	swapf	(0+(_time_reg+02h))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+06h))&0ffh
	line	144
	
l3260:; BSR set to: 0

;default_screen.c: 144: time[7] = '0' + (time_reg[2] & 0x0F);
	movf	(0+(_time_reg+02h))&0ffh,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+07h))&0ffh
	line	145
	
l3262:; BSR set to: 0

;default_screen.c: 145: time[8] = '\0';
	clrf	(0+(_time+08h))&0ffh
	line	146
	
l3264:; BSR set to: 0

;default_screen.c: 146: am_pm = ((time_reg[0] >> 5) & 0x01);
	swapf	((_time_reg))&0ffh,w
	rrncf	wreg
	andlw	(0ffh shr 5) & 0ffh
	andlw	low(01h)
	movwf	((c:_am_pm))^00h,c
	line	147
	
l270:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,89
	global	_get_date

;; *************** function _get_date *****************
;; Defined at:
;;		line 149 in file "default_screen.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_default_screen
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	line	149
global __ptext27
__ptext27:
psect	text27
	file	"default_screen.c"
	line	149
	
_get_date:; BSR set to: 0

;incstack = 0
	callstack 24
	line	151
	
l3266:; BSR set to: 0

;default_screen.c: 151: date_reg[0] = read_ds1307(0x04);
	movlw	(04h)&0ffh
	
	call	_read_ds1307
	movlb	0	; () banked
	movwf	((_date_reg))&0ffh
	line	152
;default_screen.c: 152: date_reg[1] = read_ds1307(0x05);
	movlw	(05h)&0ffh
	
	call	_read_ds1307
	movlb	0	; () banked
	movwf	(0+(_date_reg+01h))&0ffh
	line	153
;default_screen.c: 153: date_reg[2] = read_ds1307(0x06);
	movlw	(06h)&0ffh
	
	call	_read_ds1307
	movlb	0	; () banked
	movwf	(0+(_date_reg+02h))&0ffh
	line	154
;default_screen.c: 154: date_reg[3] = read_ds1307(0x03);
	movlw	(03h)&0ffh
	
	call	_read_ds1307
	movlb	0	; () banked
	movwf	(0+(_date_reg+03h))&0ffh
	line	155
	
l3268:; BSR set to: 0

;default_screen.c: 155: date[0] = '0' + ((date_reg[0] >> 4) & 0x0F);
	swapf	((_date_reg))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	((_date))&0ffh
	line	156
	
l3270:; BSR set to: 0

;default_screen.c: 156: date[1] = '0' + (date_reg[0] & 0x0F);
	movf	((_date_reg))&0ffh,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_date+01h))&0ffh
	line	157
	
l3272:; BSR set to: 0

;default_screen.c: 157: date[2] = '-';
	movlw	low(02Dh)
	movwf	(0+(_date+02h))&0ffh
	line	158
	
l3274:; BSR set to: 0

;default_screen.c: 158: date[3] = '0' + ((date_reg[1] >> 4) & 0x01);
	swapf	(0+(_date_reg+01h))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(01h)
	addlw	low(030h)
	movwf	(0+(_date+03h))&0ffh
	line	159
	
l3276:; BSR set to: 0

;default_screen.c: 159: date[4] = '0' + (date_reg[1] & 0x0F);
	movf	(0+(_date_reg+01h))&0ffh,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_date+04h))&0ffh
	line	160
	
l3278:; BSR set to: 0

;default_screen.c: 160: date[5] = '-';
	movlw	low(02Dh)
	movwf	(0+(_date+05h))&0ffh
	line	161
	
l3280:; BSR set to: 0

;default_screen.c: 161: date[6] = '0' + ((date_reg[2] >> 4) & 0x0F);
	swapf	(0+(_date_reg+02h))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_date+06h))&0ffh
	line	162
	
l3282:; BSR set to: 0

;default_screen.c: 162: date[7] = '0' + (date_reg[2] & 0x0F);
	movf	(0+(_date_reg+02h))&0ffh,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_date+07h))&0ffh
	line	163
	
l3284:; BSR set to: 0

;default_screen.c: 163: date[8] = '\0';
	clrf	(0+(_date+08h))&0ffh
	line	164
	
l3286:; BSR set to: 0

;default_screen.c: 164: day = (date_reg[3] & 0x07);
	movff	0+(_date_reg+03h),??_get_date+0+0
	movlw	07h
	andwf	(??_get_date+0+0)^00h,c
	movf	(??_get_date+0+0)^00h,c,w
	movwf	((c:_day))^00h,c
	clrf	((c:_day+1))^00h,c
	line	165
	
l273:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_get_date
	__end_of_get_date:
	signat	_get_date,89
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 72 in file "rtc.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_get_time
;;		_get_date
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"rtc.c"
	line	72
global __ptext28
__ptext28:
psect	text28
	file	"rtc.c"
	line	72
	
_read_ds1307:; BSR set to: 0

;incstack = 0
	callstack 24
;read_ds1307@address stored from wreg
	movwf	((c:read_ds1307@address))^00h,c
	line	77
	
l3166:
;rtc.c: 74: unsigned char data;;rtc.c: 77: i2c_start();
	call	_i2c_start	;wreg free
	line	80
	
l3168:
;rtc.c: 80: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	83
	
l3170:
;rtc.c: 83: i2c_write(address);
	movf	((c:read_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	86
	
l3172:
;rtc.c: 86: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	89
	
l3174:
;rtc.c: 89: i2c_write(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	92
;rtc.c: 92: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_ds1307@data))^00h,c
	line	95
	
l3176:
;rtc.c: 95: i2c_stop();
	call	_i2c_stop	;wreg free
	line	98
;rtc.c: 98: return data;
	movf	((c:read_ds1307@data))^00h,c,w
	line	99
	
l180:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_display_event

;; *************** function _display_event *****************
;; Defined at:
;;		line 167 in file "default_screen.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___awmod
;;		_read_24c02
;; This function is called by:
;;		_default_screen
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"default_screen.c"
	line	167
global __ptext29
__ptext29:
psect	text29
	file	"default_screen.c"
	line	167
	
_display_event:
;incstack = 0
	callstack 24
	line	169
	
l3288:
;default_screen.c: 169: c_hr = ((time[0] - '0') * 10) + (time[1] - '0');
	movlb	0	; () banked
	movf	((_time))&0ffh,w
	mullw	0Ah
	movff	prodl,??_display_event+0+0
	movff	prodh,??_display_event+0+0+1
	movf	(0+(_time+01h))&0ffh,w
	addwf	(??_display_event+0+0)^00h,c
	movlw	0
	addwfc	(??_display_event+0+1)^00h,c
	movlw	low(0FDF0h)
	addwf	(??_display_event+0+0)^00h,c,w
	movwf	((c:_c_hr))^00h,c
	movlw	high(0FDF0h)
	addwfc	(??_display_event+0+1)^00h,c,w
	movwf	1+((c:_c_hr))^00h,c
	line	170
;default_screen.c: 170: c_mn = ((time[3] - '0') * 10) + (time[4] - '0');
	movf	(0+(_time+03h))&0ffh,w
	mullw	0Ah
	movff	prodl,??_display_event+0+0
	movff	prodh,??_display_event+0+0+1
	movf	(0+(_time+04h))&0ffh,w
	addwf	(??_display_event+0+0)^00h,c
	movlw	0
	addwfc	(??_display_event+0+1)^00h,c
	movlw	low(0FDF0h)
	addwf	(??_display_event+0+0)^00h,c,w
	movwf	((c:_c_mn))^00h,c
	movlw	high(0FDF0h)
	addwfc	(??_display_event+0+1)^00h,c,w
	movwf	1+((c:_c_mn))^00h,c
	line	171
	
l3290:; BSR set to: 0

;default_screen.c: 171: if (((time_reg[0] >> 5) & 0x01))
	movff	(_time_reg),??_display_event+0+0
	movlw	05h
	movwf	(??_display_event+1+0)^00h,c
u2205:
	bcf	status,0
	rrcf	(??_display_event+0+0)^00h,c
	decfsz	(??_display_event+1+0)^00h,c
	goto	u2205
	
	btfss	(??_display_event+0+0)^00h,c,(0)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l3294
u2210:
	line	173
	
l3292:; BSR set to: 0

;default_screen.c: 172: {;default_screen.c: 173: c_ap = 1;
	movlw	high(01h)
	movwf	((c:_c_ap+1))^00h,c
	movlw	low(01h)
	movwf	((c:_c_ap))^00h,c
	line	174
;default_screen.c: 174: }
	goto	l277
	line	177
	
l3294:; BSR set to: 0

;default_screen.c: 175: else;default_screen.c: 176: {;default_screen.c: 177: c_ap = 0;
	movlw	high(0)
	movwf	((c:_c_ap+1))^00h,c
	movlw	low(0)
	movwf	((c:_c_ap))^00h,c
	line	178
	
l277:; BSR set to: 0

	line	179
;default_screen.c: 178: };default_screen.c: 179: next_event = 0;
	movlw	high(0)
	movwf	((_next_event+1))&0ffh
	movlw	low(0)
	movwf	((_next_event))&0ffh
	line	180
	
l3296:; BSR set to: 0

;default_screen.c: 180: addrs = 0x00;
	clrf	((c:_addrs))^00h,c
	line	181
;default_screen.c: 181: for (int i = 0; i < event_cnt; i++)
	movlw	high(0)
	movwf	((c:display_event@i+1))^00h,c
	movlw	low(0)
	movwf	((c:display_event@i))^00h,c
	goto	l3344
	line	183
	
l3298:
;default_screen.c: 182: {;default_screen.c: 183: addrs = i * 5;
	movf	((c:display_event@i))^00h,c,w
	mullw	05h
	movff	prodl,(c:_addrs)
	line	184
	
l3300:
;default_screen.c: 184: e_hr = (read_24c02(addrs) * 10) + read_24c02(addrs + 1);
	incf	((c:_addrs))^00h,c,w
	
	call	_read_24c02
	movwf	(??_display_event+0+0)^00h,c
	movf	((c:_addrs))^00h,c,w
	
	call	_read_24c02
	movwf	(??_display_event+1+0)^00h,c
	movf	((??_display_event+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_display_event+2+0
	movff	prodh,??_display_event+2+0+1
	movf	((??_display_event+0+0))^00h,c,w
	addwf	(??_display_event+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((_e_hr))&0ffh
	movlw	0
	addwfc	(??_display_event+2+1)^00h,c,w
	movwf	1+((_e_hr))&0ffh
	line	185
	
l3302:; BSR set to: 0

;default_screen.c: 185: e_mn = (read_24c02(addrs + 2) * 10) + read_24c02(addrs + 3);
	movf	((c:_addrs))^00h,c,w
	addlw	low(03h)
	
	call	_read_24c02
	movwf	(??_display_event+0+0)^00h,c
	movf	((c:_addrs))^00h,c,w
	addlw	low(02h)
	
	call	_read_24c02
	movwf	(??_display_event+1+0)^00h,c
	movf	((??_display_event+1+0))^00h,c,w
	mullw	0Ah
	movff	prodl,??_display_event+2+0
	movff	prodh,??_display_event+2+0+1
	movf	((??_display_event+0+0))^00h,c,w
	addwf	(??_display_event+2+0)^00h,c,w
	movlb	0	; () banked
	movwf	((_e_mn))&0ffh
	movlw	0
	addwfc	(??_display_event+2+1)^00h,c,w
	movwf	1+((_e_mn))&0ffh
	line	186
	
l3304:; BSR set to: 0

;default_screen.c: 186: e_ap = read_24c02(addrs + 4);
	movf	((c:_addrs))^00h,c,w
	addlw	low(04h)
	
	call	_read_24c02
	movwf	(??_display_event+0+0)^00h,c
	movf	((??_display_event+0+0))^00h,c,w
	movlb	0	; () banked
	movwf	((_e_ap))&0ffh
	clrf	((_e_ap+1))&0ffh
	line	187
	
l3306:; BSR set to: 0

;default_screen.c: 187: if (e_ap < c_ap)
		movf	((c:_c_ap))^00h,c,w
	subwf	((_e_ap))&0ffh,w
	movf	((_e_ap+1))&0ffh,w
	xorlw	80h
	movwf	(??_display_event+0+0)^00h,c
	movf	((c:_c_ap+1))^00h,c,w
	xorlw	80h
	subwfb	(??_display_event+0+0)^00h,c,w
	btfsc	status,0
	goto	u2221
	goto	u2220

u2221:
	goto	l3312
u2220:
	goto	l3342
	line	191
	
l3312:; BSR set to: 0

;default_screen.c: 191: else if (e_ap > c_ap)
		movf	((_e_ap))&0ffh,w
	subwf	((c:_c_ap))^00h,c,w
	movf	((c:_c_ap+1))^00h,c,w
	xorlw	80h
	movwf	(??_display_event+0+0)^00h,c
	movf	((_e_ap+1))&0ffh,w
	xorlw	80h
	subwfb	(??_display_event+0+0)^00h,c,w
	btfsc	status,0
	goto	u2231
	goto	u2230

u2231:
	goto	l3318
u2230:
	line	193
	
l3314:
;default_screen.c: 192: {;default_screen.c: 193: next_event = i;
	movff	(c:display_event@i),(_next_event)
	movff	(c:display_event@i+1),(_next_event+1)
	line	194
;default_screen.c: 194: break;
	goto	l294
	line	198
	
l3318:; BSR set to: 0

;default_screen.c: 196: else;default_screen.c: 197: {;default_screen.c: 198: if (e_hr % 12 < c_hr % 12)
	movff	(_e_hr),(c:___awmod@dividend)
	movff	(_e_hr+1),(c:___awmod@dividend+1)
	movlw	high(0Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,??_display_event+0+0
	movff	1+?___awmod,??_display_event+0+0+1
	movff	(c:_c_hr),(c:___awmod@dividend)
	movff	(c:_c_hr+1),(c:___awmod@dividend+1)
	movlw	high(0Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
		movf	(0+?___awmod)^00h,c,w
	subwf	(??_display_event+0+0)^00h,c,w
	movf	(??_display_event+0+1)^00h,c,w
	xorlw	80h
	movwf	(??_display_event+2+0)^00h,c
	movf	(1+?___awmod)^00h,c,w
	xorlw	80h
	subwfb	(??_display_event+2+0)^00h,c,w
	btfsc	status,0
	goto	u2241
	goto	u2240

u2241:
	goto	l3324
u2240:
	goto	l3342
	line	202
	
l3324:
;default_screen.c: 202: else if (e_hr % 12 > c_hr % 12)
	movff	(c:_c_hr),(c:___awmod@dividend)
	movff	(c:_c_hr+1),(c:___awmod@dividend+1)
	movlw	high(0Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,??_display_event+0+0
	movff	1+?___awmod,??_display_event+0+0+1
	movff	(_e_hr),(c:___awmod@dividend)
	movff	(_e_hr+1),(c:___awmod@dividend+1)
	movlw	high(0Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
		movf	(0+?___awmod)^00h,c,w
	subwf	(??_display_event+0+0)^00h,c,w
	movf	(??_display_event+0+1)^00h,c,w
	xorlw	80h
	movwf	(??_display_event+2+0)^00h,c
	movf	(1+?___awmod)^00h,c,w
	xorlw	80h
	subwfb	(??_display_event+2+0)^00h,c,w
	btfsc	status,0
	goto	u2251
	goto	u2250

u2251:
	goto	l3330
u2250:
	goto	l3314
	line	209
	
l3330:
;default_screen.c: 207: else;default_screen.c: 208: {;default_screen.c: 209: if (e_mn < c_mn)
		movf	((c:_c_mn))^00h,c,w
	movlb	0	; () banked
	subwf	((_e_mn))&0ffh,w
	movf	((_e_mn+1))&0ffh,w
	xorlw	80h
	movwf	(??_display_event+0+0)^00h,c
	movf	((c:_c_mn+1))^00h,c,w
	xorlw	80h
	subwfb	(??_display_event+0+0)^00h,c,w
	btfsc	status,0
	goto	u2261
	goto	u2260

u2261:
	goto	l3336
u2260:
	goto	l3342
	line	213
	
l3336:; BSR set to: 0

;default_screen.c: 213: else if (e_mn > c_mn)
		movf	((_e_mn))&0ffh,w
	subwf	((c:_c_mn))^00h,c,w
	movf	((c:_c_mn+1))^00h,c,w
	xorlw	80h
	movwf	(??_display_event+0+0)^00h,c
	movf	((_e_mn+1))&0ffh,w
	xorlw	80h
	subwfb	(??_display_event+0+0)^00h,c,w
	btfsc	status,0
	goto	u2271
	goto	u2270

u2271:
	goto	l294
u2270:
	goto	l3314
	line	181
	
l3342:
	infsnz	((c:display_event@i))^00h,c
	incf	((c:display_event@i+1))^00h,c
	
l3344:
	movf	((c:_event_cnt))^00h,c,w
	movwf	(??_display_event+0+0)^00h,c
	clrf	(??_display_event+0+0+1)^00h,c

		movf	(??_display_event+0+0)^00h,c,w
	subwf	((c:display_event@i))^00h,c,w
	movf	((c:display_event@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_display_event+2+0)^00h,c
	movf	(??_display_event+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_display_event+2+0)^00h,c,w
	btfss	status,0
	goto	u2281
	goto	u2280

u2281:
	goto	l3298
u2280:
	line	225
	
l294:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_event
	__end_of_display_event:
	signat	_display_event,89
	global	_read_24c02

;; *************** function _read_24c02 *****************
;; Defined at:
;;		line 27 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_view_events
;;		_default_screen
;;		_display_event
;;		_store_events
;;		_shift_store_event
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"eeprom.c"
	line	27
global __ptext30
__ptext30:
psect	text30
	file	"eeprom.c"
	line	27
	
_read_24c02:
;incstack = 0
	callstack 25
;read_24c02@address stored from wreg
	movwf	((c:read_24c02@address))^00h,c
	line	32
	
l3044:
;eeprom.c: 29: unsigned char data;;eeprom.c: 32: i2c_start();
	call	_i2c_start	;wreg free
	line	35
	
l3046:
;eeprom.c: 35: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	38
	
l3048:
;eeprom.c: 38: i2c_write(address);
	movf	((c:read_24c02@address))^00h,c,w
	
	call	_i2c_write
	line	41
	
l3050:
;eeprom.c: 41: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	44
	
l3052:
;eeprom.c: 44: i2c_write(0xA1);
	movlw	(0A1h)&0ffh
	
	call	_i2c_write
	line	47
;eeprom.c: 47: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_24c02@data))^00h,c
	line	50
	
l3054:
;eeprom.c: 50: i2c_stop();
	call	_i2c_stop	;wreg free
	line	53
;eeprom.c: 53: return data;
	movf	((c:read_24c02@data))^00h,c,w
	line	54
	
l106:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_24c02
	__end_of_read_24c02:
	signat	_read_24c02,4217
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 66 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_24c02
;;		_read_24c02
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	66
global __ptext31
__ptext31:
psect	text31
	file	"i2c.c"
	line	66
	
_i2c_write:
;incstack = 0
	callstack 26
;i2c_write@data stored from wreg
	movwf	((c:i2c_write@data))^00h,c
	line	68
	
l3020:
;i2c.c: 68: SSPBUF = data;
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	69
	
l3022:
;i2c.c: 69: i2c_idle();
	call	_i2c_idle	;wreg free
	line	70
	
l57:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 54 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_24c02
;;		_read_24c02
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	line	54
global __ptext32
__ptext32:
psect	text32
	file	"i2c.c"
	line	54
	
_i2c_stop:
;incstack = 0
	callstack 26
	line	56
	
l3012:
;i2c.c: 56: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	57
	
l3014:
;i2c.c: 57: i2c_idle();
	call	_i2c_idle	;wreg free
	line	58
	
l51:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 48 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_24c02
;;		_read_24c02
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	line	48
global __ptext33
__ptext33:
psect	text33
	file	"i2c.c"
	line	48
	
_i2c_start:
;incstack = 0
	callstack 26
	line	50
	
l3008:
;i2c.c: 50: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	51
	
l3010:
;i2c.c: 51: i2c_idle();
	call	_i2c_idle	;wreg free
	line	52
	
l48:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 60 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_read_24c02
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	line	60
global __ptext34
__ptext34:
psect	text34
	file	"i2c.c"
	line	60
	
_i2c_rep_start:
;incstack = 0
	callstack 26
	line	62
	
l3016:
;i2c.c: 62: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	63
	
l3018:
;i2c.c: 63: i2c_idle();
	call	_i2c_idle	;wreg free
	line	64
	
l54:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 84 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_rx_mode
;; This function is called by:
;;		_read_24c02
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	line	84
global __ptext35
__ptext35:
psect	text35
	file	"i2c.c"
	line	84
	
_i2c_read:
;incstack = 0
	callstack 25
	line	86
	
l3024:
;i2c.c: 86: i2c_rx_mode();
	call	_i2c_rx_mode	;wreg free
	line	87
;i2c.c: 87: i2c_no_ack();
	call	_i2c_no_ack	;wreg free
	line	89
	
l3026:
;i2c.c: 89: return SSPBUF;
	movf	((c:4041))^0f00h,c,w	;volatile
	line	90
	
l66:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 72 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	line	72
global __ptext36
__ptext36:
psect	text36
	file	"i2c.c"
	line	72
	
_i2c_rx_mode:
;incstack = 0
	callstack 25
	line	74
	
l3002:
;i2c.c: 74: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	75
	
l3004:
;i2c.c: 75: i2c_idle();
	call	_i2c_idle	;wreg free
	line	76
	
l60:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 31 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	line	31
global __ptext37
__ptext37:
psect	text37
	file	"i2c.c"
	line	31
	
_i2c_idle:
;incstack = 0
	callstack 26
	line	33
	
l3000:
;i2c.c: 33: while (!SSPIF);
	
l38:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1981
	goto	u1980
u1981:
	goto	l38
u1980:
	
l40:
	line	37
;i2c.c: 37: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	38
	
l41:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 78 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	78
global __ptext38
__ptext38:
psect	text38
	file	"i2c.c"
	line	78
	
_i2c_no_ack:
;incstack = 0
	callstack 26
	line	80
	
l3006:
;i2c.c: 80: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	81
;i2c.c: 81: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	82
	
l63:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_events
;;		_default_screen
;;		_display_event
;;		_set_events
;;		_store_events
;;		_shift_store_event
;;		_set_date
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awmod.c"
	line	7
global __ptext39
__ptext39:
psect	text39
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 28
	line	12
	
l3122:
	clrf	((c:___awmod@sign))^00h,c
	line	13
	
l3124:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u2090
	goto	u2091

u2091:
	goto	l3130
u2090:
	line	14
	
l3126:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l3128:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l3130:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u2100
	goto	u2101

u2101:
	goto	l3134
u2100:
	line	18
	
l3132:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l3134:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2111
	goto	u2110

u2111:
	goto	l3150
u2110:
	line	20
	
l3136:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l3140
	line	22
	
l3138:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l3140:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u2121
	goto	u2120
u2121:
	goto	l3138
u2120:
	line	26
	
l3142:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2131
	goto	u2130

u2131:
	goto	l3146
u2130:
	line	27
	
l3144:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l3146:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l3148:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l3142
	line	31
	
l3150:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3154
u2140:
	line	32
	
l3152:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l3154:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l1041:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 51 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            3    8[COMRAM] PTR const unsigned char 
;;		 -> STR_103(10), STR_102(2), STR_101(10), STR_100(17), 
;;		 -> STR_99(17), STR_98(11), STR_97(10), STR_96(2), 
;;		 -> STR_95(17), STR_94(17), STR_93(16), STR_92(17), 
;;		 -> STR_91(17), STR_90(4), STR_89(4), STR_88(5), 
;;		 -> STR_87(17), time_arr(9), STR_86(4), STR_85(4), 
;;		 -> STR_84(10), STR_83(5), STR_82(9), STR_81(2), 
;;		 -> STR_80(9), STR_79(17), STR_78(17), STR_77(9), 
;;		 -> STR_76(9), STR_75(2), STR_74(17), STR_73(17), 
;;		 -> STR_72(16), STR_71(17), STR_70(17), STR_69(5), 
;;		 -> STR_68(21), date_arr(9), STR_67(4), STR_66(4), 
;;		 -> STR_65(4), STR_64(4), STR_63(4), STR_62(4), 
;;		 -> STR_61(4), STR_60(18), STR_59(17), STR_58(17), 
;;		 -> store_events@arr_300(10), STR_57(16), STR_56(16), STR_55(14), 
;;		 -> STR_54(18), STR_53(17), STR_52(17), store_events@arr(10), 
;;		 -> STR_51(20), STR_50(17), STR_49(5), STR_48(5), 
;;		 -> STR_47(20), time_up(9), STR_46(4), STR_45(4), 
;;		 -> STR_44(17), STR_43(17), STR_42(3), STR_41(3), 
;;		 -> STR_40(2), STR_39(2), ROM(12288), STR_38(12), 
;;		 -> STR_37(7), STR_36(4), STR_35(4), STR_34(6), 
;;		 -> STR_33(4), STR_32(4), time(9), STR_31(6), 
;;		 -> date(9), STR_30(6), STR_29(17), STR_28(17), 
;;		 -> STR_27(4), STR_26(4), STR_25(4), STR_24(4), 
;;		 -> STR_23(4), STR_22(4), STR_21(4), STR_20(8), 
;;		 -> STR_19(2), STR_18(20), STR_17(17), STR_16(17), 
;;		 -> index(2), STR_15(19), STR_14(17), STR_13(17), 
;;		 -> view_arr(270), STR_12(13), STR_11(14), STR_10(15), 
;;		 -> STR_9(2), STR_8(14), STR_7(17), STR_6(17), 
;;		 -> STR_5(15), STR_4(14), STR_3(2), STR_2(17), 
;;		 -> STR_1(17), 
;;  addr            1   11[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main_menu
;;		_view_events
;;		_check
;;		_default_screen
;;		_set_events
;;		_store_events
;;		_set_date
;;		_set_time_date
;;		_set_time
;;		_set_view_events
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	51
global __ptext40
__ptext40:
psect	text40
	file	"clcd.c"
	line	51
	
_clcd_print:
;incstack = 0
	callstack 27
	line	53
	
l3158:
;clcd.c: 53: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	54
;clcd.c: 54: while (*data != '\0')
	goto	l3164
	line	56
	
l3160:
;clcd.c: 55: {;clcd.c: 56: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	movff	(c:clcd_print@data+2),tblptru
	
	btfsc	tblptru,5
	bra	u2157
	tblrd	*
	
	movf	tablat,w
	bra	u2150
u2157:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2150:
	
	call	_clcd_write
	
l3162:
	movlw	low(01h)
	addwf	((c:clcd_print@data))^00h,c
	movlw	high(01h)
	addwfc	((c:clcd_print@data+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:clcd_print@data+2))^00h,c
	line	54
	
l3164:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	movff	(c:clcd_print@data+2),tblptru
	
	btfsc	tblptru,5
	bra	u2167
	tblrd	*
	
	movf	tablat,w
	bra	u2160
u2167:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2160:
	iorlw	0
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l3160
u2170:
	line	58
	
l658:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 13 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_check
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	13
global __ptext41
__ptext41:
psect	text41
	file	"clcd.c"
	line	13
	
_clcd_write:
;incstack = 0
	callstack 27
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte))^00h,c
	line	15
	
l3058:
;clcd.c: 15: RC1 = control_bit;
	btfsc	((c:clcd_write@control_bit))^00h,c,0
	goto	u2001
	goto	u2000
u2001:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u2015
u2000:
	bcf	c:(31761/8),(31761)&7	;volatile
u2015:
	line	16
	
l3060:
;clcd.c: 16: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	19
	
l3062:
;clcd.c: 19: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	20
	
l3064:
;clcd.c: 20: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	22
	
l3066:
;clcd.c: 22: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	23
	
l3068:
;clcd.c: 23: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	24
	
l3070:
;clcd.c: 24: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	28
	
l3072:
;clcd.c: 27: {;clcd.c: 28: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	29
	
l3074:
;clcd.c: 29: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	30
	
l3076:
;clcd.c: 30: } while (RD7);
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l3072
u2020:
	
l648:
	line	32
;clcd.c: 32: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	33
;clcd.c: 33: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	34
	
l649:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_events
;;		_default_screen
;;		_store_events
;;		_shift_store_event
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awdiv.c"
	line	7
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files\Microchip\xc8\v2.50\pic\sources\c90\common\awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 28
	line	13
	
l3078:
	clrf	((c:___awdiv@sign))^00h,c
	line	14
	
l3080:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u2030
	goto	u2031

u2031:
	goto	l3086
u2030:
	line	15
	
l3082:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l3084:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l3086:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u2040
	goto	u2041

u2041:
	goto	l3092
u2040:
	line	19
	
l3088:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l3090:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l3092:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l3094:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2051
	goto	u2050

u2051:
	goto	l3114
u2050:
	line	24
	
l3096:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l3100
	line	26
	
l3098:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l3100:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u2061
	goto	u2060
u2061:
	goto	l3098
u2060:
	line	30
	
l3102:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l3104:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2071
	goto	u2070

u2071:
	goto	l3110
u2070:
	line	32
	
l3106:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l3108:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l3110:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l3112:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l3102
	line	38
	
l3114:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l3118
u2080:
	line	39
	
l3116:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l3118:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l1028:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 8 in file "isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"pic18F4580.as"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"isr.c"
	line	8
	
_isr:
;incstack = 0
	callstack 23
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	line	11
	
i2l4458:
;isr.c: 11: if (TMR0IF)
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u392_41
	goto	i2u392_40
i2u392_41:
	goto	i2l677
i2u392_40:
	line	14
	
i2l4460:
;isr.c: 12: {;isr.c: 14: TMR0 = TMR0 + 8;
	movlw	low(08h)
	addwf	((c:4054))^0f00h,c,w	;volatile
	movwf	((c:4054))^0f00h,c	;volatile
	movlw	high(08h)
	addwfc	((c:4054+1))^0f00h,c,w	;volatile
	movwf	1+((c:4054))^0f00h,c	;volatile
	line	16
;isr.c: 16: if (++cnt == 20000)
	movlb	0	; () banked
	infsnz	((_cnt))&0ffh
	incf	((_cnt+1))&0ffh
		movlw	32
	xorwf	((_cnt))&0ffh,w
	bnz	i2u393_41
	movlw	78
	xorwf	((_cnt+1))&0ffh,w
	btfss	status,2
	goto	i2u393_41
	goto	i2u393_40

i2u393_41:
	goto	i2l4468
i2u393_40:
	line	18
	
i2l4462:; BSR set to: 0

;isr.c: 17: {;isr.c: 18: count++;
	infsnz	((c:_count))^00h,c
	incf	((c:_count+1))^00h,c
	line	19
	
i2l4464:; BSR set to: 0

;isr.c: 19: if (count > 7)
		movf	((c:_count+1))^00h,c,w
	bnz	i2u394_40
	movlw	8
	subwf	 ((c:_count))^00h,c,w
	btfss	status,0
	goto	i2u394_41
	goto	i2u394_40

i2u394_41:
	goto	i2l676
i2u394_40:
	line	21
	
i2l4466:; BSR set to: 0

;isr.c: 20: {;isr.c: 21: count = 0;
	movlw	high(0)
	movwf	((c:_count+1))^00h,c
	movlw	low(0)
	movwf	((c:_count))^00h,c
	line	22
	
i2l676:; BSR set to: 0

	line	23
;isr.c: 22: };isr.c: 23: cnt = 0;
	movlw	high(0)
	movwf	((_cnt+1))&0ffh
	movlw	low(0)
	movwf	((_cnt))&0ffh
	line	27
	
i2l4468:; BSR set to: 0

;isr.c: 24: };isr.c: 27: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	29
	
i2l677:
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
psect	mediumconst
	db 0	; dummy byte at the end
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	3
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1,lowdata
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
