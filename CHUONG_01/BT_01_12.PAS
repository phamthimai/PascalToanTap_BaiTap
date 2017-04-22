Program Tinh_dien_tich;
Var
   cv,canh,s:Real;
Begin
	Writeln('TINH DIEN TICH LON NHAT CUA HINH CHU NHAT');
   Writeln('-----------------------------------------');
   Write('-Cho biet chu vi chu nhat : ');
   Readln(cv);
   canh:=cv / 4;
   s:=canh * canh;
   Writeln('-Chu vi hinh chu nhat = ',cv:10:2,' met');
   Writeln('-Dien tich lon nhat se= ',s:10:2,' met vuong' );
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.