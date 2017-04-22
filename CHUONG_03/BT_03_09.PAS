Program Doi_chu_HOA_ra_chu_thuong;
Var
	ch,c:Char;
Begin
	Writeln('DOI CHU HOA RA CHU THUONG');
   Writeln('-------------------------');
   Write('-Nhap mot chu HOA bat ky: ');
   Readln(ch);
   c:=chr(ord(ch)+32);
   Writeln('+Doi ra chu thuong la: ',c);
   Readln
End.