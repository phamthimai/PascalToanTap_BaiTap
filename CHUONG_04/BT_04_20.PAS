Program So_lon_so_nho;
Var
	so1,so2,so3,so4,max,min:Integer;
Begin
	Writeln('TIM SO LON NHAT VA SO NHO NHAT');
   Writeln('-----------------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   Write('-Nhap so thu ba  : ');
   Readln(so3);
   Write('-Nhap so thu tu  : ');
   Readln(so4);
   max:=so1;
   min:=so1;
   If max < so2 Then
   	max:=so2
   Else
   	min:=so2;
   If max < so3 Then
   	max:=so3
   Else
   	min:=so3;
   If max < so4 Then
   	max:=so4;
   Writeln;
   Writeln('+So lon nhat trong 4 so: ',so1,',',so2,',',so3,',',so4,' la: ',max);
   Writeln('+Va so nho nhat trong 4 so do la       : ',min);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.