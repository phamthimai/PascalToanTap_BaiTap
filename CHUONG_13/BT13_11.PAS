Program Dem_Nut_Cuoi;
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
	Function DemNutCuoi(Nut1 : ConTro): ConTro;
   Begin
      Tam := Nut1;
      While Tam^.Next <> Nil Do
      	Tam:= Tam^.Next;
      DemNutCuoi := Tam;
   End;
{-------------------------------------}
BEGIN
	ClrScr;
   Writeln('TIM DIA CHI NUT CUOI');
   Writeln('--------------------');
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
   Writeln('+So o nut cuoi cua danh sach: ',DemNutCuoi(Nut1)^.So);
   Writeln;
   Write('       Bam <Enter> . . . ');
   Readln;
END.