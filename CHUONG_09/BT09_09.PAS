Program Chuoi_Doi_Xung;
Var
	St:String;
   i,l:Byte;
Begin
	Writeln('CHUOI DOI XUNG');
   Writeln('   --------');
   Write('-Nhap chuoi: ');
   Readln(St);
   l:=Length(St);
   i:=1;
   While (i < l Div 2) And (St[i] = St[l-i+1]) Do
   	Begin
      	i:=i+1;
         If i < (l Div 2) Then
         	Writeln('+Chuoi nay doi xung')
      End;
   While (i < l Div 2) And (St[i] <> St[l-i+1]) Do
   	Begin
      	i:=i+1;
         If i < (l Div 2) Then
         	Writeln('+Chuoi nay khong doi xung')
      End;
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.