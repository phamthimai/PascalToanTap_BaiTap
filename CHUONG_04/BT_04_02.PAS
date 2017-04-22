Program So_lon;
Var
	so1,so2:Integer;
Begin
	Writeln('TIM SO LON NHAT TRONG 2 SO NGUYEN');
   Writeln('---------------------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   If so1 > so2 Then
   	Writeln('+So thu nhat la so lon nhat');
	If so2 > so1 Then
   	Writeln('+So thu hai la so lon nhat');
	Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.