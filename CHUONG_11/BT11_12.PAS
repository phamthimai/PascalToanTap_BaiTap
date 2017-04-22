Program Ho_So;
CONST
	Max = 100;
TYPE
	Str = String[24];
   HoSo = RECORD
   	HoTen : Str;
      Tuoi  : Integer;
      Luong : Real;
   End;
   CongTy = Array[1..Max] Of HoSo;
VAR
	Hoten1, Hoten2      	      : Str;
   i,n,TuoiMax,TuoiMin 	      : Integer;
   LuongMax, LuongMin,LuongTb : Real;
   Nv							      : CongTy;
Begin
	Writeln('HO SO NHAN VIEN');
   Writeln('---------------');
   Writeln;
   Write('-Co bao nhieu nguoi: ');
   Readln(n);
   For i := 1 To N Do
   	With Nv[i] Do
      	Begin
         	Write('-Ho ten nhan vien thu: ',i:2,' la= ');
            Readln(HoTen);
            Write('-Tuoi      = ');
            Readln(Tuoi);
            Write('-Bac luong = ');
            Readln(Luong);
         End;
   TuoiMax  := Nv[1].Tuoi;
   TuoiMin  := Nv[1].Tuoi;
   LuongMax := Nv[1].Luong;
   LuongMin := Nv[1].Luong;
   HoTen1   := Nv[1].HoTen;
   HoTen2   := Nv[1].HoTen;
   LuongTb  := Nv[1].Luong;
   For i := 2 To N Do
   	Begin
      	If Nv[i].Tuoi > TuoiMax Then
         	TuoiMax := Nv[i].Tuoi
         Else
         	If Nv[i].Tuoi < TuoiMin Then
            	TuoiMin := Nv[i].Tuoi;
         If Nv[i].Luong > LuongMax Then
         	Begin
            	LuongMax := Nv[i].Luong;
               HoTen1 := Nv[i].HoTen;
            End
         Else
         	If Nv[i].Luong < LuongMin Then
            	Begin
               	LuongMin := Nv[i].Luong;
                  HoTen2 := Nv[i].HoTen;
               End;
         LuongTb := LuongTb + Nv[i].Luong;
      End;
   Writeln;
   Writeln('+Nhan vien co tuoi lon nhat la: ',TuoiMax);
	Writeln('+Nhan vien co tuoi nho nhat la: ',TuoiMin);
   Writeln('+Nhan vien: ',HoTen1,' co bac luong lon nhat: ',LuongMax:10:2);
	Writeln('+Nhan vien: ',HoTen2,' co bac luong nho nhat: ',LuongMin:10:2);
   Writeln('+Bac luong trung binh cua toan Cong Ty      : ',LuongTb/n:10:2);
   Readln
End.


