Program Hinh_thang;
Var
	a,b,h:Integer;
       S:Real;
Begin
	Writeln('CHUONG TRINH TINH DIEN TICH HINH THANG');
   Write('-Cho biet day ngan = ');
   Readln(a);
   Write('-Cho biet day dai = ');
   Readln(b);
   Write('-Cho biet chieu cao = ');
   Readln(h);
   S := 0.5 * (a + b) * h;
	Writeln('+Dien tich hinh thang = ',s:6:2,' met vuong');
	Readln
End.