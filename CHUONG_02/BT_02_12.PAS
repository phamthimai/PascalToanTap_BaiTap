Program Tinh_a_mu_b;
Var
	a,b:Integer;
   p:Real;
Begin
	Writeln('TINH TRI CUA A MU B');
   Writeln('-------------------');
   Writeln;
   Write('-Nhap so nguyen A: ');
   Readln(a);
   Write('-Nhap so mu B    : ');
   Readln(b);
   P:=Exp(b * Ln(a));
   Writeln('*Tri A mu B    = ',p:10:2);
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.