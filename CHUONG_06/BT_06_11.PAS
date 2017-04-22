Program Doi_nhiet_do;
Var
	t:Real;
   tiep:Char;
(*---------------------*)
	FUNCTION Doi(x:Real):Real;
   Begin
   	Doi:=((9*x/5) + 32);
   End;
(*---------------------*)
BEGIN
   Repeat
		Writeln('DOI DO BACH PHAN SANG DO FARENHEIT');
   	Writeln('          Su dung ham');
		Writeln('----------------------------------');
		Write('-Nhap do bach phan: ');
		Readln(t);
		Writeln('*Doi sang do Farenheit = ',Doi(t):6:2);
      Writeln;
      Write('-Co tiep tuc khong ? (c/k) ');
      Readln(tiep);
   Until tiep='k' ;
END.