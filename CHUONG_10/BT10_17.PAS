Program Mang_tang;
	Const
   	Max=10;
	Var
   	a:Array[1..Max] Of Integer;
      i,j,tam:Integer;
Begin
	Writeln('SAP XEP MANG TANG DAN');
   Writeln('---------------------');
   Writeln;
   For i:= 1 To Max Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
   For i:=1 to Max-1 Do
     	For j:= i+1 To Max Do
      	Begin
         	If a[i] > a[j] Then
            	Begin
               	tam:=a[i];
                  a[i]:=a[j];
                  a[j]:=tam;
               End;
      End;
   Writeln;
   Writeln('+Mang sau khi sap xep:');
   Writeln;
   For i:=1 To Max Do
   	Write(a[i],' ');
   Writeln;
   Readln
End.