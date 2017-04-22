Program Chu_so;
Var
	n:Integer;
Begin
	Writeln('XUAT CAC CHU SO CUA SO NGUYEN DUONG N');
   Write('-Cho biet so nguyen: ');
   Readln(n);
   Writeln('So nguyen: ',n:5,' Co cac chu so sau');
   Write(' ', n DIV 10000);
   n :=n MOD 10000;
   Write(' ', n DIV 1000);
   n :=n MOD 1000;
   Write(' ', n DIV 100);
   n :=n MOD 100;
   Write(' ', n DIV 10);
   n :=n MOD 10;
   Write(' ',n);
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.