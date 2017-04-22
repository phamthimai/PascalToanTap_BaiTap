Program Gt_Chen;
	Const
   	spt=10;
   Var
   	a:array[1..spt] Of Integer;
      i,j,k,tam:Integer;
Begin
	Writeln('SAP XEP MANG BANG GIAI THUAT CHEN');
   Writeln('---------------------------------');
   Writeln;
   For i:=1 To spt Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
   For i:=2 To spt Do
   	If a[i] < a[i-1] Then
      	Begin
         	j:=1;
            While a[j] < a[i] Do
            	j:=j+1;
            tam:=a[i];
            For k:=i Downto j+1 Do
            	a[k]:=a[k-1];
            a[j]:=tam;
         End;
   Writeln;
   Writeln('Mang sau khi sap xep:');
   For i:=1 To spt Do
   	Write(a[i]:6);
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.