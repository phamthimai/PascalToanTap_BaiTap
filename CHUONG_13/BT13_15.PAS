Program Ghep_Chuoi;
Uses Crt;
TYPE
	ConTro = ^Nut;
   Nut = RECORD
   	Kt   : Char;
      Next : ConTro;
      End;
VAR
	Dau1,Cuoi1 : ConTro;
   Dau2,Cuoi2 : ConTro;
   Tam        : ConTro;
   Ch         : Char;
   i          : Integer;
BEGIN
	ClrScr;
   Writeln('CHUOI THU NHAT');
   Writeln('--------------');
   Writeln;
   i := 0;
   Repeat
   	i := i + 1;
      New(Tam);
      Write('-Ky tu thu: ',i:2,' : ');
      Readln(Tam^.Kt);
      If i = 1 Then
      	Begin
         	Dau1 := Tam;
            Cuoi1 := Tam;
         End
      Else
      	Begin
         	Cuoi1^.Next := Tam;
            Cuoi1 := Tam;
         End;
      Write('Nhap nua khong ? (c/k) ');
      Readln(Ch);
   Until UpCase(Ch) = 'K';
   ClrScr;
   Writeln('CHUOI THU HAI');
   Writeln('--------------');
   Writeln;
   i := 0;
   Repeat
   	i := i + 1;
      New(Tam);
      Write('-Ky tu thu: ',i:2,' : ');
      Readln(Tam^.Kt);
      If i = 1 Then
      	Begin
         	Dau2  := Tam;
            Cuoi2 := Tam;
         End
      Else
      	Begin
         	Cuoi2^.Next := Tam;
            Cuoi2 := Tam;
         End;
      Write('Nhap nua khong ? (c/k) ');
      Readln(Ch);
   Until UpCase(Ch) = 'K';
   Cuoi1^.Next := Dau2;
   Cuoi2^.Next :=Nil;
   Writeln;
   Writeln(' KET QUA');
   Writeln('---------');
   Tam := Dau1;
   While Tam <> Nil Do
   	Begin
      	Write(Tam^.Kt);
         Tam := Tam^.Next;
      End;
   Writeln;
   Write('     Bam <Enter> . . . ');
   Readln
END.