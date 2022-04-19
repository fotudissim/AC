 .text
	.align 4
	.globl Asignar
	.type Asignar,@function
Asignar:
        # Aqui viene vuestro codigo
    pushl %ebp
    movl %esp, %ebp
        # No se utilizan variables locales, por ende no hace falta usar subl en %esp
    pushl %ebx
    pushl %esi
    pushl %edx
    pushl %ecx

    movl 8(%ebp), %edx #&v ---> %edx
    movl 24(%ebp), %ecx #pos ---> %ecx
    imul $12, %ecx, %esi #12*pos ---> %esi

    ## v[pos].c = X.c ##
    movb 12(%ebp), %bl #X.c ----> %bl
    #No afegim cap offset a @v[pos] degut a que «char c» és la primera entrada del struct
    movb %bl, (%edx, %esi) #v[pos] = X.c

    ## v[pos].k = X.k ##
    movl 16(%ebp), %ebx #X.k ---> %ebx
    movl %ebx, 4(%edx,%esi) #v[pos].k = X.k

    ## v[pos].m = X.m ##
    movl 20(%ebp), %ebx #X.m ----> %ebx
    movl %ebx, 8(%edx,%esi) #v[pos].m = X.m

    ##Descarreguem els registres guardats a pila
    popl %ecx
    popl %edx
    popl %esi
    popl %ebx
    
    movl %ebp,%esp
    popl %ebp

    ret
