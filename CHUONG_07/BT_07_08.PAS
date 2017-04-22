Program So_lon;
Var
	so1,so2,solon:Integer;
Begin
	Writeln('TIM SO LON TRONG 2 SO');
   Writeln('  Su dung ham Ord()');
   Writeln('---------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   solon:=Ord(so1 >=so2) *so1 + Ord(so2 > so1) * so2;
   Writeln('-So lon la so: ',solon);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.