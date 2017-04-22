Program Timp_Diem;
Type
	HocBa = RECORD
   	HoTen : String[24];
      Van,Toan,Ly,Hoa,Tb: Real;
      End;
   FileHB = File Of HocBa;
Var
	f : FileHB;
   Hs : HocBa;
   St : String;
   TimThay : Boolean;
Begin
	Writeln('CHUONG TRINH TIM DIEM THEO HO TEN');
   Writeln('---------------------------------');
   Writeln;
   Write('-Ho ten hoc sinh muon tim: ');
   Readln(St);
   Assign(f,'DIEM.DAT');
   Reset(f);
   Timthay := False;
   While Not EOF(f) Do
   	Begin
   		Read(f,Hs);
   			With Hs Do
      			If St = HoTen Then
      				Begin
         				TimThay := True;
            			Writeln(HoTen);
           				Writeln('-Diem Van : ',Van:5:2);
            			Writeln('-Diem Toan: ',Toan:5:2);
            			Writeln('-Diem Ly  : ',Ly:5:2);
            			Writeln('-Diem Hoa : ',Hoa:5:2);
            			Writeln('-Diem trung binh := ',Tb:5:2);
						End
      End;
   If Not Timthay Then
   	Writeln('Trong danh sach khong co hoc sinh: ',St);
   Close(f);
   Writeln;
   Write('   Bam <Enter>... ');
   Readln;
End.