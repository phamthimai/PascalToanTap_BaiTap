Program PTB2;
Var
	a,b,c:Integer;
   Delta,x,x1,x2:Real;
Begin
	Writeln('GIAI PHUONG TRINH BAC 2');
   Writeln('-----------------------');
   Write('-Nhap he so a= ');
   Readln(a);
   Write('-Nhap he so b= ');
   Readln(b);
   Write('-Nhap he so c= ');
   Readln(c);
   Delta:=sqr(b)-4*a*c;
   If Delta < 0 Then
   	Writeln('+Phuong trinh vo nghiem')
   Else
   	If Delta=0 Then
      	Begin
         	X:=-b/2*a;
	      	Writeln('+Phuong trinh co 2 nghiem bang nhau X1=X2= ',X:6:2);
         End
      Else
      	Begin
      		X1:=-b-Sqrt(Delta)/2*a;
            X2:=-b+Sqrt(Delta)/2*a;
            Writeln('+Nghiem thu nhat = ',X1:6:2);
            Writeln('+Nghiem thu hai  = ',X2:6:2);
         End;
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.