Program Luy_thua;
Var
	x,n,tich,luythua:Integer;
Begin
	Writeln('TINH TRI CUA X LUY THUA N');
   Writeln('-------------------------');
   Write('-Nhap vao so X= ');
   Readln(x);
   Write('-Nhap vao luy thua N= ');
   Readln(n);
   tich:=1;
   luythua:=1;
   While luythua <= n Do
   	Begin
      	tich:=tich * x;
         luythua:=luythua + 1;
      End;
	Writeln;
   Writeln(x,' luy thua ',n,' = ',tich);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
