Program Da_thuc;
Var
	n,i:Integer;
   x,a,dathuc: Real;
Begin
	Writeln('TINH TRI CUA DA THUC Pn');
   Writeln('-----------------------');
   Write('-Nhap so N= ');
   Readln(n);
   Write('-Nhap so X= ');
   Readln(x);
   i:=n;
   Write('-Nhap tri so A',i,' =');
   Readln(a);
   dathuc:=a;
   While i <> 0 Do
   	Begin
      	i:=i-1;
            Write('-Nhap tri so A',i,' =');
			   Readln(a);
            dathuc:=dathuc * x + a
      End;
   Writeln;
   Writeln('+Tri cua da thuc = ',dathuc:12:10);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.