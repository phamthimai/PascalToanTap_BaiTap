Program PT_bac_nhat;
Var
	a,b:Integer;
   x:Real;
Begin
	Writeln('GIAI PHUONG TRINH BAC NHAT');
   Writeln('       aX + b = 0');
   Write('-Nhap he so a= ');
   Readln(a);
   Write('-Nhap he so b= ');
   Readln(b);
   If a=0 Then
   	If b=0 Then
      	Writeln('+Phuong trinh vo dinh')
      Else
      	Writeln('+Phuong trinh vo nghiem')
   Else
   	Begin
      	x:=-b/a;
         Writeln('+Nghiem cua phuong trinh X= ',x:0:6);
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.