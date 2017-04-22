Program So_lon;
Var
	so1,so2,so3,solon:Integer;
Begin
	Writeln('TIM SO LON NHAT TRONG 3 SO NGUYEN');
   Writeln('      Cau truc If du');
   Writeln('---------------------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   Write('-Nhap so thu ba  : ');
   Readln(so3);
   If so1 < so2 Then
   	solon:=so2
	Else
   	solon:=so1;
   If solon < so3 Then
   	solon:=so3;
	Writeln;
   Writeln('+So lon nhat trong 3 so la: ',solon);
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.