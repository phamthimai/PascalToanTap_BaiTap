Program Vong_tron;
Var
	Radius,s,cv :Real;
Begin
	Writeln('TINH CHU VI, DIEN TICH VONG TRON');
   Writeln('--------------------------------');
   Write('-Cho biet ban kinh : ');
   Readln(Radius);
   cv:=2*Pi*Radius;
   S:=Pi*Radius*Radius;
   Writeln;
   Writeln('+Chu vi vong tron    = ',cv:10:2);
   Writeln('+Dien tich vong tron = ',s:10:2);
   Writeln;
   Writeln('       Bam phim <Enter> de tro ve cua so soan thao');
   Readln
End.
