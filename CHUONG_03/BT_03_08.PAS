Program Doi_chu_thuong_ra_chu_HOA;
Var
	ch,c1,c2:Char;
Begin
	Writeln('DOI CHU THUONG RA CHU HOA');
   Writeln('-------------------------');
   Write('-Nhap mot ky tu bat ky: ');
   Readln(ch);
   c1:=upcase(ch);
   c2:=chr(ord(ch)-32);
   Writeln('+Cach thu nhat, dung ham Upcase: ',c1);
   Writeln('+Cach thu hai,khong dung ham Upcase: ',c2);
   Readln
End.