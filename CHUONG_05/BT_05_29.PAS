Program To_hop_chp_k_cua_N;
Var
	i,k,n:Integer;
   c:Real;
Begin
	Writeln('TINH TO HOP CHAP k CUA N');
   Writeln('     Voi k <= N');
   Writeln('------------------------');
   Write('-Nhap so N= ');
   Readln(n);
   Write('-Nhap so phan tu k= ');
   Readln(k);
   If k > N Then
   	Writeln('+Vi k lon hon N nen khong tinh duoc')
   Else
   	Begin
      	c:=1;
         For i:=1 To k Do
         	c:=c*(n-k+i)/i;
			Writeln('+To hop chap ',k,' cua ',n,' la: ',c:2:2);
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.