Program X_mu_n;
Var
	x:Integer;
   n:Word;
(*-----------------*)
	FUNCTION ham_mu(i:Integer;k:Word):LongInt;
	Begin
		If k = 0 Then
      	ham_mu:=1
      Else
      	ham_mu:=i*ham_mu(i,k-1);
	End;
(*-----------------*)
BEGIN
	Writeln('HAM X MU N');
   Writeln('----------');
   Write('-Nhap X = ');
   Readln(x);
   Write('-Nhap N = ');
   Readln(n);
   Writeln('*Ket qua = ',Ham_mu(x,n));
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.