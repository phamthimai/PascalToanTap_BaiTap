Program Gt_Noi_bot;
	Const
   	spt=10;
   Var
   	a:array[1..spt] Of Integer;
      i,j,tam:Integer;
Begin
	Writeln('SAP XEP MANG BANG GIAI THUAT NOI BOT');
   Writeln('-----------------------------------');
   Writeln;
   For i:=1 To spt Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
   For i:=1 To spt-1 Do
   	For j:= spt Downto i+1 Do
      	If a[j] < a[j-1] Then
         	Begin
            	tam:=a[j];
               a[j]:=a[j-1];
               a[j-1]:=tam;
            End;
   Writeln;
   Writeln('Mang sau khi sap xep:');
   For i:=1 To spt Do
   	Write(a[i]:6);
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.