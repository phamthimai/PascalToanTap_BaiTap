Program Doi_do_F_C;
Var
	f,c:Real;
Begin
	Writeln('DOI DO FAHRENHEIT SANG CELCIUS');
   Write('-Cho biet do Fahrenheit : ');
   Readln(f);
   c:=((f-32) * 5)/9;
   Writeln;
   Writeln(f:5:2,' do Fahrenheit doi sang do Celcius = ',c:5:2,#248);
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.