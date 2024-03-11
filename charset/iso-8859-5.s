;
;      ISO-8859-5        X16 Additions
;                           (inverted)
;
; 00|                | |@ABCDEFGHIJKLMNO|
; 10|                | |PQRSTUVWXYZ[\]^_|
; 20| !"#$%&'()*+,-./|
; 30|0123456789:;<=>?|
; 40|@ABCDEFGHIJKLMNO|
; 50|PQRSTUVWXYZ[\]^_|
; 60|`abcdefghijklmno|
; 70|pqrstuvwxyz{|}~ |
; 80|                | |`abcdefghijklmno|
; 90|                | |pqrstuvwxyz{|}~ |
; A0| ЁЂЃЄЅІЇЈЉЊЋЌ ЎЏ|
; B0|АБВГДЕЖЗИЙКЛМНОП|
; C0|РСТУФХЦЧШЩЪЫЬЭЮЯ|
; D0|абвгдежзийклмноп|
; E0|рстуфхцчшщъыьэюя|
; F0|№ёђѓєѕіїјљњћќ§ўџ|

.segment "CHARCYR"

; $00
.byte %11000011
.byte %10011001
.byte %10010001
.byte %10010001
.byte %10010001
.byte %10011111
.byte %11000001
.byte %11111111

; $01
.byte %11100111
.byte %11000011
.byte %11011011
.byte %10011001
.byte %10000001
.byte %10011001
.byte %10011001
.byte %11111111

; $02
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %11111111

; $03
.byte %11000011
.byte %10011001
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011001
.byte %11000011
.byte %11111111

; $04
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10000011
.byte %11111111

; $05
.byte %10000001
.byte %10011111
.byte %10011111
.byte %10000011
.byte %10011111
.byte %10011111
.byte %10000001
.byte %11111111

; $06
.byte %10000001
.byte %10011111
.byte %10011111
.byte %10000011
.byte %10011111
.byte %10011111
.byte %10011111
.byte %11111111

; $07
.byte %11000011
.byte %10011001
.byte %10011111
.byte %10010001
.byte %10011001
.byte %10011001
.byte %11000001
.byte %11111111

; $08
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10000001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

; $09
.byte %10000001
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %10000001
.byte %11111111

; $0a
.byte %11100001
.byte %11111001
.byte %11111001
.byte %11111001
.byte %11111001
.byte %10011001
.byte %11000011
.byte %11111111

; $0b
.byte %10011001
.byte %10010011
.byte %10000111
.byte %10001111
.byte %10000111
.byte %10010011
.byte %10011001
.byte %11111111

; $0c
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10000001
.byte %11111111

; $0d
.byte %10011100
.byte %10001000
.byte %10000000
.byte %10010100
.byte %10011100
.byte %10011100
.byte %10011100
.byte %11111111

; $0e
.byte %10011001
.byte %10001001
.byte %10000001
.byte %10000001
.byte %10010001
.byte %10011001
.byte %10011001
.byte %11111111

; $0f
.byte %11000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

; $10
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %10011111
.byte %10011111
.byte %10011111
.byte %11111111

; $11
.byte %11000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10001001
.byte %10010011
.byte %11001001
.byte %11111111

; $12
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

; $13
.byte %11000011
.byte %10011001
.byte %10011111
.byte %11000011
.byte %11111001
.byte %10011001
.byte %11000011
.byte %11111111

; $14
.byte %10000001
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

; $15
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

; $16
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11011011
.byte %11000011
.byte %11100111
.byte %11111111

; $17
.byte %10011100
.byte %10011100
.byte %10010100
.byte %10010100
.byte %10000000
.byte %10001000
.byte %10011100
.byte %11111111

; $18
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11000011
.byte %10011001
.byte %10011001
.byte %11111111

; $19
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

; $1a
.byte %10000001
.byte %11111001
.byte %11110011
.byte %11100111
.byte %11001111
.byte %10011111
.byte %10000001
.byte %11111111

; $1b
.byte %11000011
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11000011
.byte %11111111

