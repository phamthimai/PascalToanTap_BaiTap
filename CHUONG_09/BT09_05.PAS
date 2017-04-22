Program So_thu_Tu_ma_ASCII;
Var
	St:String;
   i:Byte;
Begin
	Writeln('SO THU TU MA ASCII CUA TUNG KY TU TRONG CHUOI');
   Writeln('          --------------------');
   Write('-Nhap chuoi: ');
   Readln(St);
   Writeln;
   For i:=1 To Length(St) Do
   	Write(' ',Ord(St[i]));
   Writeln;
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.