	.file	"Poker.c"
	.text
	.p2align 4
	.globl	Init
	.type	Init, @function
Init:
.LFB24:
	.cfi_startproc
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%eax, (%rdi)
	addq	$8, %rdi
	movl	%eax, 96(%rdi)
	movl	%eax, 200(%rdi)
	movl	%eax, 304(%rdi)
	addl	$1, %eax
	movl	$0, -4(%rdi)
	movl	$1, 100(%rdi)
	movl	$2, 204(%rdi)
	movl	$3, 308(%rdi)
	cmpl	$13, %eax
	jne	.L2
	ret
	.cfi_endproc
.LFE24:
	.size	Init, .-Init
	.p2align 4
	.globl	Ordenar
	.type	Ordenar, @function
Ordenar:
.LFB25:
	.cfi_startproc
	movl	$1, %r10d
	movl	$1, %eax
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L6:
	movslq	%eax, %rdx
	leaq	(%rdi,%r9,8), %rcx
	leaq	(%rdi,%rdx,8), %rdx
	movl	(%rcx), %esi
	movl	(%rdx), %r8d
	cmpl	%r8d, %esi
	jle	.L7
	movl	%r8d, (%rcx)
	movl	4(%rdx), %r8d
	movl	%esi, (%rdx)
	movl	4(%rcx), %esi
	movl	%r8d, 4(%rcx)
	movl	%esi, 4(%rdx)
.L7:
	addl	$1, %eax
	cmpl	$5, %eax
	jne	.L6
	leal	1(%r10), %eax
	cmpl	$4, %r10d
	je	.L12
	movslq	%r10d, %r9
	movl	%eax, %r10d
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L12:
	ret
	.cfi_endproc
.LFE25:
	.size	Ordenar, .-Ordenar
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"10 - "
.LC1:
	.string	" %c - "
.LC2:
	.string	"COR"
.LC3:
	.string	"PIC"
.LC4:
	.string	"TRE"
.LC5:
	.string	"DIA"
	.text
	.p2align 4
	.globl	Mostrar
	.type	Mostrar, @function
