Program Cuu_chuong_2;
Var
	so,i :Integer;

Begin
   Write('-Bang cuu chuong so may ?: ');
	Readln(so);
	Writeln;
   Writeln;
   Writeln(' CHUONG TRINH BANG CUU CHUONG');
   Writeln('-------------------------------');
   Writeln;
   For i:=1 To 10 Do
   	Writeln(so:2,' lan ',i:2,' = ',so*i:3);
	Readln
End.