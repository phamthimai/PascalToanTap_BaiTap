Program Doi_so_he_2;
Var
	n,so:Integer;
   tiep:Char;
Begin
	Writeln('DOI SO HE 10 SANG HE 2');
   Writeln('----------------------');
   Repeat
   	Write('-Nhap so nguyen he 10: ');
      Readln(so);
      n:=16384; {Gan n= 2 luy thua 14}
      Writeln;
      Write('+So he 2 la ');
      Repeat
			Write(so Div n);
         so:=so - n * (so Div n);
         n:= n Div 2;
      Until n=0;
		Writeln;
   	Write('-Tiep tuc nua khong (C/K) ');
   	Readln(tiep);
   Until Upcase(tiep)='K';
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.