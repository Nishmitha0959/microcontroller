AREA P1,CODE, READONLY
START
        LDR R0,MEMORY
        LDR R1,[R0]
        LDRH R2,[R0,#2]
        MUL R2,R1,R2
        STR R2,[R0,#4]
        SWI &11
MEMORY
        DCD 0x40000000
        END