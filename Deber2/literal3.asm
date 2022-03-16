
.data
     num db 1,2,3,4,5,1
     prom db 0  

start:
      mov ax,data
      mov ds,ax
 
      lea si,num 
      
      mov ah,6
      int 21h
 
      mov ax,00
      mov bl,6
 
      mov cx,6 
      
      L1:
           add al,num[si]
           inc si
      loop L1
 
      div bl
 
      add al,30h
 
      mov dl,al
      mov ah,2
      int 21h
 
      mov AH,4ch
      int 21h     

end start       



	