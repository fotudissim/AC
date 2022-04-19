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
    
    movl $1, %ebx   # %ebx <-- i = 1
    movl 8(%ebp), %esi # %vector[0] ---> %esi

for: 
    movl 12(%ebp), %edi
    cmpl %edi, %ebx     #si i >= elementos ----> salta a final_for:
    jge final_for

    movl (%esi, %ebx, 4), %ecx    # %ecx <----- vector[i]

    movl -4(%ecx), %eax
if: cmpl %eax, (%ecx)
    jne fin_if
    
    movl %ebx, -4(%ebp)

fin_if:
    incl %ebx
    jmp for

final_for:



# El final de la rutina ya esta programado
	movl	-4(%ebp), %eax
	popl	%edi
	popl	%esi
	popl	%ebx
	movl %ebp,%esp
	popl %ebp
	ret
