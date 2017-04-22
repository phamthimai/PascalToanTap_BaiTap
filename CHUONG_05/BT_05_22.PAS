Program So_nguyen_to;
Var
	n,i:Integer;
Begin
	Writeln('SO NGUYEN TO');
   Writeln('------------');
   Repeat
   	Write('-Nhap so N (bam so 0 de ngung)= ');
      Readln(n);
      Writeln;
      i:=1;
      If n > 1 Then
      	Repeat
         	i:= i +1;
         Until (n Mod i = 0);
      If i= n Then
      	Writeln('     +So ',n,' la so nguyen to')
      Else
      	Writeln('     +So ',n, ' khong phai la so nguyen to');
   Writeln;
   Until n=0;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln;
End.