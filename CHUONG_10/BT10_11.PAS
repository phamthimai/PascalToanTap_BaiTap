Program Nhan_so;
	Uses Crt;
   Const
   	spt=900;
   Type
   	mang=Array[1..spt] Of Integer;
   Var
   	a,b,c,kq:Mang;
      i,j,k,na,nb,tam:Integer;
   {---------------------------}
   Procedure Nhap(Var a:mang; Var na:Integer);
   	Var
      	k:Integer;
   Begin
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
   End;
   {---------------------------}
   Procedure Cong(a:mang; Var b:mang);
   	Var
      	tam1,tam2,k:Integer;
   Begin
   	tam1:=0;
      For k:= spt Downto 1 Do
      	Begin
   			tam2:=(a[k]+b[k]+tam1) Div 10;
      		b[k]:=(a[k]+b[k]+tam1) Mod 10;
            tam1:=tam2;
   		End;
   End;
   {---------------------------}
BEGIN
	ClrScr;
   Writeln('NHAN 2 SO NGUYEN');
   Writeln('----------------');
   Writeln;
   Writeln('+SO THU NHAT (-1 de ket thuc) ');
   Nhap(a,na);
   ClrScr;
   Writeln('+SO THU HAI (-1 de ket thuc) ');
   Nhap(b,nb);
   For k:=1 To spt Do
   	kq[k]:=0;
   For j:=spt Downto spt-nb Do
   Begin
   	For k:=1 to spt Do
      	c[k]:=0;
         tam:=0;
         For i:=spt Downto spt-na Do
         Begin
         	c[j+i-spt]:=(b[j]*a[i]+tam) Mod 10;
            tam:=(b[j]*a[i]+tam) Div 10;
         End;
      Cong(c,kq)
   End;
   ClrScr;
   Writeln('KET QUA NHAN 2 SO NGUYEN');
   Writeln('-----------------------');
   Writeln;
   Write('*So thu nhat: ');
   For k:=spt-na+1 To spt Do
   	Write(a[k],' ');
   Writeln;
   Write('*So thu hai : ');
   For k:=spt-nb+1 To spt Do
   	Write(b[k],' ');
   Writeln;
   Write('*Tich = ');
   For k:=Spt-(na+nb)+1 To spt Do
      Write(kq[k],' ');
	Writeln;
   Writeln('   Bam phim <Enter> de ket thuc ');
   Readln
END.