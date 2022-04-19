.text
	.align 4
	.globl OperaMat
	.type	OperaMat, @function
OperaMat:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi

# Aqui has de introducir el codigo
	movl	$0, -4(%ebp)		#res=0
	movl	$0, %ebx		#'res'=0
	movl	$0, %ecx		#i=0
	movl	8(%ebp), %eax		
	
for:	cmpl	$3, %ecx
	jge	fi
	movl	$0, %edx		#j=0
for2:	cmpl	%ecx, %edx
	jg	fifor2
	movl	%ecx, %edi
	imull	$3, %edi
	addl	%edx, %edi
	movl	(%eax, %edi,4), %edi
	addl	%edi, %ebx
	movl	%ebx, -4(%ebp)
	
	incl	%edx
	jmp	for2

fifor2:	addl	12(%ebp), %ecx
	jmp for
fi:
# El final de la rutina ya esta programado
	movl	-4(%ebp), %eax
	popl	%edi
	popl	%esi
	popl	%ebx	
	movl %ebp,%esp
	popl %ebp
	ret