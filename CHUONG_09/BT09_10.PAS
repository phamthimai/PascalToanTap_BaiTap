Program Dem_chuoi;
Var
	St:String;
   dem:ARRAY['A'.. 'Z'] Of Integer;
   i:Integer;
   Ch:Char;
Begin
	Writeln('DEM SO LAN XUAT HIEN CUA KY TU TRONG CHUOI');
   Writeln('    -----------');
   Write('-Nhap chuoi: ');
   Readln(St);
   For i:=1 To Length(St) Do
   	Dem[UpCase(St[i])]:= Dem[UpCase(St[i])]+1;
   Writeln;
   Writeln('+Cac ky tu trong chuoi la: ');
   For Ch:='A' To 'Z' Do
   	If Dem[ch] > 0 Then
      	Writeln('+Chu: ',Ch,' co: ',Dem[Ch],' ky tu' );
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.