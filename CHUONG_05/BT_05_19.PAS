Program PTB2;
Var
	a,b,c,delta : Integer;
   x1,x2:Real;
Begin
	Writeln('GIAI PHUONG TRINH BAC 2');
   Writeln('Bat buoc he so a <> 0');
   Writeln('---------------------');
   Repeat
   	Write('-Nhap he so a= ');
      Readln(a);
   Until a<>0;
   Write('-Nhap he so b= ');
   Readln(b);
   Write('-Nhap he so c= ');
   Readln(c);
   delta:=b*b - 4*a*c;
   If Delta < 0 Then
   	Writeln('+Phuong trinh vo nghiem')
   Else
   	If delta = 0 Then
			Writeln('+Phuong trinh co 2 nghiem bang nhau X= ',-b/(2*a):6:2)
		Else
			Begin
         	Writeln('Phuong trinh co 2 nghiem phan biet');
            Writeln('+X1 = ',(-b+sqrt(delta))/(2*a):6:2);
            Writeln('+X2 = ',(-b-sqrt(delta))/(2*a):6:2);
			End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.