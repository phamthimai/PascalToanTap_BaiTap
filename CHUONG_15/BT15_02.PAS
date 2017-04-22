Program Ghep_Tap_Tin;
Uses Crt;
Var
	f1,f2,f3 : File Of Real;
   i : Integer;
   So : Real;
   Ch : Char;
Begin
	ClrScr;
	Writeln('NHAP SO LIEU CHO TAP1.DAT');
   Writeln('-------------------------');
   Writeln;
   Assign(f1,'TAP1.DAT');
   Rewrite(f1);
   i := 0;
   Repeat
   	i := i + 1;
      Write('-So thu: ',i:2,' = ');
      Readln(So);
      Write(f1,so);
      Write('	Nhap nua ? (c/k) ');
      Readln(Ch);
   Until Upcase(Ch) ='K';
   Close(f1);
   ClrScr;
   Writeln('NHAP SO LIEU CHO TAP2.DAT');
   Writeln('-------------------------');
   Writeln;
   Assign(f2,'TAP2.DAT');
   Rewrite(f2);
   i := 0;
   Repeat
   	i := i + 1;
      Write('-So thu: ',i:2,' = ');
      Readln(So);
      Write(f2,so);
      Write('	Nhap nua ? (c/k) ');
      Readln(Ch);
   Until Upcase(Ch) ='K';
   Close(f2);
   ClrScr;
   Writeln('GHEP TAP1 va TAP2 thanh TAP3');
   Writeln('----------------------------');
   Writeln;
   Assign(f3,'TAP3.DAT');
   Rewrite(f3);
   Reset(f1);
   Reset(f2);
   While NOT EOF(f1) Do
   	Begin
      	Read(f1,So);
         Write(f3,So);
      End;
   While NOT EOF(f2) Do
   	Begin
      	Read(f2,so);
         Write(f3,so);
      End;
   Reset(f3);
   While NOT EOF(f3) Do
   	Begin
      	Read(f3,So);
         Write(So :8:1);
      End;
   Close(f1);
   Close(f2);
   Close(f3);
   Writeln;
   Writeln;
   Write('	Da ghep xong, Bam <Enter>...');
   Readln;
End.