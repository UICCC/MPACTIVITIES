section .data
    kumar db 'K', 10, 'U', 10, 'M', 10, 'A', 10, 'R', 10,  ;

section .bss
    buffer resb 1

section .text
    global _start

_start:

    ; Display the entered character
    mov eax, 4           ; 
    mov ebx, 1           ; 
    mov ecx, buffer      ; 
    mov edx, 1           ; length of the character
    int 0x80             ; invoke system call

    
    mov eax, 4           ; sys_write system call number
    mov ebx, 1           ; file descriptor: stdout
    mov ecx, kumar        ; 
    mov edx, 12          ; 
    int 0x80             ; invoke system call

    ; Exit the program
    mov eax, 1           ; sys_exit system call number
    xor ebx, ebx         ; exit code 0
    int 0x80             ; invoke system call