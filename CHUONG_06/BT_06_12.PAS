Program Tong_cac_so_chan;
Var
	m,n:LongInt;
(*--------------------*)
	FUNCTION Tong(x,y:LongInt):LongInt;
   Var
   	i,t:LongInt;
   Begin
   	t:=0;
      For i:=x To y Do
      	If (i Mod 2 = 0) Then
         	Begin
            	Write(i,' ');
         	   t:=t+i;
            End;
      Write(' = ');
      tong:=t;
   End;
(*--------------------*)
BEGIN
	Writeln('TINH TONG CAC SO CHAN TU M DEN N');
   Writeln('        Su dung ham');
	Writeln('--------------------------------');
	Write('-Nhap so dau (M) : ');
	Readln(m);
	Write('-Nhap so cuoi (N): ');
   Readln(n);
   Writeln('           *Tong cua cac so chan tu ',m,' den ',n,' la:');
	Writeln(Tong(m,n));
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln;
END.