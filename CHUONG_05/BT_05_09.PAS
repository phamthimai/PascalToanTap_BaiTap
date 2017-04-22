Program In_xen_ke;
Var
	dai,rong,i,j:Byte;
Begin
	Writeln('IN XEN KE CAC DAU SAO');
   Writeln('--------------------');
   Write('-Nhap chieu dai: ');
   Readln(dai);
   Writeln('-Nhap chieu rong: ');
   Readln(rong);
   For i:=1 To rong Do
   	Begin
      	If i Mod 2 = 0 Then
         	For j:=1 To dai Div 2 Do
            	Write(' *') {dau trang va dau sao}
         Else
         	For j:=1 To dai Div 2 +dai Mod 2 Do
            	Write('* ');  {dau sao va dau trang}
         Writeln;
      End;
	Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.