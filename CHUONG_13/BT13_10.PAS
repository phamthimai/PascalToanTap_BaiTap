Program Dem_nut;
Uses Crt;
TYPE
	ConTro = ^Nut;
   Nut = RECORD
   	So : Integer;
      Next : ConTro;
      End;
VAR
	Nut1,Tam : ConTro;
   Ch       : Char;
{-------------------------------------}
	Function SoNut(Nut1 : ConTro): Integer;
   Var
   	sn : Integer;
   Begin
   	sn := 0;
      Tam := Nut1;
      While Tam <> Nil Do
      	Begin
         	sn := sn + 1;
            Tam := Tam^.Next;
         End;
      SoNut :=sn;
   End;
{-------------------------------------}
BEGIN
	ClrScr;
   Writeln(' DEM SO PHAN TU (NUT) CUA DANH SACH');
   Writeln('-----------------------------------');
   Writeln;
   Nut1 := Nil;
   Repeat
   	New(Tam);
      Write('-Nhap so: ');
      Readln(Tam^.So);
      Tam^.Next := Nut1;
      Nut1 := Tam;
      Write('	Nhap nua khong ? (c/k) ');
      Readln(Ch);
   Until UpCase(Ch)= 'K';
   Writeln('+So nut cua danh sach: ',Sonut(Nut1));
   Writeln;
   Write('      Bam <Enter> . . . ');
   Readln;
END.