Program Hoa_Don;
CONST
	Max = 100;
TYPE
	HoaDon = RECORD
   	NguoiMua : String[24];
      TenHang  : String[10];
      DonGia   : Real;
      SoLuong  : Integer;
   End;

VAR
	a   : Array[1..Max] Of HoaDon;
   DsTenHang : Array[1..Max] Of String[10];
   Tam       : HoaDon;
   Spt, SoTenHang, i, j : Integer;
   Tong                 : Real;
   KiemTra              : Boolean;

BEGIN
	Writeln('HOA DON BAN HANG');
   Writeln('----------------');
   Writeln;
   Spt := 0;
   With Tam do
   	Repeat
      	Write('-Ten nguoi mua (go 0 de thoat): ');
         Readln(NguoiMua);
         If NguoiMua <> '0' Then
         	Begin
            	Write('-Ten hang: ');
               Readln(TenHang);
               Write('-Don gia : ');
               Readln(DonGia);
               Write('-So luong: ');
               Readln(SoLuong);
               Spt := Spt + 1;
               a[Spt] := Tam;
            End;
      Until NguoiMua = '0';
   SoTenHang := 0;
   For i := 1 To Spt Do
   	Begin
      	KiemTra :=False;
         For j := 1 To SoTenHang Do
         	If DsTenHang[j] = a[i].TenHang Then
            	KiemTra := True;
            If NOT KiemTra Then
            	Begin
               	SoTenHang :=SoTenHang + 1;
                  DsTenHang[SoTenHang] := a[i].TenHang;
               End;
      End;
   Writeln;
   For i := 1 To SoTenHang Do
   	Begin
      	Tong := 0;
         For j := 1 To Spt Do
         	With a[j] Do
            	If TenHang = DsTenHang[i] Then
               	Tong := Tong + (DonGia * Soluong);
               Writeln('  +Tong so tien mua: ',DsTenHang[i]:10,' = ',tong:10:2);
      End;
   Readln
END.