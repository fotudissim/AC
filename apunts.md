Diferència entre «movl A» i «movl $A»

- movl A, %eax <----> movl A( , , ), %eax
- movl $A, %eax <----> leal A, %eax

#define N 10 -----> el Compliador només veu un 10 (o fins i tot el preprocessador)


