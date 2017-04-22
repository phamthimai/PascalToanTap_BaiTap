Program Nhap_Diem;
Type
	HocBa = RECORD
   	HoTen : String[24];
      Van,Toan,Ly,Hoa,Tb: Real;
      End;
   FileHB = File Of HocBa;
Var
	f : FileHB;
   HS : HocBa;
   q : Boolean;
Begin
	Writeln('CHUONG TRINH GHI DIEM VAO TAP TIN');
   Writeln('--------------------------------------');
   Writeln;
   Assign(f,'DIEM.DAT');
   ReWrite(f);
   q := True;
   While q Do
   	With HS Do
      	Begin
         	Write('-Ho ten hoc sinh,(<Enter> de ket thuc): ');
            Readln(HoTen);
            If HoTen = '' Then
					Q := False
				Else
					Begin
               	Write('-Diem Van : ');
                  Readln(Van);
                  Write('-Diem Toan: ');
                  Readln(Toan);
                  Write('-Diem Ly  : ');
                  Readln(Ly);
                  Write('-Diem Hoa : ');
                  Readln(Hoa);
                  Tb := ((Van*2)+(Toan*2)+Ly+Hoa)/6;
                  Write(f,HS);
					End;
         End;
End.