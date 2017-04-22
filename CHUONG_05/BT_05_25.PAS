Program Uoc_so_chung_Boi_so_chung;
Var
	so1,so2:Word;
   p:LongInt;
   tiep:Char;
Begin
	Writeln('TINH UOC SO CHUNG LON NHAT, BOI SO CHUNG NHO NHAT');
   Writeln('       Su dung vong lap Repeat... Until');
   Writeln('-------------------------------------------------');
   Repeat
   	Writeln;
      Write('-Nhap so thu nhat: ');
      Readln(so1);
      Write('-Nhap so thu hai : ');
      Readln(so2);
      p:=so1 * so2;
      Write('+Uoc so chung lon nhat cua ',so1,' va ',so2,' la: ');
      Repeat
      	if so1 > so2 Then
         	so1:=so1 - so2
         Else
         	so2:=so2 - so1;
      Until so1=so2;
      Writeln(so1);
      Writeln;
      Writeln('+Boi so chung nho nhat: ',P Div so1);
      Writeln;
      Write('-Co tiep tuc nua khong ? (C/K) ');
      Readln(tiep);
   Until Upcase(tiep)='K';
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc ');
   Readln
End.