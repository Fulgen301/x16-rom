.include "banks.inc"
.include "regs.inc"
.include "machine.inc"
.include "65c816.inc"

.export register_device, unregister_device
.export file_open

.import get_last_far_bank
.import memtop
.import kvswitch_tmp1, kvswitch_tmp2
.importzp tmp2

.macpack longbranch

ram_bank = 0
VERSION = 1
DEVICE_MASK = %11111000
FILE_MASK = %00000111

.struct Device
	api_version			.word
	open				.addr
	close				.addr
	read_byte			.addr
	write_byte			.addr
	read				.addr
	write				.addr
	read_long			.addr
	write_long			.addr
	device_control		.addr
	file_control		.addr
.endstruct

.enum OpenMode
	Read		= %00000001
	Write		= %00000010
	Append		= %00000100
	Truncate	= %00001000

	Mask		= %00001111
.endenum

.enum Error
	InvalidArgument = 1
	Conflict = 2
	NoFreeDevices = 3
	InvalidVersion = 4
	Unsupported = 5
	NotImplemented = 6
.endenum

.define DEVICE_FIRST 9
.define DEVICE_LAST 30
.define DEVICE_COUNT 21

.segment "KVARSB0"

.proc registered_devices_addr_low
	.res DEVICE_COUNT
.endproc

.proc registered_devices_addr_high
	.res DEVICE_COUNT
.endproc

.proc registered_devices_high_bank
	.res DEVICE_COUNT
.endproc


.segment "NEWIOAPI"

.macro define_error error, number
	error:
		KVARS_END_TRASH_X_NZ
		ldx #Error::number
		sec
		rts
.endmacro

.proc errors
	define_error invalid_argument, InvalidArgument
	define_error conflict, Conflict
	define_error no_free_devices, NoFreeDevices
	define_error invalid_version, InvalidVersion
.endproc

.proc check_device_number
	cpx #DEVICE_FIRST						; number >= 9?
	bcc error
	cpx #DEVICE_LAST + 1					; number < 31?
	bcs error
	rts

error:
	plx										; pop return address
	plx
	bra errors::invalid_argument
.endproc

;--------------------------------------------------------------
; register_device
;
; Function: Registers a device.
; Flags:    
; Input:    .X: device number (must be > 8 and < 31, or $FF to indicate highest available)
;           r0: pointer
;           r1L: pointer bank
; Output:   .A: device number (if .c = 0)
;           .X: error number (if .c = 1)
;--------------------------------------------------------------
.proc register_device
	KVARS_START_TRASH_A_NZ
	cpx #$FF								; $FF? search for available slot
	bne validate_number
	jsr find_available_device
	bcc validate_banks
	bra errors::no_free_devices				; all slots filled

validate_number:
	jsr check_device_number					; will branch to invalid_argument on error

validate_banks:
	lda r1L
	beq validate_version					; bank 0 is always present
	phx
	jsr memtop								; get highest bank number
	plx
	cmp #$00								; all high banks present? valid
	beq validate_version
	cmp r1L									; r1L > = number of banks? error
	jcc errors::invalid_argument

validate_version:
	lda r1L
	sta ram_bank							; switch to driver RAM bank
	lda r0
	sta tmp2
	lda r0 + 1
	sta tmp2 + 1
	ldy #1
	lda (tmp2),y
	cmp #>(VERSION) + 1						; check high byte
	bcs errors::invalid_version
	lda (tmp2)								; check low byte
	cmp #<(VERSION) + 1
	bcs errors::invalid_version

valid:										; .c is always set
	lda r0
	sta registered_devices_addr_low - DEVICE_FIRST,x
	lda r0 + 1
	sta registered_devices_addr_high - DEVICE_FIRST,x
	lda r1L
	sta registered_devices_high_bank - DEVICE_FIRST,x

	clc
	KVARS_END_TRASH_Y_NZ
	rts
.endproc

.proc find_available_device
	ldy #DEVICE_FIRST
loop:
	lda registered_devices_addr_low - DEVICE_FIRST,y				; check for addr == 0 && bank == 0
	bne @next
	lda registered_devices_addr_high - DEVICE_FIRST,y
	bne @next
	lda registered_devices_high_bank - DEVICE_FIRST,y
	beq found

@next:
	cpy #.sizeof(registered_devices_addr_low) - 1
	beq notfound
	iny
	bra loop

found:
	clc
	rts

