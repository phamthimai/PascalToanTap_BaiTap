Program Dao_so;
Var
	n:LongInt;
(*-------------------*)
	PROCEDURE Daoso(x:LongInt);
   Begin
   	Write(x Mod 10);
      If (x Div 10) <> 0 Then
      	Daoso(x Div 10)
   End;
(*-------------------*)
BEGIN
	Writeln('DAO NGUOC MOT SO');
   Writeln(' Dung thu tuc');
   Writeln('--------------');
   Write('-Nhap mot so nguyen: ');
   Readln(n);
   Writeln;
   Writeln('+So nhap vao la = ',n);
   Write('+Bay gio la     = ');
	Daoso(n);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.