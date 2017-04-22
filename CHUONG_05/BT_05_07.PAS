Program Tinh_giai_thua;
Var
	n,i:Integer;
   gt:LongInt;
Begin
	Writeln('TINH N!');
   Writeln('-------');
   Write('-Nhap N= ');
   Readln(n);
   gt:=1;
   For i:=1 To n Do
   	gt:=gt*i;
   Writeln;
   Writeln('+Giai thua cua ',n,' = ',gt);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.