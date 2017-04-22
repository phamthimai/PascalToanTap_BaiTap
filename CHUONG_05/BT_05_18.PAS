Program thuaso;
Var
	n,i:Integer;
Begin
	Writeln('PHAN TICH N THANH TICH CAC THUA SO NGUYEN TO');
   Writeln('--------------------------------------------');
   Write('-Nhap so N= ');
   Readln(n);
   Repeat
   	i:=2;
      While (n Mod i <> 0) And (i < n ) Do
      	i:=i + 1;
      Write(i:4);
      n:=n Div i;
   Until n=1;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.