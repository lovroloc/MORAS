@4  
D=A;
@R0
M=D;
@6
D=A;
@R1 //nisam znao trebam li ostaviti ovo ili no ali evo tesst
M=D; 
//////////////////
@R2
M=0;
@R0
D=M;
@CHECK_R1
D; JGT
@END
0; JMP
(CHECK_R1)
	@R1
	D=M;
	@LOOP_START
	D; JGT
	@END
	0; JMP
(LOOP_START)
	@R0
	D=M;
	@R1
	D=D-M;
	@LOOP_END
	D; JGT
	@R0
	D=M;
	@R2
	M=M+D;
	@R0
	M=M+1;
	@LOOP_START
	0; JMP
(LOOP_END)
(END)
@END
0; JMP