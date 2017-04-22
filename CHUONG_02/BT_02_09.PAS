Program Tinh_gia_tri_hang_hoa;
Var
       n:Integer;
	a,c,l:Real;
Begin
	Writeln('TINH GIA TRI HANG HOA');
   Writeln('---------------------');
   Writeln;
   Write('-Cho biet gia goc tra ngay: ');
   Readln(a);
   Write('-Cho biet lai suat l%/nam: ');
   Readln(l);
   Write('-Cho biet so ngay tra cham: ');
   Readln(n);
   c:= a * (1 + n * l / 36000);
   Writeln('+Gia hang hoa tra cham = ',c:10:2,' dong');
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.