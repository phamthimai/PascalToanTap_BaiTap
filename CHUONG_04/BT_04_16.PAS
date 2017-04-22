Program Giai_Tri;
Var
	t:Byte;
Begin
	Writeln('CHON LOAI GIAI TRI THICH HOP');
   Writeln('----------------------------');
   Write('-Cho biet nhiet do ngay hom nay: ');
   Readln(t);
   If t < 20 Then
   	Writeln('Troi lanh, ban nen o nha coi TV');
   If ((t > 20) And (t < 25)) Then
   	Writeln('Troi mat me, ban nen di cam trai');
   If ((t > 25) And (t < 30)) Then
   	Writeln('Troi hoi nong, ban nen di tam bien Vung Tau');
   If t > 30 Then
   	Writeln('Troi nong, ban nen di nghi mat o Da Lat');
	Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.