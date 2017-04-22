Program Tam_giac_can;
Var
	cao,i,j:Byte;
Begin
	Writeln('       TAM GIAC CAN DAC');
   Writeln('Chieu cao gioi han tu 1 den 22');
   Writeln('------------------------------');
   Write('-Nhap chieu cao: ');
   Readln(cao);
   For i:=1 To cao Do
   	Begin
      	Write(#32:cao-i+1);
         For J:=1 To (2*i-1) Do
         	Write('*');
            Writeln;
      End;
	Writeln;
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.