Program X_mu_n;
Var
	x:Integer;
   n:Word;
(*-----------------*)
	FUNCTION ham_mu(i:Integer;k:Word):LongInt;
	Var
		tam,j:Integer;
	Begin
   	tam:=1;
      For j:=1 To k Do
      	tam:=tam*i;
      Ham_mu:=tam;
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