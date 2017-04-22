Program Lam_tron;
Var
	so:Real;
   le:Integer;
(*---------------*)
	FUNCTION Tron(so:Real;le:Integer):Real;
   Var
   	i,n:LongInt;
   Begin
   	For i:=1 To le+1 Do
      	so:=so*10;
      n:=Trunc(so);
      If (n Mod 10) >= 5 Then
      	n:=(n Div 10) +1
      Else
      	n:=n Div 10;
      so:=n;
      For i:=1 To le Do
      	so:=so/10;
      Tron:=so;
   End;
(*---------------*)
BEGIN
	Writeln('LAM TRON SO THUC');
   Writeln('  Su dung ham');
   Writeln('----------------');
   Write('-Nhap so: ');
   Readln(so);
   Write('-Can bao nhieu so le: ');
   Readln(le);
   Writeln;
   Writeln('       KET QUA');
   Writeln('*So nhap vao = ',so:12:10);
   Writeln('*So lam tron = ',Tron(so,le):12:le);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.