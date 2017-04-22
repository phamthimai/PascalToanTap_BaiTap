Program Uoc_so_Boi_so_chung;
Var
	a,b:Word;
   p:LongInt;
Begin
	Writeln('UOC SO CHUNG LON NHAT, BOI SO CHUNG NHO NHAT');
   Writeln('--------------------------------------------');
   Write('-Nhap so thu nhat a= ');
   Readln(a);
   Write('-Nhap so thu hai b= ');
   Readln(b);
   p:=a * b;
   Write('+Uoc so chung lon nhat cua ',a,' va ',b,' la: ');
   While a <> b Do
   	Begin
      	If a > b Then
         	a:=a - b
         Else
         	b:=b-a
      End;
   Writeln(a);
   Writeln;
   Writeln('+Boi so chung nho nhat cua chung la: ',p Div a);
   writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.