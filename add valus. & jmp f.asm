
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
           
 .data
         x db 0 
         z db 0
         p db 0
.code          

 main proc 
    first:
    
    mov x,3
    mov z,4
    mov p,2
    



    mov dl,x
    add dl,z
    add dl,p
    add dl,48
    ;add dl,z
    mov ah,2
    
    int 21h
    
   jmp second
    
    second:
    mov dl,5
    add dl,48
    mov ah,2
    int 21h 
    jmp first         
             
ret




