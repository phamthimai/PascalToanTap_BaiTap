Program Sap_Xep_Tuoi;
TYPE
	Ngay_Sinh = RECORD
   	Ngay,Thang,Nam : Integer;
   End;

   CongTy = RECORD
   	HoTen : String[24];
      NgaySinh : Ngay_Sinh;
   End;
VAR
	i,j,n : Integer;
   Tam   : CongTy;
   Nv    : Array[1..100] Of CongTy;
Begin
	Writeln('SAP XEP THEO TUOI');
   Writeln('-----------------');
   Writeln;
   Write('-So nhan vien: ');
   Readln(n);
   For i := 1 To N Do
   	With Nv[i] Do
      	Begin
         	Write('-Ho ten nhan vien thu: ',i,' la: ');
            Readln(HoTen);
            Writeln('-Nhap ngay, thang, nam sinh');
            With NgaySinh Do
            	Begin
						Write('	+Ngay : ');
                  Readln(ngay);
                  Write('	+Thang: ');
                  Readln(Thang);
                  Write('	+Nam  : ');
                  Readln(Nam);
               End;
         End;
   For i := 1 To N-1 Do
		For j := 1 To N - i Do
			If (Nv[j].Ngaysinh.Nam > Nv[j+1].NgaySinh.Nam) OR
            ((Nv[j].Ngaysinh.Nam = Nv[j+1].NgaySinh.Nam) AND
             (Nv[j].Ngaysinh.Thang > Nv[j+1].NgaySinh.Thang)) OR
            ((Nv[j].Ngaysinh.Nam = Nv[j+1].NgaySinh.Nam) AND
             (Nv[j].Ngaysinh.Thang = Nv[j+1].NgaySinh.Thang) AND
             (Nv[j].Ngaysinh.Ngay > Nv[j+1].NgaySinh.Ngay)) Then
				 Begin
             	Tam := Nv[j];
               Nv[j] := Nv[j+1];
               Nv[j+1] := Tam;
				 End;
   Writeln;
   Writeln('DANH SACH NHAN VIEN XEP THEO TUOI GIAM DAN');
   Writeln;
   For i := 1 To N Do
   	With Nv[i] Do
      	Writeln('-',Hoten:24,' ,sinh ngay: ',NgaySinh.Ngay,'/',NgaySinh.Thang,'/',NgaySinh.Nam);
   Readln
End.