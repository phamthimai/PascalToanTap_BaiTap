Program Tao_Bien_Dong;
TYPE
	ConTro = ^BanGhi;
   BanGhi = RECORD
   	HoTen  : String[24];
      Tuoi   : Byte;
      DiaChi : String[30];
      Next   : ConTro;
   End;
VAR
	Newp    : ConTro;
   HeapTop : Pointer;
   i       : Integer;
Begin
	Writeln('TAO VA XOA CAC BIEN DONG');
   Writeln('------------------------');
   Writeln;
   Writeln('-Bo nho ban dau la: ',MemAvail,' bytes');
   Mark(HeapTop);
   Writeln('-Kich thuoc cua ban ghi la: ',Sizeof(BanGhi),' bytes');
   For i := 1 To 10 Do
   	Begin
      	New(Newp);
         Writeln('	+Sau khi tao bien thu: ',i:2,' bo nho con lai: ',MemAvail,' Bytes');
      End;
   Writeln;
   Writeln('-Bo nho bay gio la: ',MemAvail,' bytes');
   Writeln;
   Writeln('	Bam <Enter> de xoa cac bien dong');
   Readln;
   Release(HeapTop);
   Writeln;
   Writeln('-Bo nho bay gio lai la: ',MemAvail,' bytes');
   Writeln;
   Writeln('	Bam <Enter> de ket thuc');
   Readln
End.