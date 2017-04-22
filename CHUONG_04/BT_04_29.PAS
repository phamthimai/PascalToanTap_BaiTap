Program Thu_trong_tuan;
Var
	d:1..31; {Kieu mien con}
   m:1..12;
   y:1900..2001;
   a:Word;
Begin
	Writeln('NGAY DO LA THU MAY TRONG TUAN');
   Writeln('-----------------------------');
   Write('-Ngay: ');
   Readln(d);
   Write('-Thang: ');
   Readln(m);
   Write('-Nam: ');
   Readln(y);
   Write('+Ngay: ',d:2,' / ',m:2,' / ',y:4,' la ngay ');
   If m<3 Then
   	Begin
      	inc(m,12);
         Dec(y);
      End;
   a:=d+2*m+(3*(m+1) Div 5)+y+(y Div 4)+1;
   a:=a Mod 7;
   Case a Of
   	0			:Writeln('Thu 7');
      1			:Writeln('Chu Nhat');
      2,3,4,5,6:Writeln('Thu ',a);
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.