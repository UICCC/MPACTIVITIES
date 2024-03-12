section .data
    line1 db '   /|~|\ ', 10
    line2 db '  / |=| \\', 10    
    line3 db ' /  | |  \\', 10   
    line4 db '|   | |   ||', 10
    line5 db '|   | |   ||', 10
    line6 db '|   | |   ||', 10
    


section .text
    global _start

_start:
    ; Print line 1
    mov eax, 4
    mov ebx, 1
    mov ecx, line1
    mov edx, 10 ; 
    int 0x80

    ; Print line 2
    mov eax, 4
    mov ebx, 1
    mov ecx, line2
    mov edx, 11 ; 
    int 0x80

    ; Print line 3
    mov eax, 4
    mov ebx, 1
    mov ecx, line3
    mov edx, 12 
    int 0x80

    ; Print line 4
    mov eax, 4
    mov ebx, 1
    mov ecx, line4
    mov edx, 13 ;
    int 0x80

    ; Print line 5
    mov eax, 4
    mov ebx, 1
    mov ecx, line5
    mov edx, 14 ; 
    int 0x80
    

     
   
    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
