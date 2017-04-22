Program Chen_Xoa;
Uses Crt;
TYPE
	ConTro = ^Nut;
   Nut = RECORD
   	So : Integer;
      Next : ConTro;
      End;
VAR
	Nut1,Tam : ConTro;
   So1 : Integer;
   Ch       : Char;
{-------------------------------------}
	Procedure Chen(Var Nut1 : ConTro; So1 : Integer);
   Begin
   	New(Tam);
      Tam^.So :=So1;
      Tam^.Next := Nut1;
      Nut1 := Tam;
      Writeln('Da chen xong, bam <Enter> ... ');
      Readln
   End;
{-------------------------------------}
	Procedure Xoa(Var Nut1 : ConTro; So1 : Integer);
   Var
   	NutTruoc : ConTro;
      TimThay : Boolean;
   Begin
      Tam := Nut1;
      NutTruoc := Nil;
      TimThay := False;
      While (Tam <> Nil) And (Not TimThay) Do
      	If Tam^.So = So1 Then
         	TimThay := True
         Else
         	Begin
            	NutTruoc := Tam;
               Tam := Tam^.Next;
            End;
         If TimThay Then
         	Begin
            	If NutTruoc = Nil Then
               	Nut1 := Tam^.Next
               Else
               	NutTruoc^.Next := Tam^.Next;
               Dispose(Tam);
               Write(' Da xoa xong, bam <Enter> ... ');
               Readln
            End
         Else
         	Begin
            	Write(' Khong tim thay, bam <Enter> ... ');
               Readln
            End;
   End;
{-------------------------------------}
   Procedure Xem(Var Nut1 : ConTro);
   Begin
   	Tam := Nut1;
      While Tam <> Nil Do
      Begin
   		Write(Tam^.So : 6);
      	Tam := Tam^.Next;
   	End;
      Writeln;
      Write('	Xem xong, bam <Enter> . . .');
      Readln
   End;
{-------------------------------------}
BEGIN
	ClrScr;
   Writeln('         NHAP, CHEN, XEM, XOA SO NGUYEN');
   Writeln('         ------------------------------');
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
   Repeat
   	ClrScr;
      Repeat
      	Writeln;
         Writeln('CHON CHUC NANG');
         Writeln('--------------');
      	Writeln('1-Chen ');
         Writeln('2-Xoa ');
         Writeln('3-Xem ');
         Writeln('4-Ket thuc ');
         Ch := Readkey;
      Until Ch in ['1'..'4'];
      	Case Ch Of
      		'1'	: Begin
         					Write('-So muon chen: ');
               	      Readln(So1);
                  	   Chen(Nut1,So1);
            	     End;
         	'2'	: Begin
         					Write('-So muon xoa: ');
                     	Readln(So1);
                     	Xoa(Nut1,So1);
                    End;
         	'3'	: Begin
         				Xem(Nut1);
         	        End;
         End;
	Until Ch = '4';
END.