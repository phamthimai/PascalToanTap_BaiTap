Program Vi_Tri_Chuoi;
Var
	St1,St2:String;
Begin
	Writeln('VI TRI CHUOI CON TRONG CHUOI ME');
   Writeln('         Ham Pos');
   Writeln('     --------------');
   Write('-Chuoi  me: ');
   Readln(St1);
   Write('-Chuoi con: ');
   Readln(St2);
   Writeln('+Chuoi con bat dau tu vi tri thu: ',Pos(St2,St1),
	' trong chuoi me');
   Writeln;
   Writeln('       Bam phim <Enter> de ket thuc');
   Readln
End.