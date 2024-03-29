	global	_start
	section	.text

_start:
	call	main
	mov	rdi, rax
	mov	rax, 60
	syscall

main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, 0x29 ## sys_socket
	mov	rdi, 0x02
	mov	rsi, 0x01
	mov	rdx, 0x00
	syscall ## create socket
	mov	QWORD [rbp-0x10], rax
	mov	rax, 0x36 ## sys_setsockopt
	mov	rdi, QWORD [rbp-0x10]
	mov	rsi, 0x01
	mov	rdx, 0x02
	mov	QWORD [rbp-0x50], 0x01
	lea	r10, [rbp-0x50]
	mov	r8, 0x08
	syscall
	mov	rax, 0x31 ## sys_bind
	mov	rdi, QWORD [rbp-0x10]
	push	0x00
	mov	bx, 0x0539 ## port 1337
	xchg	bh, bl
	shl	ebx, 0x10
	mov	bx, 0x02
	push	rbx
	mov	rsi, rsp
	add	rsp, 0x10
	mov	rdx, 0x10
	syscall
	mov	rax, 0x32 ## sys_listen
	mov	rsi, 0x01
	syscall
	mov	rax, 0x2b ## sys_accept
	mov	rsi, 0x00
	mov	rdx, 0x00
	syscall
	mov	QWORD [rbp-0x08], rax
	mov	rbx, 0x6170207265746e45 ## Enter pa
	mov	QWORD [rbp-0x50], rbx
	mov	rbx, 0x203a64726f777373 ## ssword:
	mov	QWORD [rbp-0x48], rbx
	mov	rax, 0x01 ## sys_write
	mov	rdi, QWORD [rbp-0x08]
	lea	rsi, [rbp-0x50]
	mov	rdx, 0x10
	syscall ##  Write "Enter password: " to socket
	mov	rax, 0x00 ## sys_read
	lea	rsi, [rbp-0x50] ## Huh? We are overwriting the "Enter password: " string!
											## Must be being reused to store input from user
											## It is stored 80 bytes below the base pointer
											## [rbp-0x50] is where the inputted password is stored
	mov	rdx, 0x40 ## read 64 bytes of data
	syscall ## get the data!
	cmp	rax, 0x11 ## password has to be 17 characters in length
	jne	label5 ## jumping to label5 is a fail
	lea	rax, [rbp-0x50] ## rax stores pointer of password (user input given)
	cmp	BYTE [rax+16], 0x0a ## Again, password is 17 chars, why do you have to check it twice?
													## Well, it's technically 16 with a terminator (line break)
	jne	label5
	mov	BYTE [rax+16], 0x00 ## change that line break to a null
	jmp	label2 ## start of actual check
label1:
	xor	BYTE [rax], 0x69 ## xor char with 0x69
	inc	rax ## increment pointer
label2:
	cmp	BYTE [rax], 0x00 ## loop through all chars (null terminated)
	jne	label1 ## continue at end of string
	mov	rax, 0x360c1f0605360c1e ## It looks like a string comparison
	cmp	QWORD [rbp-0x50], rax
	jne	label5
	mov	rax, 0x0c0c10361b041a08 ## let's use python to decode the password!
	cmp	QWORD [rbp-0x48], rax
	jne	label5
	mov	rdi, dat
	lea	rax, [rbp-0x50]
	mov	rbx, 0x00
	mov	rcx, 0x00
	mov	rdx, 0x00
	jmp	label4
label3: ## no reverse this it print flag
	mov	dl, BYTE [rdi]
	xor	dl, BYTE [rax+rbx]
	mov	BYTE [rdi], dl
	inc	rdi
	inc	rbx
	inc	rcx
	cmp	rbx, 0x10
	jne	label4
	mov	rbx, 0x00
label4: ## print the flag! jump here, nested loop
	cmp	rcx, len
	jne	label3
	mov	rax, 0x01
	mov	rdi, QWORD [rbp-0x08]
	mov	rsi, dat
	mov	rdx, len
	syscall
	jmp	label6