; $1c
.byte %11111111
.byte %10011111
.byte %11001111
.byte %11100111
.byte %11110011
.byte %11111001
.byte %11111100
.byte %11111111

; $1d
.byte %11000011
.byte %11110011
.byte %11110011
.byte %11110011
.byte %11110011
.byte %11110011
.byte %11000011
.byte %11111111

; $1e
.byte %11100111
.byte %11000011
.byte %10011001
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

; $1f
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %00000000

; $20
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $21 !
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000
.byte %00011000
.byte %00000000

; $22 "
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $23 #
.byte %00000000
.byte %00110110
.byte %01111111
.byte %00110110
.byte %01101100
.byte %11111110
.byte %01101100
.byte %00000000

; $24 $
.byte %00011000
.byte %00111110
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01111100
.byte %00011000
.byte %00000000

; $25 %
.byte %01100010
.byte %01100110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01100110
.byte %01000110
.byte %00000000

; $26 &
.byte %00011100
.byte %00110110
.byte %00011100
.byte %00111000
.byte %01101101
.byte %01100110
.byte %00111011
.byte %00000000

; $27 '
.byte %00011000
.byte %00011000
.byte %00110000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $28 (
.byte %00001100
.byte %00011000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00011000
.byte %00001100
.byte %00000000

; $29 )
.byte %00110000
.byte %00011000
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00011000
.byte %00110000
.byte %00000000

; $2a *
.byte %00000000
.byte %01100110
.byte %00111100
.byte %11111111
.byte %00111100
.byte %01100110
.byte %00000000
.byte %00000000

; $2b +
.byte %00000000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00000000
.byte %00000000

; $2c ,
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00110000

; $2d -
.byte %00000000
.byte %00000000
.byte %00000000
.byte %01111110
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $2e .
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00000000

; $2f /
.byte %00000000
.byte %00000011
.byte %00000110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01100000
.byte %00000000

; $30 0
.byte %00111100
.byte %01100110
.byte %01101110
.byte %01110110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $31 1
.byte %00011000
.byte %00011000
.byte %01111000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00000000

; $32 2
.byte %00111100
.byte %01100110
.byte %00000110
.byte %00011100
.byte %00110000
.byte %01100000
.byte %01111110
.byte %00000000

; $33 3
.byte %00111100
.byte %01100110
.byte %00000110
.byte %00011100
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $34 4
.byte %00001110
.byte %00011110
.byte %00110110
.byte %01100110
.byte %01111111
.byte %00000110
.byte %00000110
.byte %00000000

; $35 5
.byte %01111110
.byte %01100000
.byte %01111100
.byte %00000110
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $36 6
.byte %00111100
.byte %01100110
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $37 7
.byte %01111110
.byte %00000110
.byte %00001100
.byte %00001100
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $38 8
.byte %00111100
.byte %01100110
.byte %01100110
.byte %00111100
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $39 9
.byte %00111100
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $3a :
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00000000

; $3b ;
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00110000

; $3c <
.byte %00001110
.byte %00011000
.byte %00110000
.byte %01100000
.byte %00110000
.byte %00011000
.byte %00001110
.byte %00000000

; $3d =
.byte %00000000
.byte %00000000
.byte %01111110
.byte %00000000
.byte %01111110
.byte %00000000
.byte %00000000
.byte %00000000

; $3e >
.byte %01110000
.byte %00011000
.byte %00001100
.byte %00000110
.byte %00001100
.byte %00011000
.byte %01110000
.byte %00000000

; $3f ?
.byte %00111100
.byte %01100110
.byte %00000110
.byte %00001100
.byte %00011000
.byte %00000000
.byte %00011000
.byte %00000000

; $40 @
.byte %00111100
.byte %01100110
.byte %01101110
.byte %01101110
.byte %01101110
.byte %01100000
.byte %00111110
.byte %00000000

; $41 A
.byte %00011000
.byte %00111100
.byte %00100100
.byte %01100110
.byte %01111110
.byte %01100110
.byte %01100110
.byte %00000000

; $42 B
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

