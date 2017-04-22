Program Luc_hut;
CONST
	g=6.672E-8;
Var
	m1,m2,d,f:Real;
Begin
	Writeln('CHUONG TRINH TINH LUC HUT GIUA 2 VAT');
   Write('-Khoi luong m1 (gam) = ');
   Readln(m1);
   Write('-Khoi luong m2  (gam) = ');
   Readln(m2);
   Write('-Khoang cac giua 2 vat (Cm) = ');
   Readln(d);
   f := g * m1 * m2 / sqr(d);
   Writeln('+Luc hut giua 2 vat = ',f:6:2);
   Readln
End.