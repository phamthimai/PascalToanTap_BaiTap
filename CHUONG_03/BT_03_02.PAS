Program Doi_cho;
Var
	so1,so2:Integer;
Begin
	Writeln('DOI CHO 2 SO NGUYEN');
   Writeln('-------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   so1:=so1+so2;
   so2:=so1-so2;
   so1:=so1-so2;
   Writeln('SAU KHI CHUYEN CHO');
   Writeln('+So thu nhat bay gio la: ',so1);
   Writeln('+So thu hai bay gio la : ',so2);
   Readln
End.