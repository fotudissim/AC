.text
	.align 4
	.globl OperaVec
	.type	OperaVec, @function
OperaVec:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
# Aqui has de introducir el codigo
	movl 	$1,%ecx 
	movl 	$0,%edx
	movl 	8(%ebp), %eax
for:	cmpl	12(%ebp),%ecx
	jge	fifor
	movl	(%eax, %ecx, 4),%edi
	movl	(%eax, %edx, 4),%ebx
	cmpl 	%ebx, %edi
	jne	fiif
	movl	%ecx, -4(%ebp)
fiif:	incl %ecx
	movl %ecx, -8(%ebp)
	incl %edx
	jmp for
fifor:
	
	
# El final de la rutina ya esta programado
	movl	-4(%ebp), %eax
	popl	%edi
	popl	%esi
	popl	%ebx
	movl %ebp,%esp
	popl %ebp
	ret
