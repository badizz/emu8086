MOV AH,00H
MOV AL,13H
INT 10H

MOV CX,50
MOV DX,50
BACK:MOV AH,0CH
     MOV AL,07H
     INT 10H
     INC DX
     CMP DX,100
     JNZ BACK
     
MOV CX,50
MOV DX,50
NEXT:MOV AH,0CH
     MOV AL,07H
     INT 10H
     INC CX
     CMP CX,100
     JNZ NEXT
     
     
     MOV CX,100
MOV DX,50
BACK2:MOV AH,0CH
     MOV AL,07H
     INT 10H
     INC DX
     CMP DX,100
     JNZ BACK2
     
MOV CX,100
MOV DX,100
NEX2T:MOV AH,0CH
     MOV AL,07H
     INT 10H
     DEC CX
     CMP CX,50
     JNZ NEX2T
     
 MOV CX,50
 MOV DX,100
 NEX: MOV AH,0CH
 MOV AL,07H
 INT 10H
 INC CX
 SUB DX,2
 CMP CX,75
 JNZ NEX
 
 MOV CX,75
 MOV DX,50
 N1: MOV AH,0CH
 MOV AL,07H
 INT 10H
 INC CX
 ADD DX,2
 CMP CX,100
 JNZ N1