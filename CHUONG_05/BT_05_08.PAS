Program Tam_giac_rong;
Var
	cao,i:Byte;
Begin
	Writeln('VE TAM GIAC RONG');
   Writeln('----------------');
   Write('-Nhap chieu cao cua tam giac: ');
   Readln(cao);
   Writeln('*':cao);
   For i:=2 To cao-1 Do
   	Writeln('*':cao-i+1,'*':2*i-2);
   For i:=1 To 2*cao-1 Do
   	Write('*');
	Writeln;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.