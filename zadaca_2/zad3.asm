// ram[5] na 0
@5
M=0
// i na 4
@4
D=A
@i
M=D
// petlja start
(LOOP)
@i
D=M
@RAM_BASE
A=D+A
D=M
@SKIP
D;JLE
@5
D=D+M
M=D
(SKIP)
@i
M=M-1
@LOOP
D=M
@END
D;JLT

(END)
@END
0;JMP
// pocetak rama
(RAM_BASE)
@0
