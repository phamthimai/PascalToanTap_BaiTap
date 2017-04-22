Program Tach_so;
Var
	n:Integer;
   x,p:Real;
Begin
	Writeln('TACH MOT SO NGUYEN THANH 2 SO');
   Writeln('-----------------------------');
   Write('-Nhap mot so: ');
   Readln(n);
   x:=2*n/3;
   Write('+Con so: ',n,' tach thanh so: ',x:6:2);
   Writeln(' va so: ',(n-x):6:2);
	Readln
End.