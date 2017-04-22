Program Sap_Xep_Tuoi_Giam;
CONST
	Max = 50;
   Td1 = '|========================|============|';
   Td2 = #124+'      HO VA TEN         '+#124 + '  NAM SINH  |';
   Td3 = '|------------------------|------------|';

TYPE
	HoSo = RECORD
   	HoTen : String[24];
      Ngay  : 1..31;
      Thang : 1..12;
      Nam   : 1900..2000;
   End;
VAR
   Nhanvien :Array[1..Max] Of HoSo;
   i,n  : 1..Max;
   Tam  : HoSo;
   Kthuc: Boolean;

BEGIN
	Writeln('SAP XEP BAN GHI THEO GIAI THUAT NOI BOT');
   Writeln('---------------------------------------');
   Writeln;
   Write('-Co bao nhieu nguoi: ');
   Readln(n);
   For i := 1 to N Do   { Nhap du lieu }
   	With Nhanvien[i] Do
      	Begin
         	Write('-Ho va ten nguoi thu: ',i:2,' = ');
            Readln(HoTen);
            Write('-Ngay sinh: ');
            Readln(Ngay);
            Write('-Thang    : ');
            Readln(Thang);
            Write('-Nam      : ');
            Readln(Nam);
         End;
   Repeat          { Sap xep ban ghi}
   	KThuc := True;
      For i := 1 To N - 1 Do
      	If (Nhanvien[i].Nam > Nhanvien[i+1].Nam)
				OR ((Nhanvien[i].Nam = Nhanvien[i+1].Nam) AND
					 (Nhanvien[i].Thang > Nhanvien[i+1].Thang))
				OR ((Nhanvien[i].Nam = Nhanvien[i+1].Nam) AND
					 (Nhanvien[i].Thang = Nhanvien[i+1].Thang) AND
                (Nhanvien[i].Ngay > Nhanvien[i+1].Ngay)) Then
            Begin
            	Tam:=Nhanvien[i];
               Nhanvien[i] := Nhanvien[i+1];
               Nhanvien[i+1] := Tam;
               KThuc :=False;
            End;
   Until KThuc;
   Writeln;
   Writeln('          SAP XEP THEO TUOI');
   Writeln;
   Writeln(Td1);
   Writeln(Td2);
   Writeln(Td3);
   For i := 1 to N Do
   	With Nhanvien[i] Do
      	Writeln(#124, HoTen, #32 :24 - Length(HoTen),
         		#124,Ngay,' / ',Thang,' / ',nam, #124);
   Writeln(Td1);
   Readln
END.