; $43 C
.byte %00111100
.byte %01100110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100110
.byte %00111100
.byte %00000000

; $44 D
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

; $45 E
.byte %01111110
.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100000
.byte %01100000
.byte %01111110
.byte %00000000

; $46 F
.byte %01111110
.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $47 G
.byte %00111100
.byte %01100110
.byte %01100000
.byte %01101110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000000

; $48 H
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $49 I
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00000000

; $4a J
.byte %00011110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $4b K
.byte %01100110
.byte %01101100
.byte %01111000
.byte %01110000
.byte %01111000
.byte %01101100
.byte %01100110
.byte %00000000

; $4c L
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01111110
.byte %00000000

; $4d M
.byte %01100011
.byte %01110111
.byte %01111111
.byte %01101011
.byte %01100011
.byte %01100011
.byte %01100011
.byte %00000000

; $4e N
.byte %01100110
.byte %01110110
.byte %01111110
.byte %01111110
.byte %01101110
.byte %01100110
.byte %01100110
.byte %00000000

; $4f O
.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $50 P
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $51 Q
.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01110110
.byte %01101100
.byte %00110110
.byte %00000000

; $52 R
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $53 S
.byte %00111100
.byte %01100110
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $54 T
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $55 U
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $56 V
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00100100
.byte %00111100
.byte %00011000
.byte %00000000

; $57 W
.byte %01100011
.byte %01100011
.byte %01101011
.byte %01101011
.byte %01111111
.byte %01110111
.byte %01100011
.byte %00000000

; $58 X
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00111100
.byte %01100110
.byte %01100110
.byte %00000000

; $59 Y
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $5a Z
.byte %01111110
.byte %00000110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01100000
.byte %01111110
.byte %00000000

; $5b [
.byte %00111100
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00111100
.byte %00000000

; $5c \
.byte %00000000
.byte %01100000
.byte %00110000
.byte %00011000
.byte %00001100
.byte %00000110
.byte %00000011
.byte %00000000

; $5d ]
.byte %00111100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00111100
.byte %00000000

; $5e ^
.byte %00011000
.byte %00111100
.byte %01100110
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $5f _
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111

