Program Tinh_the_tich_hinh_cau;
Var
	s,v,r:Real;
Begin
	Writeln('TINH THE TICH HINH CAU KHI BIET DIEN TICH');
   Writeln('-----------------------------------------');
   Write('-Cho biet dien tich hinh cau: ');
   Readln(s);
   r:= Sqrt(s/4*pi);
   v:=4/3*pi*r*r*r;
   Writeln('+The tich hinh cau la: ',v:10:4,' met khoi');
   Readln
End.