Program So_lon;
Var
	so1,so2,so3,so4,solon1,solon2,solon:Integer;
Begin
	Writeln('TIM SO LON NHAT TRONG 4 SO NGUYEN');
   Writeln('Cau truc If...Then...Else');
   Writeln('-------------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   Write('-Nhap so thu ba  : ');
   Readln(so3);
   Write('-Nhap so thu tu  : ');
   Readln(so4);
   If so1 > so2 Then
   	solon1:= so1
   Else
   	Solon1:=so2;
   If so3 > so4 Then
   	solon2:=so3
   Else
   	solon2:=so4;
	If solon1 > solon2 Then
		solon:=solon1
	Else
		solon:=solon2;
	Writeln;
	Writeln('+So lon nhat trong 4 so la: ',solon);
	Writeln;
	Writeln('Bam phim <Enter> de ket thuc');
	Readln
End.