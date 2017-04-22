Program Gt_Chon;
	Const
   	spt=10;
   Var
   	a:array[1..spt] Of Integer;
      min,vitri,i,j:Integer;
Begin
	Writeln('SAP XEP MANG BANG GIAI THUAT CHON');
   Writeln('---------------------------------');
   Writeln;
   For i:=1 To spt Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
   For i:=1 To spt Do
   	Begin
      	min:=a[spt];
         vitri:=spt;
         For j:=i To spt Do
         	If a[j] < min Then
            	Begin
               	min:=a[j];
                  vitri:=j;
               End;
         a[vitri]:=a[i];
         a[i]:=min;
      End;
   Writeln;
   Writeln('Mang sau khi sap xep:');
   For i:=1 To spt Do
   	Write(a[i]:6);
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.