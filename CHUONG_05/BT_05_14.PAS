Program Day_so_Fibonaci;
Var
	n,j,pj,pj1,pj2:Integer;
Begin
	Writeln('IN DAY SO FIBONACI');
   Writeln('------------------');
   Write('-Nhap so N= ');
   Readln(n);
   j:=2;
   pj:=1;
   pj1:=1;
   While j <> n Do
   	Begin
      	pj2:=pj1;
         pj1:=pj;
         pj:=pj1+pj2;
         j:=j+1;
      End;
   Writeln;
   Writeln('+So hang thu ',n,' cua day Fibonaci = ',pj);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.