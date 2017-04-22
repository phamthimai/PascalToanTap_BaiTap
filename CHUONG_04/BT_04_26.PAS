Program KT_phim;
Var
	phim:Char;
Begin
	Writeln('KIEM TRA BAN PHIM');
   Writeln('-----------------');
   Write('-Bam mot phim: ');
   Readln(phim);
   Case phim Of
   	'A'..'Z','a'..'z' :Writeln('+Ban vua bam mot phim ky tu');
      '0'..'9'				:Writeln('+Ban vua bam mot phim ky so');
      '+','-','*','/'	:Writeln('+Ban vua bam mot phim toan tu so hoc');
   Else						Writeln('+Ban vua bam mot phim dac biet');
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.