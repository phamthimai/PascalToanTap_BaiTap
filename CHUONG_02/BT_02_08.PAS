Program Diem_trung_binh;
Var
	Ten:String[24];
	Van,Toan,Ly,Sinh,NgoaiNgu,Tb:Real;
Begin
	Writeln('DIEM TRUNG BINH');
   Writeln('-------------');
   Write('-Cho biet ho ten: ');
   Readln(ten);
   Write('-Cho biet diem mon Van: ');
   Readln(Van);
   Write('-Cho biet diem mon Toan: ');
   Readln(Toan);
   Write('-Cho biet diem mon Ly: ');
   Readln(Ly);
   Write('-Cho biet diem mon Sinh vat: ');
   Readln(Sinh);
   Write('-Cho biet diem mon Ngoai ngu: ');
   Readln(NgoaiNgu);
   tb:=((Van * 3) + (Toan * 2) + (Ly * 2) + Sinh + NgoaiNgu) / 9;
   Writeln('+Hoc sinh: ',ten,' co diem trung binh = ',tb:6:2);
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.