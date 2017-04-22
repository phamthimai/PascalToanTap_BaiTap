Program Uoc_so;
Var
	so1,so2,tam:Integer;
Begin
	Writeln('KIEM TRA UOC SO CUA 2 SO NGUYEN');
   Writeln('-------------------------------');
   Write('-So thu nhat= ');
   Readln(so1);
   Write('-So thu hai = ');
   Readln(so2);
   If so1 < so2 Then
   	Begin
      	tam:=so1;
         so1:=so2;
         so2:=tam;
      End;
	If (so1 Mod so2) = 0 Then
		Writeln('+So: ',so2:4,' la uoc so cua so: ',so1:4)
	Else
   	Begin
			Writeln('+Hai so: ',so1:4,' va so ',so2:4);
      	Writeln('     Khong phai la uoc so cua nhau');
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.