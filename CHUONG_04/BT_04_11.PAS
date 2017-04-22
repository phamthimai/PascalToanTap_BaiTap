Program So_chan_le;
Var
	so,du:Integer;
Begin
	Writeln('SO CHAN HAY SO LE');
   Writeln('-----------------');
   Write('-Nhap mot so nguyen bat ky: ');
   Readln(so);
   du:=so Mod 2;
   Case du Of
   	0:Begin
      	Writeln('-So : ',so);
         Writeln('-La so chan');
        End;
		1:Begin
      	Writeln('-So : ',so);
         Writeln('-La so le');
        End;
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.