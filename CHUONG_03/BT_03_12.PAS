Program Luc_hap_dan;
Const
	gama=6.673E-8;
Var
	m1,m2,f,d:Real;
Begin
	Writeln('TINH LUC HAP DAN GIUA 2 VAT');
   Writeln('----------------------');
   Write('-Khoi luong vat thu nhat: ');
   Readln(m1);
   Write('-Khoi luong vat thu hai : ');
   Readln(m2);
   Write('-Khoang cach 2 vat: ');
   Readln(d);
   f:=gama*m1*m2/sqr(d);
   Writeln('+Luc hap dan giua 2 vat= ',f:10:3);
   Readln
End.