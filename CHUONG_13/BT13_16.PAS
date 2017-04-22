Program Mang_Con_Tro_Hai_Chieu;
Uses Crt;
TYPE
	ConTro = ^BanGhi;
   BanGhi = RECORD
   	HoTen : String[24];
      Pre, Next : ConTro;
      End;

VAR
	First,Last,P : ConTro;
   i : Byte;
   Heaptop : Pointer;
{----------------------------------}
	Procedure KhoiTao;
   Begin
   	First := Nil;
      Mark(HeapTop);
      i := 0;
      Repeat
      	Inc(i);
         New(P);
         Write('-(Khong nhap,bam <Enter>). Ho ten nguoi thu: ',i:2,' : ');
         Readln(P^.HoTen);
         If First = Nil Then
         	Begin
            	First := P;
               First^.Pre := Nil
            End
         Else
         	Begin
            	Last^.Next := P;
               P^.Pre := Last;
            End;
         Last := P;
         Last^.Next := Nil
      Until P^.HoTen ='';
   End;
{----------------------------------}
	Procedure DuyetXuong;
   Var
   	P : ConTro;
      i : Byte;
   Begin
   	P := First;
      i := 0;
      While P <> Nil Do
      	Begin
         	Inc(i);
            Writeln(i:2,'>... : ',P^.HoTen: -28);
            P := P^.Next;
         End;
   End;
{----------------------------------}
	Procedure DuyetLen;
   Var
   	P : ConTro;
      i : Byte;
   Begin
   	P := Last;
      i := 0;
      While P <> Nil Do
      	Begin
         	Inc(i);
            Writeln(i:2,'>... : ',P^.HoTen: -28);
            P := P^.Pre;
         End;
   End;
{----------------------------------}
BEGIN
	ClrScr;
   Writeln('DUYET DANH SACH THEO 2 CHIEU');
   Writeln('Tu dau den cuoi danh sach');
   Writeln('Tu cuoi len dau danh sach');
   Writeln('-------------------------');
   Writeln;
	KhoiTao;
   Writeln;
   Writeln(' Bam <Enter> de xem tu tren xuong duoi danh sach');
   Readln;
   ClrScr;
   DuyetXuong;
   Writeln;
   Writeln(' Bam <Enter> de xem tu duoi len tren danh sach');
   Readln;
   DuyetLen;
   Writeln;
   Write(' Bam <Enter> de ket thuc ');
   Readln;
   Release(HeapTop);
END.