.text
.global _start

_start:
    /* Variable Initialization */
    MOV x0, #4       // Initialize x0 = 4
    MOV x1, #3       // Initialize x1 = 3
    MOV x2, #0       // x2 will store result (initially 0)

LOOP:   
    CMP x1, #0       // Comp x1 with 0
    BEQ EXIT         // If x1 is 0, exit

    ADD x2, x2, x0   // Add x0 + x2 (result += x0)
    SUB x1, x1, #1   // Decrease (x1--)

    B LOOP           // Loop til x1 reaches 0

EXIT:   
    MOV x0, x2       // Move result from x2 to x0 
    MOV x8, #93      
    SVC #0           // system call to exit

