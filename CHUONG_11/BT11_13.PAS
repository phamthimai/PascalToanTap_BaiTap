Program Thu_vien;
CONST
	 Max = 100;
TYPE
	ThuVien = RECORD
   	TenSach : String[30];
      TacGia  : String[24];
      NamXb   : 1900..1999;
      NguoiMuon : String[24];
   End;
VAR
	Sach    : Array[1..Max] Of ThuVien;
   i, n, x : Integer;
Begin
	Writeln('QUAN LY SACH CUA THU VIEN');
   Writeln('-------------------------');
   Write('-So luong sach: ');
   Readln(n);
   For i := 1 To N Do
   	With Sach[i] Do
      	Begin
         	Write('+Ten sach : ');
            Readln(TenSach);
            Write('+Tac gia : ');
            Readln(TacGia);
            Write('+Nam Xuat ban : ');
            Readln(NamXb);
            Write('+Nguoi muon (Neu khong co ai muon thi bam <Enter>: ');
            Readln(NguoiMuon);
         End;
	Writeln;
   x := 0;
   For i := 1 To N Do
		With Sach[i] Do
      	Begin
         	Writeln('-Ten sach: ',TenSach);
            Writeln(' +Tac gia		: ',TacGia);
            Writeln(' +Nam xuat ban	: ',NamXb);
            If NguoiMuon <> ' ' Then
            	Begin
               	Writeln(' +Nguoi muon    : ',NguoiMuon);
                  x := x + 1;
               End;
         End;
   Writeln;
   Writeln('+So sach da cho muon: ',x,' quyen');
   Readln
End.
