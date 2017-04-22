Program Dao_Danh_Sach;
Uses Crt;
TYPE
	ConTro = ^Nut;
   Nut = RECORD
   	So : Integer;
      Next : ConTro;
      End;
VAR
	Nut1,Tam1,Tam2 : ConTro;
   Ch       : Char;
BEGIN
	ClrScr;
	Writeln('                DAO NGUOC DANH SACH');
   Writeln('                -------------------');
   Nut1 := Nil;
   Repeat
   	New(Tam1);
      Write('-Nhap so: ');
      Readln(Tam1^.So);
      Tam1^.Next := Nut1;
      Nut1 := Tam1;
      Write('	Nhap nua khong ? (c/k) ');
      Readln(Ch);
   Until UpCase(Ch)= 'K';
	Tam1 := Nut1;
   Nut1 := Nil;
   Repeat
   	Tam2 := Tam1^.Next;
      Tam1^.Next := Nut1;
      Nut1 := Tam1;
      Tam1 := Tam2;
   Until Tam1 = Nil;
   Writeln('Sau khi dao: ');
   Tam1 := Nut1;
   While Tam1 <> Nil Do
   	Begin
      	Write(Tam1^.So:6);
         Tam1 := Tam1^.Next;
      End;
   Writeln;
   Write('     Bam <Enter> . . . ');
   Readln
END.