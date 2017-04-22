Program Doi_thap_phan_ra_nhi_phan;
Var
    He10,N,Y:Word;
   He2,Tam:String;
Begin
    Writeln('DOI SO TU HE THAP PHAN SANG HE NHI PHAN');
   Writeln('         -----------------');
   Writeln;
   Write('-Nhap so nguyen he thap phan: ');
   Readln(He10);
   N:=He10;
   He2:=' ';
   Repeat
    Y:=He10 Mod 2;
      Str(Y, Tam);
      He2:=Tam + He2;
      He10:= He10 Div 2;
   Until He10 = 0;
   Writeln;
   Writeln('+So he 10 la     : ',N);
   Writeln('+Doi sang he 2 la: ',He2);
   Writeln;
   Writeln('      Bam phim <Enter> de ket thuc');
   Readln
End.