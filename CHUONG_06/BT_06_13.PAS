Program So_nho;
Var
	so1,so2,so3:Integer;
(*---------------------*)
	FUNCTION nho(x,y:Integer):Integer;
   Begin
   	If x < y Then
      	nho:=x
      Else
      	nho:=y;
   End;
(*---------------------*)
BEGIN
	Writeln('SO NHO NHAT TRONG 3 SO');
   Writeln('        dung ham ');
   Writeln('-----------------------------');
   Write('-So thu nhat = ');
   Readln(so1);
   Write('-So thu hai  = ');
   Readln(so2);
   Write('-So thu ba   = ');
   Readln(so3);
   Writeln;
   Writeln('*So nho nhat la: ',nho(nho(so1,so2),so3));
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.