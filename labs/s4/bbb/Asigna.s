 .text
	.align 4
	.globl Asignar
	.type Asignar,@function
Asignar:
    # Aqui viene vuestro codigo
	pushl	%ebp
	movl	%esp, %ebp

	pushl  %ecx
	pushl  %ebx
	
	pushl %edx
	pushl %esi

	movl   8(%ebp), %edx #%edx = v
	movl   24(%ebp), %ecx #%ecx = pos

	movb   12(%ebp), %bl #%bl = X.c
	imul  $12, %ecx, %esi #%esi = 12 * pos
	movb   %bl, (%edx, %esi) #v[pos] = X.c

	movl   16(%ebp), %ebx
	imul  $12, %ecx, %esi
	movl   %ebx, 4(%edx, %esi)

	movl   20(%ebp), %ebx
	imul  $12, %ecx, %esi
	movl   %ebx, 8(%edx, %esi)

	movl	-4(%ebp), %eax
	popl %esi
	popl %edx
	popl %ebx
	popl %ecx
	movl %ebp,%esp
	popl %ebp
	ret
