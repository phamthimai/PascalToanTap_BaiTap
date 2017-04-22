Program Cuu_Chuong;
	Uses Crt;
	Type
   	cc1=Array[1..5, 1..10] Of Byte;
      cc2=Array[6..10, 1..10] Of Byte;
    Var
      i,j:Byte;
   Procedure In1;
   	Var
      	a:cc1;
      	cot,hang:Byte;
      Begin
      	cot:=1;
         hang:=3;
         For i:=1 To 5 Do
           	For j:=1 To 10 Do
              	Begin
               	GotoXY(cot,hang);
                  a[i,j]:=i * j;
                  TextColor(Yellow);
                  Writeln(i:2,' lan ',j:2,' =',a[i,j]:3,'|');
                  hang:=hang+1;
            		If hang > 12 Then
               		Begin
               			hang:=3;
                  		cot:=cot+15;
            			End;
              End;
      End;
   Procedure In2;
   	Var
      	a:cc2;
      	cot,hang:Byte;
      Begin
      	cot:=1;
         hang:=14;
         For i:=6 To 10 Do
           	For j:=1 To 10 Do
              	Begin
               	GotoXY(cot,hang);
                  a[i,j]:=i * j;
                  Textcolor(LightMagenta);
                  Writeln(i:2,' lan ',j:2,' =',a[i,j]:3,'|');
                  hang:=hang+1;
            		If hang > 23 Then
               		Begin
               			hang:=14;
                  		cot:=cot+15;
            			End;
              End;
      End;

BEGIN
	ClrScr;
   Textcolor(Cyan);
   Writeln('                          BANG CUU CHUONG');
   Writeln('                          ---------------');
	In1;
   Textcolor(LightBlue);
   Writeln('               -------------------------------------------');
   In2;
   Textcolor(LightGreen);
   Writeln('                     Bam phim <Enter> de ket thuc');
   Readln
END.