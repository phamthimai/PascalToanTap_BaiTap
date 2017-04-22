Program Thu_Vien;
Uses Crt;
TYPE
	ConTro = ^ThuVien;
	ThuVien = RECORD
   	TenSach  : String[30];
      TacGia   : String[24];
      Namxb    : Byte;
      NguoiMuon: String[24];
      Next     : ConTro;
   End;
VAR
   First,Last,Newp       : ConTro;
   ds,dm : Integer;
   Ch : Char;
   HeapTop : ^Integer;
BEGIN
	ClrScr;
   GotoXY(5,25);
   Write('Bam <Enter> de tiep tuc, bam <Esc> de thoat');
   Window(1,1,80,24);
	Writeln('QUAN LY THU VIEN');
   Writeln('----------------');
   Writeln;
   ds := 0;
   dm := 0;
   First := Nil;
   Mark(Heaptop);
  	Repeat
   	New(Newp);
      	With Newp^ Do
         	Begin
      			Write('-Ten sach : ');
         		Readln(TenSach);
         		If TenSach <> '' Then
         			Begin
            			ds := ds + 1;
            			Write('-Tac Gia: ');
               		Readln(TacGia);
               		Write('-Nam xuat ban : ');
               		Readln(Namxb);
               		Write('-Nguoi muon (Khong co ai muon thi bam <Enter>: ');
               		Readln(NguoiMuon);
               		If NguoiMuon <> '' Then
               			dm := dm + 1;
            		End;
            End;
      If First = Nil Then
      	First := Newp
      Else
      	Last^.Next := Newp;
         Last :=Newp;
         Last^.Next := Nil;
      Ch := ReadKey;
   Until Ch = #27;
   ClrScr;
   Writeln('QUAN LY THU VIEN');
   Writeln('----------------');
   While First <> Nil Do
   	With First^ Do
      	Begin
         	Writeln('-Ten sach: ',TenSach);
            Writeln('-Tac gia : ',TacGia);
            Writeln('-Nam Xuat ban: ',Namxb);
            Writeln('-Nguoi muon : ',NguoiMuon);
            First := Next;
         End;
   Writeln;
   Writeln('+Tong so sach: ',Ds);
   Writeln('+So sach cho muon: ',Dm);
   Release(HeapTop);
   Writeln;
   Write('	Bam <Esc> de thoat');
   Readln
END.