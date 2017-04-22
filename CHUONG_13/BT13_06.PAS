Program Chen_So;
Uses Crt;
CONST
	N = 10;
TYPE
   ConTro = ^BanGhi;
   BanGhi = RECORD
   	So : Word;
      Next : ConTro;
      End;
   ViTri = 1..n;
VAR
	First,P,Tam : ConTro;
   V : ViTri;
{----------------------------------}
	Procedure KhoiDong;
   Begin
   	First := Nil;
   End;
{----------------------------------}
	Procedure TaoSo;
   Var
   	i : Byte;
   Begin
   	Randomize;
      For i := 1 To n Do
      	Begin
         	New(Tam);
            Tam^.So := Random($FFFF);
            Tam^.Next := Nil;
            If i = 1 Then
            	Begin
               	First := Tam;
                  P := Tam;
               End
            Else
            	Begin
               	P^.Next := Tam;
                  P := Tam;
               End;
         End;
   End;
{----------------------------------}
	Procedure Nhap;
   Begin
   	Repeat
      	Writeln;
      	Write('                -Cho biet vi tri muon chen: ');
         Readln(v);
      Until (v >= 1) And (v <=n);
      New(Tam);
      Writeln;
      Write('                    -Cho biet gia tri muon chen: ');
      Readln(Tam^.So);
   End;
{----------------------------------}
	Procedure Chen(v : ViTri);
   Var
   	i : Byte;
   Begin
   	If v = 1 Then
      	Begin
         	Tam^.Next := First;
            First := Tam;
         End
      Else
      	Begin
         	P := First;
            For i := 1 To v-2 Do
            	P := P^.Next;
            Tam^.Next := P^.Next;
				P^.Next := Tam;
         End;
   End;
{----------------------------------}
	Procedure LietKe;
   Begin
   	P := First;
      While P <> Nil Do
      	Begin
         	Write(P^.So : 7);
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
   Writeln('              NHAP VA CHEN SO VAO VI TRI CHI DINH');
   Writeln('               -----------------------------------');
   Writeln;
	KhoiDong;
   TaoSo;
   Writeln('	                10 SO TRONG DANH SACH LA: ');
   Writeln;
	LietKe;
   Writeln;
   Nhap;
   Writeln;
   Chen(v);
   Writeln;
   Writeln('                  DANH SACH SAU KHI CHEN');
   Writeln;
   LietKe;
   KetThuc;
   Writeln;
   Writeln;
   Write('                      Bam <Enter>... ');
   Readln
END.
