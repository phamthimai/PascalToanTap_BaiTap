Program Tinh_Diem;
TYPE
	ConTro = ^BanGhi;
	BanGhi = RECORD
		HoTen   : String[24];
		Tuoi    : Byte;
		Diem    : Real;
	End;
VAR
	Newp       : ConTro;
	i,n  		  : Integer;
   d,tong,tb  :Real;
Begin
	Writeln('TINH DIEM TRUNG BINH CUA LOP');
   Writeln('----------------------------');
   Writeln;
   Tong := 0.0;
   Write('-Lop co bao nhieu nguoi: ');
   Readln(n);
   Writeln;
   For i := 1 To N Do
   	Begin
      	New(Newp);
         With Newp^ Do
         	Begin
      			Write('	+Ho ten nguoi thu: ',i:2,' la: ');
         		Readln(HoTen);
         		Write('	+Tuoi : ');
         		Readln(Tuoi);
         		Write('	+Diem : ');
         		Readln(Diem);
               d := Diem;
         		Tong :=Tong + d;
            End;
      	Tb := tong / n;
      End;
   Writeln('-Diem trung binh cua lop la: ',Tb:5:2);
   Readln
End.