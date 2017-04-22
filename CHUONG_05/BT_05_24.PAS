Program Doi_he_16;
Var
	n,so,chuso:Integer;
   tiep:Char;
Begin
	Writeln('DOI SO HE 10 SANG HE 16');
   Writeln('-----------------------');
   Repeat
   	Write('-Nhap so he 10 = ');
   	Readln(so);
   	n:=4096; {16 luy thua 3}
      Write('+Ky so he 16= ');
      Repeat
      	chuso:=so Div n;
         Case chuso Of
         	0..9:Write(chuso);
            10 .. 15:Write(chr(chuso + 55));
         End;
      	so:=so- n*(so Div n);
         n:=n Div 16;
      Until n=0;
      Writeln;
      Write('-Co thuc hien tiep khong ? (C/K) ');
      Readln(tiep);
   Until Upcase(tiep)='K';
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.