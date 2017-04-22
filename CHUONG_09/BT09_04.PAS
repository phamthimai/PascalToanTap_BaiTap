Program Doi_thap_phan_ra_he_bat_ky;
Var
	He10,N,Y,HeN:Word;
   He,Tam:String;
Begin
	Writeln('DOI SO TU HE THAP PHAN SANG HE BAT KY');
   Writeln('         -----------------');
   Writeln;
   Write('-Nhap so nguyen he thap phan: ');
   Readln(He10);
   N:=He10;
   Write('-Doi sang he nao: ');
   Readln(HeN);
   He:=' ';
   Repeat
   	Y:=He10 Mod HeN;
      If Y < 10 Then
      	Str(Y, Tam)
      Else
      	Tam:=Chr(Y+55);
      He:=Tam + He;
      He10:= He10 Div HeN;
   Until He10 = 0;
   Writeln;
   Writeln('+So he 10 la      : ',N);
   Writeln('+Doi sang he: ',HeN:2,' la: ',He);
   Writeln;
   Writeln('      Bam phim <Enter> de ket thuc');
   Readln
End.