   
    
    CODE SEGMENT
    ASSUME CS:CODE
    START:
    
    
    MOV AL, 00H
    
    
    
	MOV SI, 500H	
	MOV [SI], AL
     
    
	ADD SI, 01H	
	ADD AL, 01H	
	MOV [SI], AL
    MOV DL,[SI]
    ADD DL,30H
    SUB DL,01H
    MOV AH,02H
    INT 21H
    ADD DL,01H
    MOV AH,02H
    INT 21H
    
	MOV CX,07H	
	SUB CX, 02H	
	L1:
	MOV AL, [SI-1]	
	ADD AL, [SI]	
	ADD SI, 01H	
	MOV [SI], AL
    MOV DL,[SI]
    ADD DL,30H
    MOV AH,02H
    INT 21H
	LOOP L1
    MOV AH,4CH
    INT 21H
    CODE ENDS
    END START