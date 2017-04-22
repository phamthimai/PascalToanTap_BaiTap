Program Phan_So_2;
Uses PhanSo2;
Var
	X,Y : T_PhanSo2;
   so1,so2 : Real;
Begin
	Writeln('SO SANH, CONG 2 SO THUC DUOI DANG PHAN SO');
   Writeln('----------------------------------------');
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
   Write('-Doi so thu nhat ra phan so la : ');
   X.Xuat;
   Writeln;
   Write('-Doi so thu hai ra phan so la  : ');
   Y.Xuat;
   Writeln;
   Writeln;
   If X.LonHon(Y) Then
   	Writeln('-So thu nhat lon hon so thu hai');
   If Y.LonHon(X) Then
   	Writeln('-So thu hai lon hon so thu nhat');
   Writeln;
   X.Cong(Y);
   Write('-Tong 2 phan so la : ');
	X.Xuat;
   Writeln;
   Write('     Bam <Enter> . . . ');
   Readln
End.