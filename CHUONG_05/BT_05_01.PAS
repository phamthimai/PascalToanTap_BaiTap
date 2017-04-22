Program Tong_bac_ba;
Var
	k,n:Byte;
   s:Longint;
Begin
	Writeln('TINH TONG BAC 3 CUA N SO NGUYEN DAU TIEN');
   Writeln('----------------------------------------');
   Write('-Nhap so N= ');
   Readln(n);
   S:=0;
   For k:=1 To N Do
   	S:=S+(k*k*k);
   Writeln('+Tong bac 3 cua ',n,' so nguyen dau tien = ',s);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.