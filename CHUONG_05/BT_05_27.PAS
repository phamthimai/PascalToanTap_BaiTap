Program Dan_so;
Var
	i:Byte;
   sodan:LongInt;
Begin
	Writeln('TINH DAN SO SAU 5 NAM');
   Writeln('---------------------');
   sodan:=5000000;
   Writeln('-So dan hien nay = ',sodan);
   Writeln('-Ty le tang dan so hang nam = 1.5%');
   Writeln;
   Writeln('So dan tang tung nam trong 5 nam toi la:');
   For i:=1 To 5 Do
   	Begin
      	sodan:=round(sodan * 1.015);
         Writeln('-Nam thu ',i,' so dan la: ',sodan,' nguoi');
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.