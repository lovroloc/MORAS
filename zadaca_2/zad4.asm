@RAM0
M = 0  
@SCREEN
D = A
@0
D = D + A
@TOP
// gornji lijevi kut
M = D 

// registri
@TOP
D = M
@I
M = D
@UNUTARNJA
M = 1
@REG
M = 0
@BROJDIJAG
M = 0

// crtanje glavne
(LOOPGLAVNA)
@16385
D = A
@UNUTARNJA
D = D - M
@DODATNODIJAG
D; JLE
@120
D = A
@BROJDIJAG
D = D - M
@KRAJ
D; JLE

// crtanje na skrin
@UNUTARNJA
D = M
@I
A = M
M = D
@UNUTARNJA // double bit
D = M
M = D + M
// novi red
@32
D = A
@I
M = M + D
// povecanje broja dijag. za 1
@¸BROJDIJAG
M = M + 1
@LOOPGLAVNA
0; JMP

(DODATNODIJAG)
@32767
D = A
@0
D = A - D
D = D - 1
@I
A = M
M = D
@UNUTARNJA
M = 1
@33
D = A
@I
M = M + D
@LOOPGLAVNA
0; JMP
(KRAJ)
@TOP // ona okomita linija
D = M
@J
M = D
@512
D = A
@J
M = M + D
@3104
D = A
@OKOMITAKRAJ
M = D
@J
D = M
@OKOMITAKRAJ
M = M + D
(OKOMITALOOP)
@OKOMITAKRAJ
D = M
@J
D = D - M
@OKOMITAKRAJ
D; JLE
@J // crtanje na ekran
A = M
M = 1
@32 // sljedeca pos
D = A
@J
M = M + D
@OKOMITALOOP
0; JMP
(OKOMITAKRAJ)
// horizontalna sad
@TOP
D = M
@4096
D = D + A
@HORIZONTALNA
M = D
@HORIZONTALNALOOP
@HORIZONTALNA
A = M
M = -1
@HORIZONTALNA
M = M + 1
@HORIZONTALNALOOP
0; JMP
// crtanje vrhova
@TOP 
D = M
@32
D = A
@ADRESAVRHOVA
M = D
@2
D = A
@VRIJEDNOSTVRHOVA
M = D
@BROJVRHOVA
M = 0
(VRHLOOP)
@16
D = A
@BROJVRHOVA
D = D - M
@KRAJVRH
D; JLE
@VRIJEDNOSTVRHOVA
D = M + 1
@ADRESAVRHOVA
A = M
M = D
//////////////////
@32
D = A
@ADRESAVRHOVA
M = M + D
@VRIJEDNOSTVRHOVA
D = M
M = M + D
@BROJVRHOVA
M = M + 1
@VRHLOOP
0; JMP
(KRAJVRH)
// mala unutarnja dijag
@TOP
D = M
@3584
D = D + A
D = D + 1
@MALAUNUTARNJA
M = D
@DODAT1
M = 0
@VRMALADIJAG
M = 1
@BROJMALADIJAG
M = 0
(MALADIJAGLOOP)
@52
D = A
@BROJMALADIJAG
D = D - M
@KRAJMALADIJAG
D; JLE
@VRMALADIJAG
D = M
@MALADIJAG
A = M
M = D
@BROJMALADIJAG
M = M + 1
@VRMALADIJAG
D = M
M = M + D
@32
D = A
@MALADIJAG
M = M - D
@DODAT_1
M = M + 1
@16
D = A
@DODAT_1
D = D - M
@SKIP_DODAT1
D; JGE
@33
D = A
@MALADIJAG
M = M + D
@VRMALADIJAG
M = 1
@DODAT_1
M = 0
(SKIP_DODAT1)
@MALADIJAGLOOP
0; JMP
(KRAJMALADIJAG)

(END)
@END
0; JMP
