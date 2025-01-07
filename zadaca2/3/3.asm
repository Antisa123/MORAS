@0
D=M
@5
M=D       // postavim 5. memoriju na vrijednost nulte za pripremu

@0
D=M       // ucitaj vrijednost sa mem lokacije 0 u D
@5
D=D-M     // oduzme se vrijednost sa mem lokacije 5 od vrijednosti sa lokacije 0 (D = D - M)
@skip1
D;JGE     // ak je D >= 0, preskoci sljedeći korak (0 <= 5, pa ne treba nista mijenjati)
@0
D=M       // ponovno ucitaj vrijednost sa memorijske lokacije 0 u D
@5
M=D       // spremi se vrijednost sa lokacije 0 na lokacije 5
(skip1)     // nastavlja se program ako nije bilo potrebno spremiti


@1
D=M       
@5
D=D-M     
@skip2
D;JGE     
@1
D=M       
@5
M=D      
(skip2)   


@2
D=M      
@5
D=D-M   
@skip3
D;JGE    
@2
D=M       
@5
M=D       
(skip3)    


@3
D=M      
@5
D=D-M    
@skip4
D;JGE    
@3
D=M      
@5
M=D      
(skip4)     


@4
D=M     
@5
D=D-M  
@skip5
D;JGE    
@4
D=M      
@5
M=D       
(skip5)    


(END)     // infinite petlja za kraj
@END
0;JMP    
