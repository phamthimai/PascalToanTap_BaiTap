Program Tinh_do_dai_vec_to;
Var
       x,y,z:Integer;
	        l:Real;
Begin
	Writeln('TINH CHIEU DAI VECTO');
   Writeln('---------------------');
   Writeln;
   Write('-Cho biet toa do X : ');
   Readln(x);
   Write('-Cho biet toa do Y : ');
   Readln(y);
   Write('-Cho biet toa do Z : ');
   Readln(z);
   l:= Sqrt(Sqr(x) + Sqr(y) + Sqr(z));
   Writeln('+Chieu dai cua vecto = ',l:10:2);
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.