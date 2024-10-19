# 0 "arch/i386/crtn.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "arch/i386/crtn.S"
.section .init

 popl %ebp
 ret

.section .fini

 popl %ebp
 ret
