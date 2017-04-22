Program Doi_So_ra_chu;
TYPE
	ChuSo='0'..'9';
   Donvi=(Muoi,Tram);
   Phamvi= 0..999;
CONST
	KS:Array[ChuSo] Of String=('  ','mot ',' hai',' ba',
				' bon',' nam',' sau',' bay',' tam',' chin');
   DV:Array[DonVi] Of String[6]=(' muoi ',' tram');
Var
	n:Phamvi;
   sn,s:String;
   Dodai:Byte;
Begin
	Writeln('DOI SO RA CHU');
   Writeln('-------------');
   Writeln;
   Write('-Nhap mot so tu 0 den 999: ');
   Readln(n);
   Str(n,sn);
   DoDai:=Length(sn);
   Case DoDai Of
   	1: s:=KS[sn[1]];
      2: Begin
      		If Sn[1] = '1' Then
            	s:='muoi'
            Else
            	s:=KS[sn[1]]+DV[Muoi];
            If sn[2] = '5' Then
            	s:=s+'lam'
            Else
            	s:=s+KS[sn[2]];
      	End;
      3: Begin
      		s:=KS[sn[1]]+DV[Tram];
            Case sn[2] Of
            	'0' : If sn[3] <> '0' Then
               			s:=s+'le';
               '1' : s:=s+'muoi';
				Else
					s:=s+KS[sn[2]]+DV[Muoi];
				End;
				If (sn[3]='5') And (sn[2] <>'0') then
					s:=s+'lam'
            Else
            	s:=s+KS[sn[3]];
      	End;
      End;
      Writeln(s);
      Writeln;
      Write('   Bam phim <Enter> de ket thuc ');
      readln
End.
