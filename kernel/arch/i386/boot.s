#multiboot header constants
.set ALIGN 1<<0
.set MEMINFO, 1<<1
.set FLAGS, ALIGN | MEMINFO
.set MAGIC, 0x1BADB002
.set CHECKSUM, -(MAGIC + FLAGS)
#multiboot header
.section .multiboot
.align 4
.long MAGIC
.long FLAGS
.long CHECKSUM
#initial thread stack
.section .bss
.align 16
stack_bottom:
.skip 16384 # 16 KiB
stack_top:
#kernel entry point
.section .text
.global_start
.type _start, @function
_start:
  movl $stack_top, %esp
  call _init
  #start kernel
  call kernel_main
  #hang if kernel returns
  cli
1:hlt
  jmp 1b
.size _start, . - _start


