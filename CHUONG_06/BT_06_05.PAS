Program Doi_chu_hoa;
Var
	Chuoi:String;
(*-----------------*)
	PROCEDURE Doi(Var St:String);
   Var
   	i:Byte;
   Begin
   	For i:=1 To Length(St) Do
      	St[i]:=Upcase(St[i]);
   End;
(*-----------------*)
BEGIN
	Writeln('DOI CHU THUONG RA CHU HOA');
   Writeln('      Dung thu tuc');
   Writeln('-------------------------');
   Write('-Nhap mot chuoi ky tu : ');
   Readln(Chuoi);
   Writeln;
   Doi(Chuoi);
   Writeln('+Doi ra chu hoa = ',chuoi);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.