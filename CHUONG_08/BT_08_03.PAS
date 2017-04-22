Program So_ngau_nhien;
CONST
	N=100;
TYPE
	Nguyen= Set of 1..N;
Var
	a:Nguyen;
   So,i,spt:Integer;
Begin
	Writeln('TIM 10 S0 NGUYEN NGAU NHIEN KHONG AM');
	Writeln('  NHO HON 100, KHONG TRUNG NHAU');
   Writeln('------------------------------------');
   spt:=0;
   a:=[];
   Randomize;
   Repeat
   	So:=Random(100);
      If Not (So In a) Then
      	Begin
         	a:=a+[So];
            Spt:=Spt +1;
         End;
   Until Spt = 10;
   Writeln;
   Writeln('10 so ngau nhien nho hon 100 la: ');
   Writeln;
   For i:= 0 To 100 Do
   	If i In a Then
      	Write(i,', ');
   Writeln;
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.
