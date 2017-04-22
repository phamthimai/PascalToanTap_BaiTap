Program Phan_tich;
	Const
   	n=15;
   Var
   	a:Array[1..n, 1..n] Of Longint;
      i,j,i1,j1:Integer;
Begin
	Writeln('PHAN TICH SO NGUYEN DUONG NHO NHAT');
   Writeln('----------------------------------');
   Writeln;
   For i:=1 To n Do
   	For j:=1 To n Do
      	a[i,j]:=i*i*i + j*j*j;
   Writeln;
   Writeln('IN KET QUA');
   Writeln('----------');
   For i:=1 To n Do
   	For j:=1 To i Do
      	Begin
         	For i1:= i+1 To n Do
            	For j1:=1 To j-1 Do
               	If a[i,j]=a[i1,j1] Then
                  	Writeln(a[i,j],' = ',i,' ^3 ',' + ',j,' ^3 ',' = ',
                     i1,' ^3 ',' + ',j1,' ^3');
         End;
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.