Program Hinh_cau;
Var
	s:integer;
   r,v:Real;
Begin
	Writeln('CHUONG TRINH TINH THE TICH HINH CAU');
   Writeln('---------------------------------');
   Write('Cho biet dien tich hinh tron = ');
   Readln(s);
   r:=Sqrt(s/4*3.1416);
   v:=4/3 * 3.1416 *r*r*r;
   Writeln('*The tich hinh cau la : ',V:6:2,' met khoi');
   Readln
End.