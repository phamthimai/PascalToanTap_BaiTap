Program Tong_nghich_dao;
Var
	n,k :1..30; {Kieu mien con }
   s:Real;
(*-------------------*)
	FUNCTION So(i:Integer):Integer;
   Var
   	j:1..30;
      tam:LongInt;
   Begin
   	tam:=1;
      For j:=1 To i Do
      	tam:=tam * j;
         So:=tam;
   End;
(*-------------------*)
BEGIN
	Writeln('TONG NGHICH DAO CUA N SO NGUYEN');
   Writeln('        Su dung ham');
   Writeln('-------------------------------');
   Write('-Nhap so N = ');
   Readln(n);
   s:=0;
   For k:=1 To n Do
   	s:=s+1/so(k);
   Writeln;
   Writeln('+Tong nghich dao cua ',n,' so nguyen la: ',s:10:2);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.