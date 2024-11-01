.model small
.stack 100h

.data
    arr db 2, 9, 6, 7, 1         
    msg db 'Largest number is: $' 
    largest db 0                 

.code
main proc
    mov ax, @data                
    mov ds, ax

   
    lea dx, msg
    mov ah, 9
    int 21h

   
    lea si, arr                 
    mov cx, 5                   

   
push_numbers:
    mov al, [si]                
    push ax                    
    inc si                     
    loop push_numbers          

   
    pop ax
    mov largest, al
    
    mov cx, 4                 
find_largest:
    pop ax                     
    cmp al, largest            
    jle skip                   
    mov largest, al            
    skip:
    loop find_largest          

   
    
    mov al, largest            
    add al, '0'               
    mov dl, al                
    mov ah, 2                  
    int 21h                   

  
    mov ah, 4ch
    int 21h

main endp
end main