label5: ## Password is incorrect if program jumps here
	mov	rbx, 0x0a2165706f4e ## "Nope!\n"
	mov	QWORD [rbp-0x50], rbx
	mov	rax, 0x01 ## sys_write
	mov	rdi, QWORD [rbp-0x08]
	lea	rsi, [rbp-0x50]
	mov	rdx, 0x06
	syscall ## write "Nope!\n" to socket
label6:
	mov	rax, 0x03
	mov	rdi, QWORD [rbp-0x08]
	syscall
	mov	rax, 0x03
	mov	rdi, QWORD [rbp-0x10]
	syscall
	mov	rax, 0x00
	leave
	ret

	section	.data
	dat	db	0x57,0x2c,0x44,0x60,0x67,0x73,0x60,0x4f,0x28,0x7b,0x74,0x6b,0x44,0x75,0x6f,0x65,0x7f,0x78,0x53,0x25,0x63,0x69,0x69,0x44,0x71,0x75,0x6a,0x7e,0x16,0x63,0x78,0x65,0x72,0x60,0x16,0x75,0x6a,0x7e,0x75,0x5f,0x66,0x7d,0x24,0x4f,0x7c,0x53,0x58,0x4a,0x30,0x2c,0x7f,0x71,0x26,0x6d,0x69,0x57,0x64,0x76,0x7d,0x3b,0x5b,0x75,0x6d,0x62,0x6d,0x2c,0x57,0x25,0x6a,0x70,0x78,0x16,0x7c,0x75,0x24,0x76,0x53,0x3e,0x2c,0x45,0x3e,0x67,0x58,0x6a,0x71,0x3f,0x78,0x5e,0x61,0x69,0x24,0x62,0x53,0x71,0x7e,0x2c,0x76,0x6d,0x45,0x6b,0x21,0x6b,0x2c,0x54,0x6d,0x7f,0x6a,0x3b,0x42,0x78,0x69,0x2c,0x79,0x7e,0x53,0x64,0x72,0x7a,0x7f,0x42,0x24,0x3a,0x65,0x75,0x52,0x30,0x78,0x64,0x7f,0x78,0x16,0x64,0x26,0x73,0x63,0x42,0x28,0x75,0x62,0x3b,0x41,0x78,0x6d,0x78,0x3e,0x7b,0x53,0x22,0x70,0x7a,0x2c,0x52,0x67,0x74,0x61,0x3b,0x57,0x63,0x2c,0x6d,0x3e,0x78,0x53,0x64,0x6b,0x3f,0x64,0x57,0x7b,0x3a,0x69,0x7a,0x52,0x75,0x2c,0x7c,0x7b,0x63,0x46,0x69,0x63,0x3f,0x79,0x46,0x7b,0x7f,0x70,0x35,0x16,0x59,0x2c,0x7e,0x7b,0x6d,0x5a,0x69,0x7f,0x3f,0x7b,0x5f,0x7b,0x72,0x24,0x72,0x42,0x30,0x68,0x65,0x7a,0x62,0x11,0x71,0x26,0x77,0x6d,0x40,0x6d,0x3a,0x70,0x74,0x16,0x72,0x69,0x2c,0x6a,0x64,0x5f,0x76,0x26,0x68,0x6d,0x4f,0x24,0x3a,0x66,0x6e,0x42,0x30,0x7b,0x64,0x7f,0x78,0x11,0x76,0x26,0x7b,0x63,0x58,0x6d,0x3a,0x6d,0x68,0x16,0x74,0x63,0x62,0x7b,0x22,0x16,0x0f,0x0c,0x57,0x69,0x44,0x6d,0x3d,0x77,0x3b,0x4f,0x7f,0x79,0x7e,0x3e,0x6a,0x5a,0x64,0x61,0x25,0x2c,0x42,0x62,0x79,0x70,0x7d,0x4d,0x63,0x3c,0x61,0x2d,0x53,0x58,0x34,0x65,0x2c,0x53,0x45,0x38,0x6f,0x6a,0x7f,0x03,0x4f,0x6a,0x63,0x6c,0x53,0x4f,0x6a,0x73,0x3e,0x2d,0x17,0x75,0x10,0x0e,0x27,0x05,0x30,0x21,0x48,0x53,0x06
	len	equ	$-dat
