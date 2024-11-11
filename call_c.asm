; compile the source with commands like:
;   fasm printf.asm
;   ld printf.o -dynamic-linker /lib/ld-linux.so.2 -lc

format ELF64

section '.text' executable

public _start
extrn printf
extrn _exit

_start:
    mov     rdi, msg
    call    printf
    mov     rdi, 0
    call    _exit

section '.data' writeable

msg db "Hello World From linking C", 10, 0 