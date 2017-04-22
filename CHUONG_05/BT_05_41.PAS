Program Nhap_diem;
Var
	toan,tong,tb:Real;
   hs:Byte;
   tiep:Char;
Begin
	Writeln('NHAP DIEM MON TOAN VA TINH DIEM TRUNG BINH CUA LOP');
   Writeln('--------------------------------------------------');
	hs:=1;
   tong:=0;
   tiep:='C';
   Repeat
   	Writeln('-Hoc sinh thu: ',hs);
      Write('-Diem mon Toan : ');
      Readln(toan);
      tong:=tong+toan;
      hs:=hs+1;
      Write('   -Nhap nua khong (C/K) ');
      Readln(tiep);
   Until Upcase(tiep)='K';
   hs:=hs-1;
   tb:=tong/hs;
   Writeln('+Tong so diem = ',tong:5:2,' diem');
   Writeln('+Tong so ca lop co = ',hs,' hoc sinh');
   Writeln('+Diem trung binh cua mon Toan= ',tb:5:2,' diem');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.