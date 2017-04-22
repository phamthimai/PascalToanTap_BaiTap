Program Mang_Bien_Dong;
Uses Crt;
TYPE
	ConTro = ^BanGhi;
   BanGhi = RECORD
   	HoTen : String[24];
      Next  : ConTro;
      End;
VAR
	First, Last, P : ConTro;
   HeapTop : Pointer;
   i : Byte;
   Ch : Char;
{-------------------------------}
	Procedure KhoiTao;
   Begin
   	First := Nil;
      Mark(HeapTop);
      i := 0;
      Writeln('NHAP DU LIEU');
      Writeln('Khong nhap nua thi bam <Enter> ...');
      Repeat
      	Inc(i);
         New(P);
         Write('-Ho ten nguoi thu: ',i:2,' : ');
         Readln(P^.HoTen);
         If First = Nil Then
         	First := P
         Else
         	Last^.Next := P;
         Last := P;
         Last^.Next := Nil;
      Until P^.HoTen = ''
   End;
{-------------------------------}
	Procedure LietKe;
   Var
   	Q : ConTro;
   Begin
   	Q := First;
      i := 0;
      While Q <> Nil Do
      	Begin
         	Inc(i);
            Writeln(i:2,' >..: ',Q^.HoTen:-24);
            Q := Q^.Next;
         End;
   End;
{-------------------------------}
	Procedure Xoa(N : Byte);
   Var
   	k : Byte;
      Q : ConTro;
   Begin
   	If N = 1 Then
      	First := First^.Next
      Else
      	Begin
         	Q := First;
            For k := 1 To N-2 Do
            	Q := Q^.Next;
               Q^.Next := Q^.Next^.Next;
         End;
   End;
{-------------------------------}
	Procedure Chen(N : Byte);
   Var
   	k : Byte;
      Q : ConTro;
   Begin
   	If N <= 0 Then
      	Exit;
         New(P);
         Write('-Ho Ten muon chen: ');
         Readln(P^.HoTen);
         If N = 1 Then
         	Begin
            	P^.Next := First;
               First := P;
            End
         Else
         	Begin
            	Q := First;
               For k := 1 To N-2 Do
               Q := Q^.Next;
               P^.Next := Q^.Next;
               Q^.Next := P;
            End;
   End;
{-------------------------------}
BEGIN
	ClrScr;
	Writeln('Bo nho hien gio la: ',MemAvail);
   KhoiTao;
   Writeln;
   Write(' Bam <Enter> de xem danh sach ... ');
   Readln;
   LietKe;
   Writeln;
   Writeln('Bo nho hien gio la: ',MemAvail);
   Write(' Bam <Enter> de xoa danh sach ... ');
   Readln;
   Repeat
   	Write('-Muon xoa ban ghi thu: ');
   	Readln(i);
   	Xoa(i);
   	LietKe;
      Write('+Co xoa nua khong ?(c/k) ');
      Readln(Ch);
   Until UpCase(Ch) = 'K';
   Writeln;
   Repeat
   	Write('-Muon chen ban ghi thu: ');
   	Readln(i);
   	Chen(i);
   	LietKe;
      Write('+Co chen nua khong ?(c/k) ');
      Readln(Ch);
   Until UpCase(Ch) = 'K';
   Release(HeapTop);
   Writeln;
   Writeln('Bo nho hien gio la: ',MemAvail);
   Writeln;
   Write('    Bam <Enter> . . . ');
   Readln
END.