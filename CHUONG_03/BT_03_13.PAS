Program Tinh_khoang_cach;
Var
	a,b,c,d,x,y:Real;
Begin
	Writeln('TINH KHOANG CACH TU 1 DIEM DEN DUONG THANG');
   Writeln('------------------------------------------');
   Write('-Nhap he so a= ');
   Readln(a);
   Write('-Nhap he so b= ');
   Readln(b);
   Write('-Nhap he so c= ');
   Readln(c);
   Write('-Nhap toa do x= ');
   Readln(x);
   Write('-Nhap toa do y= ');
   Readln(y);
   d:=((a*x) + (b*y) + c) / Sqrt(Sqr(a) + Sqr(b));
   Writeln('+Khoang cach tu diem I den duong thang la: ',d:10:2);
   Readln
End.