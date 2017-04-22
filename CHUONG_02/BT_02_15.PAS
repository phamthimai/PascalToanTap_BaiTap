Program Gia_hang_hoa;
Var
	f,a,pe,pc,r:Real;
   n,y,t:Integer;
Begin
	Writeln('TINH GIA HANG HOA');
   Writeln('-----------------');
   Writeln;
   Write('-So tien vay = ');
   Readln(a);
   Write('-Lai suat vay Ngan hang = ');
   Readln(r);
   Write('-Thoi gian san xuat= ');
   Readln(y);
   Write('-So san pham thu duoc   = ');
   Readln(n);
   Write('-Thoi gian luu kho = ');
   Readln(t);
   Write('-Phi ton luu kho = ');
   Readln(f);
   pe:=a/n;
   pc:=pe * (1 + r * (t + y) / 1200) + f * t;
   Writeln('*Gia xuat xuong = ',pe:10:2,' dong');
   Writeln('*Gia ban de hoa von la : ',pc:10:2,' dong');
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.