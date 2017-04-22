Program Kiem_tra_so;
	Label tt;
	Var
   	St:String;
      So:Real;
      Dung:Integer;
      tiep:Char;
Begin
	Repeat
   	Writeln('KIEM TRA SO NHAP VAO');
      Writeln('    -----------');
      tt:Write('-Nhap mot so: ');
      Readln(St);
      Val(St,So,Dung);
      If Dung = 0 Then
      	Writeln('  +Ban da nhap mot so: ',So:8:2)
      Else
         Writeln('  +Khong phai so, xin nhap lai:');
   Until Dung = 0;
   Writeln;
   Write('-Co tiep tuc khong (C/K) ');
   Readln(Tiep);
   If UpCase(Tiep)='C' Then
   	Goto tt;
End.