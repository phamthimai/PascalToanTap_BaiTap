Program Mang_so_thuc;
	Const
   	Max = 100;
   Type
   	Mang=Array[1..Max] Of Real;
   Var
   	i,n:Integer;
      A:mang;
Begin
	Writeln('MANG SO THUC');
   Writeln('------------');
   Repeat
   	Write('-Cho biet so phan tu: ');
      Readln(N);
   Until N <= Max;
   For i:=1 To N Do
   	Begin
      	Write('+Phan tu thu: ',i,' = ');
         Readln(a[i]);
      End;
   Writeln;
   Writeln('IN THEO THU TU NGUOC');
   Writeln('--------------------');
   Writeln;
   For i:=N Downto 1 Do
   	Write(a[i]:4:1,' ');
   Writeln;
   Writeln;
   Writeln('IN CAC DOI SO CUA CAC PHAN TU MANG');
   Writeln('----------------------------------');
   Writeln;
   For i:=1 To N Do
   	Write(a[i]:4:1,' ');
   Writeln;
   Readln
End.