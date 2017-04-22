Program gap_giay;
Var
	day:Real;
   solan:Integer;
Begin
	Writeln('GAP GIAY CO DO DAY 1 MET');
   Writeln('------------------------');
   day:=0.1;
   solan:=0;
   While day < 1000 Do
   	Begin
      	day:=day * 2;
         solan:=solan+1;
      End;
	Writeln;
   Writeln('+Phai gap toi: ',solan,' lan');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.