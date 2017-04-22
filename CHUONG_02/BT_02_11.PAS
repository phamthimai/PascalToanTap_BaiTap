Program Trung_binh;
Var
	a,b,c:Integer;
   P,S:Real;
Begin
	Writeln('TINH TRUNG BINH CONG,TRUNG BINH NHAN');
   Writeln('------------------------------------');
   Writeln;
   Write('-Nhap so thu nhat: ');
   Readln(a);
   Write('-Nhap so thu hai : ');
   Readln(b);
   Write('-Nhap so thu ba  : ');
   Readln(c);
   S:=(a + b + c) / 3;
   P:=Exp((1 / 3) * Ln(a * b * c));
   Writeln('*Trung binh cong cua 3 so= ',s:6:2);
   Writeln('*Trung binh nhan cua 3 so= ',p:6:2);
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.