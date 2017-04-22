Program Tg_Pascal;
	Const
   	n=10;
   Var
   	a:Array[1..n, 1..n] Of Integer;
      i,j:Integer;
Begin
	Writeln('TAM GIAC PASCAL');
   Writeln('---------------');
   Writeln;
   For i:=1 To n Do
   	a[i,1]:=1;
	For j:=1 To n Do
   	a[1,j]:=0;
   For i:=2 To n Do
   	For j:=2 To n Do
      	a[i,j]:=a[i-1,j-1]+a[i-1,j];
   For i:=1 To n Do
   	Begin
      	For j:=1 To i Do
         	Write(a[i,j]:4);
         Writeln;
      End;
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.