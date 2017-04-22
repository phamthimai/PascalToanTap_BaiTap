Program Co_My;
Var
i,j,dai1,dai2,rong1,rong2:Byte;
Begin
	Writeln('IN LA CO NUOC MY RA MAN HINH');
   Writeln('-----------------------------');
   Write('-Nhap chieu rong_1: ');
   Readln(rong1);
   Write('-Nhap chieu rong_2: ');
   Readln(rong2);
   Write('-Nhap chieu dai_1: ');
   Readln(dai1);
   Write('-Nhap chieu dai_2: ');
   Readln(dai2);
   For i:=1 To rong1 Do
   	Begin
      	If odd(i) Then
         	Begin
            	For j:=1 To (dai1 Div 2) Do
               	Write('*',' ');
               If odd(dai1) Then
						Write(' ','*');
            End
         Else
         	Begin
            	For j:=1 To (dai1 Div 2) Do
               	Write(' ','*');
               If odd(dai1) Then
               	Write(' ');
            End;
         For j:=1 to dai2 Do
         	Write('=');
         Writeln;
      End;
      For i:=1 To rong2 Do
      	Begin
         	For j:=1 To dai1+dai2 Do
            	Write('=');
            Writeln;
         End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.