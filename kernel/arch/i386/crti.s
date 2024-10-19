# 0 "arch/i386/crti.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "arch/i386/crti.S"
.section .init
.global _init
.type _init, @function
_init:
 push %ebp
 movl %esp, %ebp


.section .fini
.global _fini
.type _fini, @function
_fini:
 push %ebp
 movl %esp, %ebp
