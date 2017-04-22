Program Cong_so;
	Uses Crt;
   Const
   	spt=301;
   Type
   	mang=Array[1..spt] Of Integer;
   Var
   	a,b,kq:Mang;
      k,na,nb,nmax,tam:Integer;
Begin
	ClrScr;
   Writeln('CONG 2 SO NGUYEN');
   Writeln('----------------');
   Writeln;
   Writeln('+SO THU NHAT (-1 de ket thuc) ');
   na:=0;
   Repeat
   	na:=na+1;
      Write('-Chu so thu: ',na,' = ');
      Readln(a[na]);
   Until a[na]=-1;
   na:=na-1;
   For k:=0 To na-1 Do
   	a[spt-k]:=a[na-k];
   For k:=1 to spt-na Do
   	a[k]:=0;
   ClrScr;
   Writeln('+SO THU HAI (-1 de ket thuc) ');
   nb:=0;
   Repeat
   	nb:=nb+1;
      Write('-Chu so thu: ',nb,' = ');
      Readln(b[nb]);
   Until b[nb]=-1;
   nb:=nb-1;
   For k:=0 To nb-1 Do
   	b[spt-k]:=b[nb-k];
   For k:=1 to spt-nb Do
   	b[k]:=0;
   If na>nb Then
   	nmax:=na
   Else
   	nmax:=nb;
   tam:=0;
   For k:=spt Downto spt-nmax Do
   Begin
   	kq[k]:=(a[k]+b[k]+tam) Mod 10;
      tam:=(a[k]+b[k]+tam) Div 10;
   End;
   ClrScr;
   Writeln('KET QUA CONG 2 SO NGUYEN');
   Writeln('------------------------');
   Write('*So thu nhat: ');
   For k:=spt-na+1 To spt Do
   	Write(a[k],' ');
   Writeln;
   Write('*So thu hai : ');
   For k:=spt-nb+1 To spt Do
   	Write(b[k],' ');
   Writeln;
   Write('*Tong = ');
   For k:=Spt-nmax To spt Do
      Write(kq[k],' ');
	Writeln;
   Writeln('   Bam phim <Enter> de ket thuc ');
   Readln
End.