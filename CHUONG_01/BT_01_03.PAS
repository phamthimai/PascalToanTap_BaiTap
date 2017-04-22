Program Phep_Tru;
Var
	so1,so2,hieu :Integer;

Begin
	Writeln(' CHUONG TRINH THUC HIEN PHEP TRU SO HOC');
   Writeln('         co toi da 4 ky so');
	Write('-Nhap so thu nhat = ');
	Readln(so1);
	Write('-Nhap so thu hai  = ');
   Readln(so2);
   hieu:= so1-so2;
	Writeln;
   Writeln;
   Writeln('-------------------------------');
   Writeln;
   Writeln('     ',so1:4);
   Writeln('  -  ',so2:4);
   Writeln('    -----');
   Writeln('  = ',hieu:5);
	Readln
End.