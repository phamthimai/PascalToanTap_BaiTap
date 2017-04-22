Program Ma_tran_vuong;
	Uses Crt;
	Var
   	a:Array[1..10, 1..10] Of Integer;
      i,j:Integer;
Begin
	Writeln('MA TRAN VUONG 10 x 10 PHAN TU');
   Writeln('-----------------------------');
	ClrScr;
   Window(10,5,60,25);
   For i:= 1 To 10 Do
   	Begin
      	For j:=1 To 10 Do
         	Begin
            	If i=j Then
               	a[i,j]:=i
               Else
               	a[i,j]:=0;
               Write(a[i,j]:5);
            End;
         Writeln(#10)
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc ');
   Readln
End.