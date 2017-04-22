Program Tinh_Z;
Var
	x,z:Real;
Begin
	Writeln('TINH GIA TRI Z QUA SO THUC X');
   Writeln('----------------------------');
   Write('-Nhap tri x = ');
   Readln(x);
   z:=ln(x + abs(sin(2 * x)));
   Writeln('*Gia tri cua Z = ',z:10:2);
   Writeln(' Bam phim <Enter> de ket thuc');
   Readln
End.