notfound:
	sec
	rts
.endproc

;--------------------------------------------------------------
; unregister_device
;
; Function: Unregisters a device.
; Flags:    
; Input:    .X: device number (must be > 8 and < 31)
; Output:   .c = 0 on success
;           .c = 1 on failure
;--------------------------------------------------------------
.proc unregister_device
	KVARS_START_TRASH_A_NZ
	jsr check_device_number
	stz registered_devices_addr_low - DEVICE_FIRST,x
	stz registered_devices_addr_high - DEVICE_FIRST,x
	stz registered_devices_high_bank - DEVICE_FIRST,x

	clc
exit:
	KVARS_END_TRASH_A_NZ
	rts
.endproc

;--------------------------------------------------------------
; call_device
;
; Function: Calls a device.
; Flags:    
; Input:    X: fd
;           Y: call index
; Output:   .c = 0 on success
;           .c = 1 on failure
;--------------------------------------------------------------
.proc call_device
	stx tmp2
	txa
	lsr
	lsr
	lsr
	; fallthrough
.endproc

;--------------------------------------------------------------
; call_device_fd_in_tmp2
;
; Function: Calls a device.
; Flags:    
; Input:    X: device
;           Y: call index
; Output:   .c = 0 on success
;           .c = 1 on failure
;--------------------------------------------------------------

.proc call_device_fd_in_tmp2
	lda registered_devices_addr_low - DEVICE_FIRST,x
	sta imparm
	lda registered_devices_addr_high - DEVICE_FIRST,x
	sta imparm + 1
	lda registered_devices_high_bank - DEVICE_FIRST,x
	sta ram_bank

	lda (imparm),y
	sta jmpfr + 1
	iny
	lda (imparm),y
	sta jmpfr + 2

	lda tmp2
	jsr jmpfr
	stz ram_bank
	rts
.endproc

;--------------------------------------------------------------
; file_open
;
; Function: Opens a file.
; Flags:    
; Input:    r0: path
;           r1L: mode
; Output:   .A: fd (if .c = 0)
;           .X = error (if .c = 1)
;--------------------------------------------------------------
.proc file_open
	KVARS_START_TRASH_X_NZ
	jsr parse_path
	bcs exit

	cmp #DEVICE_FIRST
	bcc not_implemented						; TODO: dispatch to IEC / SD card
	tax										; X now holds the device number
	phx										; back it up for later
	stx tmp2								; and store it for call_device_fd_in_tmp2
	ldy #Device::open
	jsr call_device_fd_in_tmp2

	ply										; pop original device number
	bcs exit								; error? exit - error number is in X
	and #FILE_MASK							; make sure the file number doesn't occupy the top 5 bits
	sta tmp2
	tya										; A now holds the device number
	asl										; left shift it by 3
	asl
	asl
	ora tmp2								; carry is clear

exit:
	KVARS_START_TRASH_Y_NZ
	rts

not_implemented:
	.byte $DB
	sec
	rts
.endproc

;--------------------------------------------------------------
; parse_path
;
; Function: Parses a file path in r0.
; Flags:    
; Input:    r0: path
; Output:   A: device
;           r0: pointer to file path
; Clobbers: tmp2
;--------------------------------------------------------------
.proc parse_path
	; Path format: '8:/foo' or '12:/foo' (absolute) or '12:foo' (drive relative) 
	stz tmp2
	lda #2
	sta tmp2 + 1							; how many characters to advance the path by

	ldy #2
	lda (r0),y
	cmp #':'								; check for two digits
	beq check_two_digits
	dey
	lda (r0),y
	cmp #':'								; check for one digit
	beq check_lower_digit

check_two_digits:
	inc tmp2 + 1							; skip one more character
	lda (r0)
	cmp #'0'
	bcc invalid_argument
	cmp #'3' + 1							; 3 is the last valid value for the higher digit
	bcs invalid_argument
	sec
	sbc #'0'
	tax
	lda number_lookup_table_value,x			; lookup number value
	sta tmp2

check_lower_digit:
	dey										; now either 0 or 1
	lda (r0),y
	cmp #'0'
	bcc invalid_argument
	cmp #'9' + 1							; 9 is valid for the lower digit
	bcs invalid_argument
	sec
	sbc #'0'
	clc
	adc tmp2								; add to potential second digit result
	cmp #DEVICE_LAST + 1
	bcs invalid_argument					; value must be < 31

	sta tmp2

	lda r0									; carry is clear
	adc tmp2 + 1							; advance pointer to path
	sta r0
	lda r0 + 1
	adc #0
	sta r0 + 1

