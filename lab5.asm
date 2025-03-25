        AREA PROGRAM, CODE, READONLY
ENTRY
        LDR R0, MEMORY
        LDR R4, RESULT
        LDRH R1,[R0]
        ADD R0,R0,#2
        LDRH R5,[R0]
        MOV R2,R1
LOOP
        CMP R2,#1
        BEQ DONE
        ADD R0,R0,#2
        LDRH R3,[R0]
        SUB R2,R2,#1
        CMP R5,R3
        BHI LOOP
        MOV R5,R3
        B LOOP
DONE
        STR R5,[R4]
HERE        
        B HERE
MEMORY
        DCD 0X40000000
RESULT
        DCD 0x40000006
        END