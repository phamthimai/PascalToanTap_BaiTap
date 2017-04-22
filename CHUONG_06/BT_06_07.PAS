Program Giai_thua;
Var
	n:Integer;
(*---------------------*)
	FUNCTION Gt(x:Integer):Integer;
   Var
   	k,s:Integer;
   Begin
   	s:=1;
      For k:=1 To x Do
      	s:=s*k;
      Gt:=s;
   End;
(*---------------------*)
BEGIN
	Writeln('TINH GIAI THUA CUA N');
   Writeln('    Su dung ham');
   Writeln('--------------------');
   Write('-Nhap N= ');
   Readln(n);
   Writeln;
   Writeln('+Giai thua cua ',n,' = ',Gt(n));
   Writeln;
   Write('  Bam <Enter> de ket thuc ');
   Readln
END.