; $60 `
.byte %00110000
.byte %00011000
.byte %00001100
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $61 a
.byte %00000000
.byte %00000000
.byte %00111100
.byte %00000110
.byte %00111110
.byte %01100110
.byte %00111110
.byte %00000000

; $62 b
.byte %01100000
.byte %01100000
.byte %01101100
.byte %01110110
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

; $63 c
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01100000
.byte %01100110
.byte %00111100
.byte %00000000

; $64 d
.byte %00000110
.byte %00000110
.byte %00110110
.byte %01101110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000000

; $65 e
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01111110
.byte %01100000
.byte %00111110
.byte %00000000

; $66 f
.byte %00011100
.byte %00110110
.byte %00110000
.byte %01111000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00000000

; $67 g
.byte %00000000
.byte %00000000
.byte %00110110
.byte %01101110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %01111100

; $68 h
.byte %01100000
.byte %01100000
.byte %01101100
.byte %01110110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $69 i
.byte %00011000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $6a j
.byte %00000110
.byte %00000000
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %01100110
.byte %00111100

; $6b k
.byte %01100000
.byte %01100000
.byte %01100110
.byte %01101100
.byte %01111000
.byte %01101100
.byte %01100110
.byte %00000000

; $6c l
.byte %00111000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $6d m
.byte %00000000
.byte %00000000
.byte %01110110
.byte %01101011
.byte %01101011
.byte %01100011
.byte %01100011
.byte %00000000

; $6e n
.byte %00000000
.byte %00000000
.byte %01101100
.byte %01110110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $6f o
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $70 p
.byte %00000000
.byte %00000000
.byte %01101100
.byte %01110110
.byte %01100110
.byte %01111100
.byte %01100000
.byte %01100000

; $71 q
.byte %00000000
.byte %00000000
.byte %00110110
.byte %01101110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %00000110

; $72 r
.byte %00000000
.byte %00000000
.byte %01101100
.byte %01110110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $73 s
.byte %00000000
.byte %00000000
.byte %00111110
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01111100
.byte %00000000

; $74 t
.byte %00110000
.byte %00110000
.byte %01111000
.byte %00110000
.byte %00110000
.byte %00110110
.byte %00011100
.byte %00000000

; $75 u
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01101110
.byte %00110110
.byte %00000000

; $76 v
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00000000

; $77 w
.byte %00000000
.byte %00000000
.byte %01100011
.byte %01101011
.byte %01101011
.byte %01111111
.byte %00110110
.byte %00000000

; $78 x
.byte %00000000
.byte %00000000
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00111100
.byte %01100110
.byte %00000000

; $79 y
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %01110000

; $7a z
.byte %00000000
.byte %00000000
.byte %01111110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01111110
.byte %00000000

; $7b {
.byte %00001110
.byte %00011000
.byte %00011000
.byte %01110000
.byte %00011000
.byte %00011000
.byte %00001110
.byte %00000000

; $7c |
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $7d }
.byte %01110000
.byte %00011000
.byte %00011000
.byte %00001110
.byte %00011000
.byte %00011000
.byte %01110000
.byte %00000000

; $7e ~
.byte %00000000
.byte %00000000
.byte %01110110
.byte %11011100
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $7f (nonprintable, repurposed for shade box)
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011

; $80
.byte %11001111
.byte %11100111
.byte %11110011
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

; $81
.byte %11111111
.byte %11111111
.byte %11000011
.byte %11111001
.byte %11000001
.byte %10011001
.byte %11000001
.byte %11111111

; $82
.byte %10011111
.byte %10011111
.byte %10010011
.byte %10001001
.byte %10011001
.byte %10011001
.byte %10000011
.byte %11111111

; $83
.byte %11111111
.byte %11111111
.byte %11000011
.byte %10011001
.byte %10011111
.byte %10011001
.byte %11000011
.byte %11111111

; $84
.byte %11111001
.byte %11111001
.byte %11001001
.byte %10010001
.byte %10011001
.byte %10011001
.byte %11000001
.byte %11111111

; $85
.byte %11111111
.byte %11111111
.byte %11000011
.byte %10011001
.byte %10000001
.byte %10011111
.byte %11000001
.byte %11111111

; $86
.byte %11100011
.byte %11001001
.byte %11001111
.byte %10000111
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11111111

; $87
.byte %11111111
.byte %11111111
.byte %11001001
.byte %10010001
.byte %10011001
.byte %11000001
.byte %11111001
.byte %10000011

; $88
.byte %10011111
.byte %10011111
.byte %10010011
.byte %10001001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

; $89
.byte %11100111
.byte %11111111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

; $8a
.byte %11111001
.byte %11111111
.byte %11111001
.byte %11111001
.byte %11111001
.byte %11111001
.byte %10011001
.byte %11000011

; $8b
.byte %10011111
.byte %10011111
.byte %10011001
.byte %10010011
.byte %10000111
.byte %10010011
.byte %10011001
.byte %11111111

; $8c
.byte %11000111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

; $8d
.byte %11111111
.byte %11111111
.byte %10001001
.byte %10010100
.byte %10010100
.byte %10011100
.byte %10011100
.byte %11111111

; $8e
.byte %11111111
.byte %11111111
.byte %10010011
.byte %10001001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

; $8f
.byte %11111111
.byte %11111111
.byte %11000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

; $90
.byte %11111111
.byte %11111111
.byte %10010011
.byte %10001001
.byte %10011001
.byte %10000011
.byte %10011111
.byte %10011111

; $91
.byte %11111111
.byte %11111111
.byte %11001001
.byte %10010001
.byte %10011001
.byte %11000001
.byte %11111001
.byte %11111001

; $92
.byte %11111111
.byte %11111111
.byte %10010011
.byte %10001001
.byte %10011111
.byte %10011111
.byte %10011111
.byte %11111111

; $93
.byte %11111111
.byte %11111111
.byte %11000001
.byte %10011111
.byte %11000011
.byte %11111001
.byte %10000011
.byte %11111111

; $94
.byte %11001111
.byte %11001111
.byte %10000111
.byte %11001111
.byte %11001111
.byte %11001001
.byte %11100011
.byte %11111111

; $95
.byte %11111111
.byte %11111111
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10010001
.byte %11001001
.byte %11111111

; $96
.byte %11111111
.byte %11111111
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11111111

; $97
.byte %11111111
.byte %11111111
.byte %10011100
.byte %10010100
.byte %10010100
.byte %10000000
.byte %11001001
.byte %11111111

; $98
.byte %11111111
.byte %11111111
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11000011
.byte %10011001
.byte %11111111

; $99
.byte %11111111
.byte %11111111
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %10001111

; $9a
.byte %11111111
.byte %11111111
.byte %10000001
.byte %11110011
.byte %11100111
.byte %11001111
.byte %10000001
.byte %11111111

; $9b
.byte %11100011
.byte %11001111
.byte %11001111
.byte %00011111
.byte %11001111
.byte %11001111
.byte %11100011
.byte %11111111

; $9c
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

; $9d
.byte %11000111
.byte %11110011
.byte %11110011
.byte %11111000
.byte %11110011
.byte %11110011
.byte %11000111
.byte %11111111

; $9e
.byte %11111111
.byte %11111111
.byte %10001001
.byte %00100011
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

; $9f
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111


; $a0 
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; $a1 Ё
.byte %01100110
.byte %00000000
.byte %01111110
.byte %01100000
.byte %01111000
.byte %01100000
.byte %01111110
.byte %00000000

; $a2 Ђ
.byte %01111110
.byte %00110000
.byte %00110000
.byte %00111110
.byte %00110011
.byte %00110011
.byte %00110011
.byte %00000110

; $a3 Ѓ
.byte %00001100
.byte %00011000
.byte %01111110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $a4 Є
.byte %00111100
.byte %01110110
.byte %01100000
.byte %01111000
.byte %01100000
.byte %01110110
.byte %00111100
.byte %00000000

; $a5 Ѕ
.byte %00111100
.byte %01100110
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $a6 І
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00000000

; $a7 Ї
.byte %01100110
.byte %00000000
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00000000

; $a8 Ј
.byte %00011110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $a9 Љ
.byte %00001100
.byte %00011100
.byte %00111100
.byte %01101111
.byte %01101101
.byte %01101101
.byte %01101111
.byte %00000000

; $aa Њ
.byte %01101100
.byte %01101100
.byte %01101100
.byte %01111111
.byte %01101101
.byte %01101101
.byte %01101111
.byte %00000000

; $ab Ћ
.byte %01111110
.byte %00110000
.byte %00110000
.byte %00111110
.byte %00110011
.byte %00110011
.byte %00110011
.byte %00000000

; $ac Ќ
.byte %00011000
.byte %00110000
.byte %01101100
.byte %01111000
.byte %01110000
.byte %01111000
.byte %01101100
.byte %00000000

; $ad (-) (nonprintable, repurposed for Commander X16 logo)
.byte %11000011
.byte %11100111
.byte %11111111
.byte %00111100
.byte %00011000
.byte %01111110
.byte %11100111
.byte %00000000

; $ae Ў
.byte %00111100
.byte %00000000
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %01111100
.byte %00000000

; $af Џ
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111110
.byte %00011000
.byte %00000000

; $b0 А
.byte %00011000
.byte %00111100
.byte %00100100
.byte %01100110
.byte %01111110
.byte %01100110
.byte %01100110
.byte %00000000

; $b1 Б
.byte %01111100
.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

; $b2 В
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

; $b3 Г
.byte %01111110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $b4 Д
.byte %00011110
.byte %00110110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %11111111
.byte %11000011

; $b5 Е
.byte %01111110
.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100000
.byte %01100000
.byte %01111110
.byte %00000000

; $b6 Ж
.byte %01101011
.byte %01101011
.byte %01101011
.byte %00111110
.byte %01101011
.byte %01101011
.byte %01101011
.byte %00000000

; $b7 З
.byte %00111100
.byte %00000110
.byte %00000110
.byte %00111100
.byte %00000110
.byte %00000110
.byte %00111100
.byte %00000000

; $b8 И
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01101110
.byte %01111110
.byte %01110110
.byte %01100110
.byte %00000000

; $b9 Й
.byte %00111100
.byte %00000000
.byte %01100110
.byte %01101110
.byte %01111110
.byte %01110110
.byte %01100110
.byte %00000000

; $ba К
.byte %01100110
.byte %01101100
.byte %01111000
.byte %01110000
.byte %01111000
.byte %01101100
.byte %01100110
.byte %00000000

; $bb Л
.byte %00001110
.byte %00011110
.byte %00110110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $bc М
.byte %01100011
.byte %01110111
.byte %01111111
.byte %01101011
.byte %01100011
.byte %01100011
.byte %01100011
.byte %00000000

; $bd Н
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $be О
.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $bf П
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $c0 Р
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $c1 С
.byte %00111100
.byte %01100110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100110
.byte %00111100
.byte %00000000

; $c2 Т
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $c3 У
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

; $c4 Ф
.byte %00011000
.byte %01111110
.byte %11011011
.byte %11011011
.byte %11011011
.byte %01111110
.byte %00011000
.byte %00000000

; $c5 Х
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00111100
.byte %01100110
.byte %01100110
.byte %00000000

; $c6 Ц
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111111
.byte %00000011

; $c7 Ч
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000000

; $c8 Ш
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01111111
.byte %00000000

; $c9 Щ
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01111111
.byte %00000011

; $ca Ъ
.byte %01111000
.byte %00011000
.byte %00011000
.byte %00011110
.byte %00011011
.byte %00011011
.byte %00011110
.byte %00000000

; $cb Ы
.byte %01100011
.byte %01100011
.byte %01100011
.byte %01111011
.byte %01101111
.byte %01101111
.byte %01111011
.byte %00000000

; $cc Ь
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

; $cd Э
.byte %00111100
.byte %01101110
.byte %00000110
.byte %00011110
.byte %00000110
.byte %01101110
.byte %00111100
.byte %00000000

; $ce Ю
.byte %01100110
.byte %01101111
.byte %01101011
.byte %01111011
.byte %01101011
.byte %01101111
.byte %01100110
.byte %00000000

; $cf Я
.byte %00111110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $d0 а
.byte %00000000
.byte %00000000
.byte %00111100
.byte %00000110
.byte %00111110
.byte %01100110
.byte %00111110
.byte %00000000

; $d1 б
.byte %00001100
.byte %00111000
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $d2 в
.byte %00000000
.byte %00000000
.byte %01111100
.byte %01100110
.byte %01111100
.byte %01100110
.byte %01111100
.byte %00000000

; $d3 г
.byte %00000000
.byte %00000000
.byte %01111110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $d4 д
.byte %00000000
.byte %00000000
.byte %00111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %11111111
.byte %11000011

; $d5 е
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01111110
.byte %01100000
.byte %00111110
.byte %00000000

; $d6 ж
.byte %00000000
.byte %00000000
.byte %01101011
.byte %01101011
.byte %00111110
.byte %01101011
.byte %01101011
.byte %00000000

; $d7 з
.byte %00000000
.byte %00000000
.byte %00111100
.byte %00000110
.byte %00111100
.byte %00000110
.byte %00000110
.byte %00111100

; $d8 и
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01101110
.byte %01110110
.byte %01100110
.byte %00000000

; $d9 й
.byte %00111100
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01101110
.byte %01110110
.byte %01100110
.byte %00000000

; $da к
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01101100
.byte %01111000
.byte %01101100
.byte %01100110
.byte %00000000

; $db л
.byte %00000000
.byte %00000000
.byte %00011110
.byte %00110110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $dc м
.byte %00000000
.byte %00000000
.byte %01100011
.byte %01110111
.byte %01111111
.byte %01101011
.byte %01100011
.byte %00000000

; $dd н
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01111110
.byte %01100110
.byte %01100110
.byte %00000000

; $de о
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

; $df п
.byte %00000000
.byte %00000000
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

; $e0 р
.byte %00000000
.byte %00000000
.byte %01101100
.byte %01110110
.byte %01100110
.byte %01111100
.byte %01100000
.byte %01100000

; $e1 с
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01100000
.byte %01100110
.byte %00111100
.byte %00000000

; $e2 т
.byte %00000000
.byte %00000000
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $e3 у
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %01110000

; $e4 ф
.byte %00011000
.byte %00011000
.byte %01111110
.byte %11011011
.byte %11011011
.byte %01111110
.byte %00011000
.byte %00011000

; $e5 х
.byte %00000000
.byte %00000000
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00111100
.byte %01100110
.byte %00000000

; $e6 ц
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111111
.byte %00000011

; $e7 ч
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %00000110
.byte %00000000

; $e8 ш
.byte %00000000
.byte %00000000
.byte %01100011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01111111
.byte %00000000

; $e9 щ
.byte %00000000
.byte %00000000
.byte %01100011
.byte %01101011
.byte %01101011
.byte %01101011
.byte %01111111
.byte %00000011

; $ea ъ
.byte %00000000
.byte %00000000
.byte %01111000
.byte %00011000
.byte %00011110
.byte %00011011
.byte %00011110
.byte %00000000

; $eb ы
.byte %00000000
.byte %00000000
.byte %01100011
.byte %01100011
.byte %01111011
.byte %01101111
.byte %01111011
.byte %00000000

; $ec ь
.byte %00000000
.byte %00000000
.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01111100
.byte %00000000

; $ed э
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01000110
.byte %00011110
.byte %01000110
.byte %00111100
.byte %00000000

; $ee ю
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01101011
.byte %01111011
.byte %01101111
.byte %01100110
.byte %00000000

; $ef я
.byte %00000000
.byte %00000000
.byte %00111110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %01100110
.byte %00000000

; $f0 №
.byte %11001111
.byte %11101101
.byte %11111111
.byte %11111100
.byte %11011111
.byte %11001100
.byte %11001100
.byte %00000000

; $f1 ё
.byte %01100110
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01111110
.byte %01100000
.byte %00111110
.byte %00000000

; $f2 ђ
.byte %00110000
.byte %01111110
.byte %00110000
.byte %00110110
.byte %00111011
.byte %00110011
.byte %00110011
.byte %00000110

; $f3 ѓ
.byte %00001100
.byte %00011000
.byte %00000000
.byte %01111110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

; $f4 є
.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100010
.byte %01111000
.byte %01100010
.byte %00111100
.byte %00000000

; $f5 ѕ
.byte %00000000
.byte %00000000
.byte %00111110
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01111100
.byte %00000000

; $f6 і
.byte %00011000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $f7 ї
.byte %01100110
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

; $f8 ј
.byte %00000110
.byte %00000000
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %01100110
.byte %00111100

; $f9 љ
.byte %00000000
.byte %00000000
.byte %00011100
.byte %00111100
.byte %01101111
.byte %01101101
.byte %01101111
.byte %00000000

; $fa њ
.byte %00000000
.byte %00000000
.byte %01101100
.byte %01101100
.byte %01111111
.byte %01101101
.byte %01101111
.byte %00000000

; $fb ћ
.byte %00110000
.byte %01111110
.byte %00110000
.byte %00110110
.byte %00111011
.byte %00110011
.byte %00110011
.byte %00000000

; $fc ќ
.byte %00001100
.byte %00011000
.byte %01100110
.byte %01101100
.byte %01111000
.byte %01101100
.byte %01100110
.byte %00000000

; $fd §
.byte %00011110
.byte %00110011
.byte %00011100
.byte %00110110
.byte %00110110
.byte %00011100
.byte %01100110
.byte %00111100

; $fe ў
.byte %00111100
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %01110000

; $ff џ
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111110
.byte %00011000