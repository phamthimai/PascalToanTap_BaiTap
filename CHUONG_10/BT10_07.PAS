Program Da_thuc;
   Var
		a:Array[1..255] Of Real;
      i,n:Byte;
      x,p:Real;
Begin
	Writeln('TINH GIA TRI CUA DA THUC BAC N');
   Writeln('------------------------------');
   Writeln;
   Write('-Cho biet bac cua da thuc: ');
   Readln(n);
   For i:= N Downto 0 Do
   	Begin
      	Write('-Cho biet he so A[',i:2,']= ');
         Readln(a[i]);
      End;
   Writeln;
   Write('-Cho biet X= ');
   Readln(x);
   P:=a[n];
   For i:= N Downto 1 Do
   	P:=x * p + a[i-1];
   Writeln;
   Writeln('+Tri cua da thuc P(x)= ',P:0:6);
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc ');
   Readln
End.