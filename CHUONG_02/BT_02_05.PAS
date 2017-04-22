Program Doi_do_Mile_Km;
Const
	Km_Mile=1.609344;
Var
	m,k:Real;
Begin
	Writeln('DOI MILE SANG Km');
   Write('-Cho biet so Mile can doi: ');
   Readln(m);
   k:=m * Km_Mile;
   Writeln;
   Writeln(m:5:2,' dam Anh doi thanh = ',k:5:2,' Km');
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.