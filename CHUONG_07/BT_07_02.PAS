Program Phuong_trinh_trung_phuong;
Var
	n,k:0..4;
   y:Array[1..2] Of Real;
   a,b,c,delta:Real;
Begin
	Writeln('GIAI PHUONG TRINH TRUNG PHUONG');
   Writeln('------------------------------');
   Repeat
   	Write('-Nhap he so a: ');
      Readln(a);
   Until a <> 0;
   Write('-Nhap he so b: ');
   Readln(b);
   Write('-Nhap he so c: ');
   Readln(c);
   Delta:=b*b-4*a*c;
   If Delta < 0 Then
   	Begin
      	y[1]:=-1;
         y[2]:=-1;
      End;
   If Delta = 0 Then
   	Begin
      	y[1]:=-1;
         y[2]:=-b/(2*a);
      End;
   If Delta > 0 Then
   	Begin
      	y[1]:=(-b+sqrt(Delta))/(2*a);
         y[2]:=(-b-sqrt(Delta))/(2*a);
      End;
   n:=0;
   Writeln('            KET QUA');
   for k:=1 to 2 Do
   	If y[k] > 0 Then
      	Begin
         	Writeln('    +X1= ',Sqrt(y[k]):5:3);
				Writeln('    +X2= ',-Sqrt(y[k]):5:3);
            Inc(n,2)
         End
      Else
      	If y[k] = 0 Then
         	Begin
            	Writeln('X = 0');
               Inc(n);
            End;
   If n=0 Then
   	Writeln('Phuong trinh vo nghiem')
   Else
   	Writeln('Phuong trinh co ',n,' nghiem');
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.