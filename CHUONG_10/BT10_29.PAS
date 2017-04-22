Program Tim_PT_Mang;
	Uses Crt;
   Var
   	a:Array[1..1000] Of Integer;
   {----------------------------}
   Procedure Tao;
   	Var
      	k:Integer;
   Begin
   	Randomize;
      For k:=1 To 100 Do
      	a[k]:=Random(100);
   End;
   {----------------------------}
   Procedure Tim;
   	Var
      	k,x:Integer;
   Begin
   	Write('-Nhap gia tri X= ');
      Readln(x);
      For k:=1 To 999 Do
      	Begin
      		If a[k] +a[k+1] = X Then
         		Writeln('a[',K,'] + a[',K+1,']= ',X)
         	Else
         		Writeln('Khong co 2 phan tu nao bang: ',X);
        	End;
   End;
BEGIN
	Writeln('TIM 2 PHAN TU LIEN TIEP BANG GIA TRI X');
   Writeln('-------------------------------------');
   Writeln;
   Tao;
   Tim;
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln;
END.