Program Phep_nhan_so_hoc;
Var
	binhan,nhan:LongInt;
	donvi,chuc,tram:Integer;
Begin
	Writeln('TRINH BAY PHEP NHAN SO HOC');
   Writeln('-------------------------');
   Write('-Nhap so bi nhan : ');
   Readln(binhan);
   Write('-Nhap vao so nhan: ');
   Readln(nhan);
   donvi:=nhan MOD 10;
   chuc:=(nhan DIV 10) MOD 10;
   tram:=nhan DIV 100;
   Writeln(binhan:15);
   Writeln('x':9,nhan:6);
   Writeln('----':15);
   Writeln(donvi*binhan:15);
   Writeln(chuc*binhan:14);
   Writeln(tram*binhan:13);
   Writeln('-------':15);
   Writeln(binhan*nhan:15);
   Readln
End.