Program Phan_So_1;
Uses PhanSo1;
Var
	x : T_PhanSo1;
   r : Real;
BEGIN
	Writeln('DOI SO THUC RA OHAN SO TOI GIAN');
   Writeln('-------------------------------');
   Writeln;
   Write('-Nhap mot so thuc: ');
   Readln(r);
   Writeln;
   With x Do
   	Begin
      	KhoiDong;
         Write('+Doi ra dang phan so la= ');
         Doi(r);
         Xuat;
         Writeln;
         Write('+Phan so toi gian la   = ');
         Toigian;
         Xuat;
      End;
   Readln
END.