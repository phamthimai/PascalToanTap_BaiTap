Program Trung_Binh;
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
	Function Tbc(Nut1 : ConTro): Real;
   Var
   	Tong,SoNut : Integer;
   Begin
   	Tong := 0;
      SoNut := 0;
      Tam := Nut1;
      While Tam <> Nil Do
      	Begin
      		SoNut := SoNut + 1;
      		Tong := Tong + Tam^.So;
            Tam := Tam^.Next;
         End;
      Tbc := Tong / SoNut;
   End;
{-------------------------------------}
BEGIN
	ClrScr;
   Writeln('                TINH TRI TRUNG BINH CONG');
   Writeln('                ------------------------');
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
   Writeln('+Trung binh cong cua danh sach: ',Tbc(Nut1):6:1);
   Writeln;
   Write('         Bam <Enter> . . . ');
   Readln;
END.