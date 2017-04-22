Program Day_con;
	Const
   	k=10;
   	a:Array[1..k] Of Integer=(1,3,2,8,10,12,7,29,6,3);
   Var
   	i:Integer;
      vt,max:Integer;
      n,tong:Integer;
Begin
	Vt:=1;
   max:=a[1];
   n:=1;
   tong:=a[1];
   For i:=2 To k Do
   	Begin
      	If (a[i] > a[i-1]) Then
         	tong:=tong+a[i];
         If (a[i] < a[i-1]) Or (i=k) Then
         	Begin
            	If tong > max Then
               	Begin
                  	max:=tong;
                     vt:=n;
                  End;
               n:=i;
               tong:=a[i];
            End;
      End;
   Writeln('-Day con la: ');
   i:=vt;
   Repeat
   	Write(a[i]:6);
      max:=max-a[i];
      i:=i+1;
   Until max=0;
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.