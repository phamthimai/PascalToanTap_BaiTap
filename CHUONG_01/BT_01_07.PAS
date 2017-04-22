Program Tam_Giac;
Var
	a,b,c:Integer;
      p,s:Real;
Begin
	Writeln('CHUONG TRINH TINH DIEN TICH TAM GIAC');
   Write('-Cho biet canh thu nhat = ');
   Readln(a);
   Write('-Cho biet canh thu hai  = ');
   Readln(b);
   Write('-Cho biet canh thu ba   = ');
   Readln(c);
   p := 0.5 * (a + b + c);
   s := sqrt(p*(p-a)*(p-c)*(p-c));
	Writeln('+Dien tich hinh tam giac = ',s:6:2,' met vuong');
	Readln
End.