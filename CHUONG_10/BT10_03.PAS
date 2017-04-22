Program Tb_cong;
	Var
   	i,so,dem,tong:Integer;
      Tb:Real;
      A:Array[1..100] Of Integer;
Begin
	Writeln('TINH TRUNG BINH CONG CAC SO NGUYEN');
   Writeln('----------------------------------');
   Writeln;
   dem:=0;
   Tong:=0;
   Write('-Nhap so nguyn: ');
   Readln(so);
   While so > 0 Do
   	Begin
      	dem:=dem+1;
         a[dem]:=so;
         Write('-Nhap so nguyen (-1 de ngung): ');
         Readln(so);
      End;
   For i:=1 to dem Do
   	Tong:=Tong+A[i];
   Tb:=Tong/dem;
   Writeln;
   Writeln('+Trung binh cong cua: ',dem:2,' so vua nhap = ',Tb:8:2);
   Writeln;
   Writeln('      Bam phim <Enter> de ket thuc ');
   Readln
End.