Mostrar:
.LFB26:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	movl	$10, %edi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	.LC0(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC1(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	40(%r14), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	trad(%rip), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	putchar@PLT
.L22:
	movslq	(%r14), %rax
	movl	4(%r14), %r15d
	movsbl	(%rbx,%rax), %esi
	cmpb	$49, %sil
	je	.L25
	xorl	%eax, %eax
	movq	%r12, %rdi
	call	printf@PLT
	cmpl	$2, %r15d
	je	.L16
.L26:
	jg	.L17
	testl	%r15d, %r15d
	je	.L18
	cmpl	$1, %r15d
	jne	.L20
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	.p2align 4,,10
	.p2align 3
.L20:
	addq	$8, %r14
	cmpq	%rbp, %r14
	jne	.L22
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$10, %edi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	cmpl	$3, %r15d
	jne	.L20
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L25:
	xorl	%eax, %eax
	movq	%r13, %rdi
	call	printf@PLT
	cmpl	$2, %r15d
	jne	.L26
.L16:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L18:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L20
	.cfi_endproc
.LFE26:
	.size	Mostrar, .-Mostrar
	.section	.rodata.str1.1
.LC6:
	.string	"%s"
	.text
	.p2align 4
	.globl	verbose
	.type	verbose, @function
verbose:
.LFB27:
	.cfi_startproc
	movl	V(%rip), %eax
	testl	%eax, %eax
	jne	.L29
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC6(%rip), %rdi
	jmp	printf@PLT
	.cfi_endproc
.LFE27:
	.size	verbose, .-verbose
	.p2align 4
	.globl	Color
	.type	Color, @function
Color:
.LFB28:
	.cfi_startproc
	movl	4(%rdi), %eax
	xorl	%r8d, %r8d
	cmpl	12(%rdi), %eax
	je	.L35
.L30:
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	cmpl	20(%rdi), %eax
	jne	.L30
	cmpl	28(%rdi), %eax
	jne	.L30
	xorl	%r8d, %r8d
	cmpl	%eax, 36(%rdi)
	sete	%r8b
	jmp	.L30
	.cfi_endproc
.LFE28:
	.size	Color, .-Color
	.p2align 4
	.globl	Poker
	.type	Poker, @function
Poker:
.LFB29:
	.cfi_startproc
	movl	8(%rdi), %eax
	movl	16(%rdi), %edx
	xorl	%r8d, %r8d
	cmpl	%eax, (%rdi)
	je	.L47
	cmpl	%edx, %eax
	je	.L40
.L36:
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	cmpl	%edx, %eax
	jne	.L36
	cmpl	24(%rdi), %eax
	je	.L48
.L40:
	xorl	%r8d, %r8d
	cmpl	24(%rdi), %eax
	jne	.L36
.L39:
	cmpl	32(%rdi), %eax
	movl	$1, %eax
	cmove	%eax, %r8d
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$1, %r8d
	jmp	.L39
	.cfi_endproc
.LFE29:
	.size	Poker, .-Poker
	.p2align 4
	.globl	Full
	.type	Full, @function
Full:
.LFB30:
	.cfi_startproc
	movl	(%rdi), %edx
	xorl	%eax, %eax
	cmpl	8(%rdi), %edx
	je	.L54
.L49:
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	movl	16(%rdi), %ecx
	movl	24(%rdi), %esi
	cmpl	%ecx, %edx
	jne	.L51
	xorl	%eax, %eax
	cmpl	%esi, 32(%rdi)
	sete	%al
.L51:
	cmpl	%esi, %ecx
	jne	.L49
	xorl	%edx, %edx
	cmpl	%ecx, 32(%rdi)
	sete	%dl
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE30:
	.size	Full, .-Full
	.p2align 4
	.globl	Escalera
	.type	Escalera, @function
Escalera:
.LFB31:
	.cfi_startproc
	movl	8(%rdi), %edx
	movl	(%rdi), %eax
	xorl	%r8d, %r8d
	leal	-1(%rdx), %ecx
	cmpl	%ecx, %eax
	je	.L68
.L56:
	cmpl	$1, %edx
	jne	.L55
	testl	%eax, %eax
	je	.L69
.L55:
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	movl	16(%rdi), %esi
	leal	-2(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	.L56
	movl	24(%rdi), %esi
	leal	-3(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	.L56
	movl	32(%rdi), %esi
	xorl	%r8d, %r8d
	leal	-4(%rsi), %ecx
	cmpl	%eax, %ecx
	sete	%r8b
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L69:
	cmpl	$2, 16(%rdi)
	jne	.L55
	cmpl	$3, 24(%rdi)
	jne	.L55
	cmpl	$12, 32(%rdi)
	movl	$1, %eax
	cmove	%eax, %r8d
	jmp	.L55
	.cfi_endproc
.LFE31:
	.size	Escalera, .-Escalera
	.p2align 4
	.globl	Trio
	.type	Trio, @function
Trio:
.LFB32:
	.cfi_startproc
	movl	(%rdi), %ecx
	movl	8(%rdi), %eax
	movl	16(%rdi), %edx
	cmpl	%eax, %ecx
	je	.L82
	movl	24(%rdi), %ecx
	cmpl	%edx, %eax
	je	.L83
	xorl	%r8d, %r8d
	cmpl	%edx, %ecx
	je	.L75
.L70:
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	xorl	%r8d, %r8d
.L77:
	cmpl	%ecx, %eax
	jne	.L70
	movl	$1, %r8d
.L75:
	cmpl	%edx, 32(%rdi)
	movl	$1, %eax
	cmove	%eax, %r8d
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	cmpl	%edx, %ecx
	je	.L84
	movl	24(%rdi), %ecx
	xorl	%r8d, %r8d
	cmpl	%edx, %ecx
	jne	.L70
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L84:
	movl	24(%rdi), %ecx
	movl	$1, %r8d
	jmp	.L77
	.cfi_endproc
.LFE32:
	.size	Trio, .-Trio
	.p2align 4
	.globl	Pareja
	.type	Pareja, @function
Pareja:
.LFB33:
	.cfi_startproc
	movl	8(%rdi), %esi
	movl	16(%rdi), %ecx
	cmpl	%esi, (%rdi)
	movl	24(%rdi), %edx
	sete	%al
	cmpl	%ecx, %esi
	sete	%sil
	orl	%esi, %eax
	cmpl	%edx, %ecx
	sete	%cl
	orl	%ecx, %eax
	cmpl	%edx, 32(%rdi)
	sete	%dl
	orl	%edx, %eax
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE33:
	.size	Pareja, .-Pareja
	.p2align 4
	.globl	DoblePareja
	.type	DoblePareja, @function
DoblePareja:
.LFB34:
	.cfi_startproc
	movl	8(%rdi), %edx
	movl	16(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	%edx, (%rdi)
	jne	.L87
	movl	24(%rdi), %esi
	cmpl	%esi, 32(%rdi)
	sete	%al
	cmpl	%ecx, %esi
	sete	%sil
	orl	%esi, %eax
	movzbl	%al, %eax
.L87:
	cmpl	%ecx, %edx
	je	.L91
	ret
	.p2align 4,,10
	.p2align 3
.L91:
	movl	32(%rdi), %esi
	movl	$1, %edx
	cmpl	%esi, 24(%rdi)
	cmove	%edx, %eax
	ret
	.cfi_endproc
.LFE34:
	.size	DoblePareja, .-DoblePareja
	.section	.rodata.str1.1
.LC7:
	.string	"EC "
.LC8:
	.string	"PK "
.LC9:
	.string	"FL "
.LC10:
	.string	"CL "
.LC11:
	.string	"ES "
.LC12:
	.string	"TR "
.LC13:
	.string	"PP "
.LC14:
	.string	"PR "
.LC15:
	.string	" . "
	.text
	.p2align 4
	.globl	Test
	.type	Test, @function
Test:
.LFB35:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	V(%rip), %r11d
	xorl	%edx, %edx
	movl	4(%rdi), %eax
	cmpl	12(%rdi), %eax
	je	.L149
.L93:
	movl	(%rdi), %eax
	movl	8(%rdi), %r9d
	movl	16(%rdi), %r10d
	cmpl	%r9d, %eax
	je	.L150
	xorl	%ebx, %ebx
	cmpl	%r10d, %r9d
	je	.L151
.L105:
	testl	%edx, %edx
	jne	.L152
.L107:
	call	Escalera
	testl	%eax, %eax
	jne	.L153
	call	Trio
	testl	%eax, %eax
	jne	.L154
	call	DoblePareja
	testl	%eax, %eax
	jne	.L155
	cmpl	%r10d, %r9d
	movl	24(%rdi), %edx
	sete	%al
	orl	%ebx, %eax
	cmpl	%r10d, %edx
	sete	%cl
	orb	%cl, %al
	jne	.L121
	cmpl	%edx, 32(%rdi)
	je	.L121
	addl	$1, nada(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC15(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L149:
	.cfi_restore_state
	cmpl	20(%rdi), %eax
	jne	.L93
	cmpl	28(%rdi), %eax
	jne	.L93
	cmpl	36(%rdi), %eax
	jne	.L93
	call	Escalera
	movl	$1, %edx
	testl	%eax, %eax
	je	.L93
	addl	$1, escaleracolor(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC7(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L150:
	.cfi_restore_state
	cmpl	%r10d, %eax
	je	.L156
.L115:
	movl	24(%rdi), %eax
.L104:
	cmpl	%eax, %r10d
	je	.L106
.L148:
	movl	$1, %ebx
	testl	%edx, %edx
	je	.L107
.L152:
	addl	$1, color(%rip)
	testl	%r11d, %r11d
	jne	.L157
.L92:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L151:
	.cfi_restore_state
	cmpl	24(%rdi), %r9d
	jne	.L113
	cmpl	32(%rdi), %r9d
	je	.L99
.L113:
	cmpl	%r10d, %eax
	sete	%bl
	cmpl	%r9d, %eax
	sete	%cl
	andb	%cl, %bl
	je	.L102
	movl	24(%rdi), %ecx
.L100:
	movl	%ecx, %eax
	cmpl	32(%rdi), %ecx
	jne	.L104
.L103:
	addl	$1, full(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC9(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L156:
	.cfi_restore_state
	movl	24(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.L100
	cmpl	32(%rdi), %eax
	je	.L99
	cmpl	%ecx, %eax
	jne	.L100
.L99:
	addl	$1, poker(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC8(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L153:
	.cfi_restore_state
	addl	$1, escalera(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC11(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L106:
	.cfi_restore_state
	cmpl	%r10d, 32(%rdi)
	je	.L103
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L154:
	addl	$1, trio(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC12(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L157:
	.cfi_restore_state
	leaq	.LC10(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L121:
	.cfi_restore_state
	addl	$1, pareja(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC14(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
	.p2align 4,,10
	.p2align 3
.L155:
	.cfi_restore_state
	addl	$1, doblepareja(%rip)
	testl	%r11d, %r11d
	je	.L92
	leaq	.LC13(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf@PLT
.L102:
	.cfi_restore_state
	cmpl	%r9d, %eax
	je	.L115
	jmp	.L105
	.cfi_endproc
.LFE35:
	.size	Test, .-Test
	.p2align 4
	.globl	Repartir
	.type	Repartir, @function
Repartir:
.LFB36:
	.cfi_startproc
	movq	%rdi, %rax
	movslq	%esi, %rdi
	leaq	baraja(%rip), %rsi
	movslq	%edx, %rdx
	movl	(%rsi,%rdi,8), %r10d
	movslq	%ecx, %rcx
	movslq	%r8d, %r8
	movl	4(%rsi,%rdi,8), %edi
	movslq	%r9d, %r9
	movl	%r10d, (%rax)
	movl	(%rsi,%rdx,8), %r10d
	movl	%r10d, 8(%rax)
	movl	(%rsi,%rcx,8), %r10d
	movl	%r10d, 16(%rax)
	movl	(%rsi,%r8,8), %r10d
	movl	%r10d, 24(%rax)
	movl	(%rsi,%r9,8), %r10d
	movl	%edi, 4(%rax)
	movl	4(%rsi,%rdx,8), %edx
	movl	%r10d, 32(%rax)
	movl	%edx, 12(%rax)
	movl	4(%rsi,%rcx,8), %edx
	movl	%edx, 20(%rax)
	movl	4(%rsi,%r8,8), %edx
	movl	%edx, 28(%rax)
	movl	4(%rsi,%r9,8), %edx
	movl	%edx, 36(%rax)
	ret
	.cfi_endproc
.LFE36:
	.size	Repartir, .-Repartir
	.p2align 4
	.globl	PierdeTiempo
	.type	PierdeTiempo, @function
PierdeTiempo:
.LFB37:
	.cfi_startproc
	cmpl	$1, %edi
	jle	.L162
	leal	-1(%rdi), %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L161:
	movq	%rdx, %rcx
	addq	$1, %rdx
	imulq	%rdx, %rcx
	addq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rsi, %rdx
	jne	.L161
	ret
.L162:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE37:
	.size	PierdeTiempo, .-PierdeTiempo
	.section	.rodata.str1.1
.LC16:
	.string	"  "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC17:
	.string	"%7d COMBINACIONES:\n - ESCALERA COLOR (%d)\n - POKER (%d)\n - FULL (%d)\n - COLOR (%d)\n - ESCALERA (%d)\n - TRIO (%d)\n - DOBLE PAREJA (%d)\n - PAREJA (%d)\n - NADA (%d) \n"
	.align 8
.LC18:
	.string	"Pierdo algo de tiempo mientras calculo el numero: %ld\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB38:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L185
.L165:
	leaq	baraja(%rip), %rdi
	movl	%eax, V(%rip)
	leaq	48(%rsp), %rbx
	call	Init
	movl	$0, 24(%rsp)
	leaq	24+baraja(%rip), %r13
	movl	$0, 40(%rsp)
	movq	%r13, %r14
.L175:
	addl	$1, 40(%rsp)
	movl	40(%rsp), %eax
	movq	%r14, %r13
	movl	%eax, 44(%rsp)
.L174:
	movq	%r14, %rdx
	addl	$1, 44(%rsp)
	movl	44(%rsp), %eax
	movq	%r13, %r15
	movq	%r13, %r14
	movq	%rdx, %r13
	.p2align 4,,10
	.p2align 3
.L173:
	leal	1(%rax), %edx
	movl	%edx, 36(%rsp)
	cmpl	$50, %eax
	je	.L166
	addl	$2, %eax
	cltq
	movq	%rax, 16(%rsp)
	movq	%r13, %rax
	movq	%r15, %r13
	movq	%r14, %r15
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L171:
	movq	16(%rsp), %rsi
	movl	%esi, 28(%rsp)
	movl	%esi, 32(%rsp)
	cmpl	$52, %esi
	je	.L167
	movl	$51, %eax
	movl	24(%rsp), %ebp
	leaq	8+baraja(%rip), %rdx
	movq	%r12, %rcx
	subl	%esi, %eax
	movq	%rbx, %r12
	leaq	-1(%rsi,%rax), %rax
	movl	%ebp, %ebx
	movq	%r14, %rbp
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 8(%rsp)
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L168:
	movl	-24(%rcx), %eax
	movq	%r12, %rdi
	movq	%rcx, (%rsp)
	addl	$1, %ebx
	addq	$8, %rbp
	movl	%eax, 48(%rsp)
	movl	-16(%r13), %eax
	movl	%eax, 56(%rsp)
	movl	-8(%r15), %eax
	movl	%eax, 64(%rsp)
	movl	(%r14), %eax
	movl	%eax, 72(%rsp)
	movl	0(%rbp), %eax
	movl	%eax, 80(%rsp)
	movl	-20(%rcx), %eax
	movl	%eax, 52(%rsp)
	movl	-12(%r13), %eax
	movl	%eax, 60(%rsp)
	movl	-4(%r15), %eax
	movl	%eax, 68(%rsp)
	movl	4(%r14), %eax
	movl	%eax, 76(%rsp)
	movl	4(%rbp), %eax
	movl	%eax, 84(%rsp)
	call	Ordenar
	call	Test
	cmpq	%rbp, 8(%rsp)
	movq	(%rsp), %rcx
	je	.L186
.L169:
	imull	$-1030792151, %ebx, %eax
	cmpl	$171798691, %eax
	ja	.L168
	movl	V(%rip), %eax
	testl	%eax, %eax
	je	.L168
	leaq	.LC16(%rip), %rdi
	movq	%rcx, (%rsp)
	call	puts@PLT
	movq	(%rsp), %rcx
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L186:
	movl	24(%rsp), %eax
	subl	28(%rsp), %eax
	movq	%r12, %rbx
	movq	%rcx, %r12
	addl	$52, %eax
	cmpl	$51, 32(%rsp)
	movl	%eax, 24(%rsp)
	je	.L170
.L167:
	addq	$1, 16(%rsp)
	addq	$8, %r14
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L170:
	cmpl	$50, 36(%rsp)
	movq	%r15, %r14
	movq	%r13, %r15
	movq	%rcx, %r13
	je	.L172
.L166:
	movl	36(%rsp), %eax
	addq	$8, %r14
	jmp	.L173
.L172:
	movq	%r15, %r13
	movq	%rcx, %r14
	addq	$8, %r13
	cmpl	$49, 44(%rsp)
	jne	.L174
	addq	$8, %r14
	cmpl	$48, 40(%rsp)
	jne	.L175
	movl	$10, %edi
	call	putchar@PLT
	movl	nada(%rip), %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 168
	movl	color(%rip), %r9d
	movl	full(%rip), %r8d
	movl	poker(%rip), %ecx
	leaq	.LC17(%rip), %rdi
	pushq	%rax
	.cfi_def_cfa_offset 176
	movl	pareja(%rip), %eax
	movl	escaleracolor(%rip), %edx
	pushq	%rax
	.cfi_def_cfa_offset 184
	movl	doblepareja(%rip), %eax
	pushq	%rax
	.cfi_def_cfa_offset 192
	movl	trio(%rip), %eax
	pushq	%rax
	.cfi_def_cfa_offset 200
	movl	escalera(%rip), %eax
	pushq	%rax
	.cfi_def_cfa_offset 208
	movl	72(%rsp), %esi
	xorl	%eax, %eax
	call	printf@PLT
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	xorl	%eax, %eax
	movabsq	$333283335000, %rsi
	leaq	.LC18(%rip), %rdi
	call	printf@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L187
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L185:
	.cfi_restore_state
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	jmp	.L165
.L187:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.globl	V
	.bss
	.align 4
	.type	V, @object
	.size	V, 4
V:
	.zero	4
	.globl	escaleracolor
	.align 4
	.type	escaleracolor, @object
	.size	escaleracolor, 4
escaleracolor:
	.zero	4
	.globl	escalera
	.align 4
	.type	escalera, @object
	.size	escalera, 4
escalera:
	.zero	4
	.globl	doblepareja
	.align 4
	.type	doblepareja, @object
	.size	doblepareja, 4
doblepareja:
	.zero	4
	.globl	nada
	.align 4
	.type	nada, @object
	.size	nada, 4
nada:
	.zero	4
	.globl	color
	.align 4
	.type	color, @object
	.size	color, 4
color:
	.zero	4
	.globl	full
	.align 4
	.type	full, @object
	.size	full, 4
full:
	.zero	4
	.globl	poker
	.align 4
	.type	poker, @object
	.size	poker, 4
poker:
	.zero	4
	.globl	trio
	.align 4
	.type	trio, @object
	.size	trio, 4
trio:
	.zero	4
	.globl	pareja
	.align 4
	.type	pareja, @object
	.size	pareja, 4
pareja:
	.zero	4
	.globl	baraja
	.align 32
	.type	baraja, @object
	.size	baraja, 416
baraja:
	.zero	416
	.globl	trad
	.data
	.align 8
	.type	trad, @object
	.size	trad, 13
trad:
	.ascii	"234567891JQKA"
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
