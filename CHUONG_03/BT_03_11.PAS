Program Chu_ky_con_lac;
Const
	g=918;
Var
	l,t:Real;
Begin
	Writeln('TINH CHU KY DAO DONG CON LAC DON');
   Writeln('-----------------------');
   Write('-Cho biet chieu dai con lac: ');
   Readln(l);
   t:=2*pi*sqrt(l/g);
   Writeln('+Chu ky dao dong dieu hoa cua con lac: ',t:10:3);
   Readln;
End.