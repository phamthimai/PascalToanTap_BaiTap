Program Chen_Xoa_So;
Uses Crt;
CONST
	N = 20;
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
            Tam^.So := Random(10);
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
	Procedure XoaSo;
   	Procedure Xoa5;

      Begin
      	Tam := P;
         If P = First Then
         	Begin
            	First := P^.Next;
               P := P^.Next;
            End
         Else
         	Begin
            	P := First;
               While P^.Next <> Tam Do
               	P := P^.Next;
               P^.Next := Tam^.Next;
               P := P^.Next;
            End;
         Dispose(Tam);
      End;
    Begin
    	P := First;
      While P <> Nil Do
      	Begin
         	If P^.So < 5 Then
            	Xoa5
            Else
            P := P^.Next
         End;
    End;
{----------------------------------}
	Procedure LietKe;
   Begin
   	P := First;
      While P <> Nil Do
      	Begin
         	Write(P^.So : 5);
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
   Writeln('                         XOA CA SO NHO HON 5');
   Writeln('                          -------------------');
	KhoiDong;
   TaoSo;
   Writeln;
   Writeln('	                   20 SO TRONG DANH SACH LA: ');
   Writeln;
	LietKe;
   Writeln;
   XoaSo;
   Writeln;
   Writeln('                         DANH SACH CAC SO >= 5');
   Writeln;
   LietKe;
   KetThuc;
   Writeln;
   Writeln;
   Write('                               Bam <Enter>... ');
   Readln
END.
