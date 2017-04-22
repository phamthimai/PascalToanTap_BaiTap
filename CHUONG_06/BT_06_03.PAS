Program Doi_cho;
Var
	so1,so2:Integer;
(*-----------------*)
	PROCEDURE Doi(Var n,m:Integer);
   Var
   	tam:Integer;
	Begin
   	tam:=n;
      n:=m;
      m:=tam;
   End;
(*-----------------*)
BEGIN
	Writeln('DOI CHO 2 SO');
   Writeln('Dung thu tuc');
   Writeln('------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai: ');
   Readln(so2);
   Writeln('=================');
   Writeln('    Truoc khi doi cho');
   Writeln('+So thu nhat = ',so1);
   Writeln('+So thu hai  = ',so2);
   Writeln('    Sau khi doi cho');
   Doi(so1,so2);
	Writeln('*So thu nhat    : ',so1);
	Writeln('*So thu hai     : ',so2);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.