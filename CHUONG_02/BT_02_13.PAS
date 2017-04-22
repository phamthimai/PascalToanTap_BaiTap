Program Tinh_tong;
Var
	n,tong:Integer;
Begin
	Writeln('TINH TONG CUA N SO NGUYEN');
   Writeln('-------------------');
   Writeln;
   Write('-Nhap so nguyen N: ');
   Readln(n);
   tong:=(n * (n + 1) DIV 2);
   Writeln('*Tong tu 1 den N   = ',tong);
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.