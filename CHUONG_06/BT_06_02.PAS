Program Ve_hinh_chu_nhat;
CONST
	Hoathi='*';
Var
	r,d,i:Integer;
   tiep:Char;
(*---------------*)
	PROCEDURE Ve(x,y:Integer);
   Var
   	k:Integer;
   Begin
   	For k:=1 To y Do
         Write(Hoathi);
      Writeln;
      For k:=1 To x-2 Do
      	Writeln(Hoathi,Hoathi:y-1);
      For k:=1 To y Do
      	Write(Hoathi);
      Writeln;
   End;
(*---------------*)
BEGIN
	Repeat
		Writeln('VE HINH CHU NHAT RONG');
   	Writeln('   Dung thu tuc');
   	Writeln('---------------------');
   	Write('-Chieu rong = ');
   	Readln(r);
   	Write('-Chieu dai = ');
   	Readln(d);
   	Ve(r,d);
   	Writeln;
      Write('  Co tiep tuc khong ? (c/k) ');
      Readln(tiep);
   Until Upcase(tiep)='K';
END.