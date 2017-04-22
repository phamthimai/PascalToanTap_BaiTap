Program Tong_nghich_dao;
Var
	n,i:Integer;
   s:Real;
Begin
	Writeln('TINH TONG NGHICH DAO N SO NGUYEN DAU TIEN');
   Writeln('-----------------------------------------');
   Write('-Nhap so N= ');
   Readln(n);
   S:=0;
   For i:= 1 To N Do
   	S:=S+(1/i);
   Writeln;
   Writeln('+Tong nghich dao cua ',n,' so nguyen dau tien= ',S:0:2);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.