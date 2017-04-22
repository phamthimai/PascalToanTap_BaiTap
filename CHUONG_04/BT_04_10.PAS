Program Diem_Trung_binh;
Const
	MucDiem = 5;
   DiemDat     =20;
   DiemLoai    =2;
Var
	Ten:String[24];
	Van,Toan,Hoa,Ngoaingu,Tongdiem:Real;
   Dat,Loai,Hocdeu:Boolean;
Begin
	Writeln('TINH DIEM TRUNG BINH VA NHAN XET');
   Writeln('--------------------------------');
   Write('-Cho biet ho ten: ');
   Readln(Ten);
   Write('-Cho biet diem mon Van : ');
   Readln(Van);
   Write('-Cho biet diem mon Toan: ');
   Readln(Toan);
   Write('-Cho biet diem mon Hoa: ');
   Readln(Hoa);
   Write('-Cho biet diem mon Ngoai ngu: ');
   Readln(Ngoaingu);
   Tongdiem:=Van+Toan+Hoa+Ngoaingu;
   Dat:=(Tongdiem >=DiemDat);
   Loai:=(Van < DiemLoai) Or (Toan < DiemLoai)
		Or (Hoa < DiemLoai) Or (Ngoaingu < DiemLoai);
	Hocdeu:=(Van >MucDiem) And (Toan > Mucdiem)
   	And (Hoa > Mucdiem) And (Toan > Mucdiem);
   Writeln('+Hoc sinh: ',ten);
   Write('+Tong so diem: ',Tongdiem:5:2);
   If Dat And (Not Loai) Then
   	Begin
        	Write('  Duoc len lop');
        	If hocdeu Then
         	Write('  Hoc deu cac mon')
         Else
            Write('  Hoc chua deu cac mon');
      End
    Else
    	Write('  Khong duoc len lop');
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.