	.file	"literal2.c"
	.text
	.globl	_CalculoA
	.def	_CalculoA;	.scl	2;	.type	32;	.endef
_CalculoA:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$400, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L2
	movl	$1, %eax
	jmp	L3
L2:
	movl	8(%ebp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L4
	movl	$0, %eax
	jmp	L3
L4:
	movl	8(%ebp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	L5
	movl	$1, %eax
	jmp	L3
L5:
	movl	$0, %eax
L3:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii " Es Bisiesto\0"
LC1:
	.ascii " No es bisiesto\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$1996, 28(%esp)
	movl	$2001, 24(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_CalculoA
	testb	%al, %al
	je	L7
	movl	$LC0, (%esp)
	call	_printf
	jmp	L8
L7:
	movl	$LC1, (%esp)
	call	_printf
L8:
	movl	$10, (%esp)
	call	_putchar
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_CalculoA
	testb	%al, %al
	je	L9
	movl	$LC0, (%esp)
	call	_printf
	jmp	L10
L9:
	movl	$LC1, (%esp)
	call	_printf
L10:
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
