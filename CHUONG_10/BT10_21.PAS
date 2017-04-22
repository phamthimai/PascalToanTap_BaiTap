Program Tim_Tuyen_Tinh;
	Const
   	N=10;
   Var
   	a:array[1..N] Of Integer;
      so,i:Integer;
Begin
	Writeln('GIAI THUAT TIM KIEM TUYEN TINH');
   Writeln('------------------------------');
   Writeln;
   For i:=1 To N Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
   Writeln;
   Write('-So can tim: ');
   Readln(so);
   i:=1;
   While (i <=N) And (a[i] <> so) Do
   	i:=i+1;
   If i <= N Then
   	Writeln('+Tim thay o vi tri thu: ',i)
   Else
   	Writeln('+Khong tim thay');
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
	Readln
End.