Program ma_ASCII;
Var
	kytu:Char;
Begin
	Writeln('MA ASCII CUA KY TU');
   Writeln('------------------');
   Repeat
   	Write('-Nhap mot ky tu (bam so 0 de ket thuc) ');
   	Readln(kytu);
      Writeln('+Ky tu ',kytu,' co ma ASCII = ',ord(kytu));
      Writeln;
   Until kytu='0';
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.