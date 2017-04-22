Program Tim_so;
	Var
   	a:Array[1..4,1..6] Of Integer;
      i,j,so,solan:Integer;
Begin
	Writeln('TIM MOT SO TRONG MANG');
   Writeln('---------------------');
   Writeln;
   For i:=1 To 4 Do
   	For j:=1 to 6 Do
      	Begin
         	Write('-Phan tu A[',i,',',j,']= ');
            Readln(a[i,j]);
         End;
   Writeln;
   Write('-So muon tim: ');
   Readln(so);
   solan:=0;
   For i:=1 To 4 Do
   	For j:=1 To 6 Do
      	If so=a[i,j] Then
      		Begin
         		solan:=solan+1;
               Writeln('+Lan: ',solan,' tai hang: ',i,' cot: ',j);
         	End;
   Writeln;
   Writeln('+Tong so lan xuat hien la: ',solan);
   For i:=1 To 4 Do
   	Begin
   		For j:=1 To 6 Do
         	Write(a[i,j]:8);
            Writeln;
      End;
   Readln
End.