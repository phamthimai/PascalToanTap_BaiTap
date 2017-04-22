Program Tinh_tien;
Var
	v:Integer;
   l,n:Real;
Begin
	Writeln('TINH TIEN GUI NGAN HANG');
   Writeln('-------------------');
   Writeln;
   Write('-So tien gui = ');
   Readln(v);
   Write('-Lai suat    = ');
   Readln(l);
   n:=(v * (1 + (l/100)));
   Writeln('*Neu gui: ',v,' dong, lai suat 1 nam= ',l:4:2,' %');
   Writeln('*So tien lai trong 1 nam = ',Round(v*l/100),' dong');
   Writeln('*Von + Lai trong 1 nam   = ',Round(n),' dong');
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.