Program Tao_Danh_Sach;
Uses Crt;
TYPE
	ConTro = ^DanhSach;
   DanhSach = RECORD
   	So : Word;
      Next : ConTro;
      End;

VAR
	First,P,Tam : ConTro;
{----------------------------------}
	Procedure KhoiDong;
   Begin
   	First := Nil;
   End;
{----------------------------------}
	Procedure Nhap;
   Var
   	i : Word;
   Begin
   	Writeln('NHAP CAC SO');
      Writeln('Neu khong nhap, go so 0');
      i :=0;
      Repeat
      	New(Tam);
         Inc(i);
         Write('-Nhap so thu: ',i:2,' = ');
         Readln(Tam^.So);
         Tam^.Next := Nil;
         If Tam^.So <> 0 Then
         	If First = Nil Then
            	Begin
               	First := Tam;
                  P := Tam;
               End
            Else
            	Begin
               	P^.Next := Tam;
                  P := Tam;
               End;
      Until Tam^.So =0;
   End;
{----------------------------------}
	Procedure LietKe;
   Begin
   	Writeln('CAC SO DA NHAP');
      Writeln('--------------');
      Writeln;
      P := First;
      While P <> Nil Do
      	Begin
         	Write(P^.So:8);
            P := P^.Next;
         End;
   End;
{----------------------------------}
	Procedure KetThuc;
   Begin
   	If First <> Nil Then
      	Release(First);
   End;
{----------------------------------}
BEGIN
	ClrScr;
   Writeln('TAO DANH SACH CAC SO NGUYEN');
   Writeln('---------------------------');
   Writeln;
	KhoiDong;
   Nhap;
   LietKe;
   KetThuc;
   Writeln;
   Write('    Bam <Enter> . . . ');
   Readln;
END.