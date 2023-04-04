section .data
    name db 'eklavya11', 0   
    friend db 'Hello, why are you here?', 0 
    
section .text
    global _start
    
_start:
    ; Print your name
    mov eax, 4      
    mov ebx, 1      
    mov ecx, name   
    mov edx, 9      
    int 0x80        ; Invoke the system call
    
    ; Display a message for your friend
    mov eax, 4      ; System call for write
    mov ebx, 1      
    mov ecx, friend ;
    mov edx, 14     
    int 0x80        ; Invoke the system call
    
    ; Exit the program
    mov eax, 1      ; System call for exit
    xor ebx, ebx    ; Return 0
    int 0x80        ; Invoke the system call
