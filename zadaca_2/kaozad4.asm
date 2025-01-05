@SCREEN
D=A;
@0
D=D+A;
@top  /////// od ovog krece gornje lijevi kut
M=D;
////////////////
@top
D=M;
@i
M=D;

@unut_diag
M=1;

@reg
M=0;

@count_diag
M=0;


// i + reg je adresa di se pise unut

(start_diag)
@16385
D=A;
@unut_diag
D=D-M;

@dodat_33
D;JLE

@120
D=A;
@count_diag
D=D-M;

@end_diag
D;JLE
//

@unut_diag
D=M;

@i
A=M;
M=D;
//
@unut_diag
D=M;
M=D+M; // M = 2*M;

@32
D=A;
@i
M=M+D;

@count_diag
M=M+1;

@start_diag
0;JMP

(dodat_33)
@32767
D=A;
@0
D=A-D;
D=D-1; // u D je sad -32768
@i
A=M;
M=D;
@unut_diag
M=1;
@33
D=A;
@i
M=M+D;

@start_diag
0;JMP

(end_diag)


/////////////////////////okomita

@top
D=M;
@j
M=D;
@512
D=A;
@j
M=M+D;

@3104  // da taman dode do kuta kad se krene crtat
D=A;
@kraj_vert
M=D;
@j
D=M;
@kraj_vert
M=M+D;


(start_vert)
@kraj_vert
D=M;
@j
D=D-M;

@end_vert
D;JLE
//
@j
A=M;
M=1;

//
@32
D=A;
@j
M=M+D;
@start_vert
0;JMP
(end_vert)



//////////////////////////////////horizontalna
@top
D=M;
@4096
D=D+A;

@hor
M=D;

@hor
A=M;
M=-1;

@hor
M=M+1;
A=M;
M=-1;

@hor
M=M+1;
A=M;
M=-1;

@hor
M=M+1;
A=M;
M=-1;

@hor
M=M+1;
A=M;
M=-1;

@hor
M=M+1;
A=M;
M=-1;

@hor
M=M+1;
A=M;
M=-1;

@hor
M=M+1;
A=M;
M=-1;


//////////////////////////////////horizontalna


////////////////// rucno vrh prve dijagonale
@top
D=M;
@adr_vrh
M=D;

@32
D=A;
@adr_vrh
M=M+D;

@2
D=A;
@vrij_vrh
M=D;

@count_vrh
M=0;


(start_vrh)
@16
D=A;
@count_vrh
D=D-M;

@end_vrh
D;JLE
//
@vrij_vrh
D=M+1;
@adr_vrh
A=M;
M=D;
//
@32
D=A;
@adr_vrh
M=M+D;
@vrij_vrh
D=M;
M=M+D;
@count_vrh
M=M+1;

@start_vrh
0;JMP
(end_vrh)

////////////////////////////////////rucno nap tam di je kut od 90
@top
D=M;
@4064
D=D+A;
@vrh
M=D;

@3
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@5
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@9
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@17
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@33
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@65
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@129
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@257
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@513
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@1025
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@2049
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@4097
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@8193
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@16385
D=A;
@vrh
A=M;
M=D;

@32
D=A;
@vrh
M=M-D;

@32767
D=A;
@0
D=A-D;

@vrh
A=M;
M=D;
///////////////////////////////////kraj rucnog


////////////////////////////////// unutarnja dijagonalica
@top
D=M;
@3584
D=D+A;

D=D+1;

@mala_diag
M=D;

@dodat_1
M=0;

@vrij_mala_diag
M=1;

@count_mala_diag
M=0;


(mala_diag_start)
@52
D=A;
@count_mala_diag
D=D-M;

@mala_diag_end
D;JLE
//
@vrij_mala_diag
D=M;
@mala_diag
A=M;
M=D;
//
@count_mala_diag
M=M+1;

@vrij_mala_diag
D=M;
M=M+D;

@32
D=A;
@mala_diag
M=M-D;

@dodat_1
M=M+1;

@16
D=A;
@dodat_1
D=D-M
@skip_dodat_1
D;JGE

@33 // nez zas to radi iskr
D=A;

@mala_diag
M=M+D;
@vrij_mala_diag
M=1;
@dodat_1
M=0;

(skip_dodat_1)

@mala_diag_start
0;JMP
(mala_diag_end)








(END)
@END
0;JMP