Program Tim_Nhi_Phan;
	Const
   	N=10;
   Var
   	a:array[1..N] Of Integer;
      so,vt1,vt2,i:Integer;
Begin
	Writeln('GIAI THUAT TIM KIEM NHI PHAN');
   Writeln('----------------------------');
   Writeln;
   For i:=1 To N Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
   Writeln;
   Write('-So can tim: ');
   Readln(so);
   vt1:=1;
   vt2:=n;
   While vt2 >= vt1 Do
   	Begin
      	i:=Trunc((vt1+vt2) Div 2);
         If so > a[i] Then
         	vt1:=i+1
         Else
         	If so < a[i] Then
            	vt2:=i-1
            Else
            	vt2:=-1;
      End;
   If vt2 = -1 Then
   	Writeln('+Tim thay o vi tri thu: ',i)
   Else
   	Writeln('+Khong tim thay');
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
	Readln
End.