Program May_tinh_tay;
Var
	so1,so2,kq:Real;
   toantu,tiep:Char;
   thuchien:Boolean;
Begin
	Writeln('        MAY TINH TAY');
   Writeln('Thuc hien 4 phep tinh so hoc');
   Writeln('----------------------------');
   Repeat
   	Write('-Bam so: ');
   	Readln(so1);
   	Write('-Phep toan(+,-,*,/): ');
   	Readln(toantu);
      Write('-Bam so: ');
      Readln(so2);
      thuchien:=True;
      Case toantu Of
      	'+'	:kq:=so1+so2;
         '-'	:kq:=so1-so2;
         '*'	:kq:=so1*so2;
         '/'	:If so2 <> 0 Then
							kq:=so1/so2
                Else
                		thuchien:=False;
      Else		thuchien:=False;
      End;
      If thuchien Then
      	Writeln('+Ket qua = ',kq:6:2)
      Else
      	Writeln('+Khong lam duoc');
      Writeln;
      Write('-Thuc hien tiep khong ? (C/K) ');
      Readln(tiep);
   Until Upcase(tiep) = 'K';
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.