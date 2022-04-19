 .text
	.align 4
	.globl Insertar
	.type Insertar,@function
Insertar:
        # Aqui viene vuestro codigo
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp ## Aqui el que fem és donar espai a %esp per les variables locals

    ##Salvar registres

    ##!Salvar registres

    movl $0, %edx # i = 0 :: 0 ---> %edx
    movl $-1, %esi # lug = -1 :: -1 ---> %esi
    
    ## do - while ##
    movl 16(%ebp), %ecx # X.k ----> %ecx
    movl 8(%ebp), %ebx # @v ----> %ebx
    
do: 

ifdw: cmpl %ecx, 4(%ebx, %edx, 12) #%ecx = X.k < 4(%ebx, %edx, 12) = @v + ix12 + 4
    jle elsedw

    movl %edx, %esi #lug = i
    jmp findw #break
    
elsedw: 
    incl %edx #i++ :: %edx ++
   
while:
    cmpl $0x80000000, 4(%ebx, %edx, 12)
    jne do
findw:


    ## if 0x80000000 == v[i].k --> lug = i
if2:
    cmpl $0x80000000, 4(%ebx, %edx, 12)
    je else2
    
    movl %edx, %esi #lug = i
    jmp final2

else2:
while2:
    cmpl $0x80000000, 4(%ebx, %edx, 12)
    je final2
    incl %edx
    jmp while2

final2:


    ## el for ##
    movl %edx, %edi #j = i %edi --> j  
for:
    cmpl %edi, %esi
    jl fifor
    
    ##v[j+1].c = v[j].c
    movb (%ebx, %edi, 12), %al
    movb %al, 12(%ebx, %edi, 12) 

    ##v[j+1].k = v[j].k
    movl 4(%ebx, %edi, 12), %eax
    movb %eax, 16(%ebx, %edi, 12) 

    ##v[j+1].m = v[j].m
    movl 4(%ebx, %edi, 12), %eax
    movb %eax, 20(%ebx, %edi, 12) 

    decl %edi
fifor:

    pushl %esi
    pushl 20(%ebp)
    pushl 16(%ebp)
    pushl 14(%ebp)
    pushl 8(%ebp)

    call Asignar

    incl %edx
    ret


