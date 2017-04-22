Program Dien_tich_tam_giac;
Var
	a,b,c:Integer;
   p,s:Real;
Begin
	Writeln('DIEN TICH TAM GIAC');
   Writeln('------------------');
   Write('-Nhap so thu nhat: ');
   Readln(a);
   Write('-Nhap so thu hai : ');
   Readln(b);
   Write('-Nhap so thu ba  : ');
   Readln(c);
   If (a+b>c) And (b+c>a) And (c+a>b) Then
   	Begin
      	Writeln('+Dung la Tam giac');
         p:=0.5*(a+b+c);
         s:=Sqrt(p*(p-a)*(p-b)*(p-c));
         Writeln('+Dien tich= ',s:10:2);
      End
   Else
   	Writeln('+Khong phai la Tam giac');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.