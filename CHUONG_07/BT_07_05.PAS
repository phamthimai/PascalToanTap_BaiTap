Program Cac_ham_luong_giac;
CONST
	g='|';
   ke='--------------------------------------------------';
   Ten='               CAC HAM LUONG GIAC';
   Tde='|DO | RADIAN |   SIN  | COSIN  |  TANG  | COTANG |';
Var
	Doo:1..89;
   Rad,s,c,t,ct:Real;
Begin
	Repeat
   	Write('-Nhap do (tu 1 den 89, so 0 de ngung): ');
      Readln(Doo);
      If Doo= 0 Then
      	Exit;
		Writeln(Ten);
   	Writeln(ke);
   	Writeln(Tde);
   	Writeln(ke);
   	Rad:=Doo*Pi/180;
      s:=Sin(rad);
      c:=Cos(Rad);
      t:=s/c;
      ct:=c/s;
   	Writeln(g,Doo:2,#248,g,Rad:8:6,g,s:8:6,g,
							c:8:6,g,t:8:5,g,ct:8:5,g);
      Writeln(ke);
      Writeln;
   Until Doo=0;
End.