Program Nhan_ma_tran;
	Const
   	Max=10;
   Type
   	Matran=Array[1..Max,1..Max] Of Integer;
   Var
   	A,B,C:Matran;
      hang1,cot1,i,j,m,n,q:Integer;
Begin
	Writeln('NHAN MA TRAN');
   Writeln('------------');
   Writeln;
   Writeln('MA TRAN A:');
   Write('-So hang = ');
   Readln(m);
   Write('-So cot  = ');
   Readln(n);
   For i:=1 To m Do
   	For j:=1 To n Do
      	Begin
         	Write('+Phan tu A[',i,',',j,' = ');
            Readln(a[i,j]);
         End;
   Cot1:=m;
   Hang1:=m;
   Writeln;
   Writeln('MA TRAN B:');
   Write('-So hang = ');
   Readln(m);
   Write('-So cot  = ');
   Readln(n);
   For i:=1 To m Do
   	For j:=1 To n Do
      	Begin
         	Write('+Phan tu B[',i,',',j,' = ');
            Readln(b[i,j]);
         End;
   For i:=1 To Hang1 Do
   	For j:=1 To n Do
      	Begin
         	c[i,j]:=0;
            For q:=1 To Cot1 Do
            	c[i,j]:= c[i,j] + a[i,q] * b[q,j];
         End;
   For i:=1 to hang1 Do
   	Begin
      	For j:= 1 To n Do
         	Write((c[i,j]):8);
         Writeln;
      End;
   Readln
End.