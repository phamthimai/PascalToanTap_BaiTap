Program He_phuong_trinh_bac_nhat;
Var
	a,b,c,d,p,q,r:Real;
Begin
	Writeln('GIAI HE PHUONG TRINH BAC NHAT');
   Writeln('        aX + bY = c');
   Writeln('        pX + qY = r');
   Writeln('-----------------------------');
   Write('Nhap a= ');
   Readln(a);
   Write('Nhap b= ');
   Readln(b);
   Write('Nhap c= ');
   Readln(c);
   Write('Nhap p= ');
   Readln(p);
   Write('Nhap q= ');
   Readln(q);
   Write('Nhap r= ');
   Readln(r);
   d:=a*a + b*b + p*p + q*q;
   If d=0 Then
   	If (c*c + r*r = 0) Then
			Writeln('+He thoa man voi moi X, Y')
		Else
			Writeln('+He vo nghiem');
   If d <> 0 Then
   	Begin
      	d:=a*q - b*q;
         If d=0 Then
         	If sqr(c*q-b*r)+sqr(a*r-p*c) = 0 then
            	Writeln('+He thoa man voi moi X, Y')
            Else
            	Writeln('+ He vo nghiem');
         If d <> 0 Then
         	Begin
         		Writeln('X = ',(c*q-b*r)/d:5:3);
               Writeln('Y = ',(a*r-p*c)/d:5:3);
            End;
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.