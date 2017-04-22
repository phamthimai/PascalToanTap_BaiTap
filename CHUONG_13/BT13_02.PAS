Program Hoan_Vi_Chuoi;
Uses Crt;
VAR
	Chuoi1,Chuoi2,Tam :^String;
Begin
	ClrScr;
   Writeln('HOAN VI 2 CON TRO THAY CHO HOAN VI NOI DUNG');
   Writeln('-------------------------------------------');
   Writeln;
	New(Chuoi1);
   New(Chuoi2);
   Chuoi1^ := 'Giao trinh Turbo Pascal 7.0';
   Chuoi2^ := 'Giao trinh FoxPro 2.6';
   Writeln;
   Writeln('NOI DUNG BAN DAU CUA 2 CHUOI');
   Writeln('----------------------------');
   Writeln;
   Writeln('-Chuoi thu nhat: ',Chuoi1^);
   Writeln('-Chuoi thu hai : ',Chuoi2^);
   Writeln;
   Writeln('NOI DUNG SAU KHI HOAN VI 2 CON TRO');
   Writeln('----------------------------------');
   Writeln;
   Tam := Chuoi1;
   Chuoi1 := Chuoi2;
   Chuoi2 := Tam;
   Writeln('-Chuoi thu nhat: ',Chuoi1^);
   Writeln('-Chuoi thu hai : ',Chuoi2^);
   Dispose(Chuoi1);
   Dispose(Chuoi2);
   Writeln;
   Write('     Bam <Enter> . . . ');
   Readln;
End.