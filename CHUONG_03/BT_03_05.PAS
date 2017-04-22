Program Tinh_sin;
Var
	goc:Integer;
	rad,x:Real;
Begin
	Writeln('TINH SIN(X)');
   Writeln('-----------');
   Write('-Nhap vao mot goc: ');
   Readln(goc);
   rad:=(pi * goc) / 180;
   x:=sin(rad);
   Writeln('+Sin(',goc:2,') = ',x:10:8);
   Readln;
End.