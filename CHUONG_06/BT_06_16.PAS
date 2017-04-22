Program Doi_tien;
Var
	sotien:LongInt;
(*-----------------*)
	PROCEDURE Doi(St:LongInt);
	Const
		Loai:Array[1..6] Of Integer =(50,20,10,5,2,1);
	Var
		i,soto:Integer;
	Begin
   	i:=1;
      Repeat
      	soto:=st Div loai[i];
         If soto <> 0 Then
         	Writeln(soto,' to loai ',loai[i],' ngan dong');
         st:=st Mod loai[i];
         i:=i+1;
      Until st=0;
	End;
(*-----------------*)
BEGIN
	Writeln('DOI TIEN SAO CHO SO TO IT NHAT');
   Writeln('       Dung thu tuc');
   Writeln('------------------------------');
   Repeat
   	Write('-So tien (ngan) co ( so 0 de ngung) : ');
   	Readln(Sotien);
   	Doi(Sotien);
   	Writeln;
	Until sotien=0;
END.