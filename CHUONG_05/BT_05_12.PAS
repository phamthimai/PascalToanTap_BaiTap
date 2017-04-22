Program So_nguyen_to;
Var
	n,i:Integer;
Begin
	Writeln('SO VUA NHAP CO PHAI LA SO NGUYEN TO ?');
   Writeln('-------------------------------------');
   Write('-Nhap mot so : ');
   Readln(n);
   While n > 1 Do
   	Begin
      	i:=2;
         While (n Mod i <> 0) Do
         	i:=i+1;
            if i=n Then
            	Writeln('-So ',n,' la so nguyen to')
            Else
            	Writeln('-So ',n,' khong phai la so nguyen to');
            Write('-Nhap mot so (so 0 de ngung): ');
			   Readln(n);
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.