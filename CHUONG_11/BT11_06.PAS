Program TT_Doi_Bong;
	CONST
		Max = 23;
   TYPE
   	ThanhTich=RECORD
      	HoTen:String[24];
			Tuoi,BanThang:Integer;
		END;
   DoiBong = Array[1..Max] Of ThanhTich;
   VAR
   	i,n,TuoiCao,TuoiThap,nam:Integer;
      Ten1,Ten2,TenDoi:String[20];
      CauThu:DoiBong;
      ThangNhieu,ThangIt:Integer;
      Tb:Real;
BEGIN
	Writeln('THANH TICH CUA DOI BONG DA');
   Writeln('--------------------------');
   Write('-Thanh tich nam nao: ');
   Readln(Nam);
   Write('-Ten doi bong: ');
   Readln(TenDoi);
   Write('-So cau thu: ');
   Readln(n);
   For i:=1 To n Do
   	With Cauthu[i] Do
      	Begin
         	Write('-Ho va ten cau thu thu: ',i:2,' la: ');
            Readln(HoTen);
            Write('-Tuoi cua cau thu thu: ',i:2,' la: ');
            Readln(Tuoi);
            Write('-So ban thang cua cau thu thu: ',i:2,' la: ');
            Readln(BanThang);
         End;
   TuoiCao:=CauThu[1].Tuoi;
   Tuoithap:=CauThu[1].Tuoi;
   ThangNhieu:=Cauthu[1].Banthang;
   ThangIt:=CauThu[1].BanThang;
   Ten1:=CauThu[1].HoTen;
   Ten2:=CauThu[1].HoTen;
   Tb:=CauThu[1].BanThang;
   For i:=2 To n Do
   	Begin
      	If CauThu[i].Tuoi > TuoiCao Then
         	TuoiCao:=CauThu[i].Tuoi
         Else
         	If CauThu[i].Tuoi < TuoiThap Then
            	Tuoithap :=CauThu[i].Tuoi;
         If CauThu[i].BanThang > ThangNhieu Then
				Begin
				  	ThangNhieu:=Cauthu[i].BanThang;
                  Ten1:=CauThu[i].HoTen;
            End
         Else
           	If CauThu[i].BanThang < ThangIt Then
              	Begin
                 	ThangIt:= CauThu[i].BanThang;
                  Ten2:=CauThu[i].HoTen;
               End;
    		Tb:=Tb+CauThu[i].BanThang;
      End;
   Writeln;
   Writeln('THANH TICH NAM: ',nam);
   Writeln('Cua doi bong: ',TenDoi);
   Writeln('-----------------------');
   Writeln;
   Writeln('-Cau thu: ',Ten1,' co tuoi lon nhat: ',TuoiCao);
   Writeln('-Cau thu: ',Ten2,' co tuoi nho nhat: ',TuoiThap);
   Writeln;
   Writeln('-Cau thu: ',Ten1,' Co ban thang nhieu nhat: ',ThangNhieu);
   Writeln('-Cau thu: ',Ten2,' Co ban thang it    nhat: ',ThangIt);
   Writeln;
   Writeln('-So ban thang trung binh cua toan doi: ',Round(Tb/n));
   Readln
END.