done:										; r0 now points to /foo or foo
	lda tmp2								; reload device number
	clc
	rts

invalid_argument:
	plx
	plx
	jmp errors::invalid_argument

number_lookup_table_value:
	.byte 0, 10, 20, 30
.endproc

;--------------------------------------------------------------
; file_close
;
; Function: Closes a file.
; Flags:    
; Input:    X: fd
; Output:   X: error (if .c = 1)
; Clobbers: Y
;--------------------------------------------------------------
.proc file_close
	KVARS_START_TRASH_A_NZ

	ldy #Device::close
	jsr call_device

	KVARS_END_TRASH_A_NZ
	rts
.endproc

;--------------------------------------------------------------
; file_read_byte
;
; Function: Reads a byte from a file.
; Flags:    
; Input:    X: fd
; Output:   A: byte (if .c = 0)
;           X: error (if .c = 1)
; Clobbers: Y
;--------------------------------------------------------------
.proc file_read_byte
	KVARS_START_TRASH_Y_NZ

	ldy #Device::read_byte
	jsr call_device

	KVARS_START_TRASH_Y_NZ
	rts
.endproc

;--------------------------------------------------------------
; file_write_byte
;
; Function: Writes a byte to a file.
; Flags:    
; Input:    X: fd
;           Y: byte
; Output:   X: error (if .c = 1)
; Clobbers: Y
;--------------------------------------------------------------
.proc file_write_byte
	KVARS_START_TRASH_A_NZ
	tya
	ldy #Device::write_byte
	jsr call_device

	KVARS_START_TRASH_Y_NZ
	rts
.endproc

;--------------------------------------------------------------
; file_read
;
; Function: Reads bytes from a file.
; Flags:    
; Input:    X: fd
;           r0: destination pointer
;           r1: destination size
; Output:   r1: number of bytes that were successfully read
;           X: error (if .c = 1)
; Clobbers: Y
;--------------------------------------------------------------
.proc file_read
	KVARS_START_TRASH_A_NZ

	ldy #Device::read
	jsr call_device							; writes the fd to tmp2
	bcc exit

	cpx #Error::NotImplemented				; not implemented?
	bne exit

fallback:
	clc
	brk #00									; TODO: Device::read in a loop

set_carry_and_exit:
	sec
exit:
	KVARS_END_TRASH_A_NZ
	rts
.endproc

;--------------------------------------------------------------
; file_write
;
; Function: Writes bytes to a file.
; Flags:    
; Input:    X: fd
;           r0: source pointer
;           r1: source size
; Output:   r1: number of bytes that were successfully written
;           X: error (if .c = 1)
; Clobbers: Y
;--------------------------------------------------------------
.proc file_write
	KVARS_START_TRASH_A_NZ

	ldy #Device::write
	jsr call_device							; writes the fd to tmp2
	bcc exit

	cpx #Error::NotImplemented				; not implemented?
	bne exit

fallback:
	clc
	brk #00									; TODO: Device::write in a loop

set_carry_and_exit:
	sec
exit:
	KVARS_END_TRASH_A_NZ
	rts
.endproc

;--------------------------------------------------------------
; file_read_long
;
; Function: Reads bytes from a file into a 24-bit address.
; Flags:    
; Input:    X: fd
;           r0: destination pointer
;           r2: destination size
; Output:   r2: number of bytes that were successfully read
;           X: error (if .c = 1)
; Clobbers: Y
;--------------------------------------------------------------
.proc file_read_long
	KVARS_START_TRASH_A_NZ
	; TODO

set_carry_and_exit:
	sec
exit:
	KVARS_END_TRASH_A_NZ
	rts
.endproc

;--------------------------------------------------------------
; file_write_long
;
; Function: Writes bytes from a 24-bit address to a file.
; Flags:    
; Input:    X: fd
;           r0: source pointer
;           r2: source size
; Output:   r2: number of bytes that were successfully written
;           X: error (if .c = 1)
; Clobbers: Y
;--------------------------------------------------------------
.proc file_write_long
	KVARS_START_TRASH_A_NZ
	; TODO

set_carry_and_exit:
	sec
exit:
	KVARS_END_TRASH_A_NZ
	rts
.endproc