global one_plus_one
global a_plus_b

global put_string_size
global put_string

bits 64 ; Unnecessary, usually

one_plus_one:
	mov	eax, 1
	mov	ebx, 1
	add	eax, ebx
	ret

a_plus_b:
	add	edi, esi
	mov	eax, edi
	ret

; Parameters: RDI = strlen, RSI = string
put_string_size:
	mov	rax, 1		; systemcall no.1 = write
	mov	rdx, rdi	; move strlen to rdx
	mov	rdi, 0		; fd
	;	rsi already has our string
	syscall
	ret


; Parameters: RDI = string
put_string:
	mov	rsi, rdi	; rsi = copy of string
	mov	rdx, 0		; rdx = 0, this is our counter

	counting_loop:
		cmp	byte[rdi], 0	; is *rdi NULL?
		je	done_counting	; *rdi IS null
		inc	rdx		; rdx++
		inc	rdi		; rdi++
		jmp	counting_loop

	done_counting:

	mov	rax, 1		; systemcall no.1 = write
	mov	rdi, 0		; fd
	;	rdx already has length of string from the previous counting step
	;	rsi already has our string
	syscall
	ret
