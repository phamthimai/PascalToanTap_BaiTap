Program Van_Toan_Ly;
CONST
	Max = 50;
   Td1='|------------------------|-----|-----|------|';
   Td2=#124 +'     HO VA TEN          ' + #124 + ' VAN ' + #124+
      'TOAN ' + #124 + '  LY  |';

TYPE
  	HocSinh = RECORD
     	HoTen       : String[24];
      Van,Toan,Ly : Real;
   End;

VAR
   Hs  : Array[1..Max] Of HocSinh;
   i,n : 1..Max;
BEGIN
	Writeln('NHAP XUAT DU LIEU KIEU BAN GHI');
   Writeln('------------------------------');
   Writeln;
   Write('-Lop co bao nhieu hoc sinh: ');
   Readln(n);
   For i := 1 To N Do {Nhap du lieu}
   	With Hs[i] Do
      	Begin
         	Write('-Ho ten hoc sinh thu: ',i:2,' = ');
            Readln(HoTen);
            Write('-Diem Van : ');
            Readln(Van);
            Write('-Diem Toan: ');
				Readln(Toan);
				Write('-Diem Ly  : ');
				Readln(Ly);
         End;
   Writeln;
   Writeln('                  BANG DIEM');
   Writeln;
   Writeln(Td1);
   Writeln(Td2);
   Writeln(Td1);
	For i := 1 To N Do    {Xuat du lieu }
		With Hs[i] Do
			Writeln(#124,HoTen,#32:24 - Length(HoTen),
			        #124,Van  :5:1,
					  #124,Toan :5:1,
                 #124,Ly   :5:1,' |');
   Writeln(Td1);
   Readln
END.
