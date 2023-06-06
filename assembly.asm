;Team: Erik Mitchell, Kristin Tong, Rosie Hernandez, Mark Castillo

;ASSUMPTIONS

;base address of A stored in x2
;size of A-1 is stored in x3 (n-1)
;the summation (result) is stored in x4
;the size of A is >= 1 (n>=1)
;the branch address (the address of the first instruction in the loop) is stored in x9
;the address of the final summation in A is stored in x5

;Version 1

summation1:
    SUB x4,x4,x4
    ADD x5,x2,x3
    ;loop
    SVPC x9,1
    LD x6,x2
    NOP
    NOP
    ADD x4,x4,x6
    INC x2,x2,1
    NOP
    ;loop condition
    SUB x8,x2,x5    
    BRN x9
    NOP

;Version 2

summation2:
    SUM x4,x2,x3
    NOP
