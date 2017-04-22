Program Nam_nhuan;
Var
	nam:Word;
   nhuan:boolean;
Begin
	Writeln('NAM NHUAN HAY NAM THUONG');
   Writeln('------------------------');
   Write('-Nhap vao nam can kiem tra: ');
   Readln(nam);
   If nam Mod 100 = 0 Then
   	Nhuan:=(nam Mod 400)=0
   Else
   	Nhuan:=(nam Mod 4)=0;
   Write('Nam: ',nam, ' la: ');
   If nhuan Then
   	Writeln('nam nhuan')
   Else
   	Writeln('nam thuong ( khong nhuan)');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.