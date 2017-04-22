Program Tong_binh_phuong;
Var
	i,n,tong:Integer;
Begin
	Writeln('TINH TONG BINH PHUONG CAC SO LE');
   Writeln('          Tu 1 den N');
   Writeln('-------------------------------');
   Write('-Nhap N= ');
   Readln(n);
   tong:=0;
   For i:=1 To N Do
   	If odd(i) Then
      	tong:=tong+sqr(i);
   Writeln;
   Writeln('+Tong binh phuong cac so le cua ',n,' so nguyen= ',tong);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.