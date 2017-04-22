Program Doi_thap_phan_ra_thap_luc;
Var
	He10,N,Y:Word;
   He16,Tam:String;
Begin
	Writeln('DOI SO TU HE THAP PHAN SANG HE THAP LUC PHAN');
   Writeln('         -----------------');
   Writeln;
   Write('-Nhap so nguyen he thap phan: ');
   Readln(He10);
   N:=He10;
   He16:=' ';
   Repeat
   	Y:=He10 Mod 16;
      If Y < 10 Then
      	Str(Y, Tam)
      Else
      	Tam:=Chr(Y+55);
      He16:=Tam + He16;
      He10:= He10 Div 16;
   Until He10 = 0;
   Writeln;
   Writeln('+So he 10 la      : ',N);
   Writeln('+Doi sang he 16 la: ',He16);
   Writeln;
   Writeln('      Bam phim <Enter> de ket thuc');
   Readln
End.