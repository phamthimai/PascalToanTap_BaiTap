Program Diem_Trung_binh;
Var
	Ten:String[24];
	Van,Toan,Ly,tb:Real;
Begin
	Writeln('TINH DIEM TRUNG BINH VA XEP HANG');
   Writeln('--------------------------------');
   Write('-Cho biet ho ten: ');
   Readln(Ten);
   Write('-Cho biet diem mon Van: ');
   Readln(Van);
   Write('-Cho biet diem mon Toan: ');
   Readln(Toan);
   Write('-Cho biet diem mon Ly: ');
   Readln(Ly);
   Tb:=((Van*2)+(Toan*2)+ly)/5;
   If tb < 5 Then
   	Begin
      	Writeln('+Hoc sinh: ',Ten);
         Writeln('+Diem trung binh = ',Tb:4:1);
         Writeln('+Xep hang: Hoc luc kem');
      End
   Else if Tb < 7 Then
   	Begin
			Writeln('+Hoc sinh: ',Ten);
         Writeln('+Diem trung binh = ',Tb:4:1);
         Writeln('+Xep hang: Hoc luc trung binh');
      End
   Else if Tb < 9 Then
   	Begin
      	Writeln('+Hoc sinh: ',Ten);
         Writeln('+Diem trung binh = ',Tb:4:1);
         Writeln('+Xep hang: Hoc luc Kha');
      End
      Else
      	Begin
      		Writeln('+Hoc sinh: ',Ten);
            Writeln('+Diem trung binh = ',Tb:4:1);
         	Writeln('+Xep hang: Hoc luc Gioi');
         End;
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.