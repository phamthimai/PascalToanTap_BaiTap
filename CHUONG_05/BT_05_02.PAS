Program uoc_so;
Var
   i,n:Integer;
Begin
	Writeln('TIM CAC UOC SO CUA SO NGUYEN');
   Writeln('----------------------------');
   Write('-Nhap mot so nguyen: ');
   Readln(n);
   Writeln;
   Writeln('+Cac uoc so cua so ',n,' la: ');
   Writeln;
   For i:=1 To N Do
   	If (n Mod i) = 0 Then
      	Write(i:6);
	Writeln;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.