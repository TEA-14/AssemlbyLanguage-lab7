.model small
.stack 100h
.data

num1 db '1'
num2 db '3'
    
.code
main proc 
     
    mov ax, @data
    mov ds, ax
    
    
    mov dl, num1
    
    mov ah, 2
    
    int 21h
   
    mov dl, num2
    
    mov ah, 2
    
    int 21h
    
    
    mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov al, num1
    push ax
    mov al, num2
    push ax 
    pop ax 
    mov num1, al 
    pop ax 
    mov num2, al
    
    mov dl, num1
    
    mov ah, 2
    
    int 21h
   
    mov dl, num2
    
    mov ah, 2
    
    int 21h
   
   
    mov ah, 4ch
    
    int 21h
    
    main endp

end main