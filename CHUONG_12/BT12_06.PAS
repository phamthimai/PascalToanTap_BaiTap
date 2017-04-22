Program Sap_Xep_Theo_Ten;
TYPE
	ConTro = ^HoSo;
	HoSo = RECORD
   	HoLot : String[17];
      Ten   : String[7];
      Diem  : Real;
   End;

VAR
	a 			  : Array[1..50] Of HoSo;
   Tam        : ConTro;
   i,j,PhanTu : Integer;

BEGIN
	PhanTu := 0;
   New(Tam);
   With Tam^ Do
   Repeat
   	Write('-Nhap ho lot ( 0 de ket thu): ');
      Readln(HoLot);
      If HoLot <> '0' Then
      	Begin
         	Write('-Nhap ten  : ');
            Readln(Ten);
            Write('-Nhap diem : ');
            Readln(Diem);
            PhanTu := PhanTu + 1;
            a[PhanTu] := Tam^;
         End;
   Until HoLot = '0';

   For i := 1 To PhanTu - 1 Do
   	For j := PhanTu DownTo i+1 Do
      	If a[j].Ten[1] < a[j-1].Ten[1] Then
         	Begin
            	Tam^ := a[j];
               a[j] := a[j-1];
               a[j-1] := Tam^;
            End;
   Writeln;
   Writeln('------------------------------------');
   Writeln('|       HO VA TEN          |  DIEM |');
	Writeln('|--------------------------|-------|');
	For i := 1 To PhanTu Do
		With a[i] Do
			Writeln('|',HoLot:17,' ',Ten:7,' |',Diem:5:1,'  |');
   Writeln('------------------------------------');
   Readln
END.
