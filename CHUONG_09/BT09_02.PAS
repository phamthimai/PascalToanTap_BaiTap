Program Doi_thap_phan_ra_bat_phan;
Var
	He10,N,Y:Word;
   He8,Tam:String;
Begin
	Writeln('DOI SO TU HE THAP PHAN SANG HE BAT PHAN');
   Writeln('         -----------------');
   Writeln;
   Write('-Nhap so nguyen he thap phan: ');
   Readln(He10);
   N:=He10;
   He8:=' ';
   Repeat
   	Y:=He10 Mod 8;
      Str(Y, Tam);
      He8:=Tam + He8;
      He10:= He10 Div 8;
   Until He10 = 0;
   Writeln;
   Writeln('+So he 10 la     : ',N);
   Writeln('+Doi sang he 8 la: ',He8);
   Writeln;
   Writeln('      Bam phim <Enter> de ket thuc');
   Readln
End.