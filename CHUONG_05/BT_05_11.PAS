Program Phep_chia;
Var
	chia,bichia,luu,thuong,du:Integer;
Begin
	Writeln('PHEP CHIA CHI LA PHEP TRU');
   Writeln('-------------------------');
   Write('-Nhap so bi chia: ');
   Readln(bichia);
   Write('-Nhap so chia: ');
   Readln(chia);
   luu:=bichia;
   thuong:=0;
   While bichia >=chia Do
   	Begin
			bichia:=bichia-chia;
         thuong:=thuong+1;
      End;
   du:=bichia;
   Writeln;
   Writeln('+Neu dem so ',luu,' chia cho so ',chia,' ket qua la: ');
   Writeln('  *So thuong = ',thuong:6);
   Writeln('  *So du     = ',du:6);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.