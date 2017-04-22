Program Bo_so_trung;
	Const
   	Max=100;
	Var
   a:Array[1..Max] Of Integer;
   i,j,k,n:Integer;
Begin
	Writeln('XOA BO CAC SO TRUNG NHAU');
   Writeln('------------------------');
   Writeln;
   Write('-Nhap so phan tu mang: ');
   Readln(n);
   For i:=1 To N Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
	i:=2;
   While i <= N Do
   	Begin
      	j:=1;
         While a[j] <> a[i] Do
         	j:=j+1;
         If j < i Then
         	Begin
            	For k:=i to n-1 Do
               	a[k]:= a[k+1];
               n:=n-1;
            End
         Else
         	i:=i+1;
      End;
   Writeln;
   Write('-Mang con lai: ');
   For i:=1 to n Do
   	Write(a[i]:8);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc ');
   Readln
End.