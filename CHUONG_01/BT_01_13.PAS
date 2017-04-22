Program Tam_thuc;
Var
	a,b,c,x,p:Integer;
Begin
	Writeln('TINH TAM THUC');
	Writeln('-------------');
	Write('-Nhap a= ');
	Readln(a);
   Write('-Nhap b= ');
	Readln(b);
   Write('-Nhap c= ');
	Readln(c);
   Write('-Nhap x= ');
	Readln(x);
   p:=((a*(x*x)) + (b*x) + c);
   Writeln('*Tri cua tam thuc = ',p);
   Writeln('Bam phim <Enter> de ket thuc');
	Readln
End.