Program Phan_So_3;
Uses PhanSo3;
Var
	X,Y : T_PhanSo3;
   so1,so2 : Real;
Begin
	Writeln('SO SANH, CONG 2 SO THUC CHENH LECH LON');
   Writeln('--------------------------------------');
   Writeln;
	Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   X.KhoiDong;
   Y.KhoiDong;
   X.Doi(So1);
   Y.Doi(So2);
   Writeln;
   If X.LonHon(Y) Then
   	Writeln('-So thu nhat lon hon so thu hai');
   If Y.LonHon(X) Then
   	Writeln('-So thu hai lon hon so thu nhat');
   Writeln;
   X.Cong(Y);
   Write('-Tong 2 so la : ');
	X.Xuat;
   Writeln;
   Write('     Bam <Enter> . . . ');
   Readln
End.