Program Chen;
	Var
   	i,spt:Integer;
      so,vitri:Integer;
      a:Array[1..100] Of Integer;
Begin
	Writeln('CHEN MOT SO VAO MANG');
	Writeln('--------------------');
   Write('-Co bao nhieu phan tu: ');
	Readln(spt);
   For i:=1 To spt Do
   	Begin
      	Write('-Phan tu A[',i,']= ');
         Readln(a[i]);
      End;
   Writeln;
   Writeln('MANG TRUOC KHI CHEN');
   For i:=1 To spt Do
   Write(a[i]:6);
   Writeln;
   Write('-Can che so: ');
   Readln(so);
   Write('-Vao vi tri: ');
   Readln(vitri);
   For i:=spt+1 Downto Vitri+1 Do
   	a[i]:=a[i-1];
   a[vitri]:=so;
   spt:=spt+ 1;
   Writeln;
   Writeln('MANG SAU KHI CHEN');
   For i:=1 To spt Do
   	Write(a[i]:6);
   Readln
End.