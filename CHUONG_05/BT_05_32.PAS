Program Bang_cuu_chuong;
Var
	i,j:Integer;
Begin
	Writeln('                          BANG CUU CHUONG');
   Writeln('                          ---------------');
   For i:=1 To 9 Do
   	For j:=1 To 5 Do
      	Write(j:2,' lan ',i:2,' = ',j*i:2,'  ');
   Writeln;
   Writeln('           ---------------------------------------------------');
   For i:=1 To 9 Do
   	For j:=6 To 10 Do
         Write(j:2,' lan ',i:2,' = ',j*i:2,'  ');
   Writeln('           ---------------------------------------------------');
   Writeln;
   Write('                     Bam phim <Enter> de ket thuc');
   Readln
End.